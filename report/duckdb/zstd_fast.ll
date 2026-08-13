inline.NumInlined: 495
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_:bb.a
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit:     ; preds = %bb.c, %.thread63.i, %bb.l
  %.3.i = phi i64 [ %i.r, %.thread63.i ], [ %i.ai, %bb.l ], [ %i.j, %bb.c ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.3.i
  %.not = icmp eq ptr %i.aj, %3
  br i1 %.not, label %bb.m, label %bb.y

bb.m:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.3.i ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %bb.n, label %.loopexit.i22

bb.n:                                             ; preds = %bb.m
  %.val60.i37 = load i64, ptr %4, align 1, !tbaa !24 ; 2 uses
  %.val.i38 = load i64, ptr %i.ak, align 1, !tbaa !24 ; 2 uses
  %.not.i39 = icmp eq i64 %.val60.i37, %.val.i38
  br i1 %.not.i39, label %.preheader.i40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = xor i64 %.val.i38, %.val60.i37
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.an, i1 true)
  %i.ap = lshr i64 %i.ao, 3
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49

.preheader.i40:                                   ; preds = %bb.n, %bb.p
  %.pn.i41 = phi ptr [ %.049.i44, %bb.p ], [ %4, %bb.n ]
  %.pn67.i42 = phi ptr [ %.045.i43, %bb.p ], [ %i.ak, %bb.n ]
  %.045.i43 = getelementptr inbounds nuw i8, ptr %.pn67.i42, i64 8 ; 5 uses
  %.049.i44 = getelementptr inbounds nuw i8, ptr %.pn.i41, i64 8 ; 3 uses
  %i.aq = icmp ult ptr %.045.i43, %i.al
  br i1 %i.aq, label %bb.p, label %.loopexit.i22

bb.p:                                             ; preds = %.preheader.i40
  %.049.val.i45 = load i64, ptr %.049.i44, align 1, !tbaa !24 ; 2 uses
  %.045.val.i46 = load i64, ptr %.045.i43, align 1, !tbaa !24 ; 2 uses
  %.not59.i47 = icmp eq i64 %.049.val.i45, %.045.val.i46
  br i1 %.not59.i47, label %.preheader.i40, label %.thread63.i48

.thread63.i48:                                    ; preds = %bb.p
  %i.ar = xor i64 %.045.val.i46, %.049.val.i45
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ar, i1 true)
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %.045.i43, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.ak to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49

.loopexit.i22:                                    ; preds = %.preheader.i40, %bb.m
  %.251.i23 = phi ptr [ %4, %bb.m ], [ %.049.i44, %.preheader.i40 ] ; 4 uses
  %.247.i24 = phi ptr [ %i.ak, %bb.m ], [ %.045.i43, %.preheader.i40 ] ; 5 uses
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -3
  %i.az = icmp ult ptr %.247.i24, %i.ay
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i22
  %.251.val.i35 = load i32, ptr %.251.i23, align 1, !tbaa !3
  %.247.val.i36 = load i32, ptr %.247.i24, align 1, !tbaa !3
  %i.ba = icmp eq i32 %.251.val.i35, %.247.val.i36
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.247.i24, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.251.i23, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i22
  %.352.i25 = phi ptr [ %i.bc, %bb.r ], [ %.251.i23, %bb.q ], [ %.251.i23, %.loopexit.i22 ] ; 4 uses
  %.348.i26 = phi ptr [ %i.bb, %bb.r ], [ %.247.i24, %bb.q ], [ %.247.i24, %.loopexit.i22 ] ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %2, i64 -1
  %i.be = icmp ult ptr %.348.i26, %i.bd
  br i1 %i.be, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.352.val.i33 = load i16, ptr %.352.i25, align 1, !tbaa !36
  %.348.val.i34 = load i16, ptr %.348.i26, align 1, !tbaa !36
  %i.bf = icmp eq i16 %.352.val.i33, %.348.val.i34
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.348.i26, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.352.i25, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i27 = phi ptr [ %i.bh, %bb.u ], [ %.352.i25, %bb.t ], [ %.352.i25, %bb.s ]
  %.4.i28 = phi ptr [ %i.bg, %bb.u ], [ %.348.i26, %bb.t ], [ %.348.i26, %bb.s ] ; 4 uses
  %i.bi = icmp ult ptr %.4.i28, %2
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load i8, ptr %.453.i27, align 1, !tbaa !34
  %i.bk = load i8, ptr %.4.i28, align 1, !tbaa !34
  %i.bl = icmp eq i8 %i.bj, %i.bk
  %spec.select.idx.i31 = zext i1 %i.bl to i64
  %spec.select.i32 = getelementptr inbounds nuw i8, ptr %.4.i28, i64 %spec.select.idx.i31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i29 = phi ptr [ %.4.i28, %bb.v ], [ %spec.select.i32, %bb.w ]
  %i.bm = ptrtoint ptr %.5.i29 to i64
  %i.bn = ptrtoint ptr %i.ak to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49

_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49:   ; preds = %bb.o, %.thread63.i48, %bb.x
  %.3.i30 = phi i64 [ %i.ax, %.thread63.i48 ], [ %i.bo, %bb.x ], [ %i.ap, %bb.o ]
  %i.bp = add i64 %.3.i30, %.3.i
  br label %bb.y

