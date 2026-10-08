Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/shortnumberinfo?download=true
inline.NumInlined: 987
inline.NumDeleted: 450
begin_hunk_0_@_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE22find_or_prepare_insertIS9_EESG_ImbERKT_:bb.a
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
  %3 = add nsw i64 %2, -1                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = zext i8 %i.z to i32
  %i.ag = zext i8 %i.ac to i32
  %i.ah = shl nuw nsw i64 %i.aa, 3
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ag, %i.ai
  %i.ak = or i32 %i.aj, %i.af
  %i.al = zext i8 %i.ae to i32
  %.tr.i.i = trunc nuw nsw i64 %3 to i32
  %i.am = shl nuw nsw i32 %.tr.i.i, 3
  %i.an = shl nuw nsw i32 %i.al, %i.am
  %i.ao = or i32 %i.ak, %i.an
  %i.ap = zext nneg i32 %i.ao to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.021.i = phi i64 [ %i.d, %bb.d ], [ %i.j, %bb.f ], [ %i.y, %bb.h ], [ %i.ap, %bb.j ]
  %.020.i = phi i64 [ %0, %bb.d ], [ %i.p, %bb.f ], [ %0, %bb.h ], [ %0, %bb.j ]
  %i.aq = add i64 %.020.i, %.021.i
  %i.ar = zext i64 %i.aq to i128
  %i.as = mul nuw i128 %i.ar, 11376068507788127593 ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = xor i128 %i.at, %i.as
  %i.av = trunc i128 %i.au to i64
  br label %_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl7debian313hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.c, %bb.i, %bb.k
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.av, %bb.k ], [ %0, %bb.i ]
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
  br i1 %i.i, label %.noexc.i.i, label %_ZN4absl7debian318container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4i18n12phonenumbers13PhoneMetadataEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SC_EEE16initialize_slotsEv.exit, !prof !67

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
end_hunk_0
