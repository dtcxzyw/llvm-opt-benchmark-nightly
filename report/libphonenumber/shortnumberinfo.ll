Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/shortnumberinfo?download=true
begin_hunk_0_@_ZN5boost10scoped_ptrIN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS2_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS9_SC_EEEEED2Ev:bb.a
  %i.j = and i64 %i.i, -8
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEED2Ev.exit.i

bb.c:                                             ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE7destroyISaISt4pairIKS9_SC_EEEEvPT_PNS1_13map_slot_typeIS9_SC_EE.exit.i.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.w, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE7destroyISaISt4pairIKS9_SC_EEEEvPT_PNS1_13map_slot_typeIS9_SC_EE.exit.i.i.i ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.07.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !62
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.d, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE7destroyISaISt4pairIKS9_SC_EEEEvPT_PNS1_13map_slot_typeIS9_SC_EE.exit.i.i.i

bb.d:                                             ; preds = %bb.c
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

.split.us:                                        ; preds = %bb.a, %4
  %.pn.i.us = phi i64 [ %6, %4 ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %5, %4 ], [ 0, %bb.a ]
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

._crit_edge.i.us:                                 ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, %.split.us
  %2 = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %3 = bitcast <16 x i1> %2 to i16
  %.not43.i.us = icmp eq i16 %3, 0
  br i1 %.not43.i.us, label %4, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !66

4:                                                ; preds = %._crit_edge.i.us
  %5 = add i64 %.sroa.12.0.i.us, 16               ; 2 uses
  %6 = add i64 %5, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !163

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
  br i1 %i.an, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us, !prof !67

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ao = add nsw i32 %.sroa.014.046.i.us.us, -1
  %i.ap = and i32 %i.ao, %.sroa.014.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.a, %bb.b
  %.pn.i = phi i64 [ %i.bl, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.bk, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !28 ; 2 uses
  %i.as = icmp eq <16 x i8> %i.v, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.at, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.au = zext i16 %i.at to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.046.i = phi i32 [ %i.bh, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i ], [ %i.au, %.lr.ph.preheader.i ] ; 3 uses
  %i.av = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.046.i, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.n                     ; 2 uses
  %i.az = getelementptr inbounds nuw [312 x i8], ptr %i.x, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bc = icmp eq i64 %i.bb, %.fr15
  br i1 %i.bc, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !67

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i: ; preds = %.lr.ph.i
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !32
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bd, ptr %i.y, i64 %.fr15)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, !prof !68

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.ay, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ]
  %.us-phi6 = phi ptr [ %i.ak, %.lr.ph.i.us.us ], [ %i.az, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.i, %.lr.ph.i
  %i.bg = add nsw i32 %.sroa.014.046.i, -1
  %i.bh = and i32 %i.bg, %.sroa.014.046.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit.thread26.i, %.split
  %i.bi = icmp eq <16 x i8> %i.ar, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit, !prof !66

bb.b:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !163

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE4findIS9_EENSK_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
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
  %i.o = select i1 %.not.i.i, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 4 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !81
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %.idx31 = shl nsw i64 %i.t, 2                   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %.idx31 ; 3 uses
  %i.v = load i64, ptr %i.k, align 8, !tbaa !31   ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers15ShortNumberInfo25ConnectsToEmergencyNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers15ShortNumberInfo28MatchesEmergencyNumberHelperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !31
  store i8 0, ptr %i.a, align 8, !tbaa !28
  %i.c = load ptr, ptr %0, align 8, !tbaa !76, !nonnull !77, !align !78
  invoke void @_ZNK4i18n12phonenumbers15PhoneNumberUtil21ExtractPossibleNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.d

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

.split.us:                                        ; preds = %bb.a, %4
  %.pn.i.us = phi i64 [ %6, %4 ], [ %i.r, %bb.a ]
  %.sroa.12.0.i.us = phi i64 [ %5, %4 ], [ 0, %bb.a ]
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

._crit_edge.i.us:                                 ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, %.split.us
  %2 = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %3 = bitcast <16 x i1> %2 to i16
  %.not43.i.us = icmp eq i16 %3, 0
  br i1 %.not43.i.us, label %4, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !66

4:                                                ; preds = %._crit_edge.i.us
  %5 = add i64 %.sroa.12.0.i.us, 16               ; 2 uses
  %6 = add i64 %5, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !165

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
  br i1 %i.an, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us, !prof !67

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i.us.us: ; preds = %.lr.ph.i.us.us
  %i.ao = add nsw i32 %.sroa.014.046.i.us.us, -1
  %i.ap = and i32 %i.ao, %.sroa.014.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.a, %bb.b
  %.pn.i = phi i64 [ %i.bl, %bb.b ], [ %i.r, %bb.a ]
  %.sroa.12.0.i = phi i64 [ %i.bk, %bb.b ], [ 0, %bb.a ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.n             ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !28 ; 2 uses
  %i.as = icmp eq <16 x i8> %i.v, %i.ar
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.at, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split
  %i.au = zext i16 %i.at to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.lr.ph.preheader.i
  %.sroa.014.046.i = phi i32 [ %i.bh, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i ], [ %i.au, %.lr.ph.preheader.i ] ; 3 uses
  %i.av = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.014.046.i, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.6.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.n                     ; 2 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !31
  %i.bc = icmp eq i64 %i.bb, %.fr15
  br i1 %i.bc, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !67

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %.lr.ph.i
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !32
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.bd, ptr %i.y, i64 %.fr15)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %.thread31.i, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, !prof !68

.thread31.i:                                      ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.aj, %.lr.ph.i.us.us ], [ %i.ay, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ]
  %.us-phi6 = phi ptr [ %i.ak, %.lr.ph.i.us.us ], [ %i.az, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %.us-phi
  br label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %.lr.ph.i
  %i.bg = add nsw i32 %.sroa.014.046.i, -1
  %i.bh = and i32 %i.bg, %.sroa.014.046.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.thread26.i, %.split
  %i.bi = icmp eq <16 x i8> %i.ar, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.b, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit, !prof !66

bb.b:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.12.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !165

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread31.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread31.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
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

_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i: ; preds = %bb.h, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit55, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit57, %._crit_edge._crit_edge49.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.m
  %.sroa.013.0.i.i.i.i = phi ptr [ %.sroa.026.0.lcssa.i.i.i.i, %bb.m ], [ %.sroa.026.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge49.i.i.i.i ], [ %i.bn, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit57 ], [ %i.bl, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.bm, %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i.loopexit.split.loop.exit55 ], [ %.sroa.026.043.i.i.i.i, %bb.h ]
  %i.bo = icmp eq ptr %.sroa.013.0.i.i.i.i, %i.ad
  br i1 %i.bo, label %_ZN4i18n12phonenumbers12_GLOBAL__N_138MatchesPossibleNumberAndNationalNumberERKNS0_10MatcherApiERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_15PhoneNumberDescE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, %bb.f
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
end_hunk_1
begin_hunk_2_@_ZNK4i18n12phonenumbers15ShortNumberInfo21IsSmsServiceForRegionERKNS0_11PhoneNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge49.i.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.au = load i32, ptr %.sroa.026.0.lcssa.i.i.i.i, align 4, !tbaa !82
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp eq i64 %i.y, %i.av
  br i1 %i.aw, label %_ZSt4findIN6google8protobuf8internal16RepeatedIteratorIKiEEmET_S6_S6_RKT0_.exit.i, label %bb.m

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
  br i1 %i.ao, label %bb.d, label %.critedge, !prof !67

bb.d:                                             ; preds = %bb.c
  br i1 %i.af, label %.thread38, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.ad, i64 %i.ae)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.thread38, label %.critedge, !prof !68