bb.y:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49
  %.0 = phi i64 [ %i.bp, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit49 ], [ %.3.i, %_ZN11duckdb_zstdL10ZSTD_countEPKhS1_S1_.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL39ZSTD_compressBlock_fast_extDict_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmjj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4, 8) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.i = add i32 %i.h, 1
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !142  ; 7 uses
  %i.o = ptrtoint ptr %3 to i64
  %i.p = ptrtoint ptr %i.l to i64                 ; 7 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, %4
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !30
  %i.u = getelementptr i8, ptr %0, i64 28
  %.val423 = load i32, ptr %i.u, align 4, !tbaa !143 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 40
  %.val424 = load i32, ptr %i.v, align 8, !tbaa !32
  %i.w = shl nuw i32 1, %i.t                      ; 2 uses
  %i.x = sub i32 %i.s, %.val423
  %i.y = icmp ugt i32 %i.x, %i.w
  %i.z = sub i32 %i.s, %i.w
  %.not.i425 = icmp eq i32 %.val424, 0
  %i.aa = select i1 %.not.i425, i1 %i.y, i1 false
  %i.ab = select i1 %i.aa, i32 %i.z, i32 %.val423 ; 6 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31 ; 3 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %i.ab) ; 8 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ah ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 8 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.not = icmp ult i32 %i.ab, %i.af
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressBlock_fastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3  ; 3 uses
  %i.ap = load i32, ptr %2, align 4, !tbaa !3     ; 3 uses
  %i.aq = trunc i64 %i.q to i32
  %i.ar = sub i32 %i.aq, %i.ab                    ; 2 uses
  %.not356 = icmp ult i32 %i.ao, %i.ar            ; 2 uses
  %spec.select = select i1 %.not356, i32 0, i32 %i.ao
  %spec.select365 = select i1 %.not356, i32 %i.ao, i32 0 ; 2 uses
  %.not357 = icmp ult i32 %i.ap, %i.ar            ; 2 uses
  %.0294 = select i1 %.not357, i32 0, i32 %i.ap   ; 3 uses
  %.0284 = select i1 %.not357, i32 %i.ap, i32 0   ; 2 uses
  %i.as = add nuw nsw i64 %i.j, 1
  %i.at = add nsw i64 %4, -8
  %.not358565 = icmp slt i64 %i.as, %i.at
  br i1 %.not358565, label %.lr.ph570, label %.loopexit

.lr.ph570:                                        ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = sub i32 32, %i.e                        ; 7 uses
  %i.ax = sub i32 64, %i.e
  %i.ay = zext nneg i32 %i.ax to i64              ; 21 uses
  %i.az = getelementptr inbounds i8, ptr %i.ak, i64 -32 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph570, %.thread473
  %i.bf = phi ptr [ %i.ms, %.thread473 ], [ %i.av, %.lr.ph570 ]
  %i.bg = phi ptr [ %i.mr, %.thread473 ], [ %i.au, %.lr.ph570 ]
  %.1285569 = phi i32 [ %.5, %.thread473 ], [ %.0284, %.lr.ph570 ] ; 7 uses
  %.1289568 = phi i32 [ %.5293, %.thread473 ], [ %spec.select365, %.lr.ph570 ] ; 2 uses
  %.0296566 = phi ptr [ %.8, %.thread473 ], [ %3, %.lr.ph570 ] ; 17 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0296566, i64 1 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0296566, i64 128
  switch i32 %5, label %default.unreachable [
    i32 7, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread452
    i32 5, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread446
    i32 6, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread449
    i32 4, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379
  ]

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread446: ; preds = %bb.d
  %.0296.val393 = load i64, ptr %.0296566, align 1, !tbaa !24
  %i.bj = mul i64 %.0296.val393, -3523014627271114752
  %i.bk = lshr i64 %i.bj, %i.ay
  %.val394 = load i64, ptr %i.bh, align 1, !tbaa !24
  %i.bl = mul i64 %.val394, -3523014627271114752
  %i.bm = lshr i64 %i.bl, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread449: ; preds = %bb.d
  %.0296.val400 = load i64, ptr %.0296566, align 1, !tbaa !24
  %i.bn = mul i64 %.0296.val400, -3523014627193847808
  %i.bo = lshr i64 %i.bn, %i.ay
  %.val401 = load i64, ptr %i.bh, align 1, !tbaa !24
  %i.bp = mul i64 %.val401, -3523014627193847808
  %i.bq = lshr i64 %i.bp, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread452: ; preds = %bb.d
  %.0296.val407 = load i64, ptr %.0296566, align 1, !tbaa !24
  %i.br = mul i64 %.0296.val407, -3523014627193167104
  %i.bs = lshr i64 %i.br, %i.ay
  %.val408 = load i64, ptr %i.bh, align 1, !tbaa !24
  %i.bt = mul i64 %.val408, -3523014627193167104
  %i.bu = lshr i64 %i.bt, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377

