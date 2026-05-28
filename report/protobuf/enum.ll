inline.NumInlined: 1628
inline.NumDeleted: 793
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findIS9_EENSE_8iteratorERKT_:bb.a
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_smallIS9_EENSE_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !31 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_smallIS9_EENSE_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.i, i64 %i.h)
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_smallIS9_EENSE_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31, !nonnull !91, !noundef !91
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.p, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_smallIS9_EENSE_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  tail call void @llvm.prefetch.p0(ptr %i.r, i32 0, i32 1, i32 1)
  %i.s = load ptr, ptr %1, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %i.v = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.s, i64 noundef %i.u)
  %i.w = add i64 %i.u, 87
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27, !noalias !235
  %i.aa = and i64 %i.z, 65535
  %i.ab = load i64, ptr %0, align 8, !tbaa !17, !noalias !235 ; 4 uses
  %i.ac = lshr i64 %i.x, 7
  %i.ad = xor i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = trunc i64 %i.x to i8
  %i.af = and i8 %i.ae, 127
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !31  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 4 uses
  %i.ai = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ak = load ptr, ptr %1, align 8
  %i.al = load i64, ptr %i.t, align 8
  %.fr21 = freeze i64 %i.al                       ; 3 uses
  %i.am = icmp eq i64 %.fr21, 0
  br i1 %i.am, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i6.us = phi i64 [ %i.av, %bb.f ], [ %i.ad, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.au, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i6.us, %i.ab     ; 4 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.an, i32 0, i32 3, i32 1)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.6.0.i.us
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !31 ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.aj, %i.ap
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ar, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.as = icmp eq <16 x i8> %i.ap, splat (i8 -128)
  %i.at = bitcast <16 x i1> %i.as to i16
  %.not43.i.us = icmp eq i16 %i.at, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit, !prof !7

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.au = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.av = add i64 %i.au, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !238

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.bf, %bb.g ], [ %i.ar, %.split.us ] ; 3 uses
  %i.aw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = add i64 %.sroa.6.0.i.us, %i.ax
  %i.az = and i64 %i.ay, %i.ab                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !47
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.thread32.i, label %bb.g, !prof !239

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.be = add i16 %.sroa.017.046.i.us.us, -1
  %i.bf = and i16 %i.be, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.bf, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i6 = phi i64 [ %i.cb, %bb.i ], [ %i.ad, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.ca, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i6, %i.ab           ; 4 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.bg, i32 0, i32 3, i32 1)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.6.0.i
  %i.bi = load <16 x i8>, ptr %i.bh, align 1, !tbaa !31 ; 2 uses
  %i.bj = icmp eq <16 x i8> %i.aj, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.bk, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bx, %bb.h ], [ %i.bk, %.split ] ; 3 uses
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = add i64 %.sroa.6.0.i, %i.bm
  %i.bo = and i64 %i.bn, %i.ab                    ; 2 uses
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !47
  %i.bs = icmp eq i64 %i.br, %.fr21
  br i1 %i.bs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, label %bb.h, !prof !239

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7: ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !45
  %bcmp.i.i.i.i.i.i.i8 = tail call i32 @bcmp(ptr %i.bt, ptr %i.ak, i64 %.fr21)
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i.i8, 0
  br i1 %i.bu, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.az, %.lr.ph.i.us.us ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7 ]
  %.us-phi12 = phi ptr [ %i.ba, %.lr.ph.i.us.us ], [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i7, %.lr.ph.i
  %i.bw = add i16 %.sroa.017.046.i, -1
  %i.bx = and i16 %i.bw, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.by = icmp eq <16 x i8> %i.bi, splat (i8 -128)
  %i.bz = bitcast <16 x i1> %i.by to i16
  %.not43.i = icmp eq i16 %i.bz, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit, !prof !7

bb.i:                                             ; preds = %._crit_edge.i
  %i.ca = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.6.0.i
  br label %.split, !llvm.loop !238

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bv, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi12, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_smallIS9_EENSE_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_smallIS9_EENSE_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE10find_largeIS9_EENSE_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvE5applyINS1_12raw_hash_setISA_NS1_10StringHashENS1_8StringEqESaIS9_EE12EqualElementIS9_EEJRS9_ESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #20

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !95     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNKSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i.a = icmp eq i64 %i.l, 0
  br i1 %.not.i.a, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_M_allocateEm.exit, label %3

3:                                                ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE12_M_check_lenEmPKc.exit
  %4 = shl nuw nsw i64 %i.l, 6
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #27
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE12_M_check_lenEmPKc.exit, %3
  %6 = phi ptr [ %5, %3 ], [ null, %_ZNKSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.n ; 7 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %2, align 8, !tbaa !45       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %i.r, i1 false)
  br label %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_M_allocateEm.exit
  store ptr %9, ptr %7, align 8, !tbaa !45
  %i.s = load i64, ptr %10, align 8, !tbaa !31
  store i64 %i.s, ptr %8, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit

_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !47
  store ptr %10, ptr %2, align 8, !tbaa !45
  store i64 0, ptr %i.u, align 8, !tbaa !47
  store i8 0, ptr %10, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !48
  store i32 %i.y, ptr %i.w, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !58
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %6, %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !240, !noalias !243
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !243, !noalias !240 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47, !alias.scope !243, !noalias !240 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !245
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !240, !noalias !243
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !31, !alias.scope !243, !noalias !240
  store i64 %i.an, ptr %i.af, align 8, !tbaa !31, !alias.scope !240, !noalias !243
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !47, !alias.scope !243, !noalias !240
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !47, !alias.scope !240, !noalias !243
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !243, !noalias !240
  store i64 0, ptr %i.ap, align 8, !tbaa !47, !alias.scope !243, !noalias !240
  store i8 0, ptr %i.ah, align 8, !tbaa !31, !alias.scope !243, !noalias !240
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48, !alias.scope !243, !noalias !240
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !48, !alias.scope !240, !noalias !243
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !58, !alias.scope !243, !noalias !240
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !58, !alias.scope !240, !noalias !243
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59, !alias.scope !243, !noalias !240
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !59, !alias.scope !240, !noalias !243
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !243, !noalias !240
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !102

_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %6, %_ZN6google8protobuf8compiler4rust13RustEnumValueC2EOS3_.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.bc, %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !43, !alias.scope !246, !noalias !249
  %i.be = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !45, !alias.scope !249, !noalias !246 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !47, !alias.scope !249, !noalias !246 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = add nuw nsw i64 %i.bi, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bk, i1 false), !alias.scope !251
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.be, ptr %.012.i.i.i18, align 8, !tbaa !45, !alias.scope !246, !noalias !249
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !31, !alias.scope !249, !noalias !246
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !31, !alias.scope !246, !noalias !249
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !47, !alias.scope !249, !noalias !246
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bm = phi i64 [ %i.bi, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !47, !alias.scope !246, !noalias !249
  store ptr %i.bf, ptr %.0911.i.i.i19, align 8, !tbaa !45, !alias.scope !249, !noalias !246
  store i64 0, ptr %i.bn, align 8, !tbaa !47, !alias.scope !249, !noalias !246
  store i8 0, ptr %i.bf, align 8, !tbaa !31, !alias.scope !249, !noalias !246
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !48, !alias.scope !249, !noalias !246
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !48, !alias.scope !246, !noalias !249
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !58, !alias.scope !249, !noalias !246
  store <2 x ptr> %i.bu, ptr %i.bs, align 8, !tbaa !58, !alias.scope !246, !noalias !249
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !59, !alias.scope !249, !noalias !246
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !59, !alias.scope !246, !noalias !249
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false), !alias.scope !249, !noalias !246
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.by, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !102

