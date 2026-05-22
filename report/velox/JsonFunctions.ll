inline.NumInlined: 16951
inline.NumDeleted: 7027
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_RSJ_:bb.a

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dj = load ptr, ptr %i.cm, align 8, !tbaa !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dk = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !1356, !nonnull !27, !align !592
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1357
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 216
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1299 ; 2 uses
  %i.do = sext i32 %i.cq to i64
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dn, i64 %i.cn ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.dq, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i4.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i, ptr %i.t, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ds, ptr %i.b, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.b, ptr %6, align 8, !tbaa !418
  store ptr %7, ptr %i.u, align 8, !tbaa !420
  store ptr %8, ptr %i.v, align 8, !tbaa !420
  %i.dt = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.du = load ptr, ptr %i.co, align 8, !tbaa !1359, !nonnull !27, !align !659
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = sub nsw i32 0, %i.dt
  %i.dz = select i1 %i.dx, i32 %i.dt, i32 %i.dy
  %i.ea = icmp slt i32 %i.dz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.ea, label %._crit_edge, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.cp, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.r
  %i.eb = phi i32 [ %.pre, %._crit_edge ], [ %i.cq, %bb.r ]
  %i.ec = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !3
  %i.ed = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.ed, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit, !llvm.loop !1364

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.m
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.m ], [ %.019.i.i, %bb.t ], [ %.0920.i.i, %bb.u ], [ %.019.i.i, %bb.r ]
  %i.ee = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.aa, ptr %i.ee, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.ef = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1366

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SJ_SJ_SK_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.223, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1367, !nonnull !27, !align !592
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !570  ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64                       ; 2 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !75
  %i.j = and i64 %i.f, 63
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.i, %i.k
  %.not.i.i.i = icmp eq i64 %i.l, 0
  %i.m = zext i32 %2 to i64                       ; 2 uses
  %i.n = lshr i64 %i.m, 6
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !75
  %i.q = and i64 %i.m, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = and i64 %i.p, %i.r
  %.not.i.i.i11 = icmp eq i64 %i.s, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12: ; preds = %bb.a, %bb.b
  %i.t = phi i1 [ %.not.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.u = phi i1 [ %.not.i.i.i11, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1369, !nonnull !27, !align !659
  %.sroa.0.0.copyload = load i64, ptr %i.w, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = and i64 %.sroa.0.0.copyload, 65536
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.e, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i = and i1 %i.t, %i.u
  br i1 %or.cond.i, label %_ZNOSt8optionalIiE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = trunc i64 %.sroa.0.0.copyload to i1
  %i.z = xor i1 %i.t, %i.y
  %spec.select = xor i1 %i.z, true
  br label %_ZNOSt8optionalIiE5valueEv.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1370, !nonnull !27, !align !592 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1356, !nonnull !27, !align !592
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1357
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1299 ; 2 uses
  %i.ai = sext i32 %1 to i64
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.al = sext i32 %2 to i64
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.al ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.am, align 8
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i4.i, ptr %5, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.a, ptr %3, align 8, !tbaa !418
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.aq, align 8, !tbaa !420
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %i.ar, align 8, !tbaa !420
  %i.as = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1359, !nonnull !27, !align !659
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = sub nsw i32 0, %i.as
  %i.az = select i1 %i.ax, i32 %i.as, i32 %i.ay
  %i.ba = icmp slt i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.ba, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEEvT_SN_SN_SN_SJ_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.415") align 8 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.a, i32 noundef %i.b)
  %i.d = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.e, i32 noundef %i.d)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  %i.j = load i32, ptr %3, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.m, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !3
  %i.p = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.o, i32 noundef %i.d)
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !3
  %i.t = load i32, ptr %3, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %i.v = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.w, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.x, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SG_EUliE0_EEvT0_T1_SF_SG_EUliiE0_EEET_SN_SN_SN_SJ_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.415") align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.223, align 8            ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %class.anon.223, align 8            ; 6 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %9 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !1367, !nonnull !27, !align !592 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.sroa.032.0 = phi ptr [ %0, %bb.a ], [ %i.dc, %bb.t ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.t ]
  %i.n = load ptr, ptr %i.d, align 8, !nonnull !27, !align !592 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8, !nonnull !27, !align !659 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.sroa.032.1 = phi ptr [ %.sroa.032.0, %bb.b ], [ %i.bi, %bb.k ] ; 7 uses
  %i.r = load i32, ptr %.sroa.032.1, align 4, !tbaa !3 ; 2 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !1354
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !570  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %i.r to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !75
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.z, %i.ab
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = zext i32 %i.s to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i11.i = icmp eq i64 %i.aj, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.d, %bb.c
  %i.ak = phi i1 [ %.not.i.i.i.i, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.al = phi i1 [ %.not.i.i.i11.i, %bb.d ], [ false, %bb.c ] ; 2 uses
  %or.cond.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i = and i1 %i.ak, %i.al
  %i.an = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ao = xor i1 %i.ak, %i.an
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ao
  br i1 %or.cond.demorgan, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_S9_EUliE0_EEvT0_T1_S8_S9_ENKUliiE0_clEii.exit.thread.preheader, label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !1351
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !1356, !nonnull !27, !align !592
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1357
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 216
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1299 ; 2 uses
  %i.au = sext i32 %i.r to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.av, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aw = sext i32 %i.s to i64
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.at, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_RSL_:bb.a
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.ey ; 2 uses
  %.sroa.0.0.copyload.i4.i.i = load i64, ptr %i.ez, align 8
  %.sroa.2.0..sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.2.0.copyload.i6.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i4.i.i, ptr %8, align 8
  store ptr %.sroa.2.0.copyload.i6.i.i, ptr %i.t, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fb, ptr %i.b, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.b, ptr %6, align 8, !tbaa !418
  store ptr %7, ptr %i.u, align 8, !tbaa !420
  store ptr %8, ptr %i.v, align 8, !tbaa !420
  %i.fc = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fd = load ptr, ptr %i.dd, align 8, !tbaa !1431, !nonnull !27, !align !659
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = sub nsw i32 0, %i.fc
  %i.fi = select i1 %i.fg, i32 %i.fc, i32 %i.fh
  %i.fj = icmp slt i32 %i.fi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br i1 %i.fj, label %._crit_edge, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.de, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.r
  %i.fk = phi i32 [ %.pre, %._crit_edge ], [ %i.df, %bb.r ]
  %i.fl = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !3
  %i.fm = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.fm, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, !llvm.loop !1433

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.m
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.m ], [ %.019.i.i, %bb.t ], [ %.0920.i.i, %bb.u ], [ %.019.i.i, %bb.r ]
  %i.fn = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.aa, ptr %i.fn, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.fo = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1435

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SL_SL_SM_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.223, align 8            ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1436, !nonnull !27, !align !592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1424
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !570  ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1426, !nonnull !27, !align !592
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = lshr i64 %i.l, 6
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !75
  %i.p = and i64 %i.l, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = and i64 %i.q, %i.o
  %.not.i.i.i = icmp eq i64 %i.r, 0
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 6
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %i.z = and i64 %i.v, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = and i64 %i.aa, %i.y
  %.not.i.i.i11 = icmp eq i64 %i.ab, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12: ; preds = %bb.a, %bb.b
  %i.ac = phi i1 [ %.not.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.ad = phi i1 [ %.not.i.i.i11, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1438, !nonnull !27, !align !659
  %.sroa.0.0.copyload = load i64, ptr %i.af, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ag = and i64 %.sroa.0.0.copyload, 65536
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %bb.e, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %_ZNOSt8optionalIiE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = trunc i64 %.sroa.0.0.copyload to i1
  %i.ai = xor i1 %i.ac, %i.ah
  %spec.select = xor i1 %i.ai, true
  br label %_ZNOSt8optionalIiE5valueEv.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1439, !nonnull !27, !align !592 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !1427, !nonnull !27, !align !592 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1428
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1430, !nonnull !27, !align !592
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.as = sext i32 %1 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 216
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1299 ; 2 uses
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ay, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ba = sext i32 %2 to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bd ; 2 uses
  %.sroa.0.0.copyload.i4.i = load i64, ptr %i.be, align 8
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.2.0.copyload.i6.i = load ptr, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !20
  store i64 %.sroa.0.0.copyload.i4.i, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i6.i, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.a, ptr %3, align 8, !tbaa !418
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.bi, align 8, !tbaa !420
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %5, ptr %i.bj, align 8, !tbaa !420
  %i.bk = call noundef i32 @_ZZN8facebook5velox12SimpleVectorINS0_10StringViewEE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKS2_S8_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1431, !nonnull !27, !align !659
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = sub nsw i32 0, %i.bk
  %i.br = select i1 %i.bp, i32 %i.bk, i32 %i.bq
  %i.bs = icmp slt i32 %i.br, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bs, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEEvT_SP_SP_SP_SL_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.435") align 8 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.a, i32 noundef %i.b)
  %i.d = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.e, i32 noundef %i.d)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  %i.j = load i32, ptr %3, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.m, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !3
  %i.p = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.o, i32 noundef %i.d)
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !3
  %i.t = load i32, ptr %3, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %i.v = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.w, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.x, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorINSA_10StringViewEE11sortIndicesILb1EZNKSD_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSD_11sortIndicesESF_SH_SI_EUliE0_EEvT0_T1_SF_SI_EUliiE0_EEET_SP_SP_SP_SL_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.435") align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.223, align 8            ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %6 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %class.anon.223, align 8            ; 6 uses
  %8 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %9 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !1436, !nonnull !27, !align !592 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.sroa.032.0 = phi ptr [ %0, %bb.a ], [ %i.el, %bb.t ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.t ]
  %i.o = load ptr, ptr %i.e, align 8, !nonnull !27, !align !592 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !nonnull !27, !align !659 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.sroa.032.1 = phi ptr [ %.sroa.032.0, %bb.b ], [ %i.ca, %bb.k ] ; 7 uses
  %i.s = load i32, ptr %.sroa.032.1, align 4, !tbaa !3 ; 2 uses
  %i.t = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !1424
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !570  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !1426, !nonnull !27, !align !592
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !75
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, %i.af
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  %i.aj = sext i32 %i.t to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !75
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %i.ap
  %.not.i.i.i11.i = icmp eq i64 %i.as, 0
  br label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.d, %bb.c
  %i.at = phi i1 [ %.not.i.i.i.i, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.au = phi i1 [ %.not.i.i.i11.i, %bb.d ], [ false, %bb.c ] ; 2 uses
  %or.cond.i = or i1 %i.at, %i.au
  br i1 %or.cond.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i = and i1 %i.at, %i.au
  %i.aw = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ax = xor i1 %i.at, %i.aw
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ax
  br i1 %or.cond.demorgan, label %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesILb1EZNKS3_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS3_11sortIndicesES8_SA_SB_EUliE0_EEvT0_T1_S8_SB_ENKUliiE0_clEii.exit.thread.preheader, label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorINS0_10StringViewEE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !1427, !nonnull !27, !align !592 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1428
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1430, !nonnull !27, !align !592
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %i.be = sext i32 %i.s to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_RSI_:bb.a
bb.q:                                             ; preds = %bb.p
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.r:                                             ; preds = %bb.o
  %or.cond.i.i = and i1 %i.dg, %i.dh
  %i.dj = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.dk = xor i1 %i.dg, %i.dj
  %or.cond41.demorgan = or i1 %or.cond.i.i, %i.dk
  br i1 %or.cond41.demorgan, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, label %bb.u

bb.s:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.p
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.dl = load ptr, ptr %i.co, align 8, !tbaa !1620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.dm = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !1629, !nonnull !27, !align !592
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1622
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 144
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !1492 ; 2 uses
  %i.dq = sext i32 %i.cs to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !75
  store i64 %i.ds, ptr %i.e, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.cp
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !75
  store i64 %i.du, ptr %i.f, align 8, !tbaa !75
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dw, ptr %i.d, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.d, ptr %4, align 8, !tbaa !418
  store ptr %i.e, ptr %i.u, align 8, !tbaa !664
  store ptr %i.f, ptr %i.v, align 8, !tbaa !664
  %i.dx = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dy = load ptr, ptr %i.cq, align 8, !tbaa !1630, !nonnull !27, !align !659
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = sub nsw i32 0, %i.dx
  %i.ed = select i1 %i.eb, i32 %i.dx, i32 %i.ec
  %i.ee = icmp slt i32 %i.ed, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br i1 %i.ee, label %._crit_edge, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.r
  %i.ef = phi i32 [ %.pre, %._crit_edge ], [ %i.cs, %bb.r ]
  %i.eg = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.eh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, !llvm.loop !1632

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.m
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.m ], [ %.019.i.i, %bb.t ], [ %.0920.i.i, %bb.u ], [ %.019.i.i, %bb.r ]
  %i.ei = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.aa, ptr %i.ei, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.ej = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1634

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SI_SI_SJ_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.283, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1635, !nonnull !27, !align !592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1627
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !570  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %1 to i64                       ; 2 uses
  %i.i = lshr i64 %i.h, 6
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75
  %i.l = and i64 %i.h, 63
  %i.m = shl nuw i64 1, %i.l
  %i.n = and i64 %i.k, %i.m
  %.not.i.i.i = icmp eq i64 %i.n, 0
  %i.o = zext i32 %2 to i64                       ; 2 uses
  %i.p = lshr i64 %i.o, 6
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75
  %i.s = and i64 %i.o, 63
  %i.t = shl nuw i64 1, %i.s
  %i.u = and i64 %i.r, %i.t
  %.not.i.i.i11 = icmp eq i64 %i.u, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12: ; preds = %bb.a, %bb.b
  %i.v = phi i1 [ %.not.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.w = phi i1 [ %.not.i.i.i11, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond = or i1 %i.v, %i.w
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1637, !nonnull !27, !align !659
  %.sroa.0.0.copyload = load i64, ptr %i.y, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %.sroa.0.0.copyload, 65536
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.e, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %_ZNOSt8optionalIiE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %.sroa.0.0.copyload to i1
  %i.ab = xor i1 %i.v, %i.aa
  %spec.select = xor i1 %i.ab, true
  br label %_ZNOSt8optionalIiE5valueEv.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1638, !nonnull !27, !align !592 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !1629, !nonnull !27, !align !592
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1622
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1492 ; 2 uses
  %i.ak = sext i32 %1 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !75
  store i64 %i.am, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.an = sext i32 %2 to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !75
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.a, ptr %3, align 8, !tbaa !418
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.as, align 8, !tbaa !664
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.at, align 8, !tbaa !664
  %i.au = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1630, !nonnull !27, !align !659
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = sub nsw i32 0, %i.au
  %i.bb = select i1 %i.az, i32 %i.au, i32 %i.ba
  %i.bc = icmp slt i32 %i.bb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bc, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEEvT_SM_SM_SM_SI_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.490") align 8 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.a, i32 noundef %i.b)
  %i.d = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.e, i32 noundef %i.d)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  %i.j = load i32, ptr %3, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.m, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !3
  %i.p = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.o, i32 noundef %i.d)
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !3
  %i.t = load i32, ptr %3, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %i.v = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.w, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.x, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_NSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SF_EUliE0_EEvT0_T1_SE_SF_EUliiE0_EEET_SM_SM_SM_SI_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.490") align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.283, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.283, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !1635, !nonnull !27, !align !592 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.sroa.026.0 = phi ptr [ %0, %bb.a ], [ %i.dg, %bb.t ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.t ]
  %i.n = load ptr, ptr %i.h, align 8, !nonnull !27, !align !592 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !nonnull !27, !align !659 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.sroa.026.1 = phi ptr [ %.sroa.026.0, %bb.b ], [ %i.bk, %bb.k ] ; 7 uses
  %i.r = load i32, ptr %.sroa.026.1, align 4, !tbaa !3 ; 2 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !1627
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !570  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %i.r to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, 6
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !75
  %i.aa = and i64 %i.w, 63
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.z, %i.ab
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = zext i32 %i.s to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i.i11.i = icmp eq i64 %i.aj, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.d, %bb.c
  %i.ak = phi i1 [ %.not.i.i.i.i, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.al = phi i1 [ %.not.i.i.i11.i, %bb.d ], [ false, %bb.c ] ; 2 uses
  %or.cond.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i = and i1 %i.ak, %i.al
  %i.an = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ao = xor i1 %i.ak, %i.an
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ao
  br i1 %or.cond.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S8_EUliE0_EEvT0_T1_S7_S8_ENKUliiE0_clEii.exit.thread.preheader, label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEENS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !1620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !1629, !nonnull !27, !align !592
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1622
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1492 ; 2 uses
  %i.au = sext i32 %i.r to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !75
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.ax = sext i32 %i.s to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !75
  store i64 %i.az, ptr %i.f, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.d, ptr %5, align 8, !tbaa !418
  store ptr %i.e, ptr %i.i, align 8, !tbaa !664
  store ptr %i.f, ptr %i.j, align 8, !tbaa !664
end_hunk_2
begin_hunk_3_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_:bb.a
  %i.er = sext i32 %i.dh to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1492 ; 2 uses
  %i.ew = sext i32 %i.et to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !75
  store i64 %i.ey, ptr %i.e, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dd
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !75
  store i64 %i.fd, ptr %i.f, align 8, !tbaa !75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ff, ptr %i.d, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.d, ptr %4, align 8, !tbaa !418
  store ptr %i.e, ptr %i.u, align 8, !tbaa !664
  store ptr %i.f, ptr %i.v, align 8, !tbaa !664
  %i.fg = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fh = load ptr, ptr %i.df, align 8, !tbaa !1697, !nonnull !27, !align !659
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = sub nsw i32 0, %i.fg
  %i.fm = select i1 %i.fk, i32 %i.fg, i32 %i.fl
  %i.fn = icmp slt i32 %i.fm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br i1 %i.fn, label %._crit_edge, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.dg, align 4, !tbaa !3
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.r
  %i.fo = phi i32 [ %.pre, %._crit_edge ], [ %i.dh, %bb.r ]
  %i.fp = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !3
  %i.fq = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.fq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, !llvm.loop !1699

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.m
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.m ], [ %.019.i.i, %bb.t ], [ %.0920.i.i, %bb.u ], [ %.019.i.i, %bb.r ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.aa, ptr %i.fr, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.fs = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1701

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.283, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1702, !nonnull !27, !align !592 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1690
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !570  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1692, !nonnull !27, !align !592
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !40   ; 2 uses
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 6
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %i.r = and i64 %i.n, 63
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.q
  %.not.i.i.i = icmp eq i64 %i.t, 0
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 6
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !75
  %i.ab = and i64 %i.x, 63
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.ac, %i.aa
  %.not.i.i.i11 = icmp eq i64 %i.ad, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12: ; preds = %bb.a, %bb.b
  %i.ae = phi i1 [ %.not.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.af = phi i1 [ %.not.i.i.i11, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1704, !nonnull !27, !align !659
  %.sroa.0.0.copyload = load i64, ptr %i.ah, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = and i64 %.sroa.0.0.copyload, 65536
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.e, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i, label %_ZNOSt8optionalIiE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = trunc i64 %.sroa.0.0.copyload to i1
  %i.ak = xor i1 %i.ae, %i.aj
  %spec.select = xor i1 %i.ak, true
  br label %_ZNOSt8optionalIiE5valueEv.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1705, !nonnull !27, !align !592 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !1693, !nonnull !27, !align !592 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1694
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1696, !nonnull !27, !align !592
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.au = sext i32 %1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1492 ; 2 uses
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !75
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bc = sext i32 %2 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !75
  store i64 %i.bh, ptr %i.c, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !417
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.a, ptr %3, align 8, !tbaa !418
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.bk, align 8, !tbaa !664
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.bl, align 8, !tbaa !664
  %i.bm = call noundef i32 @_ZZN8facebook5velox12SimpleVectorImE39comparePrimitiveAscWithCustomComparisonEPKNS0_4TypeERKmS7_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1697, !nonnull !27, !align !659
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = sub nsw i32 0, %i.bm
  %i.bt = select i1 %i.br, i32 %i.bm, i32 %i.bs
  %i.bu = icmp slt i32 %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bu, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.510") align 8 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.a, i32 noundef %i.b)
  %i.d = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.e, i32 noundef %i.d)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  %i.j = load i32, ptr %3, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.m, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !3
  %i.p = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.o, i32 noundef %i.d)
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !3
  %i.t = load i32, ptr %3, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %i.v = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.w, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.x, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE_ZNKSC_11sortIndicesESE_SG_SH_EUliE0_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.510") align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.anon.283, align 8            ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.anon.283, align 8            ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !1702, !nonnull !27, !align !592 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.sroa.026.0 = phi ptr [ %0, %bb.a ], [ %i.ep, %bb.t ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.t ]
  %i.o = load ptr, ptr %i.i, align 8, !nonnull !27, !align !592 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !nonnull !27, !align !659 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.sroa.026.1 = phi ptr [ %.sroa.026.0, %bb.b ], [ %i.cc, %bb.k ] ; 7 uses
  %i.s = load i32, ptr %.sroa.026.1, align 4, !tbaa !3 ; 2 uses
  %i.t = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1690
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !570  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !1692, !nonnull !27, !align !592
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = sext i32 %i.s to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !75
  %i.ag = and i64 %i.ac, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, %i.af
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  %i.aj = sext i32 %i.t to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !75
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %i.ap
  %.not.i.i.i11.i = icmp eq i64 %i.as, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i: ; preds = %bb.d, %bb.c
  %i.at = phi i1 [ %.not.i.i.i.i, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.au = phi i1 [ %.not.i.i.i11.i, %bb.d ], [ false, %bb.c ] ; 2 uses
  %or.cond.i = or i1 %i.at, %i.au
  br i1 %or.cond.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i = and i1 %i.at, %i.au
  %i.aw = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ax = xor i1 %i.at, %i.aw
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.ax
  br i1 %or.cond.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb1EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE_ZNKS2_11sortIndicesES7_S9_SA_EUliE0_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.preheader, label %bb.k

bb.i:                                             ; preds = %bb.e
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE0_clEi.exit12.i
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !1687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !1693, !nonnull !27, !align !592 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1694
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1696, !nonnull !27, !align !592
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %i.be = sext i32 %i.s to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1492 ; 2 uses
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
end_hunk_3
begin_hunk_4_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_RSK_:bb.a
  %i.do = phi i1 [ %.not.i.i.i.i, %bb.n ], [ false, %.lr.ph.i.i ] ; 3 uses
  %i.dp = phi i1 [ %.not.i.i.i11.i, %bb.n ], [ false, %.lr.ph.i.i ] ; 2 uses
  %or.cond.i = or i1 %i.do, %i.dp
  br i1 %or.cond.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.0.sroa.2.0.copyload, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.s [
    i32 1, label %bb.p
    i32 0, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.dq = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i, label %bb.q, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.r:                                             ; preds = %bb.o
  %or.cond.i.i = and i1 %i.do, %i.dp
  %i.dr = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.ds = xor i1 %i.do, %i.dr
  %or.cond41.demorgan = or i1 %or.cond.i.i, %i.ds
  br i1 %or.cond41.demorgan, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, label %bb.u

bb.s:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.p
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.t:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.dt = load ptr, ptr %.sroa.0.sroa.3.0.copyload, align 8, !tbaa !1727, !nonnull !27, !align !592 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1729
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1731, !nonnull !27, !align !592
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !40 ; 2 uses
  %i.dy = sext i32 %i.cs to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 144
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1492 ; 2 uses
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !75
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.cq
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !75
  %i.el = tail call i32 @llvm.ucmp.i32.i64(i64 %i.ef, i64 %i.ek) ; 2 uses
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !1732, !nonnull !27, !align !659
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = sub nsw i32 0, %i.el
  %i.er = select i1 %i.ep, i32 %i.el, i32 %i.eq
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.u, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit

bb.u:                                             ; preds = %bb.r, %bb.t
  %i.et = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.cs, ptr %i.et, align 4, !tbaa !3
  %i.eu = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.eu, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, !llvm.loop !1734

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit: ; preds = %bb.r, %bb.t, %bb.u, %bb.m
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.m ], [ %.019.i.i, %bb.t ], [ %.0920.i.i, %bb.u ], [ %.019.i.i, %bb.r ]
  %i.ev = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.s, ptr %i.ev, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.ew = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1736

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SK_SK_SL_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1737, !nonnull !27, !align !592 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !570  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1726, !nonnull !27, !align !592
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = lshr i64 %i.k, 6
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !75
  %i.o = and i64 %i.k, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = and i64 %i.p, %i.n
  %.not.i.i.i = icmp eq i64 %i.q, 0
  %i.r = sext i32 %2 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !75
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.z, %i.x
  %.not.i.i.i11 = icmp eq i64 %i.aa, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12: ; preds = %bb.a, %bb.b
  %i.ab = phi i1 [ %.not.i.i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.ac = phi i1 [ %.not.i.i.i11, %bb.b ], [ false, %bb.a ] ; 2 uses
  %or.cond = or i1 %i.ab, %i.ac
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1739, !nonnull !27, !align !659
  %.sroa.0.0.copyload = load i64, ptr %i.ae, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.37.0.extract.trunc.i = trunc nuw i64 %.sroa.37.0.extract.shift.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i, label %bb.h [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.af = and i64 %.sroa.0.0.copyload, 65536
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %bb.e, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.f:                                             ; preds = %bb.c
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %_ZNOSt8optionalIiE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc i64 %.sroa.0.0.copyload to i1
  %i.ah = xor i1 %i.ab, %i.ag
  %spec.select = xor i1 %i.ah, true
  br label %_ZNOSt8optionalIiE5valueEv.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit: ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.i:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1740, !nonnull !27, !align !592 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1727, !nonnull !27, !align !592 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1729
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1731, !nonnull !27, !align !592
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40 ; 2 uses
  %i.ap = sext i32 %1 to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1492 ; 2 uses
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !75
  %i.ax = sext i32 %2 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !75
  %i.bd = tail call i32 @llvm.ucmp.i32.i64(i64 %i.aw, i64 %i.bc) ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1732, !nonnull !27, !align !659
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = sub nsw i32 0, %i.bd
  %i.bk = select i1 %i.bi, i32 %i.bd, i32 %i.bj
  %i.bl = icmp slt i32 %i.bk, 0
  br label %_ZNOSt8optionalIiE5valueEv.exit

_ZNOSt8optionalIiE5valueEv.exit:                  ; preds = %bb.g, %bb.f, %bb.i
  %.0 = phi i1 [ %i.bl, %bb.i ], [ false, %bb.f ], [ %spec.select, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEEvT_SO_SO_SO_SK_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.518") align 8 %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = load i32, ptr %2, align 4, !tbaa !3
  %i.c = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.a, i32 noundef %i.b)
  %i.d = load i32, ptr %3, align 4, !tbaa !3      ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.e, i32 noundef %i.d)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 4, !tbaa !3
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.h, ptr %0, align 4, !tbaa !3
  store i32 %i.g, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  %i.j = load i32, ptr %3, align 4, !tbaa !3
  %i.k = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.i, i32 noundef %i.j)
  %i.l = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.m, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.n, ptr %0, align 4, !tbaa !3
  store i32 %i.l, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 4, !tbaa !3
  %i.p = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.o, i32 noundef %i.d)
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !3
  %i.t = load i32, ptr %3, align 4, !tbaa !3
  %i.u = call noundef zeroext i1 @_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.s, i32 noundef %i.t)
  %i.v = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.w, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %3, align 4, !tbaa !3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.x, ptr %0, align 4, !tbaa !3
  store i32 %i.v, ptr %2, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKSC_11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliE1_ZNKSC_11sortIndicesESE_SG_SH_EUliE2_EEvT0_T1_SE_SH_EUliiE0_EEET_SO_SO_SO_SK_(ptr %0, ptr %1, ptr %2, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.518") align 8 %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !1737, !nonnull !27, !align !592 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1724
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !570  ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.d, null            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.t, %bb.a
  %.sroa.026.0 = phi ptr [ %0, %bb.a ], [ %i.dp, %bb.t ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.t ]
  %i.h = load i32, ptr %2, align 4, !tbaa !3
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = load ptr, ptr %i.f, align 8, !nonnull !27, !align !592 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !nonnull !27, !align !659 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %.sroa.026.1 = phi ptr [ %.sroa.026.0, %bb.b ], [ %i.bn, %bb.k ] ; 6 uses
  %i.m = load i32, ptr %.sroa.026.1, align 4, !tbaa !3 ; 3 uses
  br i1 %.not.i.i.i, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1726, !nonnull !27, !align !592
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75
  %i.w = and i64 %i.s, 63
  %i.x = shl nuw i64 1, %i.w
  %i.y = and i64 %i.x, %i.v
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  %i.z = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !75
  %i.af = and i64 %i.ab, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = and i64 %i.ag, %i.ae
  %.not.i.i.i11.i = icmp eq i64 %i.ah, 0
  br label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i

_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i: ; preds = %bb.d, %bb.c
  %i.ai = phi i1 [ %.not.i.i.i.i, %bb.d ], [ false, %bb.c ] ; 3 uses
  %i.aj = phi i1 [ %.not.i.i.i11.i, %bb.d ], [ false, %bb.c ] ; 2 uses
  %or.cond.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 4 ; 3 uses
  %.sroa.37.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc.i.i = trunc nuw i64 %.sroa.37.0.extract.shift.i.i to i32
  switch i32 %.sroa.37.0.extract.trunc.i.i, label %bb.i [
    i32 1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = and i64 %.sroa.0.0.copyload.i, 65536
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs, ptr noundef nonnull @.str.62) #51
  unreachable

bb.h:                                             ; preds = %bb.e
  %or.cond.i.i = and i1 %i.ai, %i.aj
  %i.al = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.am = xor i1 %i.ai, %i.al
  %or.cond.demorgan = or i1 %or.cond.i.i, %i.am
  br i1 %or.cond.demorgan, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.preheader, label %bb.k

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.63) #51
  unreachable

