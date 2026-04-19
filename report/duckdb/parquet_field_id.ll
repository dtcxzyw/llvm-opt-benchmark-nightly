inline.NumInlined: 1080
inline.NumDeleted: 473
begin_hunk_0_@_ZN6duckdb7FieldID11GetFieldIDsERKNS_5ValueERNS_13ChildFieldIDsERSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSK_SL_EEE:bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %.083285 = phi i64 [ 0, %.lr.ph286 ], [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 3 uses
  %.sroa.0171.0284 = phi i64 [ undef, %.lr.ph286 ], [ %.sroa.0171.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb10StructType12GetChildNameB5cxx11ERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.083285)
  call void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !85
  %i.ah = icmp eq i64 %i.ag, 17
end_hunk_0
begin_hunk_1_@_ZN6duckdb7FieldID11GetFieldIDsERKNS_5ValueERNS_13ChildFieldIDsERSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSK_SL_EEE:bb.a

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread190: ; preds = %.noexc, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %.sroa.06.1.i.i192 = phi ptr [ %i.bm, %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit ], [ %.sroa.06.0.i.i, %.noexc ]
  %i.cl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.083285)
          to label %bb.v unwind label %bb.x       ; 5 uses

bb.v:                                             ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread190
end_hunk_1
begin_hunk_2_@_ZN6duckdb7FieldID11GetFieldIDsERKNS_5ValueERNS_13ChildFieldIDsERSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSK_SL_EEE:bb.a

bb.bd:                                            ; preds = %bb.ap
  %i.fk = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.0171.0.insert.mask = and i64 %.sroa.0171.0284, 4294967040
  %.sroa.0171.4.insert.ext = zext i32 %i.fk to i64
  %.sroa.0171.4.insert.shift = shl nuw i64 %.sroa.0171.4.insert.ext, 32
  %.sroa.0171.0.insert.insert = or disjoint i64 %.sroa.0171.4.insert.shift, %.sroa.0171.0.insert.mask
  %.sroa.0171.4.insert.insert = or disjoint i64 %.sroa.0171.0.insert.insert, 1 ; 2 uses
  %i.fl = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18
          to label %bb.be unwind label %bb.bh     ; 8 uses

bb.be:                                            ; preds = %bb.bd
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, i8 0, i64 16, i1 false), !noalias !132
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
end_hunk_2
begin_hunk_3_@_ZN6duckdb7FieldID11GetFieldIDsERKNS_5ValueERNS_13ChildFieldIDsERSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSK_SL_EEE:bb.a

bb.bk:                                            ; preds = %_ZN6duckdb7FieldIDD2Ev.exit, %bb.aj
  %.in = phi ptr [ %i.fl, %_ZN6duckdb7FieldIDD2Ev.exit ], [ %i.eg, %bb.aj ]
  %.sroa.0171.1 = phi i64 [ %.sroa.0171.4.insert.insert, %_ZN6duckdb7FieldIDD2Ev.exit ], [ %.sroa.0171.0284, %bb.aj ]
  %i.ga = ptrtoint ptr %.in to i64
  %i.gb = invoke noundef ptr @_ZNK6duckdb10unique_ptrISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7FieldIDENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_S8_EEESt14default_deleteISF_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.bl unwind label %bb.bx
end_hunk_3
begin_hunk_4_@_ZN6duckdb7FieldID11GetFieldIDsERKNS_5ValueERNS_13ChildFieldIDsERSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSK_SL_EEE:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN6duckdb7FieldIDD2Ev.exit163
  %i.kc = phi ptr [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre305.pre, %_ZN6duckdb7FieldIDD2Ev.exit163 ] ; 2 uses
  %.sroa.0171.2 = phi i64 [ %.sroa.0171.0284, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0171.1, %_ZN6duckdb7FieldIDD2Ev.exit163 ]
  %i.kd = icmp eq ptr %i.kc, %i.ae
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

end_hunk_4
begin_hunk_5_@_ZN6duckdb7FieldID11GetFieldIDsERKNS_5ValueERNS_13ChildFieldIDsERSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSK_SL_EEE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ke = add nuw i64 %.083285, 1                 ; 2 uses
  %i.kf = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.kg = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.kh = ptrtoint ptr %i.kf to i64
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !27  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !120
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11LogicalTypeEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !141
  store ptr %i.o, ptr %.031, align 8, !tbaa !27
  store ptr %.031, ptr %i.g, align 8, !tbaa !141
  store ptr %i.g, ptr %i.m, align 8, !tbaa !119
  %i.p = load ptr, ptr %.031, align 8, !tbaa !27
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !119
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !27
  store ptr %i.r, ptr %.031, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !119
  store ptr %.031, ptr %i.s, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !228

end_hunk_7
begin_hunk_8_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !27  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !120
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_8
begin_hunk_9_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb7FieldIDEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !46
  store ptr %i.o, ptr %.031, align 8, !tbaa !27
  store ptr %.031, ptr %i.g, align 8, !tbaa !46
  store ptr %i.g, ptr %i.m, align 8, !tbaa !119
  %i.p = load ptr, ptr %.031, align 8, !tbaa !27
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !119
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !27
  store ptr %i.r, ptr %.031, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !119
  store ptr %.031, ptr %i.s, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !241

end_hunk_9
begin_hunk_10_@_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !27  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !3
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
end_hunk_10
begin_hunk_11_@_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !266
  store ptr %i.p, ptr %.031, align 8, !tbaa !27
  store ptr %.031, ptr %i.g, align 8, !tbaa !266
  store ptr %i.g, ptr %i.n, align 8, !tbaa !119
  %i.q = load ptr, ptr %.031, align 8, !tbaa !27
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8, !tbaa !119
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !27
  store ptr %i.s, ptr %.031, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !119
  store ptr %.031, ptr %i.t, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !268

end_hunk_11
