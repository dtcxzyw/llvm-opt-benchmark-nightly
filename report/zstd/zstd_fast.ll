Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_fast?download=true
inline.NumInlined: 470
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ZSTD_count_2segments:bb.a
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !32
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !32
  %i.z = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i = phi ptr [ %i.aa, %bb.i ], [ %.352.i, %bb.h ], [ %.352.i, %bb.g ] ; 4 uses
  %.4.i = phi ptr [ %i.ab, %bb.i ], [ %.348.i, %bb.h ], [ %.348.i, %bb.g ]
  %i.ac = icmp ult ptr %.453.i, %.
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i8, ptr %.4.i, align 1, !tbaa !30
  %i.ae = load i8, ptr %.453.i, align 1, !tbaa !30
  %i.af = icmp eq i8 %i.ad, %i.ae
  %spec.select.idx.i = zext i1 %i.af to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i = phi ptr [ %.453.i, %bb.j ], [ %spec.select.i, %bb.k ]
  %i.ag = ptrtoint ptr %.5.i to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.c, %.thread63.i, %bb.l
  %.3.i = phi i64 [ %i.r, %.thread63.i ], [ %i.ai, %bb.l ], [ %i.j, %bb.c ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.3.i
  %.not = icmp eq ptr %i.aj, %3
  br i1 %.not, label %bb.m, label %bb.y

bb.m:                                             ; preds = %ZSTD_count.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.3.i ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  br i1 %i.am, label %bb.n, label %.loopexit.i22

bb.n:                                             ; preds = %bb.m
  %.val60.i37 = load i64, ptr %4, align 1, !tbaa !21 ; 2 uses
  %.val.i38 = load i64, ptr %i.ak, align 1, !tbaa !21 ; 2 uses
  %.not.i39 = icmp eq i64 %.val60.i37, %.val.i38
  br i1 %.not.i39, label %.preheader.i40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = xor i64 %.val.i38, %.val60.i37
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.an, i1 true)
  %i.ap = lshr i64 %i.ao, 3
  br label %ZSTD_count.exit49

.preheader.i40:                                   ; preds = %bb.n, %bb.p
  %.pn.i41 = phi ptr [ %.049.i44, %bb.p ], [ %i.ak, %bb.n ]
  %.pn67.i42 = phi ptr [ %.045.i43, %bb.p ], [ %4, %bb.n ]
  %.045.i43 = getelementptr inbounds nuw i8, ptr %.pn67.i42, i64 8 ; 3 uses
  %.049.i44 = getelementptr inbounds nuw i8, ptr %.pn.i41, i64 8 ; 5 uses
  %i.aq = icmp ult ptr %.049.i44, %i.al
  br i1 %i.aq, label %bb.p, label %.loopexit.i22

bb.p:                                             ; preds = %.preheader.i40
  %.045.val.i45 = load i64, ptr %.045.i43, align 1, !tbaa !21 ; 2 uses
  %.049.val.i46 = load i64, ptr %.049.i44, align 1, !tbaa !21 ; 2 uses
  %.not59.i47 = icmp eq i64 %.045.val.i45, %.049.val.i46
  br i1 %.not59.i47, label %.preheader.i40, label %.thread63.i48

.thread63.i48:                                    ; preds = %bb.p
  %i.ar = xor i64 %.049.val.i46, %.045.val.i45
  %i.as = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ar, i1 true)
  %i.at = lshr i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %.049.i44, i64 %i.at
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.ak to i64
  %i.ax = sub i64 %i.av, %i.aw
  br label %ZSTD_count.exit49