.critedge:                                        ; preds = %bb.c, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEvE5applyINS1_12raw_hash_setISD_NS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE12EqualElementIS9_EEJRSL_ESD_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSS_DpOST_.exit
  %i.aq = add nsw i32 %.sroa.018.052, -1
  %i.ar = and i32 %i.aq, %.sroa.018.052           ; 2 uses
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.as = icmp eq <16 x i8> %i.y, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not50 = icmp eq i16 %i.at, 0
  br i1 %.not50, label %bb.e, label %bb.f, !prof !66

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
  br i1 %i.b, label %bb.c, label %bb.d, !prof !66

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
  %.020.i = phi i64 [ %0, %bb.d ], [ %i.p, %bb.f ], [ %0, %bb.h ], [ %0, %bb.j ]
  %i.ar = add i64 %.020.i, %.021.i
  %i.as = zext i64 %i.ar to i128
  %i.at = mul nuw i128 %i.as, 11376068507788127593 ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = xor i128 %i.au, %i.at
  %i.aw = trunc i128 %i.av to i64
  br label %_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.c, %bb.i, %bb.k
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.aw, %bb.k ], [ %0, %bb.i ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl7debian313hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN4absl7debian313hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: inlinehint mustprogress uwtable
declare { i64, i64 } @_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 16
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !86
  %i.g = shl i64 %i.f, 5
  %i.h = mul i64 %i.b, 25
  %.not = icmp ugt i64 %i.g, %i.h
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE27drop_deletes_without_resizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = shl i64 %i.b, 1
  %i.j = or disjoint i64 %i.i, 1
  tail call void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  store i64 %1, ptr %i.d, align 8, !tbaa !64
  %i.f = add i64 %1, 23                           ; 2 uses
  %i.g = mul i64 %1, 312
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc.i.i, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE16initialize_slotsEv.exit, !prof !66

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE16initialize_slotsEv.exit: ; preds = %bb.a
  %i.j = and i64 %i.f, -8
  %i.k = and i64 %i.h, 9223372036854775800
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store ptr %i.m, ptr %i.b, align 8, !tbaa !59
  %i.n = add i64 %1, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 -128, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %1
  store i8 -1, ptr %i.o, align 1, !tbaa !62
  %i.p = lshr i64 %1, 3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !86
  %i.s = add i64 %i.p, %i.r
  %i.t = sub i64 %1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !33
  %.not28 = icmp eq i64 %i.e, 0
  br i1 %.not28, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE16initialize_slotsEv.exit, %bb.c
  %.02129 = phi i64 [ %i.bp, %bb.c ], [ 0, %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE16initialize_slotsEv.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.02129
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw [312 x i8], ptr %i.c, i64 %.02129 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ac = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.z, i64 noundef %i.ab)
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, 11376068507788127593 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af                   ; 2 uses
  %i.ai = trunc i128 %i.ah to i64
  %i.aj = load ptr, ptr %0, align 8, !tbaa !43    ; 5 uses
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !64  ; 5 uses
  %i.al = lshr i64 %i.ai, 7
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = lshr i64 %i.am, 12
  %i.ao = xor i64 %i.al, %i.an
  %i.ap = and i64 %i.ao, %i.ak                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !28
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not17.i = icmp eq i16 %i.at, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %.sroa.10.018.i = phi i64 [ %i.au, %.lr.ph.i ], [ 0, %bb.b ]
  %i.au = add i64 %.sroa.10.018.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.5.019.i
  %i.aw = and i64 %i.av, %i.ak                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aw
  %i.ay = load <16 x i8>, ptr %i.ax, align 1, !tbaa !28
  %i.az = icmp slt <16 x i8> %i.ay, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !6

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.lcssa.i = phi i64 [ %i.ap, %bb.b ], [ %i.aw, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.at, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = add i64 %.sroa.5.0.lcssa.i, %i.bc
  %i.be = and i64 %i.bd, %i.ak                    ; 3 uses
  %i.bf = trunc i128 %i.ah to i8
  %i.bg = and i8 %i.bf, 127                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !62
  %i.bi = add i64 %i.be, -15
  %i.bj = and i64 %i.bi, %i.ak
  %i.bk = and i64 %i.ak, 15
  %i.bl = getelementptr i8, ptr %i.aj, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bg, ptr %i.bm, align 1, !tbaa !62
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw [312 x i8], ptr %i.bn, i64 %i.be
  tail call void @_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_(ptr noundef nonnull %i.u, ptr noundef %i.bo, ptr noundef nonnull %i.y)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.bp = add nuw i64 %.02129, 1                  ; 2 uses
  %.not = icmp eq i64 %i.bp, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !166

._crit_edge:                                      ; preds = %bb.c
  %i.bq = add i64 %i.e, 23
  %i.br = mul i64 %i.e, 312
  %i.bs = add i64 %i.bq, %i.br
  %i.bt = and i64 %i.bs, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.bt) #22
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE16initialize_slotsEv.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE27drop_deletes_without_resizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [312 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  tail call void @_ZN4absl7debian318container_internal37ConvertDeletedToEmptyAndFullToDeletedEPNS1_6ctrl_tEm(ptr noundef %i.b, i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not40 = icmp eq i64 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.lcssa39 = phi i64 [ 0, %bb.a ], [ %i.co, %bb.h ] ; 2 uses
  %i.h = lshr i64 %.lcssa39, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !86
  %i.k = add i64 %i.h, %i.j
  %i.l = sub i64 %.lcssa39, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.l, ptr %i.m, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.n = phi i64 [ %i.e, %.lr.ph ], [ %i.co, %bb.h ]
  %.042 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.h ] ; 14 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.042
  %i.q = load i8, ptr %i.p, align 1, !tbaa !62
  %i.r = icmp eq i8 %i.q, -2
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw [312 x i8], ptr %i.s, i64 %.042 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.u, i64 noundef %i.w)
  %i.y = add i64 %i.x, %i.w
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw i128 %i.z, 11376068507788127593 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa                   ; 3 uses
  %i.ad = trunc i128 %i.ac to i64
  %i.ae = load ptr, ptr %0, align 8, !tbaa !43    ; 7 uses
  %i.af = load i64, ptr %i.c, align 8, !tbaa !64  ; 9 uses
  %i.ag = lshr i64 %i.ad, 7
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = and i64 %i.aj, %i.af                    ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ak
  %i.am = load <16 x i8>, ptr %i.al, align 1, !tbaa !28
  %i.an = icmp slt <16 x i8> %i.am, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not17.i = icmp eq i16 %i.ao, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.ak, %bb.c ]
  %.sroa.10.018.i = phi i64 [ %i.ap, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ap = add i64 %.sroa.10.018.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.5.019.i
  %i.ar = and i64 %i.aq, %i.af                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ar
  %i.at = load <16 x i8>, ptr %i.as, align 1, !tbaa !28
  %i.au = icmp slt <16 x i8> %i.at, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !6

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.c
  %.sroa.5.0.lcssa.i = phi i64 [ %i.ak, %bb.c ], [ %i.ar, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ao, %bb.c ], [ %i.av, %.lr.ph.i ]
  %i.aw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.5.0.lcssa.i, %i.ax
  %i.az = and i64 %i.ay, %i.af                    ; 6 uses
  %i.ba = sub i64 %i.az, %i.ak
  %i.bb = sub i64 %.042, %i.ak
  %i.bc = xor i64 %i.ba, %i.bb
  %.unshifted = and i64 %i.bc, %i.af
  %i.bd = icmp ult i64 %.unshifted, 16
  br i1 %i.bd, label %bb.d, label %bb.e, !prof !65

bb.d:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.be = trunc i128 %i.ac to i8
  %i.bf = and i8 %i.be, 127                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.042
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %i.bh = add i64 %.042, -15
  %i.bi = and i64 %i.af, %i.bh
  %i.bj = and i64 %i.af, 15
  %i.bk = getelementptr i8, ptr %i.ae, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !62
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.az ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  %i.bo = icmp eq i8 %i.bn, -128
  %i.bp = trunc i128 %i.ac to i8
  %i.bq = and i8 %i.bp, 127                       ; 2 uses
  store i8 %i.bq, ptr %i.bm, align 1, !tbaa !62
  %i.br = add i64 %i.az, -15
  %i.bs = and i64 %i.br, %i.af
  %i.bt = and i64 %i.af, 15
  %i.bu = getelementptr i8, ptr %i.ae, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bt
  store i8 %i.bq, ptr %i.bv, align 1, !tbaa !62
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !59  ; 3 uses
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw [312 x i8], ptr %i.bw, i64 %i.az
  %i.by = getelementptr inbounds nuw [312 x i8], ptr %i.bw, i64 %.042
  call void @_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_(ptr noundef nonnull %i.g, ptr noundef %i.bx, ptr noundef %i.by)
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !64  ; 3 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.042
  store i8 -128, ptr %i.cb, align 1, !tbaa !62
  %i.cc = add i64 %.042, -15
  %i.cd = and i64 %i.bz, %i.cc
  %i.ce = and i64 %i.bz, 15
  %i.cf = getelementptr i8, ptr %i.ca, i64 %i.cd
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.ce
  store i8 -128, ptr %i.cg, align 1, !tbaa !62
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw [312 x i8], ptr %i.bw, i64 %.042
  call void @_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef %i.ch)
  %i.ci = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %i.cj = getelementptr inbounds nuw [312 x i8], ptr %i.ci, i64 %.042
  %i.ck = getelementptr inbounds nuw [312 x i8], ptr %i.ci, i64 %i.az
  call void @_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_(ptr noundef nonnull %i.g, ptr noundef %i.cj, ptr noundef %i.ck)
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !59
  %i.cm = getelementptr inbounds nuw [312 x i8], ptr %i.cl, i64 %i.az
  call void @_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_(ptr noundef nonnull %i.g, ptr noundef %i.cm, ptr noundef nonnull %i.a)
  %i.cn = add i64 %.042, -1
  %.pre = load i64, ptr %i.c, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.co = phi i64 [ %i.n, %bb.b ], [ %i.bz, %bb.f ], [ %.pre, %bb.g ], [ %i.af, %bb.d ] ; 3 uses
  %.3 = phi i64 [ %.042, %bb.b ], [ %.042, %bb.f ], [ %i.cn, %bb.g ], [ %.042, %bb.d ]
  %i.cp = add i64 %.3, 1                          ; 2 uses
  %.not = icmp eq i64 %i.cp, %i.co
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !167
}

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal15map_slot_policyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEE8transferISaISt4pairIKS8_SB_EEEEvPT_PNS1_13map_slot_typeIS8_SB_EESM_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !27
  %i.c = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.e, ptr %i.a, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !32
  %i.h = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.h, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
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
  br i1 %i.e, label %bb.d, label %bb.e, !prof !66

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
  br i1 %i.n, label %bb.g, label %bb.h, !prof !66

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
  br i1 %i.al, label %bb.d, label %.critedge, !prof !67

