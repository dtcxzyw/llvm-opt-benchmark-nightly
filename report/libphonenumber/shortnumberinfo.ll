Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/shortnumberinfo?download=true
inline.NumInlined: 987
inline.NumDeleted: 450
begin_hunk_0_@_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS2_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS9_SC_EEEEED2Ev:bb.a
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw [312 x i8], ptr %i.o, i64 %.07.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @_ZN4i18n12phonenumbers13PhoneMetadataD1Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.q) #21
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE7destroyISaISt4pairIKS9_SC_EEEEvPT_PNS1_13map_slot_typeIS9_SC_EE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE7destroyISaISt4pairIKS9_SC_EEEEvPT_PNS1_13map_slot_typeIS9_SC_EE.exit.i.i.i

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE7destroyISaISt4pairIKS9_SC_EEEEvPT_PNS1_13map_slot_typeIS9_SC_EE.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.w = add i64 %.07.i.i.i, 1                    ; 3 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !64
  %.not5.i.i.i = icmp eq i64 %i.w, %i.x
  br i1 %.not5.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !162

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEED2Ev.exit.i: ; preds = %._crit_edge.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #22
  br label %_ZN5boost14checked_deleteIN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS2_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS9_SC_EEEEEEvPT_.exit

_ZN5boost14checked_deleteIN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS2_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS9_SC_EEEEEEvPT_.exit: ; preds = %bb.a, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4i18n12phonenumbers15ShortNumberInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_18container_internal10StringHashENSA_8StringEqESaIS9_EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

._crit_edge.i.i.i.i:                              ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.h = add i64 %i.x, 23
  %i.i = shl i64 %i.x, 5
  %i.j = add i64 %i.h, %i.i
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit.i.i

bb.c:                                             ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = phi i64 [ %i.e, %.lr.ph.i.i.i.i ], [ %i.x, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.y, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i ] ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.07.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !62
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.d, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.07.i.i.i.i ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !28
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #22
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !60
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE7destroyISaIS9_EEEvPT_PS9_.exit.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.x = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.l, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %i.y = add i64 %.07.i.i.i.i, 1                  ; 2 uses
  %.not5.i.i.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not5.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.c, !llvm.loop !2

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #22
  br label %_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_18container_internal10StringHashENSA_8StringEqESaIS9_EEEED2Ev.exit

_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_18container_internal10StringHashENSA_8StringEqESaIS9_EEEED2Ev.exit: ; preds = %bb.a, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS2_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS9_SC_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers10MatcherApiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_18container_internal10StringHashENSA_8StringEqESaIS9_EEEED2Ev.exit
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab) #21, !inline_history !1
  br label %_ZN5boost10scoped_ptrIKN4i18n12phonenumbers10MatcherApiEED2Ev.exit

_ZN5boost10scoped_ptrIKN4i18n12phonenumbers10MatcherApiEED2Ev.exit: ; preds = %_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_18container_internal10StringHashENSA_8StringEqESaIS9_EEEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorESN_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.d, align 1, !tbaa !62
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorptEv.exit, label %.critedge.i.i.i, !prof !65

.critedge.i.i.i:                                  ; preds = %bb.b
  tail call void @llvm.trap() #23
  unreachable

_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorptEv.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorESN_.exit