_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.bc, %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bz, %_ZSt19__relocate_object_aIN6google8protobuf8compiler4rust13RustEnumValueES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cd) #24
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler4rust13RustEnumValueESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit26, %bb.f
  store ptr %6, ptr %0, align 8, !tbaa !95
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %6, i64 %i.l
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 4 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !43
  %i.k = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.m, ptr %i.a, align 8, !tbaa !15
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !45
  %i.p = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.p, ptr %i.j, align 8, !tbaa !31
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !31
  store i8 %i.r, ptr %i.q, align 1, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !47
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !43, !alias.scope !252, !noalias !255
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !255, !noalias !252 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !47, !alias.scope !255, !noalias !252 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !257
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !252, !noalias !255
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !31, !alias.scope !255, !noalias !252
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !31, !alias.scope !252, !noalias !255
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !47, !alias.scope !255, !noalias !252
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !47, !alias.scope !252, !noalias !255
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !255, !noalias !252
  store i64 0, ptr %i.ag, align 8, !tbaa !47, !alias.scope !255, !noalias !252
  store i8 0, ptr %i.y, align 8, !tbaa !31, !alias.scope !255, !noalias !252
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !258

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !43, !alias.scope !259, !noalias !262
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !45, !alias.scope !262, !noalias !259 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !47, !alias.scope !262, !noalias !259 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !264
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !45, !alias.scope !259, !noalias !262
  %i.at = load i64, ptr %i.an, align 8, !tbaa !31, !alias.scope !262, !noalias !259
  store i64 %i.at, ptr %i.al, align 8, !tbaa !31, !alias.scope !259, !noalias !262
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !47, !alias.scope !262, !noalias !259
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !47, !alias.scope !259, !noalias !262
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !45, !alias.scope !262, !noalias !259
  store i64 0, ptr %i.av, align 8, !tbaa !47, !alias.scope !262, !noalias !259
  store i8 0, ptr %i.an, align 8, !tbaa !31, !alias.scope !262, !noalias !259
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !258

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !59
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %13, ptr %0, align 8, !tbaa !60
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !61
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !59
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #23 ; 0 uses
  %14 = shl nuw nsw i64 %7, 5
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %14) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE30find_or_prepare_insert_non_sooIS9_EESt4pairINSE_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = load ptr, ptr %2, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.c, i64 noundef %i.e)
  %i.g = add i64 %i.e, 87
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27, !noalias !265
  %i.k = and i64 %i.j, 65535
  %i.l = load i64, ptr %1, align 8, !tbaa !17, !noalias !265 ; 3 uses
  %i.m = lshr i64 %i.h, 7
  %i.n = xor i64 %i.k, %i.m
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 127
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !31 ; 2 uses
  %i.s = insertelement <16 x i8> poison, i8 %i.p, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = load ptr, ptr %2, align 8
  %i.v = load i64, ptr %i.d, align 8              ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.n, %bb.a ], [ %i.az, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.l                 ; 5 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.7.0
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !31 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.t, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ab, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.an, %.critedge ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = add i64 %.sroa.7.0, %i.ad
  %i.af = and i64 %i.ae, %i.l                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47
  %i.ak = icmp eq i64 %i.aj, %i.v
  br i1 %i.ak, label %bb.c, label %.critedge, !prof !239

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.w, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ah, ptr %i.u, i64 %i.v)
  %i.al = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.al, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.am = add i16 %.sroa.033.059, -1
  %i.an = and i16 %i.am, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.an, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ao = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ap, 0
  br i1 %.not51, label %bb.d, label %.thread, !prof !7