bb.d:                                             ; preds = %bb.c
  br i1 %i.ac, label %.thread38, label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr nonnull %1, i64 %i.ab)
  %i.am = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.am, label %.thread38, label %.critedge, !prof !68

.critedge:                                        ; preds = %bb.c, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIA3_cEEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit
  %i.an = add nsw i32 %.sroa.018.052, -1
  %i.ao = and i32 %i.an, %.sroa.018.052           ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.ap = icmp eq <16 x i8> %i.w, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not50 = icmp eq i16 %i.aq, 0
  br i1 %.not50, label %bb.e, label %bb.f, !prof !66

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
  br i1 %i.i, label %.noexc.i.i, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit, !prof !66

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
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.02129 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ac = tail call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.z, i64 noundef %i.ab)
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, 11376068507788127593 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af                   ; 2 uses
  %i.ai = trunc i128 %i.ah to i64
  %i.aj = load ptr, ptr %0, align 8, !tbaa !51    ; 5 uses
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !60  ; 5 uses
  %i.al = lshr i64 %i.ai, 7
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = lshr i64 %i.am, 12
  %i.ao = xor i64 %i.al, %i.an
  %i.ap = and i64 %i.ao, %i.ak                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 1, !tbaa !28
  %i.as = icmp slt <16 x i8> %i.ar, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not17.i = icmp eq i16 %i.at, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.5.019.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %.sroa.10.018.i = phi i64 [ %i.au, %.lr.ph.i ], [ 0, %bb.b ]
  %i.au = add i64 %.sroa.10.018.i, 16             ; 2 uses
  %i.av = add i64 %i.au, %.sroa.5.019.i
  %i.aw = and i64 %i.av, %i.ak                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aw
  %i.ay = load <16 x i8>, ptr %i.ax, align 1, !tbaa !28
  %i.az = icmp slt <16 x i8> %i.ay, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit, !llvm.loop !6