_ZN4absl7debian318container_internalneERKNS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorESN_.exit: ; preds = %bb.a, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorptEv.exit
  %.0 = phi ptr [ %i.i, %_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE8iteratorptEv.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !64   ; 4 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q                       ; 2 uses
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %1, align 8
  %i.z = load i64, ptr %i.c, align 8
  %.fr15 = freeze i64 %i.z                        ; 3 uses
  %i.aa = icmp eq i64 %.fr15, 0
  br i1 %i.aa, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %.pn.i.us = phi i64 [ %i.at, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i.us = and i64 %.pn.i.us, %i.n       ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.us
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !28 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.v, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.split.us
  %i.af = zext i16 %i.ae to i32
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, %.lr.ph.preheader.i.us
  %.sroa.014.046.i.us.us = phi i32 [ %i.ap, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us ], [ %i.af, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.046.i.us.us, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.us, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [312 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, !prof !66

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ao = add nuw nsw i32 %.sroa.014.046.i.us.us, 65535
  %i.ap = and i32 %i.ao, %.sroa.014.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, %.split.us
  %i.aq = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not43.i.us = icmp eq i16 %i.ar, 0
  br i1 %.not43.i.us, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !67

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.as = add i64 %.sroa.12.0.i.us, 16            ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !163

.split:                                           ; preds = %bb.a, %bb.c
  %.pn.i = phi i64 [ %i.bp, %bb.c ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.bo, %bb.c ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !28 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.v, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.ay = zext i16 %i.ax to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.046.i = phi i32 [ %i.bl, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i ], [ %i.ay, %.lr.ph.preheader.i ] ; 3 uses
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.046.i, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add i64 %.sroa.6.0.i, %i.ba
  %i.bc = and i64 %i.bb, %i.n                     ; 2 uses
  %i.bd = getelementptr inbounds nuw [312 x i8], ptr %i.x, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bg = icmp eq i64 %i.bf, %.fr15
  br i1 %i.bg, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !66

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i: ; preds = %.lr.ph.i
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !32
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bh, ptr %i.y, i64 %.fr15)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !68

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.bc, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ]
  %.us-phi6 = phi ptr [ %i.ak, %.lr.ph.i.us.us ], [ %i.bd, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i
  %i.bk = add nuw nsw i32 %.sroa.014.046.i, 65535
  %i.bl = and i32 %i.bk, %.sroa.014.046.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.split
  %i.bm = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %.not43.i = icmp eq i16 %i.bn, 0
  br i1 %.not43.i, label %bb.c, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !67

bb.c:                                             ; preds = %._crit_edge.i
  %i.bo = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.6.0.i
  br label %.split, !llvm.loop !163

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bj, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi6, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15ShortNumberInfo30RegionDialingFromMatchesNumberERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::list", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !71
  store ptr %3, ptr %3, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !74
  %i.c = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetRegionCodesForCountryCallingCodeEiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %i.e, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !72     ; 4 uses
  %.not6.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not6.i.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %.fr7.i.i = freeze i64 %i.h                     ; 3 uses
  %i.i = icmp eq i64 %.fr7.i.i, 0
  br i1 %i.i, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.preheader.i

.lr.ph.i.split.i.preheader.i:                     ; preds = %.lr.ph.i.i.i
  %i.j = load ptr, ptr %2, align 8
  br label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.us.i.i
  %.sroa.03.07.i.us.i.i = phi ptr [ %i.n, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.us.i.i ], [ %i.f, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.us.i.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.us.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.us.i.i: ; preds = %.lr.ph.i.split.us.i.i
  %i.n = load ptr, ptr %.sroa.03.07.i.us.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.us.i.i = icmp eq ptr %i.n, %3
  br i1 %.not.i.us.i.i, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit, label %.lr.ph.i.split.us.i.i, !llvm.loop !164

.lr.ph.i.split.i.i:                               ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i, %.lr.ph.i.split.i.preheader.i
  %.sroa.03.07.i.i.i = phi ptr [ %i.u, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i ], [ %i.f, %.lr.ph.i.split.i.preheader.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = icmp eq i64 %i.p, %.fr7.i.i
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.i.i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.i.i.i: ; preds = %.lr.ph.i.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.s, ptr %i.j, i64 %.fr7.i.i)
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.t, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.i.i.i, %.lr.ph.i.split.i.i
  %i.u = load ptr, ptr %.sroa.03.07.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %3
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit, label %.lr.ph.i.split.i.i, !llvm.loop !164

_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.us.i.i, %.lr.ph.i.split.us.i.i
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %3, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.us.i.i ], [ %.sroa.03.07.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %3, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.thread5.i.i.i ], [ %.sroa.03.07.i.i.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclISt14_List_iteratorIS7_EEEbT_.exit.i.i.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.f, %_ZSt4findISt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES6_ET_S8_S8_RKT0_.exit ] ; 4 uses
  %i.v = load ptr, ptr %.09.i.i, align 8, !tbaa !72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !28
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #22
  %.not.i.i = icmp eq ptr %i.v, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ac = icmp ne ptr %.sroa.03.0.lcssa.i.i.i, %3
  br label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit, %bb.b
  %i.ad = phi i1 [ false, %bb.b ], [ %i.ac, %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %i.ad

bb.c:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.ae
}

declare void @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetRegionCodesForCountryCallingCodeEiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #22
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !3

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15ShortNumberInfo30IsPossibleShortNumberForRegionERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4i18n12phonenumbers15ShortNumberInfo30RegionDialingFromMatchesNumberERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.a, label %bb.b, label %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = tail call { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1, !tbaa !62
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.d, label %.critedge.i.i.i.i, !prof !65

.critedge.i.i.i.i:                                ; preds = %bb.c
  tail call void @llvm.trap() #23
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !31
  store i8 0, ptr %i.j, align 8, !tbaa !28
  %i.l = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers15ShortNumberInfo28MatchesEmergencyNumberHelperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.e = invoke noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil26StartsWithPlusCharsPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = invoke { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.m = load i8, ptr %i.j, align 1, !tbaa !62
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.g, label %.critedge.i.i.i.i, !prof !65

.critedge.i.i.i.i:                                ; preds = %bb.f
  call void @llvm.trap() #23
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %i.q = and i32 %i.p, 524288
  %.not = icmp eq i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  br i1 %.not, label %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil19NormalizeDigitsOnlyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %3, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = invoke { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load i8, ptr %i.x, align 1, !tbaa !62
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.n, label %.critedge.i.i, !prof !65

.critedge.i.i:                                    ; preds = %bb.m
  call void @llvm.trap() #23
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m
  %i.ab = phi i1 [ false, %bb.j ], [ true, %bb.l ], [ false, %bb.m ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  %i.af = select i1 %.not.i.i, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.ae
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.af, i1 noundef zeroext %i.ab)
          to label %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread unwind label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %.noexc, %bb.g, %bb.n, %bb.c
  %.116 = phi i1 [ false, %bb.c ], [ %i.aj, %bb.n ], [ false, %bb.g ], [ false, %.noexc ]
  %i.am = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4i18n12phonenumbers15ShortNumberInfo20GetMetadataForRegionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.116

bb.q:                                             ; preds = %bb.o, %bb.h, %bb.p, %bb.d
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.s, %bb.h ], [ %i.al, %bb.p ], [ %i.ak, %bb.o ]
  %i.aq = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.q
  %i.as = load i64, ptr %i.a, align 8, !tbaa !28
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn19.pn.pn
}

declare void @_ZNK4i18n12phonenumbers15PhoneNumberUtil21ExtractPossibleNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4i18n12phonenumbers15PhoneNumberUtil26StartsWithPlusCharsPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK4i18n12phonenumbers15PhoneNumberUtil19NormalizeDigitsOnlyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !60   ; 4 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q                       ; 2 uses
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %1, align 8
  %i.z = load i64, ptr %i.c, align 8
  %.fr15 = freeze i64 %i.z                        ; 3 uses
  %i.aa = icmp eq i64 %.fr15, 0
  br i1 %i.aa, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.b
  %.pn.i.us = phi i64 [ %i.at, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %i.as, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i.us = and i64 %.pn.i.us, %i.n       ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.us
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !28 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.v, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.split.us
  %i.af = zext i16 %i.ae to i32
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, %.lr.ph.preheader.i.us
  %.sroa.014.046.i.us.us = phi i32 [ %i.ap, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us ], [ %i.af, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.046.i.us.us, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0.i.us, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, !prof !66

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ao = add nuw nsw i32 %.sroa.014.046.i.us.us, 65535
  %i.ap = and i32 %i.ao, %.sroa.014.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, %.split.us
  %i.aq = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.not43.i.us = icmp eq i16 %i.ar, 0
  br i1 %.not43.i.us, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !67

bb.b:                                             ; preds = %._crit_edge.i.us
  %i.as = add i64 %.sroa.12.0.i.us, 16            ; 2 uses
  %i.at = add i64 %i.as, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !165

.split:                                           ; preds = %bb.a, %bb.c
  %.pn.i = phi i64 [ %i.bp, %bb.c ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.bo, %bb.c ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !28 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.v, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.ay = zext i16 %i.ax to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.046.i = phi i32 [ %i.bl, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i ], [ %i.ay, %.lr.ph.preheader.i ] ; 3 uses
  %i.az = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.046.i, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add i64 %.sroa.6.0.i, %i.ba
  %i.bc = and i64 %i.bb, %i.n                     ; 2 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !31
  %i.bg = icmp eq i64 %i.bf, %.fr15
  br i1 %i.bg, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !66

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %.lr.ph.i
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !32
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bh, ptr %i.y, i64 %.fr15)
  %i.bi = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !68

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.bc, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ]
  %.us-phi6 = phi ptr [ %i.ak, %.lr.ph.i.us.us ], [ %i.bd, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i
  %i.bk = add nuw nsw i32 %.sroa.014.046.i, 65535
  %i.bl = and i32 %i.bk, %.sroa.014.046.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.split
  %i.bm = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bn = bitcast <16 x i1> %i.bm to i16
  %.not43.i = icmp eq i16 %i.bn, 0
  br i1 %.not43.i, label %bb.c, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !67

bb.c:                                             ; preds = %._crit_edge.i
  %i.bo = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.6.0.i
  br label %.split, !llvm.loop !165

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bj, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi6, %.thread31.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15ShortNumberInfo17IsCarrierSpecificERKNS0_11PhoneNumberE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !71
  store ptr %2, ptr %2, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !74
  %i.c = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil35GetRegionCodesForCountryCallingCodeEiPNSt7__cxx114listINS2_12basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i32 noundef %i.e, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !31
  store i8 0, ptr %i.f, align 8, !tbaa !28
  invoke void @_ZNK4i18n12phonenumbers15ShortNumberInfo41GetRegionCodeForShortNumberFromRegionListERKNS0_11PhoneNumberERKNSt7__cxx114listINS5_12basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEPSB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !31
  store i8 0, ptr %i.h, align 8, !tbaa !28
  %i.j = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil28GetNationalSignificantNumberERKNS0_11PhoneNumberEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %4)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = invoke { ptr, ptr } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %bb.d
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.q = load i8, ptr %i.n, align 1, !tbaa !62
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.f, label %.critedge.i.i.i.i, !prof !65

.critedge.i.i.i.i:                                ; preds = %bb.e
  call void @llvm.trap() #23
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  %i.w = select i1 %.not.i.i, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !80 ; 4 uses
  %i.ac = zext nneg i32 %i.y to i64               ; 4 uses
  %.idx16.i = shl nuw nsw i64 %i.ac, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx16.i ; 2 uses
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !31  ; 7 uses
  %i.af = lshr i64 %i.ac, 2                       ; 2 uses
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.ag = and i64 %.idx16.i, 8589934576
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ab, i64 %i.ag
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.044.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ax, %bb.l ] ; 2 uses
  %.sroa.026.043.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.aw, %bb.l ] ; 9 uses
  %i.ah = load i32, ptr %.sroa.026.043.i.i.i.i, align 4, !tbaa !82
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i64 %i.ae, %i.ai
  br i1 %i.aj, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i64 %i.ae, %i.am
  br i1 %i.an, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !82
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i64 %i.ae, %i.aq
  br i1 %i.ar, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit55, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !82
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i64 %i.ae, %i.au
  br i1 %i.av, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit57, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 16
  %i.ax = add nsw i64 %.044.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.044.i.i.i.i, 1
  br i1 %i.ay, label %bb.h, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !4

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.l
  %i.az = and i64 %i.ac, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.g
  %.pre-phi53.i.i.i.i = phi i64 [ %i.az, %._crit_edge.loopexit.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.026.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ab, %bb.g ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i, label %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit [
    i64 3, label %bb.m
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge49.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ba = load i32, ptr %.sroa.026.0.lcssa.i.i.i.i, align 4, !tbaa !82
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp eq i64 %i.ae, %i.bb
  br i1 %i.bc, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.n, %._crit_edge.i.i.i.i
  %.sroa.026.1.i.i.i.i = phi ptr [ %i.bd, %bb.n ], [ %.sroa.026.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.be = load i32, ptr %.sroa.026.1.i.i.i.i, align 4, !tbaa !82
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i64 %i.ae, %i.bf
  br i1 %i.bg, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.026.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge49.i.i.i.i

._crit_edge._crit_edge49.i.i.i.i:                 ; preds = %bb.o, %._crit_edge.i.i.i.i
  %.sroa.026.2.i.i.i.i = phi ptr [ %i.bh, %bb.o ], [ %.sroa.026.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bi = load i32, ptr %.sroa.026.2.i.i.i.i, align 4, !tbaa !82
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp eq i64 %i.ae, %i.bj
  %spec.select.i.i.i.i = select i1 %i.bk, ptr %.sroa.026.2.i.i.i.i, ptr %i.ad
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 4
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit55: ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 8
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit57: ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 12
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

end_hunk_1
begin_hunk_2_@_ZNK4i18n12phonenumbers15ShortNumberInfo21IsSmsServiceForRegionERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.026.0.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.sroa.026.1.i.i.i.i = phi ptr [ %i.ax, %bb.m ], [ %.sroa.026.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ay = load i32, ptr %.sroa.026.1.i.i.i.i, align 4, !tbaa !82
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i64 %i.y, %i.az
  br i1 %i.ba, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.026.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge49.i.i.i.i

._crit_edge._crit_edge49.i.i.i.i:                 ; preds = %bb.n, %._crit_edge.i.i.i.i
  %.sroa.026.2.i.i.i.i = phi ptr [ %i.bb, %bb.n ], [ %.sroa.026.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = load i32, ptr %.sroa.026.2.i.i.i.i, align 4, !tbaa !82
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i64 %i.y, %i.bd
  %spec.select.i.i.i.i = select i1 %i.be, ptr %.sroa.026.2.i.i.i.i, ptr %i.x
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 4
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit38: ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 8
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit40: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.026.043.i.i.i.i, i64 12
  br label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i: ; preds = %bb.g, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit38, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit40, %._crit_edge._crit_edge49.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.l
  %.sroa.013.0.i.i.i.i = phi ptr [ %.sroa.026.0.lcssa.i.i.i.i, %bb.l ], [ %.sroa.026.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge49.i.i.i.i ], [ %i.bh, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit40 ], [ %i.bf, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.bg, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit38 ], [ %.sroa.026.043.i.i.i.i, %bb.g ]
  %i.bi = icmp eq ptr %.sroa.013.0.i.i.i.i, %i.x
  br i1 %i.bi, label %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, %bb.e
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i1 noundef zeroext false)
          to label %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit unwind label %bb.p, !inline_history !5

_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit: ; preds = %.noexc, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, %._crit_edge.i.i.i.i, %.critedge.i
  %i.bn = phi i1 [ %i.bm, %.critedge.i ], [ false, %._crit_edge.i.i.i.i ], [ false, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i ], [ false, %.noexc ]
  %i.bo = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.b
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !28
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.r

bb.o:                                             ; preds = %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %.critedge.i, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.bs, %bb.o ]
  %i.bu = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.b
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.q
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !28
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.010 = phi i1 [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.010
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN4i18n12phonenumbers23PhoneMetadataCollectionC2EPN6google8protobuf5ArenaEb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4i18n12phonenumbers13PhoneMetadataD1Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i8 } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE22find_or_prepare_insertIS9_EESG_ImbERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.b, i64 noundef %i.d)
  %i.f = add i64 %i.e, %i.d
  %i.g = zext i64 %i.f to i128
  %i.h = mul nuw i128 %i.g, 11376068507788127593  ; 2 uses
  %i.i = lshr i128 %i.h, 64
  %i.j = xor i128 %i.i, %i.h                      ; 2 uses
  %i.k = trunc i128 %i.j to i64                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !64   ; 2 uses
  %i.o = lshr i64 %i.k, 7
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = lshr i64 %i.p, 12
  %i.r = xor i64 %i.o, %i.q
  %i.s = trunc i128 %i.j to i8
  %i.t = and i8 %i.s, 127
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.r, %bb.a ], [ %i.av, %bb.e ]
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %i.au, %bb.e ]
  %.sroa.6.0 = and i64 %.pn, %i.n                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !28 ; 2 uses
  %i.z = icmp eq <16 x i8> %i.v, %i.y
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not51 = icmp eq i16 %i.aa, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = zext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.ad = load ptr, ptr %1, align 8, !tbaa !32
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.018.052 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ar, %.critedge ] ; 3 uses
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.018.052, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add i64 %.sroa.6.0, %i.ah
  %i.aj = and i64 %i.ai, %i.n                     ; 3 uses
  %i.ak = getelementptr inbounds nuw [312 x i8], ptr %i.ac, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31
  %i.ao = icmp eq i64 %i.an, %i.ae
  br i1 %i.ao, label %bb.d, label %.critedge, !prof !66

bb.d:                                             ; preds = %bb.c
  br i1 %i.af, label %.thread38, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ad, i64 %i.ae)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.thread38, label %.critedge, !prof !68

.critedge:                                        ; preds = %bb.c, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit
  %i.aq = add nuw nsw i32 %.sroa.018.052, 65535
  %i.ar = and i32 %i.aq, %.sroa.018.052           ; 2 uses
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.as = icmp eq <16 x i8> %i.y, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not50 = icmp eq i16 %i.at, 0
  br i1 %.not50, label %bb.e, label %bb.f, !prof !67

bb.e:                                             ; preds = %._crit_edge
  %i.au = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0
  br label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.aw = tail call noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.k)
  br label %.thread38

.thread38:                                        ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit, %bb.d, %bb.f
  %.sroa.031.2 = phi i64 [ %i.aw, %bb.f ], [ %i.aj, %bb.d ], [ %i.aj, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit ]
  %.sroa.3.2 = phi i8 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 5 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !28
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.sroa.10.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %i.m = add i64 %.sroa.10.018.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.019.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !28
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !6

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !43
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !64
  %i.ae = tail call { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef %i.ac, i64 noundef %1, i64 noundef %i.ad)
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  %.pre10 = load i64, ptr %i.x, align 8, !tbaa !33
  %.pre11 = load i64, ptr %i.b, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, %bb.c, %bb.b
  %i.ag = phi i64 [ %.pre11, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %i.ah = phi i64 [ %.pre10, %bb.c ], [ 0, %bb.b ], [ %i.y, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ]
  %i.ai = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %i.af, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !86
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %i.ao = icmp eq i8 %i.an, -128
  %.neg = sext i1 %i.ao to i64
  %i.ap = add i64 %i.ah, %.neg
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !33
  %i.aq = trunc i64 %1 to i8
  %i.ar = and i8 %i.aq, 127                       ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !62
  %i.as = add i64 %.sroa.01.0, -15
  %i.at = and i64 %i.ag, %i.as
  %i.au = and i64 %i.ag, 15
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  store i8 %i.ar, ptr %i.aw, align 1, !tbaa !62
  ret i64 %.sroa.01.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %bb.c, label %bb.d, !prof !67

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN4absl7debian313hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN4absl7debian313hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.0.copyload.i6.i.i = load i64, ptr %i.g, align 1
  %i.h = shl nuw nsw i64 %2, 3
  %i.i = sub nuw nsw i64 128, %i.h
  %i.j = lshr i64 %.0.copyload.i6.i.i, %i.i
  %i.k = add i64 %.0.copyload.i.i.i, %0
  %i.l = zext i64 %i.k to i128
  %i.m = mul nuw i128 %i.l, 11376068507788127593  ; 2 uses
  %i.n = lshr i128 %i.m, 64
  %i.o = xor i128 %i.n, %i.m
  %i.p = trunc i128 %i.o to i64
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i64 %2, 3
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i23.i = load i32, ptr %1, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %.0.copyload.i7.i.i = load i32, ptr %i.s, align 1
  %i.t = zext i32 %.0.copyload.i7.i.i to i64
  %i.u = shl nuw nsw i64 %2, 3
  %i.v = add nsw i64 %i.u, -32
  %i.w = shl nuw i64 %i.t, %i.v
  %i.x = zext i32 %.0.copyload.i.i23.i to i64
  %i.y = or i64 %i.w, %i.x
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i8, ptr %1, align 1, !tbaa !28
  %i.aa = lshr i64 %2, 1                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28
  %i.ad = add nsw i64 %2, -1                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.z to i32
  %i.ah = zext i8 %i.ac to i32
  %i.ai = shl nuw nsw i64 %i.aa, 3
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.ah, %i.aj
  %i.al = or i32 %i.ak, %i.ag
  %i.am = zext i8 %i.af to i32
  %.tr.i.i = trunc nuw nsw i64 %i.ad to i32
  %i.an = shl nuw nsw i32 %.tr.i.i, 3
  %i.ao = shl nuw nsw i32 %i.am, %i.an
  %i.ap = or i32 %i.al, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.021.i = phi i64 [ %i.d, %bb.d ], [ %i.j, %bb.f ], [ %i.y, %bb.h ], [ %i.aq, %bb.j ]
end_hunk_2
begin_hunk_3_@_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_:bb.a
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEC2EOSA_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !28
  store i8 %i.j, ptr %i.i, align 1, !tbaa !28
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEC2EOSA_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEC2EOSA_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEC2EOSA_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !31
  %i.m = load ptr, ptr %1, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @_ZN4i18n12phonenumbers13PhoneMetadataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(280) %i.o, ptr noundef nonnull align 8 dereferenceable(280) %i.p) #21
  call void @_ZN4i18n12phonenumbers13PhoneMetadataD1Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.p) #21
  %i.q = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE7destroyISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEC2EOSA_.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE7destroyISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EE.exit

_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE7destroyISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EE.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEC2EOSA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4i18n12phonenumbers13PhoneMetadataC2EOS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN4i18n12phonenumbers13PhoneMetadataC2EPN6google8protobuf5ArenaEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef null, i1 noundef zeroext false)
          to label %_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit unwind label %bb.l

