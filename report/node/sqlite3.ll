Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3WhereBegin:bb.a
  store i32 %.val470684, ptr %i.aja, align 8, !tbaa !576
  %i.ajb = load i8, ptr %i.r, align 1, !tbaa !928
  %.not421685 = icmp eq i8 %i.ajb, 0
  br i1 %.not421685, label %._crit_edge596, label %sqlite3DbFree.exit.thread

.lr.ph595:                                        ; preds = %._crit_edge591, %bb.hu
  %indvars.iv616 = phi i64 [ %indvars.iv.next617, %bb.hu ], [ 0, %._crit_edge591 ] ; 4 uses
  %.1380592 = phi i64 [ %i.akn, %bb.hu ], [ %.0379682, %._crit_edge591 ] ; 3 uses
  %i.ajc = load i32, ptr %i.ha, align 4, !tbaa !786
  %.not422 = icmp eq i32 %i.ajc, 0
  br i1 %.not422, label %bb.hj, label %sqlite3DbFree.exit.thread

bb.hj:                                            ; preds = %.lr.ph595
  %i.ajd = getelementptr inbounds nuw [120 x i8], ptr %i.bq, i64 %indvars.iv616 ; 8 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 104
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !2493
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 48
  %i.ajh = load i32, ptr %i.ajg, align 8, !tbaa !2470 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajd, i64 72
  %i.ajj = load i8, ptr %i.aji, align 8, !tbaa !2498
  %i.ajk = zext i8 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw [72 x i8], ptr %i.um, i64 %i.ajk ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 25
  %i.ajn = load i16, ptr %i.ajm, align 1          ; 2 uses
  %i.ajo = and i16 %i.ajn, 32
  %.not423 = icmp eq i16 %i.ajo, 0
  br i1 %.not423, label %bb.hp, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajl, i64 64
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !741 ; 2 uses
  %i.ajr = and i16 %i.ajn, 16
  %i.ajs = icmp eq i16 %i.ajr, 0
  br i1 %i.ajs, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.ajt = call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %i.b, i32 noundef 15)
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hk, %bb.hl
  %.0 = phi i32 [ %i.ajt, %bb.hl ], [ 0, %bb.hk ] ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 12
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !2328
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.ajx = load i32, ptr %i.ajw, align 8, !tbaa !2325
  %i.ajy = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.b, i32 noundef 10, i32 noundef %i.ajv, i32 noundef %i.ajx) ; 0 uses
  %.not424 = icmp eq i32 %.0, 0
  br i1 %.not424, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ajz = load i32, ptr %i.uo, align 8, !tbaa !711
  %i.aka = load ptr, ptr %i.b, align 8, !tbaa !687
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 103
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !928
  %.not.i.i.i = icmp eq i8 %i.akc, 0
  br i1 %.not.i.i.i, label %bb.ho, label %sqlite3VdbeJumpHere.exit

bb.ho:                                            ; preds = %bb.hn
  %i.akd = load ptr, ptr %i.uq, align 8, !tbaa !710
  %i.ake = sext i32 %.0 to i64
  %i.akf = getelementptr inbounds [24 x i8], ptr %i.akd, i64 %i.ake
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.hn, %bb.ho
  %.0.i.i.i = phi ptr [ %i.akf, %bb.ho ], [ @sqlite3VdbeGetOp.dummy, %bb.hn ]
  %i.akg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.ajz, ptr %i.akg, align 8, !tbaa !955
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hm, %sqlite3VdbeJumpHere.exit, %bb.hj
  %i.akh = and i32 %i.ajh, 4210688
  %.not425 = icmp eq i32 %i.akh, 0
  br i1 %.not425, label %bb.hu, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aki = and i32 %i.ajh, 16384
  %.not426 = icmp eq i32 %i.aki, 0
  br i1 %.not426, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call fastcc void @constructAutomaticIndex(ptr noundef nonnull %0, ptr noundef nonnull %i.bu, i64 noundef %.1380592, ptr noundef nonnull %i.ajd)
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.akj = trunc nuw nsw i64 %indvars.iv616 to i32
  call fastcc void @sqlite3ConstructBloomFilter(ptr noundef nonnull %i.q, i32 noundef %i.akj, ptr noundef nonnull %i.ajd, i64 noundef %.1380592)
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.akk = load i8, ptr %i.r, align 1, !tbaa !928
  %.not427 = icmp eq i8 %i.akk, 0
  br i1 %.not427, label %bb.hu, label %sqlite3DbFree.exit.thread