_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.lcssa.i = phi i64 [ %i.ap, %bb.b ], [ %i.aw, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.at, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = add i64 %.sroa.5.0.lcssa.i, %i.bc
  %i.be = and i64 %i.bd, %i.ak                    ; 3 uses
  %i.bf = trunc i128 %i.ah to i8
  %i.bg = and i8 %i.bf, 127                       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !62
  %i.bi = add i64 %i.be, -15
  %i.bj = and i64 %i.bi, %i.ak
  %i.bk = and i64 %i.ak, 15
  %i.bl = getelementptr i8, ptr %i.aj, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bg, ptr %i.bm, align 1, !tbaa !62
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.be ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !27
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !32  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  %i.bt = load i64, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bv, i1 false)
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN4absl7debian318container_internal19find_first_non_fullIvEENS1_8FindInfoEPKNS1_6ctrl_tEmm.exit
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !32
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !28
  store i64 %i.bw, ptr %i.bp, align 8, !tbaa !28
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bx = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !31
  store ptr %i.br, ptr %i.y, align 8, !tbaa !32
  store i64 0, ptr %i.aa, align 8, !tbaa !31
  store i8 0, ptr %i.br, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit
  %i.bz = add nuw i64 %.02129, 1                  ; 2 uses
  %.not = icmp eq i64 %i.bz, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !172

