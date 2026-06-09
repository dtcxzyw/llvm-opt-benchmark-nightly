inline.NumInlined: 683
inline.NumDeleted: 314
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSI_PFvSI_hmmE:bb.a

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.de, %bb.s ], [ %i.cv, %bb.p ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.cp, ptr %i.df, align 1, !tbaa !100
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.t
  %i.dh = add i16 %.sroa.055.062, -1
  %i.di = and i16 %i.dh, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE26find_or_prepare_insert_sooIPKcEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.24") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98
  %.not.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 131072, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !20 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !93 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i, ptr nonnull %i.e, i64 %.sroa.0.0.copyload.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.j = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i)
  %i.k = add i64 %.sroa.0.0.copyload.i.i.i.i, 87
  %i.l = add i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #25 ; 2 uses
  %i.q = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull %i.o, i64 noundef %i.p)
  %i.r = add i64 %i.p, 87
  %i.s = add i64 %i.r, %i.q
  %i.t = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i8 noundef signext %i.n) ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !14, !nonnull !39, !noundef !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %.sroa.0.0.copyload.i.i.i.i5 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i5, i64 %i.t
  br label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementIPKcEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.e, %bb.b
  %.sink17 = phi ptr [ %i.v, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.b ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ]
  %.sink16 = phi ptr [ %i.w, %bb.e ], [ %i.c, %bb.b ], [ %i.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.d, %bb.d ]
  %.sink = phi i8 [ 1, %bb.e ], [ 1, %bb.b ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ 0, %bb.d ]
  store ptr %.sink17, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink16, ptr %.sroa.4.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.x, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE30find_or_prepare_insert_non_sooIPKcEESt4pairINSC_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.24") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 2 uses
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull %i.c, i64 noundef %i.d)
  %i.f = add i64 %i.d, 87
  %i.g = add i64 %i.f, %i.e                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98, !noalias !102
  %i.j = and i64 %i.i, 65535
  %i.k = load i64, ptr %1, align 8, !tbaa !82, !noalias !102 ; 3 uses
  %i.l = lshr i64 %i.g, 7
  %i.m = xor i64 %i.j, %i.l
  %i.n = trunc i64 %i.g to i8
  %i.o = and i8 %i.n, 127
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.m, %bb.a ], [ %i.av, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.au, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.k                 ; 5 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.u, i32 0, i32 3, i32 1)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.7.0
  %i.w = load <16 x i8>, ptr %i.v, align 1, !tbaa !14 ; 2 uses
  %i.x = icmp eq <16 x i8> %i.s, %i.w
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.y, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.z = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #25 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.034.060 = phi i16 [ %i.y, %.lr.ph ], [ %i.aj, %.critedge ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.7.0, %i.ac
  %i.ae = and i64 %i.ad, %i.k                     ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ae ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !20
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !93
  %i.ag = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, %i.z
  br i1 %i.ag, label %bb.d, label %.critedge, !prof !105

bb.d:                                             ; preds = %bb.c
  br i1 %i.aa, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i, ptr nonnull %i.t, i64 %i.z)
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ah, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ai = add i16 %.sroa.034.060, -1
  %i.aj = and i16 %i.ai, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.aj, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ak = icmp eq <16 x i8> %i.w, splat (i8 -128)
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.al, 0
  br i1 %.not52, label %bb.e, label %.thread, !prof !22