.unreachabledefault:                              ; preds = %bb.al, %.thread646, %.thread, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  unreachable

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379:    ; preds = %bb.d
  %.0296.val = load i32, ptr %.0296566, align 1, !tbaa !3
  %i.bv = mul i32 %.0296.val, -1640531535
  %i.bw = lshr i32 %i.bv, %i.aw
  %i.bx = zext i32 %i.bw to i64
  %.val388 = load i32, ptr %i.bh, align 1, !tbaa !3
  %i.by = mul i32 %.val388, -1640531535
  %i.bz = lshr i32 %i.by, %i.aw
  %i.ca = zext i32 %i.bz to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377:    ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread446, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread449, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread452
  %.0.i378444 = phi i64 [ %i.bx, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379 ], [ %i.bs, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread452 ], [ %i.bk, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread446 ], [ %i.bo, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread449 ] ; 2 uses
  %.0.i376 = phi i64 [ %i.ca, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379 ], [ %i.bu, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread452 ], [ %i.bm, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread446 ], [ %i.bq, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit379.thread449 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i378444
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.ag
  %i.ce = select i1 %i.cd, ptr %i.n, ptr %i.l
  %i.cf = icmp ne i32 %.1285569, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.v, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377
  %.0324 = phi i64 [ %i.j, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %.1325, %bb.v ] ; 4 uses
  %.0322 = phi ptr [ %i.bi, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %.1323, %bb.v ] ; 3 uses
  %.0320 = phi ptr [ %i.ce, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %i.eh, %bb.v ] ; 2 uses
  %.0314 = phi i32 [ %i.cc, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %i.ef, %bb.v ] ; 3 uses
  %.0311 = phi i64 [ %.0.i376, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %.0.i372, %bb.v ] ; 3 uses
  %.0310 = phi i64 [ %.0.i378444, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %.0.i374, %bb.v ]
  %.0307 = phi ptr [ %i.bf, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %i.es, %bb.v ] ; 8 uses
  %.0305 = phi ptr [ %i.bg, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %i.er, %bb.v ] ; 11 uses
  %.0302 = phi ptr [ %i.bh, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %.0307, %bb.v ] ; 5 uses
  %.1297 = phi ptr [ %.0296566, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit377 ], [ %.0305, %bb.v ] ; 3 uses
  %i.cg = ptrtoint ptr %.0305 to i64
  %i.ch = sub i64 %i.cg, %i.p
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = sub i32 %i.ci, %.1285569                ; 4 uses
  %i.ck = icmp ult i32 %i.cj, %i.ag               ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.n, ptr %i.l     ; 2 uses
  %i.cm = sub i32 %i.ag, %i.cj
  %i.cn = icmp ugt i32 %i.cm, 3
  %i.co = and i1 %i.cf, %i.cn
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = zext i32 %i.cj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp
  %.val387 = load i32, ptr %i.cq, align 1, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.0305.val386 = load i32, ptr %.0305, align 1, !tbaa !3
  %i.cr = xor i32 %.0305.val386, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0306 = phi i32 [ %.val387, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = ptrtoint ptr %.1297 to i64
  %i.ct = sub i64 %i.cs, %i.p
  %i.cu = trunc i64 %i.ct to i32                  ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0310
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !3
  %.0305.val = load i32, ptr %.0305, align 1, !tbaa !3 ; 2 uses
  %i.cw = icmp eq i32 %.0305.val, %.0306
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i32 %i.cj to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx ; 2 uses
  %i.cz = select i1 %i.ck, ptr %i.aj, ptr %i.ak
  %i.da = getelementptr inbounds i8, ptr %.0305, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !34
  %i.de = icmp eq i8 %i.db, %i.dd                 ; 2 uses
  %.neg = sext i1 %i.de to i64                    ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.0305, i64 %.neg
  %i.dg = getelementptr inbounds i8, ptr %i.cy, i64 %.neg
  %i.dh = select i1 %i.de, i64 5, i64 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %.not359 = icmp ult i32 %.0314, %i.ab
  br i1 %.not359, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.di = zext i32 %.0314 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0320, i64 %i.di
  %.val385 = load i32, ptr %i.dj, align 1, !tbaa !3
  %.2298.val.pre = load i32, ptr %.1297, align 1, !tbaa !3
  %i.dk = icmp eq i32 %.2298.val.pre, %.val385
  br i1 %i.dk, label %bb.w, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0311 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3  ; 4 uses
  %i.dn = icmp ult i32 %i.dm, %i.ag
  %i.do = select i1 %i.dn, ptr %i.n, ptr %i.l     ; 2 uses
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %bb.o
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %.thread
  %i.dp = mul i32 %.0305.val, -1640531535
  %i.dq = lshr i32 %i.dp, %i.aw
  %i.dr = zext i32 %i.dq to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375

bb.m:                                             ; preds = %.thread
  %.0305.val395 = load i64, ptr %.0305, align 1, !tbaa !24
  %i.ds = mul i64 %.0305.val395, -3523014627271114752
  %i.dt = lshr i64 %i.ds, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375

bb.n:                                             ; preds = %.thread
  %.0305.val402 = load i64, ptr %.0305, align 1, !tbaa !24
  %i.du = mul i64 %.0305.val402, -3523014627193847808
  %i.dv = lshr i64 %i.du, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375

bb.o:                                             ; preds = %.thread
  %.0305.val409 = load i64, ptr %.0305, align 1, !tbaa !24
  %i.dw = mul i64 %.0305.val409, -3523014627193167104
  %i.dx = lshr i64 %i.dw, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375:    ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i374 = phi i64 [ %i.dr, %bb.l ], [ %i.dx, %bb.o ], [ %i.dt, %bb.m ], [ %i.dv, %bb.n ] ; 3 uses
  %i.dy = ptrtoint ptr %.0302 to i64
  %i.dz = sub i64 %i.dy, %i.p
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  store i32 %i.ea, ptr %i.dl, align 4, !tbaa !3
  %.not360 = icmp ult i32 %i.dm, %i.ab
  br i1 %.not360, label %.thread646, label %bb.p

bb.p:                                             ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375
  %i.eb = zext i32 %i.dm to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb
  %.val383 = load i32, ptr %i.ec, align 1, !tbaa !3
  %.0302.val.pre = load i32, ptr %.0302, align 1, !tbaa !3
  %i.ed = icmp eq i32 %.0302.val.pre, %.val383
  br i1 %i.ed, label %bb.w, label %.thread646

.thread646:                                       ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit375, %bb.p
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i374
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3  ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.ag
  %i.eh = select i1 %i.eg, ptr %i.n, ptr %i.l
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %bb.t
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 4, label %bb.q
  ]

bb.q:                                             ; preds = %.thread646
  %.0307.val = load i32, ptr %.0307, align 1, !tbaa !3
  %i.ei = mul i32 %.0307.val, -1640531535
  %i.ej = lshr i32 %i.ei, %i.aw
  %i.ek = zext i32 %i.ej to i64
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373

bb.r:                                             ; preds = %.thread646
  %.0307.val396 = load i64, ptr %.0307, align 1, !tbaa !24
  %i.el = mul i64 %.0307.val396, -3523014627271114752
  %i.em = lshr i64 %i.el, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373

bb.s:                                             ; preds = %.thread646
  %.0307.val403 = load i64, ptr %.0307, align 1, !tbaa !24
  %i.en = mul i64 %.0307.val403, -3523014627193847808
  %i.eo = lshr i64 %i.en, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373

bb.t:                                             ; preds = %.thread646
  %.0307.val410 = load i64, ptr %.0307, align 1, !tbaa !24
  %i.ep = mul i64 %.0307.val410, -3523014627193167104
  %i.eq = lshr i64 %i.ep, %i.ay
  br label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373:    ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i372 = phi i64 [ %i.ek, %bb.q ], [ %i.eq, %bb.t ], [ %i.em, %bb.r ], [ %i.eo, %bb.s ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0305, i64 %.0324 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0307, i64 %.0324 ; 2 uses
  %.not363 = icmp ult ptr %i.er, %.0322
  br i1 %.not363, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373
  %i.et = add i64 %.0324, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.0307, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %.0307, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0322, i64 128
  br label %bb.v

bb.v:                                             ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373, %bb.u
  %.1325 = phi i64 [ %i.et, %bb.u ], [ %.0324, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373 ]
  %.1323 = phi ptr [ %i.ew, %bb.u ], [ %.0322, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit373 ]
  %i.ex = icmp ult ptr %i.es, %i.al
  br i1 %i.ex, label %bb.e, label %.loopexit, !llvm.loop !144

.loopexit:                                        ; preds = %.thread473, %bb.v, %bb.c
  %.0296539 = phi ptr [ %.0296566, %bb.v ], [ %3, %bb.c ], [ %.8, %.thread473 ]
  %.1289532 = phi i32 [ %.1289568, %bb.v ], [ %spec.select365, %bb.c ], [ %.5293, %.thread473 ] ; 2 uses
  %.1285525 = phi i32 [ %.1285569, %bb.v ], [ %.0284, %bb.c ], [ %.5, %.thread473 ] ; 2 uses
  %i.ey = icmp ne i32 %.0294, 0
  %i.ez = icmp ne i32 %.1285525, 0                ; 2 uses
  %or.cond = select i1 %i.ey, i1 %i.ez, i1 false
  %i.fa = select i1 %or.cond, i32 %.0294, i32 %spec.select
  %i.fb = select i1 %i.ez, i32 %.1285525, i32 %.0294
  store i32 %i.fb, ptr %2, align 4, !tbaa !3
  %.not364 = icmp eq i32 %.1289532, 0
  %i.fc = select i1 %.not364, i32 %i.fa, i32 %.1289532
  store i32 %i.fc, ptr %i.am, align 4, !tbaa !3
  %i.fd = ptrtoint ptr %i.ak to i64
  %i.fe = ptrtoint ptr %.0296539 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  br label %bb.av

bb.w:                                             ; preds = %bb.p, %bb.k
  %.1321 = phi ptr [ %i.do, %bb.p ], [ %.0320, %bb.k ]
  %.1315 = phi i32 [ %i.dm, %bb.p ], [ %.0314, %bb.k ] ; 3 uses
  %.1312 = phi i64 [ %.0.i374, %bb.p ], [ %.0311, %bb.k ] ; 3 uses
  %.0308 = phi i32 [ %i.ea, %bb.p ], [ %i.cu, %bb.k ] ; 4 uses
  %.1303 = phi ptr [ %.0305, %bb.p ], [ %.0302, %bb.k ] ; 3 uses
  %.3299 = phi ptr [ %.0302, %bb.p ], [ %.1297, %bb.k ] ; 3 uses
  %i.fg = sub i32 %.0308, %.1315                  ; 4 uses
  %i.fh = icmp ugt i32 %i.af, %.1315              ; 2 uses
  %i.fi = select i1 %i.fh, ptr %i.ad, ptr %i.ai   ; 2 uses
  %i.fj = select i1 %i.fh, ptr %i.aj, ptr %i.ak   ; 3 uses
  %i.fk = zext i32 %.1315 to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.1321, i64 %i.fk ; 3 uses
  %i.fm = add i32 %i.fg, 3                        ; 3 uses
  %i.fn = icmp ugt ptr %.3299, %.0296566
  %i.fo = icmp ugt ptr %i.fl, %i.fi
  %i.fp = and i1 %i.fo, %i.fn
  br i1 %i.fp, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %.4300542 = phi ptr [ %i.fq, %bb.x ], [ %.3299, %bb.w ] ; 2 uses
  %.3333541 = phi i64 [ %i.fv, %bb.x ], [ 4, %bb.w ] ; 2 uses
  %.3338540 = phi ptr [ %i.fs, %bb.x ], [ %i.fl, %bb.w ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %.4300542, i64 -1 ; 4 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !34
  %i.fs = getelementptr inbounds i8, ptr %.3338540, i64 -1 ; 4 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !34
  %i.fu = icmp eq i8 %i.fr, %i.ft
  br i1 %i.fu, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.lr.ph
  %i.fv = add i64 %.3333541, 1                    ; 2 uses
  %i.fw = icmp ugt ptr %i.fq, %.0296566
  %i.fx = icmp ugt ptr %i.fs, %i.fi
  %i.fy = and i1 %i.fx, %i.fw
  br i1 %i.fy, label %.lr.ph, label %.critedge, !llvm.loop !145

.critedge:                                        ; preds = %bb.x, %.lr.ph, %bb.w, %bb.i
  %.3343 = phi i32 [ 1, %bb.i ], [ %i.fm, %bb.w ], [ %i.fm, %.lr.ph ], [ %i.fm, %bb.x ]
  %.4339 = phi ptr [ %i.dg, %bb.i ], [ %i.fl, %bb.w ], [ %i.fs, %bb.x ], [ %.3338540, %.lr.ph ]
  %.4334 = phi i64 [ %i.dh, %bb.i ], [ 4, %bb.w ], [ %i.fv, %bb.x ], [ %.3333541, %.lr.ph ] ; 3 uses
  %.3329 = phi ptr [ %i.cz, %bb.i ], [ %i.fj, %bb.w ], [ %i.fj, %.lr.ph ], [ %i.fj, %bb.x ]
  %.2313 = phi i64 [ %.0311, %bb.i ], [ %.1312, %bb.w ], [ %.1312, %.lr.ph ], [ %.1312, %bb.x ]
  %.1309 = phi i32 [ %i.cu, %bb.i ], [ %.0308, %bb.w ], [ %.0308, %.lr.ph ], [ %.0308, %bb.x ] ; 2 uses
  %.2304 = phi ptr [ %.0302, %bb.i ], [ %.1303, %bb.w ], [ %.1303, %.lr.ph ], [ %.1303, %bb.x ] ; 2 uses
  %.5301 = phi ptr [ %i.df, %bb.i ], [ %.3299, %bb.w ], [ %i.fq, %bb.x ], [ %.4300542, %.lr.ph ] ; 6 uses
  %.2290 = phi i32 [ %.1289568, %bb.i ], [ %.1285569, %bb.w ], [ %.1285569, %.lr.ph ], [ %.1285569, %bb.x ] ; 2 uses
  %.2286 = phi i32 [ %.1285569, %bb.i ], [ %i.fg, %bb.w ], [ %i.fg, %.lr.ph ], [ %i.fg, %bb.x ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.5301, i64 %.4334
  %i.ga = getelementptr inbounds nuw i8, ptr %.4339, i64 %.4334
  %i.gb = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef %i.fz, ptr noundef %i.ga, ptr noundef %i.ak, ptr noundef %.3329, ptr noundef nonnull %i.ai)
  %i.gc = add i64 %i.gb, %.4334                   ; 2 uses
  %i.gd = ptrtoint ptr %.5301 to i64              ; 4 uses
  %i.ge = ptrtoint ptr %.0296566 to i64           ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge                    ; 7 uses
  %.not.i380 = icmp ugt ptr %.5301, %i.az
  %i.gg = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 5 uses
  br i1 %.not.i380, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge
  %.0283.val = load <2 x i64>, ptr %.0296566, align 1, !tbaa !34
  store <2 x i64> %.0283.val, ptr %i.gg, align 1, !tbaa !34
  %i.gh = icmp ugt i64 %i.gf, 16
  %i.gi = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 4 uses
  br i1 %i.gh, label %bb.z, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread: ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gf
  store ptr %i.gj, ptr %i.ba, align 8, !tbaa !38
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !42
  br label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %.0296566, i64 16 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gi, i64 %i.gf
  %.val422 = load <2 x i64>, ptr %i.gl, align 1, !tbaa !34
  store <2 x i64> %.val422, ptr %i.gk, align 1, !tbaa !34
  %i.gn = icmp slt i64 %i.gf, 33
  br i1 %i.gn, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.130.i = phi ptr [ %i.go, %bb.aa ], [ %i.gr, %bb.ab ] ; 3 uses
  %.pn.i = phi ptr [ %i.gl, %bb.aa ], [ %i.gq, %bb.ab ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.1.i.val = load <2 x i64>, ptr %.1.i, align 1, !tbaa !34
  store <2 x i64> %.1.i.val, ptr %.130.i, align 1, !tbaa !34
  %i.gp = getelementptr inbounds nuw i8, ptr %.130.i, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val421 = load <2 x i64>, ptr %i.gq, align 1, !tbaa !34
  store <2 x i64> %.val421, ptr %i.gp, align 1, !tbaa !34
  %i.gr = getelementptr inbounds nuw i8, ptr %.130.i, i64 32 ; 2 uses
  %i.gs = icmp ult ptr %i.gr, %i.gm
  br i1 %i.gs, label %bb.ab, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, !llvm.loop !43

bb.ac:                                            ; preds = %.critedge
  %.not.i426 = icmp ugt ptr %.0296566, %i.az
  br i1 %.not.i426, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gt = sub i64 %i.bb, %i.ge                    ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gg, i64 %i.gt ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0296566, align 1, !tbaa !34
  store <2 x i64> %.val19.i, ptr %i.gg, align 1, !tbaa !34
  %i.gv = icmp slt i64 %i.gt, 17
  br i1 %i.gv, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.130.i.i = phi ptr [ %i.gw, %bb.ae ], [ %i.gz, %bb.af ] ; 3 uses
  %.pn.i.i = phi ptr [ %.0296566, %bb.ae ], [ %i.gy, %bb.af ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.1.i.val.i = load <2 x i64>, ptr %.1.i.i, align 1, !tbaa !34
  store <2 x i64> %.1.i.val.i, ptr %.130.i.i, align 1, !tbaa !34
  %i.gx = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.gy, align 1, !tbaa !34
  store <2 x i64> %.val.i, ptr %i.gx, align 1, !tbaa !34
  %i.gz = getelementptr inbounds nuw i8, ptr %.130.i.i, i64 32 ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %i.gu
  br i1 %i.ha, label %bb.af, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, !llvm.loop !43

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL39ZSTD_compressBlock_fast_extDict_genericEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmjj:bb.a
  %i.hb = icmp ult ptr %.014.i, %.5301
  br i1 %i.hb, label %iter.check, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit

iter.check:                                       ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i
  %.014.i45 = ptrtoaddr ptr %.014.i to i64        ; 2 uses
  %.0.i42744 = ptrtoaddr ptr %.0.i427 to i64
  %i.hc = sub i64 %i.gd, %.014.i45                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hc, 4
  %i.hd = sub i64 %.014.i45, %.0.i42744
  %diff.check = icmp ugt i64 %i.hd, -32
  %or.cond59 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond59, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.hc, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.he = and i64 %i.hc, 28
  %n.vec = and i64 %i.hc, -32                     ; 5 uses
  %i.hf = getelementptr i8, ptr %.0.i427, i64 %n.vec
  %i.hg = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i427, i64 %index ; 2 uses
  %next.gep47 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.hh = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep47, align 1, !tbaa !34
  %wide.load48 = load <16 x i8>, ptr %i.hh, align 1, !tbaa !34
  %i.hi = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !34
  store <16 x i8> %wide.load48, ptr %i.hi, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hc, %n.vec
  br i1 %cmp.n, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.he, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.hc, -4                    ; 4 uses
  %i.hk = getelementptr i8, ptr %.0.i427, i64 %n.vec50
  %i.hl = getelementptr i8, ptr %.014.i, i64 %n.vec50
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 3 uses
  %next.gep52 = getelementptr i8, ptr %.0.i427, i64 %index51
  %next.gep53 = getelementptr i8, ptr %.014.i, i64 %index51
  %wide.load54 = load <4 x i8>, ptr %next.gep53, align 1, !tbaa !34
  store <4 x i8> %wide.load54, ptr %next.gep52, align 1, !tbaa !34
  %index.next55 = add nuw i64 %index51, 4         ; 2 uses
  %i.hm = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.hc, %n.vec50
  br i1 %cmp.n56, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i427, %iter.check ], [ %i.hf, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.hg, %vec.epilog.iter.check ], [ %i.hl, %vec.epilog.middle.block ] ; 3 uses
  %.11520.i.ph103 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.hn = sub i64 %i.gd, %.11520.i.ph103
  %xtraiter = and i64 %i.hn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.121.i.prol = phi ptr [ %i.hq, %.lr.ph.i.prol ], [ %.121.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ho, %.lr.ph.i.prol ], [ %.11520.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.hp = load i8, ptr %.11520.i.prol, align 1, !tbaa !34
  %i.hq = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.hp, ptr %.121.i.prol, align 1, !tbaa !34
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !148

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i.preheader ], [ %i.hq, %.lr.ph.i.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i.preheader ], [ %i.ho, %.lr.ph.i.prol ]
  %i.hr = sub i64 %.11520.i.ph103, %i.gd
  %i.hs = icmp ugt i64 %i.hr, -8
  br i1 %i.hs, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.121.i = phi ptr [ %i.iq, %.lr.ph.i ], [ %.121.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.io, %.lr.ph.i ], [ %.11520.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.hu = load i8, ptr %.11520.i, align 1, !tbaa !34
  %i.hv = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.hu, ptr %.121.i, align 1, !tbaa !34
  %i.hw = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !34
  %i.hy = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !34
  %i.hz = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.ia = load i8, ptr %i.hw, align 1, !tbaa !34
  %i.ib = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !34
  %i.ic = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.id = load i8, ptr %i.hz, align 1, !tbaa !34
  %i.ie = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !34
  %i.if = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.ig = load i8, ptr %i.ic, align 1, !tbaa !34
  %i.ih = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !34
  %i.ii = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !34
  %i.ik = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.ij, ptr %i.ih, align 1, !tbaa !34
  %i.il = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !34
  %i.in = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.im, ptr %i.ik, align 1, !tbaa !34
  %i.io = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.ip = load i8, ptr %i.il, align 1, !tbaa !34
  %i.iq = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.ip, ptr %i.in, align 1, !tbaa !34
  %exitcond.not.i.7 = icmp eq ptr %i.io, %.5301
  br i1 %exitcond.not.i.7, label %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit, label %.lr.ph.i, !llvm.loop !149

_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit: ; preds = %bb.ab, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.i, %bb.z
  %i.ir = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.gf
  store ptr %i.is, ptr %i.ba, align 8, !tbaa !38
  %i.it = icmp ugt i64 %i.gf, 65535
  %.pre627 = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 3 uses
  br i1 %i.it, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  store i32 1, ptr %i.bc, align 8, !tbaa !52
  %i.iu = load ptr, ptr %1, align 8, !tbaa !53
  %i.iv = ptrtoint ptr %.pre627 to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = lshr exact i64 %i.ix, 3
  %i.iz = trunc i64 %i.iy to i32
  store i32 %i.iz, ptr %i.be, align 4, !tbaa !54
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread, %bb.ag, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit
  %i.ja = phi ptr [ %.pre, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit.thread ], [ %.pre627, %bb.ag ], [ %.pre627, %_ZN11duckdb_zstdL13ZSTD_wildcopyEPvPKvlNS_14ZSTD_overlap_eE.exit ] ; 5 uses
  %i.jb = trunc i64 %i.gf to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i16 %i.jb, ptr %i.jc, align 4, !tbaa !55
  store i32 %.3343, ptr %i.ja, align 4, !tbaa !57
  %i.jd = add i64 %i.gc, -3                       ; 2 uses
  %i.je = icmp ugt i64 %i.jd, 65535
  br i1 %i.je, label %bb.ai, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit381

bb.ai:                                            ; preds = %bb.ah
  store i32 2, ptr %i.bc, align 8, !tbaa !52
  %i.jf = load ptr, ptr %1, align 8, !tbaa !53
  %i.jg = ptrtoint ptr %i.ja to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = lshr exact i64 %i.ji, 3
  %i.jk = trunc i64 %i.jj to i32
  store i32 %i.jk, ptr %i.be, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit381

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit381: ; preds = %bb.ah, %bb.ai
  %i.jl = trunc i64 %i.jd to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 6
  store i16 %i.jl, ptr %i.jm, align 2, !tbaa !58
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 2 uses
  store ptr %i.jn, ptr %i.bd, align 8, !tbaa !42
  %i.jo = getelementptr inbounds nuw i8, ptr %.5301, i64 %i.gc ; 8 uses
  %i.jp = icmp ult ptr %.2304, %i.jo
  br i1 %i.jp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit381
  %i.jq = ptrtoint ptr %.2304 to i64
  %i.jr = sub i64 %i.jq, %i.p
  %i.js = trunc i64 %i.jr to i32
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.2313
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit381
  %.not361 = icmp ugt ptr %i.jo, %i.al
  br i1 %.not361, label %.thread473, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ju = add i32 %.1309, 2                       ; 4 uses
  %i.jv = zext i32 %.1309 to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 4 uses
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread471
    i32 5, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread467
    i32 6, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread469
    i32 4, label %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371
  ]

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread467: ; preds = %bb.al
  %.val397 = load i64, ptr %i.jx, align 1, !tbaa !24
  %i.jy = mul i64 %.val397, -3523014627271114752
  %i.jz = lshr i64 %i.jy, %i.ay
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jz
  store i32 %i.ju, ptr %i.ka, align 4, !tbaa !3
  %i.kb = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val398 = load i64, ptr %i.kb, align 1, !tbaa !24
  %i.kc = mul i64 %.val398, -3523014627271114752
  %i.kd = lshr i64 %i.kc, %i.ay
  br label %.lr.ph553.preheader

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread469: ; preds = %bb.al
  %.val404 = load i64, ptr %i.jx, align 1, !tbaa !24
  %i.ke = mul i64 %.val404, -3523014627193847808
  %i.kf = lshr i64 %i.ke, %i.ay
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kf
  store i32 %i.ju, ptr %i.kg, align 4, !tbaa !3
  %i.kh = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val405 = load i64, ptr %i.kh, align 1, !tbaa !24
  %i.ki = mul i64 %.val405, -3523014627193847808
  %i.kj = lshr i64 %i.ki, %i.ay
  br label %.lr.ph553.preheader

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread471: ; preds = %bb.al
  %.val411 = load i64, ptr %i.jx, align 1, !tbaa !24
  %i.kk = mul i64 %.val411, -3523014627193167104
  %i.kl = lshr i64 %i.kk, %i.ay
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kl
  store i32 %i.ju, ptr %i.km, align 4, !tbaa !3
  %i.kn = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val412 = load i64, ptr %i.kn, align 1, !tbaa !24
  %i.ko = mul i64 %.val412, -3523014627193167104
  %i.kp = lshr i64 %i.ko, %i.ay
  br label %.lr.ph553.preheader

_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371:    ; preds = %bb.al
  %.val390 = load i32, ptr %i.jx, align 1, !tbaa !3
  %i.kq = mul i32 %.val390, -1640531535
  %i.kr = lshr i32 %i.kq, %i.aw
  %i.ks = zext i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ks
  store i32 %i.ju, ptr %i.kt, align 4, !tbaa !3
  %i.ku = getelementptr inbounds i8, ptr %i.jo, i64 -2 ; 2 uses
  %.val391 = load i32, ptr %i.ku, align 1, !tbaa !3
  %i.kv = mul i32 %.val391, -1640531535
  %i.kw = lshr i32 %i.kv, %i.aw
  %i.kx = zext i32 %i.kw to i64
  br label %.lr.ph553.preheader

.lr.ph553.preheader:                              ; preds = %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread471, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread469, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread467, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371
  %.pn.in = phi ptr [ %i.ku, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371 ], [ %i.kn, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread471 ], [ %i.kb, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread467 ], [ %i.kh, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread469 ]
  %.0.i368 = phi i64 [ %i.kx, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371 ], [ %i.kp, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread471 ], [ %i.kd, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread467 ], [ %i.kj, %_ZN11duckdb_zstdL12ZSTD_hashPtrEPKvjj.exit371.thread469 ]
  %.pn = ptrtoint ptr %.pn.in to i64
  %.in = sub i64 %.pn, %i.p
  %i.ky = trunc i64 %.in to i32
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i368
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !3
  br label %.lr.ph553

.lr.ph553:                                        ; preds = %.lr.ph553.preheader, %bb.au
  %i.la = phi ptr [ %i.me, %bb.au ], [ %i.jn, %.lr.ph553.preheader ]
  %.3287552 = phi i32 [ %.3291551, %bb.au ], [ %.2286, %.lr.ph553.preheader ] ; 4 uses
  %.3291551 = phi i32 [ %.3287552, %bb.au ], [ %.2290, %.lr.ph553.preheader ] ; 6 uses
  %.6550 = phi ptr [ %i.mq, %bb.au ], [ %i.jo, %.lr.ph553.preheader ] ; 12 uses
  %i.lb = ptrtoint ptr %.6550 to i64
  %i.lc = sub i64 %i.lb, %i.p
  %i.ld = trunc i64 %i.lc to i32                  ; 2 uses
  %i.le = sub i32 %i.ld, %.3291551                ; 3 uses
  %i.lf = icmp ult i32 %i.le, %i.ag               ; 2 uses
  %i.lg = zext i32 %i.le to i64
  %.v = select i1 %i.lf, ptr %i.n, ptr %i.l
  %i.lh = getelementptr inbounds nuw i8, ptr %.v, i64 %i.lg ; 2 uses
  %i.li = sub i32 %i.le, %i.ag
  %i.lj = icmp ult i32 %i.li, -3
  %i.lk = icmp ne i32 %.3291551, 0
  %i.ll = and i1 %i.lk, %i.lj
  br i1 %i.ll, label %bb.am, label %.thread473

bb.am:                                            ; preds = %.lr.ph553
  %.val = load i32, ptr %i.lh, align 1, !tbaa !3
  %.6.val = load i32, ptr %.6550, align 1, !tbaa !3
  %i.lm = icmp eq i32 %.val, %.6.val
  br i1 %i.lm, label %bb.an, label %.thread473

bb.an:                                            ; preds = %bb.am
  %i.ln = select i1 %i.lf, ptr %i.aj, ptr %i.ak
  %i.lo = getelementptr inbounds nuw i8, ptr %.6550, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lq = tail call fastcc noundef i64 @_ZN11duckdb_zstdL20ZSTD_count_2segmentsEPKhS1_S1_S1_S1_(ptr noundef nonnull %i.lo, ptr noundef nonnull %i.lp, ptr noundef %i.ak, ptr noundef %i.ln, ptr noundef nonnull %i.ai) ; 2 uses
  %.not.i = icmp ugt ptr %.6550, %i.az
  br i1 %.not.i, label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit442, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lr = load ptr, ptr %i.ba, align 8, !tbaa !38
  %.1.val = load <2 x i64>, ptr %.6550, align 1, !tbaa !34
  store <2 x i64> %.1.val, ptr %i.lr, align 1, !tbaa !34
  %.pre628 = load ptr, ptr %i.bd, align 8, !tbaa !42
  br label %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit442

_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit442: ; preds = %bb.an, %bb.ao
  %i.ls = phi ptr [ %i.la, %bb.an ], [ %.pre628, %bb.ao ] ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store i16 0, ptr %i.lt, align 4, !tbaa !55
  store i32 1, ptr %i.ls, align 4, !tbaa !57
  %i.lu = add i64 %i.lq, 1                        ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, 65535
  br i1 %i.lv, label %bb.ap, label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit

bb.ap:                                            ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit442
  store i32 2, ptr %i.bc, align 8, !tbaa !52
  %i.lw = load ptr, ptr %1, align 8, !tbaa !53
  %i.lx = ptrtoint ptr %i.ls to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly
  %i.ma = lshr exact i64 %i.lz, 3
  %i.mb = trunc i64 %i.ma to i32
  store i32 %i.mb, ptr %i.be, align 4, !tbaa !54
  br label %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit

_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit: ; preds = %_ZN11duckdb_zstdL21ZSTD_safecopyLiteralsEPhPKhS2_S2_.exit442, %bb.ap
  %i.mc = trunc i64 %i.lu to i16
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 6
  store i16 %i.mc, ptr %i.md, align 2, !tbaa !58
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 8 ; 2 uses
  store ptr %i.me, ptr %i.bd, align 8, !tbaa !42
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %bb.at
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 4, label %bb.aq
  ]

bb.aq:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val392 = load i32, ptr %.6550, align 1, !tbaa !3
  %i.mf = mul i32 %.6.val392, -1640531535
  %i.mg = lshr i32 %i.mf, %i.aw
  %i.mh = zext i32 %i.mg to i64
  br label %bb.au

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val399 = load i64, ptr %.6550, align 1, !tbaa !24
  %i.mi = mul i64 %.6.val399, -3523014627271114752
  %i.mj = lshr i64 %i.mi, %i.ay
  br label %bb.au

bb.as:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val406 = load i64, ptr %.6550, align 1, !tbaa !24
  %i.mk = mul i64 %.6.val406, -3523014627193847808
  %i.ml = lshr i64 %i.mk, %i.ay
  br label %bb.au

bb.at:                                            ; preds = %_ZN11duckdb_zstdL13ZSTD_storeSeqEPNS_10seqStore_tEmPKhS3_jm.exit
  %.6.val413 = load i64, ptr %.6550, align 1, !tbaa !24
  %i.mm = mul i64 %.6.val413, -3523014627193167104
  %i.mn = lshr i64 %i.mm, %i.ay
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0.i = phi i64 [ %i.mh, %bb.aq ], [ %i.mn, %bb.at ], [ %i.mj, %bb.ar ], [ %i.ml, %bb.as ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i
  store i32 %i.ld, ptr %i.mo, align 4, !tbaa !3
  %i.mp = getelementptr i8, ptr %.6550, i64 %i.lq
  %i.mq = getelementptr i8, ptr %i.mp, i64 4      ; 3 uses
  %.not362 = icmp ugt ptr %i.mq, %i.al
  br i1 %.not362, label %.thread473, label %.lr.ph553

.thread473:                                       ; preds = %bb.au, %bb.am, %.lr.ph553, %bb.ak
  %.8 = phi ptr [ %i.jo, %bb.ak ], [ %i.mq, %bb.au ], [ %.6550, %bb.am ], [ %.6550, %.lr.ph553 ] ; 3 uses
  %.5293 = phi i32 [ %.2290, %bb.ak ], [ %.3287552, %bb.au ], [ %.3291551, %bb.am ], [ %.3291551, %.lr.ph553 ] ; 2 uses
  %.5 = phi i32 [ %.2286, %bb.ak ], [ %.3291551, %bb.au ], [ %.3287552, %bb.am ], [ %.3287552, %.lr.ph553 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.8, i64 %i.j ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1 ; 2 uses
  %.not358 = icmp ult ptr %i.ms, %i.al
  br i1 %.not358, label %bb.d, label %.loopexit

bb.av:                                            ; preds = %.loopexit, %bb.b
  %.0 = phi i64 [ %i.an, %bb.b ], [ %i.ff, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!7 = !{!8, !13, i64 112}
!8 = !{!"_ZTSN11duckdb_zstd17ZSTD_matchState_tE", !9, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !10, i64 56, !5, i64 64, !12, i64 96, !4, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !4, i64 136, !4, i64 140, !14, i64 144, !17, i64 248, !18, i64 256, !11, i64 288, !4, i64 296, !4, i64 300}
!9 = !{!"_ZTSN11duckdb_zstd13ZSTD_window_tE", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!"_ZTSN11duckdb_zstd10optState_tE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !11, i64 32, !11, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !15, i64 80, !11, i64 88, !16, i64 96}
!15 = !{!"_ZTSN11duckdb_zstd15ZSTD_OptPrice_eE", !5, i64 0}
!16 = !{!"_ZTSN11duckdb_zstd18ZSTD_paramSwitch_eE", !5, i64 0}
!17 = !{!"p1 _ZTSN11duckdb_zstd17ZSTD_matchState_tE", !11, i64 0}
!18 = !{!"_ZTSN11duckdb_zstd26ZSTD_compressionParametersE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !19, i64 24}
!19 = !{!"_ZTSN11duckdb_zstd13ZSTD_strategyE", !5, i64 0}
!20 = !{!18, !4, i64 16}
!21 = !{!8, !10, i64 8}
!22 = !{!8, !4, i64 44}
!23 = !{!18, !4, i64 8}
!24 = !{!12, !12, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!8, !4, i64 272}
!29 = !{!8, !4, i64 276}
!30 = !{!18, !4, i64 0}
!31 = !{!8, !4, i64 24}
!32 = !{!8, !4, i64 40}
!33 = distinct !{!33, !26}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !26}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!39, !10, i64 24}
!39 = !{!"_ZTSN11duckdb_zstd10seqStore_tE", !40, i64 0, !40, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !12, i64 56, !12, i64 64, !41, i64 72, !4, i64 76}
!40 = !{!"p1 _ZTSN11duckdb_zstd8seqDef_sE", !11, i64 0}
!41 = !{!"_ZTSN11duckdb_zstd21ZSTD_longLengthType_eE", !5, i64 0}
!42 = !{!39, !40, i64 8}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 28}
!48 = distinct !{!48, !26, !45, !46}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !26, !45}
!52 = !{!39, !41, i64 72}
!53 = !{!39, !40, i64 0}
!54 = !{!39, !4, i64 76}
!55 = !{!56, !37, i64 4}
!56 = !{!"_ZTSN11duckdb_zstd8seqDef_sE", !4, i64 0, !37, i64 4, !37, i64 6}
!57 = !{!56, !4, i64 0}
!58 = !{!56, !37, i64 6}
!59 = distinct !{!59, !26, !45, !46}
!60 = distinct !{!60, !26, !45, !46}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !26, !45}
!63 = distinct !{!63, !26, !45, !46}
!64 = distinct !{!64, !26, !45, !46}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !26, !45}
!67 = distinct !{!67, !26, !45, !46}
!68 = distinct !{!68, !26, !45, !46}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !26, !45}
!71 = distinct !{!71, !26, !45, !46}
!72 = distinct !{!72, !26, !45, !46}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !26, !45}
!75 = distinct !{!75, !26, !45, !46}
!76 = distinct !{!76, !26, !45, !46}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !26, !45}
!79 = distinct !{!79, !26, !45, !46}
!80 = distinct !{!80, !26, !45, !46}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !26, !45}
!83 = distinct !{!83, !26, !45, !46}
!84 = distinct !{!84, !26, !45, !46}
!85 = distinct !{!85, !50}
!86 = distinct !{!86, !26, !45}
!87 = !{!18, !4, i64 20}
!88 = !{!8, !17, i64 248}
!89 = !{!8, !10, i64 0}
!90 = !{!8, !4, i64 296}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26, !45, !46}
!93 = distinct !{!93, !26, !45, !46}
!94 = distinct !{!94, !50}
!95 = distinct !{!95, !26, !45}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26, !45, !46}
!98 = distinct !{!98, !26, !45, !46}
!99 = distinct !{!99, !50}
!100 = distinct !{!100, !26, !45}
!101 = distinct !{!101, !26}
!102 = distinct !{!102, !26, !45, !46}
!103 = distinct !{!103, !26, !45, !46}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !26, !45}
!106 = distinct !{!106, !26, !45, !46}
!107 = distinct !{!107, !26, !45, !46}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !26, !45}
!110 = distinct !{!110, !26, !45, !46}
!111 = distinct !{!111, !26, !45, !46}
!112 = distinct !{!112, !50}
!113 = distinct !{!113, !26, !45}
!114 = distinct !{!114, !26, !45, !46}
!115 = distinct !{!115, !26, !45, !46}
!116 = distinct !{!116, !50}
!117 = distinct !{!117, !26, !45}
!118 = distinct !{!118, !26, !45, !46}
!119 = distinct !{!119, !26, !45, !46}
!120 = distinct !{!120, !50}
!121 = distinct !{!121, !26, !45}
!122 = distinct !{!122, !26, !45, !46}
!123 = distinct !{!123, !26, !45, !46}
!124 = distinct !{!124, !50}
!125 = distinct !{!125, !26, !45}
!126 = distinct !{!126, !26, !45, !46}
!127 = distinct !{!127, !26, !45, !46}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !26, !45}
!130 = distinct !{!130, !26, !45, !46}
end_hunk_1
