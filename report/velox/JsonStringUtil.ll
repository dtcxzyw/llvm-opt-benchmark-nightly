inline.NumInlined: 158
inline.NumDeleted: 41
begin_hunk_0_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit: ; preds = %bb.m
  %i.bi = call noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true) ; 9 uses
  %i.bj = icmp eq i32 %i.bi, 65533
  br i1 %i.bj, label %bb.u, label %bb.v

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bo = add i32 %i.bi, 983040                   ; 2 uses
  %i.bp = lshr i32 %i.bo, 10
  %3 = trunc i32 %i.bp to i8                      ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 92, ptr %.060, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.060, i64 2
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  %i.bz = select i1 %i.bw, i8 %i.bx, i8 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store i8 %i.bz, ptr %i.bs, align 1, !tbaa !10
  %4 = lshr i8 %3, 4                              ; 2 uses
  %5 = icmp ult i8 %3, -96
  %6 = or disjoint i8 %4, 48
  %7 = add nuw nsw i8 %4, 55
  %8 = select i1 %5, i8 %6, i8 %7
  %i.cb = getelementptr inbounds nuw i8, ptr %.060, i64 5
  store i8 %8, ptr %i.ca, align 1, !tbaa !10
  %9 = and i8 %3, 15                              ; 3 uses
  %10 = icmp samesign ult i8 %9, 10
  %11 = or disjoint i8 %9, 48
  %i.cc = add nuw nsw i8 %9, 55
  %12 = select i1 %10, i8 %11, i8 %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 6
  store i8 %12, ptr %i.cb, align 1, !tbaa !10
  %13 = trunc i32 %i.bi to i8                     ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 7
  store i8 92, ptr %i.cd, align 1, !tbaa !10
  %14 = getelementptr inbounds nuw i8, ptr %.060, i64 8
  store i8 117, ptr %i.ce, align 1, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %.060, i64 9
  store i8 68, ptr %14, align 1, !tbaa !10
  %16 = lshr i32 %i.bi, 8
  %i.cf = trunc i32 %16 to i8
  %17 = and i8 %i.cf, 3
  %18 = add nuw nsw i8 %17, 67
  %19 = getelementptr inbounds nuw i8, ptr %.060, i64 10
  store i8 %18, ptr %15, align 1, !tbaa !10
  %20 = lshr i8 %13, 4                            ; 2 uses
  %21 = icmp ult i8 %13, -96
  %22 = or disjoint i8 %20, 48
  %23 = add nuw nsw i8 %20, 55
  %24 = select i1 %21, i8 %22, i8 %23
  %25 = getelementptr inbounds nuw i8, ptr %.060, i64 11
  store i8 %24, ptr %19, align 1, !tbaa !10
  %26 = and i8 %13, 15                            ; 3 uses
  %27 = icmp samesign ult i8 %26, 10
  %28 = or disjoint i8 %26, 48
  %29 = add nuw nsw i8 %26, 55
  %30 = select i1 %27, i8 %28, i8 %29
  %31 = getelementptr inbounds nuw i8, ptr %.060, i64 12
  store i8 %30, ptr %25, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.x:                                             ; preds = %bb.v
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.x, %bb.w, %bb.u, %bb.y, %bb.t, %bb.s, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit
  %.1 = phi ptr [ %i.dj, %bb.y ], [ %.3, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit ], [ %i.bc, %bb.s ], [ %i.bf, %bb.t ], [ %i.bm, %bb.u ], [ %31, %bb.w ], [ %i.cv, %bb.x ]
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.b
  br i1 %i.dn, label %.lr.ph, label %._crit_edge
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ac:                                            ; preds = %bb.z
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !3   ; 9 uses
  %i.ck = icmp eq i32 %i.cj, 65533
  br i1 %i.ck, label %bb.ad, label %bb.ae

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.cp = add i32 %i.cj, 983040                   ; 2 uses
  %i.cq = lshr i32 %i.cp, 10
  %5 = trunc i32 %i.cq to i8                      ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0104116, i64 1
  store i8 92, ptr %.0104116, align 1, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %.0104116, i64 2
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  %i.da = select i1 %i.cx, i8 %i.cy, i8 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %.0104116, i64 4
  store i8 %i.da, ptr %i.ct, align 1, !tbaa !10
  %6 = lshr i8 %5, 4                              ; 2 uses
  %7 = icmp ult i8 %5, -96
  %8 = or disjoint i8 %6, 48
  %9 = add nuw nsw i8 %6, 55
  %10 = select i1 %7, i8 %8, i8 %9
  %i.dc = getelementptr inbounds nuw i8, ptr %.0104116, i64 5
  store i8 %10, ptr %i.db, align 1, !tbaa !10
  %11 = and i8 %5, 15                             ; 3 uses
  %12 = icmp samesign ult i8 %11, 10
  %13 = or disjoint i8 %11, 48
  %i.dd = add nuw nsw i8 %11, 55
  %14 = select i1 %12, i8 %13, i8 %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %.0104116, i64 6
  store i8 %14, ptr %i.dc, align 1, !tbaa !10
  %15 = trunc i32 %i.cj to i8                     ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0104116, i64 7
  store i8 92, ptr %i.de, align 1, !tbaa !10
  %16 = getelementptr inbounds nuw i8, ptr %.0104116, i64 8
  store i8 117, ptr %i.df, align 1, !tbaa !10
  %17 = getelementptr inbounds nuw i8, ptr %.0104116, i64 9
  store i8 68, ptr %16, align 1, !tbaa !10
  %18 = lshr i32 %i.cj, 8
  %i.dg = trunc i32 %18 to i8
  %19 = and i8 %i.dg, 3
  %20 = add nuw nsw i8 %19, 67
  %21 = getelementptr inbounds nuw i8, ptr %.0104116, i64 10
  store i8 %20, ptr %17, align 1, !tbaa !10
  %22 = lshr i8 %15, 4                            ; 2 uses
  %23 = icmp ult i8 %15, -96
  %24 = or disjoint i8 %22, 48
  %25 = add nuw nsw i8 %22, 55
  %26 = select i1 %23, i8 %24, i8 %25
  %27 = getelementptr inbounds nuw i8, ptr %.0104116, i64 11
  store i8 %26, ptr %21, align 1, !tbaa !10
  %28 = and i8 %15, 15                            ; 3 uses
  %29 = icmp samesign ult i8 %28, 10
  %30 = or disjoint i8 %28, 48
  %31 = add nuw nsw i8 %28, 55
  %32 = select i1 %29, i8 %30, i8 %31
  %33 = getelementptr inbounds nuw i8, ptr %.0104116, i64 12
  store i8 %32, ptr %27, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ag:                                            ; preds = %bb.ae
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ab, %bb.aa
  %.sink133 = phi i64 [ %i.eq, %bb.ah ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.ag ], [ 4, %bb.af ], [ 4, %bb.ad ]
  %.4 = phi ptr [ %i.ep, %bb.ah ], [ %i.ch, %bb.aa ], [ %i.ci, %bb.ab ], [ %i.dw, %bb.ag ], [ %33, %bb.af ], [ %i.cn, %bb.ad ]
  %i.er = getelementptr inbounds i8, ptr %.0117, i64 %.sink133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.backedge
end_hunk_7
