inline.NumInlined: 158
inline.NumDeleted: 41
begin_hunk_0_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a

.lr.ph:                                           ; preds = %bb.a, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit
  %i.c = phi ptr [ %i.em, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %0, %bb.a ] ; 9 uses
  %.060 = phi ptr [ %.1, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %2, %bb.a ] ; 37 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 8 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.n, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 %i.d, ptr %.060, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  %i.ak = icmp sgt i8 %i.ai, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  store i8 92, ptr %.060, align 1, !tbaa !10
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  br label %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit

bb.r:                                             ; preds = %bb.p
  %3 = getelementptr inbounds nuw i8, ptr %.060, i64 2
  store i8 117, ptr %i.al, align 1, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %.060, i64 3
  store i8 48, ptr %3, align 1, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store i8 48, ptr %i.am, align 1, !tbaa !10
  %i.ao = lshr i8 %i.d, 4
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox20normalizeForJsonCastEPKcmPc:bb.a
  %i.at = or disjoint i8 %i.ar, 48
  %i.au = add nuw nsw i8 %i.ar, 55
  %i.av = select i1 %i.as, i8 %i.at, i8 %i.au
  store i8 %i.av, ptr %i.aq, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit

_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.pn = phi i64 [ 1, %bb.o ], [ 2, %bb.q ], [ 6, %bb.r ]
  %.3 = getelementptr inbounds nuw i8, ptr %.060, i64 %.pn
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !7
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0117 = phi ptr [ %0, %.lr.ph ], [ %.0.be, %.backedge ] ; 19 uses
  %.0104116 = phi ptr [ %2, %.lr.ph ], [ %.0104.be, %.backedge ] ; 41 uses
  %i.d = load i8, ptr %.0117, align 1, !tbaa !10  ; 3 uses
  %i.e = icmp eq i8 %i.d, 92
  br i1 %i.e, label %bb.c, label %bb.x, !prof !21
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  store <4 x i8> <i8 92, i8 117, i8 70, i8 70>, ptr %.0104116, align 1, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.0104116, i64 5
  store i8 70, ptr %i.cl, align 1, !tbaa !10
  store i8 68, ptr %i.cm, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cn = icmp ugt i32 %i.cj, 65535
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  %i.ef = or disjoint i8 %i.ed, 48
  %i.eg = add nuw nsw i8 %i.ed, 55
  %i.eh = select i1 %i.ee, i8 %i.ef, i8 %i.eg
  store i8 %i.eh, ptr %i.ec, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ei = trunc nuw i32 %i.cj to i16
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  %i.eu = icmp ult i8 %i.es, -96
  %i.ev = and i8 %i.es, 15                        ; 2 uses
  %i.ew = icmp samesign ult i8 %i.ev, 10
  %i.ex = insertelement <4 x i8> poison, i8 %i.em, i64 0
  %i.ey = insertelement <4 x i8> %i.ex, i8 %i.eq, i64 1
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.et, i64 2
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  %i.fg = insertelement <4 x i1> %i.ff, i1 %i.ew, i64 3
  %i.fh = select <4 x i1> %i.fg, <4 x i8> %i.fb, <4 x i8> %i.fc
  store <4 x i8> %i.fh, ptr %i.ek, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.ag, %bb.af, %bb.ad
  %.pn = phi i64 [ 6, %bb.ad ], [ 12, %bb.af ], [ 6, %bb.ag ]
  %.3 = getelementptr inbounds nuw i8, ptr %.0104116, i64 %.pn
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit.a, !llvm.loop !22

bb.ah:                                            ; preds = %bb.z
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox21normalizeForJsonParseEPKcmPc:bb.a
  %i.fq = sext i32 %i.fi to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit.a

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit.a: ; preds = %bb.ah, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, %bb.ab, %bb.aa
  %.sink133 = phi i64 [ %i.fq, %bb.ah ], [ 4, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ 3, %bb.ab ], [ 2, %bb.aa ]
  %.4 = phi ptr [ %i.fp, %bb.ah ], [ %.3, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %i.ci, %bb.ab ], [ %i.ch, %bb.aa ]
  %i.fr = getelementptr inbounds i8, ptr %.0117, i64 %.sink133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.backedge
end_hunk_10