_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit:   ; preds = %bb.a
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !169  ; 4 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i1
  br i1 %i.e, label %bb.d, label %bb.e, !prof !67

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %i.c, -4
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !171
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i

_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.j = phi ptr [ null, %bb.b ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !169  ; 4 uses
  %i.m = and i64 %i.l, 2
  %.not.i7.i = icmp eq i64 %i.m, 0
  br i1 %.not.i7.i, label %bb.f, label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i
  %i.n = trunc i64 %i.l to i1
  br i1 %i.n, label %bb.g, label %bb.h, !prof !67

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, -4
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i

bb.h:                                             ; preds = %bb.f
  %i.r = inttoptr i64 %i.l to ptr
  br label %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i

_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i: ; preds = %bb.h, %bb.g, %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i
  %i.s = phi ptr [ null, %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit.i ], [ %i.q, %bb.g ], [ %i.r, %bb.h ]
  %i.t = icmp eq ptr %i.j, %i.s
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i
  invoke void @_ZN4i18n12phonenumbers13PhoneMetadata12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit unwind label %bb.k

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite14GetOwningArenaEv.exit8.i
  invoke void @_ZN4i18n12phonenumbers13PhoneMetadata8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1)
          to label %_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #23
  unreachable

_ZN4i18n12phonenumbers13PhoneMetadataaSEOS1_.exit: ; preds = %_ZN4i18n12phonenumbers13PhoneMetadataC2Ev.exit, %bb.i, %bb.j
  ret void