bb.hu:                                            ; preds = %bb.ht, %bb.hp
  call fastcc void @sqlite3WhereExplainOneScan(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ajd, i16 noundef zeroext %.1371)
  %.val469 = load i32, ptr %i.uo, align 8, !tbaa !711
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ajd, i64 36
  store i32 %.val469, ptr %i.akl, align 4, !tbaa !2511
  %i.akm = trunc nuw nsw i64 %indvars.iv616 to i32
  %i.akn = call fastcc i64 @sqlite3WhereCodeOneLoopStart(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.q, i32 noundef %i.akm, ptr noundef nonnull %i.ajd, i64 noundef %.1380592)
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajd, i64 28
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !2512
  store i32 %i.akp, ptr %i.bf, align 8, !tbaa !576
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %exitcond620.not = icmp eq i64 %indvars.iv.next617, %wide.trip.count
  br i1 %exitcond620.not, label %._crit_edge596.loopexit, label %.lr.ph595, !llvm.loop !5708

._crit_edge596.loopexit:                          ; preds = %bb.hu
  %.val.pre = load i32, ptr %i.uo, align 8, !tbaa !711
  br label %._crit_edge596

._crit_edge596:                                   ; preds = %._crit_edge591.thread, %._crit_edge596.loopexit
  %.val = phi i32 [ %.val.pre, %._crit_edge596.loopexit ], [ %.val470684, %._crit_edge591.thread ]
  %i.akq = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  store i32 %.val, ptr %i.akq, align 4, !tbaa !576
  br label %sqlite3DbFree.exit.thread553

sqlite3DbFree.exit:                               ; preds = %bb.df, %whereLoopAddAll.exit
  %.not452 = icmp eq ptr %i.q, null
  br i1 %.not452, label %sqlite3DbFree.exit.thread553, label %sqlite3DbFree.exit.thread

sqlite3DbFree.exit.thread:                        ; preds = %bb.ht, %.lr.ph595, %._crit_edge591.thread, %._crit_edge591, %bb.dn, %bb.dh, %bb.au, %sqlite3DbFree.exit
  %i.akr = load i32, ptr %i.bn, align 8, !tbaa !576
  %i.aks = trunc i32 %i.akr to i16
  store i16 %i.aks, ptr %i.bk, align 4, !tbaa !1290
  call fastcc void @whereInfoFree(ptr noundef %i.c, ptr noundef nonnull %i.q)
  br label %sqlite3DbFree.exit.thread553

sqlite3DbFree.exit.thread553:                     ; preds = %bb.s, %bb.r, %sqlite3_mutex_enter.exit.i.i, %bb.n, %bb.l, %bb.j, %bb.g, %sqlite3DbFree.exit, %sqlite3DbFree.exit.thread, %._crit_edge596, %bb.e
  %.0362 = phi ptr [ null, %bb.e ], [ %i.q, %._crit_edge596 ], [ null, %sqlite3DbFree.exit.thread ], [ null, %sqlite3DbFree.exit ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.n ], [ null, %sqlite3_mutex_enter.exit.i.i ], [ null, %bb.r ], [ null, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  ret ptr %.0362
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3WindowCodeStep(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 -2147483648, 2147483647) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.WindowCodeArg, align 8      ; 53 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2070 ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2050 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1234 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2248
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !1002
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1410
  %i.m = and i32 %i.l, 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.p = load i16, ptr %i.o, align 1
  %i.q = or i16 %i.p, 128
  store i16 %i.q, ptr %i.o, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.r = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.r, %bb.e ], [ %i.f, %bb.a ] ; 103 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2057 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2254 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2039
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 54
  %i.z = load i16, ptr %i.y, align 2, !tbaa !1162 ; 2 uses
  %i.aa = sext i16 %i.z to i32                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2096 ; 2 uses
  %i.ad = add nsw i32 %i.ac, -1                   ; 6 uses
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !2096
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i8 0, i64 40, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !2515
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.af, align 8, !tbaa !2516
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.0.i, ptr %i.ag, align 8, !tbaa !2517
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %3, ptr %i.ah, align 4, !tbaa !2518
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %4, ptr %i.ai, align 8, !tbaa !2519
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2289 ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !2520
  %i.am = add nsw i32 %i.ak, 1                    ; 6 uses
  %i.an = add nsw i32 %i.ak, 2                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !2521
  %i.ap = add nsw i32 %i.ak, 3                    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !2522
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 33 ; 7 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !2401
  switch i8 %i.as, label %windowCacheFrame.exit.thread.sink.split [
    i8 87, label %bb.f
    i8 91, label %bb.h
  ]