_ZN8facebook5velox10BaseVector12compareNullsEbbNS0_12CompareFlagsE.exit.i: ; preds = %bb.f
  tail call void @_ZSt27__throw_bad_optional_accessv() #51
  unreachable

bb.j:                                             ; preds = %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEENKUliE2_clEi.exit12.i
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !1727, !nonnull !27, !align !592 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1729
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1731, !nonnull !27, !align !592
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.as = sext i32 %i.m to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1492 ; 2 uses
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !75
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !75
  %i.bf = tail call i32 @llvm.ucmp.i32.i64(i64 %i.az, i64 %i.be) ; 2 uses
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !1732, !nonnull !27, !align !659
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !1360, !range !26, !noundef !27
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = sub nsw i32 0, %i.bf
  %i.bl = select i1 %i.bj, i32 %i.bf, i32 %i.bk
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %_ZZNK8facebook5velox10FlatVectorImE11sortIndicesILb0EZNKS2_11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliE1_ZNKS2_11sortIndicesES7_S9_SA_EUliE2_EEvT0_T1_S7_SA_ENKUliiE0_clEii.exit.thread.preheader
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox9functions17SIMDJsonExtractor14visitRecursiveIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand5valueESH_Rbm:bb.a
bb.cb:                                            ; preds = %bb.bz
  %i.lm = load i32, ptr %i.lg, align 4, !tbaa !3
  %i.ln = zext i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %.pre1263, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !20
  %i.lq = icmp eq i8 %i.lp, 58
  br i1 %i.lq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  store ptr %i.lr, ptr %.sroa.0388.sroa.8.0..sroa_idx, align 8, !tbaa !21
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb, %bb.bz
  %i.ls = add nsw i32 %.pre12641340, -1           ; 2 uses
  store i32 %i.ls, ptr %i.az, align 4, !tbaa !41
  %.not7.i.not = icmp eq i32 %.pre12641340, 2
  br i1 %.not7.i.not, label %.loopexit1209, label %bb.ce