._crit_edge:                                      ; preds = %bb.d
  %i.ca = add i64 %i.e, 23
  %i.cb = shl i64 %i.e, 5
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = and i64 %i.cc, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.cd) #22
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE16initialize_slotsEv.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE27drop_deletes_without_resizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !60
  tail call void @_ZN4absl7debian318container_internal37ConvertDeletedToEmptyAndFullToDeletedEPNS1_6ctrl_tEm(ptr noundef %i.b, i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = load i64, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %.not46 = icmp eq i64 %i.e, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.lcssa45 = phi i64 [ 0, %bb.a ], [ %i.eg, %bb.l ] ; 2 uses
  %i.i = lshr i64 %.lcssa45, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %i.l = add i64 %i.i, %i.k
  %i.m = sub i64 %.lcssa45, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.o = phi i64 [ %i.e, %.lr.ph ], [ %i.eg, %bb.l ]
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.eh, %bb.l ] ; 14 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.048
  %i.r = load i8, ptr %i.q, align 1, !tbaa !62
  %i.s = icmp eq i8 %i.r, -2
  br i1 %i.s, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.048 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = call i64 @_ZN4absl7debian313hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 ptrtoint (ptr @_ZN4absl7debian313hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.v, i64 noundef %i.x)
  %i.z = add i64 %i.y, %i.x
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw i128 %i.aa, 11376068507788127593 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab                   ; 3 uses
  %i.ae = trunc i128 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !51    ; 7 uses
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !60  ; 9 uses
  %i.ah = lshr i64 %i.ae, 7
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = lshr i64 %i.ai, 12
  %i.ak = xor i64 %i.ah, %i.aj
  %i.al = and i64 %i.ak, %i.ag                    ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !28
end_hunk_2
begin_hunk_3_@_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE27drop_deletes_without_resizeEv:bb.a
  %i.db = add nuw nsw i64 %i.cz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %bb.h
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !32
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !28
  store i64 %i.dc, ptr %i.g, align 8, !tbaa !28
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit31

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit31: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  store i64 %i.de, ptr %i.h, align 8, !tbaa !31
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !32
  store i64 0, ptr %i.dd, align 8, !tbaa !31
  store i8 0, ptr %i.cw, align 8, !tbaa !28
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !56  ; 2 uses
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.048 ; 4 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.ba ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 3 uses
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !27
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 5 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

bb.j:                                             ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !31 ; 2 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %i.dp = add nuw nsw i64 %i.dn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.di, ptr noundef nonnull align 8 dereferenceable(1) %i.dk, i64 %i.dp, i1 false)
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit31
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !32
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !28
  store i64 %i.dq, ptr %i.di, align 8, !tbaa !28
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit33

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit33: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !31
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !31
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !32
  store i64 0, ptr %i.dr, align 8, !tbaa !31
  store i8 0, ptr %i.dk, align 8, !tbaa !28
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.ba ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 3 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !27
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.g
  br i1 %i.dy, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34

bb.k:                                             ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit33
  %i.dz = load i64, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 16
  call void @llvm.assume(i1 %i.ea)
  %i.eb = add nuw nsw i64 %i.dz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dw, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.eb, i1 false)
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34: ; preds = %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit33
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !32
  %i.ec = load i64, ptr %i.g, align 8, !tbaa !28
  store i64 %i.ec, ptr %i.dw, align 8, !tbaa !28
  br label %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit35

