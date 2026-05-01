inline.NumInlined: 158
inline.NumDeleted: 41
begin_hunk_0_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit: ; preds = %bb.m
  %i.bi = call noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true) ; 10 uses
  %i.bj = icmp eq i32 %i.bi, 65533
  br i1 %i.bj, label %bb.u, label %bb.v

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bo = add i32 %i.bi, 983040                   ; 2 uses
  %i.bp = lshr i32 %i.bo, 10                      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 92, ptr %.060, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.060, i64 2
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  %i.bz = select i1 %i.bw, i8 %i.bx, i8 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store i8 %i.bz, ptr %i.bs, align 1, !tbaa !10
  %3 = getelementptr inbounds nuw i8, ptr %.060, i64 5
  %4 = getelementptr inbounds nuw i8, ptr %.060, i64 6
  %5 = getelementptr inbounds nuw i8, ptr %.060, i64 7
  store i8 92, ptr %4, align 1, !tbaa !10
  %6 = getelementptr inbounds nuw i8, ptr %.060, i64 8
  store i8 117, ptr %5, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %.060, i64 9
  store i8 68, ptr %6, align 1, !tbaa !10
  %7 = lshr i32 %i.bi, 8
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 3
  %i.cc = add nuw nsw i8 %9, 67
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 10
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 11
  %10 = trunc i32 %i.bi to i8
  %11 = trunc i32 %i.bp to i8
  %12 = insertelement <2 x i8> poison, i8 %11, i64 0
  %13 = trunc i32 %i.bi to i8
  %14 = insertelement <2 x i8> %12, i8 %13, i64 1
  %15 = shufflevector <2 x i8> %14, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = trunc i32 %i.bp to i8
  %16 = lshr i8 %i.cf, 4
  %17 = lshr i8 %10, 4
  %18 = and <4 x i8> %15, <i8 -1, i8 15, i8 -1, i8 15> ; 2 uses
  %19 = icmp ult <4 x i8> %18, <i8 -96, i8 10, i8 -96, i8 10>
  %20 = insertelement <4 x i8> %18, i8 %16, i64 0
  %21 = insertelement <4 x i8> %20, i8 %17, i64 2 ; 2 uses
  %22 = or disjoint <4 x i8> %21, splat (i8 48)
  %23 = add nuw nsw <4 x i8> %21, splat (i8 55)
  %24 = select <4 x i1> %19, <4 x i8> %22, <4 x i8> %23 ; 4 uses
  %25 = extractelement <4 x i8> %24, i64 0
  store i8 %25, ptr %i.ca, align 1, !tbaa !10
  %26 = extractelement <4 x i8> %24, i64 1
  store i8 %26, ptr %3, align 1, !tbaa !10
  %27 = extractelement <4 x i8> %24, i64 2
  store i8 %27, ptr %i.cd, align 1, !tbaa !10
  %28 = getelementptr inbounds nuw i8, ptr %.060, i64 12
  %29 = extractelement <4 x i8> %24, i64 3
  store i8 %29, ptr %i.ce, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.x:                                             ; preds = %bb.v
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.x, %bb.w, %bb.u, %bb.y, %bb.t, %bb.s, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit
  %.1 = phi ptr [ %i.dj, %bb.y ], [ %.3, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit ], [ %i.bc, %bb.s ], [ %i.bf, %bb.t ], [ %i.bm, %bb.u ], [ %28, %bb.w ], [ %i.cv, %bb.x ]
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.b
  br i1 %i.dn, label %.lr.ph, label %._crit_edge
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ac:                                            ; preds = %bb.z
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !3   ; 10 uses
  %i.ck = icmp eq i32 %i.cj, 65533
  br i1 %i.ck, label %bb.ad, label %bb.ae

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.cp = add i32 %i.cj, 983040                   ; 2 uses
  %i.cq = lshr i32 %i.cp, 10                      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0104116, i64 1
  store i8 92, ptr %.0104116, align 1, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %.0104116, i64 2
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  %i.da = select i1 %i.cx, i8 %i.cy, i8 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.0104116, i64 4
  store i8 %i.da, ptr %i.ct, align 1, !tbaa !10
  %5 = getelementptr inbounds nuw i8, ptr %.0104116, i64 5
  %6 = getelementptr inbounds nuw i8, ptr %.0104116, i64 6
  %7 = getelementptr inbounds nuw i8, ptr %.0104116, i64 7
  store i8 92, ptr %6, align 1, !tbaa !10
  %8 = getelementptr inbounds nuw i8, ptr %.0104116, i64 8
  store i8 117, ptr %7, align 1, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %.0104116, i64 9
  store i8 68, ptr %8, align 1, !tbaa !10
  %9 = lshr i32 %i.cj, 8
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 3
  %i.dd = add nuw nsw i8 %11, 67
  %i.de = getelementptr inbounds nuw i8, ptr %.0104116, i64 10
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %.0104116, i64 11
  %12 = trunc i32 %i.cj to i8
  %13 = trunc i32 %i.cq to i8
  %14 = insertelement <2 x i8> poison, i8 %13, i64 0
  %15 = trunc i32 %i.cj to i8
  %16 = insertelement <2 x i8> %14, i8 %15, i64 1
  %17 = shufflevector <2 x i8> %16, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dg = trunc i32 %i.cq to i8
  %18 = lshr i8 %i.dg, 4
  %19 = lshr i8 %12, 4
  %20 = and <4 x i8> %17, <i8 -1, i8 15, i8 -1, i8 15> ; 2 uses
  %21 = icmp ult <4 x i8> %20, <i8 -96, i8 10, i8 -96, i8 10>
  %22 = insertelement <4 x i8> %20, i8 %18, i64 0
  %23 = insertelement <4 x i8> %22, i8 %19, i64 2 ; 2 uses
  %24 = or disjoint <4 x i8> %23, splat (i8 48)
  %25 = add nuw nsw <4 x i8> %23, splat (i8 55)
  %26 = select <4 x i1> %21, <4 x i8> %24, <4 x i8> %25 ; 4 uses
  %27 = extractelement <4 x i8> %26, i64 0
  store i8 %27, ptr %i.db, align 1, !tbaa !10
  %28 = extractelement <4 x i8> %26, i64 1
  store i8 %28, ptr %5, align 1, !tbaa !10
  %29 = extractelement <4 x i8> %26, i64 2
  store i8 %29, ptr %i.de, align 1, !tbaa !10
  %30 = getelementptr inbounds nuw i8, ptr %.0104116, i64 12
  %31 = extractelement <4 x i8> %26, i64 3
  store i8 %31, ptr %i.df, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ag:                                            ; preds = %bb.ae
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ab, %bb.aa
  %.sink133 = phi i64 [ %i.eq, %bb.ah ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.ag ], [ 4, %bb.af ], [ 4, %bb.ad ]
  %.4 = phi ptr [ %i.ep, %bb.ah ], [ %i.ch, %bb.aa ], [ %i.ci, %bb.ab ], [ %i.dw, %bb.ag ], [ %30, %bb.af ], [ %i.cn, %bb.ad ]
  %i.er = getelementptr inbounds i8, ptr %.0117, i64 %.sink133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.backedge
end_hunk_7