bb.ce:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.cd, %bb.cc, %bb.ca
  %.pre12641276 = phi i32 [ %.pre12641340, %bb.bz ], [ %.pre12641340, %bb.bz ], [ %.pre12641340, %bb.bz ], [ %.pre12641340, %bb.bz ], [ %i.ls, %bb.cd ], [ %.pre12641340, %bb.cc ], [ %i.ll, %bb.ca ] ; 4 uses
  %.promoted = phi ptr [ %i.lg, %bb.bz ], [ %i.lg, %bb.bz ], [ %i.lg, %bb.bz ], [ %i.lg, %bb.bz ], [ %i.lg, %bb.cd ], [ %i.lr, %bb.cc ], [ %i.lg, %bb.ca ] ; 2 uses
  %i.lt = load ptr, ptr %i.aw, align 8, !tbaa !28
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !29 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !31
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lz = zext i32 %i.lx to i64
  %i.ma = load ptr, ptr %i.ly, align 8, !tbaa !40
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.lz ; 2 uses
  %i.mc = icmp ult ptr %.promoted, %i.mb
  br i1 %i.mc, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph:                                           ; preds = %bb.ce, %bb.ch
  %.pre12641275 = phi i32 [ %.pre12641274, %bb.ch ], [ %.pre12641276, %bb.ce ]
  %i.md = phi ptr [ %i.mf, %bb.ch ], [ %.promoted, %bb.ce ] ; 2 uses
  %i.me = phi i32 [ %i.mm, %bb.ch ], [ %.pre12641276, %bb.ce ] ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 4 uses
  store ptr %i.mf, ptr %.sroa.0388.sroa.8.0..sroa_idx, align 8, !tbaa !21
  %i.mg = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %.pre1263, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !20
  switch i8 %i.mj, label %bb.ch [
    i8 91, label %bb.cf
    i8 123, label %bb.cf
    i8 93, label %bb.cg
    i8 125, label %bb.cg
  ]