.loopexit.i22:                                    ; preds = %.preheader.i40, %bb.m
  %.251.i23 = phi ptr [ %i.ak, %bb.m ], [ %.049.i44, %.preheader.i40 ] ; 5 uses
  %.247.i24 = phi ptr [ %4, %bb.m ], [ %.045.i43, %.preheader.i40 ] ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -3
  %i.az = icmp ult ptr %.251.i23, %i.ay
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.loopexit.i22
  %.247.val.i35 = load i32, ptr %.247.i24, align 1, !tbaa !22
  %.251.val.i36 = load i32, ptr %.251.i23, align 1, !tbaa !22
  %i.ba = icmp eq i32 %.247.val.i35, %.251.val.i36
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.251.i23, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.247.i24, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.loopexit.i22
  %.352.i25 = phi ptr [ %i.bb, %bb.r ], [ %.251.i23, %bb.q ], [ %.251.i23, %.loopexit.i22 ] ; 5 uses
  %.348.i26 = phi ptr [ %i.bc, %bb.r ], [ %.247.i24, %bb.q ], [ %.247.i24, %.loopexit.i22 ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %2, i64 -1
  %i.be = icmp ult ptr %.352.i25, %i.bd
  br i1 %i.be, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.348.val.i33 = load i16, ptr %.348.i26, align 1, !tbaa !32
  %.352.val.i34 = load i16, ptr %.352.i25, align 1, !tbaa !32
  %i.bf = icmp eq i16 %.348.val.i33, %.352.val.i34
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.352.i25, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.348.i26, i64 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.453.i27 = phi ptr [ %i.bg, %bb.u ], [ %.352.i25, %bb.t ], [ %.352.i25, %bb.s ] ; 4 uses
  %.4.i28 = phi ptr [ %i.bh, %bb.u ], [ %.348.i26, %bb.t ], [ %.348.i26, %bb.s ]
  %i.bi = icmp ult ptr %.453.i27, %2
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load i8, ptr %.4.i28, align 1, !tbaa !30
  %i.bk = load i8, ptr %.453.i27, align 1, !tbaa !30
  %i.bl = icmp eq i8 %i.bj, %i.bk
  %spec.select.idx.i31 = zext i1 %i.bl to i64
  %spec.select.i32 = getelementptr inbounds nuw i8, ptr %.453.i27, i64 %spec.select.idx.i31
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i29 = phi ptr [ %.453.i27, %bb.v ], [ %spec.select.i32, %bb.w ]
  %i.bm = ptrtoint ptr %.5.i29 to i64
  %i.bn = ptrtoint ptr %i.ak to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %ZSTD_count.exit49

ZSTD_count.exit49:                                ; preds = %bb.o, %.thread63.i48, %bb.x
  %.3.i30 = phi i64 [ %i.ax, %.thread63.i48 ], [ %i.bo, %bb.x ], [ %i.ap, %bb.o ]
  %i.bp = add i64 %.3.i30, %.3.i
  br label %bb.y

bb.y:                                             ; preds = %ZSTD_count.exit, %ZSTD_count.exit49
  %.0 = phi i64 [ %i.bp, %ZSTD_count.exit49 ], [ %.3.i, %ZSTD_count.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_fast_extDict_generic(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4, 8) %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.i = add i32 %i.h, 1
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149  ; 7 uses
  %i.o = ptrtoint ptr %3 to i64
  %i.p = ptrtoint ptr %i.l to i64                 ; 7 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, %4
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !150
  %i.u = getelementptr i8, ptr %0, i64 28
  %.val426 = load i32, ptr %i.u, align 4, !tbaa !151 ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 40
  %.val427 = load i32, ptr %i.v, align 8, !tbaa !27
  %i.w = shl nuw i32 1, %i.t                      ; 2 uses
  %i.x = sub i32 %i.s, %.val426
  %i.y = icmp ugt i32 %i.x, %i.w
  %i.z = sub i32 %i.s, %i.w
  %.not.i428 = icmp eq i32 %.val427, 0
  %i.aa = select i1 %.not.i428, i1 %i.y, i1 false
  %i.ab = select i1 %i.aa, i32 %i.z, i32 %.val426 ; 6 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
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
  %i.an = tail call i64 @ZSTD_compressBlock_fast(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i64 noundef %4)
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !22 ; 3 uses
  %i.ap = load i32, ptr %2, align 4, !tbaa !22    ; 5 uses
  %i.aq = trunc i64 %i.q to i32
  %i.ar = sub i32 %i.aq, %i.ab                    ; 2 uses
  %.not356 = icmp ult i32 %i.ao, %i.ar            ; 2 uses
  %spec.select = select i1 %.not356, i32 %i.ao, i32 0 ; 2 uses
  %spec.select368 = select i1 %.not356, i32 0, i32 %i.ao
  %.not357 = icmp uge i32 %i.ap, %i.ar            ; 3 uses
  %6 = icmp ne i32 %i.ap, 0
  %.0334 = select i1 %.not357, i32 0, i32 %i.ap   ; 2 uses
  %.0327 = and i1 %.not357, %6
  %.0327.a = select i1 %.not357, i32 %i.ap, i32 0
  %i.as = add nuw nsw i64 %i.j, 1
  %i.at = add nsw i64 %4, -8
  %.not358567 = icmp slt i64 %i.as, %i.at
  br i1 %.not358567, label %.lr.ph571, label %.loopexit

.lr.ph571:                                        ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = sub i32 32, %i.e                        ; 7 uses
  %i.ax = sub i32 64, %i.e
  %i.ay = zext nneg i32 %i.ax to i64              ; 21 uses
  %i.az = getelementptr inbounds i8, ptr %i.ak, i64 -32 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph571, %.thread
  %i.bf = phi ptr [ %i.av, %.lr.ph571 ], [ %i.mq, %.thread ]
  %i.bg = phi ptr [ %i.au, %.lr.ph571 ], [ %i.mp, %.thread ]
  %.1329570 = phi i32 [ %spec.select, %.lr.ph571 ], [ %.5333, %.thread ] ; 2 uses
  %.1335569 = phi i32 [ %.0334, %.lr.ph571 ], [ %.5339, %.thread ] ; 7 uses
  %.0340568 = phi ptr [ %3, %.lr.ph571 ], [ %.3343, %.thread ] ; 17 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0340568, i64 1 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0340568, i64 128
  switch i32 %5, label %.unreachabledefault [
    i32 7, label %ZSTD_hashPtr.exit381.thread455
    i32 5, label %ZSTD_hashPtr.exit381.thread449
    i32 6, label %ZSTD_hashPtr.exit381.thread452
    i32 4, label %ZSTD_hashPtr.exit381
  ]

ZSTD_hashPtr.exit381.thread449:                   ; preds = %bb.d
  %.0321.val396 = load i64, ptr %.0340568, align 1, !tbaa !21
  %i.bj = mul i64 %.0321.val396, -3523014627271114752
  %i.bk = lshr i64 %i.bj, %i.ay
  %.val397 = load i64, ptr %i.bh, align 1, !tbaa !21
  %i.bl = mul i64 %.val397, -3523014627271114752
  %i.bm = lshr i64 %i.bl, %i.ay
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit381.thread452:                   ; preds = %bb.d
  %.0321.val403 = load i64, ptr %.0340568, align 1, !tbaa !21
  %i.bn = mul i64 %.0321.val403, -3523014627193847808
  %i.bo = lshr i64 %i.bn, %i.ay
  %.val404 = load i64, ptr %i.bh, align 1, !tbaa !21
  %i.bp = mul i64 %.val404, -3523014627193847808
  %i.bq = lshr i64 %i.bp, %i.ay
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit381.thread455:                   ; preds = %bb.d
  %.0321.val410 = load i64, ptr %.0340568, align 1, !tbaa !21
  %i.br = mul i64 %.0321.val410, -3523014627193167104
  %i.bs = lshr i64 %i.br, %i.ay
  %.val411 = load i64, ptr %i.bh, align 1, !tbaa !21
  %i.bt = mul i64 %.val411, -3523014627193167104
  %i.bu = lshr i64 %i.bt, %i.ay
  br label %ZSTD_hashPtr.exit379

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %bb.al, %.thread647, %.thread645, %ZSTD_storeSeqOnly.exit384
  unreachable

ZSTD_hashPtr.exit381:                             ; preds = %bb.d
  %.0321.val = load i32, ptr %.0340568, align 1, !tbaa !22
  %i.bv = mul i32 %.0321.val, -1640531535
  %i.bw = lshr i32 %i.bv, %i.aw
  %i.bx = zext i32 %i.bw to i64
  %.val391 = load i32, ptr %i.bh, align 1, !tbaa !22
  %i.by = mul i32 %.val391, -1640531535
  %i.bz = lshr i32 %i.by, %i.aw
  %i.ca = zext i32 %i.bz to i64
  br label %ZSTD_hashPtr.exit379

ZSTD_hashPtr.exit379:                             ; preds = %ZSTD_hashPtr.exit381, %ZSTD_hashPtr.exit381.thread449, %ZSTD_hashPtr.exit381.thread452, %ZSTD_hashPtr.exit381.thread455
  %.0.i380447 = phi i64 [ %i.bx, %ZSTD_hashPtr.exit381 ], [ %i.bs, %ZSTD_hashPtr.exit381.thread455 ], [ %i.bk, %ZSTD_hashPtr.exit381.thread449 ], [ %i.bo, %ZSTD_hashPtr.exit381.thread452 ] ; 2 uses
  %.0.i378 = phi i64 [ %i.ca, %ZSTD_hashPtr.exit381 ], [ %i.bu, %ZSTD_hashPtr.exit381.thread455 ], [ %i.bm, %ZSTD_hashPtr.exit381.thread449 ], [ %i.bq, %ZSTD_hashPtr.exit381.thread452 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i380447
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22 ; 2 uses
  %i.cd = icmp ult i32 %i.cc, %i.ag
  %i.ce = select i1 %i.cd, ptr %i.n, ptr %i.l
  %i.cf = icmp ne i32 %.1335569, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.v, %ZSTD_hashPtr.exit379
  %.1322 = phi ptr [ %.0340568, %ZSTD_hashPtr.exit379 ], [ %.0317, %bb.v ] ; 3 uses
  %.0318 = phi ptr [ %i.bh, %ZSTD_hashPtr.exit379 ], [ %.0316, %bb.v ] ; 5 uses
  %.0317 = phi ptr [ %i.bg, %ZSTD_hashPtr.exit379 ], [ %i.er, %bb.v ] ; 11 uses
  %.0316 = phi ptr [ %i.bf, %ZSTD_hashPtr.exit379 ], [ %i.es, %bb.v ] ; 8 uses
  %.0313 = phi i64 [ %.0.i380447, %ZSTD_hashPtr.exit379 ], [ %.0.i376, %bb.v ]
  %.0310 = phi i64 [ %.0.i378, %ZSTD_hashPtr.exit379 ], [ %.0.i374, %bb.v ] ; 3 uses
  %.0308 = phi i32 [ %i.cc, %ZSTD_hashPtr.exit379 ], [ %i.ef, %bb.v ] ; 3 uses
  %.0306 = phi ptr [ %i.ce, %ZSTD_hashPtr.exit379 ], [ %i.eh, %bb.v ] ; 2 uses
  %.0287 = phi i64 [ %i.j, %ZSTD_hashPtr.exit379 ], [ %.1288, %bb.v ] ; 4 uses
  %.0285 = phi ptr [ %i.bi, %ZSTD_hashPtr.exit379 ], [ %.1286, %bb.v ] ; 3 uses
  %i.cg = ptrtoint ptr %.0317 to i64
  %i.ch = sub i64 %i.cg, %i.p
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = sub i32 %i.ci, %.1335569                ; 4 uses
  %i.ck = icmp ult i32 %i.cj, %i.ag               ; 2 uses
  %i.cl = select i1 %i.ck, ptr %i.n, ptr %i.l     ; 2 uses
  %i.cm = sub i32 %i.ag, %i.cj
  %i.cn = icmp ugt i32 %i.cm, 3
  %i.co = and i1 %i.cf, %i.cn
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cp = zext i32 %i.cj to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp
  %.val390 = load i32, ptr %i.cq, align 1, !tbaa !22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.0317.val389 = load i32, ptr %.0317, align 1, !tbaa !22
  %i.cr = xor i32 %.0317.val389, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0283 = phi i32 [ %.val390, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = ptrtoint ptr %.1322 to i64
  %i.ct = sub i64 %i.cs, %i.p
  %i.cu = trunc i64 %i.ct to i32                  ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0313
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !22
  %.0317.val = load i32, ptr %.0317, align 1, !tbaa !22 ; 2 uses
  %i.cw = icmp eq i32 %.0317.val, %.0283
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i32 %i.cj to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx ; 2 uses
  %i.cz = select i1 %i.ck, ptr %i.aj, ptr %i.ak
  %i.da = getelementptr inbounds i8, ptr %.0317, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !30
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !30
  %i.de = icmp eq i8 %i.db, %i.dd                 ; 2 uses
  %.neg = sext i1 %i.de to i64                    ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.0317, i64 %.neg
  %i.dg = getelementptr inbounds i8, ptr %i.cy, i64 %.neg
  %i.dh = select i1 %i.de, i64 5, i64 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %.not359 = icmp ult i32 %.0308, %i.ab
  br i1 %.not359, label %.thread645, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.di = zext i32 %.0308 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.0306, i64 %i.di
  %.val388 = load i32, ptr %i.dj, align 1, !tbaa !22
  %.2323.val.pre = load i32, ptr %.1322, align 1, !tbaa !22
  %i.dk = icmp eq i32 %.2323.val.pre, %.val388
  br i1 %i.dk, label %bb.w, label %.thread645

.thread645:                                       ; preds = %bb.j, %bb.k
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0310 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22 ; 4 uses
  %i.dn = icmp ult i32 %i.dm, %i.ag
  %i.do = select i1 %i.dn, ptr %i.n, ptr %i.l     ; 2 uses
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.o
    i32 5, label %bb.m
    i32 6, label %bb.n
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %.thread645
  %i.dp = mul i32 %.0317.val, -1640531535
  %i.dq = lshr i32 %i.dp, %i.aw
  %i.dr = zext i32 %i.dq to i64
  br label %ZSTD_hashPtr.exit377

bb.m:                                             ; preds = %.thread645
  %.0317.val398 = load i64, ptr %.0317, align 1, !tbaa !21
  %i.ds = mul i64 %.0317.val398, -3523014627271114752
  %i.dt = lshr i64 %i.ds, %i.ay
  br label %ZSTD_hashPtr.exit377

bb.n:                                             ; preds = %.thread645
  %.0317.val405 = load i64, ptr %.0317, align 1, !tbaa !21
  %i.du = mul i64 %.0317.val405, -3523014627193847808
  %i.dv = lshr i64 %i.du, %i.ay
  br label %ZSTD_hashPtr.exit377

bb.o:                                             ; preds = %.thread645
  %.0317.val412 = load i64, ptr %.0317, align 1, !tbaa !21
  %i.dw = mul i64 %.0317.val412, -3523014627193167104
  %i.dx = lshr i64 %i.dw, %i.ay
  br label %ZSTD_hashPtr.exit377

ZSTD_hashPtr.exit377:                             ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i376 = phi i64 [ %i.dr, %bb.l ], [ %i.dx, %bb.o ], [ %i.dt, %bb.m ], [ %i.dv, %bb.n ] ; 3 uses
  %i.dy = ptrtoint ptr %.0318 to i64
  %i.dz = sub i64 %i.dy, %i.p
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  store i32 %i.ea, ptr %i.dl, align 4, !tbaa !22
  %.not360 = icmp ult i32 %i.dm, %i.ab
  br i1 %.not360, label %.thread647, label %bb.p

bb.p:                                             ; preds = %ZSTD_hashPtr.exit377
  %i.eb = zext i32 %i.dm to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eb
  %.val386 = load i32, ptr %i.ec, align 1, !tbaa !22
  %.0318.val.pre = load i32, ptr %.0318, align 1, !tbaa !22
  %i.ed = icmp eq i32 %.0318.val.pre, %.val386
  br i1 %i.ed, label %bb.w, label %.thread647

.thread647:                                       ; preds = %ZSTD_hashPtr.exit377, %bb.p
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.i376
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !22 ; 2 uses
  %i.eg = icmp ult i32 %i.ef, %i.ag
  %i.eh = select i1 %i.eg, ptr %i.n, ptr %i.l
  switch i32 %5, label %default.unreachable [
    i32 7, label %bb.t
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 4, label %bb.q
  ]

bb.q:                                             ; preds = %.thread647
  %.0316.val = load i32, ptr %.0316, align 1, !tbaa !22
  %i.ei = mul i32 %.0316.val, -1640531535
  %i.ej = lshr i32 %i.ei, %i.aw
  %i.ek = zext i32 %i.ej to i64
  br label %ZSTD_hashPtr.exit375

bb.r:                                             ; preds = %.thread647
  %.0316.val399 = load i64, ptr %.0316, align 1, !tbaa !21
  %i.el = mul i64 %.0316.val399, -3523014627271114752
  %i.em = lshr i64 %i.el, %i.ay
  br label %ZSTD_hashPtr.exit375

bb.s:                                             ; preds = %.thread647
  %.0316.val406 = load i64, ptr %.0316, align 1, !tbaa !21
  %i.en = mul i64 %.0316.val406, -3523014627193847808
  %i.eo = lshr i64 %i.en, %i.ay
  br label %ZSTD_hashPtr.exit375

bb.t:                                             ; preds = %.thread647
  %.0316.val413 = load i64, ptr %.0316, align 1, !tbaa !21
  %i.ep = mul i64 %.0316.val413, -3523014627193167104
  %i.eq = lshr i64 %i.ep, %i.ay
  br label %ZSTD_hashPtr.exit375

ZSTD_hashPtr.exit375:                             ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i374 = phi i64 [ %i.ek, %bb.q ], [ %i.eq, %bb.t ], [ %i.em, %bb.r ], [ %i.eo, %bb.s ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0317, i64 %.0287 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0316, i64 %.0287 ; 2 uses
  %.not366 = icmp ult ptr %i.er, %.0285
  br i1 %.not366, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ZSTD_hashPtr.exit375
  %i.et = add i64 %.0287, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.0316, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.eu, i32 0, i32 3, i32 1)
  %i.ev = getelementptr inbounds nuw i8, ptr %.0316, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ev, i32 0, i32 3, i32 1)
  %i.ew = getelementptr inbounds nuw i8, ptr %.0285, i64 128
  br label %bb.v

bb.v:                                             ; preds = %ZSTD_hashPtr.exit375, %bb.u
  %.1288 = phi i64 [ %i.et, %bb.u ], [ %.0287, %ZSTD_hashPtr.exit375 ]
  %.1286 = phi ptr [ %i.ew, %bb.u ], [ %.0285, %ZSTD_hashPtr.exit375 ]
  %i.ex = icmp ult ptr %i.es, %i.al
  br i1 %i.ex, label %bb.e, label %.loopexit, !llvm.loop !143

.loopexit:                                        ; preds = %.thread, %bb.v, %bb.c
  %.0340541 = phi ptr [ %.0340568, %bb.v ], [ %3, %bb.c ], [ %.3343, %.thread ]
  %.1335534 = phi i32 [ %.1335569, %bb.v ], [ %.0334, %bb.c ], [ %.5339, %.thread ] ; 2 uses
  %.1329527 = phi i32 [ %.1329570, %bb.v ], [ %spec.select, %bb.c ], [ %.5333, %.thread ] ; 2 uses
  %i.ey = icmp ne i32 %.1335534, 0                ; 2 uses
  %or.cond = select i1 %.0327, i1 %i.ey, i1 false
  %i.ez = select i1 %or.cond, i32 %i.ap, i32 %spec.select368
  %i.fa = select i1 %i.ey, i32 %.1335534, i32 %.0327.a
  store i32 %i.fa, ptr %2, align 4, !tbaa !22
  %.not367 = icmp eq i32 %.1329527, 0
  %i.fb = select i1 %.not367, i32 %i.ez, i32 %.1329527
  store i32 %i.fb, ptr %i.am, align 4, !tbaa !22
  %i.fc = ptrtoint ptr %i.ak to i64
  %i.fd = ptrtoint ptr %.0340541 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  br label %bb.av

bb.w:                                             ; preds = %bb.p, %bb.k
  %.3324 = phi ptr [ %.0318, %bb.p ], [ %.1322, %bb.k ] ; 3 uses
  %.1319 = phi ptr [ %.0317, %bb.p ], [ %.0318, %bb.k ] ; 3 uses
  %.0314 = phi i32 [ %i.ea, %bb.p ], [ %i.cu, %bb.k ] ; 4 uses
  %.1311 = phi i64 [ %.0.i376, %bb.p ], [ %.0310, %bb.k ] ; 3 uses
  %.1309 = phi i32 [ %i.dm, %bb.p ], [ %.0308, %bb.k ] ; 3 uses
  %.1307 = phi ptr [ %i.do, %bb.p ], [ %.0306, %bb.k ]
  %i.ff = sub i32 %.0314, %.1309                  ; 4 uses
  %i.fg = icmp ugt i32 %i.af, %.1309              ; 2 uses
  %i.fh = select i1 %i.fg, ptr %i.ad, ptr %i.ai   ; 2 uses
  %i.fi = select i1 %i.fg, ptr %i.aj, ptr %i.ak   ; 3 uses
  %i.fj = zext i32 %.1309 to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.1307, i64 %i.fj ; 3 uses
  %i.fl = add i32 %i.ff, 3                        ; 3 uses
  %i.fm = icmp ugt ptr %.3324, %.0340568
  %i.fn = icmp ugt ptr %i.fk, %i.fh
  %i.fo = and i1 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.w, %bb.x
  %.3296544 = phi i64 [ %i.fu, %bb.x ], [ 4, %bb.w ] ; 2 uses
  %.3300543 = phi ptr [ %i.fr, %bb.x ], [ %i.fk, %bb.w ] ; 2 uses
  %.4325542 = phi ptr [ %i.fp, %bb.x ], [ %.3324, %bb.w ] ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.4325542, i64 -1 ; 4 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !30
  %i.fr = getelementptr inbounds i8, ptr %.3300543, i64 -1 ; 4 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !30
  %i.ft = icmp eq i8 %i.fq, %i.fs
  br i1 %i.ft, label %bb.x, label %.critedge

bb.x:                                             ; preds = %.lr.ph
  %i.fu = add i64 %.3296544, 1                    ; 2 uses
  %i.fv = icmp ugt ptr %i.fp, %.0340568
  %i.fw = icmp ugt ptr %i.fr, %i.fh
  %i.fx = and i1 %i.fv, %i.fw
  br i1 %i.fx, label %.lr.ph, label %.critedge, !llvm.loop !144

.critedge:                                        ; preds = %bb.x, %.lr.ph, %bb.w, %bb.i
  %.2336 = phi i32 [ %.1335569, %bb.i ], [ %i.ff, %bb.w ], [ %i.ff, %.lr.ph ], [ %i.ff, %bb.x ] ; 2 uses
  %.2330 = phi i32 [ %.1329570, %bb.i ], [ %.1335569, %bb.w ], [ %.1335569, %.lr.ph ], [ %.1335569, %bb.x ] ; 2 uses
  %.5 = phi ptr [ %i.df, %bb.i ], [ %.3324, %bb.w ], [ %i.fp, %bb.x ], [ %.4325542, %.lr.ph ] ; 6 uses
  %.2320 = phi ptr [ %.0318, %bb.i ], [ %.1319, %bb.w ], [ %.1319, %.lr.ph ], [ %.1319, %bb.x ] ; 2 uses
  %.1315 = phi i32 [ %i.cu, %bb.i ], [ %.0314, %bb.w ], [ %.0314, %.lr.ph ], [ %.0314, %bb.x ] ; 2 uses
  %.2312 = phi i64 [ %.0310, %bb.i ], [ %.1311, %bb.w ], [ %.1311, %.lr.ph ], [ %.1311, %bb.x ]
  %.3305 = phi i32 [ 1, %bb.i ], [ %i.fl, %bb.w ], [ %i.fl, %.lr.ph ], [ %i.fl, %bb.x ]
  %.4301 = phi ptr [ %i.dg, %bb.i ], [ %i.fk, %bb.w ], [ %i.fr, %bb.x ], [ %.3300543, %.lr.ph ]
  %.4 = phi i64 [ %i.dh, %bb.i ], [ 4, %bb.w ], [ %i.fu, %bb.x ], [ %.3296544, %.lr.ph ] ; 3 uses
  %.3292 = phi ptr [ %i.cz, %bb.i ], [ %i.fi, %bb.w ], [ %i.fi, %.lr.ph ], [ %i.fi, %bb.x ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.5, i64 %.4
  %i.fz = getelementptr inbounds nuw i8, ptr %.4301, i64 %.4
  %i.ga = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef %i.fy, ptr noundef %i.fz, ptr noundef %i.ak, ptr noundef %.3292, ptr noundef nonnull %i.ai)
  %i.gb = add i64 %i.ga, %.4                      ; 2 uses
  %i.gc = ptrtoint ptr %.5 to i64                 ; 4 uses
  %i.gd = ptrtoint ptr %.0340568 to i64           ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 7 uses
  %.not.i382 = icmp ugt ptr %.5, %i.az
  %i.gf = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 5 uses
  br i1 %.not.i382, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge
  %.0340.val = load <2 x i64>, ptr %.0340568, align 1, !tbaa !30
  store <2 x i64> %.0340.val, ptr %i.gf, align 1, !tbaa !30
  %i.gg = icmp ugt i64 %i.ge, 16
  br i1 %i.gg, label %bb.z, label %ZSTD_storeSeq.exit383.thread

bb.z:                                             ; preds = %bb.y
  %i.gh = load ptr, ptr %i.ba, align 8, !tbaa !35 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %.0340568, i64 16 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gh, i64 %i.ge
  %.val425 = load <2 x i64>, ptr %i.gj, align 1, !tbaa !30
  store <2 x i64> %.val425, ptr %i.gi, align 1, !tbaa !30
  %i.gl = icmp ult i64 %i.ge, 33
  br i1 %i.gl, label %ZSTD_storeSeq.exit383.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i = phi ptr [ %i.gj, %bb.aa ], [ %i.go, %bb.ab ] ; 2 uses
  %.1.i = phi ptr [ %i.gm, %bb.aa ], [ %i.gp, %bb.ab ] ; 3 uses
  %.130.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.130.i.val = load <2 x i64>, ptr %.130.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.val, ptr %.1.i, align 1, !tbaa !30
  %i.gn = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 2 uses
  %.val424 = load <2 x i64>, ptr %i.go, align 1, !tbaa !30
  store <2 x i64> %.val424, ptr %i.gn, align 1, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %i.gk
  br i1 %i.gq, label %bb.ab, label %ZSTD_storeSeq.exit383, !llvm.loop !0

bb.ac:                                            ; preds = %.critedge
  %.not.i429 = icmp ugt ptr %.0340568, %i.az
  br i1 %.not.i429, label %ZSTD_wildcopy.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = sub i64 %i.bb, %i.gd                    ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gf, i64 %i.gr ; 3 uses
  %.val19.i = load <2 x i64>, ptr %.0340568, align 1, !tbaa !30
  store <2 x i64> %.val19.i, ptr %i.gf, align 1, !tbaa !30
  %i.gt = icmp ult i64 %i.gr, 17
  br i1 %i.gt, label %ZSTD_wildcopy.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.pn.i.i = phi ptr [ %.0340568, %bb.ae ], [ %i.gw, %bb.af ] ; 2 uses
  %.1.i.i = phi ptr [ %i.gu, %bb.ae ], [ %i.gx, %bb.af ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.val.i = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !30
  store <2 x i64> %.130.i.val.i, ptr %.1.i.i, align 1, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val.i = load <2 x i64>, ptr %i.gw, align 1, !tbaa !30
  store <2 x i64> %.val.i, ptr %i.gv, align 1, !tbaa !30
  %i.gx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.gy = icmp ult ptr %i.gx, %i.gs
  br i1 %i.gy, label %bb.af, label %ZSTD_wildcopy.exit.i, !llvm.loop !0

ZSTD_wildcopy.exit.i:                             ; preds = %bb.af, %bb.ad, %bb.ac
  %.014.i = phi ptr [ %.0340568, %bb.ac ], [ %i.az, %bb.ad ], [ %i.az, %bb.af ] ; 7 uses
  %.0.i430 = phi ptr [ %i.gf, %bb.ac ], [ %i.gs, %bb.ad ], [ %i.gs, %bb.af ] ; 6 uses
  %i.gz = icmp ult ptr %.014.i, %.5
  br i1 %i.gz, label %iter.check, label %ZSTD_storeSeq.exit383

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i45 = ptrtoaddr ptr %.014.i to i64        ; 2 uses
  %.0.i43044 = ptrtoaddr ptr %.0.i430 to i64
  %i.ha = sub i64 %i.gc, %.014.i45                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ha, 8
  %i.hb = sub i64 %.014.i45, %.0.i43044
  %diff.check = icmp ugt i64 %i.hb, -32
  %or.cond57 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond57, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i64 %i.ha, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hc = and i64 %i.ha, 24
  %n.vec = and i64 %i.ha, -32                     ; 5 uses
  %i.hd = getelementptr i8, ptr %.0.i430, i64 %n.vec
  %i.he = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i430, i64 %index ; 2 uses
  %next.gep47 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep47, align 1, !tbaa !30
  %wide.load48 = load <16 x i8>, ptr %i.hf, align 1, !tbaa !30
  %i.hg = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !30
  store <16 x i8> %wide.load48, ptr %i.hg, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ha, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit383, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.ha, -8                    ; 4 uses
  %i.hi = getelementptr i8, ptr %.0.i430, i64 %n.vec49
  %i.hj = getelementptr i8, ptr %.014.i, i64 %n.vec49
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %next.gep51 = getelementptr i8, ptr %.0.i430, i64 %index50
  %next.gep52 = getelementptr i8, ptr %.014.i, i64 %index50
  %wide.load53 = load <8 x i8>, ptr %next.gep52, align 1, !tbaa !30
  store <8 x i8> %wide.load53, ptr %next.gep51, align 1, !tbaa !30
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.hk = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
end_hunk_0