bb.l:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable
}

declare void @_ZN4i18n12phonenumbers13PhoneMetadataC2EPN6google8protobuf5ArenaEb(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare void @_ZN4i18n12phonenumbers13PhoneMetadata12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef) local_unnamed_addr #2

declare void @_ZN4i18n12phonenumbers13PhoneMetadata8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

declare void @_ZN4absl7debian318container_internal37ConvertDeletedToEmptyAndFullToDeletedEPNS1_6ctrl_tEm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i8 } @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE22find_or_prepare_insertIA3_cEESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 2 uses
  %i.c = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull %1, i64 noundef %i.b)
  %i.d = add i64 %i.c, %i.b
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, 11376068507788127593  ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f                      ; 2 uses
  %i.i = trunc i128 %i.h to i64                   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = lshr i64 %i.i, 7
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = lshr i64 %i.n, 12
  %i.p = xor i64 %i.m, %i.o
  %i.q = trunc i128 %i.h to i8
  %i.r = and i8 %i.q, 127
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.p, %bb.a ], [ %i.as, %bb.e ]
  %.sroa.12.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.e ]
  %.sroa.6.0 = and i64 %.pn, %i.l                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.6.0
  %i.w = load <16 x i8>, ptr %i.v, align 1, !tbaa !28 ; 2 uses
  %i.x = icmp eq <16 x i8> %i.t, %i.w
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not51 = icmp eq i16 %i.y, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.z = zext i16 %i.y to i32
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.018.052 = phi i32 [ %i.z, %.lr.ph ], [ %i.ao, %.critedge ] ; 3 uses
  %i.ad = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.018.052, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %.sroa.6.0, %i.ae
  %i.ag = and i64 %i.af, %i.l                     ; 3 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.al = icmp eq i64 %i.ak, %i.ab
  br i1 %i.al, label %bb.d, label %.critedge, !prof !66