bb.cf:                                            ; preds = %.lr.ph, %.lr.ph
  %i.mk = add nsw i32 %i.me, 1                    ; 3 uses
  store i32 %i.mk, ptr %i.az, align 4, !tbaa !41
  br label %bb.ch

bb.cg:                                            ; preds = %.lr.ph, %.lr.ph
  %i.ml = add nsw i32 %i.me, -1                   ; 3 uses
  store i32 %i.ml, ptr %i.az, align 4, !tbaa !41
  %.not8.i = icmp sgt i32 %i.me, 2
  br i1 %.not8.i, label %bb.ch, label %.loopexit1209

bb.ch:                                            ; preds = %.lr.ph, %bb.cg, %bb.cf
  %.pre12641274 = phi i32 [ %.pre12641275, %.lr.ph ], [ %i.ml, %bb.cg ], [ %i.mk, %bb.cf ] ; 2 uses
  %i.mm = phi i32 [ %i.me, %.lr.ph ], [ %i.ml, %bb.cg ], [ %i.mk, %bb.cf ] ; 2 uses
  %i.mn = icmp ult ptr %i.mf, %i.mb
  br i1 %i.mn, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !52

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.ch, %bb.ce
  %.pre12641273 = phi i32 [ %.pre12641276, %bb.ce ], [ %.pre12641274, %bb.ch ]
  %i.mo = phi i32 [ %.pre12641276, %bb.ce ], [ %i.mm, %bb.ch ]
  store i32 3, ptr %i.ay, align 8, !tbaa !42
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit1209:                                    ; preds = %bb.cg, %bb.by, %bb.ca, %bb.cd
  %i.mp = phi ptr [ %i.lg, %bb.cd ], [ %i.ld, %bb.by ], [ %i.lg, %bb.ca ], [ %i.mf, %bb.cg ] ; 3 uses
  %i.mq = icmp ugt ptr %i.mp, %.sroa.0376.sroa.11.2
  call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mr, ptr %.sroa.0388.sroa.8.0..sroa_idx, align 8, !tbaa !21
  %i.ms = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %.pre1263, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !20
  switch i8 %i.mv, label %bb.cj [
    i8 93, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread
    i8 44, label %bb.ci
  ]

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread: ; preds = %.loopexit1209
  store i32 0, ptr %i.az, align 4, !tbaa !41
  br label %.thread1126

