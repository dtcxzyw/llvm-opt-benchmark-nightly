inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSK_PFvSK_hmmE:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !382
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !377 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.do = load i64, ptr %i.z, align 8, !tbaa !374 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 16
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !377
  %i.dr = load i64, ptr %i.dm, align 8, !tbaa !106
  store i64 %i.dr, ptr %i.dk, align 8, !tbaa !106
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ds = load i64, ptr %i.z, align 8, !tbaa !374
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !374
  store ptr %i.dm, ptr %i.x, align 8, !tbaa !377
  store i64 0, ptr %i.z, align 8, !tbaa !374
  store i8 0, ptr %i.dm, align 8, !tbaa !106
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8transferEPS9_SF_.exit, %bb.t
  %i.du = add i16 %.sroa.055.062, -1
  %i.dv = and i16 %i.du, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.dv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 comdat align 2 {
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
  %i.i = load i8, ptr %1, align 1, !tbaa !106
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !106
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !106
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
  br i1 %.not, label %bb.m, label %bb.l, !prof !96

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

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph30

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEET_SH_SH_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph30, !llvm.loop !884

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %3, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i ], [ %storemerge19.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99   ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !99
  store ptr %i.k, ptr %i.i, align 8, !tbaa !99
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %5 = sdiv i64 %i.o, 2
  %i.p = icmp sgt i64 %i.n, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.x = call noundef zeroext i1 %3(ptr noundef %i.v, ptr noundef %i.w), !inline_history !885
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.t, i64 %i.r ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !99
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %5
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !886

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.m, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.n, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !99
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i78.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i78.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i78.i.i.i ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = call noundef zeroext i1 %3(ptr noundef %i.an, ptr noundef %i.j), !inline_history !887
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !99
  %.not9.i.i.i = icmp eq i64 %.0920.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !888

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.j, ptr %i.ar, align 8, !tbaa !99
  %i.as = icmp sgt i64 %i.m, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_T0_.exit, !llvm.loop !889

.lr.ph30:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1929 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02028 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.ci, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.02028, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 7 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1929, i64 -8 ; 7 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !99
  %i.ba = tail call noundef zeroext i1 %3(ptr noundef %i.ay, ptr noundef %i.az), !inline_history !890
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !99 ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph30
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !99
  %i.bd = tail call noundef zeroext i1 %3(ptr noundef %i.bc, ptr noundef %i.bb), !inline_history !890
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %0, align 8, !tbaa !99
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !99
  store ptr %i.bf, ptr %0, align 8, !tbaa !99
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !99
  %i.bi = tail call noundef zeroext i1 %3(ptr noundef %i.bg, ptr noundef %i.bh), !inline_history !890
  %i.bj = load ptr, ptr %0, align 8, !tbaa !99    ; 2 uses
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !99
  store ptr %i.bk, ptr %0, align 8, !tbaa !99
  store ptr %i.bj, ptr %i.ax, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !99
  store ptr %i.bl, ptr %0, align 8, !tbaa !99
  store ptr %i.bj, ptr %i.f, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph30
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.bn = tail call noundef zeroext i1 %3(ptr noundef %i.bm, ptr noundef %i.bb), !inline_history !890
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load <2 x ptr>, ptr %0, align 8, !tbaa !99
  %i.bp = shufflevector <2 x ptr> %i.bo, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bp, ptr %0, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.aw, align 8, !tbaa !99
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !99
  %i.bs = tail call noundef zeroext i1 %3(ptr noundef %i.bq, ptr noundef %i.br), !inline_history !890
  %i.bt = load ptr, ptr %0, align 8, !tbaa !99    ; 2 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.ax, align 8, !tbaa !99
  store ptr %i.bu, ptr %0, align 8, !tbaa !99
  store ptr %i.bt, ptr %i.ax, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.aw, align 8, !tbaa !99
  store ptr %i.bv, ptr %0, align 8, !tbaa !99
  store ptr %i.bt, ptr %i.aw, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.r
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.r ], [ %storemerge1929, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.bz, %bb.p ] ; 9 uses
  %i.bw = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !99
  %i.bx = load ptr, ptr %0, align 8, !tbaa !99
  %i.by = tail call noundef zeroext i1 %3(ptr noundef %i.bw, ptr noundef %i.bx), !inline_history !891
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.by, label %bb.p, label %.preheader.i.i, !llvm.loop !892

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.p ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !99
  %i.cb = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !99
  %i.cc = tail call noundef zeroext i1 %3(ptr noundef %i.ca, ptr noundef %i.cb), !inline_history !891
  br i1 %i.cc, label %.preheader.i.i, label %bb.q, !llvm.loop !893

bb.q:                                             ; preds = %.preheader.i.i
  %i.cd = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cd, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEET_SH_SH_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !99
  %i.cf = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !99
  store ptr %i.cf, ptr %.sroa.012.1.i.i, align 8, !tbaa !99
  store ptr %i.ce, ptr %.sroa.09.1.i.i, align 8, !tbaa !99
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !894

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEET_SH_SH_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge1929, i64 noundef %i.au, ptr %3)
  %i.cg = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ch = sub i64 %i.cg, %i.a
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 16
  br i1 %i.cj, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_T0_.exit, !llvm.loop !884

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !99   ; 2 uses
  %.sroa.0.0.copyload.us = load ptr, ptr %2, align 8, !tbaa !159 ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIPFbS6_S6_EEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.09.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !99
end_hunk_0