bb.d:                                             ; preds = %bb.c
  br i1 %i.ac, label %.thread38, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr nonnull %1, i64 %i.ab)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.am, label %.thread38, label %.critedge, !prof !68

.critedge:                                        ; preds = %bb.c, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit
  %i.an = add nuw nsw i32 %.sroa.018.052, 65535
  %i.ao = and i32 %i.an, %.sroa.018.052           ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.ap = icmp eq <16 x i8> %i.w, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not50 = icmp eq i16 %i.aq, 0
  br i1 %.not50, label %bb.e, label %bb.f, !prof !67

bb.e:                                             ; preds = %._crit_edge
  %i.ar = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0
  br label %bb.b

bb.f:                                             ; preds = %._crit_edge
  %i.at = tail call noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.i)
  br label %.thread38

.thread38:                                        ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit, %bb.d, %bb.f
  %.sroa.031.2 = phi i64 [ %i.at, %bb.f ], [ %i.ag, %bb.d ], [ %i.ag, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit ]
  %.sroa.3.2 = phi i8 [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 5 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !28
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %.sroa.10.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %i.m = add i64 %.sroa.10.018.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.019.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !28
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !6

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ae = tail call { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef %i.ac, i64 noundef %1, i64 noundef %i.ad)
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !51
  %.pre10 = load i64, ptr %i.x, align 8, !tbaa !33
  %.pre11 = load i64, ptr %i.b, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, %bb.c, %bb.b
  %i.ag = phi i64 [ %.pre11, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %i.ah = phi i64 [ %.pre10, %bb.c ], [ 0, %bb.b ], [ %i.y, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ]
  %i.ai = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %i.af, %bb.c ], [ %i.w, %bb.b ], [ %i.w, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !87
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !62
  %i.ao = icmp eq i8 %i.an, -128
  %.neg = sext i1 %i.ao to i64
  %i.ap = add i64 %i.ah, %.neg
  store i64 %i.ap, ptr %i.x, align 8, !tbaa !33
  %i.aq = trunc i64 %1 to i8
  %i.ar = and i8 %i.aq, 127                       ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !62
  %i.as = add i64 %.sroa.01.0, -15
  %i.at = and i64 %i.ag, %i.as
  %i.au = and i64 %i.ag, 15
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  store i8 %i.ar, ptr %i.aw, align 1, !tbaa !62
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 16
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %i.g = shl i64 %i.f, 5
  %i.h = mul i64 %i.b, 25
  %.not = icmp ugt i64 %i.g, %i.h
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE27drop_deletes_without_resizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = shl i64 %i.b, 1
  %i.j = or disjoint i64 %i.i, 1
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 4 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !60
  %i.f = add i64 %1, 23                           ; 2 uses
  %i.g = shl i64 %1, 5
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc.i.i, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit, !prof !67

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit: ; preds = %bb.a
  %i.j = and i64 %i.f, -8
  %i.k = and i64 %i.h, 9223372036854775800
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store ptr %i.m, ptr %i.b, align 8, !tbaa !56
  %i.n = add i64 %1, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -128, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  store i8 -1, ptr %i.o, align 1, !tbaa !62
  %i.p = lshr i64 %1, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !87
  %i.s = add i64 %i.p, %i.r
  %i.t = sub i64 %1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.t, ptr %i.u, align 8, !tbaa !33
  %.not28 = icmp eq i64 %i.e, 0
  br i1 %.not28, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit, %bb.d
  %.02129 = phi i64 [ %i.bz, %bb.d ], [ 0, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02129
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
end_hunk_3