bb.ci:                                            ; preds = %.loopexit1209
  store i32 2, ptr %i.az, align 4, !tbaa !41
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.cj:                                            ; preds = %.loopexit1209
  store i32 3, ptr %i.ay, align 8, !tbaa !42
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %bb.cj, %bb.ci, %.thread1174, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit
  %.pre12641271 = phi i32 [ 1, %bb.cj ], [ 2, %bb.ci ], [ %.pre12641273, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ], [ %.pre1264.pre, %.thread1174 ]
  %i.mw = phi i32 [ 1, %bb.cj ], [ 2, %bb.ci ], [ %i.mo, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ], [ %.pre1264.pre, %.thread1174 ]
  %i.mx = phi i32 [ 3, %bb.cj ], [ 0, %bb.ci ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ], [ %.pre1260, %.thread1174 ]
  %i.my = icmp sgt i32 %i.mw, 0
  br i1 %i.my, label %bb.bt, label %.thread1126

bb.ck:                                            ; preds = %.critedge12
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.cl

.thread1126:                                      ; preds = %bb.w, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit, %.thread1109, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split, %bb.bo, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.preheader, %bb.bq, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.preheader.thread, %bb.av, %bb.bd, %bb.ay, %bb.ba, %.thread1003, %bb.ag, %bb.aa, %bb.ad, %bb.ae, %bb.v, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit, %bb.bu, %bb.bx, %bb.aj, %bb.at, %bb.ao, %bb.al, %bb.aq, %bb.s
  %.15 = phi i32 [ %i.cs, %bb.s ], [ %i.el, %bb.ae ], [ 0, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit ], [ 27, %bb.v ], [ 17, %bb.av ], [ %i.ku, %bb.bu ], [ 1, %bb.aa ], [ 29, %bb.aj ], [ 28, %bb.at ], [ 28, %bb.ao ], [ 28, %bb.al ], [ 28, %bb.aq ], [ %i.ey, %.thread1003 ], [ 3, %bb.ba ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ], [ %i.lc, %bb.bx ], [ 0, %_ZNK8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEneERKS4_.exit.preheader ], [ 0, %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread.preheader.thread ], [ %i.er, %bb.ag ], [ %i.eg, %bb.ad ], [ %i.ii, %bb.bd ], [ %i.hm, %bb.ay ], [ 0, %bb.bo ], [ 17, %bb.bq ], [ 0, %.thread1109 ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit.sink.split ], [ 27, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bp, %bb.ck, %bb.t
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.t ], [ %i.kd, %bb.bp ], [ %i.mz, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.na = load ptr, ptr %i.g, align 8, !tbaa !79  ; 2 uses
  %.not.i.i259 = icmp eq ptr %i.na, null
  br i1 %.not.i.i259, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i260

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i260: ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.na) #49
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i260, %bb.cl
  %i.nb = load ptr, ptr %i.c, align 8, !tbaa !29  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.nb, null
  br i1 %.not.i1.i, label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !83
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 72
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.nb) #26, !inline_history !2510
  br label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit

_ZN8simdjson8fallback8ondemand6parserD2Ev.exit:   ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn116.pn.pn

bb.cm:                                            ; preds = %bb.h, %bb.r, %bb.m, %bb.j, %bb.o, %.thread1126
  %.16 = phi i32 [ %.15, %.thread1126 ], [ 29, %bb.h ], [ 28, %bb.r ], [ 28, %bb.m ], [ 28, %bb.j ], [ 28, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit

_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit: ; preds = %bb.d, %_ZN8simdjson8fallback8ondemand6parser8allocateEmm.exit.thread964, %bb.f, %_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit, %bb.c, %bb.cm
  %.17 = phi i32 [ %.16, %bb.cm ], [ 1, %_ZN8simdjson18padded_string_view15remove_utf8_bomEv.exit ], [ 27, %bb.c ], [ %i.ap, %_ZN8simdjson8fallback8ondemand6parser8allocateEmm.exit.thread964 ], [ %i.am, %bb.f ], [ 27, %bb.d ]
  %i.nf = load ptr, ptr %i.g, align 8, !tbaa !79  ; 2 uses
  %.not.i.i261 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i261, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i262

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i262: ; preds = %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.nf) #49
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i262, %_ZNK8simdjson18padded_string_view22has_sufficient_paddingEv.exit
  %i.ng = load ptr, ptr %i.c, align 8, !tbaa !29  ; 3 uses
  %.not.i1.i264 = icmp eq ptr %i.ng, null
  br i1 %.not.i1.i264, label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !83
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 72
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ng) #26, !inline_history !2510
  br label %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266

