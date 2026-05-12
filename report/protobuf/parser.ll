inline.NumInlined: 394
inline.NumDeleted: 218
begin_hunk_0_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !3      ; 6 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_:bb.a
.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %4 = phi i32 [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %4, ptr %i.ag, align 8, !tbaa !3
  %i.ah = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer6AppendESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.o, %i.v
  br i1 %.not.i.i, label %bb.g, label %bb.f
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer6AppendESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.g:                                             ; preds = %bb.e
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775776
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer6AppendESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.z) #17
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer6AppendESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca <{ i32, %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", %"class.absl::lts_20250512::str_format_internal::UnboundConversion::InputValue", i8, i8, i8 }>, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %3, i64 %2, i1 false)
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 15, i1 false), !tbaa.struct !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.c, label %bb.b
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !30   ; 5 uses
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775776
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.j, ptr %.sroa.56.0..sroa_idx7, align 8, !tbaa !84
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(15) %1, i64 15, i1 false)
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051219str_format_internal16ParsedFormatBase20ParsedFormatConsumer10ConvertOneERKNS1_17UnboundConversionESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.u) #17
  br label %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN4absl12lts_2025051219str_format_internal16ParsedFormatBase14ConversionItemESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
end_hunk_10