.thread:                                          ; preds = %.critedge18
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.ay = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.az = add i64 %i.ay, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bb, align 8, !tbaa !85
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS2_8compiler4rust22GenerateEnumDefinitionERNS9_7ContextERKNS2_14EnumDescriptorEN3upb10EnumDefPtrEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIS0_EEEOT_NS6_5Rank2EEUlvE_E9_M_invokeERKSt9_Any_data"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca [2 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 43 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca [2 x %"class.google::protobuf::io::Printer::Sub"], align 8 ; 43 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !268   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !269, !range !89, !noundef !91
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %i.h, label %"_ZSt10__invoke_rIbRZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackIZNS1_8compiler4rust22GenerateEnumDefinitionERNS8_7ContextERKNS1_14EnumDescriptorEN3upb10EnumDefPtrEE3$_0vEESt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEOT_NS5_5Rank2EEUlvE_JEENSt9enable_ifIX16is_invocable_r_vISS_T0_DpT1_EESS_E4typeEOSY_DpOSZ_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.i = load ptr, ptr %.val, align 8, !tbaa !274, !nonnull !91, !align !275 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %.not302.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not302.i.i.i.i, label %"_ZZN6google8protobuf8compiler4rust22GenerateEnumDefinitionERNS2_7ContextERKNS0_14EnumDescriptorEN3upb10EnumDefPtrEENK3$_0clEv.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 216 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
end_hunk_0