.thread:                                          ; preds = %.critedge18
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.sroa.7.0, %i.an
  %i.ap = and i64 %i.ao, %i.k
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.g, i64 %i.ap, i64 %.sroa.15.0) ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !14, !nonnull !39, !noundef !39
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.aq
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.au = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.av = add i64 %i.au, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ae
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink79 = phi ptr [ %i.as, %.thread ], [ %i.aw, %.critedge20 ]
  %.sink77 = phi ptr [ %i.at, %.thread ], [ %i.af, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink79, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink77, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ax, align 8, !tbaa !88
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #22

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE4findINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !82     ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !20 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !93
  %i.g = load ptr, ptr %1, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %i.i
  br i1 %i.j, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.g, i64 %.sroa.01.0.copyload.i.i.i.i.i)
  %i.l = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  tail call void @llvm.prefetch.p0(ptr %i.n, i32 0, i32 1, i32 1)
  %i.o = load ptr, ptr %1, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.o, i64 noundef %i.q)
  %i.s = add i64 %i.q, 87
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !98, !noalias !106
  %i.w = and i64 %i.v, 65535
  %i.x = load i64, ptr %0, align 8, !tbaa !82, !noalias !106 ; 4 uses
  %i.y = lshr i64 %i.t, 7
  %i.z = xor i64 %i.w, %i.y                       ; 2 uses
  %i.aa = trunc i64 %i.t to i8
  %i.ab = and i8 %i.aa, 127
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !14  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 4 uses
  %i.ae = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ag = load ptr, ptr %1, align 8
  %i.ah = load i64, ptr %i.p, align 8
  %.fr24 = freeze i64 %i.ah                       ; 3 uses
  %i.ai = icmp eq i64 %.fr24, 0
  br i1 %i.ai, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i6.us = phi i64 [ %i.ar, %bb.f ], [ %i.z, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aq, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i6.us, %i.x      ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.6.0.i.us
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !14 ; 2 uses
  %i.am = icmp eq <16 x i8> %i.af, %i.al
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.an, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ao = icmp eq <16 x i8> %i.al, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not43.i.us = icmp eq i16 %i.ap, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit, !prof !22

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aq = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !109

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.az, %bb.g ], [ %i.an, %.split.us ] ; 3 uses
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.6.0.i.us, %i.at
  %i.av = and i64 %i.au, %i.x                     ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.av ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i7.us.us = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.ax = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i7.us.us, 0
  br i1 %i.ax, label %.thread32.i, label %bb.g, !prof !105

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ay = add i16 %.sroa.017.046.i.us.us, -1
  %i.az = and i16 %i.ay, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.az, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i6 = phi i64 [ %i.bs, %bb.i ], [ %i.z, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.br, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i6, %i.x            ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ba, i32 0, i32 3, i32 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.6.0.i
  %i.bc = load <16 x i8>, ptr %i.bb, align 1, !tbaa !14 ; 2 uses
  %i.bd = icmp eq <16 x i8> %i.af, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.be, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bo, %bb.h ], [ %i.be, %.split ] ; 3 uses
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = add i64 %.sroa.6.0.i, %i.bg
  %i.bi = and i64 %i.bh, %i.x                     ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bi ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i7 = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.bk = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i7, %.fr24
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, label %bb.h, !prof !105

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i9 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !93
  %bcmp.i.i.i.i.i.i.i11 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i9, ptr %i.ag, i64 %.fr24)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i.i.i.i11, 0
  br i1 %i.bl, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.av, %.lr.ph.i.us.us ], [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.aw, %.lr.ph.i.us.us ], [ %i.bj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i10, %.lr.ph.i
  %i.bn = add i16 %.sroa.017.046.i, -1
  %i.bo = and i16 %i.bn, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bp = icmp eq <16 x i8> %i.bc, splat (i8 -128)
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %.not43.i = icmp eq i16 %i.bq, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit, !prof !22

bb.i:                                             ; preds = %._crit_edge.i
  %i.br = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bs = add i64 %i.br, %.sroa.6.0.i
  br label %.split, !llvm.loop !109

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bm, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENSC_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSO_DpOSP_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = !{!13, !13, i64 0}
!21 = distinct !{!21, !17}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!24, !28, i64 16}
!24 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !25, i64 0, !26, i64 1, !26, i64 1, !26, i64 1, !26, i64 1, !26, i64 1, !26, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !26, i64 3, !26, i64 3, !5, i64 3, !4, i64 4, !27, i64 8, !28, i64 16, !29, i64 24, !30, i64 32, !5, i64 40, !5, i64 48, !31, i64 56, !32, i64 64, !32, i64 72, !5, i64 80}
!25 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!26 = !{!"bool", !5, i64 0}
!27 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !9, i64 0}
!28 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !10, i64 0}
!29 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !10, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !10, i64 0}
!31 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !10, i64 0}
!32 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !10, i64 0}
!33 = !{!"branch_weights", i32 1, i32 1048575}
!34 = !{i64 0, i64 88, !14}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSN4absl12lts_2025051213flat_hash_setISt17basic_string_viewIcSt11char_traitsIcEENS0_18container_internal10StringHashENS6_8StringEqESaIS5_EEE", !10, i64 0}
!37 = !{!24, !30, i64 32}
!38 = !{!27, !9, i64 0}
!39 = !{}
!40 = !{i64 8}
!41 = distinct !{!41, !17}
!42 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!43 = !{!24, !5, i64 2}
!44 = !{!45, !28, i64 24}
!45 = !{!"_ZTSN6google8protobuf10DescriptorE", !25, i64 0, !26, i64 1, !26, i64 1, !5, i64 1, !5, i64 2, !46, i64 4, !4, i64 8, !27, i64 16, !28, i64 24, !30, i64 32, !47, i64 40, !32, i64 48, !32, i64 56, !48, i64 64, !49, i64 72, !30, i64 80, !50, i64 88, !51, i64 96, !48, i64 104, !52, i64 112, !53, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!46 = !{!"short", !5, i64 0}
!47 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !10, i64 0}
!48 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !10, i64 0}
!49 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !10, i64 0}
!50 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !10, i64 0}
!51 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !10, i64 0}
!52 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !10, i64 0}
!53 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !54, i64 0}
!54 = !{!"any p2 pointer", !10, i64 0}
!55 = !{!56, !57, i64 8}
!56 = !{!"_ZTSN6google8protobuf14FileDescriptorE", !25, i64 0, !26, i64 1, !26, i64 2, !4, i64 4, !57, i64 8, !57, i64 16, !58, i64 24, !59, i64 32, !29, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !60, i64 80, !61, i64 88, !61, i64 96, !62, i64 104, !30, i64 112, !50, i64 120, !63, i64 128, !48, i64 136, !64, i64 144, !32, i64 152, !32, i64 160, !65, i64 168, !66, i64 176}
!57 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!58 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!59 = !{!"_ZTSN6google8protobuf7EditionE", !5, i64 0}
!60 = !{!"p2 _ZTSN6google8protobuf14FileDescriptorE", !54, i64 0}
!61 = !{!"p1 int", !10, i64 0}
!62 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf17ServiceDescriptorE", !10, i64 0}
!64 = !{!"p1 _ZTSN6google8protobuf11FileOptionsE", !10, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf20FileDescriptorTablesE", !10, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf14SourceCodeInfoE", !10, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_: argument 0"}
!69 = distinct !{!69, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE7emplaceIJRKPKcETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSJ_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE19EmplaceDecomposableEJRKPKcES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_: argument 0"}
!72 = distinct !{!72, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaIS7_EE19EmplaceDecomposableEJRKPKcES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEE5applyINS1_12raw_hash_setIS7_NS1_10StringHashENS1_8StringEqESaIS6_EE19EmplaceDecomposableEJRKPKcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSJ_DpOSK_: argument 0"}
!75 = distinct !{!75, !"_ZN4absl12lts_2025051218container_internal17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEE5applyINS1_12raw_hash_setIS7_NS1_10StringHashENS1_8StringEqESaIS6_EE19EmplaceDecomposableEJRKPKcEEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSJ_DpOSK_"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableERKPKcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISK_EEEEOSJ_OSK_: argument 0"}
!78 = distinct !{!78, !"_ZN4absl12lts_2025051218container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS8_EE19EmplaceDecomposableERKPKcEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISK_EEEEOSJ_OSK_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE19EmplaceDecomposableclIPKcJRKSG_EEESt4pairINSC_8iteratorEbERKT_DpOT0_: argument 0"}
!81 = distinct !{!81, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE19EmplaceDecomposableclIPKcJRKSG_EEESt4pairINSC_8iteratorEbERKT_DpOT0_"}
!82 = !{!83, !13, i64 0}
!83 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !13, i64 0, !84, i64 8, !5, i64 16}
!84 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !13, i64 0}
!85 = !{!86, !80, !77, !74, !71, !68}
!86 = distinct !{!86, !87, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_: argument 0"}
!87 = distinct !{!87, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE22find_or_prepare_insertIPKcEESt4pairINSC_8iteratorEbERKT_"}
!88 = !{!89, !26, i64 16}
!89 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS2_10StringHashENS2_8StringEqESaIS8_EE8iteratorEbE", !90, i64 0, !26, i64 16}
!90 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEENS1_10StringHashENS1_8StringEqESaIS7_EE8iteratorE", !10, i64 0, !5, i64 8}
!91 = !{i8 0, i8 2}
!92 = !{!80, !77, !74, !71, !68}
!93 = !{!9, !9, i64 0}
!94 = !{!95, !13, i64 0}
!95 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !13, i64 0, !9, i64 8}
!96 = !{!95, !9, i64 8}
!97 = distinct !{!97, !17}
!98 = !{!84, !13, i64 0}
!99 = distinct !{!99, !17}
!100 = !{!101, !101, i64 0}
!101 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !5, i64 0}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!104 = distinct !{!104, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!105 = !{!"branch_weights", i32 2146410443, i32 1073205}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!108 = distinct !{!108, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!109 = distinct !{!109, !17}
end_hunk_0