_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266: ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit.i263, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i265
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.cn

bb.cn:                                            ; preds = %bb.a, %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266
  %.18 = phi i32 [ %.17, %_ZN8simdjson8fallback8ondemand6parserD2Ev.exit266 ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i32 %.18
}

declare noundef i32 @_ZN8facebook5velox9functions13extractObjectERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef i32 @_ZN8facebook5velox9functions12extractArrayERN8simdjson8fallback8ondemand5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt8optionalIS5_E(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5valueE(ptr dead_on_unwind noalias writable sret(%"struct.simdjson::simdjson_result.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::array", align 8 ; 6 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::object", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !243    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245  ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3    ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  switch i8 %i.h, label %bb.l [
    i8 123, label %bb.g
    i8 91, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21, !noalias !2511 ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41, !noalias !2511 ; 3 uses
  %i.q = load i32, ptr %i.k, align 8, !tbaa !249, !noalias !2511 ; 2 uses
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.n, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.r), !noalias !2511
  %i.s = icmp sgt i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.s), !noalias !2511
  %i.t = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !2511
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20, !noalias !2511
  %.not8.i.i = icmp eq i8 %i.w, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.l, align 8, !tbaa !21, !noalias !2511
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.y = phi i32 [ %i.p, %bb.d ], [ %i.q, %bb.b ] ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.d ], [ %i.m, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ab = icmp eq ptr %i.z, %i.aa
  tail call void @llvm.assume(i1 %i.ab), !noalias !2511
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ad = icmp sgt i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.ad), !noalias !2511
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !2511
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !20, !noalias !2511
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a, label %bb.e

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a: ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !21, !noalias !2511
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a
  %.sink = phi i32 [ -1, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit.a ], [ 1, %._crit_edge ]
  %i.ak = add nsw i32 %i.y, %.sink
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !41, !noalias !2511
  %.sroa.046.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !40, !noalias !2511
  store ptr %i.a, ptr %2, align 8, !tbaa !50
  %i.al = load <2 x i32>, ptr %i.k, align 8, !noalias !2511
  store <2 x i32> %i.al, ptr %i.i, align 8
  store ptr %.sroa.046.sroa.6.0.copyload, ptr %i.j, align 8, !tbaa !40
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #26
  br label %bb.f

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %4, align 8, !tbaa !2338
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5arrayEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21, !noalias !2514 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, %i.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41, !noalias !2514 ; 3 uses
  %i.au = load i32, ptr %i.ao, align 8, !tbaa !249, !noalias !2514 ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.ar, label %bb.h, label %._crit_edge164

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.av), !noalias !2514
  %i.aw = icmp sgt i32 %i.at, 0
  tail call void @llvm.assume(i1 %i.aw), !noalias !2514
  %i.ax = load i32, ptr %i.aq, align 4, !tbaa !3, !noalias !2514
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !20, !noalias !2514
  %.not8.i.i20 = icmp eq i8 %i.ba, 123
  br i1 %.not8.i.i20, label %bb.i, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !21, !noalias !2514
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.g, %bb.i
  %i.bc = phi i32 [ %i.at, %bb.i ], [ %i.au, %bb.g ] ; 4 uses
  %i.bd = phi ptr [ %i.bb, %bb.i ], [ %i.aq, %bb.g ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bf = icmp eq ptr %i.bd, %i.be
  tail call void @llvm.assume(i1 %i.bf), !noalias !2514
  %i.bg = icmp sgt i32 %i.bc, 0
  tail call void @llvm.assume(i1 %i.bg), !noalias !2514
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !3, !noalias !2514
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20, !noalias !2514
  %i.bl = icmp eq i8 %i.bk, 125
  br i1 %i.bl, label %bb.j, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

bb.j:                                             ; preds = %._crit_edge164
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bn, ptr %i.ap, align 8, !tbaa !21, !noalias !2514
  %i.bo = add nsw i32 %i.bc, -1
  %or.cond.i.i21 = icmp ne i32 %i.bc, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i21), !noalias !2514
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !41, !noalias !2514
  %.sroa.073.sroa.4.0.copyload.pre = load i32, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread

_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread: ; preds = %bb.j, %._crit_edge164
  %.sroa.073.sroa.4.0.copyload = phi i32 [ %.sroa.073.sroa.4.0.copyload.pre, %bb.j ], [ %i.bc, %._crit_edge164 ]
  %.sroa.073.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.073.sroa.5.0.copyload = load i32, ptr %.sroa.073.sroa.5.0..sroa_idx, align 4
  %.sroa.073.sroa.6.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !40
  store ptr %i.a, ptr %3, align 8, !tbaa !50
  store i32 %.sroa.073.sroa.4.0.copyload, ptr %i.am, align 8, !tbaa !3
  %.sroa.030.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.073.sroa.5.0.copyload, ptr %.sroa.030.sroa.6.0..sroa_idx, align 4
  store ptr %.sroa.073.sroa.6.0.copyload, ptr %i.an, align 8, !tbaa !40
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand6objectE(ptr dead_on_unwind writable sret(%"struct.simdjson::simdjson_result.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  br label %bb.k

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 17, ptr %i.bp, align 8, !tbaa !2338
  br label %bb.k

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.r

bb.l:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bs = sub i32 %i.br, %i.e
  %i.bt = zext i32 %i.bs to i64                   ; 5 uses
  %.not.i27 = icmp eq i32 %i.br, %i.e
  br i1 %.not.i27, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.l, %bb.m
  %.0710.i.i.i = phi i64 [ %i.bz, %bb.m ], [ 0, %bb.l ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20  ; 2 uses
  %i.bw = zext nneg i8 %i.bv to i64
  %memchr.bounds.i = icmp ugt i8 %i.bv, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bx, 4294977024
  %memchr.bits.i = icmp eq i64 %i.by, 0
  %memchr.not.i = select i1 %memchr.bounds.i, i1 true, i1 %memchr.bits.i
  br i1 %memchr.not.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader, label %bb.m

bb.m:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bz = add nuw nsw i64 %.0710.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bz, %i.bt
  br i1 %exitcond.not.i.i.i, label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2418

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0710.i.i.i
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i:  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader, %bb.n
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.n ], [ %i.bt, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i.preheader ]
  %.1.i.i.i = add nsw i64 %.1.i.i.in.i, -1        ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20  ; 2 uses
  %i.cd = zext nneg i8 %i.cc to i64
  %memchr.bounds24.i = icmp ugt i8 %i.cc, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, 4294977024
  %memchr.bits25.i = icmp eq i64 %i.cf, 0
  %memchr.not26.i = select i1 %memchr.bounds24.i, i1 true, i1 %memchr.bits25.i
  br i1 %memchr.not26.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.not15.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not15.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i, !llvm.loop !2419

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i: ; preds = %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i
  %.010.i.i.i = phi i64 [ %.1.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i5.i ], [ -1, %bb.n ]
  %i.cg = icmp samesign ugt i64 %.0710.i.i.i, %i.bt
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.229, i64 noundef %.0710.i.i.i, i64 noundef %i.bt) #51
          to label %.noexc.i unwind label %bb.q

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEPKcm.exit.i
  %reass.sub = sub i64 %.010.i.i.i, %.0710.i.i.i
  %i.ch = add i64 %reass.sub, 1
  %i.ci = sub nuw nsw i64 %i.bt, %.0710.i.i.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ch)
  br label %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.q:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #50
  unreachable

_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.m, %bb.l, %bb.p
  %.sroa.3.0.i = phi ptr [ %i.ca, %bb.p ], [ null, %bb.l ], [ null, %bb.m ]
  %.sroa.010.0.i = phi i64 [ %.sroa.speculated.i.i, %bb.p ], [ 0, %bb.l ], [ 0, %bb.m ]
  store i64 %.sroa.010.0.i, ptr %0, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.cl, align 8, !tbaa !2338
  br label %bb.r

bb.r:                                             ; preds = %_ZN8simdjson4trimESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.k, %bb.f
  ret void
}

declare void @_ZN8facebook5velox21reusePaddedStringViewERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.simdjson::padded_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN8simdjson25get_active_implementationEv() local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.712, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2109   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2107
  switch i8 %i.c, label %bb.l [
    i8 33, label %bb.b
    i8 35, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !2105 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE33EEEvv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !129  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !135
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !2517
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26, !inline_history !2517
  br label %_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i, !prof !71

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #26
  br label %_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i

_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #49
  br label %_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE33EEEvv.exit

_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE33EEEvv.exit: ; preds = %bb.b, %_ZN8facebook5velox6detail11TypeStorageINS0_12UnknownValueELNS0_8TypeKindE33ELb1EED2Ev.exit.i
  store ptr null, ptr %i.a, align 8, !tbaa !2105
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !2105 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE35EEEvv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail11TypeStorageINS1_13OpaqueCapsuleELNS0_8TypeKindE35ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.w) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 48) #49
  br label %_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE35EEEvv.exit

_ZN8facebook5velox7Variant12typedDestroyILb1ELNS0_8TypeKindE35EEEvv.exit: ; preds = %bb.j, %bb.k
  store ptr null, ptr %i.a, align 8, !tbaa !2105
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !tbaa !2518
  call void @_ZZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
end_hunk_5