_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit35: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i34
  %i.ed = load i64, ptr %i.h, align 8, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !31
  store ptr %i.g, ptr %i.a, align 8, !tbaa !32
  store i64 0, ptr %i.h, align 8, !tbaa !31
  store i8 0, ptr %i.g, align 8, !tbaa !28
  %i.ef = add i64 %.048, -1
  %.pre = load i64, ptr %i.c, align 8, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit35, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit, %bb.b
  %i.eg = phi i64 [ %i.o, %bb.b ], [ %i.cm, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit ], [ %.pre, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit35 ], [ %i.ag, %bb.d ] ; 3 uses
  %.3 = phi i64 [ %.048, %bb.b ], [ %.048, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit ], [ %i.ef, %_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE8transferISaIS9_EEEvPT_PS9_SG_.exit35 ], [ %.048, %bb.d ]
  %i.eh = add i64 %.3, 1                          ; 2 uses
  %.not = icmp eq i64 %i.eh, %i.eg
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !173
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #25 = { noreturn }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{!2, !63}
!3 = distinct !{!3, !63}
!4 = distinct !{!4, !63}
!5 = distinct !{null}
!6 = distinct !{!6, !63}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"p1 _ZTSN4i18n12phonenumbers6LoggerE", !16, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSN4i18n12phonenumbers6LoggerE", !13, i64 8}
!21 = !{!20, !13, i64 8}
!22 = !{!"vtable pointer", !11, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN4i18n12phonenumbers13LoggerHandlerE", !18, i64 0}
!25 = !{!24, !18, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!27 = !{!26, !17, i64 0}
!28 = !{!12, !12, i64 0}
!29 = !{!"long", !12, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !29, i64 8, !12, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{!30, !17, i64 0}
!33 = !{!29, !29, i64 0}
!34 = !{!"p1 _ZTSN4i18n12phonenumbers15PhoneNumberUtilE", !16, i64 0}
!35 = !{!"p1 _ZTSN4i18n12phonenumbers10MatcherApiE", !16, i64 0}
!36 = !{!"_ZTSN5boost10scoped_ptrIKN4i18n12phonenumbers10MatcherApiEEE", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"p1 _ZTSN4absl7debian318container_internal13map_slot_typeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEE", !16, i64 0}
!39 = !{!"_ZTSN4absl7debian318container_internal25internal_compressed_tuple7StorageImLm0ELb0EEE", !29, i64 0}
!40 = !{!"_ZTSN4absl7debian318container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJmNS1_20HashtablezInfoHandleENS1_10StringHashENS1_8StringEqESaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEEEENS0_16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEELb1EEE", !39, i64 0}
!41 = !{!"_ZTSN4absl7debian318container_internal15CompressedTupleIJmNS1_20HashtablezInfoHandleENS1_10StringHashENS1_8StringEqESaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEEEEE", !40, i64 0}
!42 = !{!"_ZTSN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEEE", !16, i64 0, !38, i64 8, !29, i64 16, !29, i64 24, !41, i64 32}
!43 = !{!42, !16, i64 0}
!44 = !{!"p1 _ZTSN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS0_18container_internal10StringHashENSB_8StringEqESaISt4pairIKS7_SA_EEEE", !16, i64 0}
!45 = !{!"_ZTSN5boost10scoped_ptrIN4absl7debian313flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataENS2_18container_internal10StringHashENSD_8StringEqESaISt4pairIKS9_SC_EEEEEE", !44, i64 0}
!46 = !{!45, !44, i64 0}
!47 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!48 = !{!"_ZTSN4absl7debian318container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJmNS1_20HashtablezInfoHandleENS1_10StringHashENS1_8StringEqESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS0_16integer_sequenceImJLm0ELm1ELm2ELm3ELm4EEEELb1EEE", !39, i64 0}
!49 = !{!"_ZTSN4absl7debian318container_internal15CompressedTupleIJmNS1_20HashtablezInfoHandleENS1_10StringHashENS1_8StringEqESaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !48, i64 0}
!50 = !{!"_ZTSN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EEE", !16, i64 0, !47, i64 8, !29, i64 16, !29, i64 24, !49, i64 32}
!51 = !{!50, !16, i64 0}
!52 = !{!"p1 _ZTSN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_18container_internal10StringHashENS8_8StringEqESaIS7_EEE", !16, i64 0}
!53 = !{!"_ZTSN5boost10scoped_ptrIN4absl7debian313flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_18container_internal10StringHashENSA_8StringEqESaIS9_EEEEE", !52, i64 0}
!54 = !{!53, !52, i64 0}
!55 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !16, i64 0}
!56 = !{!50, !47, i64 8}
!57 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !16, i64 0}
!58 = !{!57, !16, i64 0}
!59 = !{!42, !38, i64 8}
!60 = !{!50, !29, i64 24}
!61 = !{!"_ZTSN4absl7debian318container_internal6ctrl_tE", !12, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!42, !29, i64 24}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2146410443, i32 1073205}
!68 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!69 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !16, i64 0}
!70 = !{!"_ZTSNSt8__detail15_List_node_baseE", !69, i64 0, !69, i64 8}
!71 = !{!70, !69, i64 8}
!72 = !{!70, !69, i64 0}
!73 = !{!"_ZTSNSt8__detail17_List_node_headerE", !70, i64 0, !29, i64 16}
!74 = !{!73, !29, i64 16}
!75 = !{!"_ZTSN4i18n12phonenumbers15ShortNumberInfoE", !34, i64 0, !36, i64 8, !45, i64 16, !53, i64 24}
!76 = !{!75, !34, i64 0}
!77 = !{}
!78 = !{i64 8}
!79 = !{!"_ZTSN6google8protobuf13RepeatedFieldIiEE", !13, i64 0, !13, i64 4, !16, i64 8}
!80 = !{!79, !16, i64 8}
!81 = !{!79, !13, i64 0}
!82 = !{!13, !13, i64 0}
!83 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !73, i64 0}
!84 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !83, i64 0}
!85 = !{!84, !29, i64 16}
!86 = !{!42, !29, i64 16}
!87 = !{!50, !29, i64 16}
!88 = distinct !{!88, !"_ZN4i18n12phonenumbers3LOGEi"}
!89 = distinct !{!89, !88, !"_ZN4i18n12phonenumbers3LOGEi: argument 0"}
!90 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !17, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJPhSt14default_deleteIA_hEEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJPhSt14default_deleteIA_hEEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implIhSt14default_deleteIA_hEE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataIhSt14default_deleteIA_hELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !94, i64 0}
!96 = !{!"_ZTSN4i18n12phonenumbers13MetadataBytesE", !16, i64 0, !13, i64 8, !95, i64 16}
!97 = !{!96, !16, i64 0}
!98 = !{!96, !13, i64 8}
!99 = !{!89}
!100 = !{!17, !17, i64 0}
!101 = distinct !{!101, !"_ZN4i18n12phonenumbers15ConvertToStringIA29_cE6DoWorkB5cxx11ERA29_Kc"}
!102 = distinct !{!102, !101, !"_ZN4i18n12phonenumbers15ConvertToStringIA29_cE6DoWorkB5cxx11ERA29_Kc: argument 0"}
!103 = !{!102}
!104 = distinct !{!104, !"_ZN4i18n12phonenumbers3LOGEi"}
!105 = distinct !{!105, !104, !"_ZN4i18n12phonenumbers3LOGEi: argument 0"}
!106 = distinct !{!106, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIA3_cTnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIT_S9_ENSE_22SameAsElementReferenceISJ_EEEE5valueEiE4typeELi0ETnNSH_IXsr14IsDecomposableIRKSJ_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbESQ_"}
!107 = distinct !{!107, !106, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIA3_cTnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIT_S9_ENSE_22SameAsElementReferenceISJ_EEEE5valueEiE4typeELi0ETnNSH_IXsr14IsDecomposableIRKSJ_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbESQ_: argument 0"}
!108 = distinct !{!108, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRA3_KcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_"}
!109 = distinct !{!109, !108, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRA3_KcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_: argument 0"}
!110 = distinct !{!110, !"_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableEJRA3_KcESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_"}
!111 = distinct !{!111, !110, !"_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableEJRA3_KcESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_: argument 0"}
!112 = distinct !{!112, !"_ZN4absl7debian318container_internal17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5applyINS1_12raw_hash_setIS9_NS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableEJRA3_KcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSK_DpOSL_"}
!113 = distinct !{!113, !112, !"_ZN4absl7debian318container_internal17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5applyINS1_12raw_hash_setIS9_NS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableEJRA3_KcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSK_DpOSL_: argument 0"}
!114 = distinct !{!114, !"_ZN4absl7debian318container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaISA_EE19EmplaceDecomposableERA3_KcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISL_EEEEOSK_OSL_"}
!115 = distinct !{!115, !114, !"_ZN4absl7debian318container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaISA_EE19EmplaceDecomposableERA3_KcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISL_EEEEOSK_OSL_: argument 0"}
!116 = distinct !{!116, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableclIA3_cJRA3_KcEEESt4pairINSE_8iteratorEbERKT_DpOT0_"}
!117 = distinct !{!117, !116, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableclIA3_cJRA3_KcEEESt4pairINSE_8iteratorEbERKT_DpOT0_: argument 0"}
!118 = distinct !{!118, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE7emplaceIJRSH_SC_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESG_INSK_8iteratorEbEDpOSO_"}
!119 = distinct !{!119, !118, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE7emplaceIJRSH_SC_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESG_INSK_8iteratorEbEDpOSO_: argument 0"}
!120 = distinct !{!120, !"_ZN4absl7debian318container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SE_EEE19EmplaceDecomposableERSJ_St5tupleIJOSE_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISP_IJST_EEEEclsr3stdE7declvalIT1_EEEEOSS_SI_ISW_SX_E"}
!121 = distinct !{!121, !120, !"_ZN4absl7debian318container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKSB_SE_EEE19EmplaceDecomposableERSJ_St5tupleIJOSE_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISP_IJST_EEEEclsr3stdE7declvalIT1_EEEEOSS_SI_ISW_SX_E: argument 0"}
!122 = distinct !{!122, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSH_EESQ_IJOSC_EEEEESG_INSK_8iteratorEbERKT_DpOT0_"}
!123 = distinct !{!123, !122, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSH_EESQ_IJOSC_EEEEESG_INSK_8iteratorEbERKT_DpOT0_: argument 0"}
!124 = distinct !{!124, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIA3_cTnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIT_S9_ENSE_22SameAsElementReferenceISJ_EEEE5valueEiE4typeELi0ETnNSH_IXsr14IsDecomposableIRKSJ_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbESQ_"}
!125 = distinct !{!125, !124, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIA3_cTnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIT_S9_ENSE_22SameAsElementReferenceISJ_EEEE5valueEiE4typeELi0ETnNSH_IXsr14IsDecomposableIRKSJ_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbESQ_: argument 0"}
!126 = distinct !{!126, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRA3_KcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_"}
!127 = distinct !{!127, !126, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRA3_KcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_: argument 0"}
!128 = distinct !{!128, !"_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableEJRA3_KcESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_"}
!129 = distinct !{!129, !128, !"_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableEJRA3_KcESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_: argument 0"}
!130 = distinct !{!130, !"_ZN4absl7debian318container_internal17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5applyINS1_12raw_hash_setIS9_NS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableEJRA3_KcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSK_DpOSL_"}
!131 = distinct !{!131, !130, !"_ZN4absl7debian318container_internal17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5applyINS1_12raw_hash_setIS9_NS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableEJRA3_KcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSK_DpOSL_: argument 0"}
!132 = distinct !{!132, !"_ZN4absl7debian318container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaISA_EE19EmplaceDecomposableERA3_KcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISL_EEEEOSK_OSL_"}
!133 = distinct !{!133, !132, !"_ZN4absl7debian318container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaISA_EE19EmplaceDecomposableERA3_KcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISL_EEEEOSK_OSL_: argument 0"}
!134 = distinct !{!134, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableclIA3_cJRA3_KcEEESt4pairINSE_8iteratorEbERKT_DpOT0_"}
!135 = distinct !{!135, !134, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableclIA3_cJRA3_KcEEESt4pairINSE_8iteratorEbERKT_DpOT0_: argument 0"}
!136 = distinct !{!136, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIA3_cTnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIT_S9_ENSE_22SameAsElementReferenceISJ_EEEE5valueEiE4typeELi0ETnNSH_IXsr14IsDecomposableIRKSJ_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbESQ_"}
!137 = distinct !{!137, !136, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIA3_cTnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIT_S9_ENSE_22SameAsElementReferenceISJ_EEEE5valueEiE4typeELi0ETnNSH_IXsr14IsDecomposableIRKSJ_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbESQ_: argument 0"}
!138 = distinct !{!138, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRA3_KcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_"}
!139 = distinct !{!139, !138, !"_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE7emplaceIJRA3_KcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSE_8iteratorEbEDpOSK_: argument 0"}
!140 = distinct !{!140, !"_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableEJRA3_KcESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_"}
!141 = distinct !{!141, !140, !"_ZN4absl7debian318container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableEJRA3_KcESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_: argument 0"}
!142 = distinct !{!142, !"_ZN4absl7debian318container_internal17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5applyINS1_12raw_hash_setIS9_NS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableEJRA3_KcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSK_DpOSL_"}
!143 = distinct !{!143, !142, !"_ZN4absl7debian318container_internal17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5applyINS1_12raw_hash_setIS9_NS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableEJRA3_KcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSK_DpOSL_: argument 0"}
!144 = distinct !{!144, !"_ZN4absl7debian318container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaISA_EE19EmplaceDecomposableERA3_KcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISL_EEEEOSK_OSL_"}
!145 = distinct !{!145, !144, !"_ZN4absl7debian318container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaISA_EE19EmplaceDecomposableERA3_KcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISL_EEEEOSK_OSL_: argument 0"}
!146 = distinct !{!146, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableclIA3_cJRA3_KcEEESt4pairINSE_8iteratorEbERKT_DpOT0_"}
!147 = distinct !{!147, !146, !"_ZNK4absl7debian318container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE19EmplaceDecomposableclIA3_cJRA3_KcEEESt4pairINSE_8iteratorEbERKT_DpOT0_: argument 0"}
!148 = !{!34, !34, i64 0}
!149 = !{!105}
!150 = !{!"p1 _ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !16, i64 0}
!151 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !55, i64 0, !13, i64 8, !13, i64 12, !150, i64 16}
!152 = !{!151, !150, i64 16}
!153 = !{!151, !13, i64 8}
!154 = !{!117, !115, !113, !111, !109, !107}
!155 = !{!16, !16, i64 0}
!156 = !{!123, !121, !119}
!157 = !{!135, !133, !131, !129, !127, !125}
!158 = !{!147, !145, !143, !141, !139, !137}
!159 = distinct !{!159, !"_ZN4i18n12phonenumbers15ConvertToStringIA38_cE6DoWorkB5cxx11ERA38_Kc"}
!160 = distinct !{!160, !159, !"_ZN4i18n12phonenumbers15ConvertToStringIA38_cE6DoWorkB5cxx11ERA38_Kc: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, !63}
!163 = distinct !{!163, !63}
!164 = distinct !{!164, !63}
!165 = distinct !{!165, !63}
!166 = distinct !{!166, !63}
!167 = distinct !{!167, !63}
!168 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !29, i64 0}
!169 = !{!168, !29, i64 0}
!170 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !55, i64 0}
!171 = !{!170, !55, i64 0}
!172 = distinct !{!172, !63}
!173 = distinct !{!173, !63}
end_hunk_3