bb.f:                                             ; preds = %sqlite3GetVdbe.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.au = load i8, ptr %i.at, align 8, !tbaa !2225
  %.not294 = icmp eq i8 %i.au, 90
  br i1 %.not294, label %windowCacheFrame.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2052
  %.val322 = load ptr, ptr %0, align 8, !tbaa !1002
  %i.ax = tail call fastcc i32 @windowExprGtZero(ptr %.val322, ptr noundef %i.aw)
  %.not295 = icmp eq i32 %i.ax, 0
  br i1 %.not295, label %windowCacheFrame.exit.thread, label %windowCacheFrame.exit.thread.sink.split

bb.h:                                             ; preds = %sqlite3GetVdbe.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !2454
  %.not.i325 = icmp eq i32 %i.az, 0
  br i1 %.not.i325, label %.lr.ph.i, label %windowCacheFrame.exit.thread

.lr.ph.i:                                         ; preds = %bb.h, %.critedge.i
  %.01017.i = phi ptr [ %i.bj, %.critedge.i ], [ %i.b, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01017.i, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2297
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !740
  %i.be = insertelement <4 x ptr> poison, ptr %i.bd, i64 0
  %i.bf = shufflevector <4 x ptr> %i.be, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bg = icmp eq <4 x ptr> %i.bf, <ptr @nth_valueName, ptr @first_valueName, ptr @leadName, ptr @lagName>
  %i.bh = bitcast <4 x i1> %i.bg to i4
  %.not587 = icmp eq i4 %i.bh, 0
  br i1 %.not587, label %.critedge.i, label %windowCacheFrame.exit.thread

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.01017.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !2046 ; 2 uses
  %.not13.i = icmp eq ptr %i.bj, null
  br i1 %.not13.i, label %windowCacheFrame.exit, label %.lr.ph.i, !llvm.loop !5709

windowCacheFrame.exit:                            ; preds = %.critedge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !2402
  %i.bm = icmp eq i8 %i.bl, 89
  br i1 %i.bm, label %bb.i, label %windowCacheFrame.exit.thread.sink.split

bb.i:                                             ; preds = %windowCacheFrame.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !2225
  %.not = icmp eq i8 %i.bo, 90
  br i1 %.not, label %windowCacheFrame.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2051
  %.val321 = load ptr, ptr %0, align 8, !tbaa !1002
  %i.br = tail call fastcc i32 @windowExprGtZero(ptr %.val321, ptr noundef %i.bq)
  %.not293 = icmp eq i32 %i.br, 0
  br i1 %.not293, label %windowCacheFrame.exit.thread, label %windowCacheFrame.exit.thread.sink.split

windowCacheFrame.exit.thread.sink.split:          ; preds = %sqlite3GetVdbe.exit, %windowCacheFrame.exit, %bb.j, %bb.g
  %.sink = phi i32 [ 1, %bb.g ], [ 3, %bb.j ], [ 1, %windowCacheFrame.exit ], [ 2, %sqlite3GetVdbe.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %.sink, ptr %i.bs, align 4, !tbaa !2523
  br label %windowCacheFrame.exit.thread

windowCacheFrame.exit.thread:                     ; preds = %.lr.ph.i, %windowCacheFrame.exit.thread.sink.split, %bb.h, %bb.i, %bb.j, %bb.f, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 9 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1214 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1                    ; 5 uses
  %i.bw = add nsw i32 %i.bu, %i.aa                ; 3 uses
  %i.bx = add nsw i32 %i.bw, 1                    ; 4 uses
  %i.by = add nsw i32 %i.bw, 2                    ; 9 uses
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !1214
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !2524
  %i.ca = load i8, ptr %i.ar, align 1, !tbaa !2401
  switch i8 %i.ca, label %bb.l [
    i8 89, label %bb.k
    i8 87, label %bb.k
  ]

bb.k:                                             ; preds = %windowCacheFrame.exit.thread, %windowCacheFrame.exit.thread
  %i.cb = add nsw i32 %i.bw, 3                    ; 3 uses
  store i32 %i.cb, ptr %i.bt, align 4, !tbaa !1214
  br label %bb.l

bb.l:                                             ; preds = %windowCacheFrame.exit.thread, %bb.k
  %i.cc = phi i32 [ %i.cb, %bb.k ], [ %i.by, %windowCacheFrame.exit.thread ] ; 2 uses
  %.0279 = phi i32 [ %i.cb, %bb.k ], [ 0, %windowCacheFrame.exit.thread ] ; 26 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 34 ; 7 uses
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !2402
  switch i8 %i.ce, label %bb.n [
    i8 89, label %bb.m
    i8 87, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.cf = add nsw i32 %i.cc, 1                    ; 3 uses
  store i32 %i.cf, ptr %i.bt, align 4, !tbaa !1214
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cg = phi i32 [ %i.cf, %bb.m ], [ %i.cc, %bb.l ] ; 2 uses
  %.0278 = phi i32 [ %i.cf, %bb.m ], [ 0, %bb.l ] ; 21 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 10 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !2225
  %.not296 = icmp eq i8 %i.ci, 77
  br i1 %.not296, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not297 = icmp eq ptr %i.d, null
  br i1 %.not297, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = load i32, ptr %i.d, align 8, !tbaa !576
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ck = phi i32 [ %i.cj, %bb.p ], [ 0, %bb.o ]  ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !2295
  %i.cn = add nsw i32 %i.cm, %i.bv                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2049 ; 2 uses
  %.not298 = icmp eq ptr %i.cp, null
  br i1 %.not298, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !576
  %i.cr = add nsw i32 %i.cq, %i.cn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0282 = phi i32 [ %i.cr, %bb.r ], [ %i.cn, %bb.q ]
  %i.cs = add nsw i32 %i.cg, 1
  %i.ct = add nsw i32 %i.ck, %i.cg                ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !2525
  %i.cw = add nsw i32 %i.ct, %i.ck                ; 2 uses
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !2526
  %i.cz = add nsw i32 %i.cw, %i.ck                ; 2 uses
  %i.da = add nsw i32 %i.cz, 1                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 %i.da, ptr %i.db, align 8, !tbaa !2527
  %i.dc = add nsw i32 %i.cz, %i.ck
  store i32 %i.dc, ptr %i.bt, align 4, !tbaa !1214
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.dd = phi i32 [ %i.da, %bb.s ], [ 0, %bb.n ]  ; 2 uses
  %i.de = phi i32 [ %i.cx, %bb.s ], [ 0, %bb.n ]  ; 2 uses
  %i.df = phi i32 [ %i.cu, %bb.s ], [ 0, %bb.n ]  ; 2 uses
  %.1 = phi i32 [ %.0282, %bb.s ], [ 0, %bb.n ]   ; 3 uses
  %.0281 = phi i32 [ %i.cs, %bb.s ], [ 0, %bb.n ] ; 10 uses
  %i.dg = icmp sgt i16 %i.z, 0
  br i1 %i.dg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp3.exit
  %.0275470 = phi i32 [ 0, %.lr.ph ], [ %i.dy, %sqlite3VdbeAddOp3.exit ] ; 4 uses
  %i.dk = add nsw i32 %.0275470, %i.bv            ; 2 uses
  %i.dl = load i32, ptr %i.dh, align 8, !tbaa !711 ; 3 uses
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !1207
  %.not.i326 = icmp sgt i32 %i.dm, %i.dl
  br i1 %.not.i326, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 95, i32 noundef %i.v, i32 noundef %.0275470, i32 noundef %i.dk), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.w:                                             ; preds = %bb.u
  %i.do = add nsw i32 %i.dl, 1
  store i32 %i.do, ptr %i.dh, align 8, !tbaa !711
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !710
  %i.dq = sext i32 %i.dl to i64
  %i.dr = getelementptr inbounds [24 x i8], ptr %i.dp, i64 %i.dq ; 7 uses
  store i8 95, ptr %i.dr, align 8, !tbaa !938
end_hunk_0
begin_hunk_1_@sqlite3WindowCodeStep:bb.a
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  store ptr null, ptr %i.afb, align 8, !tbaa !741
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aew, i64 1
  store i8 0, ptr %i.afc, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit429

sqlite3VdbeAddOp2.exit429:                        ; preds = %bb.ev, %bb.ew
  %.val316 = load i32, ptr %i.dz, align 8, !tbaa !711
  %i.afd = call fastcc i32 @windowCodeOp(ptr noundef %5, i32 noundef 1, i32 noundef %.0278, i32 noundef 1)
  %i.afe = call fastcc i32 @windowCodeOp(ptr noundef %5, i32 noundef 2, i32 noundef %.0279, i32 noundef 1)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.er, %sqlite3VdbeAddOp2.exit429, %bb.ep
  %.0272 = phi i32 [ %.val318, %bb.ep ], [ %.val317, %bb.er ], [ %.val316, %sqlite3VdbeAddOp2.exit429 ] ; 2 uses
  %.0271 = phi i32 [ %i.adx, %bb.ep ], [ %i.aea, %bb.er ], [ %i.afd, %sqlite3VdbeAddOp2.exit429 ]
  %.0 = phi i32 [ %i.adw, %bb.ep ], [ %i.aeb, %bb.er ], [ %i.afe, %sqlite3VdbeAddOp2.exit429 ]
  %i.aff = load i32, ptr %i.dz, align 8, !tbaa !711 ; 3 uses
  %i.afg = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i430 = icmp sgt i32 %i.afg, %i.aff
  br i1 %.not.i.i430, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.afh = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %.0272, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit432

bb.ez:                                            ; preds = %bb.ex
  %i.afi = add nsw i32 %i.aff, 1
  store i32 %i.afi, ptr %i.dz, align 8, !tbaa !711
  %i.afj = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !710
  %i.afl = sext i32 %i.aff to i64
  %i.afm = getelementptr inbounds [24 x i8], ptr %i.afk, i64 %i.afl ; 7 uses
  store i8 9, ptr %i.afm, align 8, !tbaa !938
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 2
  store i16 0, ptr %i.afn, align 2, !tbaa !957
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  store i32 0, ptr %i.afo, align 4, !tbaa !954
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  store i32 %.0272, ptr %i.afp, align 8, !tbaa !955
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  store i32 0, ptr %i.afq, align 4, !tbaa !956
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  store ptr null, ptr %i.afr, align 8, !tbaa !741
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afm, i64 1
  store i8 0, ptr %i.afs, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit432

sqlite3VdbeAddOp2.exit432:                        ; preds = %bb.ey, %bb.ez
  %i.aft = load i32, ptr %i.dz, align 8, !tbaa !711 ; 3 uses
  %i.afu = load ptr, ptr %.0.i, align 8, !tbaa !687
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 103
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !928
  %.not.i.i.i433 = icmp eq i8 %i.afw, 0
  br i1 %.not.i.i.i433, label %bb.fa, label %sqlite3VdbeJumpHere.exit435

bb.fa:                                            ; preds = %sqlite3VdbeAddOp2.exit432
  %i.afx = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !710
  %i.afz = sext i32 %.0 to i64
  %i.aga = getelementptr inbounds [24 x i8], ptr %i.afy, i64 %i.afz
  br label %sqlite3VdbeJumpHere.exit435

sqlite3VdbeJumpHere.exit435:                      ; preds = %sqlite3VdbeAddOp2.exit432, %bb.fa
  %.0.i.i.i434 = phi ptr [ %i.aga, %bb.fa ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp2.exit432 ]
  %i.agb = getelementptr inbounds nuw i8, ptr %.0.i.i.i434, i64 8
  store i32 %i.aft, ptr %i.agb, align 8, !tbaa !955
  %i.agc = call fastcc i32 @windowCodeOp(ptr noundef %5, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  %i.agd = load i32, ptr %i.dz, align 8, !tbaa !711 ; 3 uses
  %i.age = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i436 = icmp sgt i32 %i.age, %i.agd
  br i1 %.not.i.i436, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %sqlite3VdbeJumpHere.exit435
  %i.agf = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %i.aft, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit438

bb.fc:                                            ; preds = %sqlite3VdbeJumpHere.exit435
  %i.agg = add nsw i32 %i.agd, 1
  store i32 %i.agg, ptr %i.dz, align 8, !tbaa !711
  %i.agh = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !710
  %i.agj = sext i32 %i.agd to i64
  %i.agk = getelementptr inbounds [24 x i8], ptr %i.agi, i64 %i.agj ; 7 uses
  store i8 9, ptr %i.agk, align 8, !tbaa !938
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 2
  store i16 0, ptr %i.agl, align 2, !tbaa !957
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  store i32 0, ptr %i.agm, align 4, !tbaa !954
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  store i32 %i.aft, ptr %i.agn, align 8, !tbaa !955
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agk, i64 12
  store i32 0, ptr %i.ago, align 4, !tbaa !956
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agk, i64 16
  store ptr null, ptr %i.agp, align 8, !tbaa !741
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agk, i64 1
  store i8 0, ptr %i.agq, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit438

sqlite3VdbeAddOp2.exit438:                        ; preds = %bb.fb, %bb.fc
  %i.agr = load i32, ptr %i.dz, align 8, !tbaa !711 ; 4 uses
  %i.ags = load ptr, ptr %.0.i, align 8, !tbaa !687
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 103
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !928 ; 2 uses
  %.not.i.i.i439 = icmp eq i8 %i.agu, 0
  br i1 %.not.i.i.i439, label %bb.fd, label %sqlite3VdbeJumpHere.exit441

sqlite3VdbeJumpHere.exit441:                      ; preds = %sqlite3VdbeAddOp2.exit438
  store i32 %i.agr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3VdbeGetOp.dummy, i64 8), align 8, !tbaa !955
  br label %sqlite3VdbeJumpHere.exit444

bb.fd:                                            ; preds = %sqlite3VdbeAddOp2.exit438
  %i.agv = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !710 ; 2 uses
  %i.agx = sext i32 %.0271 to i64
  %i.agy = getelementptr inbounds [24 x i8], ptr %i.agw, i64 %i.agx
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  store i32 %i.agr, ptr %i.agz, align 8, !tbaa !955
  %i.aha = sext i32 %i.agc to i64
  %i.ahb = getelementptr inbounds [24 x i8], ptr %i.agw, i64 %i.aha
  br label %sqlite3VdbeJumpHere.exit444

sqlite3VdbeJumpHere.exit444:                      ; preds = %sqlite3VdbeJumpHere.exit441, %bb.fd
  %.0.i.i.i443 = phi ptr [ %i.ahb, %bb.fd ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeJumpHere.exit441 ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0.i.i.i443, i64 8
  store i32 %i.agr, ptr %i.ahc, align 8, !tbaa !955
  br label %bb.fi

bb.fe:                                            ; preds = %bb.en
  %.val314 = load i32, ptr %i.dz, align 8, !tbaa !711 ; 2 uses
  %i.ahd = call fastcc i32 @windowCodeOp(ptr noundef %5, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  %i.ahe = call fastcc i32 @windowCodeOp(ptr noundef %5, i32 noundef 2, i32 noundef %.0279, i32 noundef 0) ; 0 uses
  %i.ahf = load i32, ptr %i.dz, align 8, !tbaa !711 ; 3 uses
  %i.ahg = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i445 = icmp sgt i32 %i.ahg, %i.ahf
  br i1 %.not.i.i445, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.ahh = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %.val314, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit447

bb.fg:                                            ; preds = %bb.fe
  %i.ahi = add nsw i32 %i.ahf, 1
  store i32 %i.ahi, ptr %i.dz, align 8, !tbaa !711
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !710
  %i.ahl = sext i32 %i.ahf to i64
  %i.ahm = getelementptr inbounds [24 x i8], ptr %i.ahk, i64 %i.ahl ; 7 uses
  store i8 9, ptr %i.ahm, align 8, !tbaa !938
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 2
  store i16 0, ptr %i.ahn, align 2, !tbaa !957
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahm, i64 4
  store i32 0, ptr %i.aho, align 4, !tbaa !954
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  store i32 %.val314, ptr %i.ahp, align 8, !tbaa !955
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahm, i64 12
  store i32 0, ptr %i.ahq, align 4, !tbaa !956
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  store ptr null, ptr %i.ahr, align 8, !tbaa !741
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahm, i64 1
  store i8 0, ptr %i.ahs, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit447

sqlite3VdbeAddOp2.exit447:                        ; preds = %bb.ff, %bb.fg
  %i.aht = load i32, ptr %i.dz, align 8, !tbaa !711 ; 2 uses
  %i.ahu = load ptr, ptr %.0.i, align 8, !tbaa !687
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 103
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !928 ; 2 uses
  %.not.i.i.i448 = icmp eq i8 %i.ahw, 0
  br i1 %.not.i.i.i448, label %bb.fh, label %sqlite3VdbeJumpHere.exit450

bb.fh:                                            ; preds = %sqlite3VdbeAddOp2.exit447
  %i.ahx = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !710
  %i.ahz = sext i32 %i.ahd to i64
  %i.aia = getelementptr inbounds [24 x i8], ptr %i.ahy, i64 %i.ahz
  br label %sqlite3VdbeJumpHere.exit450

sqlite3VdbeJumpHere.exit450:                      ; preds = %sqlite3VdbeAddOp2.exit447, %bb.fh
  %.0.i.i.i449 = phi ptr [ %i.aia, %bb.fh ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp2.exit447 ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.0.i.i.i449, i64 8
  store i32 %i.aht, ptr %i.aib, align 8, !tbaa !955
  br label %bb.fi

bb.fi:                                            ; preds = %sqlite3VdbeJumpHere.exit444, %sqlite3VdbeJumpHere.exit450, %bb.em
  %i.aic = phi i8 [ %i.agu, %sqlite3VdbeJumpHere.exit444 ], [ %i.ahw, %sqlite3VdbeJumpHere.exit450 ], [ %.pre475, %bb.em ]
  %i.aid = phi i32 [ %i.agr, %sqlite3VdbeJumpHere.exit444 ], [ %i.aht, %sqlite3VdbeJumpHere.exit450 ], [ %.pre473, %bb.em ] ; 4 uses
  %.not.i.i.i451 = icmp eq i8 %i.aic, 0
  br i1 %.not.i.i.i451, label %bb.fj, label %sqlite3VdbeJumpHere.exit453

bb.fj:                                            ; preds = %bb.fi
  %i.aie = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !710
  %i.aig = sext i32 %.0.i.i422 to i64
  %i.aih = getelementptr inbounds [24 x i8], ptr %i.aif, i64 %i.aig
  br label %sqlite3VdbeJumpHere.exit453

sqlite3VdbeJumpHere.exit453:                      ; preds = %bb.fi, %bb.fj
  %.0.i.i.i452 = phi ptr [ %i.aih, %bb.fj ], [ @sqlite3VdbeGetOp.dummy, %bb.fi ]
  %i.aii = getelementptr inbounds nuw i8, ptr %.0.i.i.i452, i64 8
  store i32 %i.aid, ptr %i.aii, align 8, !tbaa !955
  %i.aij = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i454 = icmp sgt i32 %i.aij, %i.aid
  br i1 %.not.i.i454, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %sqlite3VdbeJumpHere.exit453
  %i.aik = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 147, i32 noundef %i.ak, i32 noundef 0, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit456

bb.fl:                                            ; preds = %sqlite3VdbeJumpHere.exit453
  %i.ail = add nsw i32 %i.aid, 1
  store i32 %i.ail, ptr %i.dz, align 8, !tbaa !711
  %i.aim = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !710
  %i.aio = sext i32 %i.aid to i64
  %i.aip = getelementptr inbounds [24 x i8], ptr %i.ain, i64 %i.aio ; 5 uses
  store i8 -109, ptr %i.aip, align 8, !tbaa !938
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 2
  store i16 0, ptr %i.aiq, align 2, !tbaa !957
  %i.air = getelementptr inbounds nuw i8, ptr %i.aip, i64 4
  store i32 %i.ak, ptr %i.air, align 4, !tbaa !954
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  store i8 0, ptr %i.ait, align 1, !tbaa !939
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ais, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit456

sqlite3VdbeAddOp1.exit456:                        ; preds = %bb.fk, %bb.fl
  %i.aiu = load ptr, ptr %i.ep, align 8, !tbaa !2049
  %.not305 = icmp eq ptr %i.aiu, null
  br i1 %.not305, label %sqlite3VdbeAddOp1.exit467, label %bb.fm

bb.fm:                                            ; preds = %sqlite3VdbeAddOp1.exit456
  %i.aiv = load i32, ptr %i.ks, align 4, !tbaa !2454 ; 3 uses
  %.not306 = icmp eq i32 %i.aiv, 0
  br i1 %.not306, label %sqlite3VdbeAddOp2.exit462, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aiw = load i32, ptr %i.dz, align 8, !tbaa !711 ; 3 uses
  %i.aix = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i457 = icmp sgt i32 %i.aix, %i.aiw
  br i1 %.not.i.i457, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aiy = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 72, i32 noundef 1, i32 noundef %i.aiv, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit459

bb.fp:                                            ; preds = %bb.fn
  %i.aiz = add nsw i32 %i.aiw, 1
  store i32 %i.aiz, ptr %i.dz, align 8, !tbaa !711
  %i.aja = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !710
  %i.ajc = sext i32 %i.aiw to i64
  %i.ajd = getelementptr inbounds [24 x i8], ptr %i.ajb, i64 %i.ajc ; 7 uses
  store i8 72, ptr %i.ajd, align 8, !tbaa !938
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 2
  store i16 0, ptr %i.aje, align 2, !tbaa !957
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4
  store i32 1, ptr %i.ajf, align 4, !tbaa !954
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  store i32 %i.aiv, ptr %i.ajg, align 8, !tbaa !955
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajd, i64 12
  store i32 0, ptr %i.ajh, align 4, !tbaa !956
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  store ptr null, ptr %i.aji, align 8, !tbaa !741
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajd, i64 1
  store i8 0, ptr %i.ajj, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit459

sqlite3VdbeAddOp2.exit459:                        ; preds = %bb.fo, %bb.fp
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !2455 ; 2 uses
  %i.ajm = load i32, ptr %i.dz, align 8, !tbaa !711 ; 3 uses
  %i.ajn = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i460 = icmp sgt i32 %i.ajn, %i.ajm
  br i1 %.not.i.i460, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %sqlite3VdbeAddOp2.exit459
  %i.ajo = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 72, i32 noundef 0, i32 noundef %i.ajl, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit462

bb.fr:                                            ; preds = %sqlite3VdbeAddOp2.exit459
  %i.ajp = add nsw i32 %i.ajm, 1
  store i32 %i.ajp, ptr %i.dz, align 8, !tbaa !711
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !710
  %i.ajs = sext i32 %i.ajm to i64
  %i.ajt = getelementptr inbounds [24 x i8], ptr %i.ajr, i64 %i.ajs ; 7 uses
  store i8 72, ptr %i.ajt, align 8, !tbaa !938
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 2
  store i16 0, ptr %i.aju, align 2, !tbaa !957
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  store i32 0, ptr %i.ajv, align 4, !tbaa !954
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store i32 %i.ajl, ptr %i.ajw, align 8, !tbaa !955
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 12
  store i32 0, ptr %i.ajx, align 4, !tbaa !956
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  store ptr null, ptr %i.ajy, align 8, !tbaa !741
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajt, i64 1
  store i8 0, ptr %i.ajz, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp2.exit462

sqlite3VdbeAddOp2.exit462:                        ; preds = %bb.fr, %bb.fq, %bb.fm
  %.val = load i32, ptr %i.dz, align 8, !tbaa !711 ; 4 uses
  %i.aka = load ptr, ptr %.0.i, align 8, !tbaa !687
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 103
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !928
  %.not.i.i463 = icmp eq i8 %i.akc, 0
  br i1 %.not.i.i463, label %bb.fs, label %sqlite3VdbeChangeP1.exit

bb.fs:                                            ; preds = %sqlite3VdbeAddOp2.exit462
  %i.akd = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !710
  %i.akf = getelementptr inbounds [24 x i8], ptr %i.ake, i64 %.0277
  br label %sqlite3VdbeChangeP1.exit

sqlite3VdbeChangeP1.exit:                         ; preds = %sqlite3VdbeAddOp2.exit462, %bb.fs
  %.0.i.i464 = phi ptr [ %i.akf, %bb.fs ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp2.exit462 ]
  %i.akg = getelementptr inbounds nuw i8, ptr %.0.i.i464, i64 4
  store i32 %.val, ptr %i.akg, align 4, !tbaa !954
  %i.akh = load i32, ptr %i.eb, align 4, !tbaa !1207
  %.not.i.i465 = icmp sgt i32 %i.akh, %.val
  br i1 %.not.i.i465, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %sqlite3VdbeChangeP1.exit
  %i.aki = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 68, i32 noundef %.0280, i32 noundef 0, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit467

bb.fu:                                            ; preds = %sqlite3VdbeChangeP1.exit
  %i.akj = add nsw i32 %.val, 1
  store i32 %i.akj, ptr %i.dz, align 8, !tbaa !711
  %i.akk = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !710
  %i.akm = sext i32 %.val to i64
  %i.akn = getelementptr inbounds [24 x i8], ptr %i.akl, i64 %i.akm ; 5 uses
  store i8 68, ptr %i.akn, align 8, !tbaa !938
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 2
  store i16 0, ptr %i.ako, align 2, !tbaa !957
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akn, i64 4
  store i32 %.0280, ptr %i.akp, align 4, !tbaa !954
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akn, i64 1
  store i8 0, ptr %i.akr, align 1, !tbaa !939
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akq, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit467

sqlite3VdbeAddOp1.exit467:                        ; preds = %bb.fu, %bb.ft, %sqlite3VdbeAddOp1.exit456
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @selectInnerLoop(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef nonnull captures(none) initializes((16, 20)) %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.RowLoadInfo, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 77 uses
  %i.c = load i8, ptr %5, align 8, !tbaa !2261    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2262 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !2338
  %i.h = icmp ne i8 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ] ; 3 uses
  %.not320 = icmp eq ptr %3, null
  br i1 %.not320, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !2305
  %i.k = icmp eq ptr %i.j, null
  %spec.store.select = select i1 %i.k, ptr null, ptr %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0291 = phi ptr [ %spec.store.select, %bb.d ], [ null, %bb.c ] ; 12 uses
  %i.l = icmp ne ptr %.0291, null                 ; 10 uses
  %or.cond = select i1 %i.l, i1 true, i1 %i.i
  br i1 %or.cond, label %codeOffset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2321 ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %codeOffset.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !711  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1207
  %.not.i.i = icmp sgt i32 %i.s, %i.q
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 60, i32 noundef %i.n, i32 noundef %6, i32 noundef 1), !inline_history !1235 ; 0 uses
  br label %codeOffset.exit

bb.i:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.q, 1
  store i32 %i.u, ptr %i.p, align 8, !tbaa !711
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !710
  %i.x = sext i32 %i.q to i64
  %i.y = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.x ; 7 uses
  store i8 60, ptr %i.y, align 8, !tbaa !938
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i16 0, ptr %i.z, align 2, !tbaa !957
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.n, ptr %i.aa, align 4, !tbaa !954
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %6, ptr %i.ab, align 8, !tbaa !955
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 12
end_hunk_1
