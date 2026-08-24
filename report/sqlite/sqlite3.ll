Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %i.aem = trunc i64 %.0683 to i32
  %i.aen = call i32 @sqlite3_initialize(), !inline_history !347
  %.not.i1018 = icmp ne i32 %i.aen, 0
  %i.aeo = icmp slt i32 %i.aem, 1
  %or.cond.i1019 = or i1 %i.aeo, %.not.i1018
  br i1 %or.cond.i1019, label %sqlite3_malloc.exit.thread, label %sqlite3_malloc.exit

sqlite3_malloc.exit:                              ; preds = %bb.hm
  %i.aep = and i64 %.0683, 2147483647
  %i.aeq = call fastcc ptr @sqlite3Malloc(i64 noundef %i.aep), !inline_history !347 ; 3 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %sqlite3_malloc.exit.thread, label %bb.ht

sqlite3_malloc.exit.thread:                       ; preds = %bb.hm, %sqlite3_malloc.exit
  store i8 7, ptr %i.x, align 4, !tbaa !306
  %i.aes = load i32, ptr %i.y, align 4, !tbaa !307
  %.not.i1021 = icmp eq i32 %i.aes, 0
  br i1 %.not.i1021, label %sqlite3StrAccumSetError.exit.thread1221, label %bb.hn

bb.hn:                                            ; preds = %sqlite3_malloc.exit.thread
  %i.aet = load i8, ptr %i.b, align 1, !tbaa !283 ; 2 uses
  %i.aeu = and i8 %i.aet, 4
  %.not.i.i = icmp eq i8 %i.aeu, 0
  br i1 %.not.i.i, label %sqlite3_str_reset.exit.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aev = load ptr, ptr %i.s, align 8, !tbaa !290 ; 2 uses
  %.not.i.i.i1022 = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i1022, label %sqlite3DbFree.exit.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aew = load ptr, ptr %0, align 8, !tbaa !308
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.aew, ptr noundef nonnull %i.aev)
  %.pre.i.i = load i8, ptr %i.b, align 1, !tbaa !283
  br label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.hp, %bb.ho
  %i.aex = phi i8 [ %i.aet, %bb.ho ], [ %.pre.i.i, %bb.hp ]
  %i.aey = and i8 %i.aex, -5
  store i8 %i.aey, ptr %i.b, align 1, !tbaa !283
  br label %sqlite3_str_reset.exit.i

sqlite3_str_reset.exit.i:                         ; preds = %sqlite3DbFree.exit.i.i, %bb.hn
  store i32 0, ptr %i.r, align 8, !tbaa !288
  store i32 0, ptr %i.q, align 8, !tbaa !287
  store ptr null, ptr %i.s, align 8, !tbaa !290
  br label %sqlite3StrAccumSetError.exit.thread1221

bb.hq:                                            ; preds = %bb.hl, %bb.hk
  %i.aez = call fastcc i32 @sqlite3StrAccumEnlarge(ptr noundef nonnull %0, i64 noundef %.0683)
  %i.afa = sext i32 %i.aez to i64
  %i.afb = icmp sgt i64 %.0683, %i.afa
  br i1 %i.afb, label %sqlite3StrAccumSetError.exit.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.afc = load ptr, ptr %i.s, align 8, !tbaa !290
  %i.afd = load i32, ptr %i.q, align 8, !tbaa !287
  %i.afe = zext i32 %i.afd to i64
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.afe
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hj
  %i.afg = load ptr, ptr %i.s, align 8, !tbaa !290
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.aee
  br label %bb.ht

bb.ht:                                            ; preds = %sqlite3_malloc.exit, %bb.hr, %bb.hs
  %.10821 = phi ptr [ %i.afh, %bb.hs ], [ %i.aff, %bb.hr ], [ %i.aeq, %sqlite3_malloc.exit ] ; 10 uses
  %.2719 = phi ptr [ null, %bb.hs ], [ null, %bb.hr ], [ %i.aeq, %sqlite3_malloc.exit ] ; 3 uses
  %i.afi = icmp sgt i32 %.7806, 0                 ; 2 uses
  %i.afj = zext i1 %i.afi to i8
  %i.afk = or i8 %.176011641948, %i.afj
  %i.afl = or i8 %i.afk, %.176311621955           ; 2 uses
  %.not940 = icmp eq i8 %.2741, 0
  br i1 %.not940, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.afm = getelementptr inbounds nuw i8, ptr %.10821, i64 1
  store i8 %.2741, ptr %.10821, align 1, !tbaa !231
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.11822 = phi ptr [ %i.afm, %bb.hu ], [ %.10821, %bb.ht ] ; 5 uses
  %i.afn = icmp slt i32 %.0712, 0
  br i1 %i.afn, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.afo = getelementptr inbounds nuw i8, ptr %.11822, i64 1
  store i8 48, ptr %.11822, align 1, !tbaa !231
  br label %.loopexit1292

bb.hx:                                            ; preds = %bb.hv
  %.not941 = icmp eq i8 %.174711701932, 0
  br i1 %.not941, label %bb.ic, label %.lr.ph1448

.lr.ph1448:                                       ; preds = %bb.hx, %bb.ib
  %.06841447 = phi i32 [ %.1685, %bb.ib ], [ 0, %bb.hx ] ; 4 uses
  %.17131446 = phi i32 [ %i.agc, %bb.ib ], [ %.0712, %bb.hx ] ; 4 uses
  %.128231445 = phi ptr [ %.13, %bb.ib ], [ %.11822, %bb.hx ] ; 3 uses
  %i.afp = load i32, ptr %3, align 8, !tbaa !335
  %i.afq = icmp slt i32 %.06841447, %i.afp
  br i1 %i.afq, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.lr.ph1448
  %i.afr = load ptr, ptr %i.ah, align 8, !tbaa !337
  %i.afs = add nsw i32 %.06841447, 1
  %i.aft = sext i32 %.06841447 to i64
  %i.afu = getelementptr inbounds i8, ptr %i.afr, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !231
  br label %bb.hz

bb.hz:                                            ; preds = %.lr.ph1448, %bb.hy
  %.1685 = phi i32 [ %i.afs, %bb.hy ], [ %.06841447, %.lr.ph1448 ] ; 2 uses
  %i.afw = phi i8 [ %i.afv, %bb.hy ], [ 48, %.lr.ph1448 ]
  %i.afx = getelementptr inbounds nuw i8, ptr %.128231445, i64 1 ; 2 uses
  store i8 %i.afw, ptr %.128231445, align 1, !tbaa !231
  %i.afy = urem i32 %.17131446, 3
  %i.afz = icmp eq i32 %i.afy, 0
  %i.aga = icmp samesign ugt i32 %.17131446, 1
  %or.cond15 = and i1 %i.aga, %i.afz
  br i1 %or.cond15, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.agb = getelementptr inbounds nuw i8, ptr %.128231445, i64 2
  store i8 44, ptr %i.afx, align 1, !tbaa !231
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hz, %bb.ia
  %.13 = phi ptr [ %i.agb, %bb.ia ], [ %i.afx, %bb.hz ] ; 2 uses
  %i.agc = add nsw i32 %.17131446, -1
  %i.agd = icmp sgt i32 %.17131446, 0
  br i1 %i.agd, label %.lr.ph1448, label %.loopexit1292, !llvm.loop !348

bb.ic:                                            ; preds = %bb.hx
  %i.age = add nuw nsw i32 %.0712, 1
  %i.agf = load i32, ptr %3, align 8, !tbaa !335  ; 2 uses
  %.not942 = icmp slt i32 %.0712, %i.agf
  %spec.select969 = select i1 %.not942, i32 %i.age, i32 %i.agf ; 4 uses
  %i.agg = load ptr, ptr %i.ah, align 8, !tbaa !337
  %i.agh = sext i32 %spec.select969 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11822, ptr align 1 %i.agg, i64 %i.agh, i1 false)
  %i.agi = getelementptr inbounds i8, ptr %.11822, i64 %i.agh ; 3 uses
  %i.agj = sub nsw i32 %.0712, %spec.select969    ; 3 uses
  %i.agk = icmp sgt i32 %i.agj, -1
  br i1 %i.agk, label %bb.id, label %.loopexit1292

bb.id:                                            ; preds = %bb.ic
  %i.agl = add nuw nsw i32 %i.agj, 1
  %i.agm = zext nneg i32 %i.agl to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agi, i8 48, i64 %i.agm, i1 false)
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.agm
  br label %.loopexit1292

.loopexit1292:                                    ; preds = %bb.ib, %bb.id, %bb.ic, %bb.hw
  %.14 = phi ptr [ %i.afo, %bb.hw ], [ %i.agi, %bb.ic ], [ %i.agn, %bb.id ], [ %.13, %bb.ib ] ; 3 uses
  %.2714 = phi i32 [ %i.adp, %bb.hw ], [ %i.agj, %bb.ic ], [ -1, %bb.id ], [ -1, %bb.ib ] ; 2 uses
  %.3687 = phi i32 [ 0, %bb.hw ], [ %spec.select969, %bb.ic ], [ %spec.select969, %bb.id ], [ %.1685, %bb.ib ] ; 2 uses
  %.not943 = icmp eq i8 %i.afl, 0
  br i1 %.not943, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %.loopexit1292
  %i.ago = getelementptr inbounds nuw i8, ptr %.14, i64 1
  store i8 46, ptr %.14, align 1, !tbaa !231
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %.loopexit1292
  %.15 = phi ptr [ %i.ago, %bb.ie ], [ %.14, %.loopexit1292 ] ; 3 uses
  %i.agp = icmp ne i32 %.2714, -1
  %or.cond17 = select i1 %i.agp, i1 %i.afi, i1 false
  br i1 %or.cond17, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.agq = xor i32 %.2714, -1
  %spec.select970 = call i32 @llvm.umin.i32(i32 %.7806, i32 %i.agq) ; 2 uses
  %i.agr = zext nneg i32 %spec.select970 to i64   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.15, i8 48, i64 %i.agr, i1 false)
  %i.ags = getelementptr inbounds nuw i8, ptr %.15, i64 %i.agr
  %i.agt = sub nsw i32 %.7806, %spec.select970
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.16 = phi ptr [ %i.ags, %bb.ig ], [ %.15, %bb.if ] ; 4 uses
  %.8807 = phi i32 [ %i.agt, %bb.ig ], [ %.7806, %bb.if ] ; 4 uses
  %i.agu = icmp sgt i32 %.8807, 0
  br i1 %i.agu, label %bb.ii, label %bb.il

bb.ii:                                            ; preds = %bb.ih
  %i.agv = load i32, ptr %3, align 8, !tbaa !335
  %i.agw = sub nsw i32 %i.agv, %.3687             ; 2 uses
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.agy = call i32 @llvm.umin.i32(i32 %i.agw, i32 %.8807) ; 2 uses
  %i.agz = load ptr, ptr %i.ah, align 8, !tbaa !337
  %i.aha = sext i32 %.3687 to i64
  %i.ahb = getelementptr inbounds i8, ptr %i.agz, i64 %i.aha
  %i.ahc = zext nneg i32 %i.agy to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.16, ptr align 1 %i.ahb, i64 %i.ahc, i1 false)
  %i.ahd = getelementptr inbounds nuw i8, ptr %.16, i64 %i.ahc
  %i.ahe = sub nuw nsw i32 %.8807, %i.agy
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.17 = phi ptr [ %i.ahd, %bb.ij ], [ %.16, %bb.ii ] ; 3 uses
  %.9808 = phi i32 [ %i.ahe, %bb.ij ], [ %.8807, %bb.ii ] ; 2 uses
  %4 = icmp eq i32 %.9808, 0
  %i.ahf = icmp ne i8 %.0711, 0
  %or.cond19 = select i1 %4, i1 true, i1 %i.ahf
  br i1 %or.cond19, label %bb.il, label %.thread1212

.thread1212:                                      ; preds = %bb.ik
  %i.ahg = zext nneg i32 %.9808 to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.17, i8 48, i64 %i.ahg, i1 false)
  %i.ahh = getelementptr inbounds nuw i8, ptr %.17, i64 %i.ahg
  br label %.loopexit1290

bb.il:                                            ; preds = %bb.ik, %bb.ih
  %.19 = phi ptr [ %.16, %bb.ih ], [ %.17, %bb.ik ] ; 2 uses
  %i.ahi = icmp ne i8 %.0711, 0
  %i.ahj = icmp ne i8 %i.afl, 0
  %or.cond22 = select i1 %i.ahi, i1 %i.ahj, i1 false
  br i1 %or.cond22, label %.preheader1289, label %.loopexit1290

.preheader1289:                                   ; preds = %bb.il, %bb.im
  %.20 = phi ptr [ %i.ahk, %bb.im ], [ %.19, %bb.il ] ; 4 uses
  %i.ahk = getelementptr inbounds i8, ptr %.20, i64 -1 ; 5 uses
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !231
  switch i8 %i.ahl, label %.loopexit1290 [
    i8 48, label %bb.im
    i8 46, label %bb.in
  ]

bb.im:                                            ; preds = %.preheader1289
  store i8 0, ptr %i.ahk, align 1, !tbaa !231
  br label %.preheader1289, !llvm.loop !349

bb.in:                                            ; preds = %.preheader1289
  br i1 %.not930, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ahm = getelementptr inbounds nuw i8, ptr %.20, i64 1
  store i8 48, ptr %.20, align 1, !tbaa !231
  br label %.loopexit1290

bb.ip:                                            ; preds = %bb.in
  store i8 0, ptr %i.ahk, align 1, !tbaa !231
  br label %.loopexit1290

.loopexit1290:                                    ; preds = %.preheader1289, %.thread1212, %bb.ip, %bb.io, %bb.il
  %.21 = phi ptr [ %i.ahm, %bb.io ], [ %i.ahk, %bb.ip ], [ %i.ahh, %.thread1212 ], [ %.19, %bb.il ], [ %.20, %.preheader1289 ] ; 5 uses
  br i1 %.1744, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %.loopexit1290
  %i.ahn = load i32, ptr %i.af, align 4, !tbaa !336 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !323
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr @aDigits, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !231
  %i.aht = getelementptr inbounds nuw i8, ptr %.21, i64 1
  store i8 %i.ahs, ptr %.21, align 1, !tbaa !231
  %i.ahu = icmp slt i32 %i.ahn, 1                 ; 2 uses
  %i.ahv = sub nsw i32 1, %i.ahn
  %i.ahw = add nsw i32 %i.ahn, -1
  %.sink = select i1 %i.ahu, i8 45, i8 43
  %.0715 = select i1 %i.ahu, i32 %i.ahv, i32 %i.ahw ; 4 uses
  store i8 %.sink, ptr %i.aht, align 1, !tbaa !231
  %.22 = getelementptr inbounds nuw i8, ptr %.21, i64 2 ; 2 uses
  %i.ahx = icmp samesign ugt i32 %.0715, 99
  br i1 %i.ahx, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.ahy = udiv i32 %.0715, 100
  %i.ahz = trunc i32 %i.ahy to i8
  %i.aia = add i8 %i.ahz, 48
  %i.aib = getelementptr inbounds nuw i8, ptr %.21, i64 3
  store i8 %i.aia, ptr %.22, align 1, !tbaa !231
  %i.aic = urem i32 %.0715, 100
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.23 = phi ptr [ %i.aib, %bb.ir ], [ %.22, %bb.iq ] ; 3 uses
  %.1716 = phi i32 [ %i.aic, %bb.ir ], [ %.0715, %bb.iq ]
  %.lhs.trunc = trunc nuw nsw i32 %.1716 to i8    ; 2 uses
  %i.aid = udiv i8 %.lhs.trunc, 10
  %i.aie = or disjoint i8 %i.aid, 48
  %i.aif = getelementptr inbounds nuw i8, ptr %.23, i64 1
  store i8 %i.aie, ptr %.23, align 1, !tbaa !231
  %i.aig = urem i8 %.lhs.trunc, 10
  %i.aih = or disjoint i8 %i.aig, 48
  %i.aii = getelementptr inbounds nuw i8, ptr %.23, i64 2
  store i8 %i.aih, ptr %i.aif, align 1, !tbaa !231
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %.loopexit1290
  %.24 = phi ptr [ %i.aii, %bb.is ], [ %.21, %.loopexit1290 ] ; 4 uses
  %i.aij = ptrtoint ptr %.24 to i64
  %i.aik = ptrtoint ptr %.10821 to i64
  %i.ail = sub i64 %i.aij, %i.aik                 ; 3 uses
  %i.aim = trunc i64 %i.ail to i32                ; 3 uses
  %i.ain = icmp sgt i32 %.377611551998, %i.aim
  br i1 %i.ain, label %bb.iu, label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %i.aio = sub nsw i32 %.377611551998, %i.aim
  %i.aip = zext nneg i32 %i.aio to i64            ; 5 uses
  %.not945 = icmp eq i8 %.277211581977, 0
  br i1 %.not945, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.memset.p0.i64(ptr align 1 %.24, i8 32, i64 %i.aip, i1 false)
  br label %bb.iz

bb.iw:                                            ; preds = %bb.iu
  %.not946 = icmp eq i8 %.175811661938, 0
  br i1 %.not946, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.aiq = getelementptr inbounds nuw i8, ptr %.10821, i64 %i.aip
  %sext = shl i64 %i.ail, 32
  %i.air = ashr exact i64 %sext, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aiq, ptr align 1 %.10821, i64 %i.air, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %.10821, i8 32, i64 %i.aip, i1 false)
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iw
  %i.ais = icmp ne i8 %.2741, 0                   ; 2 uses
  %.neg = sext i1 %i.ais to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %.10821, i64 %i.aip
  %i.aiu = zext i1 %i.ais to i64                  ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %.10821, i64 %i.aiu ; 2 uses
  %i.aix = add i64 %i.ail, %.neg
  %sext947 = shl i64 %i.aix, 32
  %i.aiy = ashr exact i64 %sext947, 32
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aiv, ptr align 1 %i.aiw, i64 %i.aiy, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %i.aiw, i8 48, i64 %i.aip, i1 false)
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iv, %bb.iy, %bb.ix, %bb.it
  %.2789 = phi i32 [ %i.aim, %bb.it ], [ %.377611551998, %bb.ix ], [ %.377611551998, %bb.iy ], [ %.377611551998, %bb.iv ] ; 3 uses
  %i.aiz = icmp eq ptr %.2719, null
  br i1 %i.aiz, label %sqlite3StrAccumSetError.exit, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  store i8 0, ptr %.24, align 1, !tbaa !231
  br label %sqlite3StrAccumSetError.exit.thread

sqlite3StrAccumSetError.exit.thread:              ; preds = %bb.gw, %bb.hq, %bb.ja, %bb.hc
  %.25.ph = phi ptr [ %.9820, %bb.hc ], [ %.2719, %bb.ja ], [ %.1812, %bb.hq ], [ %i.acy, %bb.gw ]
  %.3790.ph = phi i32 [ %i.ade, %bb.hc ], [ %.2789, %bb.ja ], [ 0, %bb.hq ], [ %i.acz, %bb.gw ]
  %.4777.ph = phi i32 [ %.377611551998, %bb.hc ], [ %.377611551998, %bb.ja ], [ 0, %bb.hq ], [ %.377611551998, %bb.gw ]
  %.3720.ph = phi ptr [ null, %bb.hc ], [ %.2719, %bb.ja ], [ null, %bb.hq ], [ null, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %sqlite3RecordErrorOffsetOfExpr.exit

sqlite3StrAccumSetError.exit.thread1221:          ; preds = %sqlite3_malloc.exit.thread, %sqlite3_str_reset.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %sqlite3_str_append.exit987

sqlite3StrAccumSetError.exit:                     ; preds = %bb.iz
  %i.aja = load i32, ptr %i.q, align 8, !tbaa !287
  %i.ajb = add i32 %i.aja, %.2789
  store i32 %i.ajb, ptr %i.q, align 8, !tbaa !287
  %i.ajc = zext nneg i32 %.2789 to i64
  %i.ajd = getelementptr inbounds nuw i8, ptr %.10821, i64 %i.ajc
  store i8 0, ptr %i.ajd, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.py

bb.jb:                                            ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bh
  %.102031 = phi ptr [ %.10.jt0, %bb.bi ], [ %i.bj, %bb.bj ], [ %i.gc, %bb.bk ], [ %.102027, %bb.bh ] ; 2 uses
  %.277211581978 = phi i8 [ %.27721158.jt0, %bb.bi ], [ %.0770, %bb.bj ], [ %.0770, %bb.bk ], [ %.277211581974, %bb.bh ] ; 2 uses
  br i1 %.not, label %bb.jc, label %sqlite3RecordErrorOffsetOfExpr.exit

bb.jc:                                            ; preds = %bb.jb
  %i.aje = load i32, ptr %i.q, align 8, !tbaa !287
  %i.ajf = load i32, ptr %2, align 8              ; 3 uses
  %i.ajg = icmp ult i32 %i.ajf, 41
  br i1 %i.ajg, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.ajh = load ptr, ptr %i.w, align 8
  %i.aji = zext nneg i32 %i.ajf to i64
  %i.ajj = getelementptr i8, ptr %i.ajh, i64 %i.aji
  %i.ajk = add nuw nsw i32 %i.ajf, 8
  store i32 %i.ajk, ptr %2, align 8
  br label %bb.jf

bb.je:                                            ; preds = %bb.jc
  %i.ajl = load ptr, ptr %i.v, align 8            ; 2 uses
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 8
  store ptr %i.ajm, ptr %i.v, align 8
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.ajn = phi ptr [ %i.ajj, %bb.jd ], [ %i.ajl, %bb.je ]
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !350
  store i32 %i.aje, ptr %i.ajo, align 4, !tbaa !27
  br label %sqlite3RecordErrorOffsetOfExpr.exit

bb.jg:                                            ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bh
  %.102032 = phi ptr [ %.10.jt0, %bb.bi ], [ %i.bj, %bb.bj ], [ %i.gc, %bb.bk ], [ %.102027, %bb.bh ]
  %.377611551999 = phi i32 [ %.37761155.jt0, %bb.bi ], [ %.0773, %bb.bj ], [ %.0773, %bb.bk ], [ %.377611551995, %bb.bh ]
  %.277211581979 = phi i8 [ %.27721158.jt0, %bb.bi ], [ %.0770, %bb.bj ], [ %.0770, %bb.bk ], [ %.277211581974, %bb.bh ]
  store i8 37, ptr %i.a, align 16, !tbaa !231
end_hunk_0
begin_hunk_1_@sqlite3_uri_boolean:bb.a
  %.not8.i.i = icmp eq i8 %i.j, 0
  br i1 %.not8.i.i, label %databaseName.exit.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.d, %bb.c, %bb.b, %.preheader.i
  br label %.preheader.i, !llvm.loop !446

databaseName.exit.i:                              ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #59
  %i.l = and i64 %i.k, 1073741823
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.l
  %.01418.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.n = load i8, ptr %.01418.i.i, align 1, !tbaa !231
  %.not19.i.i = icmp eq i8 %i.n, 0
  br i1 %.not19.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %databaseName.exit.i, %bb.e
  %.01420.i.i = phi ptr [ %.014.i.i, %bb.e ], [ %.01418.i.i, %databaseName.exit.i ] ; 3 uses
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.01420.i.i, ptr noundef nonnull readonly dereferenceable(1) %1) #59
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.01420.i.i) #59
  %i.q = and i64 %i.p, 1073741823
  %i.r = getelementptr inbounds nuw i8, ptr %.01420.i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.t = icmp eq i32 %i.o, 0
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.s) #59
  %i.v = and i64 %i.u, 1073741823
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %.014.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.x = load i8, ptr %.014.i.i, align 1, !tbaa !231
  %.not.i9.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i, label %.loopexit, label %.lr.ph.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.y = icmp ne i32 %2, 0
  %i.z = zext i1 %i.y to i8
  %i.aa = tail call fastcc zeroext i8 @getSafetyLevel(ptr noundef nonnull readonly %i.s, i32 noundef 1, i8 noundef zeroext range(i8 0, 2) %i.z)
  %i.ab = icmp ne i8 %i.aa, 0
  br label %bb.g

.loopexit:                                        ; preds = %bb.e, %bb.a, %databaseName.exit.i
  %i.ac = icmp ne i32 %2, 0
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f
  %.in = phi i1 [ %i.ab, %bb.f ], [ %i.ac, %.loopexit ]
  %i.ad = zext i1 %.in to i32
  ret i32 %i.ad
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @sqlite3_uri_int64(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) #19 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %sqlite3_uri_parameter.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %.0.i.i = phi ptr [ %i.d, %.preheader.i.backedge ], [ %0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !231
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %.preheader.i.backedge

bb.b:                                             ; preds = %.preheader.i
  %i.f = getelementptr inbounds i8, ptr %.0.i.i, i64 -2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %.not6.i.i = icmp eq i8 %i.g, 0
  br i1 %.not6.i.i, label %bb.c, label %.preheader.i.backedge

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %.0.i.i, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !231
  %.not7.i.i = icmp eq i8 %i.i, 0
  br i1 %.not7.i.i, label %bb.d, label %.preheader.i.backedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %.0.i.i, i64 -4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !231
  %.not8.i.i = icmp eq i8 %i.k, 0
  br i1 %.not8.i.i, label %databaseName.exit.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.d, %bb.c, %bb.b, %.preheader.i
  br label %.preheader.i, !llvm.loop !446

databaseName.exit.i:                              ; preds = %bb.d
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #59
  %i.m = and i64 %i.l, 1073741823
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.m
  %.01418.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.o = load i8, ptr %.01418.i.i, align 1, !tbaa !231
  %.not19.i.i = icmp eq i8 %i.o, 0
  br i1 %.not19.i.i, label %sqlite3_uri_parameter.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %databaseName.exit.i, %bb.e
  %.01420.i.i = phi ptr [ %.014.i.i, %bb.e ], [ %.01418.i.i, %databaseName.exit.i ] ; 3 uses
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.01420.i.i, ptr noundef nonnull readonly dereferenceable(1) %1) #59
  %i.q = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.01420.i.i) #59
  %i.r = and i64 %i.q, 1073741823
  %i.s = getelementptr inbounds nuw i8, ptr %.01420.i.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = icmp eq i32 %i.p, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.v = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #59
  %i.w = and i64 %i.v, 1073741823
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %.014.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.y = load i8, ptr %.014.i.i, align 1, !tbaa !231
  %.not.i9.i = icmp eq i8 %i.y, 0
  br i1 %.not.i9.i, label %sqlite3_uri_parameter.exit.thread, label %.lr.ph.i.i

sqlite3_uri_parameter.exit.thread:                ; preds = %bb.e, %bb.a, %databaseName.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.z = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %i.t, ptr noundef %i.a)
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.aa, i64 %i.ab, i64 %2
  br label %bb.g

bb.g:                                             ; preds = %sqlite3_uri_parameter.exit.thread, %bb.f
  %.0 = phi i64 [ %2, %sqlite3_uri_parameter.exit.thread ], [ %spec.select, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 4) i32 @sqlite3DecOrHexToI64(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !231
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !231
  switch i8 %i.d, label %bb.e [
    i8 120, label %.preheader45
    i8 88, label %.preheader45
  ]

.preheader45:                                     ; preds = %bb.b, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.preheader45, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 2, %.preheader45 ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !231   ; 3 uses
  %i.g = icmp eq i8 %i.f, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.g, label %bb.c, label %.preheader, !llvm.loop !1377

.preheader:                                       ; preds = %bb.c
  %i.h = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.i = zext i8 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !231
  %i.l = and i8 %i.k, 8
  %.not3033 = icmp eq i8 %i.l, 0
  br i1 %.not3033, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph ], [ %indvars.iv, %.preheader ]
  %i.m = phi i8 [ %i.v, %.lr.ph ], [ %i.f, %.preheader ] ; 2 uses
  %.02734 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader ]
  %i.n = shl i64 %.02734, 4
  %i.o = and i8 %i.m, 64
  %.not.i = icmp eq i8 %i.o, 0
  %i.p = select i1 %.not.i, i8 0, i8 9
  %i.q = add i8 %i.p, %i.m
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  %i.t = or disjoint i64 %i.n, %i.s               ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231   ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !231
  %i.z = and i8 %i.y, 8
  %.not30 = icmp eq i8 %i.z, 0
  br i1 %.not30, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1378

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.aa = trunc nuw i64 %indvars.iv.next42 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa32 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next42, %._crit_edge.loopexit ]
  %.027.lcssa = phi i64 [ 0, %.preheader ], [ %i.t, %._crit_edge.loopexit ]
  %.025.lcssa = phi i32 [ %i.h, %.preheader ], [ %i.aa, %._crit_edge.loopexit ]
  store i64 %.027.lcssa, ptr %1, align 8
  %i.ab = sub nuw nsw i32 %.025.lcssa, %i.h
  %i.ac = icmp sgt i32 %i.ab, 16
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa32
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !231
  %.not31 = icmp ne i8 %i.ae, 0
  %. = zext i1 %.not31 to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.af = tail call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.1808) #59 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1073741823
  %i.ai = and i64 %i.af, 1073741823
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %.not = icmp ne i8 %i.ak, 0
  %i.al = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.ah, %i.al
  %i.am = tail call fastcc i32 @sqlite3Atoi64(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %spec.select, i8 noundef zeroext 1)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.e
  %.1 = phi i32 [ %i.am, %bb.e ], [ 2, %._crit_edge ], [ %., %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define noundef ptr @sqlite3_filename_database(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %databaseName.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0.i = phi ptr [ %i.b, %.preheader.backedge ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !231
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.preheader.backedge

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !231
  %.not6.i = icmp eq i8 %i.e, 0
  br i1 %.not6.i, label %bb.c, label %.preheader.backedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %.not7.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !231
  %.not8.i = icmp eq i8 %i.i, 0
  br i1 %.not8.i, label %databaseName.exit, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %bb.c, %bb.b, %.preheader
  br label %.preheader, !llvm.loop !446

databaseName.exit:                                ; preds = %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @sqlite3_filename_journal(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.0.i = phi ptr [ %i.b, %.preheader.backedge ], [ %0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !231
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.preheader.backedge

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds i8, ptr %.0.i, i64 -2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !231
  %.not6.i = icmp eq i8 %i.e, 0
  br i1 %.not6.i, label %bb.c, label %.preheader.backedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.0.i, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %.not7.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 -4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !231
  %.not8.i = icmp eq i8 %i.i, 0
  br i1 %.not8.i, label %databaseName.exit, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %bb.c, %bb.b, %.preheader
  br label %.preheader, !llvm.loop !446

databaseName.exit:                                ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i) #59
  %i.k = and i64 %i.j, 1073741823
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.k ; 2 uses
  %.017 = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.m = load i8, ptr %.017, align 1, !tbaa !231
  %.not18 = icmp eq i8 %i.m, 0
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %databaseName.exit, %.lr.ph
  %.019 = phi ptr [ %.0, %.lr.ph ], [ %.017, %databaseName.exit ] ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.019) #59
  %i.o = and i64 %i.n, 1073741823
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.q) #59
  %i.s = and i64 %i.r, 1073741823
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0, align 1, !tbaa !231
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1379

.critedge:                                        ; preds = %.lr.ph, %databaseName.exit
  %.pn.lcssa = phi ptr [ %i.l, %databaseName.exit ], [ %i.t, %.lr.ph ]
  %i.v = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.critedge
  %.012 = phi ptr [ %i.v, %.critedge ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define ptr @sqlite3_filename_wal(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_filename_journal.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %.0.i.i = phi ptr [ %i.b, %.preheader.i.backedge ], [ %0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !231
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %.preheader.i.backedge

bb.b:                                             ; preds = %.preheader.i
  %i.d = getelementptr inbounds i8, ptr %.0.i.i, i64 -2
  %i.e = load i8, ptr %i.d, align 1, !tbaa !231
  %.not6.i.i = icmp eq i8 %i.e, 0
  br i1 %.not6.i.i, label %bb.c, label %.preheader.i.backedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %.0.i.i, i64 -3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %.not7.i.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i.i, label %bb.d, label %.preheader.i.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.0.i.i, i64 -4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !231
  %.not8.i.i = icmp eq i8 %i.i, 0
  br i1 %.not8.i.i, label %databaseName.exit.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.d, %bb.c, %bb.b, %.preheader.i
  br label %.preheader.i, !llvm.loop !446

databaseName.exit.i:                              ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #59
  %i.k = and i64 %i.j, 1073741823
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.k ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  %i.m = load i8, ptr %.017.i, align 1, !tbaa !231
  %.not18.i = icmp eq i8 %i.m, 0
  br i1 %.not18.i, label %sqlite3Strlen30.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %databaseName.exit.i, %.lr.ph.i
  %.019.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.017.i, %databaseName.exit.i ] ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.019.i) #59
  %i.o = and i64 %i.n, 1073741823
  %i.p = getelementptr inbounds nuw i8, ptr %.019.i, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.q) #59
  %i.s = and i64 %i.r, 1073741823
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.u = load i8, ptr %.0.i, align 1, !tbaa !231
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %sqlite3Strlen30.exit, label %.lr.ph.i, !llvm.loop !1379

sqlite3Strlen30.exit:                             ; preds = %.lr.ph.i, %databaseName.exit.i
  %.pn.lcssa.i = phi ptr [ %i.l, %databaseName.exit.i ], [ %i.t, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.pn.lcssa.i, i64 2 ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #59
  %i.x = and i64 %i.w, 1073741823
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  br label %sqlite3_filename_journal.exit.thread

end_hunk_1
begin_hunk_2_@unixClose:bb.a

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ax(ptr noundef nonnull %i.aw) #58, !inline_history !1400
  br label %releaseInodeInfo.exit

bb.t:                                             ; preds = %sqlite3_mutex_free.exit.i
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ay(ptr noundef nonnull %i.t) #58, !inline_history !1399
  br label %releaseInodeInfo.exit

releaseInodeInfo.exit:                            ; preds = %sqlite3_mutex_leave.exit, %bb.g, %sqlite3_mutex_enter.exit.i.i, %bb.s, %bb.t
  tail call fastcc void @closeUnixFile(ptr noundef nonnull %0)
  %i.az = load ptr, ptr @unixBigLock, align 8, !tbaa !257 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i.i13, label %unixLeaveMutex.exit, label %bb.u

bb.u:                                             ; preds = %releaseInodeInfo.exit
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ba(ptr noundef nonnull %i.az) #58, !inline_history !494
  br label %unixLeaveMutex.exit

unixLeaveMutex.exit:                              ; preds = %releaseInodeInfo.exit, %bb.u
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8459) i32 @unixRead(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1401 ; 3 uses
  %i.c = icmp slt i64 %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = add nsw i64 %3, %i.d
  %.not = icmp sgt i64 %i.e, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1402
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.h, i64 %i.d, i1 false)
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = sub nsw i64 %i.b, %3                     ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1402
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %3
  %sext = shl i64 %i.i, 32
  %i.n = ashr exact i64 %sext, 32                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.m, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = sub nsw i32 %2, %i.j
  %i.q = add nsw i64 %i.n, %3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.037 = phi ptr [ %i.o, %bb.d ], [ %1, %bb.a ]  ; 3 uses
  %.036 = phi i32 [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 6 uses
  %.035 = phi i64 [ %i.q, %bb.d ], [ %3, %bb.a ]  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 248), align 8, !tbaa !438
  %i.t = load i32, ptr %i.r, align 8, !tbaa !451
  %i.u = sext i32 %.036 to i64
  %i.v = tail call i64 %i.s(i32 noundef %i.t, ptr noundef %.037, i64 noundef %i.u, i64 noundef %.035) #58, !inline_history !1403 ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = icmp eq i32 %.036, %i.w
  br i1 %i.x, label %seekAndRead.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.j
  %i.y = phi i32 [ %i.ao, %bb.j ], [ %i.w, %bb.e ] ; 5 uses
  %i.z = phi i64 [ %i.an, %bb.j ], [ %i.v, %bb.e ]
  %.041.i = phi i32 [ %.1.i, %bb.j ], [ 0, %bb.e ] ; 3 uses
  %.02140.i = phi i32 [ %.122.i, %bb.j ], [ %.036, %bb.e ] ; 2 uses
  %.02339.i = phi ptr [ %.124.i, %bb.j ], [ %.037, %bb.e ] ; 2 uses
  %.02538.i = phi i64 [ %.126.i, %bb.j ], [ %.035, %bb.e ] ; 2 uses
  %i.aa = icmp slt i32 %i.y, 0
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = tail call ptr @__errno_location() #60, !inline_history !1403
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ac, ptr %i.ae, align 8, !tbaa !462
  br label %seekAndRead.exit

bb.h:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %seekAndRead.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = sub nsw i32 %.02140.i, %i.y
  %i.ag = and i64 %i.z, 2147483647                ; 2 uses
  %i.ah = add nsw i64 %.02538.i, %i.ag
  %i.ai = add nuw nsw i32 %.041.i, %i.y
  %i.aj = getelementptr inbounds nuw i8, ptr %.02339.i, i64 %i.ag
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.126.i = phi i64 [ %.02538.i, %bb.f ], [ %i.ah, %bb.i ] ; 2 uses
  %.124.i = phi ptr [ %.02339.i, %bb.f ], [ %i.aj, %bb.i ] ; 2 uses
  %.122.i = phi i32 [ %.02140.i, %bb.f ], [ %i.af, %bb.i ] ; 4 uses
  %.1.i = phi i32 [ %.041.i, %bb.f ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 248), align 8, !tbaa !438
  %i.al = load i32, ptr %i.r, align 8, !tbaa !451
  %i.am = sext i32 %.122.i to i64
  %i.an = tail call i64 %i.ak(i32 noundef %i.al, ptr noundef %.124.i, i64 noundef %i.am, i64 noundef %.126.i) #58, !inline_history !1403 ; 2 uses
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = icmp eq i32 %.122.i, %i.ao
  br i1 %i.ap, label %seekAndRead.exit, label %.lr.ph.i, !llvm.loop !1404

seekAndRead.exit:                                 ; preds = %bb.h, %bb.j, %bb.e, %bb.g
  %i.aq = phi i32 [ %i.y, %bb.g ], [ %.036, %bb.e ], [ 0, %bb.h ], [ %.122.i, %bb.j ]
  %.2.i = phi i32 [ 0, %bb.g ], [ 0, %bb.e ], [ %.041.i, %bb.h ], [ %.1.i, %bb.j ]
  %i.ar = add nsw i32 %.2.i, %i.aq                ; 4 uses
  %i.as = icmp eq i32 %i.ar, %.036
  br i1 %i.as, label %bb.n, label %bb.k

bb.k:                                             ; preds = %seekAndRead.exit
  %i.at = icmp slt i32 %i.ar, 0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = load i32, ptr %i.au, align 8, !tbaa !462
  %switch.tableidx = add i32 %i.av, -5            ; 2 uses
  %i.aw = icmp ult i32 %switch.tableidx, 30
  br i1 %i.aw, label %switch.lookup, label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %i.au, align 8, !tbaa !462
  %i.ax = zext nneg i32 %i.ar to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.037, i64 %i.ax
  %i.az = sub nsw i32 %.036, %i.ar
  %i.ba = sext i32 %i.az to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.ba, i1 false)
  br label %bb.n

switch.lookup:                                    ; preds = %bb.l
  %i.bb = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.unixRead, i64 %i.bb
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %switch.lookup, %seekAndRead.exit, %bb.m, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 522, %bb.m ], [ %switch.ext, %switch.lookup ], [ 0, %seekAndRead.exit ], [ 266, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 779) i32 @unixWrite(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.019 = phi ptr [ %1, %bb.a ], [ %i.t, %bb.e ]  ; 2 uses
  %.018 = phi i32 [ %2, %bb.a ], [ %i.q, %bb.e ]  ; 4 uses
  %.0 = phi i64 [ %3, %bb.a ], [ %i.s, %bb.e ]    ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !451
  %i.c = and i32 %.018, 131071
  %i.d = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 320), align 16, !tbaa !438
  %i.f = tail call i64 %i.e(i32 noundef %i.b, ptr noundef %.019, i64 noundef %i.d, i64 noundef %.0) #58, !inline_history !1405 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %seekAndWrite.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__errno_location() #60, !inline_history !1405
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27   ; 3 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %seekAndWrite.exit.thread, !llvm.loop !1406

seekAndWrite.exit.thread:                         ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.j, ptr %i.l, align 8, !tbaa !27
  %i.m = icmp sgt i32 %.018, %i.g
  br i1 %i.m, label %bb.g, label %bb.i

seekAndWrite.exit:                                ; preds = %bb.c
  %i.n = icmp sgt i32 %.018, %i.g                 ; 2 uses
  %i.o = icmp ne i32 %i.g, 0
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %seekAndWrite.exit
  %i.q = sub nuw nsw i32 %.018, %i.g
  %i.r = and i64 %i.f, 2147483647                 ; 2 uses
  %i.s = add nsw i64 %i.r, %.0
  %i.t = getelementptr inbounds nuw i8, ptr %.019, i64 %i.r
  br label %bb.b, !llvm.loop !1407

bb.f:                                             ; preds = %seekAndWrite.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %seekAndWrite.exit.thread
  %.not = icmp eq i32 %i.j, 28
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.l, %bb.g ]
  store i32 0, ptr %i.v, align 8, !tbaa !462
  br label %bb.i

bb.i:                                             ; preds = %seekAndWrite.exit.thread, %bb.f, %bb.g, %bb.h
  %.020 = phi i32 [ 778, %bb.g ], [ 13, %bb.h ], [ 0, %bb.f ], [ 0, %seekAndWrite.exit.thread ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 1547) i32 @unixTruncate(ptr nofree noundef captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1408
  %.fr18 = freeze i32 %i.b                        ; 2 uses
  %i.c = icmp sgt i32 %.fr18, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %.fr18 to i64              ; 2 uses
  %i.e = add i64 %1, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = srem i64 %i.f, %i.d
  %i.h = sub nsw i64 %i.f, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.h, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !451
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 152), align 8, !tbaa !438
  %i.l = tail call i32 %i.k(i32 noundef %i.j, i64 noundef %.0) #58, !inline_history !1409 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %robust_ftruncate.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #60    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.d, label %robust_ftruncate.exit.thread, !llvm.loop !1410

robust_ftruncate.exit:                            ; preds = %bb.d
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %robust_ftruncate.exit.robust_ftruncate.exit.thread_crit_edge

robust_ftruncate.exit.robust_ftruncate.exit.thread_crit_edge: ; preds = %robust_ftruncate.exit
  %.pre = tail call ptr @__errno_location() #60
  br label %robust_ftruncate.exit.thread

robust_ftruncate.exit.thread:                     ; preds = %bb.e, %robust_ftruncate.exit.robust_ftruncate.exit.thread_crit_edge
  %.pre-phi = phi ptr [ %.pre, %robust_ftruncate.exit.robust_ftruncate.exit.thread_crit_edge ], [ %i.n, %bb.e ]
  %i.q = load i32, ptr %.pre-phi, align 4, !tbaa !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.q, ptr %i.r, align 8, !tbaa !462
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !453  ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %spec.store.select.i = select i1 %i.u, ptr @.str.4, ptr %i.t
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 1546, ptr noundef nonnull @.str.86, i32 noundef 44176, i32 noundef %i.q, ptr noundef nonnull @.str.61, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull @.str.4), !inline_history !449
  br label %bb.h

bb.f:                                             ; preds = %robust_ftruncate.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1401
  %i.x = icmp slt i64 %.0, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %.0, ptr %i.v, align 8, !tbaa !1401
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %robust_ftruncate.exit.thread
  %.015 = phi i32 [ 1546, %robust_ftruncate.exit.thread ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 1035) i32 @unixSync(ptr nofree noundef captures(none) %0, i32 %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !451
  %i.d = tail call i32 @fdatasync(i32 noundef %i.c) #58
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !462
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !453  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %spec.store.select.i = select i1 %i.j, ptr @.str.4, ptr %i.i
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 1034, ptr noundef nonnull @.str.86, i32 noundef 44131, i32 noundef %i.f, ptr noundef nonnull @.str.89, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull @.str.4), !inline_history !449
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !454
  %i.m = and i16 %i.l, 8
  %.not18 = icmp eq i16 %i.m, 0
  br i1 %.not18, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 416), align 16, !tbaa !438
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !453
  %i.q = call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.a) #58
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %robust_close.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.a, align 4, !tbaa !27
  %i.t = call i32 @fdatasync(i32 noundef %i.s) #58 ; 0 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !27
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 32), align 16, !tbaa !438
  %i.w = call i32 %i.v(i32 noundef %i.u) #58, !inline_history !485
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %robust_close.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !453  ; 2 uses
  %i.y = tail call ptr @__errno_location() #60, !inline_history !486
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = icmp eq ptr %i.x, null
  %spec.store.select.i.i = select i1 %i.aa, ptr @.str.4, ptr %i.x
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 4106, ptr noundef nonnull @.str.86, i32 noundef range(i32 41675, 47329) 44145, i32 noundef %i.z, ptr noundef nonnull @.str.56, ptr noundef nonnull %spec.store.select.i.i, ptr noundef nonnull @.str.4), !inline_history !486
  br label %robust_close.exit

robust_close.exit:                                ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = load i16, ptr %i.k, align 2, !tbaa !454
  %i.ac = and i16 %i.ab, -9
  store i16 %i.ac, ptr %i.k, align 2, !tbaa !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %robust_close.exit, %bb.b
  %.015 = phi i32 [ 1034, %bb.b ], [ 0, %robust_close.exit ], [ 0, %bb.c ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 1803) i32 @unixFileSize(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @aSyscall, i64 128), align 16, !tbaa !438
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !451
  %i.d = call i32 %i.a(i32 noundef %i.c, ptr noundef nonnull %2) #58
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !462
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1411 ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  %spec.select = select i1 %i.j, i64 0, i64 %i.i
  store i64 %spec.select, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1802, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3851) i32 @unixLock(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.flock, align 8              ; 8 uses
  %3 = alloca %struct.flock, align 8              ; 9 uses
  %4 = alloca %struct.flock, align 8              ; 8 uses
end_hunk_2
begin_hunk_3_@accessPayload:bb.a
  %.0.i.i = phi i32 [ %i.at, %bb.j ], [ %i.bd, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %.not12.not.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not12.not.i, label %sqlite3PagerWrite.exit.thread17.i, label %copyPayload.exit

sqlite3PagerWrite.exit.thread17.i:                ; preds = %sqlite3PagerWrite.exit.i, %bb.i
  %i.be = sext i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %3, i64 %i.be, i1 false)
  br label %copyPayload.exit

bb.o:                                             ; preds = %bb.f
  %i.bf = sext i32 %spec.select to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.af, i64 %i.bf, i1 false)
  br label %copyPayload.exit

copyPayload.exit:                                 ; preds = %bb.k, %sqlite3PagerWrite.exit.i, %sqlite3PagerWrite.exit.thread17.i, %bb.o
  %.1.i = phi i32 [ 0, %bb.o ], [ 0, %sqlite3PagerWrite.exit.thread17.i ], [ %.0.i.i, %sqlite3PagerWrite.exit.i ], [ %i.av, %bb.k ]
  %i.bg = sext i32 %spec.select to i64
  %i.bh = getelementptr inbounds i8, ptr %3, i64 %i.bg
  %i.bi = sub i32 %2, %spec.select
  br label %bb.q

bb.p:                                             ; preds = %bb.e
  %i.bj = sub nuw i32 %1, %i.w
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %copyPayload.exit
  %.0166 = phi ptr [ %i.bh, %copyPayload.exit ], [ %3, %bb.p ]
  %.0155 = phi i32 [ %.1.i, %copyPayload.exit ], [ 0, %bb.p ] ; 2 uses
  %.0138 = phi i32 [ %i.bi, %copyPayload.exit ], [ %2, %bb.p ] ; 4 uses
  %.0130 = phi i32 [ 0, %copyPayload.exit ], [ %i.bj, %bb.p ] ; 4 uses
  %i.bk = icmp eq i32 %.0155, 0
  %i.bl = icmp ne i32 %.0138, 0
  %or.cond = and i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.r, label %bb.bk

bb.r:                                             ; preds = %bb.q
  %i.bm = load i32, ptr %i.s, align 8, !tbaa !761
  %i.bn = add i32 %i.bm, -4                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.bo = load i16, ptr %i.u, align 4, !tbaa !866
  %i.bp = zext i16 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bp ; 4 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !231
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !231
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 16
  %i.by = or disjoint i32 %i.bx, %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !231
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %i.cd = or disjoint i32 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !231
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg            ; 3 uses
  store i32 %i.ch, ptr %i.b, align 4, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !756
  %i.ck = and i8 %i.cj, 4
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !865
  %i.co = zext i32 %i.cn to i64
  %i.cp = zext i32 %i.bn to i64                   ; 2 uses
  %i.cq = xor i64 %i.bp, -1
  %i.cr = add nsw i64 %i.cq, %i.cp
  %i.cs = add nsw i64 %i.cr, %i.co
  %i.ct = sdiv i64 %i.cs, %i.cp                   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1993 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = shl nsw i64 %i.ct, 2                    ; 2 uses
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.cz = tail call i32 %i.cy(ptr noundef nonnull %i.cv) #58, !inline_history !275
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp sgt i64 %i.cx, %i.da
  br i1 %i.db, label %bb.u, label %..critedge193_crit_edge

..critedge193_crit_edge:                          ; preds = %bb.t
  %.pre = load ptr, ptr %i.cu, align 8, !tbaa !1993
  br label %.critedge193

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i198 = icmp eq ptr %i.dc, null
  br i1 %.not.i198, label %sqlite3FaultSim.exit.thread, label %sqlite3FaultSim.exit

sqlite3FaultSim.exit:                             ; preds = %bb.u
  %i.dd = tail call i32 %i.dc(i32 noundef 413) #58, !inline_history !731
  %.not182 = icmp eq i32 %i.dd, 0
  br i1 %.not182, label %sqlite3FaultSim.exit.thread, label %.critedge.thread

sqlite3FaultSim.exit.thread:                      ; preds = %bb.u, %sqlite3FaultSim.exit
  %i.de = load ptr, ptr %i.cu, align 8, !tbaa !1993
  %i.df = shl nsw i64 %i.ct, 3
  %i.dg = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.de, i64 noundef %i.df) ; 3 uses
  %.not183 = icmp eq ptr %i.dg, null
  br i1 %.not183, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %sqlite3FaultSim.exit.thread
  store ptr %i.dg, ptr %i.cu, align 8, !tbaa !1993
  %.pre249 = shl nsw i64 %i.ct, 2
  br label %.critedge193

.critedge193:                                     ; preds = %..critedge193_crit_edge, %bb.v
  %.pre-phi = phi i64 [ %i.cx, %..critedge193_crit_edge ], [ %.pre249, %bb.v ]
  %i.dh = phi ptr [ %.pre, %..critedge193_crit_edge ], [ %i.dg, %bb.v ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.pre-phi, i1 false)
  %i.di = load i8, ptr %i.ci, align 1, !tbaa !756
  %i.dj = or i8 %i.di, 4
  store i8 %i.dj, ptr %i.ci, align 1, !tbaa !756
  br label %bb.y

bb.w:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1993 ; 2 uses
  %i.dm = udiv i32 %.0130, %i.bn                  ; 3 uses
  %i.dn = urem i32 %.0130, %i.bn
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !27
  %.not181 = icmp eq i32 %i.dq, 0
  br i1 %.not181, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = sext i32 %i.dm to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !27 ; 2 uses
  store i32 %i.dt, ptr %i.b, align 4, !tbaa !27
  %i.du = sext i32 %i.dm to i64
  br label %bb.y

bb.y:                                             ; preds = %.critedge193, %bb.w, %bb.x
  %i.dv = phi i32 [ %i.ch, %.critedge193 ], [ %i.dt, %bb.x ], [ %i.ch, %bb.w ] ; 2 uses
  %.0153 = phi i64 [ 0, %.critedge193 ], [ %i.du, %bb.x ], [ 0, %bb.w ]
  %.1131 = phi i32 [ %.0130, %.critedge193 ], [ %i.dn, %bb.x ], [ %.0130, %bb.w ]
  %.not184236 = icmp eq i32 %i.dv, 0
  br i1 %.not184236, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = icmp eq i32 %4, 0                       ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.ea = select i1 %i.dy, i32 2, i32 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.bj
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %.not184 = icmp eq i32 %i.eb, 0
  br i1 %.not184, label %.critedge, label %bb.aa, !llvm.loop !1994

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ %.0153, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.ec = phi i32 [ %i.dv, %.lr.ph ], [ %i.eb, %bb.z ] ; 6 uses
  %.2132242 = phi i32 [ %.1131, %.lr.ph ], [ %.7137, %bb.z ] ; 7 uses
  %.1139241 = phi i32 [ %.0138, %.lr.ph ], [ %.3141, %bb.z ] ; 4 uses
  %.1167237 = phi ptr [ %.0166, %.lr.ph ], [ %.3169, %bb.z ] ; 5 uses
  %i.ed = load i32, ptr %i.dw, align 8, !tbaa !676
  %i.ee = icmp ugt i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 78458, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.critedge.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !1993
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv ; 2 uses
  store i32 %i.ec, ptr %i.eg, align 4, !tbaa !27
  %.not185 = icmp ult i32 %.2132242, %i.bn
  br i1 %.not185, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !27 ; 2 uses
  %.not191 = icmp eq i32 %i.ei, 0
  br i1 %.not191, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ei, ptr %i.b, align 4, !tbaa !27
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ej = call fastcc i32 @getOverflowPage(ptr noundef nonnull %i.g, i32 noundef %i.ec, ptr noundef null, ptr noundef %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2157 = phi i32 [ 0, %bb.ae ], [ %i.ej, %bb.af ]
  %i.ek = sub nuw i32 %.2132242, %i.bn
  br label %bb.bj

bb.ah:                                            ; preds = %bb.ac
  %i.el = add i32 %.2132242, %.1139241
  %i.em = icmp ugt i32 %i.el, %i.bn
  %i.en = sub nuw i32 %i.bn, %.2132242
  %spec.select194 = select i1 %i.em, i32 %i.en, i32 %.1139241 ; 5 uses
  %i.eo = icmp eq i32 %.2132242, 0
  %or.cond7 = select i1 %i.dy, i1 %i.eo, i1 false
  br i1 %or.cond7, label %bb.ai, label %sqlite3PagerDirectReadOk.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !77  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !535 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !483 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %sqlite3PagerDirectReadOk.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 288
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !92
  %.val.i = load ptr, ptr %i.ev, align 8, !tbaa !1530
  %.not11.i = icmp eq ptr %.val.i, null
  br i1 %.not11.i, label %bb.ak, label %sqlite3PagerDirectReadOk.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 296
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !585 ; 2 uses
  %.not9.i = icmp eq ptr %i.ex, null
  br i1 %.not9.i, label %sqlite3PagerDirectReadOk.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.ey = call fastcc i32 @walFindFrame(ptr noundef nonnull %i.ex, i32 noundef %i.ec, ptr noundef nonnull %i.a), !inline_history !1995 ; 0 uses
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !27
  %.not10.not.i = icmp eq i32 %i.ez, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br i1 %.not10.not.i, label %._crit_edge.i, label %sqlite3PagerDirectReadOk.exit.thread

._crit_edge.i:                                    ; preds = %bb.al
  %.pre.i = load ptr, ptr %i.eq, align 8, !tbaa !535 ; 2 uses
  %.pre12.i = load ptr, ptr %.pre.i, align 8, !tbaa !483
  br label %sqlite3PagerDirectReadOk.exit

sqlite3PagerDirectReadOk.exit:                    ; preds = %bb.ak, %._crit_edge.i
  %i.fa = phi ptr [ %.pre12.i, %._crit_edge.i ], [ %i.es, %bb.ak ]
  %i.fb = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.er, %bb.ak ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1692
  %i.fe = call i32 %i.fd(ptr noundef nonnull %i.fb) #58, !inline_history !1996
  %i.ff = and i32 %i.fe, 32768
  %.not186 = icmp eq i32 %i.ff, 0
  br i1 %.not186, label %sqlite3PagerDirectReadOk.exit.thread, label %bb.am

bb.am:                                            ; preds = %sqlite3PagerDirectReadOk.exit
  %i.fg = getelementptr inbounds i8, ptr %.1167237, i64 -4 ; 5 uses
  %.not187 = icmp ult ptr %i.fg, %3
  br i1 %.not187, label %sqlite3PagerDirectReadOk.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.fi = getelementptr i8, ptr %i.fh, i64 72
  %.val196 = load ptr, ptr %i.fi, align 8, !tbaa !535 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.fg, align 1
  %i.fj = add nsw i32 %spec.select194, 4
  %i.fk = load i32, ptr %i.dz, align 4, !tbaa !135
  %i.fl = zext i32 %i.fk to i64
  %i.fm = add i32 %i.ec, -1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = mul nuw nsw i64 %i.fl, %i.fn
  %i.fp = load ptr, ptr %.val196, align 8, !tbaa !483
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1634
  %i.fs = call i32 %i.fr(ptr noundef nonnull %.val196, ptr noundef nonnull %i.fg, i32 noundef %i.fj, i64 noundef %i.fo) #58, !inline_history !1642
  %i.ft = load i32, ptr %i.fg, align 1
  %i.fu = call i32 @llvm.bswap.i32(i32 %i.ft)
  store i32 %i.fu, ptr %i.b, align 4, !tbaa !27
  store i32 %.sroa.0.0.copyload, ptr %i.fg, align 1
  br label %bb.bh

sqlite3PagerDirectReadOk.exit.thread:             ; preds = %bb.aj, %bb.ai, %bb.al, %bb.am, %sqlite3PagerDirectReadOk.exit, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !77  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 272
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !525
  %i.fy = call i32 %i.fx(ptr noundef %i.fv, i32 noundef %i.ec, ptr noundef nonnull %i.c, i32 noundef range(i32 0, 256) %i.ea) #58, !inline_history !526 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ao, label %sqlite3PagerUnref.exit215.thread

bb.ao:                                            ; preds = %sqlite3PagerDirectReadOk.exit.thread
  %.pre248 = load ptr, ptr %i.c, align 8, !tbaa !524 ; 16 uses
  br i1 %i.dy, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ga = getelementptr i8, ptr %.pre248, i64 56
  %.val197 = load i64, ptr %i.ga, align 8, !tbaa !1230
  %i.gb = and i64 %.val197, 4294967295
  %.not189 = icmp eq i64 %i.gb, 1
  br i1 %.not189, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gc = getelementptr i8, ptr %.pre248, i64 16
  %.val195 = load ptr, ptr %i.gc, align 8, !tbaa !696
  %i.gd = load i8, ptr %.val195, align 8, !tbaa !1614
  %.not190 = icmp eq i8 %i.gd, 0
  br i1 %.not190, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %.pre248, i64 52
  %i.gf = load i16, ptr %i.ge, align 4, !tbaa !530
  %i.gg = and i16 %i.gf, 32
  %.not.i.i201 = icmp eq i16 %i.gg, 0
  br i1 %.not.i.i201, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %.pre248, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !531 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 152 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !532
  %i.gl = add nsw i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !532
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 168 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !533
  %i.go = getelementptr inbounds nuw i8, ptr %.pre248, i64 32
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !534
  store ptr %.pre248, ptr %i.gm, align 8, !tbaa !533
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !535 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre248, i64 48
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !536
  %i.gt = add i32 %i.gs, -1
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 200
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !83
  %i.gx = mul nsw i64 %i.gw, %i.gu
  %i.gy = getelementptr inbounds nuw i8, ptr %.pre248, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !527
  %i.ha = load ptr, ptr %i.gq, align 8, !tbaa !483
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 144
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !537
  %i.hd = call i32 %i.hc(ptr noundef nonnull %i.gq, i64 noundef %i.gx, ptr noundef %i.gz) #58, !inline_history !539 ; 0 uses
  br label %sqlite3PagerUnref.exit215

bb.at:                                            ; preds = %bb.ar
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.pre248)
  br label %sqlite3PagerUnref.exit215

bb.au:                                            ; preds = %bb.aq, %bb.ao
  %i.he = getelementptr i8, ptr %.pre248, i64 8
  %.val = load ptr, ptr %i.he, align 8, !tbaa !527 ; 2 uses
  %i.hf = load i32, ptr %.val, align 1
  %i.hg = call i32 @llvm.bswap.i32(i32 %i.hf)
  store i32 %i.hg, ptr %i.b, align 4, !tbaa !27
  %i.hh = add i32 %.2132242, 4
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %.val, i64 %i.hi ; 2 uses
  br i1 %i.dy, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre248, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !531 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre248, i64 52
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !530
  %i.ho = and i16 %i.hn, 4
  %.not.i.i203 = icmp eq i16 %i.ho, 0
  br i1 %.not.i.i203, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !684
  %i.hr = getelementptr inbounds nuw i8, ptr %.pre248, i64 48
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !536
  %.not13.i.i204 = icmp ult i32 %i.hq, %i.hs
  br i1 %.not13.i.i204, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 128
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !671
  %.not15.i.i205 = icmp eq i32 %i.hu, 0
  br i1 %.not15.i.i205, label %sqlite3PagerWrite.exit.thread17.i210, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hv = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %.pre248), !inline_history !1992
  br label %sqlite3PagerWrite.exit.i206

bb.az:                                            ; preds = %bb.aw, %bb.av
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !686 ; 2 uses
  %.not14.i.i211 = icmp eq i32 %i.hx, 0
  br i1 %.not14.i.i211, label %bb.ba, label %copyPayload.exit212

bb.ba:                                            ; preds = %bb.az
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hl, i64 184
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !687
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 200
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !83
  %i.ic = trunc i64 %i.ib to i32
  %i.id = icmp ugt i32 %i.hz, %i.ic
end_hunk_3
begin_hunk_4_@sqlite3VdbeExec:bb.a
  %switch.selectcmp.i.i.i = icmp eq i8 %.val.i.i4350, 2
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr @vdbeSorterCompareText, ptr @vdbeSorterCompare
  %switch.selectcmp4.i.i.i = icmp eq i8 %.val.i.i4350, 1
  %switch.select5.i.i.i = select i1 %switch.selectcmp4.i.i.i, ptr @vdbeSorterCompareInt, ptr %switch.select.i.i.i ; 9 uses
  %i.eno = getelementptr inbounds nuw i8, ptr %.val4094, i64 91 ; 5 uses
  %i.enp = load i8, ptr %i.eno, align 1, !tbaa !231 ; 5 uses
  %i.enq = zext i8 %i.enp to i32
  %.not146.i.i = icmp eq i8 %i.enp, 0
  br i1 %.not146.i.i, label %.lr.ph113.i.i.i.preheader, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ahm
  %wide.trip.count.i.i = zext i8 %i.enp to i64    ; 2 uses
  %xtraiter13345 = and i64 %wide.trip.count.i.i, 7 ; 3 uses
  %i.enr = icmp ult i8 %i.enp, 8
  br i1 %i.enr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 248
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.7, %.lr.ph.i.i ]
  %i.ens = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.ent = getelementptr inbounds nuw i8, ptr %i.ens, i64 56
  store ptr %switch.select5.i.i.i, ptr %i.ent, align 8, !tbaa !2369
  %i.enu = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.env = getelementptr inbounds nuw i8, ptr %i.enu, i64 160
  store ptr %switch.select5.i.i.i, ptr %i.env, align 8, !tbaa !2369
  %i.enw = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.enx = getelementptr inbounds nuw i8, ptr %i.enw, i64 264
  store ptr %switch.select5.i.i.i, ptr %i.enx, align 8, !tbaa !2369
  %i.eny = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.enz = getelementptr inbounds nuw i8, ptr %i.eny, i64 368
  store ptr %switch.select5.i.i.i, ptr %i.enz, align 8, !tbaa !2369
  %i.eoa = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eob = getelementptr inbounds nuw i8, ptr %i.eoa, i64 472
  store ptr %switch.select5.i.i.i, ptr %i.eob, align 8, !tbaa !2369
  %i.eoc = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 576
  store ptr %switch.select5.i.i.i, ptr %i.eod, align 8, !tbaa !2369
  %i.eoe = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eof = getelementptr inbounds nuw i8, ptr %i.eoe, i64 680
  store ptr %switch.select5.i.i.i, ptr %i.eof, align 8, !tbaa !2369
  %i.eog = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i
  %i.eoh = getelementptr inbounds nuw i8, ptr %i.eog, i64 784
  store ptr %switch.select5.i.i.i, ptr %i.eoh, align 8, !tbaa !2369
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !2370

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod13346.not = icmp eq i64 %xtraiter13345, 0
  br i1 %lcmp.mod13346.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.7, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod13347 = icmp ne i64 %xtraiter13345, 0
  call void @llvm.assume(i1 %lcmp.mod13347)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.eoi = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv.i.i.epil
  %i.eoj = getelementptr inbounds nuw i8, ptr %i.eoi, i64 56
  store ptr %switch.select5.i.i.i, ptr %i.eoj, align 8, !tbaa !2369
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter13345
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil, !llvm.loop !2371

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil, %._crit_edge.i.i.unr-lcssa
  %.not253.i.i = icmp eq i8 %i.enp, 1
  br i1 %.not253.i.i, label %.lr.ph113.i.i.i.preheader, label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %._crit_edge.i.i, %.preheader117.i.i
  %.0.i.i.i.i4351 = phi i32 [ %i.eol, %.preheader117.i.i ], [ 2, %._crit_edge.i.i ] ; 4 uses
  %i.eok = icmp slt i32 %.0.i.i.i.i4351, %i.enq
  %i.eol = shl nsw i32 %.0.i.i.i.i4351, 1
  br i1 %i.eok, label %.preheader117.i.i, label %bb.ahn, !llvm.loop !2372

bb.ahn:                                           ; preds = %.preheader117.i.i
  %i.eom = zext nneg i32 %.0.i.i.i.i4351 to i64   ; 2 uses
  %i.eon = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eon, null
  br i1 %.not.i.i.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i, label %sqlite3FaultSim.exit.i.i.i.i

sqlite3FaultSim.exit.i.i.i.i:                     ; preds = %bb.ahn
  %i.eoo = call i32 %i.eon(i32 noundef 100) #58, !inline_history !2373
  %.not.i.i.i.i4352 = icmp eq i32 %i.eoo, 0
  br i1 %.not.i.i.i.i4352, label %sqlite3FaultSim.exit.thread.i.i.i.i, label %sqlite3VdbeMemSetNull.exit4222.loopexit12572

sqlite3FaultSim.exit.thread.i.i.i.i:              ; preds = %sqlite3FaultSim.exit.i.i.i.i, %bb.ahn
  %i.eop = mul nuw nsw i64 %i.eom, 84
  %i.eoq = add nuw nsw i64 %i.eop, 32             ; 2 uses
  %i.eor = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.eoq), !inline_history !2374 ; 8 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.eor, null
  br i1 %.not.i17.i.i.i.i, label %sqlite3VdbeMemSetNull.exit4222.loopexit12572, label %vdbeMergeEngineNew.exit.i.i.i

vdbeMergeEngineNew.exit.i.i.i:                    ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.eor, i8 0, i64 range(i64 -180388626400, 180388626381) %i.eoq, i1 false)
  store i32 %.0.i.i.i.i4351, ptr %i.eor, align 8, !tbaa !2128
  %i.eos = getelementptr inbounds nuw i8, ptr %i.eor, i64 8
  store ptr null, ptr %i.eos, align 8, !tbaa !2375
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eor, i64 32 ; 2 uses
  %i.eou = getelementptr inbounds nuw i8, ptr %i.eor, i64 24
  store ptr %i.eot, ptr %i.eou, align 8, !tbaa !2135
  %i.eov = getelementptr inbounds nuw [80 x i8], ptr %i.eot, i64 %i.eom
  %i.eow = getelementptr inbounds nuw i8, ptr %i.eor, i64 16
  store ptr %i.eov, ptr %i.eow, align 8, !tbaa !2360
  br label %.lr.ph113.i.i.i.preheader

.lr.ph113.i.i.i.preheader:                        ; preds = %vdbeMergeEngineNew.exit.i.i.i, %._crit_edge.i.i, %bb.ahm
  %.142110.i.i.i.ph = phi ptr [ null, %bb.ahm ], [ null, %._crit_edge.i.i ], [ %i.eor, %vdbeMergeEngineNew.exit.i.i.i ]
  br label %.lr.ph113.i.i.i

.lr.ph113.i.i.i:                                  ; preds = %.lr.ph113.i.i.i.preheader, %bb.ajx
  %indvars.iv122.i.i.i = phi i64 [ %indvars.iv.next123.i.i.i, %bb.ajx ], [ 0, %.lr.ph113.i.i.i.preheader ] ; 4 uses
  %.142110.i.i.i = phi ptr [ %.344.i.i.i, %bb.ajx ], [ %.142110.i.i.i.ph, %.lr.ph113.i.i.i.preheader ] ; 27 uses
  %i.eox = load i8, ptr %i.eno, align 1, !tbaa !231
  %i.eoy = zext i8 %i.eox to i64                  ; 2 uses
  %i.eoz = icmp samesign ult i64 %indvars.iv122.i.i.i, %i.eoy
  br i1 %i.eoz, label %bb.aho, label %vdbeSorterMergeTreeBuild.exit.i.i

bb.aho:                                           ; preds = %.lr.ph113.i.i.i
  %i.epa = getelementptr inbounds nuw [104 x i8], ptr %i.eni, i64 %indvars.iv122.i.i.i ; 8 uses
  %i.epb = getelementptr inbounds nuw i8, ptr %i.epa, i64 12 ; 3 uses
  %i.epc = load i32, ptr %i.epb, align 4, !tbaa !2376 ; 4 uses
  %.not52.i.i.i = icmp eq i32 %i.epc, 0
  br i1 %.not52.i.i.i, label %bb.ajx, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  store ptr null, ptr %i.i, align 8, !tbaa !2126
  %i.epd = zext nneg i32 %i.epc to i64
  %i.epe = icmp sgt i32 %i.epc, 16
  br i1 %i.epe, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ahp, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i.i ], [ 1, %bb.ahp ] ; 3 uses
  %.07.i.i.i.i = phi i64 [ %i.epf, %.lr.ph.i.i.i.i ], [ 16, %bb.ahp ]
  %.056.i.i.i.i = phi i32 [ %i.epg, %.lr.ph.i.i.i.i ], [ 0, %bb.ahp ] ; 4 uses
  %i.epf = shl nsw i64 %.07.i.i.i.i, 4            ; 2 uses
  %i.epg = add nuw i32 %.056.i.i.i.i, 1
  %i.eph = icmp slt i64 %i.epf, %i.epd
  %indvars.iv.next.i.i.i = add nuw i32 %indvars.iv.i.i.i, 1
  br i1 %i.eph, label %.lr.ph.i.i.i.i, label %bb.ahq, !llvm.loop !2377

bb.ahq:                                           ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #58
  store i64 0, ptr %i.j, align 8, !tbaa !21
  %i.epi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i58.i.i.i = icmp eq ptr %i.epi, null
  br i1 %.not.i.i58.i.i.i, label %sqlite3FaultSim.exit.thread.i61.i.i.i, label %sqlite3FaultSim.exit.i59.i.i.i

sqlite3FaultSim.exit.i59.i.i.i:                   ; preds = %bb.ahq
  %i.epj = call i32 %i.epi(i32 noundef 100) #58, !inline_history !2373
  %.not.i60.i.i.i = icmp eq i32 %i.epj, 0
  br i1 %.not.i60.i.i.i, label %sqlite3FaultSim.exit.thread.i61.i.i.i, label %vdbeMergeEngineFree.exit.i.i.i

sqlite3FaultSim.exit.thread.i61.i.i.i:            ; preds = %sqlite3FaultSim.exit.i59.i.i.i, %bb.ahq
  %i.epk = call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) 1376), !inline_history !2374 ; 13 uses
  %.not.i17.i62.i.i.i = icmp eq ptr %i.epk, null
  br i1 %.not.i17.i62.i.i.i, label %vdbeMergeEngineFree.exit.i.i.i, label %vdbeMergeEngineNew.exit63.i.i.i

vdbeMergeEngineNew.exit63.i.i.i:                  ; preds = %sqlite3FaultSim.exit.thread.i61.i.i.i
  %i.epl = getelementptr inbounds nuw i8, ptr %i.epk, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1372) %i.epl, i8 0, i64 range(i64 -180388626400, 180388626381) 1372, i1 false)
  store i32 16, ptr %i.epk, align 8, !tbaa !2128
  %i.epm = getelementptr inbounds nuw i8, ptr %i.epk, i64 32
  %i.epn = getelementptr inbounds nuw i8, ptr %i.epk, i64 24
  store ptr %i.epm, ptr %i.epn, align 8, !tbaa !2135
  %i.epo = getelementptr inbounds nuw i8, ptr %i.epk, i64 1312
  %i.epp = getelementptr inbounds nuw i8, ptr %i.epk, i64 16
  store ptr %i.epo, ptr %i.epp, align 8, !tbaa !2360
  store ptr %i.epk, ptr %i.i, align 8, !tbaa !2126
  %i.epq = load i32, ptr %i.epb, align 4, !tbaa !2376 ; 2 uses
  %i.epr = icmp sgt i32 %i.epq, 0
  br i1 %i.epr, label %.lr.ph.i.i.i, label %.loopexit.thread186.i.i.i

.lr.ph.i.i.i:                                     ; preds = %vdbeMergeEngineNew.exit63.i.i.i
  %.not.i.i.i4354 = icmp eq i32 %.056.i.i.i.i, 0
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epa, i64 16
  %i.ept = getelementptr inbounds nuw i8, ptr %i.epa, i64 88 ; 2 uses
  %i.epu = add i32 %indvars.iv.i.i.i, -2
  %xtraiter13348 = and i32 %.056.i.i.i.i, 7       ; 3 uses
  %i.epv = icmp ult i32 %i.epu, 7
  %unroll_iter13353 = and i32 %.056.i.i.i.i, -8
  %lcmp.mod13350.not = icmp eq i32 %xtraiter13348, 0
  %lcmp.mod13352 = icmp ne i32 %xtraiter13348, 0
  br label %bb.ahr

bb.ahr:                                           ; preds = %.loopexit193.i.i.i, %.lr.ph.i.i.i
  %i.epw = phi i32 [ %i.epq, %.lr.ph.i.i.i ], [ %i.eyb, %.loopexit193.i.i.i ]
  %.0108.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.eqa, %.loopexit193.i.i.i ] ; 3 uses
  %.037107.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.eya, %.loopexit193.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #58
  store ptr null, ptr %i.k, align 8, !tbaa !2126
  %i.epx = sub nuw nsw i32 %i.epw, %.037107.i.i.i
  %spec.select56.i.i.i = call i32 @llvm.smin.i32(i32 %i.epx, i32 16)
  %i.epy = call fastcc i32 @vdbeMergeEngineLevel0(ptr noundef nonnull %i.epa, i32 noundef %spec.select56.i.i.i, ptr noundef %i.j, ptr noundef %i.k), !inline_history !2374 ; 2 uses
  %i.epz = icmp eq i32 %i.epy, 0
  br i1 %i.epz, label %bb.ahs, label %.loopexit.thread.sink.split.i.i.i

bb.ahs:                                           ; preds = %bb.ahr
  %i.eqa = add nuw nsw i32 %.0108.i.i.i, 1
  %i.eqb = load ptr, ptr %i.k, align 8, !tbaa !2126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  %i.eqc = call fastcc i32 @vdbeIncrMergerNew(ptr noundef nonnull %i.epa, ptr noundef %i.eqb, ptr noundef nonnull %i.h), !inline_history !2374 ; 4 uses
  br i1 %.not.i.i.i4354, label %.preheader42.thread.i.i.i.i, label %.lr.ph.i64.i.i.i.preheader

.lr.ph.i64.i.i.i.preheader:                       ; preds = %bb.ahs
  br i1 %i.epv, label %.lr.ph.i64.i.i.i.epil.preheader, label %.lr.ph.i64.i.i.i

.preheader42.thread.i.i.i.i:                      ; preds = %bb.ahs
  %i.eqd = icmp eq i32 %i.eqc, 0
  br i1 %i.eqd, label %.loopexit193.i.i.i, label %._crit_edge.thread.i.i.i.i

.preheader42.i.i.i.i.unr-lcssa:                   ; preds = %.lr.ph.i64.i.i.i
  br i1 %lcmp.mod13350.not, label %.preheader42.i.i.i.i, label %.lr.ph.i64.i.i.i.epil.preheader

.lr.ph.i64.i.i.i.epil.preheader:                  ; preds = %.preheader42.i.i.i.i.unr-lcssa, %.lr.ph.i64.i.i.i.preheader
  %.02843.i.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i64.i.i.i.preheader ], [ 0, %.preheader42.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod13352)
  br label %.lr.ph.i64.i.i.i.epil

.lr.ph.i64.i.i.i.epil:                            ; preds = %.lr.ph.i64.i.i.i.epil, %.lr.ph.i64.i.i.i.epil.preheader
  %.02843.i.i.i.i.epil = phi i32 [ %i.eqe, %.lr.ph.i64.i.i.i.epil ], [ %.02843.i.i.i.i.epil.init, %.lr.ph.i64.i.i.i.epil.preheader ]
  %epil.iter13349 = phi i32 [ %epil.iter13349.next, %.lr.ph.i64.i.i.i.epil ], [ 0, %.lr.ph.i64.i.i.i.epil.preheader ]
  %i.eqe = shl nsw i32 %.02843.i.i.i.i.epil, 4    ; 2 uses
  %epil.iter13349.next = add i32 %epil.iter13349, 1 ; 2 uses
  %epil.iter13349.cmp.not = icmp eq i32 %epil.iter13349.next, %xtraiter13348
  br i1 %epil.iter13349.cmp.not, label %.preheader42.i.i.i.i, label %.lr.ph.i64.i.i.i.epil, !llvm.loop !2378

.preheader42.i.i.i.i:                             ; preds = %.lr.ph.i64.i.i.i.epil, %.preheader42.i.i.i.i.unr-lcssa
  %.lcssa12590 = phi i32 [ 0, %.preheader42.i.i.i.i.unr-lcssa ], [ %i.eqe, %.lr.ph.i64.i.i.i.epil ]
  %i.eqf = icmp eq i32 %i.eqc, 0
  br i1 %i.eqf, label %.lr.ph48.i.i.i.i, label %._crit_edge.thread.i.i.i.i

.lr.ph.i64.i.i.i:                                 ; preds = %.lr.ph.i64.i.i.i.preheader, %.lr.ph.i64.i.i.i
  %niter13354 = phi i32 [ %niter13354.next.7, %.lr.ph.i64.i.i.i ], [ 0, %.lr.ph.i64.i.i.i.preheader ]
  %niter13354.next.7 = add i32 %niter13354, 8     ; 2 uses
  %niter13354.ncmp.7 = icmp eq i32 %niter13354.next.7, %unroll_iter13353
  br i1 %niter13354.ncmp.7, label %.preheader42.i.i.i.i.unr-lcssa, label %.lr.ph.i64.i.i.i, !llvm.loop !2379

.lr.ph48.i.i.i.i:                                 ; preds = %.preheader42.i.i.i.i, %.thread40.i.i.i.i
  %.047.i.i.i.i = phi ptr [ %i.etq, %.thread40.i.i.i.i ], [ %i.epk, %.preheader42.i.i.i.i ]
  %.12746.i.i.i.i = phi i32 [ %i.ets, %.thread40.i.i.i.i ], [ 1, %.preheader42.i.i.i.i ]
  %.12945.i.i.i.i = phi i32 [ %i.etr, %.thread40.i.i.i.i ], [ %.lcssa12590, %.preheader42.i.i.i.i ] ; 2 uses
  %i.eqg = sdiv i32 %.0108.i.i.i, %.12945.i.i.i.i
  %i.eqh = srem i32 %i.eqg, 16
  %i.eqi = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i, i64 24
  %i.eqj = load ptr, ptr %i.eqi, align 8, !tbaa !2135
  %i.eqk = sext i32 %i.eqh to i64
  %i.eql = getelementptr inbounds [80 x i8], ptr %i.eqj, i64 %i.eqk
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.eql, i64 72 ; 3 uses
  %i.eqn = load ptr, ptr %i.eqm, align 8, !tbaa !2179 ; 2 uses
  %i.eqo = icmp eq ptr %i.eqn, null
  br i1 %i.eqo, label %.preheader.preheader.i.i.i.i, label %.lr.ph48.i..thread40.i_crit_edge.i.i.i

.lr.ph48.i..thread40.i_crit_edge.i.i.i:           ; preds = %.lr.ph48.i.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.eqn, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !2193
  br label %.thread40.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.lr.ph48.i.i.i.i
  %i.eqp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !730 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eqp, null
  br i1 %.not.i.i.i.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i.i, label %sqlite3FaultSim.exit.i.i.i.i.i

sqlite3FaultSim.exit.i.i.i.i.i:                   ; preds = %.preheader.preheader.i.i.i.i
  %i.eqq = call i32 %i.eqp(i32 noundef 100) #58, !inline_history !2380
  %.not.i.i65.i.i.i = icmp eq i32 %i.eqq, 0
  br i1 %.not.i.i65.i.i.i, label %sqlite3FaultSim.exit.thread.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i

sqlite3FaultSim.exit.thread.i.i.i.i.i:            ; preds = %sqlite3FaultSim.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.eqr = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i90.i.i.i = icmp eq i32 %i.eqr, 0
  br i1 %.not.i90.i.i.i, label %bb.aig, label %bb.aht

bb.aht:                                           ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i.i
  %i.eqs = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i91.i.i.i = icmp eq ptr %i.eqs, null
  br i1 %.not.i.i91.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht
  %i.eqt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.eqt(ptr noundef nonnull %i.eqs) #58, !inline_history !2381
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.ahu, %bb.aht
  %i.equ = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 64), align 8, !tbaa !106
  %i.eqv = call i32 %i.equ(i32 noundef range(i32 1, 2147483392) 1376) #58, !inline_history !2382 ; 2 uses
  %i.eqw = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !21
  %i.eqx = icmp slt i64 %i.eqw, 1376
  br i1 %i.eqx, label %bb.ahv, label %sqlite3StatusHighwater.exit.i.i.i.i.i

bb.ahv:                                           ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  store i64 1376, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 120), align 8, !tbaa !21
  br label %sqlite3StatusHighwater.exit.i.i.i.i.i

sqlite3StatusHighwater.exit.i.i.i.i.i:            ; preds = %bb.ahv, %sqlite3_mutex_enter.exit.i.i.i.i
  %i.eqy = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 8), align 8, !tbaa !264 ; 2 uses
  %i.eqz = icmp sgt i64 %i.eqy, 0
  br i1 %i.eqz, label %bb.ahw, label %bb.aib

bb.ahw:                                           ; preds = %sqlite3StatusHighwater.exit.i.i.i.i.i
  %i.era = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.erb = sext i32 %i.eqv to i64                 ; 2 uses
  %i.erc = sub nsw i64 %i.eqy, %i.erb
  %.not.i5.i.i.i.i = icmp slt i64 %i.era, %i.erc
  br i1 %.not.i5.i.i.i.i, label %bb.aia, label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw
  store atomic i32 1, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  %i.erd = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i93.i.i.i = icmp eq ptr %i.erd, null
  br i1 %.not.i.i.i.i93.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i.i.i, label %sqlite3_mutex_leave.exit.i.i.i.i.i.i

sqlite3_mutex_leave.exit.i.i.i.i.i.i:             ; preds = %bb.ahx
  %i.ere = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.ere(ptr noundef nonnull %i.erd) #58, !inline_history !2383
  %.pr.i.i.i.i.i.i = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i.i, null
  br i1 %.not.i1.i.i.i.i.i.i, label %sqlite3MallocAlarm.exit.i.i.i.i.i, label %bb.ahy

bb.ahy:                                           ; preds = %sqlite3_mutex_leave.exit.i.i.i.i.i.i
  %i.erf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.erf(ptr noundef nonnull %.pr.i.i.i.i.i.i) #58, !inline_history !2384
  br label %sqlite3MallocAlarm.exit.i.i.i.i.i

sqlite3MallocAlarm.exit.i.i.i.i.i:                ; preds = %bb.ahy, %sqlite3_mutex_leave.exit.i.i.i.i.i.i, %bb.ahx
  %i.erg = load i64, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 16), align 8, !tbaa !265 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq i64 %i.erg, 0
  br i1 %.not17.i.i.i.i.i, label %bb.aib, label %bb.ahz

bb.ahz:                                           ; preds = %sqlite3MallocAlarm.exit.i.i.i.i.i
  %i.erh = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.eri = sub nsw i64 %i.erg, %i.erb
  %.not18.i.i.i.i.i = icmp slt i64 %i.erh, %i.eri
  br i1 %.not18.i.i.i.i.i, label %bb.aib, label %mallocWithAlarm.exit.i.i.i.i

bb.aia:                                           ; preds = %bb.ahw
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @mem0, i64 24) monotonic, align 8
  br label %bb.aib

bb.aib:                                           ; preds = %bb.aia, %bb.ahz, %sqlite3MallocAlarm.exit.i.i.i.i.i, %sqlite3StatusHighwater.exit.i.i.i.i.i
  %i.erj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !216
  %i.erk = call ptr %i.erj(i32 noundef %i.eqv) #58, !inline_history !2382 ; 4 uses
  %.not19.i.i.i.i.i = icmp eq ptr %i.erk, null
  br i1 %.not19.i.i.i.i.i, label %mallocWithAlarm.exit.i.i.i.i, label %bb.aic

bb.aic:                                           ; preds = %bb.aib
  %i.erl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.erm = call i32 %i.erl(ptr noundef nonnull %i.erk) #58, !inline_history !2385
  %i.ern = sext i32 %i.erm to i64
  %i.ero = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.erp = add nsw i64 %i.ero, %i.ern             ; 3 uses
  store i64 %i.erp, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.erq = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !21
  %i.err = icmp sgt i64 %i.erp, %i.erq
  br i1 %i.err, label %bb.aid, label %sqlite3StatusUp.exit.i.i.i.i.i

bb.aid:                                           ; preds = %bb.aic
  store i64 %i.erp, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 80), align 8, !tbaa !21
  br label %sqlite3StatusUp.exit.i.i.i.i.i

sqlite3StatusUp.exit.i.i.i.i.i:                   ; preds = %bb.aid, %bb.aic
  %i.ers = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21 ; 2 uses
  %i.ert = add nsw i64 %i.ers, 1                  ; 2 uses
  store i64 %i.ert, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.eru = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !21
  %.not21.i.i.i.i.i = icmp slt i64 %i.ers, %i.eru
  br i1 %.not21.i.i.i.i.i, label %mallocWithAlarm.exit.i.i.i.i, label %bb.aie

bb.aie:                                           ; preds = %sqlite3StatusUp.exit.i.i.i.i.i
  store i64 %i.ert, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 152), align 8, !tbaa !21
  br label %mallocWithAlarm.exit.i.i.i.i

mallocWithAlarm.exit.i.i.i.i:                     ; preds = %bb.aie, %sqlite3StatusUp.exit.i.i.i.i.i, %bb.aib, %bb.ahz
  %storemerge.i.i.i.i.i = phi ptr [ null, %bb.ahz ], [ %i.erk, %bb.aie ], [ %i.erk, %sqlite3StatusUp.exit.i.i.i.i.i ], [ null, %bb.aib ] ; 2 uses
  %i.erv = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i6.i.i.i.i = icmp eq ptr %i.erv, null
  br i1 %.not.i6.i.i.i.i, label %sqlite3Malloc.exit.i.i.i, label %bb.aif

bb.aif:                                           ; preds = %mallocWithAlarm.exit.i.i.i.i
  %i.erw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.erw(ptr noundef nonnull %i.erv) #58, !inline_history !2386
  br label %sqlite3Malloc.exit.i.i.i

bb.aig:                                           ; preds = %sqlite3FaultSim.exit.thread.i.i.i.i.i
  %i.erx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 32), align 8, !tbaa !216
  %i.ery = call ptr %i.erx(i32 noundef 1376) #58, !inline_history !2387
  br label %sqlite3Malloc.exit.i.i.i

sqlite3Malloc.exit.i.i.i:                         ; preds = %bb.aig, %bb.aif, %mallocWithAlarm.exit.i.i.i.i
  %.0.i92.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.aif ], [ %i.ery, %bb.aig ], [ %storemerge.i.i.i.i.i, %mallocWithAlarm.exit.i.i.i.i ] ; 15 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %.0.i92.i.i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %bb.aih
end_hunk_4
begin_hunk_5_@balance:bb.a
  %i.bhb = load ptr, ptr %i.bgr, align 8, !tbaa !483
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bhb, i64 144
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !537
  %i.bhe = call i32 %i.bhd(ptr noundef nonnull %i.bgr, i64 noundef %i.bgy, ptr noundef %i.bha) #58, !inline_history !2870 ; 0 uses
  br label %releasePage.exit664.i

bb.hk:                                            ; preds = %bb.hi
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i662.i), !inline_history !2832
  br label %releasePage.exit664.i

releasePage.exit664.i:                            ; preds = %bb.hk, %bb.hj, %.lr.ph871.i
  %indvars.iv.next1043.i = add nuw nsw i64 %indvars.iv1042.i, 1 ; 2 uses
  %exitcond1047.not.i = icmp eq i64 %indvars.iv.next1043.i, %wide.trip.count1046.i
  br i1 %exitcond1047.not.i, label %balance_nonroot.exit, label %.lr.ph871.i, !llvm.loop !2872

balance_nonroot.exit:                             ; preds = %releasePage.exit664.i, %bb.bp, %.preheader.i
  %.0.i91 = phi i32 [ 7, %bb.bp ], [ %i.bex, %.preheader.i ], [ %i.bex, %releasePage.exit664.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not71 = icmp eq ptr %.057, null
  br i1 %.not71, label %.thread113, label %bb.hl

bb.hl:                                            ; preds = %balance_nonroot.exit
  call fastcc void @pcache1Free(ptr noundef nonnull %.057)
  br label %.thread113

.thread113:                                       ; preds = %bb.aj, %sqlite3PagerWrite.exit, %bb.an, %balance_quick.exit, %bb.hl, %balance_nonroot.exit
  %.361 = phi i32 [ %.1.i, %balance_quick.exit ], [ %i.ks, %bb.an ], [ %.0.i91, %bb.hl ], [ %.0.i91, %balance_nonroot.exit ], [ %.0.i77, %sqlite3PagerWrite.exit ], [ %i.kf, %bb.aj ]
  %.1 = phi ptr [ %.057, %balance_quick.exit ], [ %.057, %bb.an ], [ %i.ue, %bb.hl ], [ %i.ue, %balance_nonroot.exit ], [ %.057, %sqlite3PagerWrite.exit ], [ %.057, %bb.aj ]
  store i8 0, ptr %i.bb, align 4, !tbaa !1612
  %.val.i105 = load ptr, ptr %i.je, align 8, !tbaa !698 ; 7 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %.val.i105, i64 52
  %i.bhg = load i16, ptr %i.bhf, align 4, !tbaa !530
  %i.bhh = and i16 %i.bhg, 32
  %.not.i.i.i106 = icmp eq i16 %i.bhh, 0
  br i1 %.not.i.i.i106, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %.thread113
  %i.bhi = getelementptr inbounds nuw i8, ptr %.val.i105, i64 40
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !531 ; 4 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 152 ; 2 uses
  %i.bhl = load i32, ptr %i.bhk, align 8, !tbaa !532
  %i.bhm = add nsw i32 %i.bhl, -1
  store i32 %i.bhm, ptr %i.bhk, align 8, !tbaa !532
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhj, i64 168 ; 2 uses
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !533
  %i.bhp = getelementptr inbounds nuw i8, ptr %.val.i105, i64 32
  store ptr %i.bho, ptr %i.bhp, align 8, !tbaa !534
  store ptr %.val.i105, ptr %i.bhn, align 8, !tbaa !533
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhj, i64 72
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !535 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %.val.i105, i64 48
  %i.bht = load i32, ptr %i.bhs, align 8, !tbaa !536
  %i.bhu = add i32 %i.bht, -1
  %i.bhv = zext i32 %i.bhu to i64
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhj, i64 200
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !83
  %i.bhy = mul nsw i64 %i.bhx, %i.bhv
  %i.bhz = getelementptr inbounds nuw i8, ptr %.val.i105, i64 8
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !527
  %i.bib = load ptr, ptr %i.bhr, align 8, !tbaa !483
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 144
  %i.bid = load ptr, ptr %i.bic, align 8, !tbaa !537
  %i.bie = call i32 %i.bid(ptr noundef nonnull %i.bhr, i64 noundef %i.bhy, ptr noundef %i.bia) #58, !inline_history !1975 ; 0 uses
  br label %releasePage.exit

bb.hn:                                            ; preds = %.thread113
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i105)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %bb.hm, %bb.hn
  %i.bif = load i8, ptr %i.v, align 4, !tbaa !1982
  %i.big = add i8 %i.bif, -1                      ; 2 uses
  store i8 %i.big, ptr %i.v, align 4, !tbaa !1982
  %i.bih = sext i8 %i.big to i64
  %i.bii = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.bih
  %storemerge.pre = load ptr, ptr %i.bii, align 8, !tbaa !1653
  br label %bb.ho

bb.ho:                                            ; preds = %releasePage.exit, %bb.ac
  %storemerge = phi ptr [ %i.db, %bb.ac ], [ %storemerge.pre, %releasePage.exit ] ; 2 uses
  %.5 = phi i32 [ 0, %bb.ac ], [ %.361, %releasePage.exit ] ; 2 uses
  %.3 = phi ptr [ %.057, %bb.ac ], [ %.1, %releasePage.exit ] ; 2 uses
  store ptr %storemerge, ptr %i.u, align 8, !tbaa !857
  %i.bij = icmp eq i32 %.5, 0
  br i1 %i.bij, label %bb.b, label %.thread118, !llvm.loop !2873

.thread118:                                       ; preds = %bb.f, %bb.c, %bb.e, %bb.ho, %bb.ae, %balance_deeper.exit.thread, %anotherValidCursor.exit
  %.3124 = phi ptr [ %.057, %anotherValidCursor.exit ], [ %.057, %bb.ae ], [ %.057, %balance_deeper.exit.thread ], [ %.057, %bb.f ], [ %.057, %bb.c ], [ %.057, %bb.e ], [ %.3, %bb.ho ] ; 2 uses
  %.5123 = phi i32 [ 11, %anotherValidCursor.exit ], [ 11, %bb.ae ], [ %.0.i74.ph, %balance_deeper.exit.thread ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ], [ %.5, %bb.ho ]
  %.not73 = icmp eq ptr %.3124, null
  br i1 %.not73, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %.thread118
  call fastcc void @pcache1Free(ptr noundef nonnull %.3124)
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %.thread118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #58
  ret i32 %.5123
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @btreeOverwriteContent(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2347 ; 2 uses
  %i.c = sub nsw i32 %i.b, %3                     ; 5 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge65

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge65, label %.lr.ph, !llvm.loop !2874

.critedge:                                        ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !698  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !531  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.p = load i16, ptr %i.o, align 4, !tbaa !530
  %i.q = and i16 %i.p, 4
  %.not.i = icmp eq i16 %i.q, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !684
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !536
  %.not13.i = icmp ult i32 %i.s, %i.u
  br i1 %.not13.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.w = load i32, ptr %i.v, align 8, !tbaa !671
  %.not15.i = icmp eq i32 %i.w, 0
  br i1 %.not15.i, label %.critedge63, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.l), !inline_history !685
  br label %sqlite3PagerWrite.exit

bb.f:                                             ; preds = %bb.c, %.critedge
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !686  ; 2 uses
  %.not14.i = icmp eq i32 %i.z, 0
  br i1 %.not14.i, label %bb.g, label %.critedge65

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !687
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !83
  %i.ae = trunc i64 %i.ad to i32
  %i.af = icmp ugt i32 %i.ab, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.l), !inline_history !685
  br label %sqlite3PagerWrite.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.l), !inline_history !685
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.e, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.x, %bb.e ], [ %i.ah, %bb.i ], [ %i.ag, %bb.h ] ; 2 uses
  %.not62 = icmp eq i32 %.0.i, 0
  br i1 %.not62, label %.critedge63, label %.critedge65

.critedge63:                                      ; preds = %bb.d, %sqlite3PagerWrite.exit
  %i.ai = sub nuw nsw i32 %4, %i.j
  %5 = zext nneg i32 %i.ai to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %5, i1 false)
  br label %.critedge65

bb.j:                                             ; preds = %bb.a
  %i.aj = icmp slt i32 %i.c, %4
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = zext nneg i32 %i.c to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = sub nuw nsw i32 %4, %i.c
  %i.an = tail call fastcc i32 @btreeOverwriteContent(ptr noundef %0, ptr noundef nonnull %i.al, ptr noundef %2, i32 noundef %i.b, i32 noundef %i.am) ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.l, label %.critedge65

bb.l:                                             ; preds = %bb.k, %bb.j
  %.150 = phi i32 [ %i.c, %bb.k ], [ %4, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2346 ; 2 uses
  %i.aq = sext i32 %3 to i64                      ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = sext i32 %.150 to i64                   ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %1, ptr %i.ar, i64 %i.as)
  %.not60 = icmp eq i32 %bcmp, 0
  br i1 %.not60, label %.critedge65, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !698 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !531 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !530
  %i.az = and i16 %i.ay, 4
  %.not.i66 = icmp eq i16 %i.az, 0
  br i1 %.not.i66, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !684
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !536
  %.not13.i67 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not13.i67, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !671
  %.not15.i68 = icmp eq i32 %i.bf, 0
  br i1 %.not15.i68, label %sqlite3PagerWrite.exit71.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.au), !inline_history !685
  br label %sqlite3PagerWrite.exit71

bb.q:                                             ; preds = %bb.n, %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !686 ; 2 uses
  %.not14.i70 = icmp eq i32 %i.bi, 0
  br i1 %.not14.i70, label %bb.r, label %.critedge65

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !687
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 200
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp ugt i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.au), !inline_history !685
  br label %sqlite3PagerWrite.exit71

bb.t:                                             ; preds = %bb.r
  %i.bq = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.au), !inline_history !685
  br label %sqlite3PagerWrite.exit71

sqlite3PagerWrite.exit71:                         ; preds = %bb.p, %bb.s, %bb.t
  %.0.i69 = phi i32 [ %i.bg, %bb.p ], [ %i.bq, %bb.t ], [ %i.bp, %bb.s ] ; 2 uses
  %.not61 = icmp eq i32 %.0.i69, 0
  br i1 %.not61, label %sqlite3PagerWrite.exit71.sqlite3PagerWrite.exit71.thread_crit_edge, label %.critedge65

sqlite3PagerWrite.exit71.sqlite3PagerWrite.exit71.thread_crit_edge: ; preds = %sqlite3PagerWrite.exit71
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !2346
  br label %sqlite3PagerWrite.exit71.thread

sqlite3PagerWrite.exit71.thread:                  ; preds = %sqlite3PagerWrite.exit71.sqlite3PagerWrite.exit71.thread_crit_edge, %bb.o
  %i.br = phi ptr [ %.pre, %sqlite3PagerWrite.exit71.sqlite3PagerWrite.exit71.thread_crit_edge ], [ %i.ap, %bb.o ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.bs, i64 %i.as, i1 false)
  br label %.critedge65

.critedge65:                                      ; preds = %bb.b, %.preheader, %bb.q, %sqlite3PagerWrite.exit71, %.critedge63, %bb.f, %bb.l, %sqlite3PagerWrite.exit71.thread, %sqlite3PagerWrite.exit, %bb.k
  %.6 = phi i32 [ %.0.i, %sqlite3PagerWrite.exit ], [ %i.an, %bb.k ], [ %i.bi, %bb.q ], [ 0, %bb.l ], [ 0, %sqlite3PagerWrite.exit71.thread ], [ %i.z, %bb.f ], [ 0, %.critedge63 ], [ %.0.i69, %sqlite3PagerWrite.exit71 ], [ 0, %.preheader ], [ 0, %bb.b ]
  ret i32 %.6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @btreeOverwriteOverflowCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !2347
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2348
  %i.f = add nsw i32 %i.e, %i.c                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !857  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !868
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.l = load i16, ptr %i.k, align 4, !tbaa !866
  %i.m = zext i16 %i.l to i32
  %i.n = tail call fastcc i32 @btreeOverwriteContent(ptr noundef %i.h, ptr noundef %i.j, ptr noundef %1, i32 noundef 0, i32 noundef %i.m) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.o = load i16, ptr %i.k, align 4, !tbaa !866  ; 2 uses
  %i.p = zext i16 %i.o to i32
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !868
  %i.r = zext i16 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 1
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !775  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !761
  %i.z = add i32 %i.y, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.q, %bb.b
  %.034 = phi i32 [ %i.p, %bb.b ], [ %i.cf, %bb.q ] ; 4 uses
  %.030 = phi i32 [ %i.u, %bb.b ], [ %.232, %bb.q ] ; 6 uses
  %.0 = phi i32 [ %i.z, %bb.b ], [ %.2, %bb.q ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !77  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !525
  %i.ad = call i32 %i.ac(ptr noundef %i.aa, i32 noundef %.030, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 256) 0) #58, !inline_history !773 ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.d, label %btreeGetPage.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !524 ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %.val13.i.i = load ptr, ptr %i.af, align 8, !tbaa !696 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !774
  %.not.i.i = icmp eq i32 %.030, %i.ah
  br i1 %.not.i.i, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 112
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !698
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %.val.i.i = load ptr, ptr %i.ai, align 8, !tbaa !527
  %i.aj = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  store ptr %.val.i.i, ptr %i.aj, align 8, !tbaa !667
  %i.ak = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 112
  store ptr %i.ae, ptr %i.ak, align 8, !tbaa !698
  %i.al = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 72
  store ptr %i.w, ptr %i.al, align 8, !tbaa !775
  store i32 %.030, ptr %i.ag, align 4, !tbaa !774
  %i.am = icmp eq i32 %.030, 1
  %i.an = select i1 %i.am, i8 100, i8 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 9
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !776
  br label %bb.f

btreeGetPage.exit:                                ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.ap = phi ptr [ %.pre, %._crit_edge ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.aq = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 112
  %i.ar = getelementptr i8, ptr %i.ap, i64 56
  %.val = load i64, ptr %i.ar, align 8, !tbaa !1230
  %i.as = and i64 %.val, 4294967295
  %.not41 = icmp eq i64 %i.as, 1
  br i1 %.not41, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = load i8, ptr %.val13.i.i, align 8, !tbaa !1614
  %.not42 = icmp eq i8 %i.at, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82563, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.au = add i32 %.0, %.034
  %i.av = icmp ult i32 %i.au, %i.f
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !667 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = call i32 @llvm.bswap.i32(i32 %i.ay)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_5
begin_hunk_6_@pageFindSlot:bb.a

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75004, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  store i32 11, ptr %2, align 4, !tbaa !27
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.aw = lshr i32 %i.ae, 8
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.ag, align 1, !tbaa !231
  %i.ay = trunc i32 %i.ae to i8
  store i8 %i.ay, ptr %i.ah, align 1, !tbaa !231
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.az
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.bb = load i8, ptr %i.v, align 1, !tbaa !231
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !231
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 3 uses
  %.not61 = icmp samesign ugt i32 %i.bh, %.0
  br i1 %.not61, label %bb.b, label %bb.k, !llvm.loop !2877

bb.k:                                             ; preds = %bb.j
  %.not62 = icmp eq i32 %i.bh, 0
  br i1 %.not62, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75019, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  store i32 11, ptr %2, align 4, !tbaa !27
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.bi = add nsw i32 %i.s, -4
  %i.bj = icmp sgt i32 %.0, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75026, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  store i32 11, ptr %2, align 4, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.l, %bb.e, %bb.i, %bb.h, %bb.f
  %.056 = phi ptr [ null, %bb.k ], [ %i.v, %bb.f ], [ null, %bb.h ], [ %i.ba, %bb.i ], [ null, %bb.e ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.m ]
  ret ptr %.056
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @defragmentPage(ptr noundef %0, i32 noundef range(i32 -2147483648, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !667  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !776
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !1610 ; 3 uses
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i16, ptr %i.i, align 8, !tbaa !1613 ; 3 uses
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 1
  %i.m = add nuw nsw i32 %i.l, %i.h               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !775  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !761  ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 7 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !231
  %i.u = zext i8 %i.t to i32
  %.not = icmp slt i32 %1, %i.u
  br i1 %.not, label %..thread200_crit_edge, label %bb.b

..thread200_crit_edge:                            ; preds = %bb.a
  %.pre = add nsw i32 %i.q, -4
  br label %.thread200

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !231
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !231
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab             ; 7 uses
  %i.ad = add nsw i32 %i.q, -4                    ; 5 uses
  %i.ae = icmp sgt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74874, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.c:                                             ; preds = %bb.b
  %.not191 = icmp eq i32 %i.ac, 0
  br i1 %.not191, label %.thread200, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !231
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 8 uses
  %i.ao = icmp samesign ugt i32 %i.an, %i.ad
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74877, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp eq i32 %i.an, 0                    ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !231
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.h, label %.thread200

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !231
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.i, label %.thread200

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ax = zext nneg i32 %i.m to i64               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !231
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !231
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !231
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !231
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 4 uses
  %.not192 = icmp samesign ult i32 %i.bo, %i.ac
  br i1 %.not192, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74885, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.k:                                             ; preds = %bb.i
  %i.bp = add nuw nsw i32 %i.bg, %i.ac            ; 5 uses
  br i1 %i.ap, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp samesign ugt i32 %i.bp, %i.an
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74888, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.n:                                             ; preds = %bb.l
  %i.br = zext nneg i32 %i.an to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !231
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !231
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 4 uses
  %i.cb = add nuw nsw i32 %i.ca, %i.an
  %i.cc = icmp sgt i32 %i.cb, %i.q
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74890, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.p:                                             ; preds = %bb.n
  %i.cd = add nuw nsw i32 %i.ca, %i.bp
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ce
  %i.cg = zext nneg i32 %i.bp to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  %i.ci = sub nuw nsw i32 %i.an, %i.bp
  %2 = zext nneg i32 %i.ci to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull align 1 %i.ch, i64 %2, i1 false)
  %i.cj = add nuw nsw i32 %i.ca, %i.bg
  br label %bb.s

bb.q:                                             ; preds = %bb.k
  %i.ck = icmp sgt i32 %i.bp, %i.q
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74894, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.s:                                             ; preds = %bb.q, %bb.p
  %.0165 = phi i32 [ %i.ca, %bb.p ], [ 0, %bb.q ]
  %.0 = phi i32 [ %i.cj, %bb.p ], [ %i.bg, %bb.q ] ; 2 uses
  %i.cl = add nuw nsw i32 %.0, %i.bo              ; 3 uses
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cm
  %i.co = zext nneg i32 %i.bo to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  %i.cq = sub nuw nsw i32 %i.ac, %i.bo
  %3 = zext nneg i32 %i.cq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.cp, i64 %3, i1 false)
  %i.cr = zext i16 %i.g to i64                    ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cr, %i.ax
  br i1 %i.cs, label %.lr.ph.preheader, label %.loopexit218

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.0166221 = phi ptr [ %i.dh, %bb.u ], [ %i.ct, %.lr.ph.preheader ] ; 4 uses
  %i.cu = load i8, ptr %.0166221, align 1, !tbaa !231
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0166221, i64 1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !231
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 3 uses
  %i.db = icmp samesign ult i32 %i.da, %i.ac
  br i1 %i.db, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.dc = icmp samesign ult i32 %i.da, %i.an
  br i1 %i.dc, label %.sink.split, label %bb.u

.sink.split:                                      ; preds = %bb.t, %.lr.ph
  %.0.sink = phi i32 [ %.0, %.lr.ph ], [ %.0165, %bb.t ]
  %i.dd = add nuw nsw i32 %i.da, %.0.sink         ; 2 uses
  %i.de = lshr i32 %i.dd, 8
  %i.df = trunc i32 %i.de to i8
  store i8 %i.df, ptr %.0166221, align 1, !tbaa !231
  %i.dg = trunc i32 %i.dd to i8
  store i8 %i.dg, ptr %i.cx, align 1, !tbaa !231
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.0166221, i64 2 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.ay
  br i1 %i.di, label %.lr.ph, label %.loopexit218, !llvm.loop !2878

.thread200:                                       ; preds = %..thread200_crit_edge, %bb.h, %bb.g, %bb.c
  %.pre-phi = phi i32 [ %.pre, %..thread200_crit_edge ], [ %i.ad, %bb.h ], [ %i.ad, %bb.g ], [ %i.ad, %bb.c ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !231
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !231
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp
  %.not194 = icmp eq i16 %i.j, 0
  br i1 %.not194, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.thread200
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.ds = getelementptr i8, ptr %i.dr, i64 280
  %.val = load ptr, ptr %i.ds, align 8, !tbaa !1663 ; 2 uses
  %i.dt = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val, ptr nonnull align 1 %i.b, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = zext i16 %i.g to i64
  %wide.trip.count = zext i16 %i.j to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.aa
  %indvars.iv = phi i64 [ 0, %bb.v ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %.4223 = phi i32 [ %i.q, %bb.v ], [ %i.ek, %bb.aa ]
  %i.dw = shl nuw nsw i64 %indvars.iv, 1
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.dw ; 3 uses
  %i.dx = load i8, ptr %gep, align 1, !tbaa !231
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %gep, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !231
  %i.ec = zext i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.dz, %i.ec            ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, %.pre-phi
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74927, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.y:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !1607
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eg ; 2 uses
  %i.ei = tail call zeroext i16 %i.ef(ptr noundef nonnull %0, ptr noundef %i.eh) #58 ; 2 uses
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = sub nsw i32 %.4223, %i.ej               ; 6 uses
  %i.el = icmp slt i32 %i.ek, %i.dq
  %i.em = add nuw nsw i32 %i.ed, %i.ej
  %i.en = icmp sgt i32 %i.em, %i.q
  %or.cond = select i1 %i.el, i1 true, i1 %i.en
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74933, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.aa:                                            ; preds = %bb.y
  %i.eo = lshr i32 %i.ek, 8
  %i.ep = trunc i32 %i.eo to i8
  store i8 %i.ep, ptr %gep, align 1, !tbaa !231
  %i.eq = trunc i32 %i.ek to i8
  store i8 %i.eq, ptr %i.ea, align 1, !tbaa !231
  %i.er = zext nneg i32 %i.ek to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.er
  %i.et = zext i16 %i.ei to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.es, ptr align 1 %i.eh, i64 %i.et, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !2879

.loopexit:                                        ; preds = %bb.aa, %.thread200
  %.6 = phi i32 [ %i.q, %.thread200 ], [ %i.ek, %bb.aa ]
  store i8 0, ptr %i.s, align 1, !tbaa !231
  br label %.loopexit218

.loopexit218:                                     ; preds = %bb.u, %bb.s, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ %i.cl, %bb.s ], [ %i.cl, %bb.u ] ; 3 uses
  %i.eu = load i8, ptr %i.s, align 1, !tbaa !231
  %i.ev = zext i8 %i.eu to i32
  %i.ew = sub i32 %.7, %i.m                       ; 2 uses
  %i.ex = add i32 %i.ew, %i.ev
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !1603
  %.not195 = icmp eq i32 %i.ex, %i.ez
  br i1 %.not195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit218
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74947, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %.thread204

bb.ac:                                            ; preds = %.loopexit218
  %i.fa = lshr i32 %.7, 8
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !231
  %i.fd = trunc i32 %.7 to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !231
  %i.ff = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 0, ptr %i.ff, align 1, !tbaa !231
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.fg, align 1, !tbaa !231
  %i.fh = zext nneg i32 %i.m to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fh
  %i.fj = sext i32 %i.ew to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fi, i8 0, i64 %i.fj, i1 false)
  br label %.thread204

.thread204:                                       ; preds = %bb.z, %bb.x, %bb.r, %bb.o, %bb.m, %bb.j, %bb.e, %.thread, %bb.ac, %bb.ab
  %.7180 = phi i32 [ 11, %.thread ], [ 11, %bb.r ], [ 11, %bb.ab ], [ 0, %bb.ac ], [ 11, %bb.e ], [ 11, %bb.j ], [ 11, %bb.m ], [ 11, %bb.o ], [ 11, %bb.x ], [ 11, %bb.z ]
  ret i32 %.7180
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copyNodeContent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !667  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !667  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !776
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !774
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.m, i64 100, i64 0
  %i.o = zext i8 %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !231
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !761
  %i.ad = sub i32 %i.ac, %i.x
  %i.ae = zext i32 %i.ad to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !1610
  %i.ai = zext i16 %i.ah to i64
end_hunk_6
begin_hunk_7_@insertCell:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !231
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !860
  %i.ef = shl nsw i32 %1, 1
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = load i16, ptr %i.bh, align 8, !tbaa !1613
  %i.ek = zext i16 %i.ej to i32
  %i.el = sub nsw i32 %i.ek, %1
  %i.em = shl nsw i32 %i.el, 1
  %i.en = sext i32 %i.em to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr align 1 %i.eh, i64 %i.en, i1 false)
  store i8 %.pre-phi96, ptr %i.eh, align 1, !tbaa !231
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 %.pre-phi98, ptr %i.eo, align 1, !tbaa !231
  %i.ep = load i16, ptr %i.bh, align 8, !tbaa !1613
  %i.eq = add i16 %i.ep, 1
  store i16 %i.eq, ptr %i.bh, align 8, !tbaa !1613
  %i.er = load i8, ptr %i.bb, align 1, !tbaa !776
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !231
  %i.ew = add i8 %i.ev, 1                         ; 2 uses
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !231
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ey = load i8, ptr %i.bb, align 1, !tbaa !776
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 3 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !231
  %i.fd = add i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !231
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !775
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 33
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !754
  %.not61 = icmp eq i8 %i.fh, 0
  br i1 %.not61, label %.thread92, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !27
  call fastcc void @ptrmapPutOvflPtr(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %i.b)
  %i.fi = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %.not62 = icmp eq i32 %i.fi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %.not62, label %.thread92, label %.thread89

.thread92:                                        ; preds = %bb.ab, %bb.ac, %bb.e
  br label %.thread89

.thread89:                                        ; preds = %bb.j, %allocateSpace.exit.thread, %allocateSpace.exit, %sqlite3PagerWrite.exit, %bb.ac, %.thread92
  %.3 = phi i32 [ 0, %.thread92 ], [ %i.fi, %bb.ac ], [ %.2.i.ph, %allocateSpace.exit.thread ], [ %.0.i, %sqlite3PagerWrite.exit ], [ 11, %allocateSpace.exit ], [ %i.aq, %bb.j ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @editPage(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !667  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !776
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !860
  %i.i = shl nsw i32 %3, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i16, ptr %i.l, align 8, !tbaa !1613
  %i.n = zext i16 %i.m to i32                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.o = add nsw i32 %1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !1612
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.o, %i.r                   ; 2 uses
  %i.t = add nsw i32 %3, %2                       ; 3 uses
  %i.u = icmp slt i32 %1, %2
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = sub nsw i32 %2, %1
  %i.w = tail call fastcc i32 @pageFreeArray(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.v, ptr noundef %4) ; 3 uses
  %.not = icmp sgt i32 %i.w, %i.n
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81124, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !860  ; 2 uses
  %i.y = shl nsw i32 %i.w, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z
  %i.ab = shl nuw nsw i32 %i.n, 1
  %i.ac = zext nneg i32 %i.ab to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  %i.ad = sub nsw i32 %i.n, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.1131 = phi i32 [ %i.ad, %bb.c ], [ %i.n, %bb.a ] ; 2 uses
  %i.ae = icmp slt i32 %i.t, %i.s
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = sub nsw i32 %i.s, %i.t
  %i.ag = tail call fastcc i32 @pageFreeArray(ptr noundef nonnull %0, i32 noundef %i.t, i32 noundef %i.af, ptr noundef %4)
  %i.ah = sub nsw i32 %.1131, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2132 = phi i32 [ %i.ah, %bb.e ], [ %.1131, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 5 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 6 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !231
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 3 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !259
  %i.as = icmp ult ptr %i.ar, %i.k
  br i1 %i.as, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !867
  %i.av = icmp ugt ptr %i.ar, %i.au
  br i1 %i.av, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp slt i32 %2, %1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 %1, %2
  %i.ay = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.ax) ; 3 uses
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !860 ; 3 uses
  %i.ba = shl nsw i32 %i.ay, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bd = shl nsw i32 %.2132, 1
  %i.be = sext i32 %i.bd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.az, i64 %i.be, i1 false)
  %i.bf = call fastcc i32 @pageInsertArray(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %i.a, ptr noundef %i.az, i32 noundef %2, i32 noundef %i.ay, ptr noundef %4)
  %.not146 = icmp eq i32 %i.bf, 0
  %i.bg = add nsw i32 %.2132, %i.ay
  br i1 %.not146, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4 = phi i32 [ %i.bg, %bb.i ], [ %.2132, %bb.h ] ; 2 uses
  %i.bh = load i8, ptr %i.p, align 4, !tbaa !1612 ; 2 uses
  %.not157 = icmp eq i8 %i.bh, 0
  br i1 %.not157, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %select.unfold
  %i.bk = phi i8 [ %i.bh, %.lr.ph ], [ %i.ci, %select.unfold ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %.5155 = phi i32 [ %.4, %.lr.ph ], [ %.7.ph, %select.unfold ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !338
  %i.bn = zext i16 %i.bm to i32
  %i.bo = add nsw i32 %1, %i.bn                   ; 4 uses
  %i.bp = sub nsw i32 %i.bo, %2                   ; 5 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  %i.br = icmp slt i32 %i.bp, %3
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !860
  %i.bt = shl nuw nsw i32 %i.bp, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu ; 3 uses
  %i.bw = icmp sgt i32 %.5155, %i.bp
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.by = sub nuw nsw i32 %.5155, %i.bp
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = zext nneg i32 %i.bz to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr align 1 %i.bv, i64 %i.ca, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = add nsw i32 %.5155, 1
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !2826
  %i.cd = sext i32 %i.bo to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !338
  %.not.i = icmp eq i16 %i.cf, 0
  br i1 %.not.i, label %bb.o, label %cachedCellSize.exit

bb.o:                                             ; preds = %bb.n
  %i.cg = tail call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %4, i32 noundef %i.bo) ; 0 uses
  br label %cachedCellSize.exit

cachedCellSize.exit:                              ; preds = %bb.n, %bb.o
  %i.ch = call fastcc i32 @pageInsertArray(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %i.a, ptr noundef %i.bv, i32 noundef %i.bo, i32 noundef 1, ptr noundef %4)
  %.not148 = icmp eq i32 %i.ch, 0
  br i1 %.not148, label %cachedCellSize.exit.select.unfold_crit_edge, label %.loopexit

cachedCellSize.exit.select.unfold_crit_edge:      ; preds = %cachedCellSize.exit
  %.pre = load i8, ptr %i.p, align 4, !tbaa !1612
  br label %select.unfold

select.unfold:                                    ; preds = %cachedCellSize.exit.select.unfold_crit_edge, %bb.k
  %i.ci = phi i8 [ %i.bk, %bb.k ], [ %.pre, %cachedCellSize.exit.select.unfold_crit_edge ] ; 2 uses
  %.7.ph = phi i32 [ %.5155, %bb.k ], [ %i.cb, %cachedCellSize.exit.select.unfold_crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = zext i8 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.k, label %._crit_edge, !llvm.loop !2881

._crit_edge:                                      ; preds = %select.unfold, %bb.j
  %.5.lcssa = phi i32 [ %.4, %bb.j ], [ %.7.ph, %select.unfold ] ; 3 uses
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !860
  %i.cm = shl nsw i32 %.5.lcssa, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  %i.cp = add nsw i32 %.5.lcssa, %2
  %i.cq = sub nsw i32 %3, %.5.lcssa
  %i.cr = call fastcc i32 @pageInsertArray(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef %i.a, ptr noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef %4)
  %.not147 = icmp eq i32 %i.cr, 0
  br i1 %.not147, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %._crit_edge
  %i.cs = trunc i32 %3 to i16
  store i16 %i.cs, ptr %i.l, align 8, !tbaa !1613
  store i8 0, ptr %i.p, align 4, !tbaa !1612
  %i.ct = lshr i32 %3, 8
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !231
  %i.cw = load i16, ptr %i.l, align 8, !tbaa !1613
  %i.cx = trunc i16 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !231
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.c to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 8
  %i.de = trunc i64 %i.dd to i8
  store i8 %i.de, ptr %i.aj, align 1, !tbaa !231
  %i.df = trunc i64 %i.dc to i8
  store i8 %i.df, ptr %i.an, align 1, !tbaa !231
  br label %bb.v

.loopexit:                                        ; preds = %cachedCellSize.exit, %bb.i, %._crit_edge, %bb.g, %bb.f
  %i.dg = icmp slt i32 %3, 1
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 81202, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !1784
  br label %bb.v

bb.r:                                             ; preds = %.loopexit
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !2824 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2826
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = sext i32 %2 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %indvars.iv.i = phi i64 [ %i.dn, %bb.r ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.014.i = phi i32 [ %3, %bb.r ], [ %i.dw, %bb.u ] ; 2 uses
  %i.do = getelementptr inbounds [2 x i8], ptr %i.dk, i64 %indvars.iv.i ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !338
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !1607
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !2825
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %indvars.iv.i
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !259
  %i.dv = tail call zeroext i16 %i.dr(ptr noundef %i.di, ptr noundef %i.du) #58, !inline_history !2882
  store i16 %i.dv, ptr %i.do, align 2, !tbaa !338
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %i.dw = add nsw i32 %.014.i, -1
  %i.dx = icmp sgt i32 %.014.i, 1
  br i1 %i.dx, label %bb.s, label %populateCellCache.exit, !llvm.loop !2883

populateCellCache.exit:                           ; preds = %bb.u
  %i.dy = tail call fastcc i32 @rebuildPage(ptr noundef %4, i32 noundef %2, i32 noundef %3, ptr noundef %0)
  br label %bb.v

bb.v:                                             ; preds = %.thread, %populateCellCache.exit, %bb.q, %bb.p
  %.2 = phi i32 [ 11, %bb.q ], [ %i.dy, %populateCellCache.exit ], [ 0, %bb.p ], [ 11, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc zeroext i16 @computeCellSize(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2824 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1607
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2825
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !259
  %i.j = tail call zeroext i16 %i.d(ptr noundef %i.b, ptr noundef %i.i) #58 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2826
  %i.m = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.g
  store i16 %i.j, ptr %i.m, align 2, !tbaa !338
  ret i16 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pageFreeArray(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 7 uses
  %i.b = alloca [10 x i32], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !667  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !761  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !776
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !1605
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.t = icmp sgt i32 %2, 0
  br i1 %i.t, label %.lr.ph98, label %.critedge

.lr.ph98:                                         ; preds = %bb.a
  %i.u = add nsw i32 %2, %1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sext i32 %1 to i64
  %i.z = sext i32 %i.u to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.aa = icmp sgt i32 %.5, 0
  br i1 %i.aa, label %.lr.ph101.preheader, label %.critedge

.lr.ph101.preheader:                              ; preds = %.preheader
  %wide.trip.count117 = zext nneg i32 %.5 to i64
  br label %.lr.ph101

bb.b:                                             ; preds = %.lr.ph98, %bb.i
  %indvars.iv111 = phi i64 [ %i.y, %.lr.ph98 ], [ %indvars.iv.next112, %bb.i ] ; 3 uses
  %.06596 = phi i32 [ 0, %.lr.ph98 ], [ %.5, %bb.i ] ; 9 uses
  %.07194 = phi i32 [ 0, %.lr.ph98 ], [ %.374, %bb.i ] ; 2 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !2825
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv111
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !259 ; 3 uses
  %.not = icmp uge ptr %i.ad, %i.s
  %i.ae = icmp ult ptr %i.ad, %i.j
  %or.cond = select i1 %.not, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !2826
end_hunk_7
begin_hunk_8_@pragmaVtabConnect:sqlite3_str_appendall.exit
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit, %.lr.ph.preheader, %._crit_edge
  %.133 = phi i8 [ 1, %._crit_edge ], [ 1, %.lr.ph.preheader ], [ %i.w, %._crit_edge.thread.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !3028  ; 2 uses
  %i.z = and i8 %i.y, 32
  %.not = icmp eq i8 %i.z, 0
  %.pre57.pre60 = load i32, ptr %i.e, align 8, !tbaa !287 ; 3 uses
  %.pre59.pre62 = load i32, ptr %i.c, align 8, !tbaa !288 ; 2 uses
  br i1 %.not, label %sqlite3_str_appendall.exit43, label %bb.a

bb.a:                                             ; preds = %._crit_edge.thread
  %i.aa = add i32 %.pre57.pre60, 11               ; 2 uses
  %.not.i.i41 = icmp ult i32 %i.aa, %.pre59.pre62
  br i1 %.not.i.i41, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %6, ptr noundef nonnull readonly @.str.566, i32 noundef 11), !inline_history !2545
  br label %sqlite3_str_appendall.exit43thread-pre-split

bb.c:                                             ; preds = %bb.a
  store i32 %i.aa, ptr %i.e, align 8, !tbaa !287
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !290
  %i.ac = zext i32 %.pre57.pre60 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ad, ptr noundef nonnull readonly align 1 dereferenceable(11) @.str.566, i64 11, i1 false)
  br label %sqlite3_str_appendall.exit43thread-pre-split

sqlite3_str_appendall.exit43thread-pre-split:     ; preds = %bb.b, %bb.c
  %.pr = load i8, ptr %i.x, align 1, !tbaa !3028
  %.pre57.pre = load i32, ptr %i.e, align 8, !tbaa !287
  %.pre59.pre = load i32, ptr %i.c, align 8, !tbaa !288
  br label %sqlite3_str_appendall.exit43

sqlite3_str_appendall.exit43:                     ; preds = %sqlite3_str_appendall.exit43thread-pre-split, %._crit_edge.thread
  %.pre59 = phi i32 [ %.pre59.pre, %sqlite3_str_appendall.exit43thread-pre-split ], [ %.pre59.pre62, %._crit_edge.thread ] ; 2 uses
  %.pre57 = phi i32 [ %.pre57.pre, %sqlite3_str_appendall.exit43thread-pre-split ], [ %.pre57.pre60, %._crit_edge.thread ] ; 3 uses
  %i.ae = phi i8 [ %.pr, %sqlite3_str_appendall.exit43thread-pre-split ], [ %i.y, %._crit_edge.thread ]
  %.1 = phi i8 [ 1, %sqlite3_str_appendall.exit43thread-pre-split ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.not40 = icmp ult i8 %i.ae, 64
  br i1 %.not40, label %bb.g, label %bb.d

bb.d:                                             ; preds = %sqlite3_str_appendall.exit43
  %i.af = add i32 %.pre57, 14                     ; 2 uses
  %.not.i.i44 = icmp ult i32 %i.af, %.pre59
  br i1 %.not.i.i44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %6, ptr noundef nonnull readonly @.str.567, i32 noundef 14), !inline_history !2545
  br label %sqlite3_str_appendall.exit46

bb.f:                                             ; preds = %bb.d
  store i32 %i.af, ptr %i.e, align 8, !tbaa !287
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !290
  %i.ah = zext i32 %.pre57 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ai, ptr noundef nonnull readonly align 1 dereferenceable(14) @.str.567, i64 14, i1 false)
  br label %sqlite3_str_appendall.exit46

sqlite3_str_appendall.exit46:                     ; preds = %bb.e, %bb.f
  %i.aj = add nuw nsw i8 %.1, 1
  %.pre = load i32, ptr %i.e, align 8, !tbaa !287
  %.pre58 = load i32, ptr %i.c, align 8, !tbaa !288
  br label %bb.g

bb.g:                                             ; preds = %sqlite3_str_appendall.exit46, %sqlite3_str_appendall.exit43
  %i.ak = phi i32 [ %.pre58, %sqlite3_str_appendall.exit46 ], [ %.pre59, %sqlite3_str_appendall.exit43 ]
  %i.al = phi i32 [ %.pre, %sqlite3_str_appendall.exit46 ], [ %.pre57, %sqlite3_str_appendall.exit43 ] ; 2 uses
  %.2 = phi i8 [ %i.aj, %sqlite3_str_appendall.exit46 ], [ %.1, %sqlite3_str_appendall.exit43 ]
  %i.am = add i32 %i.al, 1                        ; 2 uses
  %.not.i = icmp ult i32 %i.am, %i.ak
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %6, ptr noundef nonnull @.str.133, i32 noundef 1), !inline_history !289
  br label %sqlite3_str_append.exit

bb.i:                                             ; preds = %bb.g
  store i32 %i.am, ptr %i.e, align 8, !tbaa !287
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !290
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 41, ptr %i.ap, align 1
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.h, %bb.i
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !290 ; 2 uses
  %.not.i47 = icmp eq ptr %i.aq, null
  br i1 %.not.i47, label %sqlite3StrAccumFinish.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_str_append.exit
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !287
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !231
  %i.au = load i32, ptr %i.d, align 4, !tbaa !307
  %.not9.i = icmp eq i32 %i.au, 0
  br i1 %.not9.i, label %sqlite3StrAccumFinish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr %i.f, align 1, !tbaa !283
  %i.aw = and i8 %i.av, 4
  %.not10.i = icmp eq i8 %i.aw, 0
  br i1 %.not10.i, label %bb.l, label %sqlite3StrAccumFinish.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %6), !inline_history !400 ; 0 uses
  br label %sqlite3StrAccumFinish.exit

sqlite3StrAccumFinish.exit:                       ; preds = %sqlite3_str_append.exit, %bb.j, %bb.k, %bb.l
  %i.ay = call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull %i.a) ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %bb.o

bb.m:                                             ; preds = %sqlite3StrAccumFinish.exit
  %i.ba = call i32 @sqlite3_initialize(), !inline_history !347
  %.not.i48.not = icmp eq i32 %i.ba, 0
  br i1 %.not.i48.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.m
  %i.bb = call fastcc ptr @sqlite3Malloc(i64 noundef 48), !inline_history !347 ; 7 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %sqlite3_malloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %sqlite3_malloc.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i8 0, i64 48, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %1, ptr %i.bd, align 8, !tbaa !3032
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %0, ptr %i.be, align 8, !tbaa !3035
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 41
  store i8 %.133, ptr %i.bf, align 1, !tbaa !3036
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i8 %.2, ptr %i.bg, align 8, !tbaa !3037
  br label %sqlite3_malloc.exit.thread

bb.o:                                             ; preds = %sqlite3StrAccumFinish.exit
  %i.bh = call ptr @sqlite3_errmsg(ptr noundef %0)
  %i.bi = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.31, ptr noundef %i.bh)
  store ptr %i.bi, ptr %5, align 8, !tbaa !259
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.m, %sqlite3_malloc.exit, %bb.n, %bb.o
  %.035 = phi ptr [ null, %bb.o ], [ %i.bb, %bb.n ], [ null, %sqlite3_malloc.exit ], [ null, %bb.m ]
  %.034 = phi i32 [ %i.ay, %bb.o ], [ 0, %bb.n ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.m ]
  store ptr %.035, ptr %4, align 8, !tbaa !3038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  ret i32 %.034
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 20) i32 @pragmaVtabBestIndex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((64, 72)) %1) #16 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !3039
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !3037
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1150
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !27
  %i.i = load i32, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.l = load i8, ptr %i.k, align 1, !tbaa !3036
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.036 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %.02835 = phi ptr [ %i.g, %.lr.ph ], [ %i.y, %bb.g ] ; 4 uses
  %i.n = load i32, ptr %.02835, align 4, !tbaa !3040 ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02835, i64 4
  %i.q = load i8, ptr %i.p, align 4, !tbaa !3041
  %.not34 = icmp eq i8 %i.q, 2
  br i1 %.not34, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.02835, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !3042
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sub nuw nsw i32 %i.n, %i.m
  %i.v = add nuw nsw i32 %.036, 1
  %2 = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %2
  store i32 %i.v, ptr %i.w, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.f
  %i.x = add nuw nsw i32 %.036, 1                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02835, i64 12
  %exitcond.not = icmp eq i32 %i.x, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !3043

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.z = icmp eq i32 %.pre, 0
  br i1 %i.z, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  store double f0x41DFFFFFFFC00000, ptr %i.b, align 8, !tbaa !3039
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 2147483647, ptr %i.aa, align 8, !tbaa !3044
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !3045 ; 2 uses
  %i.ad = sext i32 %.pre to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  store i32 1, ptr %i.af, align 4, !tbaa !3046
  %i.ag = getelementptr i8, ptr %i.ae, i64 -4
  store i8 1, ptr %i.ag, align 4, !tbaa !3048
  store double 2.000000e+01, ptr %i.b, align 8, !tbaa !3039
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 20, ptr %i.ah, align 8, !tbaa !3044
  %i.ai = load i32, ptr %i.h, align 4, !tbaa !27  ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.ac, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  store i32 2, ptr %i.al, align 4, !tbaa !3046
  %i.am = getelementptr i8, ptr %i.ak, i64 -4
  store i8 1, ptr %i.am, align 4, !tbaa !3048
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.i, %bb.a, %._crit_edge.thread
  %.029 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %._crit_edge.thread ], [ 0, %bb.i ], [ 19, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.029
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pragmaVtabDisconnect(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.d(ptr noundef nonnull %i.c) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #58, !inline_history !277
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.l(ptr noundef nonnull %0) #58, !inline_history !278
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.n(ptr noundef nonnull %i.m) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.o(ptr noundef nonnull %0) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @pragmaVtabOpen(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_initialize(), !inline_history !347
  %.not.i.not = icmp eq i32 %i.a, 0
  br i1 %.not.i.not, label %sqlite3_malloc.exit, label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit:                              ; preds = %bb.a
  %i.b = tail call fastcc ptr @sqlite3Malloc(i64 noundef 40), !inline_history !347 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %sqlite3_malloc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.b, align 8, !tbaa !3049
  store ptr %i.b, ptr %1, align 8, !tbaa !2519
  br label %sqlite3_malloc.exit.thread

sqlite3_malloc.exit.thread:                       ; preds = %bb.a, %sqlite3_malloc.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %sqlite3_malloc.exit ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pragmaVtabClose(ptr noundef initializes((16, 24)) %0) #0 {
bb.a:
  tail call fastcc void @pragmaVtabCursorClear(ptr noundef %0)
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.d(ptr noundef nonnull %i.c) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #58, !inline_history !277
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.i = sub nsw i64 %i.h, %i.g
  store i64 %i.i, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.k = add nsw i64 %i.j, -1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.l(ptr noundef nonnull %0) #58, !inline_history !278
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.n(ptr noundef nonnull %i.m) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.o(ptr noundef nonnull %0) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pragmaVtabFilter(ptr nofree noundef captures(none) initializes((16, 24)) %0, i32 %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.sqlite3_str, align 8        ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2110   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  tail call fastcc void @pragmaVtabCursorClear(ptr noundef nonnull %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph, label %sqlite3_str_appendall.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !3032
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3028
  %i.g = and i8 %i.f, 32
  %.not = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = zext i1 %.not to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

end_hunk_8
begin_hunk_9_@pragmaVtabFilter:bb.a
  %i.bt = call i32 %i.bs(ptr noundef nonnull %.0.i) #58, !inline_history !277
  %i.bu = sext i32 %i.bt to i64
  %i.bv = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.bw = sub nsw i64 %i.bv, %i.bu
  store i64 %i.bw, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.by = add nsw i64 %i.bx, -1
  store i64 %i.by, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.bz(ptr noundef nonnull %.0.i) #58, !inline_history !278
  %i.ca = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i51 = icmp eq ptr %i.ca, null
  br i1 %.not.i4.i51, label %sqlite3_free.exit, label %bb.w

bb.w:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.cb(ptr noundef nonnull %i.ca) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.x:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.cc(ptr noundef nonnull %.0.i) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.w, %bb.x
  %.not43 = icmp eq i32 %i.bo, 0
  br i1 %.not43, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3_free.exit
  %i.cd = load ptr, ptr %i.z, align 8, !tbaa !3035
  %i.ce = call ptr @sqlite3_errmsg(ptr noundef %i.cd)
  %i.cf = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.31, ptr noundef %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !3052
  br label %pragmaVtabNext.exit

bb.z:                                             ; preds = %sqlite3_free.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !3053
  %i.cj = add nsw i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !3053
  %i.ck = load ptr, ptr %i.bn, align 8, !tbaa !3054
  %i.cl = call i32 @sqlite3_step(ptr noundef %i.ck), !inline_history !3055
  %.not.i52 = icmp eq i32 %i.cl, 100
  br i1 %.not.i52, label %pragmaVtabNext.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !3054
  %i.cn = call i32 @sqlite3_finalize(ptr noundef %i.cm), !inline_history !3055
  store ptr null, ptr %i.bn, align 8, !tbaa !3054
  call fastcc void @pragmaVtabCursorClear(ptr noundef nonnull %0), !inline_history !3055
  br label %pragmaVtabNext.exit

pragmaVtabNext.exit:                              ; preds = %bb.h, %bb.aa, %bb.z, %sqlite3StrAccumFinish.exit, %bb.y
  %.2 = phi i32 [ 7, %sqlite3StrAccumFinish.exit ], [ 0, %bb.z ], [ %i.bo, %bb.y ], [ %i.cn, %bb.aa ], [ 7, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @pragmaVtabNext(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3053
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !3053
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3054
  %i.f = tail call i32 @sqlite3_step(ptr noundef %i.e)
  %.not = icmp eq i32 %i.f, 100
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !3054
  %i.h = tail call i32 @sqlite3_finalize(ptr noundef %i.g)
  store ptr null, ptr %i.d, align 8, !tbaa !3054
  tail call fastcc void @pragmaVtabCursorClear(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @pragmaVtabEof(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3054
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pragmaVtabColumn(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2110
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.c = load i8, ptr %i.b, align 1, !tbaa !3036
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp slt i32 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3054 ; 8 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.h, label %columnMem.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.l(ptr noundef nonnull %i.k) #58, !inline_history !3056
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !578  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.p = load i16, ptr %i.o, align 8, !tbaa !606
  %i.q = zext i16 %i.p to i32
  %or.cond.i.i = icmp ult i32 %2, %i.q
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %2 to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.r
  br label %columnMem.exit.i

bb.g:                                             ; preds = %bb.e, %sqlite3_mutex_enter.exit.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !150  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store i32 25, ptr %i.u, align 8, !tbaa !579
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %i.t, i32 noundef 25)
  br label %columnMem.exit.i

columnMem.exit.i:                                 ; preds = %bb.g, %bb.f, %bb.b
  %.012.i.i = phi ptr [ @columnNullValue.nullMem, %bb.g ], [ %i.s, %bb.f ], [ @columnNullValue.nullMem, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 20 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !166  ; 2 uses
  %i.x = and i16 %i.w, 8192
  %.not.i = icmp eq i16 %i.x, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %columnMem.exit.i
  %i.y = and i16 %i.w, -24577
  %i.z = or disjoint i16 %i.y, 16384
  store i16 %i.z, ptr %i.v, align 4, !tbaa !166
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %columnMem.exit.i
  br i1 %i.h, label %sqlite3_column_value.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !150 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !542 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 103
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !563
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = icmp ne i32 %i.ac, 0
  %or.cond.i.i.i = or i1 %i.ag, %i.af
  br i1 %or.cond.i.i.i, label %bb.k, label %sqlite3ApiExit.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %i.aa, i32 noundef %i.ac)
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !150
  br label %sqlite3ApiExit.exit.i.i

sqlite3ApiExit.exit.i.i:                          ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %.pre.i.i, %bb.k ], [ %i.aa, %bb.j ]
  %.0.i.i.i = phi i32 [ %i.ah, %bb.k ], [ 0, %bb.j ]
  store i32 %.0.i.i.i, ptr %i.ab, align 4, !tbaa !542
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i7.i, label %sqlite3_column_value.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3ApiExit.exit.i.i
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.al(ptr noundef nonnull %i.ak) #58, !inline_history !3057
  br label %sqlite3_column_value.exit

sqlite3_column_value.exit:                        ; preds = %bb.i, %sqlite3ApiExit.exit.i.i, %bb.l
  tail call void @sqlite3_result_value(ptr noundef %1, ptr noundef nonnull %.012.i.i)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = sub nuw nsw i32 %2, %i.d
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !259
  tail call fastcc void @setResultStrOrError(ptr noundef %1, ptr noundef %i.aq, i32 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3058
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %sqlite3_column_value.exit
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @pragmaVtabRowid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3053
  store i64 %i.b, ptr %1, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pragmaVtabCursorClear(ptr nofree noundef captures(none) initializes((16, 24)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3054
  %i.c = tail call i32 @sqlite3_finalize(ptr noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !259  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.i(ptr noundef nonnull %i.h) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.e) #58, !inline_history !277
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.n = sub nsw i64 %i.m, %i.l
  store i64 %i.n, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.p = add nsw i64 %i.o, -1
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.q(ptr noundef nonnull %i.e) #58, !inline_history !278
  %i.r = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.r, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.s(ptr noundef nonnull %i.r) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.t(ptr noundef nonnull %i.e) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i, %bb.e, %bb.f
  store ptr null, ptr %i.d, align 8, !tbaa !259
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !259  ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %sqlite3_free.exit.1, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.x = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.1 = icmp eq i32 %i.x, 0
  br i1 %.not.i.1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.1, label %sqlite3_mutex_enter.exit.i.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i.1

sqlite3_mutex_enter.exit.i.1:                     ; preds = %bb.i, %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %i.v) #58, !inline_history !277
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ae = sub nsw i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ag = add nsw i64 %i.af, -1
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ah(ptr noundef nonnull %i.v) #58, !inline_history !278
  %i.ai = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.1 = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i.1, label %sqlite3_free.exit.1, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i.1
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.aj(ptr noundef nonnull %i.ai) #58, !inline_history !279
  br label %sqlite3_free.exit.1

bb.k:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ak(ptr noundef nonnull %i.v) #58, !inline_history !278
  br label %sqlite3_free.exit.1

sqlite3_free.exit.1:                              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i.1, %sqlite3_free.exit
  store ptr null, ptr %i.u, align 8, !tbaa !259
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @jsonEachConnect(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @.str.617) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 40), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc ptr @sqlite3Malloc(i64 noundef 40), !inline_history !878
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.c ], [ %i.d, %bb.d ] ; 6 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %sqlite3DbMallocZero.exit.thread, label %bb.e

sqlite3DbMallocZero.exit.thread:                  ; preds = %sqlite3DbMallocRaw.exit.i
  store ptr null, ptr %4, align 8, !tbaa !3038
  br label %bb.f

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.0.i.i, i8 0, i64 40, i1 false)
  store ptr %.0.i.i, ptr %4, align 8, !tbaa !3038
  %i.e = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 2) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store ptr %0, ptr %i.f, align 8, !tbaa !3059
  %i.g = load ptr, ptr %3, align 8, !tbaa !259    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !231
  %i.j = icmp eq i8 %i.i, 98
  %i.k = select i1 %i.j, i8 2, i8 1               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store i8 %i.k, ptr %i.l, align 8, !tbaa !3061
  %i.m = zext nneg i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !231
  %i.q = icmp eq i8 %i.p, 116
  %i.r = zext i1 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 33
  store i8 %i.r, ptr %i.s, align 1, !tbaa !3062
  br label %bb.f

bb.f:                                             ; preds = %sqlite3DbMallocZero.exit.thread, %bb.a, %bb.e
  %.0 = phi i32 [ 7, %sqlite3DbMallocZero.exit.thread ], [ 0, %bb.e ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 20) i32 @jsonEachBestIndex(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #16 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !27
  store i32 -1, ptr %i.a, align 4, !tbaa !27
  %i.c = load i32, ptr %1, align 8, !tbaa !1145   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1150
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.045 = phi ptr [ %i.v, %bb.f ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
end_hunk_9
begin_hunk_10_@jsonbValidityCheck:bb.a
  %.5 = phi i32 [ %i.ck, %bb.ak ], [ %.4, %bb.al ], [ %i.cp, %bb.an ], [ %i.cp, %bb.an ], [ %i.cp, %bb.an ] ; 2 uses
  %.0235 = phi i8 [ 1, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.an ], [ 0, %bb.an ] ; 2 uses
  %i.ct = icmp ult i32 %.5, %2
  br i1 %i.ct, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %bb.ao
  %i.cu = add i32 %2, -1                          ; 3 uses
  %i.cv = icmp eq i8 %i.p, 5
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph360, %bb.bd
  %.1358 = phi i8 [ %.0235, %.lr.ph360 ], [ %.2, %bb.bd ] ; 3 uses
  %.6357 = phi i32 [ %.5, %.lr.ph360 ], [ %i.dr, %bb.bd ] ; 13 uses
  %i.cw = zext i32 %.6357 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !231 ; 2 uses
  %i.cz = add i8 %i.cy, -58
  %.not288 = icmp ult i8 %i.cz, -10
  br i1 %.not288, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.cy, label %bb.bc [
    i8 46, label %bb.ar
    i8 101, label %bb.aw
    i8 69, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  %.not289 = icmp eq i8 %.1358, 0
  br i1 %.not289, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = add i32 %.6357, 1
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  br i1 %i.cv, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.db = icmp eq i32 %.6357, %i.cu
  br i1 %i.db, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dc = add i32 %.6357, 1                       ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !231
  %i.dg = add i8 %i.df, -58
  %.not290 = icmp ult i8 %i.dg, -10
  br i1 %.not290, label %.loopexit, label %bb.bd

bb.aw:                                            ; preds = %bb.aq, %bb.aq
  %i.dh = icmp eq i8 %.1358, 2
  br i1 %i.dh, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.di = add i32 %.6357, 1
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.dj = icmp eq i32 %.6357, %i.cu
  br i1 %i.dj, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dk = add i32 %.6357, 1                       ; 3 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !231
  switch i8 %i.dn, label %bb.bd [
    i8 43, label %bb.ba
    i8 45, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.do = icmp eq i32 %i.dk, %i.cu
  br i1 %i.do, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.dp = add i32 %.6357, 2
  br label %.loopexit

bb.bc:                                            ; preds = %bb.aq
  %i.dq = add nuw i32 %.6357, 1
  br label %.loopexit

bb.bd:                                            ; preds = %bb.ba, %bb.az, %bb.at, %bb.av, %bb.ap
  %.8 = phi i32 [ %.6357, %bb.ap ], [ %.6357, %bb.at ], [ %.6357, %bb.av ], [ %i.dk, %bb.ba ], [ %.6357, %bb.az ]
  %.2 = phi i8 [ %.1358, %bb.ap ], [ 1, %bb.at ], [ 1, %bb.av ], [ 2, %bb.ba ], [ 2, %bb.az ] ; 2 uses
  %i.dr = add i32 %.8, 1                          ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %2
  br i1 %i.ds, label %bb.ap, label %._crit_edge361, !llvm.loop !3147

._crit_edge361:                                   ; preds = %bb.bd, %bb.ao
  %.1.lcssa = phi i8 [ %.0235, %bb.ao ], [ %.2, %bb.bd ]
  %i.dt = icmp eq i8 %.1.lcssa, 0
  %i.du = add i32 %1, 1
  %spec.select = select i1 %i.dt, i32 %i.du, i32 0
  br label %.loopexit

.lr.ph356:                                        ; preds = %.preheader, %bb.be
  %.9355 = phi i32 [ %i.eb, %bb.be ], [ %i.h, %.preheader ] ; 2 uses
  %i.dv = zext i32 %.9355 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !231 ; 2 uses
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !231
  %.not282 = icmp ne i8 %i.ea, 0
  %.not283 = icmp eq i8 %i.dx, 39
  %or.cond296 = or i1 %.not283, %.not282
  %i.eb = add nuw i32 %.9355, 1                   ; 3 uses
  br i1 %or.cond296, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %.lr.ph356
  %exitcond.not = icmp eq i32 %i.eb, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph356, !llvm.loop !3148

bb.bf:                                            ; preds = %bb.g, %bb.g
  %i.ec = icmp ult i32 %i.h, %2
  br i1 %i.ec, label %.lr.ph345, label %.loopexit

.lr.ph345:                                        ; preds = %bb.bf
  %.not278 = icmp eq i8 %i.p, 9
  %i.ed = icmp eq i8 %i.p, 8                      ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph345, %bb.bu
  %.10343 = phi i32 [ %i.h, %.lr.ph345 ], [ %i.fe, %bb.bu ] ; 11 uses
  %i.ee = zext i32 %.10343 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !231 ; 5 uses
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !231
  %.not273 = icmp ne i8 %i.ej, 0
  %.not274 = icmp eq i8 %i.eg, 39
  %or.cond297 = or i1 %.not274, %.not273
  br i1 %or.cond297, label %bb.bu, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ek = icmp eq i8 %i.eg, 34
  br i1 %i.ek, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ed, label %bb.bj, label %bb.bu

bb.bj:                                            ; preds = %bb.bi
  %i.el = add nuw i32 %.10343, 1
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bh
  %i.em = icmp ult i8 %i.eg, 32
  br i1 %i.em, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ed, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  %i.en = add i32 %.10343, 1
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bk
  %.not275 = icmp eq i8 %i.eg, 92
  %i.eo = add i32 %.10343, 1                      ; 9 uses
  %.not276 = icmp ult i32 %i.eo, %2
  %or.cond511 = and i1 %.not275, %.not276
  br i1 %or.cond511, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !231 ; 2 uses
  %i.es = zext i8 %i.er to i32
  %memchr = tail call ptr @memchr(ptr nonnull dereferenceable(1) @.str.620, i32 %i.es, i64 9)
  %.not277 = icmp eq ptr %memchr, null
  br i1 %.not277, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.et = icmp eq i8 %i.er, 117
  br i1 %i.et, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.eu = add i32 %.10343, 5
  %.not280 = icmp ult i32 %i.eu, %2
  br i1 %.not280, label %bb.br, label %.loopexit

bb.br:                                            ; preds = %bb.bq
  %i.ev = add i32 %.10343, 2
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ew
  %i.ey = tail call fastcc i32 @jsonIs4Hex(ptr noundef %i.ex)
  %.not281 = icmp eq i32 %i.ey, 0
  br i1 %.not281, label %.loopexit, label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  br i1 %.not278, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %i.ez = sub nuw i32 %2, %.10343
  %i.fa = call fastcc i32 @jsonUnescapeOneChar(ptr noundef nonnull %i.ef, i32 noundef %i.ez, ptr noundef %i.b)
  %i.fb = load i32, ptr %i.b, align 4, !tbaa !27
  %.not279 = icmp eq i32 %i.fb, 629145
  %i.fc = add i32 %.10343, -1
  %i.fd = add i32 %i.fc, %i.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %.not279, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bo, %bb.bi, %bb.bt, %bb.bl, %bb.bg
  %.12 = phi i32 [ %.10343, %bb.bg ], [ %.10343, %bb.bi ], [ %.10343, %bb.bl ], [ %i.fd, %bb.bt ], [ %i.eo, %bb.bo ], [ %i.eo, %bb.br ]
  %i.fe = add i32 %.12, 1                         ; 2 uses
  %i.ff = icmp ult i32 %i.fe, %2
  br i1 %i.ff, label %bb.bg, label %.loopexit, !llvm.loop !3149

bb.bv:                                            ; preds = %.lr.ph339, %bb.ca
  %.13338 = phi i32 [ %i.h, %.lr.ph339 ], [ %i.fl, %bb.ca ] ; 5 uses
  %i.fg = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.13338, ptr noundef %i.a) ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fi = add nuw i32 %.13338, 1
  br label %.loopexit

bb.bx:                                            ; preds = %bb.bv
  %i.fj = add i32 %i.fg, %.13338
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !27
  %i.fl = add i32 %i.fj, %i.fk                    ; 4 uses
  %i.fm = icmp ugt i32 %i.fl, %2
  br i1 %i.fm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.fn = add nuw i32 %.13338, 1
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bx
  %i.fo = tail call fastcc i32 @jsonbValidityCheck(ptr noundef nonnull %0, i32 noundef %.13338, i32 noundef %i.fl, i32 noundef %i.t) ; 2 uses
  %.not272 = icmp eq i32 %i.fo, 0
  br i1 %.not272, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.fp = icmp ult i32 %i.fl, %2
  br i1 %i.fp, label %bb.bv, label %.loopexit, !llvm.loop !3150

bb.cb:                                            ; preds = %.lr.ph, %bb.cj
  %.0336 = phi i32 [ 0, %.lr.ph ], [ %i.gh, %bb.cj ] ; 3 uses
  %.14335 = phi i32 [ %i.h, %.lr.ph ], [ %i.fv, %bb.cj ] ; 7 uses
  %i.fq = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %.14335, ptr noundef %i.a) ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fs = add nuw i32 %.14335, 1
  br label %.loopexit

bb.cd:                                            ; preds = %bb.cb
  %i.ft = add i32 %i.fq, %.14335
  %i.fu = load i32, ptr %i.a, align 4, !tbaa !27
  %i.fv = add i32 %i.ft, %i.fu                    ; 5 uses
  %i.fw = icmp ugt i32 %i.fv, %2
  br i1 %i.fw, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.fx = add nuw i32 %.14335, 1
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd
  %i.fy = and i32 %.0336, 1
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.ga = zext i32 %.14335 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !231
  %i.gd = and i8 %i.gc, 15
  %i.ge = add nsw i8 %i.gd, -11
  %or.cond5 = icmp ult i8 %i.ge, -4
  br i1 %or.cond5, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.gf = add nuw i32 %.14335, 1
  br label %.loopexit

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %i.gg = tail call fastcc i32 @jsonbValidityCheck(ptr noundef nonnull %0, i32 noundef %.14335, i32 noundef %i.fv, i32 noundef %i.r) ; 2 uses
  %.not271 = icmp eq i32 %i.gg, 0
  br i1 %.not271, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.gh = add i32 %.0336, 1
  %i.gi = icmp ult i32 %i.fv, %2
  br i1 %i.gi, label %bb.cb, label %._crit_edge, !llvm.loop !3151

._crit_edge:                                      ; preds = %bb.cj
  %i.gj = trunc i32 %.0336 to i1
  %i.gk = add i32 %i.fv, 1
  br i1 %i.gj, label %._crit_edge.thread, label %.loopexit

._crit_edge.thread:                               ; preds = %.preheader305, %._crit_edge
  br label %.loopexit

bb.ck:                                            ; preds = %bb.g
  %i.gl = add i32 %1, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ci, %bb.ca, %bb.bz, %bb.bt, %bb.bq, %bb.br, %bb.bs, %bb.bu, %bb.bn, %bb.be, %.lr.ph356, %bb.ay, %bb.au, %bb.av, %bb.aa, %bb.o, %bb.am, %bb.ai, %bb.y, %._crit_edge.thread, %._crit_edge, %.preheader302, %bb.bf, %.preheader, %bb.z, %bb.n, %._crit_edge361, %bb.cc, %bb.ce, %bb.ch, %bb.bw, %bb.by, %bb.g, %bb.ad, %bb.ag, %bb.as, %bb.ax, %bb.bb, %bb.bc, %bb.aj, %bb.an, %bb.ck, %bb.bm, %bb.bj, %bb.ab, %bb.x, %bb.u, %bb.r, %bb.p, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.6246 = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.f ], [ %i.gl, %bb.ck ], [ %i.y, %bb.h ], [ %i.aa, %bb.j ], [ %i.ah, %bb.m ], [ %i.aq, %bb.p ], [ %i.fn, %bb.by ], [ %i.as, %bb.r ], [ %i.ay, %bb.u ], [ %i.bb, %bb.x ], [ 0, %bb.o ], [ %i.bs, %bb.ab ], [ 0, %.preheader302 ], [ 0, %bb.bf ], [ %i.cp, %bb.am ], [ %spec.select, %._crit_edge361 ], [ %i.el, %bb.bj ], [ %i.en, %bb.bm ], [ 0, %bb.aa ], [ 0, %bb.n ], [ 0, %.preheader ], [ %i.fs, %bb.cc ], [ %i.fx, %bb.ce ], [ %i.gf, %bb.ch ], [ 0, %bb.z ], [ 0, %bb.g ], [ %i.bu, %bb.ad ], [ %i.cb, %bb.ag ], [ %i.bg, %bb.y ], [ %i.da, %bb.as ], [ %i.eo, %bb.bq ], [ %i.di, %bb.ax ], [ %i.fo, %bb.bz ], [ %i.dp, %bb.bb ], [ %i.dq, %bb.bc ], [ 0, %._crit_edge.thread ], [ %i.cp, %bb.an ], [ %i.cf, %bb.aj ], [ %i.cf, %bb.ai ], [ %i.fi, %bb.bw ], [ 0, %bb.be ], [ %i.gk, %._crit_edge ], [ %2, %bb.ay ], [ %2, %bb.au ], [ %i.dc, %bb.av ], [ %i.eb, %.lr.ph356 ], [ %i.eo, %bb.bt ], [ 0, %bb.bu ], [ %i.eo, %bb.bs ], [ %i.eo, %bb.bn ], [ %i.eo, %bb.br ], [ 0, %bb.ca ], [ %i.gg, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.6246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 2) i32 @jsonIs4Hex(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !231
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !231
  %i.e = and i8 %i.d, 8
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %jsonIs2Hex.exit4, label %jsonIs2Hex.exit

jsonIs2Hex.exit:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !231
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !231
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %jsonIs2Hex.exit4, label %bb.b

bb.b:                                             ; preds = %jsonIs2Hex.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !231
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !231
  %i.q = and i8 %i.p, 8
  %.not.i2 = icmp eq i8 %i.q, 0
  br i1 %.not.i2, label %jsonIs2Hex.exit4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !231
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231
  %i.w = lshr i8 %i.v, 3
  %.lobit.i3 = and i8 %i.w, 1
  %i.x = zext nneg i8 %.lobit.i3 to i32
  br label %jsonIs2Hex.exit4

jsonIs2Hex.exit4:                                 ; preds = %bb.a, %bb.c, %bb.b, %jsonIs2Hex.exit
  %i.y = phi i32 [ 0, %jsonIs2Hex.exit ], [ %i.x, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.y
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @jsonUnescapeOneChar(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #19 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %i.ce, %tailrecurse ]
  %.tr66.lcssa = phi i32 [ %1, %bb.a ], [ %i.cd, %tailrecurse ]
  store i32 629145, ptr %2, align 4, !tbaa !27
  br label %bb.al

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr66129 = phi i32 [ %i.cd, %tailrecurse ], [ %1, %bb.a ] ; 13 uses
  %.tr128 = phi ptr [ %i.ca, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  %accumulator.tr127 = phi i32 [ %i.ce, %tailrecurse ], [ 0, %bb.a ] ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr128, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !231   ; 2 uses
  switch i8 %i.c, label %bb.ak [
    i8 117, label %bb.b
    i8 98, label %bb.j
    i8 102, label %bb.k
    i8 110, label %bb.l
    i8 114, label %bb.m
    i8 116, label %bb.n
    i8 118, label %bb.o
    i8 48, label %bb.p
    i8 39, label %bb.s
    i8 34, label %bb.s
    i8 47, label %bb.s
    i8 92, label %bb.s
    i8 120, label %bb.t
    i8 -30, label %.preheader
    i8 13, label %.preheader
    i8 10, label %.preheader
  ]

.preheader:                                       ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  br label %bb.w

bb.b:                                             ; preds = %.lr.ph
end_hunk_10
begin_hunk_11_@jsonReturnFromBlob:bb.a
  %.not9.i = icmp eq ptr %i.ap, null
  br i1 %.not9.i, label %sqlite3_result_int64.exit.thread158, label %sqlite3DbFree.exit

sqlite3_result_int64.exit.thread158:              ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %sqlite3DbStrNDup.exit144.thread

sqlite3DbFree.exit:                               ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pre-phi173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.aq, i64 range(i64 -2147483648, 4294967296) %i.an, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.ar, align 1, !tbaa !231
  %i.as = call fastcc i32 @sqlite3DecOrHexToI64(ptr noundef nonnull %i.ap, ptr noundef %i.b) ; 3 uses
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.g, ptr noundef nonnull %i.ap)
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.z

bb.u:                                             ; preds = %sqlite3DbFree.exit
  %i.au = load i64, ptr %i.b, align 8, !tbaa !21  ; 4 uses
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = uitofp i64 %i.au to double              ; 2 uses
  %i.ax = fneg double %i.aw
  %i.ay = select i1 %i.ai, double %i.ax, double %i.aw
  tail call void @sqlite3_result_double(ptr noundef nonnull %2, double noundef %i.ay)
  br label %sqlite3_result_int64.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.az = sub nsw i64 0, %i.au
  %i.ba = select i1 %i.ai, i64 %i.az, i64 %i.au   ; 2 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !296   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !166
  %i.be = and i16 %i.bd, -28672
  %.not.i.i139 = icmp eq i16 %i.be, 0
  br i1 %.not.i.i139, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bb, i64 noundef %i.ba)
  br label %sqlite3_result_int64.exit.thread

bb.y:                                             ; preds = %bb.w
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !231
  store i16 4, ptr %i.bc, align 4, !tbaa !166
  br label %sqlite3_result_int64.exit.thread

bb.z:                                             ; preds = %sqlite3DbFree.exit
  %i.bf = icmp eq i32 %i.as, 3
  %or.cond = and i1 %i.ai, %i.bf
  br i1 %or.cond, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bg = load ptr, ptr %2, align 8, !tbaa !296   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !166
  %i.bj = and i16 %i.bi, -28672
  %.not.i.i140 = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i140, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bg, i64 noundef -9223372036854775808)
  br label %sqlite3_result_int64.exit.thread

bb.ac:                                            ; preds = %bb.aa
  store i64 -9223372036854775808, ptr %i.bg, align 8, !tbaa !231
  store i16 4, ptr %i.bh, align 4, !tbaa !166
  br label %sqlite3_result_int64.exit.thread

bb.ad:                                            ; preds = %bb.z
  %i.bk = icmp ne i32 %i.as, 1                    ; 2 uses
  %brmerge.not = and i1 %i.ai, %i.bk
  br i1 %brmerge.not, label %sqlite3_result_int64.exit.thread155, label %sqlite3_result_int64.exit

sqlite3_result_int64.exit.thread155:              ; preds = %bb.ad
  %i.bl = add nsw i32 %.0112, -1
  %i.bm = add i32 %i.am, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.af

sqlite3_result_int64.exit.thread:                 ; preds = %bb.y, %bb.v, %bb.x, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %sqlite3_result_null.exit

sqlite3_result_int64.exit.thread152:              ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %bb.bj

sqlite3_result_int64.exit:                        ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %i.bk, label %bb.af, label %sqlite3_result_int64.exit._crit_edge

sqlite3_result_int64.exit._crit_edge:             ; preds = %sqlite3_result_int64.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !296
  br label %bb.bj

bb.ae:                                            ; preds = %bb.c, %bb.c
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !27  ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.bj, label %bb.af

bb.af:                                            ; preds = %sqlite3_result_int64.exit, %sqlite3_result_int64.exit.thread155, %bb.ae
  %i.bp = phi i32 [ %i.am, %sqlite3_result_int64.exit ], [ %i.bn, %bb.ae ], [ %i.bm, %sqlite3_result_int64.exit.thread155 ]
  %.3 = phi i32 [ %.0112, %sqlite3_result_int64.exit ], [ %i.h, %bb.ae ], [ %i.bl, %sqlite3_result_int64.exit.thread155 ]
  %i.bq = load ptr, ptr %0, align 8, !tbaa !3128  ; 2 uses
  %i.br = add i32 %.3, %1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs
  %i.bu = sext i32 %i.bp to i64                   ; 3 uses
  %.not.i142 = icmp eq ptr %i.bq, null
  br i1 %.not.i142, label %sqlite3DbStrNDup.exit144.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = add nsw i64 %i.bu, 1
  %i.bw = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.g, i64 noundef %i.bv), !inline_history !2286 ; 5 uses
  %.not9.i143 = icmp eq ptr %i.bw, null
  br i1 %.not9.i143, label %sqlite3DbStrNDup.exit144.thread, label %sqlite3DbFree.exit146

sqlite3DbFree.exit146:                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull readonly align 1 %i.bt, i64 range(i64 -2147483648, 4294967296) %i.bu, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !231
  %i.by = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.c)
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.g, ptr noundef nonnull %i.bw)
  %i.bz = icmp slt i32 %i.by, 1
  %.pre170 = load ptr, ptr %2, align 8, !tbaa !296 ; 4 uses
  br i1 %i.bz, label %bb.bj, label %bb.ah

bb.ah:                                            ; preds = %sqlite3DbFree.exit146
  %i.ca = load double, ptr %i.c, align 8, !tbaa !330 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre170, i64 20 ; 3 uses
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !166
  %i.cd = and i16 %i.cc, -28672
  %.not.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %.pre170)
  br label %sqlite3VdbeMemSetNull.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  store i16 1, ptr %i.cb, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetNull.exit.i.i

sqlite3VdbeMemSetNull.exit.i.i:                   ; preds = %bb.aj, %bb.ai
  %i.ce = fcmp ord double %i.ca, 0.000000e+00
  br i1 %i.ce, label %bb.ak, label %sqlite3_result_null.exit

bb.ak:                                            ; preds = %sqlite3VdbeMemSetNull.exit.i.i
  store double %i.ca, ptr %.pre170, align 8, !tbaa !231
  store i16 8, ptr %i.cb, align 4, !tbaa !166
  br label %sqlite3_result_null.exit

bb.al:                                            ; preds = %bb.c, %bb.c
  %i.cf = add i32 %i.h, %1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cg
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !27
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %2, ptr noundef %i.ch, i32 noundef %i.ci, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3058
  br label %sqlite3_result_null.exit

bb.am:                                            ; preds = %bb.c, %bb.c
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !27  ; 4 uses
  %i.ck = add i32 %i.h, %1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cl
  %i.cn = zext i32 %i.cj to i64
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %.not.i147 = icmp eq ptr %i.g, null
  br i1 %.not.i147, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.g, i64 noundef %i.co), !inline_history !617
  br label %sqlite3DbMallocRaw.exit

bb.ao:                                            ; preds = %bb.am
  %i.cq = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.co), !inline_history !617
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.an, %bb.ao
  %.0.i = phi ptr [ %i.cp, %bb.an ], [ %i.cq, %bb.ao ] ; 11 uses
  %i.cr = icmp eq ptr %.0.i, null
  br i1 %i.cr, label %sqlite3DbStrNDup.exit144.thread, label %.preheader

.preheader:                                       ; preds = %sqlite3DbMallocRaw.exit
  %.not169 = icmp eq i32 %i.cj, 0
  br i1 %.not169, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.az
  %.0168 = phi i32 [ %.2, %bb.az ], [ 0, %.preheader ] ; 14 uses
  %.0109167 = phi i32 [ %i.fi, %bb.az ], [ 0, %.preheader ] ; 4 uses
  %i.cs = zext i32 %.0109167 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !231 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 92
  br i1 %i.cv, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.cw = sub nuw i32 %i.cj, %.0109167
  %i.cx = call fastcc i32 @jsonUnescapeOneChar(ptr noundef nonnull %i.ct, i32 noundef %i.cw, ptr noundef %i.d)
  %i.cy = load i32, ptr %i.d, align 4, !tbaa !27  ; 14 uses
  %i.cz = icmp ult i32 %i.cy, 128
  br i1 %i.cz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.da = trunc nuw nsw i32 %i.cy to i8
  br label %.sink.split

bb.ar:                                            ; preds = %bb.ap
  %i.db = icmp ult i32 %i.cy, 2048
  br i1 %i.db, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dc = lshr i32 %i.cy, 6
  %i.dd = trunc nuw nsw i32 %i.dc to i8
  %i.de = or disjoint i8 %i.dd, -64
  %i.df = add i32 %.0168, 1
  %i.dg = zext i32 %.0168 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.dg
  store i8 %i.de, ptr %i.dh, align 1, !tbaa !231
  %i.di = trunc i32 %i.cy to i8
  %i.dj = and i8 %i.di, 63
  %i.dk = or disjoint i8 %i.dj, -128
  br label %.sink.split

bb.at:                                            ; preds = %bb.ar
  %i.dl = icmp ult i32 %i.cy, 65536
  br i1 %i.dl, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dm = lshr i32 %i.cy, 12
  %i.dn = trunc nuw nsw i32 %i.dm to i8
  %i.do = or disjoint i8 %i.dn, -32
  %i.dp = add i32 %.0168, 1
  %i.dq = zext i32 %.0168 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.dq
  store i8 %i.do, ptr %i.dr, align 1, !tbaa !231
  %i.ds = lshr i32 %i.cy, 6
  %i.dt = trunc i32 %i.ds to i8
  %i.du = and i8 %i.dt, 63
  %i.dv = or disjoint i8 %i.du, -128
  %i.dw = add i32 %.0168, 2
  %i.dx = zext i32 %i.dp to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.dx
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !231
  %i.dz = trunc i32 %i.cy to i8
  %i.ea = and i8 %i.dz, 63
  %i.eb = or disjoint i8 %i.ea, -128
  br label %.sink.split

bb.av:                                            ; preds = %bb.at
  %i.ec = icmp eq i32 %i.cy, 629145
  br i1 %i.ec, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ed = lshr i32 %i.cy, 18
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = or i8 %i.ee, -16
  %i.eg = add i32 %.0168, 1
  %i.eh = zext i32 %.0168 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.eh
  store i8 %i.ef, ptr %i.ei, align 1, !tbaa !231
  %i.ej = lshr i32 %i.cy, 12
  %i.ek = trunc i32 %i.ej to i8
  %i.el = and i8 %i.ek, 63
  %i.em = or disjoint i8 %i.el, -128
  %i.en = add i32 %.0168, 2
  %i.eo = zext i32 %i.eg to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.eo
  store i8 %i.em, ptr %i.ep, align 1, !tbaa !231
  %i.eq = lshr i32 %i.cy, 6
  %i.er = trunc i32 %i.eq to i8
  %i.es = and i8 %i.er, 63
  %i.et = or disjoint i8 %i.es, -128
  %i.eu = add i32 %.0168, 3
  %i.ev = zext i32 %i.en to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ev
  store i8 %i.et, ptr %i.ew, align 1, !tbaa !231
  %i.ex = trunc i32 %i.cy to i8
  %i.ey = and i8 %i.ex, 63
  %i.ez = or disjoint i8 %i.ey, -128
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aq, %bb.au, %bb.aw, %bb.as
  %.sink192 = phi i32 [ 2, %bb.as ], [ 4, %bb.aw ], [ 3, %bb.au ], [ 1, %bb.aq ]
  %.sink191 = phi i32 [ %i.df, %bb.as ], [ %i.eu, %bb.aw ], [ %i.dw, %bb.au ], [ %.0168, %bb.aq ]
  %.sink = phi i8 [ %i.dk, %bb.as ], [ %i.ez, %bb.aw ], [ %i.eb, %bb.au ], [ %i.da, %bb.aq ]
  %i.fa = add i32 %.0168, %.sink192
  %i.fb = zext i32 %.sink191 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.fb
  store i8 %.sink, ptr %i.fc, align 1, !tbaa !231
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %bb.av
  %.1 = phi i32 [ %.0168, %bb.av ], [ %i.fa, %.sink.split ]
  %i.fd = add i32 %.0109167, -1
  %i.fe = add i32 %i.fd, %i.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  br label %bb.az

bb.ay:                                            ; preds = %.lr.ph
  %i.ff = add i32 %.0168, 1
  %i.fg = zext i32 %.0168 to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.fg
  store i8 %i.cu, ptr %i.fh, align 1, !tbaa !231
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1110 = phi i32 [ %i.fe, %bb.ax ], [ %.0109167, %bb.ay ]
  %.2 = phi i32 [ %.1, %bb.ax ], [ %i.ff, %bb.ay ] ; 2 uses
  %i.fi = add i32 %.1110, 1                       ; 2 uses
  %i.fj = icmp ult i32 %i.fi, %i.cj
  br i1 %i.fj, label %.lr.ph, label %.thread, !llvm.loop !3179

.thread:                                          ; preds = %bb.az, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %.2, %bb.az ] ; 2 uses
  %i.fk = zext i32 %.0.lcssa to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.fk
  store i8 0, ptr %i.fl, align 1, !tbaa !231
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %2, ptr noundef nonnull %.0.i, i32 noundef %.0.lcssa, i8 noundef zeroext 1, ptr noundef nonnull @sqlite3RowSetClear), !inline_history !3058
  br label %sqlite3_result_null.exit

bb.ba:                                            ; preds = %bb.c, %bb.c
  %trunc = trunc nuw i32 %3 to i8
  switch i8 %trunc, label %jsonReturnTextJsonFromBlob.exit [
    i8 0, label %bb.bb
    i8 2, label %.thread162
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !234
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !853
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = and i64 %i.fq, 16
  %.not = icmp eq i64 %i.fr, 0
  br i1 %.not, label %jsonReturnTextJsonFromBlob.exit, label %.thread162

.thread162:                                       ; preds = %bb.ba, %bb.bb
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !27
  %i.ft = add i32 %i.fs, %i.h
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %2, ptr noundef nonnull %i.n, i32 noundef %i.ft, i8 noundef zeroext 0, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3119
  br label %sqlite3_result_null.exit

jsonReturnTextJsonFromBlob.exit:                  ; preds = %bb.ba, %bb.bb
  %i.fu = load i32, ptr %i.a, align 4, !tbaa !27
  %i.fv = add i32 %i.fu, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, i8 0, i64 64, i1 false)
  store ptr %i.n, ptr %4, align 8, !tbaa !3128
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !3130
  store ptr %2, ptr %5, align 8, !tbaa !3165
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 0, ptr %i.fx, align 1, !tbaa !3164
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !3079
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 100, ptr %i.ga, align 8, !tbaa !3080
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.gb, align 8, !tbaa !3097
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.gc, align 8, !tbaa !3081
  %i.gd = call fastcc i32 @jsonTranslateBlobToText(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %5), !inline_history !3180 ; 0 uses
  call fastcc void @jsonReturnString(ptr noundef %5, ptr noundef null, ptr noundef null), !inline_history !3180
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %sqlite3_result_null.exit

sqlite3DbStrNDup.exit144.thread:                  ; preds = %bb.af, %bb.ag, %sqlite3DbMallocRaw.exit, %sqlite3_result_int64.exit.thread158
  %i.ge = load ptr, ptr %2, align 8, !tbaa !296   ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 20 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 4, !tbaa !166
  %i.gh = and i16 %i.gg, -28672
  %.not.i.i148 = icmp eq i16 %i.gh, 0
  br i1 %.not.i.i148, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %sqlite3DbStrNDup.exit144.thread
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.ge), !inline_history !828
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !296
  br label %sqlite3VdbeMemSetNull.exit.i

bb.bd:                                            ; preds = %sqlite3DbStrNDup.exit144.thread
  store i16 1, ptr %i.gf, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.bd, %bb.bc
  %i.gi = phi ptr [ %.pre.i, %bb.bc ], [ %i.ge, %bb.bd ]
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 7, ptr %i.gj, align 4, !tbaa !27
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !161 ; 7 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 103 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !563
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.be, label %sqlite3_result_null.exit
end_hunk_11
begin_hunk_12_@jsonReturnString:bb.a

jsonStringReset.exit:                             ; preds = %sqlite3_result_error_nomem.exit, %bb.y, %sqlite3_mutex_enter.exit.i.i.i, %bb.ac, %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !3079
  store i64 100, ptr %i.c, align 8, !tbaa !3080
  store i64 0, ptr %i.a, align 8, !tbaa !3097
  store i8 1, ptr %i.cf, align 8, !tbaa !3081
  br label %bb.ae

bb.ae:                                            ; preds = %bb.l, %jsonStringReset.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendRawNZ(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3097 ; 2 uses
  %i.d = add i64 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3080
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @jsonStringExpandAndAppend(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3079
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !3097
  %i.k = add i64 %i.j, %i.a
  store i64 %i.k, ptr %i.b, align 8, !tbaa !3097
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendString(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3097 ; 2 uses
  %i.e = add nuw nsw i64 %i.b, 2
  %i.f = add i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3080
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %2, 2
  %i.j = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.i)
  %.not84 = icmp eq i32 %i.j, 0
  br i1 %.not84, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.c, align 8, !tbaa !3097
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.n = add i64 %i.k, 1
  store i64 %i.n, ptr %i.c, align 8, !tbaa !3097
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 34, ptr %i.o, align 1, !tbaa !231
  br label %bb.e

bb.e:                                             ; preds = %jsonAppendControlChar.exit, %bb.d
  %.079 = phi i32 [ %2, %bb.d ], [ %i.eo, %jsonAppendControlChar.exit ] ; 8 uses
  %.0 = phi ptr [ %1, %bb.d ], [ %i.en, %jsonAppendControlChar.exit ] ; 9 uses
  %.not85100 = icmp ugt i32 %.079, 3
  br i1 %.not85100, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.e
  %.077.lcssa = phi i32 [ 0, %bb.e ], [ %i.ay, %bb.j ] ; 3 uses
  %i.p = icmp ult i32 %.077.lcssa, %.079
  br i1 %i.p, label %.lr.ph103.preheader, label %.critedge

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.q = zext i32 %.077.lcssa to i64
  %i.r = zext i32 %.079 to i64
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.q, %.lr.ph103.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !231
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !231
  %.not90 = icmp eq i8 %i.w, 0
  br i1 %.not90, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph103, !llvm.loop !3190

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %.077101 = phi i32 [ %i.ay, %bb.j ], [ 0, %bb.e ] ; 6 uses
  %i.x = or disjoint i32 %.077101, 3              ; 2 uses
  %i.y = zext i32 %.077101 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !231
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !231
  %.not86 = icmp eq i8 %i.ad, 0
  br i1 %.not86, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ae = or disjoint i32 %.077101, 1             ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !231
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !231
  %.not87 = icmp eq i8 %i.ak, 0
  br i1 %.not87, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = or disjoint i32 %.077101, 2             ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !231
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !231
  %.not88 = icmp eq i8 %i.ar, 0
  br i1 %.not88, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = zext i32 %i.x to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !231
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !231
  %.not89 = icmp eq i8 %i.ax, 0
  br i1 %.not89, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add i32 %.077101, 4                     ; 3 uses
  %i.az = or disjoint i32 %i.ay, 3
  %.not85 = icmp ult i32 %i.az, %.079
  br i1 %.not85, label %.lr.ph, label %.preheader

.critedge.loopexit:                               ; preds = %.lr.ph103
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph, %.critedge.loopexit, %.preheader
  %.2 = phi i32 [ %i.ba, %.critedge.loopexit ], [ %.077.lcssa, %.preheader ], [ %i.ae, %bb.g ], [ %i.al, %bb.h ], [ %i.x, %bb.i ], [ %.077101, %.lr.ph ] ; 5 uses
  %.not91 = icmp ult i32 %.2, %.079
  br i1 %.not91, label %bb.l, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %bb.f
  %.2118 = phi i32 [ %.079, %bb.f ], [ %.2, %.critedge ] ; 2 uses
  %.not95 = icmp eq i32 %.2118, 0
  %.pre112 = load i64, ptr %i.c, align 8, !tbaa !3097 ; 2 uses
  br i1 %.not95, label %bb.x, label %bb.k

bb.k:                                             ; preds = %.critedge.thread
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.pre112
  %i.bd = zext i32 %.2118 to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr nonnull align 1 %.0, i64 %i.bd, i1 false)
  %i.be = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.bf = add i64 %i.be, %i.bd
  br label %bb.x

bb.l:                                             ; preds = %.critedge
  %.not92 = icmp eq i32 %.2, 0
  br i1 %.not92, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.bj = zext i32 %.2 to i64                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %.0, i64 %i.bj, i1 false)
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.bl = add i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !3097
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bj
  %i.bn = sub nuw i32 %.079, %.2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.180 = phi i32 [ %i.bn, %bb.m ], [ %.079, %bb.l ] ; 5 uses
  %.1 = phi ptr [ %i.bm, %bb.m ], [ %.0, %bb.l ]  ; 2 uses
  %i.bo = load i8, ptr %.1, align 1, !tbaa !231   ; 4 uses
  switch i8 %i.bo, label %bb.s [
    i8 92, label %bb.o
    i8 34, label %bb.o
    i8 39, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !3097 ; 2 uses
  %i.bq = zext i32 %.180 to i64
  %i.br = add nuw nsw i64 %i.bq, 3
  %i.bs = add i64 %i.br, %i.bp
  %i.bt = load i64, ptr %i.g, align 8, !tbaa !3080
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = add i32 %.180, 3
  %i.bw = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.bv)
  %.not94 = icmp eq i32 %i.bw, 0
  br i1 %.not94, label %._crit_edge113, label %.loopexit

._crit_edge113:                                   ; preds = %bb.p
  %.pre114 = load i64, ptr %i.c, align 8, !tbaa !3097
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge113, %bb.o
  %i.bx = phi i64 [ %.pre114, %._crit_edge113 ], [ %i.bp, %bb.o ] ; 2 uses
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.bz = add i64 %i.bx, 1
  store i64 %i.bz, ptr %i.c, align 8, !tbaa !3097
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 92, ptr %i.ca, align 1, !tbaa !231
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !3097 ; 2 uses
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !3097
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  store i8 %i.bo, ptr %i.ce, align 1, !tbaa !231
  br label %jsonAppendControlChar.exit

bb.r:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !3097 ; 2 uses
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.c, align 8, !tbaa !3097
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  store i8 39, ptr %i.ci, align 1, !tbaa !231
  br label %jsonAppendControlChar.exit

bb.s:                                             ; preds = %bb.n
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.ck = zext i32 %.180 to i64
  %i.cl = add nuw nsw i64 %i.ck, 7
  %i.cm = add i64 %i.cl, %i.cj
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !3080
  %i.co = icmp ugt i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cp = add i32 %.180, 7
  %i.cq = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.cp)
  %.not93 = icmp eq i32 %i.cq, 0
  br i1 %.not93, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cr = zext i8 %i.bo to i64                    ; 2 uses
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, 4294953215
  %.not.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr @jsonAppendControlChar.aSpecial, i64 %i.cr
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  store i8 92, ptr %i.cx, align 1, !tbaa !231
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !231
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.da = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 1
  store i8 %i.cy, ptr %i.dc, align 1, !tbaa !231
  %i.dd = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.de = add i64 %i.dd, 2
  store i64 %i.de, ptr %i.c, align 8, !tbaa !3097
  br label %jsonAppendControlChar.exit

bb.w:                                             ; preds = %bb.u
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 92, ptr %i.dh, align 1, !tbaa !231
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.dk = getelementptr i8, ptr %i.di, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  store i8 117, ptr %i.dl, align 1, !tbaa !231
  %i.dm = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.dn = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.do = getelementptr i8, ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 2
  store i8 48, ptr %i.dp, align 1, !tbaa !231
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 3
  store i8 48, ptr %i.dt, align 1, !tbaa !231
  %i.du = zext i8 %i.bo to i32                    ; 2 uses
  %i.dv = lshr i32 %i.du, 4
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !231
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.ea = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.eb = getelementptr i8, ptr %i.dz, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  store i8 %i.dy, ptr %i.ec, align 1, !tbaa !231
  %i.ed = and i32 %i.du, 15
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !231
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.ej = getelementptr i8, ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 5
  store i8 %i.eg, ptr %i.ek, align 1, !tbaa !231
  %i.el = load i64, ptr %i.c, align 8, !tbaa !3097
  %i.em = add i64 %i.el, 6
  store i64 %i.em, ptr %i.c, align 8, !tbaa !3097
  br label %jsonAppendControlChar.exit

jsonAppendControlChar.exit:                       ; preds = %bb.w, %bb.v, %bb.r, %bb.q
  %i.en = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.eo = add i32 %.180, -1
  br label %bb.e

bb.x:                                             ; preds = %.critedge.thread, %bb.k
  %i.ep = phi i64 [ %.pre112, %.critedge.thread ], [ %i.bf, %bb.k ] ; 2 uses
  %i.eq = load ptr, ptr %i.l, align 8, !tbaa !3079
  %i.er = add i64 %i.ep, 1
  store i64 %i.er, ptr %i.c, align 8, !tbaa !3097
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 34, ptr %i.es, align 1, !tbaa !231
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.p, %bb.c, %bb.a, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonStringTooDeep(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !3164
  %i.c = or i8 %i.b, 4
  store i8 %i.c, ptr %i.a, align 1, !tbaa !3164
  %i.d = load ptr, ptr %0, align 8, !tbaa !3165   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 1, ptr %i.e, align 4, !tbaa !27
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !296
  %i.g = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.f, ptr noundef nonnull @.str.645, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !838 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !3081
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.b, label %jsonStringReset.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3079
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2118 ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %i.m, -1
  store i64 %i.o, ptr %i.l, align 8, !tbaa !2118
  br label %jsonStringReset.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.r(ptr noundef nonnull %i.q) #58, !inline_history !3120
  br label %sqlite3_mutex_enter.exit.i.i.i
end_hunk_12
begin_hunk_13_@fixSelectCb:bb.a

bb.u:                                             ; preds = %sqlite3FindDbName.exit66
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !3398
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !3402
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !3403
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %i.cz, ptr noundef nonnull @.str.856, ptr noundef %i.db, ptr noundef %i.dd, ptr noundef nonnull %i.bo)
  br label %.loopexit

sqlite3DbFree.exit:                               ; preds = %sqlite3FindDbName.exit66
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.d, ptr noundef nonnull %i.bo)
  %i.de = load i16, ptr %i.bf, align 1
  %i.df = or i16 %i.de, 1024                      ; 2 uses
  store i16 %i.df, ptr %i.bf, align 1
  %i.dg = load i8, ptr %i.bj, align 1
  %i.dh = or i8 %i.dg, 2                          ; 2 uses
  store i8 %i.dh, ptr %i.bj, align 1
  br label %bb.v

bb.v:                                             ; preds = %sqlite3DbFree.exit, %bb.m, %bb.l
  %i.di = phi i8 [ %i.dh, %sqlite3DbFree.exit ], [ %i.bk, %bb.m ], [ %i.bk, %bb.l ]
  %i.dj = phi i16 [ %i.df, %sqlite3DbFree.exit ], [ %i.bg, %bb.m ], [ %i.bg, %bb.l ]
  %i.dk = load ptr, ptr %i.bb, align 8, !tbaa !3401
  %i.dl = getelementptr inbounds nuw i8, ptr %.080, i64 64
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !231
  %i.dm = or i16 %i.dj, 256
  store i16 %i.dm, ptr %i.bf, align 1
  %i.dn = or i8 %i.di, 1
  store i8 %i.dn, ptr %i.bj, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.k, %bb.j
  %i.do = getelementptr inbounds nuw [72 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 25
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = and i16 %i.dq, 2048
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.x, label %sqlite3WalkExpr.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !231 ; 2 uses
  %.not.i68 = icmp eq ptr %i.du, null
  br i1 %.not.i68, label %sqlite3WalkExpr.exit.thread, label %sqlite3WalkExpr.exit

sqlite3WalkExpr.exit:                             ; preds = %bb.x
  %i.dv = tail call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.du) #61, !inline_history !3663
  %.not49 = icmp eq i32 %i.dv, 0
  br i1 %.not49, label %sqlite3WalkExpr.exit.thread, label %.loopexit

sqlite3WalkExpr.exit.thread:                      ; preds = %bb.x, %bb.w, %sqlite3WalkExpr.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.080, i64 72
  %i.dx = load i32, ptr %i.at, align 8, !tbaa !27
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next, %i.dy
  br i1 %i.dz, label %bb.j, label %._crit_edge, !llvm.loop !4142

._crit_edge:                                      ; preds = %sqlite3WalkExpr.exit.thread, %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !2771 ; 3 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph82, label %.loopexit

bb.y:                                             ; preds = %.lr.ph82
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !2771 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !27
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next96, %i.eg
  br i1 %i.eh, label %.lr.ph82, label %.loopexit, !llvm.loop !4143

.lr.ph82:                                         ; preds = %.preheader, %bb.y
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.y ], [ 0, %.preheader ] ; 2 uses
  %i.ei = phi ptr [ %i.ee, %bb.y ], [ %i.eb, %.preheader ]
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %indvars.iv95
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !2776
  %i.em = tail call fastcc i32 @sqlite3WalkSelect(ptr noundef %0, ptr noundef %i.el)
  %.not46 = icmp eq i32 %i.em, 0
  br i1 %.not46, label %bb.y, label %.loopexit

.loopexit:                                        ; preds = %sqlite3WalkExpr.exit, %.lr.ph82, %bb.y, %.preheader, %._crit_edge, %sqlite3FindDbName.exit, %bb.u
  %.043 = phi i32 [ 0, %._crit_edge ], [ 2, %bb.u ], [ 0, %sqlite3FindDbName.exit ], [ 0, %.preheader ], [ 0, %bb.y ], [ 2, %.lr.ph82 ], [ 2, %sqlite3WalkExpr.exit ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3GenerateIndexKey(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef readonly captures(address) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !976  ; 7 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2455 ; 2 uses
  %.not54 = icmp eq ptr %i.d, null
  br i1 %.not54, label %bb.f, label %sqlite3ExprDup.exit.i

sqlite3ExprDup.exit.i:                            ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3024
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !3024
  store i32 %i.g, ptr %5, align 4, !tbaa !27
  %i.h = add nsw i32 %2, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !3744
  %i.j = load i32, ptr %5, align 4, !tbaa !27
  %i.k = load ptr, ptr %0, align 8, !tbaa !657    ; 3 uses
  %i.l = tail call fastcc ptr @exprDup(ptr noundef %i.k, ptr noundef readonly %i.d, i32 noundef 0, ptr noundef null), !inline_history !4144 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 103
  %i.n = load i8, ptr %i.m, align 1, !tbaa !563
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %sqlite3ExprDup.exit.i
  tail call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %i.l, i32 noundef %i.j, i32 noundef 16), !inline_history !4145
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3ExprDup.exit.i
  %.not.i9.i = icmp eq ptr %i.l, null
  br i1 %.not.i9.i, label %sqlite3ExprIfFalseDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.k, ptr noundef %i.l), !inline_history !4146
  br label %sqlite3ExprIfFalseDup.exit

sqlite3ExprIfFalseDup.exit:                       ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.i, align 4, !tbaa !3744
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 0, ptr %5, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %sqlite3ExprIfFalseDup.exit, %bb.f, %bb.a
  %.049 = phi ptr [ null, %sqlite3ExprIfFalseDup.exit ], [ %6, %bb.f ], [ %6, %bb.a ] ; 3 uses
  %.not55 = icmp eq i32 %4, 0
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.q = load i16, ptr %i.p, align 1
  %i.r = and i16 %i.q, 8
  %.not56 = icmp eq i16 %i.r, 0
  br i1 %.not56, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ 96, %bb.i ], [ 94, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.in = load i16, ptr %i.s, align 2, !tbaa !338  ; 4 uses
  %i.t = zext i16 %.in to i32                     ; 8 uses
  %i.u = icmp eq i16 %.in, 1                      ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !3539  ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !944
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !944
  br label %sqlite3GetTempRange.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = add i8 %i.w, -1                         ; 2 uses
  store i8 %i.ac, ptr %i.v, align 1, !tbaa !3539
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  br label %sqlite3GetTempRange.exit

bb.n:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3540 ; 2 uses
  %.not.i = icmp slt i32 %i.ah, %i.t
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !3597 ; 2 uses
  %i.ak = add nsw i32 %i.aj, %i.t
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !3597
  %i.al = sub nuw nsw i32 %i.ah, %i.t
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !3540
  br label %sqlite3GetTempRange.exit

bb.p:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !944 ; 2 uses
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = add nsw i32 %i.an, %i.t
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !944
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.l, %bb.m, %bb.o, %bb.p
  %.014.i = phi i32 [ %i.ao, %bb.p ], [ %i.aj, %bb.o ], [ %i.aa, %bb.l ], [ %i.af, %bb.m ] ; 8 uses
  %.not57 = icmp eq ptr %.049, null
  br i1 %.not57, label %bb.t, label %bb.q

bb.q:                                             ; preds = %sqlite3GetTempRange.exit
  %.not58 = icmp eq i32 %.014.i, %7
  br i1 %.not58, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %.049, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2455
  %.not59 = icmp eq ptr %i.ar, null
  br i1 %.not59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %sqlite3GetTempRange.exit
  %.1 = phi ptr [ null, %bb.s ], [ %.049, %bb.r ], [ null, %sqlite3GetTempRange.exit ] ; 2 uses
  %.not70 = icmp eq i16 %.in, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %.not61 = icmp eq ptr %.1, null
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = add nsw i32 %2, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ba = zext i32 %.014.i to i64
  %wide.trip.count = zext i16 %.in to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %sqlite3VdbeDeletePriorOpcode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeDeletePriorOpcode.exit ] ; 7 uses
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !927 ; 2 uses
  br i1 %.not61, label %._crit_edge72, label %bb.v

._crit_edge72:                                    ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv
  %.pre73 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !338
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !927
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !338 ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !338 ; 2 uses
  %i.bg = icmp ne i16 %i.bd, %i.bf
  %.not62 = icmp eq i16 %i.bd, -2
  %or.cond = or i1 %.not62, %i.bg
  br i1 %or.cond, label %bb.w, label %sqlite3VdbeDeletePriorOpcode.exit

bb.w:                                             ; preds = %._crit_edge72, %bb.v
  %i.bh = phi i16 [ %.pre73, %._crit_edge72 ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bi = add nuw i64 %indvars.iv, %i.ba          ; 2 uses
  %i.bj = icmp eq i16 %i.bh, -2
  br i1 %i.bj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3744
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !2457
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !3229 ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !657   ; 3 uses
  %.not.i14.i = icmp eq ptr %i.bn, null
  br i1 %.not.i14.i, label %sqlite3ExprDup.exit.i63, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = tail call fastcc ptr @exprDup(ptr noundef %i.bo, ptr noundef readonly %i.bn, i32 noundef 0, ptr noundef null), !inline_history !3745
  br label %sqlite3ExprDup.exit.i63

sqlite3ExprDup.exit.i63:                          ; preds = %bb.y, %bb.x
  %i.bq = phi ptr [ %i.bp, %bb.y ], [ null, %bb.x ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 103
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !563
  %.not.i.i64 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i64, label %bb.z, label %sqlite3ExprCodeCopy.exit.i

bb.z:                                             ; preds = %sqlite3ExprDup.exit.i63
  %i.bt = trunc i64 %i.bi to i32
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.bq, i32 noundef %i.bt), !inline_history !3746
  br label %sqlite3ExprCodeCopy.exit.i

sqlite3ExprCodeCopy.exit.i:                       ; preds = %bb.z, %sqlite3ExprDup.exit.i63
  %.not.i15.i = icmp eq ptr %i.bq, null
  br i1 %.not.i15.i, label %sqlite3ExprDelete.exit.i, label %bb.aa

bb.aa:                                            ; preds = %sqlite3ExprCodeCopy.exit.i
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.bo, ptr noundef %i.bq), !inline_history !3747
  br label %sqlite3ExprDelete.exit.i

sqlite3ExprDelete.exit.i:                         ; preds = %bb.aa, %sqlite3ExprCodeCopy.exit.i
  store i32 0, ptr %i.aw, align 4, !tbaa !3744
  br label %sqlite3ExprCodeLoadIndexColumn.exit

bb.ab:                                            ; preds = %bb.w
  %i.bu = sext i16 %i.bh to i32
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !976
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !1100
  %i.bx = trunc i64 %i.bi to i32
  tail call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.bv, ptr noundef %i.bw, i32 noundef %2, i32 noundef %i.bu, i32 noundef %i.bx), !inline_history !3748
  br label %sqlite3ExprCodeLoadIndexColumn.exit

sqlite3ExprCodeLoadIndexColumn.exit:              ; preds = %sqlite3ExprDelete.exit.i, %bb.ab
  %i.by = load ptr, ptr %i.at, align 8, !tbaa !927
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !338
  %i.cb = icmp sgt i16 %i.ca, -1
  br i1 %i.cb, label %bb.ac, label %sqlite3VdbeDeletePriorOpcode.exit

bb.ac:                                            ; preds = %sqlite3ExprCodeLoadIndexColumn.exit
  %i.cc = load i32, ptr %i.ay, align 8, !tbaa !189 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.ad, label %sqlite3VdbeDeletePriorOpcode.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !188
  %i.cf = zext nneg i32 %i.cc to i64
  %i.cg = getelementptr [32 x i8], ptr %i.ce, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -32    ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !576
  %i.cj = icmp eq i8 %i.ci, 89
  br i1 %i.cj, label %bb.ae, label %sqlite3VdbeDeletePriorOpcode.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 103
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !563
  %.not.i.i65 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i65, label %bb.af, label %sqlite3VdbeDeletePriorOpcode.exit

bb.af:                                            ; preds = %bb.ae
  %i.cn = getelementptr i8, ptr %i.cg, i64 -31    ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !936
  %i.cp = sext i8 %i.co to i32
  %i.cq = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !231
  tail call fastcc void @freeP4(ptr noundef nonnull %i.ck, i32 noundef %i.cp, ptr noundef %i.cr)
  store i8 0, ptr %i.cn, align 1, !tbaa !936
  store ptr null, ptr %i.cq, align 8, !tbaa !231
  store i8 -67, ptr %i.ch, align 8, !tbaa !576
  br label %sqlite3VdbeDeletePriorOpcode.exit

sqlite3VdbeDeletePriorOpcode.exit:                ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.v, %sqlite3ExprCodeLoadIndexColumn.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.u, !llvm.loop !4147

._crit_edge:                                      ; preds = %sqlite3VdbeDeletePriorOpcode.exit, %bb.t
  %.not60 = icmp eq i32 %3, 0
  br i1 %.not60, label %sqlite3VdbeAddOp3.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !189 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !934
  %.not.i66 = icmp sgt i32 %i.cv, %i.ct
  br i1 %.not.i66, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 99, i32 noundef %.014.i, i32 noundef %i.t, i32 noundef %3), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cx = add nsw i32 %i.ct, 1
  store i32 %i.cx, ptr %i.cs, align 8, !tbaa !189
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !188
  %i.da = sext i32 %i.ct to i64
  %i.db = getelementptr inbounds [32 x i8], ptr %i.cz, i64 %i.da ; 7 uses
  store i8 99, ptr %i.db, align 8, !tbaa !576
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store i16 0, ptr %i.dc, align 2, !tbaa !577
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.014.i, ptr %i.dd, align 4, !tbaa !572
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %i.t, ptr %i.de, align 8, !tbaa !574
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 %3, ptr %i.df, align 4, !tbaa !575
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 1
end_hunk_13
begin_hunk_14_@fromClauseTermCanBeCoroutine:bb.a
  br i1 %.not27.i, label %.split.i, label %sqlite3_stricmp.exit.thread31.i, !llvm.loop !4197

.split.i:                                         ; preds = %bb.l, %sqlite3_stricmp.exit.thread.i
  %i.bo = trunc nsw i64 %indvars.iv.next.i to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !393
  %i.br = and i32 %i.bq, 16777216
  %.not28.not.i = icmp eq i32 %i.br, 0
  br i1 %.not28.not.i, label %isSelfJoinView.exit, label %.outer.i

sqlite3_stricmp.exit.thread31.i:                  ; preds = %bb.j, %bb.l, %bb.h, %bb.g, %bb.f, %.lr.ph.i
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.u, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %.outer.i, %sqlite3_stricmp.exit.thread31.i, %bb.e
  %i.bs = icmp eq i32 %2, 0
  br i1 %i.bs, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.loopexit
  %i.bt = icmp eq i32 %i.u, 1
  br i1 %i.bt, label %isSelfJoinView.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !3278
  %i.bw = and i8 %i.bv, 2
  %.not36 = icmp eq i8 %i.bw, 0
  br i1 %.not36, label %bb.o, label %isSelfJoinView.exit

bb.o:                                             ; preds = %bb.n
  %i.bx = lshr i32 %3, 28
  %.lobit = and i32 %i.bx, 1
  %. = xor i32 %.lobit, 1
  br label %isSelfJoinView.exit

bb.p:                                             ; preds = %.loopexit
  %i.by = and i32 %3, 268435456
  %.not33 = icmp eq i32 %i.by, 0
  br i1 %.not33, label %.preheader, label %isSelfJoinView.exit

.preheader:                                       ; preds = %bb.p, %bb.r
  %.026 = phi i32 [ %i.cd, %bb.r ], [ %2, %bb.p ] ; 2 uses
  %.024 = phi ptr [ %i.ce, %bb.r ], [ %i.c, %bb.p ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.024, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !3278
  %i.cb = and i8 %i.ca, 34
  %.not34 = icmp eq i8 %i.cb, 0
  br i1 %.not34, label %bb.q, label %isSelfJoinView.exit

bb.q:                                             ; preds = %.preheader
  %i.cc = icmp eq i32 %.026, 0
  br i1 %i.cc, label %isSelfJoinView.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = add nsw i32 %.026, -1
  %i.ce = getelementptr inbounds i8, ptr %.024, i64 -72
  %i.cf = getelementptr inbounds i8, ptr %.024, i64 -47
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = and i16 %i.cg, 4
  %.not35 = icmp eq i16 %i.ch, 0
  br i1 %.not35, label %.preheader, label %isSelfJoinView.exit

isSelfJoinView.exit:                              ; preds = %.split.i, %bb.q, %bb.r, %.preheader, %bb.p, %bb.o, %bb.n, %bb.m, %bb.d, %.critedge, %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %.critedge ], [ 0, %bb.d ], [ 1, %bb.q ], [ 1, %bb.m ], [ %., %bb.o ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %bb.p ], [ 0, %.preheader ], [ 0, %bb.r ], [ 0, %.split.i ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @isSelfJoinView(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483647, -2147483648) %2, i32 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !390  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !393
  %i.f = and i32 %i.e, 16777216
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.outer

.outer:                                           ; preds = %.preheader, %.split
  %.021.ph = phi i32 [ %2, %.preheader ], [ %i.at, %.split ] ; 2 uses
  %i.j = icmp slt i32 %.021.ph, %3
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.outer
  %i.k = sext i32 %.021.ph to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sqlite3_stricmp.exit.thread31
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %sqlite3_stricmp.exit.thread31 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.l = getelementptr inbounds [72 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, 68
  %or.cond = icmp eq i16 %i.o, 4
  br i1 %or.cond, label %bb.b, label %sqlite3_stricmp.exit.thread31, !llvm.loop !4197

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !389  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %sqlite3_stricmp.exit.thread31, label %bb.c, !llvm.loop !4197

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2745
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !908  ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !2745
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !908
  %.not25 = icmp eq ptr %i.u, %i.x
  br i1 %.not25, label %bb.d, label %sqlite3_stricmp.exit.thread31, !llvm.loop !4197

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %1, align 8, !tbaa !389    ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %sqlite3_stricmp.exit.thread31, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.g
  %.013.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.p, %bb.d ] ; 2 uses
  %.012.i.i = phi ptr [ %i.al, %bb.g ], [ %i.y, %bb.d ] ; 2 uses
  %i.aa = load i8, ptr %.013.i.i, align 1, !tbaa !231 ; 3 uses
  %i.ab = load i8, ptr %.012.i.i, align 1, !tbaa !231 ; 2 uses
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.ad = icmp eq i8 %i.aa, 0
  br i1 %i.ad, label %sqlite3_stricmp.exit.thread, label %bb.g

bb.f:                                             ; preds = %.preheader.i
  %i.ae = zext i8 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !231
  %i.ah = zext i8 %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !231
  %.not.i.i = icmp eq i8 %i.ag, %i.aj
  br i1 %.not.i.i, label %bb.g, label %sqlite3_stricmp.exit.thread31

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i

sqlite3_stricmp.exit.thread:                      ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !231
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !390 ; 2 uses
  %i.ap = icmp eq ptr %i.u, null
  br i1 %i.ap, label %bb.h, label %.split

bb.h:                                             ; preds = %sqlite3_stricmp.exit.thread
  %i.aq = load i32, ptr %i.i, align 8, !tbaa !397
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !397
  %.not27 = icmp eq i32 %i.aq, %i.as
  br i1 %.not27, label %.split, label %sqlite3_stricmp.exit.thread31, !llvm.loop !4197

.split:                                           ; preds = %bb.h, %sqlite3_stricmp.exit.thread
  %i.at = trunc nsw i64 %indvars.iv.next to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !393
  %i.aw = and i32 %i.av, 16777216
  %.not28.not = icmp eq i32 %i.aw, 0
  br i1 %.not28.not, label %.loopexit, label %.outer

sqlite3_stricmp.exit.thread31:                    ; preds = %bb.f, %bb.d, %bb.h, %bb.c, %bb.b, %.lr.ph
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.outer, %.split, %sqlite3_stricmp.exit.thread31, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %sqlite3_stricmp.exit.thread31 ], [ %i.l, %.split ], [ null, %.outer ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3KeyInfoFromExprList(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657
  %i.b = load i32, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.c = sub nsw i32 %i.b, %2
  %i.d = add nsw i32 %3, 1
  %i.e = tail call fastcc ptr @sqlite3KeyInfoAlloc(ptr noundef %i.a, i32 noundef %i.c, i32 noundef %i.d) ; 4 uses
  %.not = icmp ne ptr %i.e, null
  %i.f = icmp slt i32 %2, %i.b
  %or.cond = and i1 %.not, %i.f
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = zext nneg i32 %2 to i64                  ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sqlite3ExprNNCollSeq.exit
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %sqlite3ExprNNCollSeq.exit ] ; 2 uses
  %.02325 = phi ptr [ %i.i, %.lr.ph ], [ %i.x, %sqlite3ExprNNCollSeq.exit ] ; 3 uses
  %i.l = load ptr, ptr %.02325, align 8, !tbaa !3229
  %i.m = tail call fastcc ptr @sqlite3ExprCollSeq(ptr noundef nonnull %0, ptr noundef readonly %i.l), !inline_history !4198 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %sqlite3ExprNNCollSeq.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !657
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1320
  br label %sqlite3ExprNNCollSeq.exit

sqlite3ExprNNCollSeq.exit:                        ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ]
  %i.r = sub nuw nsw i64 %indvars.iv, %i.h        ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  store ptr %.0.i, ptr %i.s, align 8, !tbaa !2309
  %i.t = getelementptr inbounds nuw i8, ptr %.02325, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !3279
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  store i8 %i.u, ptr %i.w, align 1, !tbaa !231
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02325, i64 24
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !4199

.loopexit:                                        ; preds = %sqlite3ExprNNCollSeq.exit, %bb.a
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc void @computeLimitRegisters(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2770 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3515
  %.not = icmp ne i32 %i.e, 0
  %.not40 = icmp eq ptr %i.c, null
  %or.cond = select i1 %.not, i1 true, i1 %.not40
  br i1 %or.cond, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !944
  %i.h = add nsw i32 %i.g, 1                      ; 11 uses
  store i32 %i.h, ptr %i.f, align 4, !tbaa !944
  store i32 %i.h, ptr %i.d, align 8, !tbaa !3515
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !976  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %sqlite3GetVdbe.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3339
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !657
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1351
  %i.q = and i32 %i.p, 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.t = load i16, ptr %i.s, align 1
  %i.u = or i16 %i.t, 128
  store i16 %i.u, ptr %i.s, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.v = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !3340
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.b, %bb.f
  %.0.i = phi ptr [ %i.v, %bb.f ], [ %i.j, %bb.b ] ; 22 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !376
  %i.y = call fastcc i32 @sqlite3ExprIsInteger(ptr noundef %i.x, ptr noundef %i.a, ptr noundef nonnull %0)
  %.not41 = icmp eq i32 %i.y, 0
  br i1 %.not41, label %bb.p, label %bb.g

bb.g:                                             ; preds = %sqlite3GetVdbe.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !27   ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !189 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !934
  %.not.i.i = icmp sgt i32 %i.ad, %i.ab
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 73, i32 noundef %i.z, i32 noundef %i.h, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.i:                                             ; preds = %bb.g
  %i.af = add nsw i32 %i.ab, 1
  store i32 %i.af, ptr %i.aa, align 8, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !188
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %i.ai ; 6 uses
  store i8 73, ptr %i.aj, align 8, !tbaa !576
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 0, ptr %i.ak, align 2, !tbaa !577
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.z, ptr %i.al, align 4, !tbaa !572
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.h, ptr %i.am, align 8, !tbaa !574
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.an, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.h, %bb.i
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.927)
  %i.ap = icmp eq i32 %i.z, 0
  br i1 %i.ap, label %bb.j, label %bb.m

bb.j:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !189 ; 3 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !934
  %.not.i.i43 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not.i.i43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 9, i32 noundef 0, i32 noundef %2, i32 noundef 0), !inline_history !3336 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.l:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.aq, 1
  store i32 %i.at, ptr %i.aa, align 8, !tbaa !189
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !188
  %i.aw = sext i32 %i.aq to i64
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.av, i64 %i.aw ; 6 uses
  store i8 9, ptr %i.ax, align 8, !tbaa !576
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 0, ptr %i.ay, align 2, !tbaa !577
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !572
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %2, ptr %i.ba, align 8, !tbaa !574
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 0, ptr %i.bc, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bb, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit

bb.m:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.bd = icmp sgt i32 %i.z, -1
  br i1 %i.bd, label %bb.n, label %sqlite3VdbeGoto.exit

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !3510 ; 3 uses
  %i.bg = zext nneg i32 %i.z to i64               ; 6 uses
  %i.bh = icmp samesign ult i32 %i.z, 8
  br i1 %i.bh, label %bb.o, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.n
  %i.bi = icmp samesign ugt i32 %i.z, 255
  br i1 %i.bi, label %.lr.ph.i, label %.preheader21.i

bb.o:                                             ; preds = %bb.n
  %i.bj = icmp eq i32 %i.z, 1
  br i1 %i.bj, label %sqlite3LogEst.exit.thread, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.o, %.lr.ph34.i
  %.033.i = phi i16 [ %i.bk, %.lr.ph34.i ], [ 40, %bb.o ] ; 2 uses
  %.01432.i = phi i64 [ %i.bl, %.lr.ph34.i ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bk = add i16 %.033.i, -10
  %i.bl = shl nuw nsw i64 %.01432.i, 1            ; 2 uses
  %i.bm = icmp samesign ult i64 %.01432.i, 4
  br i1 %i.bm, label %.lr.ph34.i, label %sqlite3LogEst.exit.thread110, !llvm.loop !1363

.preheader21.i:                                   ; preds = %.lr.ph.i, %.preheader23.i
  %.115.lcssa.i = phi i64 [ %i.bg, %.preheader23.i ], [ %i.bp, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i16 [ 40, %.preheader23.i ], [ %i.bo, %.lr.ph.i ] ; 2 uses
  %i.bn = icmp samesign ugt i64 %.115.lcssa.i, 15
  br i1 %i.bn, label %.lr.ph29.i, label %sqlite3LogEst.exit

.lr.ph.i:                                         ; preds = %.preheader23.i, %.lr.ph.i
  %.125.i = phi i16 [ %i.bo, %.lr.ph.i ], [ 40, %.preheader23.i ]
  %.11524.i = phi i64 [ %i.bp, %.lr.ph.i ], [ %i.bg, %.preheader23.i ] ; 2 uses
  %i.bo = add nuw nsw i16 %.125.i, 40             ; 2 uses
  %i.bp = lshr i64 %.11524.i, 4                   ; 2 uses
  %i.bq = icmp samesign ugt i64 %.11524.i, 4095
  br i1 %i.bq, label %.lr.ph.i, label %.preheader21.i, !llvm.loop !1364

.lr.ph29.i:                                       ; preds = %.preheader21.i, %.lr.ph29.i
  %.228.i = phi i16 [ %i.br, %.lr.ph29.i ], [ %.1.lcssa.i, %.preheader21.i ]
  %.21627.i = phi i64 [ %i.bs, %.lr.ph29.i ], [ %.115.lcssa.i, %.preheader21.i ] ; 2 uses
  %i.br = add nuw nsw i16 %.228.i, 10             ; 2 uses
  %i.bs = lshr i64 %.21627.i, 1                   ; 2 uses
  %i.bt = icmp samesign ugt i64 %.21627.i, 31
  br i1 %i.bt, label %.lr.ph29.i, label %sqlite3LogEst.exit, !llvm.loop !1365

sqlite3LogEst.exit:                               ; preds = %.lr.ph29.i, %.preheader21.i
  %.317.i = phi i64 [ %.115.lcssa.i, %.preheader21.i ], [ %i.bs, %.lr.ph29.i ]
  %.3.i = phi i16 [ %.1.lcssa.i, %.preheader21.i ], [ %i.br, %.lr.ph29.i ]
  %i.bu = and i64 %.317.i, 7
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !338
  %i.bx = add i16 %.3.i, -10
  %i.by = add i16 %i.bx, %i.bw
  %i.bz = icmp sgt i16 %i.bf, %i.by
end_hunk_14
begin_hunk_15_@wherePathSolver:bb.a
  br i1 %i.fo, label %sqlite3LogEstAdd.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = add nsw i32 %i.fm, 31
  %i.fq = icmp slt i32 %i.fp, %i.fl
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = add i16 %i.fk, 1
  br label %sqlite3LogEstAdd.exit

bb.ap:                                            ; preds = %bb.an
  %i.fs = sub nsw i32 %i.fl, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !231
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add i16 %i.fk, %i.fw
  br label %sqlite3LogEstAdd.exit

bb.aq:                                            ; preds = %bb.al
  %i.fy = add nsw i32 %i.fl, 49
  %i.fz = icmp slt i32 %i.fy, %i.fm
  br i1 %i.fz, label %sqlite3LogEstAdd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = add nsw i32 %i.fl, 31
  %i.gb = icmp slt i32 %i.ga, %i.fm
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = add i16 %i.fi, 1
  br label %sqlite3LogEstAdd.exit

bb.at:                                            ; preds = %bb.ar
  %i.gd = sub nsw i32 %i.fm, %i.fl
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !231
  %i.gh = zext i8 %i.gg to i16
  %i.gi = add i16 %i.fi, %i.gh
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0271 = phi i16 [ %i.fi, %bb.ak ], [ %i.gi, %bb.at ], [ %i.fr, %bb.ao ], [ %i.fx, %bb.ap ], [ %i.fk, %bb.am ], [ %i.gc, %bb.as ], [ %i.fi, %bb.aq ] ; 5 uses
  %i.gj = load i16, ptr %i.er, align 4, !tbaa !4443 ; 5 uses
  %i.gk = sext i16 %.0271 to i32                  ; 6 uses
  %i.gl = sext i16 %i.gj to i32                   ; 6 uses
  %.not.i359 = icmp slt i16 %.0271, %i.gj
  br i1 %.not.i359, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gm = add nsw i32 %i.gl, 49
  %i.gn = icmp slt i32 %i.gm, %i.gk
  br i1 %i.gn, label %sqlite3LogEstAdd.exit361, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gl, 31
  %i.gp = icmp slt i32 %i.go, %i.gk
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gq = add i16 %.0271, 1
  br label %sqlite3LogEstAdd.exit361

bb.ax:                                            ; preds = %bb.av
  %i.gr = sub nsw i32 %i.gk, %i.gl
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !231
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add i16 %.0271, %i.gv
  br label %sqlite3LogEstAdd.exit361

bb.ay:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gx = add nsw i32 %i.gk, 49
  %i.gy = icmp slt i32 %i.gx, %i.gl
  br i1 %i.gy, label %sqlite3LogEstAdd.exit361, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = add nsw i32 %i.gk, 31
  %i.ha = icmp slt i32 %i.gz, %i.gl
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hb = add i16 %i.gj, 1
  br label %sqlite3LogEstAdd.exit361

bb.bb:                                            ; preds = %bb.az
  %i.hc = sub nsw i32 %i.gl, %i.gk
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !231
  %i.hg = zext i8 %i.hf to i16
  %i.hh = add i16 %i.gj, %i.hg
  br label %sqlite3LogEstAdd.exit361

sqlite3LogEstAdd.exit361:                         ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bb
  %.0.i360 = phi i16 [ %i.hh, %bb.bb ], [ %i.gq, %bb.aw ], [ %i.gw, %bb.ax ], [ %.0271, %bb.au ], [ %i.hb, %bb.ba ], [ %i.gj, %bb.ay ] ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0275421, i64 22
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !4261
  %i.hk = add i16 %i.hj, %.pre                    ; 3 uses
  %i.hl = or i64 %i.fa, %i.ew
  %i.hm = load i8, ptr %i.es, align 2, !tbaa !4439 ; 2 uses
  %i.hn = icmp slt i8 %i.hm, 0
  br i1 %i.hn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %sqlite3LogEstAdd.exit361
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.ho = load ptr, ptr %i.cp, align 8, !tbaa !3440
  %i.hp = load i16, ptr %i.dy, align 4, !tbaa !338
  %i.hq = call fastcc signext i8 @wherePathSatisfiesOrderBy(ptr noundef nonnull %0, ptr noundef %i.ho, ptr noundef %.1279434, i16 noundef zeroext %i.hp, i16 noundef zeroext %i.ei, ptr noundef nonnull %.0275421, ptr noundef %i.a)
  br label %bb.be

bb.bd:                                            ; preds = %sqlite3LogEstAdd.exit361
  %i.hr = load i64, ptr %i.et, align 8, !tbaa !4444
  store i64 %i.hr, ptr %i.a, align 8, !tbaa !21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0270 = phi i8 [ %i.hq, %bb.bc ], [ %i.hm, %bb.bd ] ; 6 uses
  %i.hs = sext i8 %.0270 to i32                   ; 2 uses
  %i.ht = icmp sgt i8 %.0270, -1
  %i.hu = icmp sgt i32 %.0298, %i.hs
  %or.cond350 = and i1 %i.ht, %i.hu
  br i1 %or.cond350, label %bb.bf, label %bb.bx

bb.bf:                                            ; preds = %bb.be
  %i.hv = zext nneg i8 %.0270 to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.0273371, i64 %i.hv ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !338 ; 2 uses
  %i.hy = icmp eq i16 %i.hx, 0
  br i1 %i.hy, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.hz = load ptr, ptr %i.dz, align 8, !tbaa !3828
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !2764
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !27
  %i.id = add nsw i32 %i.ic, 59
  %i.ie = sdiv i32 %i.id, 30                      ; 4 uses
  %i.if = sext i32 %i.ie to i64                   ; 3 uses
  %i.ig = icmp ult i32 %i.ie, 8
  br i1 %i.ig, label %bb.bh, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.bg
  %i.ih = icmp ugt i32 %i.ie, 255
  br i1 %i.ih, label %.lr.ph.i.i, label %.preheader21.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ii = icmp samesign ult i32 %i.ie, 2
  br i1 %i.ii, label %sqlite3LogEst.exit.i, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.bh, %.lr.ph34.i.i
  %.033.i.i = phi i16 [ %i.ij, %.lr.ph34.i.i ], [ 40, %bb.bh ]
  %.01432.i.i = phi i64 [ %i.ik, %.lr.ph34.i.i ], [ %i.if, %bb.bh ] ; 2 uses
  %i.ij = add i16 %.033.i.i, -10                  ; 2 uses
  %i.ik = shl nuw nsw i64 %.01432.i.i, 1          ; 2 uses
  %i.il = icmp ult i64 %.01432.i.i, 4
  br i1 %i.il, label %.lr.ph34.i.i, label %.loopexit.i.i, !llvm.loop !1363

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.if, %.preheader23.i.i ], [ %i.io, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %i.in, %.lr.ph.i.i ] ; 2 uses
  %i.im = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.im, label %.lr.ph29.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %.lr.ph.i.i
  %.125.i.i = phi i16 [ %i.in, %.lr.ph.i.i ], [ 40, %.preheader23.i.i ]
  %.11524.i.i = phi i64 [ %i.io, %.lr.ph.i.i ], [ %i.if, %.preheader23.i.i ] ; 2 uses
  %i.in = add nuw nsw i16 %.125.i.i, 40           ; 2 uses
  %i.io = lshr i64 %.11524.i.i, 4                 ; 2 uses
  %i.ip = icmp ugt i64 %.11524.i.i, 4095
  br i1 %i.ip, label %.lr.ph.i.i, label %.preheader21.i.i, !llvm.loop !1364

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.iq, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ir, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.iq = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ir = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.is = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.is, label %.lr.ph29.i.i, label %.loopexit.i.i, !llvm.loop !1365

.loopexit.i.i:                                    ; preds = %.lr.ph29.i.i, %.lr.ph34.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ik, %.lr.ph34.i.i ], [ %i.ir, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.ij, %.lr.ph34.i.i ], [ %i.iq, %.lr.ph29.i.i ]
  %i.it = and i64 %.317.i.i, 7
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !338
  %i.iw = add i16 %.3.i.i, -10
  %i.ix = add i16 %i.iw, %i.iv
  br label %sqlite3LogEst.exit.i

sqlite3LogEst.exit.i:                             ; preds = %.loopexit.i.i, %bb.bh
  %.018.i.i = phi i16 [ %i.ix, %.loopexit.i.i ], [ 0, %bb.bh ]
  %i.iy = add i16 %.018.i.i, %1                   ; 2 uses
  %.not.i362 = icmp eq i8 %.0270, 0               ; 2 uses
  br i1 %.not.i362, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %sqlite3LogEst.exit.i
  %i.iz = sub nuw nsw i32 %.0298, %i.hs
  %i.ja = mul nsw i32 %i.iz, 100
  %i.jb = sdiv i32 %i.ja, %.0298                  ; 4 uses
  %i.jc = sext i32 %i.jb to i64                   ; 3 uses
  %i.jd = icmp ult i32 %i.jb, 8
  br i1 %i.jd, label %bb.bj, label %.preheader23.i29.i

.preheader23.i29.i:                               ; preds = %bb.bi
  %i.je = icmp ugt i32 %i.jb, 255
  br i1 %i.je, label %.lr.ph.i40.i, label %.preheader21.i30.i

bb.bj:                                            ; preds = %bb.bi
  %i.jf = icmp samesign ult i32 %i.jb, 2
  br i1 %i.jf, label %sqlite3LogEst.exit46.i, label %.lr.ph34.i43.i

.lr.ph34.i43.i:                                   ; preds = %bb.bj, %.lr.ph34.i43.i
  %.033.i44.i = phi i16 [ %i.jg, %.lr.ph34.i43.i ], [ 40, %bb.bj ]
  %.01432.i45.i = phi i64 [ %i.jh, %.lr.ph34.i43.i ], [ %i.jc, %bb.bj ] ; 2 uses
  %i.jg = add i16 %.033.i44.i, -10                ; 2 uses
  %i.jh = shl nuw nsw i64 %.01432.i45.i, 1        ; 2 uses
  %i.ji = icmp ult i64 %.01432.i45.i, 4
  br i1 %i.ji, label %.lr.ph34.i43.i, label %.loopexit.i33.i, !llvm.loop !1363

.preheader21.i30.i:                               ; preds = %.lr.ph.i40.i, %.preheader23.i29.i
  %.115.lcssa.i31.i = phi i64 [ %i.jc, %.preheader23.i29.i ], [ %i.jl, %.lr.ph.i40.i ] ; 3 uses
  %.1.lcssa.i32.i = phi i16 [ 40, %.preheader23.i29.i ], [ %i.jk, %.lr.ph.i40.i ] ; 2 uses
  %i.jj = icmp samesign ugt i64 %.115.lcssa.i31.i, 15
  br i1 %i.jj, label %.lr.ph29.i37.i, label %.loopexit.i33.i

.lr.ph.i40.i:                                     ; preds = %.preheader23.i29.i, %.lr.ph.i40.i
  %.125.i41.i = phi i16 [ %i.jk, %.lr.ph.i40.i ], [ 40, %.preheader23.i29.i ]
  %.11524.i42.i = phi i64 [ %i.jl, %.lr.ph.i40.i ], [ %i.jc, %.preheader23.i29.i ] ; 2 uses
  %i.jk = add nuw nsw i16 %.125.i41.i, 40         ; 2 uses
  %i.jl = lshr i64 %.11524.i42.i, 4               ; 2 uses
  %i.jm = icmp ugt i64 %.11524.i42.i, 4095
  br i1 %i.jm, label %.lr.ph.i40.i, label %.preheader21.i30.i, !llvm.loop !1364

.lr.ph29.i37.i:                                   ; preds = %.preheader21.i30.i, %.lr.ph29.i37.i
  %.228.i38.i = phi i16 [ %i.jn, %.lr.ph29.i37.i ], [ %.1.lcssa.i32.i, %.preheader21.i30.i ]
  %.21627.i39.i = phi i64 [ %i.jo, %.lr.ph29.i37.i ], [ %.115.lcssa.i31.i, %.preheader21.i30.i ] ; 2 uses
  %i.jn = add nuw nsw i16 %.228.i38.i, 10         ; 2 uses
  %i.jo = lshr i64 %.21627.i39.i, 1               ; 2 uses
  %i.jp = icmp samesign ugt i64 %.21627.i39.i, 31
  br i1 %i.jp, label %.lr.ph29.i37.i, label %.loopexit.i33.i, !llvm.loop !1365

.loopexit.i33.i:                                  ; preds = %.lr.ph29.i37.i, %.lr.ph34.i43.i, %.preheader21.i30.i
  %.317.i34.i = phi i64 [ %.115.lcssa.i31.i, %.preheader21.i30.i ], [ %i.jh, %.lr.ph34.i43.i ], [ %i.jo, %.lr.ph29.i37.i ]
  %.3.i35.i = phi i16 [ %.1.lcssa.i32.i, %.preheader21.i30.i ], [ %i.jg, %.lr.ph34.i43.i ], [ %i.jn, %.lr.ph29.i37.i ]
  %i.jq = and i64 %.317.i34.i, 7
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !338
  %i.jt = add i16 %.3.i35.i, -76
  %i.ju = add i16 %i.jt, %i.js
  br label %sqlite3LogEst.exit46.i

sqlite3LogEst.exit46.i:                           ; preds = %.loopexit.i33.i, %bb.bj
  %.018.i36.i = phi i16 [ %i.ju, %.loopexit.i33.i ], [ -66, %bb.bj ]
  %i.jv = add i16 %.018.i36.i, %i.iy
  br label %bb.bk

bb.bk:                                            ; preds = %sqlite3LogEst.exit46.i, %sqlite3LogEst.exit.i
  %.0.i363 = phi i16 [ %i.jv, %sqlite3LogEst.exit46.i ], [ %i.iy, %sqlite3LogEst.exit.i ] ; 2 uses
  %i.jw = load i16, ptr %i.dy, align 4, !tbaa !338
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = and i32 %i.jx, 16384
  %.not25.i = icmp eq i32 %i.jy, 0
  br i1 %.not25.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %spec.select.v.i = select i1 %.not.i362, i16 10, i16 16
  %spec.select.i364 = add i16 %.0.i363, %spec.select.v.i
  %i.jz = load i16, ptr %i.ea, align 2, !tbaa !338
  %spec.select28.i = tail call i16 @llvm.smin.i16(i16 %i.jz, i16 range(i16 0, -32767) %1)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ka = and i32 %i.jx, 256
  %i.kb = icmp ne i32 %i.ka, 0
  %or.cond.i365 = and i1 %i.eb, %i.kb
  %spec.select27.i = select i1 %or.cond.i365, i16 %i.ec, i16 %1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.022.i = phi i16 [ %spec.select27.i, %bb.bm ], [ %spec.select28.i, %bb.bl ] ; 4 uses
  %.2.i = phi i16 [ %.0.i363, %bb.bm ], [ %spec.select.i364, %bb.bl ]
  %i.kc = icmp slt i16 %.022.i, 11
  br i1 %i.kc, label %whereSortingCost.exit, label %.preheader23.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.bn
  %i.kd = zext nneg i16 %.022.i to i64            ; 3 uses
  %i.ke = icmp samesign ugt i16 %.022.i, 255
  br i1 %i.ke, label %.lr.ph.i.i.i, label %.preheader21.i.i.i

.preheader21.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.preheader23.i.i.i
  %.115.lcssa.i.i.i = phi i64 [ %i.kd, %.preheader23.i.i.i ], [ %.lcssa35, %.lr.ph.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i16 [ 40, %.preheader23.i.i.i ], [ %.lcssa36, %.lr.ph.i.i.i ] ; 2 uses
  %i.kf = icmp samesign ugt i64 %.115.lcssa.i.i.i, 15
  br i1 %i.kf, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader23.i.i.i
  %i.kg = lshr i64 %i.kd, 4
  %i.kh = icmp ugt i16 %.022.i, 4095              ; 2 uses
  %i.ki = lshr i64 %i.kd, 8
  %.lcssa36 = select i1 %i.kh, i16 120, i16 80
  %.lcssa35 = select i1 %i.kh, i64 %i.ki, i64 %i.kg
  br label %.preheader21.i.i.i

.lr.ph29.i.i.i:                                   ; preds = %.preheader21.i.i.i, %.lr.ph29.i.i.i
  %.228.i.i.i = phi i16 [ %i.kj, %.lr.ph29.i.i.i ], [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ]
  %.21627.i.i.i = phi i64 [ %i.kk, %.lr.ph29.i.i.i ], [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ] ; 2 uses
  %i.kj = add nuw nsw i16 %.228.i.i.i, 10         ; 2 uses
  %i.kk = lshr i64 %.21627.i.i.i, 1               ; 2 uses
  %i.kl = icmp samesign ugt i64 %.21627.i.i.i, 31
  br i1 %i.kl, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i, !llvm.loop !1365

sqlite3LogEst.exit.i.i:                           ; preds = %.lr.ph29.i.i.i, %.preheader21.i.i.i
  %.317.i.i.i = phi i64 [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kk, %.lr.ph29.i.i.i ]
  %.3.i.i.i = phi i16 [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kj, %.lr.ph29.i.i.i ]
  %i.km = and i64 %.317.i.i.i, 7
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !338
  %i.kp = add i16 %.3.i.i.i, -43
  %i.kq = add i16 %i.kp, %i.ko
  br label %whereSortingCost.exit

whereSortingCost.exit:                            ; preds = %bb.bn, %sqlite3LogEst.exit.i.i
  %i.kr = phi i16 [ %i.kq, %sqlite3LogEst.exit.i.i ], [ 0, %bb.bn ]
  %i.ks = add i16 %i.kr, %.2.i                    ; 2 uses
  store i16 %i.ks, ptr %i.hw, align 2, !tbaa !338
  br label %bb.bo

bb.bo:                                            ; preds = %whereSortingCost.exit, %bb.bf
  %i.kt = phi i16 [ %i.ks, %whereSortingCost.exit ], [ %i.hx, %bb.bf ] ; 5 uses
  %i.ku = sext i16 %.0.i360 to i32                ; 6 uses
  %i.kv = sext i16 %i.kt to i32                   ; 6 uses
  %.not.i366 = icmp slt i16 %.0.i360, %i.kt
  br i1 %.not.i366, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kw = add nsw i32 %i.kv, 49
  %i.kx = icmp slt i32 %i.kw, %i.ku
  br i1 %i.kx, label %sqlite3LogEstAdd.exit368, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ky = add nsw i32 %i.kv, 31
  %i.kz = icmp slt i32 %i.ky, %i.ku
  br i1 %i.kz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.la = add i16 %.0.i360, 1
  br label %sqlite3LogEstAdd.exit368

bb.bs:                                            ; preds = %bb.bq
  %i.lb = sub nsw i32 %i.ku, %i.kv
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !231
  %i.lf = zext i8 %i.le to i16
  %i.lg = add i16 %.0.i360, %i.lf
  br label %sqlite3LogEstAdd.exit368

bb.bt:                                            ; preds = %bb.bo
  %i.lh = add nsw i32 %i.ku, 49
  %i.li = icmp slt i32 %i.lh, %i.kv
  br i1 %i.li, label %sqlite3LogEstAdd.exit368, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lj = add nsw i32 %i.ku, 31
  %i.lk = icmp slt i32 %i.lj, %i.kv
  br i1 %i.lk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ll = add i16 %i.kt, 1
  br label %sqlite3LogEstAdd.exit368

bb.bw:                                            ; preds = %bb.bu
  %i.lm = sub nsw i32 %i.kv, %i.ku
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !231
  %i.lq = zext i8 %i.lp to i16
  %i.lr = add i16 %i.kt, %i.lq
  br label %sqlite3LogEstAdd.exit368

sqlite3LogEstAdd.exit368:                         ; preds = %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.0.i367 = phi i16 [ %i.lr, %bb.bw ], [ %i.la, %bb.br ], [ %i.lg, %bb.bs ], [ %.0.i360, %bb.bp ], [ %i.ll, %bb.bv ], [ %i.kt, %bb.bt ]
  %i.ls = add i16 %.0.i367, 3
  br label %bb.by

bb.bx:                                            ; preds = %bb.be
  %i.lt = add i16 %.0.i360, -2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %sqlite3LogEstAdd.exit368
  %.0272 = phi i16 [ %i.ls, %sqlite3LogEstAdd.exit368 ], [ %.0.i360, %bb.bx ] ; 5 uses
  %.1 = phi i16 [ %.0.i360, %sqlite3LogEstAdd.exit368 ], [ %i.lt, %bb.bx ] ; 4 uses
  %i.lu = icmp sgt i32 %.1284420, 0
  br i1 %i.lu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.by, %bb.ca
  %.0276403 = phi ptr [ %i.mc, %bb.ca ], [ %.0280450, %bb.by ] ; 12 uses
end_hunk_15
begin_hunk_16_@constructAutomaticIndex:bb.a
  %i.sa = getelementptr inbounds [32 x i8], ptr %i.ry, i64 %i.rz ; 2 uses
  store i8 73, ptr %i.sa, align 8, !tbaa !576
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.sb, i8 0, i64 31, i1 false)
  br label %sqlite3VdbeAddOp2.exit324

sqlite3VdbeAddOp2.exit324:                        ; preds = %bb.cf, %bb.cg
  %.0.i.i323 = phi i32 [ %i.rv, %bb.cf ], [ %i.rp, %bb.cg ]
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !3534 ; 2 uses
  %i.se = load i32, ptr %i.c, align 8, !tbaa !189 ; 3 uses
  %i.sf = load i32, ptr %i.e, align 4, !tbaa !934
  %.not.i325 = icmp sgt i32 %i.sf, %i.se
  br i1 %.not.i325, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %sqlite3VdbeAddOp2.exit324
  %i.sg = call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 11, i32 noundef %i.ru, i32 noundef 0, i32 noundef %i.sd), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.ci:                                            ; preds = %sqlite3VdbeAddOp2.exit324
  %i.sh = add nsw i32 %i.se, 1
  store i32 %i.sh, ptr %i.c, align 8, !tbaa !189
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !188
  %i.sk = sext i32 %i.se to i64
  %i.sl = getelementptr inbounds [32 x i8], ptr %i.sj, i64 %i.sk ; 7 uses
  store i8 11, ptr %i.sl, align 8, !tbaa !576
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  store i16 0, ptr %i.sm, align 2, !tbaa !577
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  store i32 %i.ru, ptr %i.sn, align 4, !tbaa !572
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store i32 0, ptr %i.so, align 8, !tbaa !574
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 12
  store i32 %i.sd, ptr %i.sp, align 4, !tbaa !575
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  store i8 0, ptr %i.sr, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sq, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.ch, %bb.ci
  %i.ss = load i32, ptr %i.c, align 8, !tbaa !189 ; 4 uses
  %i.st = load i32, ptr %i.e, align 4, !tbaa !934
  %.not.i.i327 = icmp sgt i32 %i.st, %i.ss
  br i1 %.not.i.i327, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %sqlite3VdbeAddOp3.exit
  %i.su = call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 12, i32 noundef %i.ru, i32 noundef 0, i32 noundef 0), !inline_history !3306
  br label %sqlite3VdbeAddOp1.exit

bb.ck:                                            ; preds = %sqlite3VdbeAddOp3.exit
  %i.sv = add nsw i32 %i.ss, 1
  store i32 %i.sv, ptr %i.c, align 8, !tbaa !189
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !188
  %i.sy = sext i32 %i.ss to i64
  %i.sz = getelementptr inbounds [32 x i8], ptr %i.sx, i64 %i.sy ; 5 uses
  store i8 12, ptr %i.sz, align 8, !tbaa !576
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 2
  store i16 0, ptr %i.ta, align 2, !tbaa !577
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  store i32 %i.ru, ptr %i.tb, align 4, !tbaa !572
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 1
  store i8 0, ptr %i.td, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tc, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.cj, %bb.ck
  %.0.i.i328 = phi i32 [ %i.su, %bb.cj ], [ %i.ss, %bb.ck ]
  %i.te = load ptr, ptr %i.v, align 8, !tbaa !2745
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !941
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.943, ptr noundef %i.tf)
  %i.tg = sext i32 %.0.i.i323 to i64
  br label %sqlite3VdbeAddOp2.exit331

bb.cl:                                            ; preds = %sqlite3VdbeAddOp2.exit321
  %i.th = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4264 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !4274 ; 2 uses
  br i1 %.not.i.i329, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tl = call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 36, i32 noundef %i.ti, i32 noundef %i.tk, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp2.exit331

bb.cn:                                            ; preds = %bb.cl
  %i.tm = add nsw i32 %i.rp, 1
  store i32 %i.tm, ptr %i.c, align 8, !tbaa !189
  %i.tn = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !188
  %i.tp = sext i32 %i.rp to i64
  %i.tq = getelementptr inbounds [32 x i8], ptr %i.to, i64 %i.tp ; 6 uses
  store i8 36, ptr %i.tq, align 8, !tbaa !576
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 2
  store i16 0, ptr %i.tr, align 2, !tbaa !577
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store i32 %i.ti, ptr %i.ts, align 4, !tbaa !572
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store i32 %i.tk, ptr %i.tt, align 8, !tbaa !574
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 12
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 1
  store i8 0, ptr %i.tv, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.tu, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit331

sqlite3VdbeAddOp2.exit331:                        ; preds = %bb.cn, %bb.cm, %sqlite3VdbeAddOp1.exit
  %.0261 = phi i32 [ %.0.i.i328, %sqlite3VdbeAddOp1.exit ], [ %i.tl, %bb.cm ], [ %i.rp, %bb.cn ] ; 7 uses
  %.0225 = phi i64 [ %i.tg, %sqlite3VdbeAddOp1.exit ], [ 0, %bb.cm ], [ 0, %bb.cn ]
  %.not272 = icmp eq ptr %.0227.lcssa, null       ; 2 uses
  br i1 %.not272, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %sqlite3VdbeAddOp2.exit331
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !3024 ; 2 uses
  %i.ty = add nsw i32 %i.tx, -1                   ; 2 uses
  store i32 %i.ty, ptr %i.tw, align 4, !tbaa !3024
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef nonnull %.0227.lcssa, i32 noundef %i.ty, i32 noundef 16)
  %i.tz = load i32, ptr %i.fo, align 8, !tbaa !4221
  %i.ua = or i32 %i.tz, 131072
  store i32 %i.ua, ptr %i.fo, align 8, !tbaa !4221
  %i.ub = sub i32 0, %i.tx
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %sqlite3VdbeAddOp2.exit331
  %.0226 = phi i32 [ %i.ub, %bb.co ], [ -1, %sqlite3VdbeAddOp2.exit331 ] ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 7 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !3539 ; 3 uses
  %i.ue = icmp eq i8 %i.ud, 0
  br i1 %i.ue, label %sqlite3GetTempReg.exit.thread, label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.cp
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ug = add i8 %i.ud, -1                        ; 3 uses
  store i8 %i.ug, ptr %i.uc, align 1, !tbaa !3539
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.uh
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !27 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !4264 ; 3 uses
  %i.um = load ptr, ptr %i.a, align 8, !tbaa !976 ; 3 uses
  %.in.i = load i16, ptr %i.kl, align 8, !tbaa !338 ; 2 uses
  %i.un = icmp eq i16 %.in.i, 1
  br i1 %i.un, label %bb.cq, label %bb.cs

sqlite3GetTempReg.exit.thread:                    ; preds = %bb.cp
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !944
  %i.uq = add nsw i32 %i.up, 1                    ; 3 uses
  store i32 %i.uq, ptr %i.uo, align 4, !tbaa !944
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !4264 ; 2 uses
  %i.ut = load ptr, ptr %i.a, align 8, !tbaa !976 ; 2 uses
  %.in.i539 = load i16, ptr %i.kl, align 8, !tbaa !338 ; 2 uses
  %i.uu = icmp eq i16 %.in.i539, 1
  br i1 %i.uu, label %.thread, label %bb.cs

bb.cq:                                            ; preds = %sqlite3GetTempReg.exit
  %i.uv = icmp eq i8 %i.ug, 0
  br i1 %i.uv, label %.thread, label %bb.cr

.thread:                                          ; preds = %sqlite3GetTempReg.exit.thread, %bb.cq
  %.0.i332542549 = phi i32 [ %i.uj, %bb.cq ], [ %i.uq, %sqlite3GetTempReg.exit.thread ]
  %i.uw = phi ptr [ %i.uk, %bb.cq ], [ %i.ur, %sqlite3GetTempReg.exit.thread ]
  %i.ux = phi i32 [ %i.ul, %bb.cq ], [ %i.us, %sqlite3GetTempReg.exit.thread ]
  %i.uy = phi ptr [ %i.um, %bb.cq ], [ %i.ut, %sqlite3GetTempReg.exit.thread ]
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !944
  %i.vb = add nsw i32 %i.va, 1                    ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 4, !tbaa !944
  br label %.lr.ph454

bb.cr:                                            ; preds = %bb.cq
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.vd = add i8 %i.ud, -2                        ; 2 uses
  store i8 %i.vd, ptr %i.uc, align 1, !tbaa !3539
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.ve
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !27
  br label %.lr.ph454

bb.cs:                                            ; preds = %sqlite3GetTempReg.exit.thread, %sqlite3GetTempReg.exit
  %.in.i544 = phi i16 [ %.in.i539, %sqlite3GetTempReg.exit.thread ], [ %.in.i, %sqlite3GetTempReg.exit ] ; 3 uses
  %i.vh = phi ptr [ %i.ut, %sqlite3GetTempReg.exit.thread ], [ %i.um, %sqlite3GetTempReg.exit ] ; 2 uses
  %i.vi = phi i32 [ %i.us, %sqlite3GetTempReg.exit.thread ], [ %i.ul, %sqlite3GetTempReg.exit ]
  %i.vj = phi ptr [ %i.ur, %sqlite3GetTempReg.exit.thread ], [ %i.uk, %sqlite3GetTempReg.exit ] ; 2 uses
  %.0.i332541 = phi i32 [ %i.uq, %sqlite3GetTempReg.exit.thread ], [ %i.uj, %sqlite3GetTempReg.exit ] ; 2 uses
  %i.vk = zext i16 %.in.i544 to i32               ; 6 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !3540 ; 2 uses
  %.not.i374 = icmp slt i32 %i.vm, %i.vk
  br i1 %.not.i374, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !3597 ; 2 uses
  %i.vp = add nsw i32 %i.vo, %i.vk
  store i32 %i.vp, ptr %i.vn, align 8, !tbaa !3597
  %i.vq = sub nuw nsw i32 %i.vm, %i.vk
  store i32 %i.vq, ptr %i.vl, align 4, !tbaa !3540
  br label %sqlite3GetTempRange.exit

bb.cu:                                            ; preds = %bb.cs
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !944 ; 2 uses
  %i.vt = add nsw i32 %i.vs, 1
  %i.vu = add nsw i32 %i.vs, %i.vk
  store i32 %i.vu, ptr %i.vr, align 4, !tbaa !944
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.ct, %bb.cu
  %.014.i = phi i32 [ %i.vt, %bb.cu ], [ %i.vo, %bb.ct ] ; 2 uses
  %.not456 = icmp eq i16 %.in.i544, 0
  br i1 %.not456, label %._crit_edge455, label %.lr.ph454

.lr.ph454:                                        ; preds = %bb.cr, %.thread, %sqlite3GetTempRange.exit
  %.014.i561 = phi i32 [ %.014.i, %sqlite3GetTempRange.exit ], [ %i.vg, %bb.cr ], [ %i.vb, %.thread ] ; 2 uses
  %.0.i332540559 = phi i32 [ %.0.i332541, %sqlite3GetTempRange.exit ], [ %i.uj, %bb.cr ], [ %.0.i332542549, %.thread ]
  %i.vv = phi ptr [ %i.vj, %sqlite3GetTempRange.exit ], [ %i.uk, %bb.cr ], [ %i.uw, %.thread ]
  %i.vw = phi i32 [ %i.vi, %sqlite3GetTempRange.exit ], [ %i.ul, %bb.cr ], [ %i.ux, %.thread ] ; 2 uses
  %i.vx = phi ptr [ %i.vh, %sqlite3GetTempRange.exit ], [ %i.um, %bb.cr ], [ %i.uy, %.thread ] ; 4 uses
  %.in.i543558 = phi i16 [ %.in.i544, %sqlite3GetTempRange.exit ], [ 1, %bb.cr ], [ 1, %.thread ]
  %i.vy = phi i32 [ %i.vk, %sqlite3GetTempRange.exit ], [ 1, %bb.cr ], [ 1, %.thread ]
  %i.vz = phi i1 [ false, %sqlite3GetTempRange.exit ], [ true, %bb.cr ], [ true, %.thread ]
  %i.wa = add nsw i32 %i.vw, 1
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 144
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 136
  %i.wf = zext i32 %.014.i561 to i64
  %wide.trip.count478 = zext i16 %.in.i543558 to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph454, %sqlite3VdbeDeletePriorOpcode.exit
  %indvars.iv475 = phi i64 [ 0, %.lr.ph454 ], [ %indvars.iv.next476, %sqlite3VdbeDeletePriorOpcode.exit ] ; 5 uses
  %i.wg = add nuw i64 %indvars.iv475, %i.wf       ; 2 uses
  %i.wh = load ptr, ptr %i.kh, align 8, !tbaa !927
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.wh, i64 %indvars.iv475
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !338 ; 2 uses
  %i.wk = icmp eq i16 %i.wj, -2
  br i1 %i.wk, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  store i32 %i.wa, ptr %i.wb, align 4, !tbaa !3744
  %i.wl = load ptr, ptr %i.wc, align 8, !tbaa !2457
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wn = getelementptr inbounds nuw [24 x i8], ptr %i.wm, i64 %indvars.iv475
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !3229 ; 2 uses
  %i.wp = load ptr, ptr %0, align 8, !tbaa !657   ; 3 uses
  %.not.i377 = icmp eq ptr %i.wo, null
  br i1 %.not.i377, label %sqlite3ExprDup.exit378, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.wq = call fastcc ptr @exprDup(ptr noundef %i.wp, ptr noundef readonly %i.wo, i32 noundef 0, ptr noundef null), !inline_history !4474
  br label %sqlite3ExprDup.exit378

sqlite3ExprDup.exit378:                           ; preds = %bb.cw, %bb.cx
  %i.wr = phi ptr [ %i.wq, %bb.cx ], [ null, %bb.cw ] ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 103
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !563
  %.not.i.i373 = icmp eq i8 %i.wt, 0
  br i1 %.not.i.i373, label %bb.cy, label %sqlite3ExprCodeCopy.exit.i

bb.cy:                                            ; preds = %sqlite3ExprDup.exit378
  %i.wu = trunc i64 %i.wg to i32
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.wr, i32 noundef %i.wu), !inline_history !4475
  br label %sqlite3ExprCodeCopy.exit.i

sqlite3ExprCodeCopy.exit.i:                       ; preds = %bb.cy, %sqlite3ExprDup.exit378
  %.not.i375 = icmp eq ptr %i.wr, null
  br i1 %.not.i375, label %sqlite3ExprDelete.exit376, label %bb.cz

bb.cz:                                            ; preds = %sqlite3ExprCodeCopy.exit.i
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.wp, ptr noundef %i.wr), !inline_history !4476
  br label %sqlite3ExprDelete.exit376

sqlite3ExprDelete.exit376:                        ; preds = %sqlite3ExprCodeCopy.exit.i, %bb.cz
  store i32 0, ptr %i.wb, align 4, !tbaa !3744
  br label %sqlite3ExprCodeLoadIndexColumn.exit

bb.da:                                            ; preds = %bb.cv
  %i.wv = sext i16 %i.wj to i32
  %i.ww = load ptr, ptr %i.a, align 8, !tbaa !976
  %i.wx = load ptr, ptr %i.kp, align 8, !tbaa !1100
  %i.wy = trunc i64 %i.wg to i32
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.ww, ptr noundef %i.wx, i32 noundef %i.vw, i32 noundef %i.wv, i32 noundef %i.wy), !inline_history !4477
  br label %sqlite3ExprCodeLoadIndexColumn.exit

sqlite3ExprCodeLoadIndexColumn.exit:              ; preds = %sqlite3ExprDelete.exit376, %bb.da
  %i.wz = load ptr, ptr %i.kh, align 8, !tbaa !927
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %indvars.iv475
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !338
  %i.xc = icmp sgt i16 %i.xb, -1
  br i1 %i.xc, label %bb.db, label %sqlite3VdbeDeletePriorOpcode.exit

bb.db:                                            ; preds = %sqlite3ExprCodeLoadIndexColumn.exit
  %i.xd = load i32, ptr %i.wd, align 8, !tbaa !189 ; 2 uses
  %i.xe = icmp sgt i32 %i.xd, 0
  br i1 %i.xe, label %bb.dc, label %sqlite3VdbeDeletePriorOpcode.exit

bb.dc:                                            ; preds = %bb.db
  %i.xf = load ptr, ptr %i.we, align 8, !tbaa !188
  %i.xg = zext nneg i32 %i.xd to i64
  %i.xh = getelementptr [32 x i8], ptr %i.xf, i64 %i.xg ; 3 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 -32    ; 2 uses
  %i.xj = load i8, ptr %i.xi, align 8, !tbaa !576
  %i.xk = icmp eq i8 %i.xj, 89
  br i1 %i.xk, label %bb.dd, label %sqlite3VdbeDeletePriorOpcode.exit

bb.dd:                                            ; preds = %bb.dc
  %i.xl = load ptr, ptr %i.vx, align 8, !tbaa !150 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 103
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !563
  %.not.i.i372 = icmp eq i8 %i.xn, 0
  br i1 %.not.i.i372, label %bb.de, label %sqlite3VdbeDeletePriorOpcode.exit

bb.de:                                            ; preds = %bb.dd
  %i.xo = getelementptr i8, ptr %i.xh, i64 -31    ; 2 uses
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !936
  %i.xq = sext i8 %i.xp to i32
  %i.xr = getelementptr i8, ptr %i.xh, i64 -16    ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !231
  call fastcc void @freeP4(ptr noundef nonnull %i.xl, i32 noundef %i.xq, ptr noundef %i.xs)
  store i8 0, ptr %i.xo, align 1, !tbaa !936
  store ptr null, ptr %i.xr, align 8, !tbaa !231
  store i8 -67, ptr %i.xi, align 8, !tbaa !576
  br label %sqlite3VdbeDeletePriorOpcode.exit

sqlite3VdbeDeletePriorOpcode.exit:                ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %sqlite3ExprCodeLoadIndexColumn.exit
  %indvars.iv.next476 = add nuw nsw i64 %indvars.iv475, 1 ; 2 uses
  %exitcond479.not = icmp eq i64 %indvars.iv.next476, %wide.trip.count478
  br i1 %exitcond479.not, label %._crit_edge455, label %bb.cv, !llvm.loop !4147

._crit_edge455:                                   ; preds = %sqlite3VdbeDeletePriorOpcode.exit, %sqlite3GetTempRange.exit
  %.014.i562 = phi i32 [ %.014.i, %sqlite3GetTempRange.exit ], [ %.014.i561, %sqlite3VdbeDeletePriorOpcode.exit ] ; 8 uses
  %.0.i332540560 = phi i32 [ %.0.i332541, %sqlite3GetTempRange.exit ], [ %.0.i332540559, %sqlite3VdbeDeletePriorOpcode.exit ] ; 6 uses
  %i.xt = phi ptr [ %i.vj, %sqlite3GetTempRange.exit ], [ %i.vv, %sqlite3VdbeDeletePriorOpcode.exit ] ; 2 uses
  %i.xu = phi ptr [ %i.vh, %sqlite3GetTempRange.exit ], [ %i.vx, %sqlite3VdbeDeletePriorOpcode.exit ] ; 4 uses
  %i.xv = phi i32 [ %i.vk, %sqlite3GetTempRange.exit ], [ %i.vy, %sqlite3VdbeDeletePriorOpcode.exit ] ; 4 uses
  %i.xw = phi i1 [ false, %sqlite3GetTempRange.exit ], [ %i.vz, %sqlite3VdbeDeletePriorOpcode.exit ]
  %.not60.i = icmp eq i32 %.0.i332540560, 0       ; 2 uses
  br i1 %.not60.i, label %sqlite3GenerateIndexKey.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge455
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xu, i64 144 ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !189 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 148
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !934
  %.not.i368 = icmp sgt i32 %i.ya, %i.xy
  br i1 %.not.i368, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.yb = call fastcc i32 @growOp3(ptr noundef nonnull %i.xu, i32 noundef 99, i32 noundef %.014.i562, i32 noundef %i.xv, i32 noundef %.0.i332540560), !inline_history !4478 ; 0 uses
  br label %sqlite3GenerateIndexKey.exit

bb.dh:                                            ; preds = %bb.df
  %i.yc = add nsw i32 %i.xy, 1
  store i32 %i.yc, ptr %i.xx, align 8, !tbaa !189
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xu, i64 136
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !188
  %i.yf = sext i32 %i.xy to i64
  %i.yg = getelementptr inbounds [32 x i8], ptr %i.ye, i64 %i.yf ; 7 uses
  store i8 99, ptr %i.yg, align 8, !tbaa !576
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 2
  store i16 0, ptr %i.yh, align 2, !tbaa !577
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 4
  store i32 %.014.i562, ptr %i.yi, align 4, !tbaa !572
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  store i32 %i.xv, ptr %i.yj, align 8, !tbaa !574
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 12
  store i32 %.0.i332540560, ptr %i.yk, align 4, !tbaa !575
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yg, i64 1
  store i8 0, ptr %i.ym, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yl, i8 0, i64 16, i1 false)
  br label %sqlite3GenerateIndexKey.exit

sqlite3GenerateIndexKey.exit:                     ; preds = %bb.dh, %bb.dg, %._crit_edge455
  br i1 %i.xw, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %sqlite3GenerateIndexKey.exit
  %.not.i.i367 = icmp eq i32 %.014.i562, 0
  br i1 %.not.i.i367, label %sqlite3ReleaseTempRange.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yn = load i8, ptr %i.uc, align 1, !tbaa !3539 ; 3 uses
  %i.yo = icmp ult i8 %i.yn, 8
  br i1 %i.yo, label %bb.dk, label %sqlite3ReleaseTempRange.exit

bb.dk:                                            ; preds = %bb.dj
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.yq = add nuw nsw i8 %i.yn, 1
  store i8 %i.yq, ptr %i.uc, align 1, !tbaa !3539
  %i.yr = zext nneg i8 %i.yn to i64
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.yr
  store i32 %.014.i562, ptr %i.ys, align 4, !tbaa !27
  br label %sqlite3ReleaseTempRange.exit

bb.dl:                                            ; preds = %sqlite3GenerateIndexKey.exit
end_hunk_16
begin_hunk_17_@sqlite3ConstructBloomFilter:bb.a

bb.p:                                             ; preds = %bb.o
  %i.do = load i8, ptr %i.cw, align 8, !tbaa !3278
  %i.dp = and i8 %i.do, 64
  %.not29.i = icmp ne i8 %i.dp, 0
  %or.cond.i = and i1 %i.cx, %.not29.i
  br i1 %or.cond.i, label %.lr.ph.i, label %sqlite3ExprIsSingleTableConstraint.exit

.lr.ph.i:                                         ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 52
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !231
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.at
  br i1 %exitcond.not.i, label %sqlite3ExprIsSingleTableConstraint.exit, label %bb.r, !llvm.loop !4413

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %i.cs, i64 %indvars.iv.i ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3355
  %i.dv = icmp eq i32 %i.dr, %i.du
  br i1 %i.dv, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !3278
  %i.dy = and i8 %i.dx, 64
  %.not30.i = icmp eq i8 %i.dy, 0
  br i1 %.not30.i, label %sqlite3ExprIsSingleTableConstraint.exit, label %sqlite3ExprIsSingleTableConstraint.exit.thread

sqlite3ExprIsSingleTableConstraint.exit:          ; preds = %bb.q, %bb.o, %bb.p, %bb.s
  %i.dz = load i32, ptr %i.cv, align 4, !tbaa !3355
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store i16 3, ptr %i.y, align 4, !tbaa !3289
  store <2 x ptr> <ptr null, ptr @exprNodeIsConstant>, ptr %4, align 16, !tbaa !459
  store ptr @sqlite3SelectWalkFail, ptr %i.z, align 16, !tbaa !3293
  store i32 %i.dz, ptr %i.aa, align 8, !tbaa !231
  %i.ea = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %4, ptr noundef nonnull %i.dc) #61, !inline_history !4463 ; 0 uses
  %.pre.i.i = load i16, ptr %i.y, align 4, !tbaa !3289
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %.not122 = icmp eq i16 %.pre.i.i, 0
  br i1 %.not122, label %sqlite3ExprIsSingleTableConstraint.exit.thread, label %bb.t

bb.t:                                             ; preds = %sqlite3ExprIsSingleTableConstraint.exit
  %i.eb = load ptr, ptr %.0109167, align 8, !tbaa !1160
  call void @sqlite3ExprIfFalse(ptr noundef %i.a, ptr noundef %i.eb, i32 noundef %i.ak, i32 noundef 16)
  br label %sqlite3ExprIsSingleTableConstraint.exit.thread

sqlite3ExprIsSingleTableConstraint.exit.thread:   ; preds = %bb.s, %bb.j, %bb.n, %bb.l, %bb.m, %bb.t, %sqlite3ExprIsSingleTableConstraint.exit, %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0109167, i64 56 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.cq
  br i1 %i.ed, label %bb.i, label %._crit_edge, !llvm.loop !4479

._crit_edge:                                      ; preds = %sqlite3ExprIsSingleTableConstraint.exit.thread, %sqlite3VdbeAddOp1.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %.0106, i64 48 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !4221
  %i.eg = and i32 %i.ef, 256
  %.not = icmp eq i32 %i.eg, 0
  br i1 %.not, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.eh = load i8, ptr %i.ab, align 1, !tbaa !3539 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ej = load i32, ptr %i.u, align 4, !tbaa !944
  %i.ek = add nsw i32 %i.ej, 1                    ; 2 uses
  store i32 %i.ek, ptr %i.u, align 4, !tbaa !944
  br label %sqlite3GetTempReg.exit

bb.w:                                             ; preds = %bb.u
  %i.el = add i8 %i.eh, -1                        ; 2 uses
  store i8 %i.el, ptr %i.ab, align 1, !tbaa !3539
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !27
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.v, %bb.w
  %.0.i128 = phi i32 [ %i.ek, %bb.v ], [ %i.eo, %bb.w ] ; 6 uses
  %i.ep = load i32, ptr %i.h, align 8, !tbaa !189 ; 3 uses
  %i.eq = load i32, ptr %i.j, align 4, !tbaa !934
  %.not.i.i129 = icmp sgt i32 %i.eq, %i.ep
  br i1 %.not.i.i129, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sqlite3GetTempReg.exit
  %i.er = call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 137, i32 noundef %i.am, i32 noundef %.0.i128, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit131

bb.y:                                             ; preds = %sqlite3GetTempReg.exit
  %i.es = add nsw i32 %i.ep, 1
  store i32 %i.es, ptr %i.h, align 8, !tbaa !189
  %i.et = load ptr, ptr %i.v, align 8, !tbaa !188
  %i.eu = sext i32 %i.ep to i64
  %i.ev = getelementptr inbounds [32 x i8], ptr %i.et, i64 %i.eu ; 6 uses
  store i8 -119, ptr %i.ev, align 8, !tbaa !576
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store i16 0, ptr %i.ew, align 2, !tbaa !577
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.am, ptr %i.ex, align 4, !tbaa !572
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %.0.i128, ptr %i.ey, align 8, !tbaa !574
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store i8 0, ptr %i.fa, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ez, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit131

sqlite3VdbeAddOp2.exit131:                        ; preds = %bb.x, %bb.y
  %i.fb = load i32, ptr %i.ap, align 8, !tbaa !4473 ; 2 uses
  %i.fc = load i32, ptr %i.h, align 8, !tbaa !189 ; 3 uses
  %i.fd = load i32, ptr %i.j, align 4, !tbaa !934
  %.not.i132 = icmp sgt i32 %i.fd, %i.fc
  br i1 %.not.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %sqlite3VdbeAddOp2.exit131
  %i.fe = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.c, i32 noundef 185, i32 noundef %i.fb, i32 noundef 0, i32 noundef %.0.i128, i32 noundef 1), !inline_history !935 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit

bb.aa:                                            ; preds = %sqlite3VdbeAddOp2.exit131
  %i.ff = add nsw i32 %i.fc, 1
  store i32 %i.ff, ptr %i.h, align 8, !tbaa !189
  %i.fg = load ptr, ptr %i.v, align 8, !tbaa !188
  %i.fh = sext i32 %i.fc to i64
  %i.fi = getelementptr inbounds [32 x i8], ptr %i.fg, i64 %i.fh ; 8 uses
  store i8 -71, ptr %i.fi, align 8, !tbaa !576
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 0, ptr %i.fj, align 2, !tbaa !577
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 %i.fb, ptr %i.fk, align 4, !tbaa !572
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fl, align 8, !tbaa !574
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 %.0.i128, ptr %i.fm, align 4, !tbaa !575
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i32 1, ptr %i.fn, align 8, !tbaa !231
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  store i8 -3, ptr %i.fo, align 1, !tbaa !936
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr null, ptr %i.fp, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.z, %bb.aa
  %.not.i134 = icmp eq i32 %.0.i128, 0
  br i1 %.not.i134, label %sqlite3ReleaseTempReg.exit, label %bb.ab

bb.ab:                                            ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.fq = load i8, ptr %i.ab, align 1, !tbaa !3539 ; 3 uses
  %i.fr = icmp ult i8 %i.fq, 8
  br i1 %i.fr, label %bb.ac, label %sqlite3ReleaseTempReg.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fs = add nuw nsw i8 %i.fq, 1
  store i8 %i.fs, ptr %i.ab, align 1, !tbaa !3539
  %i.ft = zext nneg i8 %i.fq to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ft
  store i32 %.0.i128, ptr %i.fu, align 4, !tbaa !27
  br label %sqlite3ReleaseTempReg.exit

bb.ad:                                            ; preds = %._crit_edge
  %i.fv = getelementptr inbounds nuw i8, ptr %.0106, i64 24
  %i.fw = getelementptr inbounds nuw i8, ptr %.0106, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !231 ; 3 uses
  %i.fy = load i16, ptr %i.fv, align 8, !tbaa !231 ; 4 uses
  %i.fz = zext i16 %i.fy to i32                   ; 8 uses
  %i.ga = icmp eq i16 %i.fy, 1                    ; 2 uses
  br i1 %i.ga, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.gb = load i8, ptr %i.ab, align 1, !tbaa !3539 ; 2 uses
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gd = load i32, ptr %i.u, align 4, !tbaa !944
  %i.ge = add nsw i32 %i.gd, 1                    ; 2 uses
  store i32 %i.ge, ptr %i.u, align 4, !tbaa !944
  br label %.lr.ph169

bb.ag:                                            ; preds = %bb.ae
  %i.gf = add i8 %i.gb, -1                        ; 2 uses
  store i8 %i.gf, ptr %i.ab, align 1, !tbaa !3539
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !27
  br label %.lr.ph169

bb.ah:                                            ; preds = %bb.ad
  %i.gj = load i32, ptr %i.ad, align 4, !tbaa !3540 ; 2 uses
  %.not.i135 = icmp slt i32 %i.gj, %i.fz
  br i1 %.not.i135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = load i32, ptr %i.ae, align 8, !tbaa !3597 ; 2 uses
  %i.gl = add nsw i32 %i.gk, %i.fz
  store i32 %i.gl, ptr %i.ae, align 8, !tbaa !3597
  %i.gm = sub nuw nsw i32 %i.gj, %i.fz
  store i32 %i.gm, ptr %i.ad, align 4, !tbaa !3540
  br label %sqlite3GetTempRange.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gn = load i32, ptr %i.u, align 4, !tbaa !944 ; 2 uses
  %i.go = add nsw i32 %i.gn, 1
  %i.gp = add nsw i32 %i.gn, %i.fz
  store i32 %i.gp, ptr %i.u, align 4, !tbaa !944
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.ai, %bb.aj
  %.014.i = phi i32 [ %i.go, %bb.aj ], [ %i.gk, %bb.ai ] ; 2 uses
  %.not179 = icmp eq i16 %i.fy, 0
  br i1 %.not179, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %bb.ag, %bb.af, %sqlite3GetTempRange.exit
  %.014.i211 = phi i32 [ %.014.i, %sqlite3GetTempRange.exit ], [ %i.gi, %bb.ag ], [ %i.ge, %bb.af ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gs = add nsw i32 %i.am, 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  %i.gu = zext i32 %.014.i211 to i64
  %wide.trip.count = zext i16 %i.fy to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph169, %sqlite3ExprCodeLoadIndexColumn.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next, %sqlite3ExprCodeLoadIndexColumn.exit ] ; 4 uses
  %i.gv = add nuw i64 %indvars.iv, %i.gu          ; 2 uses
  %i.gw = load ptr, ptr %i.gq, align 8, !tbaa !927
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %indvars.iv
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !338 ; 2 uses
  %i.gz = icmp eq i16 %i.gy, -2
  br i1 %i.gz, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gs, ptr %i.af, align 4, !tbaa !3744
  %i.ha = load ptr, ptr %i.gt, align 8, !tbaa !2457
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %indvars.iv
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !3229 ; 2 uses
  %i.he = load ptr, ptr %i.a, align 8, !tbaa !657 ; 3 uses
  %.not.i.i146 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i146, label %sqlite3ExprDup.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hf = call fastcc ptr @exprDup(ptr noundef %i.he, ptr noundef readonly %i.hd, i32 noundef 0, ptr noundef null), !inline_history !4480
  br label %sqlite3ExprDup.exit.i

sqlite3ExprDup.exit.i:                            ; preds = %bb.am, %bb.al
  %i.hg = phi ptr [ %i.hf, %bb.am ], [ null, %bb.al ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 103
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !563
  %.not.i147 = icmp eq i8 %i.hi, 0
  br i1 %.not.i147, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %sqlite3ExprDup.exit.i
  %i.hj = trunc i64 %i.gv to i32
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %i.a, ptr noundef %i.hg, i32 noundef %i.hj), !inline_history !4481
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %sqlite3ExprDup.exit.i
  %.not.i8.i = icmp eq ptr %i.hg, null
  br i1 %.not.i8.i, label %sqlite3ExprCodeCopy.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.he, ptr noundef %i.hg), !inline_history !4482
  br label %sqlite3ExprCodeCopy.exit

sqlite3ExprCodeCopy.exit:                         ; preds = %bb.ao, %bb.ap
  store i32 0, ptr %i.af, align 4, !tbaa !3744
  br label %sqlite3ExprCodeLoadIndexColumn.exit

bb.aq:                                            ; preds = %bb.ak
  %i.hk = sext i16 %i.gy to i32
  %i.hl = load ptr, ptr %i.b, align 8, !tbaa !976
  %i.hm = load ptr, ptr %i.gr, align 8, !tbaa !1100
  %i.hn = trunc i64 %i.gv to i32
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.hl, ptr noundef %i.hm, i32 noundef %i.am, i32 noundef %i.hk, i32 noundef %i.hn), !inline_history !3748
  br label %sqlite3ExprCodeLoadIndexColumn.exit

sqlite3ExprCodeLoadIndexColumn.exit:              ; preds = %sqlite3ExprCodeCopy.exit, %bb.aq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge170, label %bb.ak, !llvm.loop !4483

._crit_edge170:                                   ; preds = %sqlite3ExprCodeLoadIndexColumn.exit, %sqlite3GetTempRange.exit
  %.014.i212 = phi i32 [ %.014.i, %sqlite3GetTempRange.exit ], [ %.014.i211, %sqlite3ExprCodeLoadIndexColumn.exit ] ; 5 uses
  %i.ho = load i32, ptr %i.ap, align 8, !tbaa !4473 ; 2 uses
  %i.hp = load i32, ptr %i.h, align 8, !tbaa !189 ; 3 uses
  %i.hq = load i32, ptr %i.j, align 4, !tbaa !934
  %.not.i136 = icmp sgt i32 %i.hq, %i.hp
  br i1 %.not.i136, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge170
  %i.hr = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.c, i32 noundef 185, i32 noundef %i.ho, i32 noundef 0, i32 noundef %.014.i212, i32 noundef %i.fz), !inline_history !935 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit138

bb.as:                                            ; preds = %._crit_edge170
  %i.hs = add nsw i32 %i.hp, 1
  store i32 %i.hs, ptr %i.h, align 8, !tbaa !189
  %i.ht = load ptr, ptr %i.v, align 8, !tbaa !188
  %i.hu = sext i32 %i.hp to i64
  %i.hv = getelementptr inbounds [32 x i8], ptr %i.ht, i64 %i.hu ; 8 uses
  store i8 -71, ptr %i.hv, align 8, !tbaa !576
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  store i16 0, ptr %i.hw, align 2, !tbaa !577
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  store i32 %i.ho, ptr %i.hx, align 4, !tbaa !572
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 0, ptr %i.hy, align 8, !tbaa !574
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 %.014.i212, ptr %i.hz, align 4, !tbaa !575
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i32 %i.fz, ptr %i.ia, align 8, !tbaa !231
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store i8 -3, ptr %i.ib, align 1, !tbaa !936
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr null, ptr %i.ic, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit138

sqlite3VdbeAddOp4Int.exit138:                     ; preds = %bb.ar, %bb.as
  br i1 %i.ga, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %sqlite3VdbeAddOp4Int.exit138
  %.not.i.i139 = icmp eq i32 %.014.i212, 0
  br i1 %.not.i.i139, label %sqlite3ReleaseTempReg.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.id = load i8, ptr %i.ab, align 1, !tbaa !3539 ; 3 uses
  %i.ie = icmp ult i8 %i.id, 8
  br i1 %i.ie, label %bb.av, label %sqlite3ReleaseTempReg.exit

bb.av:                                            ; preds = %bb.au
  %i.if = add nuw nsw i8 %i.id, 1
  store i8 %i.if, ptr %i.ab, align 1, !tbaa !3539
  %i.ig = zext nneg i8 %i.id to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ig
  store i32 %.014.i212, ptr %i.ih, align 4, !tbaa !27
  br label %sqlite3ReleaseTempReg.exit

bb.aw:                                            ; preds = %sqlite3VdbeAddOp4Int.exit138
  %i.ii = load i32, ptr %i.ad, align 4, !tbaa !3540
  %i.ij = icmp slt i32 %i.ii, %i.fz
  br i1 %i.ij, label %bb.ax, label %sqlite3ReleaseTempReg.exit

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.fz, ptr %i.ad, align 4, !tbaa !3540
  store i32 %.014.i212, ptr %i.ae, align 8, !tbaa !3597
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ac, %bb.ab, %sqlite3VdbeAddOp4Int.exit
  %i.ik = load ptr, ptr %i.ag, align 8, !tbaa !975 ; 4 uses
  %i.il = sub i32 0, %i.aj                        ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 80
  %i.in = load i32, ptr %i.im, align 8, !tbaa !3729
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 76
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3024
  %i.iq = add nsw i32 %i.ip, %i.in
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %sqlite3ReleaseTempReg.exit
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.ik, ptr noundef nonnull readonly %i.c, i32 noundef %i.il), !inline_history !3730
  %.pre = load i32, ptr %i.h, align 8, !tbaa !189
  br label %sqlite3VdbeResolveLabel.exit

bb.az:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.is = load i32, ptr %i.h, align 8, !tbaa !189 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 88
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1008
  %i.iv = sext i32 %i.il to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.iv
  store i32 %i.is, ptr %i.iw, align 4, !tbaa !27
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.ay, %bb.az
  %i.ix = phi i32 [ %.pre, %bb.ay ], [ %i.is, %bb.az ] ; 3 uses
  %i.iy = load i32, ptr %i.al, align 4, !tbaa !4264 ; 2 uses
  %i.iz = add nsw i32 %.0.i.i126, 1               ; 2 uses
  %i.ja = load i32, ptr %i.j, align 4, !tbaa !934
  %.not.i.i140 = icmp sgt i32 %i.ja, %i.ix
  br i1 %.not.i.i140, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %sqlite3VdbeResolveLabel.exit
  %i.jb = call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 40, i32 noundef %i.iy, i32 noundef %i.iz, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit142

bb.bb:                                            ; preds = %sqlite3VdbeResolveLabel.exit
  %i.jc = add nsw i32 %i.ix, 1
  store i32 %i.jc, ptr %i.h, align 8, !tbaa !189
  %i.jd = load ptr, ptr %i.v, align 8, !tbaa !188
  %i.je = sext i32 %i.ix to i64
  %i.jf = getelementptr inbounds [32 x i8], ptr %i.jd, i64 %i.je ; 6 uses
  store i8 40, ptr %i.jf, align 8, !tbaa !576
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  store i16 0, ptr %i.jg, align 2, !tbaa !577
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 %i.iy, ptr %i.jh, align 4, !tbaa !572
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i32 %i.iz, ptr %i.ji, align 8, !tbaa !574
end_hunk_17
begin_hunk_18_@sqlite3WhereCodeOneLoopStart:bb.a
  %i.bdk = call fastcc ptr @whereScanNext(ptr noundef %6), !inline_history !4509 ; 2 uses
  %.not.i1349 = icmp eq ptr %i.bdk, null
  br i1 %.not.i1349, label %sqlite3WhereFindTerm.exit, label %.lr.ph.i1348, !llvm.loop !4510

sqlite3WhereFindTerm.exit.thread:                 ; preds = %.thread.i.i, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %bb.lz

sqlite3WhereFindTerm.exit:                        ; preds = %bb.lt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %i.bdl = icmp eq ptr %.1.i, null
  br i1 %i.bdl, label %bb.lz, label %bb.lu

bb.lu:                                            ; preds = %sqlite3WhereFindTerm.exit.thread1432, %sqlite3WhereFindTerm.exit
  %.017.i1434 = phi ptr [ %.021.i, %sqlite3WhereFindTerm.exit.thread1432 ], [ %.1.i, %sqlite3WhereFindTerm.exit ] ; 3 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %.017.i1434, i64 18 ; 3 uses
  %i.bdn = load i16, ptr %i.bdm, align 2, !tbaa !4238
  %i.bdo = and i16 %i.bdn, 4
  %.not1133 = icmp eq i16 %i.bdo, 0
  br i1 %.not1133, label %bb.lv, label %bb.lz

bb.lv:                                            ; preds = %bb.lu
  %i.bdp = load ptr, ptr %.017.i1434, align 8, !tbaa !1160 ; 3 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !372 ; 2 uses
  %i.bds = and i32 %i.bdr, 512
  %.not1134 = icmp eq i32 %i.bds, 0
  br i1 %.not1134, label %bb.lw, label %bb.lz

bb.lw:                                            ; preds = %bb.lv
  %i.bdt = getelementptr inbounds nuw i8, ptr %.017.i1434, i64 20
  %i.bdu = load i16, ptr %i.bdt, align 4, !tbaa !4464
  %i.bdv = and i16 %i.bdu, 1
  %.not1135 = icmp eq i16 %i.bdv, 0
  %i.bdw = and i32 %i.bdr, 4096
  %.not1136 = icmp eq i32 %i.bdw, 0
  %or.cond1159 = or i1 %.not1136, %.not1135
  br i1 %or.cond1159, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdp, i64 32
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !231
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 24
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !2764
  %i.beb = load i32, ptr %i.bea, align 8, !tbaa !27
  %i.bec = icmp sgt i32 %i.beb, 1
  br i1 %i.bec, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.lw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %i.bdp, i64 72, i1 false), !tbaa.struct !4511
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bcv, i64 16
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !376
  store ptr %i.bee, ptr %i.bcg, align 8, !tbaa !376
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %i.an, i32 noundef 16)
  %i.bef = load i16, ptr %i.bdm, align 2, !tbaa !4238
  %i.beg = or i16 %i.bef, 4
  store i16 %i.beg, ptr %i.bdm, align 2, !tbaa !4238
  br label %bb.lz

bb.lz:                                            ; preds = %sqlite3WhereFindTerm.exit.thread, %bb.lx, %bb.lv, %bb.lu, %sqlite3WhereFindTerm.exit, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  %i.beh = add nsw i32 %.61524, -1
  %i.bei = getelementptr inbounds nuw i8, ptr %.110081523, i64 56
  %i.bej = icmp sgt i32 %.61524, 1
  br i1 %i.bej, label %bb.ll, label %._crit_edge1527, !llvm.loop !4513

._crit_edge1527:                                  ; preds = %bb.lz, %.split1522.us
  %i.bek = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !3561 ; 4 uses
  %.not1124 = icmp eq ptr %i.bel, null
  br i1 %.not1124, label %sqlite3ReleaseTempRange.exit1383, label %bb.ma

bb.ma:                                            ; preds = %._crit_edge1527
  %i.bem = load ptr, ptr %i.g, align 8, !tbaa !4072
  %i.ben = load i8, ptr %i.j, align 8, !tbaa !4272
  %i.beo = zext i8 %i.ben to i64
  %i.bep = getelementptr inbounds nuw [72 x i8], ptr %i.bem, i64 %i.beo
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 24
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !2745 ; 5 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 48
  %i.bet = load i32, ptr %i.bes, align 8, !tbaa !802
  %i.beu = and i32 %i.bet, 128
  %i.bev = icmp eq i32 %i.beu, 0
  br i1 %i.bev, label %bb.mb, label %bb.mg

bb.mb:                                            ; preds = %bb.ma
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bex = load i32, ptr %i.bew, align 4, !tbaa !3540 ; 2 uses
  %.not.i1350 = icmp slt i32 %i.bex, 2
  br i1 %.not.i1350, label %bb.md, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bez = load i32, ptr %i.bey, align 8, !tbaa !3597 ; 2 uses
  %i.bfa = add nsw i32 %i.bez, 2
  store i32 %i.bfa, ptr %i.bey, align 8, !tbaa !3597
  %i.bfb = add nsw i32 %i.bex, -2
  store i32 %i.bfb, ptr %i.bew, align 4, !tbaa !3540
  br label %sqlite3GetTempRange.exit1352

bb.md:                                            ; preds = %bb.mb
  %i.bfc = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bfd = load i32, ptr %i.bfc, align 4, !tbaa !944 ; 2 uses
  %i.bfe = add nsw i32 %i.bfd, 1
  %i.bff = add nsw i32 %i.bfd, 2
  store i32 %i.bff, ptr %i.bfc, align 4, !tbaa !944
  br label %sqlite3GetTempRange.exit1352

sqlite3GetTempRange.exit1352:                     ; preds = %bb.mc, %bb.md
  %.014.i1351 = phi i32 [ %i.bfe, %bb.md ], [ %i.bez, %bb.mc ] ; 2 uses
  %i.bfg = load i32, ptr %i.ayq, align 4, !tbaa !4264 ; 2 uses
  %i.bfh = add nsw i32 %.014.i1351, 1             ; 3 uses
  %i.bfi = load i32, ptr %i.ayv, align 8, !tbaa !189 ; 3 uses
  %i.bfj = load i32, ptr %i.ayw, align 4, !tbaa !934
  %.not.i.i1400 = icmp sgt i32 %i.bfj, %i.bfi
  br i1 %.not.i.i1400, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %sqlite3GetTempRange.exit1352
  %i.bfk = call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 137, i32 noundef %i.bfg, i32 noundef %i.bfh, i32 noundef 0), !inline_history !4514 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit1403

bb.mf:                                            ; preds = %sqlite3GetTempRange.exit1352
  %i.bfl = add nsw i32 %i.bfi, 1
  store i32 %i.bfl, ptr %i.ayv, align 8, !tbaa !189
  %i.bfm = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bfn = sext i32 %i.bfi to i64
  %i.bfo = getelementptr inbounds [32 x i8], ptr %i.bfm, i64 %i.bfn ; 6 uses
  store i8 -119, ptr %i.bfo, align 8, !tbaa !576
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 2
  store i16 0, ptr %i.bfp, align 2, !tbaa !577
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 4
  store i32 %i.bfg, ptr %i.bfq, align 4, !tbaa !572
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8
  store i32 %i.bfh, ptr %i.bfr, align 8, !tbaa !574
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfo, i64 12
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfo, i64 1
  store i8 0, ptr %i.bft, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bfs, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit1403

sqlite3VdbeAddOp2.exit1403:                       ; preds = %bb.me, %bb.mf
  %i.bfu = load ptr, ptr %i.ber, align 8, !tbaa !941
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %1, ptr noundef nonnull @.str.676, ptr noundef %i.bfu), !inline_history !4515
  br label %.loopexit1440

bb.mg:                                            ; preds = %bb.ma
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.ber, i64 16
  br label %.lr.ph.i1355

.lr.ph.i1355:                                     ; preds = %.lr.ph.i1355, %bb.mg
  %.08.i1356.in = phi ptr [ %i.bfz, %.lr.ph.i1355 ], [ %i.bfv, %bb.mg ]
  %.08.i1356 = load ptr, ptr %.08.i1356.in, align 8, !tbaa !923, !nonnull !1098, !noundef !1098 ; 4 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %.08.i1356, i64 99
  %i.bfx = load i16, ptr %i.bfw, align 1
  %i.bfy = and i16 %i.bfx, 3
  %.not5.i1357 = icmp eq i16 %i.bfy, 2
  %i.bfz = getelementptr inbounds nuw i8, ptr %.08.i1356, i64 40
  br i1 %.not5.i1357, label %sqlite3PrimaryKeyIndex.exit1362, label %.lr.ph.i1355

sqlite3PrimaryKeyIndex.exit1362:                  ; preds = %.lr.ph.i1355
  %i.bga = getelementptr inbounds nuw i8, ptr %.08.i1356, i64 94
  %i.bgb = load i16, ptr %i.bga, align 2, !tbaa !924 ; 3 uses
  %i.bgc = zext i16 %i.bgb to i32                 ; 3 uses
  %i.bgd = add nuw nsw i32 %i.bgc, 1              ; 3 uses
  %i.bge = icmp eq i16 %i.bgb, 0
  br i1 %i.bge, label %bb.mh, label %bb.mk

bb.mh:                                            ; preds = %sqlite3PrimaryKeyIndex.exit1362
  %i.bgf = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !3539 ; 2 uses
  %i.bgh = icmp eq i8 %i.bgg, 0
  br i1 %i.bgh, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  %i.bgi = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !944
  %i.bgk = add nsw i32 %i.bgj, 1                  ; 2 uses
  store i32 %i.bgk, ptr %i.bgi, align 4, !tbaa !944
  br label %sqlite3GetTempRange.exit1365..loopexit1440_crit_edge

bb.mj:                                            ; preds = %bb.mh
  %i.bgl = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bgm = add i8 %i.bgg, -1                      ; 2 uses
  store i8 %i.bgm, ptr %i.bgf, align 1, !tbaa !3539
  %i.bgn = zext i8 %i.bgm to i64
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.bgn
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !27
  br label %sqlite3GetTempRange.exit1365..loopexit1440_crit_edge

bb.mk:                                            ; preds = %sqlite3PrimaryKeyIndex.exit1362
  %i.bgq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bgr = load i32, ptr %i.bgq, align 4, !tbaa !3540 ; 2 uses
  %.not.i1363.not = icmp sgt i32 %i.bgr, %i.bgc
  br i1 %.not.i1363.not, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.bgs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bgt = load i32, ptr %i.bgs, align 8, !tbaa !3597 ; 2 uses
  %i.bgu = add nsw i32 %i.bgt, %i.bgd
  store i32 %i.bgu, ptr %i.bgs, align 8, !tbaa !3597
  %i.bgv = sub nuw nsw i32 %i.bgr, %i.bgd
  store i32 %i.bgv, ptr %i.bgq, align 4, !tbaa !3540
  br label %.lr.ph1529

bb.mm:                                            ; preds = %bb.mk
  %i.bgw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bgx = load i32, ptr %i.bgw, align 4, !tbaa !944 ; 2 uses
  %i.bgy = add nsw i32 %i.bgx, 1
  %i.bgz = add nsw i32 %i.bgx, %i.bgd
  store i32 %i.bgz, ptr %i.bgw, align 4, !tbaa !944
  br label %.lr.ph1529

sqlite3GetTempRange.exit1365..loopexit1440_crit_edge: ; preds = %bb.mi, %bb.mj
  %.014.i1364.ph = phi i32 [ %i.bgp, %bb.mj ], [ %i.bgk, %bb.mi ] ; 2 uses
  %.pre1611 = add nsw i32 %.014.i1364.ph, 1
  br label %.loopexit1440

.lr.ph1529:                                       ; preds = %bb.mm, %bb.ml
  %.014.i1364 = phi i32 [ %i.bgy, %bb.mm ], [ %i.bgt, %bb.ml ] ; 2 uses
  %i.bha = getelementptr inbounds nuw i8, ptr %.08.i1356, i64 8
  %i.bhb = add nsw i32 %.014.i1364, 1             ; 2 uses
  %wide.trip.count1599 = zext i16 %i.bgb to i64
  br label %bb.mn

bb.mn:                                            ; preds = %.lr.ph1529, %bb.mn
  %indvars.iv1596 = phi i64 [ 0, %.lr.ph1529 ], [ %indvars.iv.next1597, %bb.mn ] ; 3 uses
  %i.bhc = load ptr, ptr %i.bha, align 8, !tbaa !927
  %i.bhd = getelementptr inbounds nuw [2 x i8], ptr %i.bhc, i64 %indvars.iv1596
  %i.bhe = load i16, ptr %i.bhd, align 2, !tbaa !338
  %i.bhf = sext i16 %i.bhe to i32
  %i.bhg = trunc i64 %indvars.iv1596 to i32
  %i.bhh = add i32 %i.bhb, %i.bhg
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %1, ptr noundef nonnull %i.ber, i32 noundef %i.o, i32 noundef %i.bhf, i32 noundef %i.bhh)
  %indvars.iv.next1597 = add nuw nsw i64 %indvars.iv1596, 1 ; 2 uses
  %exitcond1600.not = icmp eq i64 %indvars.iv.next1597, %wide.trip.count1599
  br i1 %exitcond1600.not, label %.loopexit1440, label %bb.mn, !llvm.loop !4516

.loopexit1440:                                    ; preds = %bb.mn, %sqlite3GetTempRange.exit1365..loopexit1440_crit_edge, %sqlite3VdbeAddOp2.exit1403
  %.pre-phi = phi i32 [ %.pre1611, %sqlite3GetTempRange.exit1365..loopexit1440_crit_edge ], [ %i.bfh, %sqlite3VdbeAddOp2.exit1403 ], [ %i.bhb, %bb.mn ] ; 8 uses
  %.0938 = phi i32 [ 0, %sqlite3GetTempRange.exit1365..loopexit1440_crit_edge ], [ 1, %sqlite3VdbeAddOp2.exit1403 ], [ %i.bgc, %bb.mn ] ; 11 uses
  %.0937 = phi i32 [ %.014.i1364.ph, %sqlite3GetTempRange.exit1365..loopexit1440_crit_edge ], [ %.014.i1351, %sqlite3VdbeAddOp2.exit1403 ], [ %.014.i1364, %bb.mn ] ; 7 uses
  %i.bhi = load i32, ptr %i.bel, align 4, !tbaa !4283 ; 2 uses
  %i.bhj = load i32, ptr %i.ayv, align 8, !tbaa !189 ; 4 uses
  %i.bhk = load i32, ptr %i.ayw, align 4, !tbaa !934
  %.not.i1366 = icmp sgt i32 %i.bhk, %i.bhj
  br i1 %.not.i1366, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %.loopexit1440
  %i.bhl = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %1, i32 noundef 29, i32 noundef %i.bhi, i32 noundef 0, i32 noundef %.pre-phi, i32 noundef %.0938), !inline_history !935
  br label %sqlite3VdbeAddOp4Int.exit1368

bb.mp:                                            ; preds = %.loopexit1440
  %i.bhm = add nsw i32 %i.bhj, 1
  store i32 %i.bhm, ptr %i.ayv, align 8, !tbaa !189
  %i.bhn = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bho = sext i32 %i.bhj to i64
  %i.bhp = getelementptr inbounds [32 x i8], ptr %i.bhn, i64 %i.bho ; 8 uses
  store i8 29, ptr %i.bhp, align 8, !tbaa !576
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bhp, i64 2
  store i16 0, ptr %i.bhq, align 2, !tbaa !577
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhp, i64 4
  store i32 %i.bhi, ptr %i.bhr, align 4, !tbaa !572
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhp, i64 8
  store i32 0, ptr %i.bhs, align 8, !tbaa !574
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhp, i64 12
  store i32 %.pre-phi, ptr %i.bht, align 4, !tbaa !575
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhp, i64 16
  store i32 %.0938, ptr %i.bhu, align 8, !tbaa !231
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhp, i64 1
  store i8 -3, ptr %i.bhv, align 1, !tbaa !936
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhp, i64 24
  store ptr null, ptr %i.bhw, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit1368

sqlite3VdbeAddOp4Int.exit1368:                    ; preds = %bb.mo, %bb.mp
  %.0.i1367 = phi i32 [ %i.bhl, %bb.mo ], [ %i.bhj, %bb.mp ]
  %i.bhx = load ptr, ptr %i.ber, align 8, !tbaa !941
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %1, ptr noundef nonnull @.str.979, ptr noundef %i.bhx)
  %i.bhy = load i32, ptr %i.ayv, align 8, !tbaa !189 ; 3 uses
  %i.bhz = load i32, ptr %i.ayw, align 4, !tbaa !934
  %.not.i1369 = icmp sgt i32 %i.bhz, %i.bhy
  br i1 %.not.i1369, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %sqlite3VdbeAddOp4Int.exit1368
  %i.bia = call fastcc i32 @growOp3(ptr noundef nonnull %1, i32 noundef 99, i32 noundef %.pre-phi, i32 noundef %.0938, i32 noundef %.0937), !inline_history !3022 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit1371

bb.mr:                                            ; preds = %sqlite3VdbeAddOp4Int.exit1368
  %i.bib = add nsw i32 %i.bhy, 1
  store i32 %i.bib, ptr %i.ayv, align 8, !tbaa !189
  %i.bic = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bid = sext i32 %i.bhy to i64
  %i.bie = getelementptr inbounds [32 x i8], ptr %i.bic, i64 %i.bid ; 7 uses
  store i8 99, ptr %i.bie, align 8, !tbaa !576
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 2
  store i16 0, ptr %i.bif, align 2, !tbaa !577
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 4
  store i32 %.pre-phi, ptr %i.big, align 4, !tbaa !572
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bie, i64 8
  store i32 %.0938, ptr %i.bih, align 8, !tbaa !574
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bie, i64 12
  store i32 %.0937, ptr %i.bii, align 4, !tbaa !575
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bie, i64 16
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bie, i64 1
  store i8 0, ptr %i.bik, align 1, !tbaa !936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bij, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit1371

sqlite3VdbeAddOp3.exit1371:                       ; preds = %bb.mq, %bb.mr
  %i.bil = load i32, ptr %i.bel, align 4, !tbaa !4283 ; 2 uses
  %i.bim = load i32, ptr %i.ayv, align 8, !tbaa !189 ; 3 uses
  %i.bin = load i32, ptr %i.ayw, align 4, !tbaa !934
  %.not.i1372 = icmp sgt i32 %i.bin, %i.bim
  br i1 %.not.i1372, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %sqlite3VdbeAddOp3.exit1371
  %i.bio = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %1, i32 noundef 140, i32 noundef %i.bil, i32 noundef %.0937, i32 noundef %.pre-phi, i32 noundef %.0938), !inline_history !935 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit1374

bb.mt:                                            ; preds = %sqlite3VdbeAddOp3.exit1371
  %i.bip = add nsw i32 %i.bim, 1
  store i32 %i.bip, ptr %i.ayv, align 8, !tbaa !189
  %i.biq = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bir = sext i32 %i.bim to i64
  %i.bis = getelementptr inbounds [32 x i8], ptr %i.biq, i64 %i.bir ; 8 uses
  store i8 -116, ptr %i.bis, align 8, !tbaa !576
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 2
  store i16 0, ptr %i.bit, align 2, !tbaa !577
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bis, i64 4
  store i32 %i.bil, ptr %i.biu, align 4, !tbaa !572
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bis, i64 8
  store i32 %.0937, ptr %i.biv, align 8, !tbaa !574
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bis, i64 12
  store i32 %.pre-phi, ptr %i.biw, align 4, !tbaa !575
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bis, i64 16
  store i32 %.0938, ptr %i.bix, align 8, !tbaa !231
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bis, i64 1
  store i8 -3, ptr %i.biy, align 1, !tbaa !936
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bis, i64 24
  store ptr null, ptr %i.biz, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit1374

sqlite3VdbeAddOp4Int.exit1374:                    ; preds = %bb.ms, %bb.mt
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bel, i64 4
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !4285 ; 2 uses
  %i.bjc = load i32, ptr %i.ayv, align 8, !tbaa !189 ; 3 uses
  %i.bjd = load i32, ptr %i.ayw, align 4, !tbaa !934
  %.not.i1375 = icmp sgt i32 %i.bjd, %i.bjc
  br i1 %.not.i1375, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %sqlite3VdbeAddOp4Int.exit1374
  %i.bje = call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %1, i32 noundef 185, i32 noundef %i.bjb, i32 noundef 0, i32 noundef %.pre-phi, i32 noundef %.0938), !inline_history !935 ; 0 uses
  br label %sqlite3VdbeAddOp4Int.exit1377

bb.mv:                                            ; preds = %sqlite3VdbeAddOp4Int.exit1374
  %i.bjf = add nsw i32 %i.bjc, 1
  store i32 %i.bjf, ptr %i.ayv, align 8, !tbaa !189
  %i.bjg = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bjh = sext i32 %i.bjc to i64
  %i.bji = getelementptr inbounds [32 x i8], ptr %i.bjg, i64 %i.bjh ; 8 uses
  store i8 -71, ptr %i.bji, align 8, !tbaa !576
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bji, i64 2
  store i16 0, ptr %i.bjj, align 2, !tbaa !577
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bji, i64 4
  store i32 %i.bjb, ptr %i.bjk, align 4, !tbaa !572
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bji, i64 8
  store i32 0, ptr %i.bjl, align 8, !tbaa !574
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bji, i64 12
  store i32 %.pre-phi, ptr %i.bjm, align 4, !tbaa !575
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bji, i64 16
  store i32 %.0938, ptr %i.bjn, align 8, !tbaa !231
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bji, i64 1
  store i8 -3, ptr %i.bjo, align 1, !tbaa !936
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bji, i64 24
  store ptr null, ptr %i.bjp, align 8, !tbaa !937
  br label %sqlite3VdbeAddOp4Int.exit1377

sqlite3VdbeAddOp4Int.exit1377:                    ; preds = %bb.mu, %bb.mv
  %i.bjq = load i32, ptr %i.ayv, align 8, !tbaa !189 ; 3 uses
  %i.bjr = icmp sgt i32 %i.bjq, 0
  br i1 %i.bjr, label %bb.mw, label %sqlite3VdbeChangeP5.exit1378

bb.mw:                                            ; preds = %sqlite3VdbeAddOp4Int.exit1377
  %i.bjs = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bjt = zext nneg i32 %i.bjq to i64
  %i.bju = getelementptr [32 x i8], ptr %i.bjs, i64 %i.bjt
  %i.bjv = getelementptr i8, ptr %i.bju, i64 -30
  store i16 16, ptr %i.bjv, align 2, !tbaa !577
  br label %sqlite3VdbeChangeP5.exit1378

sqlite3VdbeChangeP5.exit1378:                     ; preds = %sqlite3VdbeAddOp4Int.exit1377, %bb.mw
  %i.bjw = load ptr, ptr %1, align 8, !tbaa !150
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 103
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !563
  %.not.i.i.i1379 = icmp eq i8 %i.bjy, 0
  br i1 %.not.i.i.i1379, label %bb.mx, label %sqlite3VdbeJumpHere.exit1381

bb.mx:                                            ; preds = %sqlite3VdbeChangeP5.exit1378
  %i.bjz = load ptr, ptr %i.ayx, align 8, !tbaa !188
  %i.bka = sext i32 %.0.i1367 to i64
  %i.bkb = getelementptr inbounds [32 x i8], ptr %i.bjz, i64 %i.bka
end_hunk_18
begin_hunk_19_@trimFunc:bb.a
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !297
  br label %sqlite3_value_text.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = and i16 %i.c, 1
  %.not9.i.i = icmp eq i16 %i.o, 0
  br i1 %.not9.i.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.a, i8 noundef zeroext 1), !inline_history !596
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.d, %bb.f
  %.0.i.i = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.f ] ; 5 uses
  %i.q = icmp eq ptr %.0.i.i, null
  br i1 %i.q, label %.critedge, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_text.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !296    ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i16, ptr %i.s, align 4, !tbaa !166  ; 2 uses
  %i.u = and i16 %i.t, 2
  %.not.i.i132 = icmp eq i16 %i.u, 0
  br i1 %.not.i.i132, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 22
  %i.w = load i8, ptr %i.v, align 2, !tbaa !351
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.i, label %.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !818
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.h, %bb.g
  %i.aa = zext i16 %i.t to i32                    ; 3 uses
  %i.ab = and i32 %i.aa, 16
  %.not20.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not20.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.thread.i.i
  %i.ac = and i32 %i.aa, 1024
  %.not22.i.i = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !818 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.r, align 8, !tbaa !231
  %i.ag = add nsw i32 %i.af, %i.ae
  br label %sqlite3_value_bytes.exit

bb.l:                                             ; preds = %.thread.i.i
  %i.ah = and i32 %i.aa, 1
  %.not21.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not21.i.i, label %bb.m, label %sqlite3_value_bytes.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call fastcc i32 @valueBytes(ptr noundef nonnull %i.r, i8 noundef zeroext 1), !inline_history !882
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i.i133 = phi i32 [ %i.z, %bb.i ], [ %i.ae, %bb.j ], [ %i.ag, %bb.k ], [ 0, %bb.l ], [ %i.ai, %bb.m ] ; 5 uses
  %i.aj = icmp eq i32 %1, 1                       ; 2 uses
  br i1 %i.aj, label %.thread, label %bb.n

bb.n:                                             ; preds = %sqlite3_value_bytes.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !296 ; 5 uses
  %.not.i.i134 = icmp eq ptr %i.al, null
  br i1 %.not.i.i134, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load i16, ptr %i.am, align 4, !tbaa !166 ; 2 uses
  %i.ao = and i16 %i.an, 514
  %i.ap = icmp eq i16 %i.ao, 514
  br i1 %i.ap, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 22
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !351
  %i.as = icmp eq i8 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !297
  br label %sqlite3_value_text.exit137

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.av = and i16 %i.an, 1
  %.not9.i.i135 = icmp eq i16 %i.av, 0
  br i1 %.not9.i.i135, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.al, i8 noundef zeroext 1), !inline_history !596
  br label %sqlite3_value_text.exit137

sqlite3_value_text.exit137:                       ; preds = %bb.q, %bb.s
  %.0.i.i136 = phi ptr [ %i.au, %bb.q ], [ %i.aw, %bb.s ] ; 5 uses
  %i.ax = icmp eq ptr %.0.i.i136, null
  br i1 %i.ax, label %.critedge, label %.preheader176

.preheader176:                                    ; preds = %sqlite3_value_text.exit137
  %i.ay = load i8, ptr %.0.i.i136, align 1, !tbaa !231 ; 2 uses
  %.not182 = icmp eq i8 %i.ay, 0
  br i1 %.not182, label %sqlite3_free.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader176, %.loopexit175
  %i.az = phi i8 [ %i.bf, %.loopexit175 ], [ %i.ay, %.preheader176 ]
  %.087184 = phi ptr [ %.2, %.loopexit175 ], [ %.0.i.i136, %.preheader176 ]
  %.092183 = phi i32 [ %i.bg, %.loopexit175 ], [ 0, %.preheader176 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.087184, i64 1 ; 3 uses
  %i.bb = icmp ugt i8 %i.az, -65
  br i1 %i.bb, label %.preheader174, label %.lr.ph..loopexit175_crit_edge

.lr.ph..loopexit175_crit_edge:                    ; preds = %.lr.ph
  %.pre = load i8, ptr %i.ba, align 1, !tbaa !231
  br label %.loopexit175

.preheader174:                                    ; preds = %.lr.ph, %.preheader174
  %.188 = phi ptr [ %i.be, %.preheader174 ], [ %i.ba, %.lr.ph ] ; 3 uses
  %i.bc = load i8, ptr %.188, align 1, !tbaa !231 ; 2 uses
  %i.bd = icmp slt i8 %i.bc, -64
  %i.be = getelementptr inbounds nuw i8, ptr %.188, i64 1
  br i1 %i.bd, label %.preheader174, label %.loopexit175, !llvm.loop !4950

.loopexit175:                                     ; preds = %.preheader174, %.lr.ph..loopexit175_crit_edge
  %i.bf = phi i8 [ %.pre, %.lr.ph..loopexit175_crit_edge ], [ %i.bc, %.preheader174 ] ; 2 uses
  %.2 = phi ptr [ %i.ba, %.lr.ph..loopexit175_crit_edge ], [ %.188, %.preheader174 ]
  %i.bg = add nuw nsw i32 %.092183, 1             ; 2 uses
  %.not = icmp eq i8 %i.bf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4951

._crit_edge:                                      ; preds = %.loopexit175
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 12
  %i.bj = tail call fastcc ptr @contextMalloc(ptr noundef %0, i64 noundef %i.bi) ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.critedge, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh ; 2 uses
  %i.bm = load i8, ptr %.0.i.i136, align 1, !tbaa !231
  %.not125185 = icmp eq i8 %i.bm, 0
  br i1 %.not125185, label %sqlite3_free.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.t, %.loopexit173
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit173 ], [ 0, %bb.t ] ; 3 uses
  %.3187 = phi ptr [ %.5, %.loopexit173 ], [ %.0.i.i136, %bb.t ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  store ptr %.3187, ptr %i.bn, align 8, !tbaa !259
  %i.bo = getelementptr inbounds nuw i8, ptr %.3187, i64 1 ; 2 uses
  %i.bp = load i8, ptr %.3187, align 1, !tbaa !231
  %i.bq = icmp ugt i8 %i.bp, -65
  br i1 %i.bq, label %.preheader172, label %.loopexit173

.preheader172:                                    ; preds = %.lr.ph189, %.preheader172
  %.4 = phi ptr [ %i.bt, %.preheader172 ], [ %i.bo, %.lr.ph189 ] ; 3 uses
  %i.br = load i8, ptr %.4, align 1, !tbaa !231
  %i.bs = icmp slt i8 %i.br, -64
  %i.bt = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br i1 %i.bs, label %.preheader172, label %.loopexit173, !llvm.loop !4952

.loopexit173:                                     ; preds = %.preheader172, %.lr.ph189
  %.5 = phi ptr [ %i.bo, %.lr.ph189 ], [ %.4, %.preheader172 ] ; 3 uses
  %i.bu = ptrtoint ptr %.5 to i64
  %i.bv = ptrtoint ptr %.3187 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i8, ptr %.5, align 1, !tbaa !231
  %.not125 = icmp eq i8 %i.bz, 0
  br i1 %.not125, label %.thread, label %.lr.ph189, !llvm.loop !4953

.thread:                                          ; preds = %.loopexit173, %sqlite3_value_bytes.exit
  %.496146 = phi i64 [ 1, %sqlite3_value_bytes.exit ], [ %indvars.iv.next, %.loopexit173 ] ; 2 uses
  %.299145 = phi ptr [ @trimFunc.azOne, %sqlite3_value_bytes.exit ], [ %i.bj, %.loopexit173 ] ; 5 uses
  %.2102144 = phi ptr [ @trimFunc.lenOne, %sqlite3_value_bytes.exit ], [ %i.bl, %.loopexit173 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !234
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !853
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = trunc i64 %i.ce to i1
  %i.cg = icmp ne i32 %.0.i.i133, 0
  %or.cond = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond, label %.preheader170, label %.loopexit

bb.u:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.0112, i64 %i.cn ; 2 uses
  %i.ci = sub nuw i32 %.0105, %i.ck               ; 2 uses
  %.old1.not = icmp eq i32 %i.ci, 0
  br i1 %.old1.not, label %.thread157, label %.preheader170

.preheader170:                                    ; preds = %.thread, %bb.u
  %.0112 = phi ptr [ %i.ch, %bb.u ], [ %.0.i.i, %.thread ] ; 3 uses
  %.0105 = phi i32 [ %i.ci, %bb.u ], [ %.0.i.i133, %.thread ] ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader170, %bb.x
  %indvars.iv206 = phi i64 [ 0, %.preheader170 ], [ %indvars.iv.next207, %bb.x ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.2102144, i64 %indvars.iv206
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !27 ; 3 uses
  %.not126 = icmp ugt i32 %i.ck, %.0105
  br i1 %.not126, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.299145, i64 %indvars.iv206
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !259
  %i.cn = zext i32 %i.ck to i64                   ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %.0112, ptr %i.cm, i64 %i.cn)
  %i.co = icmp eq i32 %bcmp, 0
  br i1 %i.co, label %bb.u, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next207, %.496146
  br i1 %exitcond.not, label %.loopexit, label %bb.v, !llvm.loop !4954

.loopexit:                                        ; preds = %bb.x, %.thread
  %.2114 = phi ptr [ %.0.i.i, %.thread ], [ %.0112, %bb.x ] ; 4 uses
  %.2107 = phi i32 [ %.0.i.i133, %.thread ], [ %.0105, %bb.x ] ; 3 uses
  %i.cp = and i64 %i.ce, 2
  %i.cq = icmp ne i64 %i.cp, 0
  %i.cr = icmp ne i32 %.2107, 0
  %or.cond4 = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond4, label %.preheader, label %.thread157

bb.y:                                             ; preds = %bb.aa
  %.old3.not = icmp eq i32 %i.cu, 0
  br i1 %.old3.not, label %.thread157, label %.preheader

.preheader:                                       ; preds = %.loopexit, %bb.y
  %.3108 = phi i32 [ %i.cu, %bb.y ], [ %.2107, %.loopexit ] ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %bb.ab
  %indvars.iv209 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next210, %bb.ab ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.2102144, i64 %indvars.iv209
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !27 ; 3 uses
  %.not128 = icmp ugt i32 %i.ct, %.3108
  br i1 %.not128, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = sub nuw i32 %.3108, %i.ct               ; 3 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %.2114, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.299145, i64 %indvars.iv209
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !259
  %i.cz = zext i32 %i.ct to i64
  %bcmp129 = tail call i32 @bcmp(ptr %i.cw, ptr %i.cy, i64 %i.cz)
  %i.da = icmp eq i32 %bcmp129, 0
  br i1 %i.da, label %bb.y, label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %.496146
  br i1 %exitcond213.not, label %.thread157, label %bb.z, !llvm.loop !4955

.thread157:                                       ; preds = %bb.u, %bb.y, %bb.ab, %.loopexit
  %.2114161 = phi ptr [ %.2114, %bb.y ], [ %.2114, %bb.ab ], [ %.2114, %.loopexit ], [ %i.ch, %bb.u ] ; 4 uses
  %.5110 = phi i32 [ 0, %bb.y ], [ %.3108, %bb.ab ], [ %.2107, %.loopexit ], [ 0, %bb.u ] ; 4 uses
  br i1 %i.aj, label %sqlite3_free.exit, label %bb.ac

bb.ac:                                            ; preds = %.thread157
  %i.db = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.db, 0
  br i1 %.not.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i138, label %sqlite3_mutex_enter.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.dd(ptr noundef nonnull %i.dc) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.ae, %bb.ad
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.df = tail call i32 %i.de(ptr noundef nonnull %.299145) #58, !inline_history !277
  %i.dg = sext i32 %i.df to i64
  %i.dh = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.di = sub nsw i64 %i.dh, %i.dg
  store i64 %i.di, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.dk = add nsw i64 %i.dj, -1
  store i64 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.dl(ptr noundef nonnull %.299145) #58, !inline_history !278
  %i.dm = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dm, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.af

bb.af:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.dn(ptr noundef nonnull %i.dm) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.ag:                                            ; preds = %bb.ac
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.do(ptr noundef nonnull %.299145) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.t, %.preheader176, %bb.ag, %bb.af, %sqlite3_mutex_enter.exit.i, %.thread157
  %.3115 = phi ptr [ %.2114161, %bb.ag ], [ %.2114161, %.thread157 ], [ %.0.i.i, %bb.t ], [ %.0.i.i, %.preheader176 ], [ %.2114161, %sqlite3_mutex_enter.exit.i ], [ %.2114161, %bb.af ]
  %.6 = phi i32 [ %.5110, %bb.ag ], [ %.5110, %.thread157 ], [ %.0.i.i133, %bb.t ], [ %.0.i.i133, %.preheader176 ], [ %.5110, %sqlite3_mutex_enter.exit.i ], [ %.5110, %bb.af ]
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef %.3115, i32 noundef %.6, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !3058
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.n, %bb.e, %._crit_edge, %sqlite3_value_text.exit137, %sqlite3_value_text.exit, %bb.a, %sqlite3_free.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @minmaxFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !853
  %i.e = icmp ne ptr %i.d, null
  %i.f = sext i1 %i.e to i32
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.h = getelementptr i8, ptr %0, i64 32
  %.val18 = load i32, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr i8, ptr %.val, i64 136
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !188
  %i.j = sext i32 %.val18 to i64
  %i.k = getelementptr [32 x i8], ptr %.val.val, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.n = load ptr, ptr %2, align 8, !tbaa !296    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i16, ptr %i.o, align 4, !tbaa !166
  %i.q = and i16 %i.p, 63
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, -6148914691236517206
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.u = icmp sgt i32 %1, 1
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.022 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !296  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i16, ptr %i.x, align 4, !tbaa !166
  %i.z = and i16 %i.y, 63
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = and i64 %i.ab, -6148914691236517206
  %.not19 = icmp eq i64 %i.ac, 0
  br i1 %.not19, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.ad = zext nneg i32 %.022 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !296
  %i.ag = tail call fastcc i32 @sqlite3MemCompare(ptr noundef %i.af, ptr noundef nonnull %i.w, ptr noundef %i.m)
  %i.ah = xor i32 %i.ag, %i.f
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.ai, i32 %.022, i32 %i.aj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !4956

._crit_edge.loopexit:                             ; preds = %bb.b
  %.phi.trans.insert = zext i32 %spec.select to i64
  %.phi.trans.insert24 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.phi.trans.insert
  %.pre = load ptr, ptr %.phi.trans.insert24, align 8, !tbaa !296
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit
  %i.ak = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.n, %.preheader ]
  tail call void @sqlite3_result_value(ptr noundef %0, ptr noundef %i.ak)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge
end_hunk_19
begin_hunk_20_@porterClose
define internal noundef i32 @porterClose(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5501 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.f(ptr noundef nonnull %i.e) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.h = tail call i32 %i.g(ptr noundef nonnull %i.b) #58, !inline_history !277
  %i.i = sext i32 %i.h to i64
  %i.j = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.n(ptr noundef nonnull %i.b) #58, !inline_history !278
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.q(ptr noundef nonnull %i.b) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.t(ptr noundef nonnull %i.s) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #58, !inline_history !277
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ab(ptr noundef nonnull %0) #58, !inline_history !278
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.ad(ptr noundef nonnull %i.ac) #58, !inline_history !279
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ae(ptr noundef nonnull %0) #58, !inline_history !278
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @porterNext(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 56 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5496 ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !5499 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !5498 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %.thread450

.lr.ph.preheader:                                 ; preds = %bb.a, %.backedge
  %i.o = phi i32 [ %i.asq, %.backedge ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = phi i32 [ %i.asp, %.backedge ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !231   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %.lr.ph954, label %.critedge

.lr.ph:                                           ; preds = %.critedge3
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !231   ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph954, label %.critedge, !llvm.loop !5503

.lr.ph954:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi i8 [ %i.v, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv953 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.promoted559706952 = phi i32 [ %i.ad, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.y = icmp samesign ult i8 %i.x, 48
  br i1 %i.y, label %.critedge3, label %bb.b

bb.b:                                             ; preds = %.lr.ph954
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = getelementptr i8, ptr @porterIdChar, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -48
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !231
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph954, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv953, 1 ; 4 uses
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 4 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !5499
  %exitcond.not = icmp eq i32 %i.o, %i.ad
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !5503

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph.preheader
  %.promoted559706.lcssa = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ], [ %.promoted559706952, %bb.b ] ; 3 uses
  %indvars.iv.lcssa = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv953, %bb.b ] ; 4 uses
  %i.ae = trunc nsw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.af = icmp slt i32 %.promoted559706.lcssa, %i.o
  br i1 %i.af, label %.lr.ph560.preheader, label %.critedge5

.lr.ph560.preheader:                              ; preds = %.critedge
  %i.ag = sext i32 %.promoted559706.lcssa to i64
  br label %.lr.ph560

.lr.ph560:                                        ; preds = %.lr.ph560.preheader, %.critedge68
  %indvars.iv654 = phi i64 [ %i.ag, %.lr.ph560.preheader ], [ %indvars.iv.next655, %.critedge68 ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv654
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !231 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.c, label %.critedge68

bb.c:                                             ; preds = %.lr.ph560
  %i.ak = icmp samesign ult i8 %i.ai, 48
  br i1 %i.ak, label %.critedge5.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = zext nneg i8 %i.ai to i64
  %i.am = getelementptr i8, ptr @porterIdChar, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !231
  %.not64.not = icmp eq i8 %i.ao, 0
  br i1 %.not64.not, label %.critedge5.loopexit.split.loop.exit891, label %.critedge68

.critedge68:                                      ; preds = %.lr.ph560, %bb.d
  %indvars.iv.next655 = add nsw i64 %indvars.iv654, 1 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next655 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !5499
  %exitcond658.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond658.not, label %.critedge5, label %.lr.ph560, !llvm.loop !5504

.critedge5.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.aq = trunc nsw i64 %indvars.iv654 to i32
  br label %.critedge5

.critedge5.loopexit.split.loop.exit891:           ; preds = %bb.d
  %i.ar = trunc nsw i64 %indvars.iv654 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge68, %.critedge5.loopexit.split.loop.exit, %.critedge5.loopexit.split.loop.exit891, %.critedge
  %.lcssa497 = phi i32 [ %.promoted559706.lcssa, %.critedge ], [ %i.aq, %.critedge5.loopexit.split.loop.exit ], [ %i.ar, %.critedge5.loopexit.split.loop.exit891 ], [ %i.o, %.critedge68 ] ; 2 uses
  %.not66 = icmp sgt i32 %.lcssa497, %i.ae
  br i1 %.not66, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge5
  %i.as = sub nsw i32 %.lcssa497, %i.ae           ; 12 uses
  %i.at = load i32, ptr %i.h, align 8, !tbaa !5502
  %i.au = icmp sgt i32 %i.as, %i.at
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !5501 ; 2 uses
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.as, 20                   ; 2 uses
  store i32 %i.av, ptr %i.h, align 8, !tbaa !5502
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !1056
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread450

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.ax), !inline_history !1056 ; 3 uses
  %.not65.not = icmp eq ptr %i.ay, null
  br i1 %.not65.not, label %.thread450, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !5501
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = phi ptr [ %i.ay, %bb.g ], [ %.pre, %bb.e ] ; 24 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.lcssa ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.bc = add i32 %i.as, -21
  %or.cond.i = icmp ult i32 %i.bc, -18
  %wide.trip.count.i.i = zext i32 %i.as to i64    ; 15 uses
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %min.iters.check986 = icmp ult i32 %i.as, 8
  br i1 %min.iters.check986, label %.lr.ph.i.i.preheader1038, label %vector.memcheck983

vector.memcheck983:                               ; preds = %.lr.ph.i.i.preheader
  %i.bd = add i64 %indvars.iv.lcssa, %i.e
  %i.be = sub i64 %i.bd, %i.ba
  %diff.check984 = icmp ugt i64 %i.be, -8
  br i1 %diff.check984, label %.lr.ph.i.i.preheader1038, label %vector.ph987

vector.ph987:                                     ; preds = %vector.memcheck983
  %n.vec988 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph987
  %index990 = phi i64 [ 0, %vector.ph987 ], [ %index.next995, %vector.body989 ] ; 3 uses
  %vec.phi991 = phi <4 x i1> [ zeroinitializer, %vector.ph987 ], [ %i.bt, %vector.body989 ]
  %vec.phi992 = phi <4 x i1> [ zeroinitializer, %vector.ph987 ], [ %i.bu, %vector.body989 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index990 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %wide.load993 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !231 ; 4 uses
  %wide.load994 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !231 ; 4 uses
  %i.bh = add <4 x i8> %wide.load993, splat (i8 -65)
  %i.bi = add <4 x i8> %wide.load994, splat (i8 -65)
  %i.bj = icmp ult <4 x i8> %i.bh, splat (i8 26)
  %i.bk = icmp ult <4 x i8> %i.bi, splat (i8 26)
  %i.bl = or disjoint <4 x i8> %wide.load993, splat (i8 32)
  %i.bm = or disjoint <4 x i8> %wide.load994, splat (i8 32)
  %i.bn = select <4 x i1> %i.bj, <4 x i8> %i.bl, <4 x i8> %wide.load993
  %i.bo = select <4 x i1> %i.bk, <4 x i8> %i.bm, <4 x i8> %wide.load994
  %i.bp = add <4 x i8> %wide.load993, splat (i8 -48)
  %i.bq = icmp ult <4 x i8> %i.bp, splat (i8 10)
  %i.br = add <4 x i8> %wide.load994, splat (i8 -48)
  %i.bs = icmp ult <4 x i8> %i.br, splat (i8 10)
  %i.bt = or <4 x i1> %vec.phi991, %i.bq          ; 2 uses
  %i.bu = or <4 x i1> %vec.phi992, %i.bs          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %index990 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x i8> %i.bn, ptr %i.bv, align 1, !tbaa !231
  store <4 x i8> %i.bo, ptr %i.bw, align 1, !tbaa !231
  %index.next995 = add nuw i64 %index990, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next995, %n.vec988
  br i1 %i.bx, label %middle.block996, label %vector.body989, !llvm.loop !5505

middle.block996:                                  ; preds = %vector.body989
  %bin.rdx997 = or <4 x i1> %i.bu, %i.bt
  %bin.rdx997.fr = freeze <4 x i1> %bin.rdx997
  %i.by = bitcast <4 x i1> %bin.rdx997.fr to i4
  %.not1035.a = icmp ne i4 %i.by, 0
  %rdx.select998 = zext i1 %.not1035.a to i32     ; 2 uses
  %cmp.n999 = icmp eq i64 %n.vec988, %wide.trip.count.i.i
  br i1 %cmp.n999, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1038

.lr.ph.i.i.preheader1038:                         ; preds = %vector.memcheck983, %.lr.ph.i.i.preheader, %middle.block996
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck983 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec988, %middle.block996 ] ; 5 uses
  %.045.i.i.ph = phi i32 [ 0, %vector.memcheck983 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select998, %middle.block996 ] ; 2 uses
  %xtraiter1101 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1102.not = icmp eq i64 %xtraiter1101, 0
  br i1 %lcmp.mod1102.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1038
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !231 ; 4 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.prol = icmp ult i8 %i.cb, 26
  %i.cc = or disjoint i8 %i.ca, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cc, i8 %i.ca
  %i.cd = add i8 %i.ca, -58
  %i.ce = icmp ult i8 %i.cd, -10
  %.2.i.i.prol = select i1 %i.ce, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cf, align 1, !tbaa !231
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1038
  %.2.i.i.lcssa1039.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1038 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1038 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.045.i.i.unr = phi i32 [ %.045.i.i.ph, %.lr.ph.i.i.preheader1038 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cg = add nsw i64 %wide.trip.count.i.i, -1
  %i.ch = icmp eq i64 %indvars.iv.i.i.ph, %i.cg
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.045.i.i = phi i32 [ %.2.i.i.1, %.lr.ph.i.i ], [ %.045.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !231 ; 4 uses
  %i.ck = add i8 %i.cj, -65
  %or.cond.i.i = icmp ult i8 %i.ck, 26
  %i.cl = or disjoint i8 %i.cj, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cl, i8 %i.cj
  %i.cm = add i8 %i.cj, -58
  %i.cn = icmp ult i8 %i.cm, -10
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !231
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !231 ; 4 uses
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cr, 26
  %i.cs = or disjoint i8 %i.cq, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cs, i8 %i.cq
  %i.ct = add i8 %i.cq, -58
  %i.cu = icmp ult i8 %i.ct, -10
  %i.cv = select i1 %i.cu, i1 %i.cn, i1 false
  %.2.i.i.1 = select i1 %i.cv, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cw, align 1, !tbaa !231
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5506

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block996
  %.2.i.i.lcssa = phi i32 [ %rdx.select998, %middle.block996 ], [ %.2.i.i.lcssa1039.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %i.cx = icmp eq i32 %.2.i.i.lcssa, 0
  %i.cy = select i1 %i.cx, i32 10, i32 3          ; 3 uses
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = icmp sgt i32 %i.as, %i.cz
  br i1 %i.da, label %iter.check1020, label %.loopexit.sink.split.i

iter.check1020:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.db = sub i32 %i.as, %i.cy
  %i.dc = zext nneg i32 %i.cy to i64              ; 6 uses
  %i.dd = zext i32 %i.db to i64                   ; 8 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %umax.a = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %wide.trip.count.i.i)
  %i.df = sub nsw i64 %umax.a, %i.dd              ; 7 uses
  %min.iters.check1005 = icmp ult i64 %i.df, 8
  %i.dg = sub nsw i64 %i.dd, %i.dc
  %diff.check1003 = icmp ugt i64 %i.dg, -32
  %or.cond1036 = select i1 %min.iters.check1005, i1 true, i1 %diff.check1003
  br i1 %or.cond1036, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check1006

vector.main.loop.iter.check1006:                  ; preds = %iter.check1020
  %min.iters.check1007 = icmp ult i64 %i.df, 32
  br i1 %min.iters.check1007, label %vec.epilog.ph1024, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.main.loop.iter.check1006
  %i.dh = and i64 %i.df, 24
  %n.vec1009 = and i64 %i.df, -32                 ; 5 uses
  %i.di = add nsw i64 %n.vec1009, %i.dd
  %i.dj = or disjoint i64 %n.vec1009, %i.dc       ; 2 uses
  %invariant.gep1145.a = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1147 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1014, %vector.body1010 ] ; 3 uses
  %gep1146.a = getelementptr i8, ptr %invariant.gep1145.a, i64 %index1011 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep1146.a, i64 16
  %wide.load1012 = load <16 x i8>, ptr %gep1146.a, align 1, !tbaa !231
  %wide.load1013 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !231
  %gep1148 = getelementptr i8, ptr %invariant.gep1147, i64 %index1011 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep1148, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1148, align 1, !tbaa !231
  store <16 x i8> %wide.load1013, ptr %i.dl, align 1, !tbaa !231
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dm = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !5507

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.df, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !2739

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1025 = and i64 %i.df, -8                  ; 4 uses
  %i.dn = add nsw i64 %n.vec1025, %i.dd
  %i.do = add nsw i64 %n.vec1025, %i.dc           ; 2 uses
  %invariant.gep1149 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1151 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vec.epilog.vector.body1026

vec.epilog.vector.body1026:                       ; preds = %vec.epilog.vector.body1026, %vec.epilog.ph1024
  %index1027 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1024 ], [ %index.next1029, %vec.epilog.vector.body1026 ] ; 3 uses
  %gep1150 = getelementptr i8, ptr %invariant.gep1149, i64 %index1027
  %wide.load1028 = load <8 x i8>, ptr %gep1150, align 1, !tbaa !231
  %gep1152 = getelementptr i8, ptr %invariant.gep1151, i64 %index1027
  store <8 x i8> %wide.load1028, ptr %gep1152, align 1, !tbaa !231
  %index.next1029 = add nuw i64 %index1027, 8     ; 2 uses
  %i.dp = icmp eq i64 %index.next1029, %n.vec1025
  br i1 %i.dp, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1026, !llvm.loop !5508

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1026
  %cmp.n1031 = icmp eq i64 %i.df, %n.vec1025
  br i1 %cmp.n1031, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1030
  %indvars.iv57.i.i.ph = phi i64 [ %i.dd, %iter.check1020 ], [ %i.di, %vec.epilog.iter.check1022 ], [ %i.dn, %vec.epilog.middle.block1030 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dj, %vec.epilog.iter.check1022 ], [ %i.do, %vec.epilog.middle.block1030 ]
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ], [ %indvars.iv55.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !231
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i.i
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !231
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next58.i.i, %wide.trip.count.i.i
  br i1 %i.dt, label %.lr.ph50.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !5509

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph50.i.i, %vec.epilog.middle.block1030, %middle.block1015
  %indvars.iv.next56.i.i.lcssa = phi i64 [ %i.do, %vec.epilog.middle.block1030 ], [ %i.dj, %middle.block1015 ], [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ]
  %i.du = trunc nuw i64 %indvars.iv.next56.i.i.lcssa to i32
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %indvars.iv786.i = phi i64 [ %indvars.iv.next787.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 22, %bb.h ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv786.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !231 ; 4 uses
  %i.dx = add i8 %i.dw, -65
  %or.cond4.i = icmp ult i8 %i.dx, 26
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.dy = or disjoint i8 %i.dw, 32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.dz = add i8 %i.dw, -97
  %or.cond7.i = icmp ult i8 %i.dz, 26
  br i1 %or.cond7.i, label %bb.k, label %.lr.ph.i111.i.preheader

.lr.ph.i111.i.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i32 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i111.i.preheader1093, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i111.i.preheader
  %i.ea = add i64 %indvars.iv.lcssa, %i.e
  %i.eb = sub i64 %i.ea, %i.ba
  %diff.check = icmp ugt i64 %i.eb, -8
  br i1 %diff.check, label %.lr.ph.i111.i.preheader1093, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi958 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %wide.load = load <4 x i8>, ptr %i.ec, align 1, !tbaa !231 ; 4 uses
  %wide.load959 = load <4 x i8>, ptr %i.ed, align 1, !tbaa !231 ; 4 uses
  %i.ee = add <4 x i8> %wide.load, splat (i8 -65)
  %i.ef = add <4 x i8> %wide.load959, splat (i8 -65)
  %i.eg = icmp ult <4 x i8> %i.ee, splat (i8 26)
  %i.eh = icmp ult <4 x i8> %i.ef, splat (i8 26)
  %i.ei = or disjoint <4 x i8> %wide.load, splat (i8 32)
  %i.ej = or disjoint <4 x i8> %wide.load959, splat (i8 32)
  %i.ek = select <4 x i1> %i.eg, <4 x i8> %i.ei, <4 x i8> %wide.load
  %i.el = select <4 x i1> %i.eh, <4 x i8> %i.ej, <4 x i8> %wide.load959
  %i.em = add <4 x i8> %wide.load, splat (i8 -48)
  %i.en = icmp ult <4 x i8> %i.em, splat (i8 10)
  %i.eo = add <4 x i8> %wide.load959, splat (i8 -48)
  %i.ep = icmp ult <4 x i8> %i.eo, splat (i8 10)
  %i.eq = or <4 x i1> %vec.phi, %i.en             ; 2 uses
  %i.er = or <4 x i1> %vec.phi958, %i.ep          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store <4 x i8> %i.ek, ptr %i.es, align 1, !tbaa !231
  store <4 x i8> %i.el, ptr %i.et, align 1, !tbaa !231
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !5510

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.er, %i.eq
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ev = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1034 = icmp ne i4 %i.ev, 0
  %rdx.select = zext i1 %.not1034 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i.preheader1093

.lr.ph.i111.i.preheader1093:                      ; preds = %vector.memcheck, %.lr.ph.i111.i.preheader, %middle.block
  %indvars.iv.i112.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.045.i113.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %rdx.select, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i111.i.prol.loopexit, label %.lr.ph.i111.i.prol

.lr.ph.i111.i.prol:                               ; preds = %.lr.ph.i111.i.preheader1093
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i.ph
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !231 ; 4 uses
  %i.ey = add i8 %i.ex, -65
  %or.cond.i114.i.prol = icmp ult i8 %i.ey, 26
  %i.ez = or disjoint i8 %i.ex, 32
  %.sink.i115.i.prol = select i1 %or.cond.i114.i.prol, i8 %i.ez, i8 %i.ex
  %i.fa = add i8 %i.ex, -58
  %i.fb = icmp ult i8 %i.fa, -10
  %.2.i116.i.prol = select i1 %i.fb, i32 %.045.i113.i.ph, i32 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i.ph
  store i8 %.sink.i115.i.prol, ptr %i.fc, align 1, !tbaa !231
  %indvars.iv.next.i117.i.prol = or disjoint i64 %indvars.iv.i112.i.ph, 1
  br label %.lr.ph.i111.i.prol.loopexit

.lr.ph.i111.i.prol.loopexit:                      ; preds = %.lr.ph.i111.i.prol, %.lr.ph.i111.i.preheader1093
  %.2.i116.i.lcssa1094.unr = phi i32 [ poison, %.lr.ph.i111.i.preheader1093 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %indvars.iv.i112.i.unr = phi i64 [ %indvars.iv.i112.i.ph, %.lr.ph.i111.i.preheader1093 ], [ %indvars.iv.next.i117.i.prol, %.lr.ph.i111.i.prol ]
  %.045.i113.i.unr = phi i32 [ %.045.i113.i.ph, %.lr.ph.i111.i.preheader1093 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %i.fd = add nsw i64 %wide.trip.count.i.i, -1
  %i.fe = icmp eq i64 %indvars.iv.i112.i.ph, %i.fd
  br i1 %i.fe, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ %indvars.iv.next.i117.i.1, %.lr.ph.i111.i ], [ %indvars.iv.i112.i.unr, %.lr.ph.i111.i.prol.loopexit ] ; 4 uses
  %.045.i113.i = phi i32 [ %.2.i116.i.1, %.lr.ph.i111.i ], [ %.045.i113.i.unr, %.lr.ph.i111.i.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !231 ; 4 uses
  %i.fh = add i8 %i.fg, -65
  %or.cond.i114.i = icmp ult i8 %i.fh, 26
  %i.fi = or disjoint i8 %i.fg, 32
  %.sink.i115.i = select i1 %or.cond.i114.i, i8 %i.fi, i8 %i.fg
  %i.fj = add i8 %i.fg, -58
  %i.fk = icmp ult i8 %i.fj, -10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i
  store i8 %.sink.i115.i, ptr %i.fl, align 1, !tbaa !231
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i117.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !231 ; 4 uses
  %i.fo = add i8 %i.fn, -65
  %or.cond.i114.i.1 = icmp ult i8 %i.fo, 26
  %i.fp = or disjoint i8 %i.fn, 32
  %.sink.i115.i.1 = select i1 %or.cond.i114.i.1, i8 %i.fp, i8 %i.fn
  %i.fq = add i8 %i.fn, -58
  %i.fr = icmp ult i8 %i.fq, -10
  %i.fs = select i1 %i.fr, i1 %i.fk, i1 false
  %.2.i116.i.1 = select i1 %i.fs, i32 %.045.i113.i, i32 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i117.i
  store i8 %.sink.i115.i.1, ptr %i.ft, align 1, !tbaa !231
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i112.i, 2 ; 2 uses
  %exitcond.not.i118.i.1 = icmp eq i64 %indvars.iv.next.i117.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i.1, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i, !llvm.loop !5511

._crit_edge.loopexit.i119.i:                      ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i, %middle.block
  %.2.i116.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2.i116.i.lcssa1094.unr, %.lr.ph.i111.i.prol.loopexit ], [ %.2.i116.i.1, %.lr.ph.i111.i ]
  %i.fu = icmp eq i32 %.2.i116.i.lcssa, 0
  %i.fv = select i1 %i.fu, i32 10, i32 3          ; 3 uses
  %i.fw = shl nuw nsw i32 %i.fv, 1
  %i.fx = icmp sgt i32 %i.as, %i.fw
  br i1 %i.fx, label %iter.check, label %.loopexit.sink.split.i

iter.check:                                       ; preds = %._crit_edge.loopexit.i119.i
  %i.fy = sub nsw i32 %i.as, %i.fv
  %i.fz = zext nneg i32 %i.fv to i64              ; 6 uses
  %6 = zext i32 %i.fy to i64                      ; 8 uses
  %7 = add nuw nsw i64 %6, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %7, i64 %wide.trip.count.i.i)
  %8 = sub nsw i64 %umax, %6                      ; 7 uses
  %min.iters.check963 = icmp ult i64 %8, 8
  %9 = sub nsw i64 %6, %i.fz
  %diff.check961 = icmp ugt i64 %9, -32
  %or.cond1038 = select i1 %min.iters.check963, i1 true, i1 %diff.check961
  br i1 %or.cond1038, label %.lr.ph50.i103.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check964 = icmp ult i64 %8, 32
  br i1 %min.iters.check964, label %vec.epilog.ph, label %vector.ph965

vector.ph965:                                     ; preds = %vector.main.loop.iter.check
  %i.ga = and i64 %8, 24
  %n.vec966 = and i64 %8, -32                     ; 5 uses
  %i.gb = add nsw i64 %n.vec966, %6
  %i.gc = or disjoint i64 %n.vec966, %i.fz        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.az, i64 %6
  %invariant.gep1139 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph965
  %index968 = phi i64 [ 0, %vector.ph965 ], [ %index.next971, %vector.body967 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index968 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load969 = load <16 x i8>, ptr %gep, align 1, !tbaa !231
  %wide.load970 = load <16 x i8>, ptr %i.gd, align 1, !tbaa !231
  %gep1140 = getelementptr i8, ptr %invariant.gep1139, i64 %index968 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %gep1140, i64 16
  store <16 x i8> %wide.load969, ptr %gep1140, align 1, !tbaa !231
  store <16 x i8> %wide.load970, ptr %i.ge, align 1, !tbaa !231
  %index.next971 = add nuw i64 %index968, 32      ; 2 uses
  %i.gf = icmp eq i64 %index.next971, %n.vec966
  br i1 %i.gf, label %middle.block972, label %vector.body967, !llvm.loop !5512

middle.block972:                                  ; preds = %vector.body967
  %cmp.n973 = icmp eq i64 %8, %n.vec966
  br i1 %cmp.n973, label %.loopexit.loopexit.i108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block972
  %min.epilog.iters.check = icmp eq i64 %i.ga, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i103.i.preheader, label %vec.epilog.ph, !prof !2739

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec966, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec976 = and i64 %8, -8                      ; 4 uses
  %i.gg = add nsw i64 %n.vec976, %6
  %i.gh = add nsw i64 %n.vec976, %i.fz            ; 2 uses
  %invariant.gep1141 = getelementptr i8, ptr %i.az, i64 %6
  %invariant.gep1143 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index977 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next979, %vec.epilog.vector.body ] ; 3 uses
  %gep1142 = getelementptr i8, ptr %invariant.gep1141, i64 %index977
  %wide.load978 = load <8 x i8>, ptr %gep1142, align 1, !tbaa !231
  %gep1144 = getelementptr i8, ptr %invariant.gep1143, i64 %index977
  store <8 x i8> %wide.load978, ptr %gep1144, align 1, !tbaa !231
  %index.next979 = add nuw i64 %index977, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next979, %n.vec976
  br i1 %i.gi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5513

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n980 = icmp eq i64 %8, %n.vec976
  br i1 %cmp.n980, label %.loopexit.loopexit.i108.i, label %.lr.ph50.i103.i.preheader

.lr.ph50.i103.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i104.i.ph = phi i64 [ %6, %iter.check ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ]
  %indvars.iv55.i105.i.ph = phi i64 [ %i.fz, %iter.check ], [ %i.gc, %vec.epilog.iter.check ], [ %i.gh, %vec.epilog.middle.block ]
  br label %.lr.ph50.i103.i

.lr.ph50.i103.i:                                  ; preds = %.lr.ph50.i103.i.preheader, %.lr.ph50.i103.i
  %indvars.iv57.i104.i = phi i64 [ %indvars.iv.next58.i106.i, %.lr.ph50.i103.i ], [ %indvars.iv57.i104.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %indvars.iv55.i105.i = phi i64 [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ], [ %indvars.iv55.i105.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i104.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !231
  %i.gl = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i105.i
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !231
  %indvars.iv.next58.i106.i = add nuw nsw i64 %indvars.iv57.i104.i, 1 ; 2 uses
  %indvars.iv.next56.i107.i = add nuw nsw i64 %indvars.iv55.i105.i, 1 ; 2 uses
  %10 = icmp samesign ult i64 %indvars.iv.next58.i106.i, %wide.trip.count.i.i
  br i1 %10, label %.lr.ph50.i103.i, label %.loopexit.loopexit.i108.i, !llvm.loop !5514

.loopexit.loopexit.i108.i:                        ; preds = %.lr.ph50.i103.i, %vec.epilog.middle.block, %middle.block972
  %indvars.iv.next56.i107.i.lcssa = phi i64 [ %i.gh, %vec.epilog.middle.block ], [ %i.gc, %middle.block972 ], [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ]
  %i.gm = trunc nuw i64 %indvars.iv.next56.i107.i.lcssa to i32
  br label %.loopexit.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ %i.dy, %bb.i ], [ %i.dw, %bb.j ]
  %i.gn = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.gn, align 1, !tbaa !231
  %indvars.iv.next787.i = add nuw nsw i64 %indvars.iv786.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next787.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5515

._crit_edge.i:                                    ; preds = %bb.k
  %i.go = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gp = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store ptr %i.go, ptr %i.b, align 8, !tbaa !259
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !231 ; 2 uses
  %i.gr = icmp eq i8 %i.gq, 115
  br i1 %i.gr, label %.lr.ph.i121.1.i, label %.lr.ph.i150.i

.lr.ph.i121.1.i:                                  ; preds = %._crit_edge.i
  %i.gs = getelementptr i8, ptr %i.gp, i64 2      ; 4 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !231 ; 2 uses
  switch i8 %i.gt, label %.lr.ph.i137.1.i.thread [
    i8 101, label %.lr.ph.i121.2.i
    i8 115, label %.lr.ph33.i144.preheader.i
  ]

.lr.ph.i121.2.i:                                  ; preds = %.lr.ph.i121.1.i
  %i.gu = getelementptr i8, ptr %i.gp, i64 3      ; 5 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !231
  switch i8 %i.gv, label %.lr.ph.i137.1.i.thread [
    i8 115, label %.lr.ph.i121.3.i
    i8 105, label %.lr.ph33.i131.preheader.i
  ]

.lr.ph.i121.3.i:                                  ; preds = %.lr.ph.i121.2.i
  %i.gw = getelementptr i8, ptr %i.gp, i64 4
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !231
  %i.gy = icmp eq i8 %i.gx, 115
  br i1 %i.gy, label %.lr.ph33.i.preheader.i, label %.lr.ph.i137.1.i.thread

.lr.ph33.i.preheader.i:                           ; preds = %.lr.ph.i121.3.i
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !259
  br label %stem.exit162.thread.i.thread

.lr.ph33.i131.preheader.i:                        ; preds = %.lr.ph.i121.2.i
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !259
  br label %stem.exit162.thread.i.thread

.lr.ph33.i144.preheader.i:                        ; preds = %.lr.ph.i121.1.i
  store i8 115, ptr %i.gs, align 1, !tbaa !231
  br label %stem.exit162.thread.i.thread

.lr.ph.i137.1.i.thread:                           ; preds = %.lr.ph.i121.2.i, %.lr.ph.i121.3.i, %.lr.ph.i121.1.i
  store ptr %i.gs, ptr %i.b, align 8, !tbaa !259
  br label %.lr.ph.i150.i

.lr.ph.i150.i:                                    ; preds = %.lr.ph.i137.1.i.thread, %._crit_edge.i
  %i.gz = phi i8 [ %i.gq, %._crit_edge.i ], [ %i.gt, %.lr.ph.i137.1.i.thread ]
  %i.ha = phi ptr [ %i.go, %._crit_edge.i ], [ %i.gs, %.lr.ph.i137.1.i.thread ] ; 14 uses
  %scevgep799.i = getelementptr i8, ptr %i.ha, i64 3 ; 5 uses
  switch i8 %i.gz, label %stem.exit162.thread.ithread-pre-split [
    i8 100, label %.lr.ph.i150.1.i
    i8 103, label %.lr.ph.i163.1.i
  ]

.lr.ph.i150.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 3 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !231
  %i.hd = icmp eq i8 %i.hc, 101
  br i1 %i.hd, label %.lr.ph.i150.2.i, label %stem.exit162.thread.ithread-pre-split

.lr.ph.i150.2.i:                                  ; preds = %.lr.ph.i150.1.i
  %i.he = getelementptr i8, ptr %i.ha, i64 2      ; 3 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !231 ; 2 uses
  %i.hg = icmp eq i8 %i.hf, 101
  br i1 %i.hg, label %._crit_edge.i155.i, label %._crit_edge.i178.i

._crit_edge.i155.i:                               ; preds = %.lr.ph.i150.2.i
  %i.hh = load i8, ptr %scevgep799.i, align 1, !tbaa !231 ; 2 uses
  %i.hi = icmp eq i8 %i.hh, 0
  br i1 %i.hi, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i

.lr.ph.i419.i:                                    ; preds = %._crit_edge.i155.i, %bb.n
  %i.hj = phi i8 [ %i.hu, %bb.n ], [ %i.hh, %._crit_edge.i155.i ]
  %.011.i.i = phi ptr [ %i.ht, %bb.n ], [ %scevgep799.i, %._crit_edge.i155.i ] ; 3 uses
  %i.hk = sext i8 %i.hj to i64
  %i.hl = getelementptr i8, ptr @cType, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -97
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !231 ; 2 uses
  %i.ho = icmp slt i8 %i.hn, 2
  br i1 %i.ho, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i419.i
  %i.hp = sext i8 %i.hn to i32
  %i.hq = sub nsw i32 1, %i.hp
  br label %isVowel.exit.i420.i

bb.m:                                             ; preds = %.lr.ph.i419.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.hs = call fastcc i32 @isConsonant(ptr noundef nonnull readonly %i.hr), !inline_history !5516
  br label %isVowel.exit.i420.i

isVowel.exit.i420.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i421.i = phi i32 [ %i.hs, %bb.m ], [ %i.hq, %bb.l ]
  %.not.i422.i = icmp eq i32 %.0.i.i421.i, 0
  br i1 %.not.i422.i, label %.preheader.i.i, label %bb.n

bb.n:                                             ; preds = %isVowel.exit.i420.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !231 ; 2 uses
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i, !llvm.loop !5517

.preheader.i.i:                                   ; preds = %isVowel.exit.i420.i, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.hx, %.preheader.i.i ], [ %.011.i.i, %isVowel.exit.i420.i ] ; 3 uses
  %i.hw = call fastcc i32 @isConsonant(ptr noundef nonnull %.1.i.i)
  %.not7.i.i = icmp eq i32 %i.hw, 0
  %i.hx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %.not7.i.i, label %m_gt_0.exit.i, label %.preheader.i.i, !llvm.loop !5518

m_gt_0.exit.i:                                    ; preds = %.preheader.i.i
  %i.hy = load i8, ptr %.1.i.i, align 1, !tbaa !231
  %.not619.i = icmp eq i8 %i.hy, 0
  br i1 %.not619.i, label %stem.exit162.thread.ithread-pre-split, label %stem.exit162.thread.thread.i

stem.exit162.thread.thread.i:                     ; preds = %m_gt_0.exit.i
  store ptr %i.hb, ptr %i.b, align 8, !tbaa !259
  br label %stem.exit162.thread.i.thread

.lr.ph.i163.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !231
  %i.ib = icmp eq i8 %i.ia, 110
  br i1 %i.ib, label %.lr.ph.i163.2.i, label %stem.exit162.thread.ithread-pre-split

.lr.ph.i163.2.i:                                  ; preds = %.lr.ph.i163.1.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !231
  %i.ie = icmp eq i8 %i.id, 105
  br i1 %i.ie, label %._crit_edge.i168.i, label %stem.exit162.thread.ithread-pre-split

._crit_edge.i168.i:                               ; preds = %.lr.ph.i163.2.i, %._crit_edge.i168.i
  %.0.i423.i = phi ptr [ %i.ig, %._crit_edge.i168.i ], [ %scevgep799.i, %.lr.ph.i163.2.i ] ; 3 uses
  %i.if = call fastcc i32 @isConsonant(ptr noundef nonnull %.0.i423.i)
  %.not.i424.i = icmp eq i32 %i.if, 0
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i423.i, i64 1
  br i1 %.not.i424.i, label %hasVowel.exit425.i, label %._crit_edge.i168.i, !llvm.loop !5519

hasVowel.exit425.i:                               ; preds = %._crit_edge.i168.i
  %i.ih = load i8, ptr %.0.i423.i, align 1, !tbaa !231
  %.not617.i = icmp eq i8 %i.ih, 0
  br i1 %.not617.i, label %stem.exit162.thread.ithread-pre-split, label %hasVowel.exit425.i..lr.ph.i183.i_crit_edge

hasVowel.exit425.i..lr.ph.i183.i_crit_edge:       ; preds = %hasVowel.exit425.i
  %.pre707 = load i8, ptr %scevgep799.i, align 1, !tbaa !231
  br label %.lr.ph.i183.i

._crit_edge.i178.i:                               ; preds = %.lr.ph.i150.2.i, %._crit_edge.i178.i
  %.0.i426.i = phi ptr [ %i.ij, %._crit_edge.i178.i ], [ %i.he, %.lr.ph.i150.2.i ] ; 3 uses
  %i.ii = call fastcc i32 @isConsonant(ptr noundef nonnull %.0.i426.i)
  %.not.i427.i = icmp eq i32 %i.ii, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i426.i, i64 1
  br i1 %.not.i427.i, label %hasVowel.exit428.i, label %._crit_edge.i178.i, !llvm.loop !5519

hasVowel.exit428.i:                               ; preds = %._crit_edge.i178.i
  %i.ik = load i8, ptr %.0.i426.i, align 1, !tbaa !231
  %.not.i70 = icmp eq i8 %i.ik, 0
  br i1 %.not.i70, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i183.i

.lr.ph.i183.i:                                    ; preds = %hasVowel.exit425.i..lr.ph.i183.i_crit_edge, %hasVowel.exit428.i
  %i.il = phi i8 [ %i.hf, %hasVowel.exit428.i ], [ %.pre707, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 5 uses
  %storemerge = phi ptr [ %i.he, %hasVowel.exit428.i ], [ %scevgep799.i, %hasVowel.exit425.i..lr.ph.i183.i_crit_edge ] ; 18 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !259
  switch i8 %i.il, label %.lr.ph.i209.thread.i [
    i8 116, label %.lr.ph.i183.1.i
    i8 108, label %.lr.ph.i196.1.i
    i8 122, label %.lr.ph.i209.1.i
  ]

.lr.ph.i183.1.i:                                  ; preds = %.lr.ph.i183.i
  %i.im = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !231
  %i.io = icmp eq i8 %i.in, 97
  br i1 %i.io, label %.lr.ph33.i190.preheader.i, label %.lr.ph.i209.thread.i

.lr.ph33.i190.preheader.i:                        ; preds = %.lr.ph.i183.1.i
  %i.ip = getelementptr inbounds i8, ptr %storemerge, i64 -1 ; 3 uses
  store i8 101, ptr %i.ip, align 1, !tbaa !231
  store ptr %i.ip, ptr %i.b, align 8, !tbaa !259
  br label %stem.exit162.thread.i.thread

.lr.ph.i196.1.i:                                  ; preds = %.lr.ph.i183.i
  %i.iq = getelementptr inbounds nuw i8, ptr %storemerge, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !231
end_hunk_20
begin_hunk_21_@fts3TermSelect:bb.a
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.fo(ptr noundef nonnull %i.fn) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.au:                                            ; preds = %bb.aq
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.fp(ptr noundef nonnull %i.fa) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %.preheader, %sqlite3_mutex_enter.exit.i, %bb.at, %bb.au
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !5852

.loopexit:                                        ; preds = %sqlite3_free.exit, %bb.ap
  %.246 = phi i32 [ 0, %bb.ap ], [ %.2, %sqlite3_free.exit ]
  call fastcc void @sqlite3Fts3SegReaderFinish(ptr noundef %i.f), !inline_history !5828
  %i.fq = icmp eq ptr %i.f, null
  br i1 %i.fq, label %fts3SegReaderCursorFree.exit, label %bb.av

bb.av:                                            ; preds = %.loopexit
  %i.fr = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i.i39 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i39, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i40, label %sqlite3_mutex_enter.exit.i.i41, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  call void %i.ft(ptr noundef nonnull %i.fs) #58, !inline_history !5829
  br label %sqlite3_mutex_enter.exit.i.i41

sqlite3_mutex_enter.exit.i.i41:                   ; preds = %bb.ax, %bb.aw
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.fv = call i32 %i.fu(ptr noundef nonnull %i.f) #58, !inline_history !5830
  %i.fw = sext i32 %i.fv to i64
  %i.fx = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.fy = sub nsw i64 %i.fx, %i.fw
  store i64 %i.fy, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.fz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ga = add nsw i64 %i.fz, -1
  store i64 %i.ga, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.gb(ptr noundef nonnull %i.f) #58, !inline_history !5831
  %i.gc = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i.i42 = icmp eq ptr %i.gc, null
  br i1 %.not.i4.i.i42, label %fts3SegReaderCursorFree.exit, label %bb.ay

bb.ay:                                            ; preds = %sqlite3_mutex_enter.exit.i.i41
  %i.gd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.gd(ptr noundef nonnull %i.gc) #58, !inline_history !5832
  br label %fts3SegReaderCursorFree.exit

bb.az:                                            ; preds = %bb.av
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  call void %i.ge(ptr noundef nonnull %i.f) #58, !inline_history !5831
  br label %fts3SegReaderCursorFree.exit

fts3SegReaderCursorFree.exit:                     ; preds = %.loopexit, %sqlite3_mutex_enter.exit.i.i41, %bb.ay, %bb.az
  store ptr null, ptr %i.e, align 8, !tbaa !5774
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret i32 %.246
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @fts3EvalPhraseMergeToken(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = alloca ptr, align 8                      ; 9 uses
  %i.i = alloca ptr, align 8                      ; 8 uses
  %i.j = icmp eq ptr %3, null
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !5762   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.o(ptr noundef nonnull %i.n) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.k) #58, !inline_history !277
  %i.r = sext i32 %i.q to i64
  %i.s = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.t = sub nsw i64 %i.s, %i.r
  store i64 %i.t, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.v = add nsw i64 %i.u, -1
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.w(ptr noundef nonnull %i.k) #58, !inline_history !278
  %i.x = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.x, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.y(ptr noundef nonnull %i.x) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %bb.c
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.z(ptr noundef nonnull %i.k) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.b, %sqlite3_mutex_enter.exit.i, %bb.f, %bb.g
  store ptr null, ptr %1, align 8, !tbaa !5762
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.aa, align 8, !tbaa !5833
  br label %sqlite3_free.exit45

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27 ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %3, ptr %1, align 8, !tbaa !5762
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %4, ptr %i.ae, align 8, !tbaa !5833
  br label %sqlite3_free.exit45

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %1, align 8, !tbaa !5762  ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i41 = icmp eq i32 %i.ah, 0
  br i1 %.not.i41, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i42, label %sqlite3_mutex_enter.exit.i43, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.aj(ptr noundef nonnull %i.ai) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i43

sqlite3_mutex_enter.exit.i43:                     ; preds = %bb.m, %bb.l
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.al = tail call i32 %i.ak(ptr noundef nonnull %3) #58, !inline_history !277
  %i.am = sext i32 %i.al to i64
  %i.an = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ao = sub nsw i64 %i.an, %i.am
  store i64 %i.ao, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aq = add nsw i64 %i.ap, -1
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.ar(ptr noundef nonnull %3) #58, !inline_history !278
  %i.as = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i44 = icmp eq ptr %i.as, null
  br i1 %.not.i4.i44, label %sqlite3_free.exit45, label %bb.n

bb.n:                                             ; preds = %sqlite3_mutex_enter.exit.i43
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.at(ptr noundef nonnull %i.as) #58, !inline_history !279
  br label %sqlite3_free.exit45

bb.o:                                             ; preds = %bb.k
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.au(ptr noundef nonnull %3) #58, !inline_history !278
  br label %sqlite3_free.exit45

bb.p:                                             ; preds = %bb.j
  %i.av = icmp slt i32 %i.ac, %2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !5833 ; 2 uses
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = sub nuw nsw i32 %2, %i.ac
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.az = sub nsw i32 %i.ac, %2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.056 = phi ptr [ %3, %bb.q ], [ %i.af, %bb.r ] ; 10 uses
  %.055 = phi i32 [ %4, %bb.q ], [ %i.ax, %bb.r ] ; 4 uses
  %.037 = phi ptr [ %i.af, %bb.q ], [ %3, %bb.r ] ; 6 uses
  %.036 = phi i32 [ %i.ax, %bb.q ], [ %4, %bb.r ] ; 2 uses
  %.0 = phi i32 [ %i.ay, %bb.q ], [ %i.az, %bb.r ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 463
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !5448
  %i.bc = sext i32 %.036 to i64
  %i.bd = getelementptr inbounds i8, ptr %.037, i64 %i.bc ; 2 uses
  %i.be = sext i32 %.055 to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.056, i64 %i.be ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #58
  %.not.i46 = icmp eq i8 %i.bb, 0                 ; 8 uses
  br i1 %.not.i46, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = tail call i32 @sqlite3_initialize(), !inline_history !5853
  %.not.i.i47 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i47, label %sqlite3_malloc64.exit.i, label %bb.am

sqlite3_malloc64.exit.i:                          ; preds = %bb.t
  %i.bh = add nsw i64 %i.be, 10
  %i.bi = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bh), !inline_history !5853 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.am, label %bb.u

bb.u:                                             ; preds = %sqlite3_malloc64.exit.i, %bb.s
  %.0.i = phi ptr [ %i.bi, %sqlite3_malloc64.exit.i ], [ %.056, %bb.s ] ; 7 uses
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !259
  %.not.i39.i = icmp sgt i32 %.036, 0
  br i1 %.not.i39.i, label %bb.v, label %fts3GetDeltaVarint3.exit.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  %i.bk = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %.037, ptr noundef nonnull %i.f), !inline_history !5854
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %.037, i64 %i.bl
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  br label %fts3GetDeltaVarint3.exit.i

fts3GetDeltaVarint3.exit.i:                       ; preds = %bb.v, %bb.u
  %i.bo = phi ptr [ %i.bm, %bb.v ], [ null, %bb.u ] ; 3 uses
  %.293.i = phi i64 [ %i.bn, %bb.v ], [ 0, %bb.u ]
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !259
  %.not.i40.i = icmp sgt i32 %.055, 0
  br i1 %.not.i40.i, label %fts3GetDeltaVarint3.exit42.i, label %._crit_edge.i

fts3GetDeltaVarint3.exit42.i:                     ; preds = %fts3GetDeltaVarint3.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  %i.bp = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %.056, ptr noundef nonnull %i.e), !inline_history !5854
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.056, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.e, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  store ptr %i.br, ptr %i.h, align 8, !tbaa !259
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fts3GetDeltaVarint3.exit42.i, %fts3GetDeltaVarint3.exit51.i
  %i.bt = phi ptr [ %i.ed, %fts3GetDeltaVarint3.exit51.i ], [ %i.br, %fts3GetDeltaVarint3.exit42.i ] ; 3 uses
  %i.bu = phi ptr [ %i.ee, %fts3GetDeltaVarint3.exit51.i ], [ %i.bo, %fts3GetDeltaVarint3.exit42.i ] ; 3 uses
  %.084103.i = phi i32 [ %.2.i, %fts3GetDeltaVarint3.exit51.i ], [ 0, %fts3GetDeltaVarint3.exit42.i ] ; 4 uses
  %.085102.i = phi i64 [ %.287.i, %fts3GetDeltaVarint3.exit51.i ], [ 0, %fts3GetDeltaVarint3.exit42.i ] ; 5 uses
  %.088101.i = phi i64 [ %.189.i, %fts3GetDeltaVarint3.exit51.i ], [ %i.bs, %fts3GetDeltaVarint3.exit42.i ] ; 4 uses
  %.091100.i = phi i64 [ %.192.i, %fts3GetDeltaVarint3.exit51.i ], [ %.293.i, %fts3GetDeltaVarint3.exit42.i ] ; 8 uses
  %i.bv = tail call i32 @llvm.scmp.i32.i64(i64 %.091100.i, i64 %.088101.i) ; 2 uses
  %i.bw = sub nsw i32 0, %i.bv
  %i.bx = select i1 %.not.i46, i32 %i.bv, i32 %i.bw ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %.lr.ph.i
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !259 ; 4 uses
  %i.ca = icmp eq i32 %.084103.i, 0
  %or.cond.i = select i1 %.not.i46, i1 true, i1 %i.ca
  %i.cb = sub i64 %.091100.i, %.085102.i
  %i.cc = sub i64 %.085102.i, %.091100.i
  %.0.i43.i = select i1 %or.cond.i, i64 %i.cb, i64 %i.cc
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.08.i.i.i = phi ptr [ %i.bz, %bb.w ], [ %i.cf, %bb.x ] ; 3 uses
  %.0.i.i.i = phi i64 [ %.0.i43.i, %bb.w ], [ %i.cg, %bb.x ] ; 2 uses
  %i.cd = trunc i64 %.0.i.i.i to i8               ; 2 uses
  %i.ce = or i8 %i.cd, -128
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1 ; 2 uses
  store i8 %i.ce, ptr %.08.i.i.i, align 1, !tbaa !231
  %i.cg = lshr i64 %.0.i.i.i, 7                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i, label %fts3PutDeltaVarint3.exit.i, label %bb.x, !llvm.loop !5472

fts3PutDeltaVarint3.exit.i:                       ; preds = %bb.x
  store i8 %i.cd, ptr %.08.i.i.i, align 1, !tbaa !231
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.bz to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %sext.i.i = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext.i.i, 32
  %i.cl = getelementptr inbounds i8, ptr %i.bz, i64 %i.ck
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !259
  %i.cm = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.i, i32 noundef %.0, i32 noundef 0, i32 noundef 1, ptr noundef %i.g, ptr noundef %i.h), !inline_history !5854
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %fts3PutDeltaVarint3.exit.i
  store ptr %i.bz, ptr %i.i, align 8, !tbaa !259
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %fts3PutDeltaVarint3.exit.i
  %.186.i = phi i64 [ %.085102.i, %bb.y ], [ %.091100.i, %fts3PutDeltaVarint3.exit.i ]
  %.1.i = phi i32 [ %.084103.i, %bb.y ], [ 1, %fts3PutDeltaVarint3.exit.i ]
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !259 ; 3 uses
  %.not.i44.i = icmp ult ptr %i.co, %i.bd
  br i1 %.not.i44.i, label %bb.aa, label %fts3GetDeltaVarint3.exit46.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.cp = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.co, ptr noundef nonnull %i.d), !inline_history !5854
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %i.ct = sub i64 0, %i.cs
  %storemerge.p.i.i = select i1 %.not.i46, i64 %i.cs, i64 %i.ct
  %storemerge.i45.i = add i64 %storemerge.p.i.i, %.091100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  br label %fts3GetDeltaVarint3.exit46.i

fts3GetDeltaVarint3.exit46.i:                     ; preds = %bb.aa, %bb.z
  %.sink108.i = phi ptr [ %i.cr, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %.394.i = phi i64 [ %storemerge.i45.i, %bb.aa ], [ %.091100.i, %bb.z ]
  store ptr %.sink108.i, ptr %i.g, align 8, !tbaa !259
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !259 ; 3 uses
  %.not.i47.i = icmp ult ptr %i.cu, %i.bf
  br i1 %.not.i47.i, label %bb.ab, label %._crit_edge.loopexit.i

bb.ab:                                            ; preds = %fts3GetDeltaVarint3.exit46.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.cv = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.cu, ptr noundef nonnull %i.c), !inline_history !5854
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw ; 2 uses
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !259
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.cz = sub i64 0, %i.cy
  %storemerge.p.i49.i = select i1 %.not.i46, i64 %i.cy, i64 %i.cz
  %storemerge.i50.i = add i64 %storemerge.p.i49.i, %.088101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %fts3GetDeltaVarint3.exit51.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.da = icmp slt i32 %i.bx, 0
  br i1 %i.da, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i8, ptr %i.bu, align 1, !tbaa !231 ; 2 uses
  %.not21.i.i = icmp eq i8 %i.db, 0
  br i1 %.not21.i.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %i.dc = sext i8 %i.db to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.dd = phi i32 [ %i.dg, %.lr.ph.i.i ], [ %i.dc, %.lr.ph.preheader.i.i ]
  %.022.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.bu, %.lr.ph.preheader.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 1 ; 3 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !231
  %i.dg = sext i8 %i.df to i32                    ; 2 uses
  %i.dh = and i32 %i.dd, -128
  %i.di = or i32 %i.dh, %i.dg
  %.not.i52.i = icmp eq i32 %i.di, 0
  br i1 %.not.i52.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.i.i, !llvm.loop !5478

fts3PoslistCopy.exit.i:                           ; preds = %.lr.ph.i.i, %bb.ad
  %.0.lcssa.i.i = phi ptr [ %i.bu, %bb.ad ], [ %i.de, %.lr.ph.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 4 uses
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !259
  %.not.i53.i = icmp ult ptr %i.dj, %i.bd
  br i1 %.not.i53.i, label %bb.ae, label %._crit_edge.loopexit.i

bb.ae:                                            ; preds = %fts3PoslistCopy.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.dk = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.b), !inline_history !5854
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %i.dl ; 2 uses
  store ptr %i.dm, ptr %i.g, align 8, !tbaa !259
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  %i.do = sub i64 0, %i.dn
  %storemerge.p.i55.i = select i1 %.not.i46, i64 %i.dn, i64 %i.do
  %storemerge.i56.i = add i64 %storemerge.p.i55.i, %.091100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
end_hunk_21
begin_hunk_22_@fts3PendingListAppendVarint:bb.a
  %i.af = ashr exact i64 %sext, 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !5906
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !5443
  %.pre54 = load i64, ptr %i.o, align 8, !tbaa !5440
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k, %bb.c
  %i.aj = phi i64 [ %.pre54, %bb.k ], [ %i.g, %._crit_edge ], [ 0, %bb.c ]
  %i.ak = phi ptr [ %i.ah, %bb.k ], [ %.pre, %._crit_edge ], [ %i.e, %bb.c ]
  %.028 = phi ptr [ %i.o, %bb.k ], [ %i.a, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.aj ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.08.i = phi ptr [ %i.am, %bb.l ], [ %i.ap, %bb.m ] ; 3 uses
  %.0.i39 = phi i64 [ %1, %bb.l ], [ %i.aq, %bb.m ] ; 2 uses
  %i.an = trunc i64 %.0.i39 to i8                 ; 2 uses
  %i.ao = or i8 %i.an, -128
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  store i8 %i.ao, ptr %.08.i, align 1, !tbaa !231
  %i.aq = lshr i64 %.0.i39, 7                     ; 2 uses
  %.not.i40 = icmp eq i64 %i.aq, 0
  br i1 %.not.i40, label %sqlite3Fts3PutVarint.exit, label %bb.m, !llvm.loop !5472

sqlite3Fts3PutVarint.exit:                        ; preds = %bb.m
  store i8 %i.an, ptr %.08.i, align 1, !tbaa !231
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  %sext51 = shl i64 %i.at, 32
  %i.au = ashr exact i64 %sext51, 32
  %i.av = load i64, ptr %.028, align 8, !tbaa !5440
  %i.aw = add nsw i64 %i.av, %i.au                ; 2 uses
  store i64 %i.aw, ptr %.028, align 8, !tbaa !5440
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !5443
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.aw
  store i8 0, ptr %i.ay, align 1, !tbaa !231
  br label %sqlite3_malloc64.exit.thread.sink.split

sqlite3_malloc64.exit.thread.sink.split:          ; preds = %sqlite3_realloc64.exit.thread, %sqlite3_mutex_enter.exit.i, %bb.i, %bb.j, %sqlite3Fts3PutVarint.exit
  %.sink = phi ptr [ %.028, %sqlite3Fts3PutVarint.exit ], [ null, %bb.j ], [ null, %bb.i ], [ null, %sqlite3_mutex_enter.exit.i ], [ null, %sqlite3_realloc64.exit.thread ]
  %.1.ph = phi i32 [ 0, %sqlite3Fts3PutVarint.exit ], [ 7, %bb.j ], [ 7, %bb.i ], [ 7, %sqlite3_mutex_enter.exit.i ], [ 7, %sqlite3_realloc64.exit.thread ]
  store ptr %.sink, ptr %0, align 8, !tbaa !5903
  br label %sqlite3_malloc64.exit.thread

sqlite3_malloc64.exit.thread:                     ; preds = %sqlite3_malloc64.exit.thread.sink.split, %bb.b, %sqlite3_malloc64.exit
  %.1 = phi i32 [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.b ], [ %.1.ph, %sqlite3_malloc64.exit.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @fts3EvalNearTrim(i32 noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = add nsw i32 %i.h, %0
  %i.j = load i32, ptr %3, align 4, !tbaa !27
  %i.k = add nsw i32 %i.j, %0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !5769 ; 7 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !259
  store ptr %i.m, ptr %i.e, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !259
  %i.n = load ptr, ptr %2, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr %1, ptr %i.b, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.o = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.b, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %i.e) ; 0 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !259  ; 8 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !259
  store ptr %i.p, ptr %i.d, align 8, !tbaa !259
  store ptr %i.n, ptr %2, align 8, !tbaa !259
  store ptr %i.m, ptr %i.e, align 8, !tbaa !259
  %i.q = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.c, i32 noundef %i.k, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.e, ptr noundef nonnull %2) ; 0 uses
  %.not.i = icmp eq ptr %i.p, %1
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %i.r, %i.p
  br i1 %.not15.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call fastcc i32 @fts3PoslistMerge(ptr noundef nonnull %i.f, ptr noundef %i.a, ptr noundef %i.d) ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !259
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr %1, align 1, !tbaa !231     ; 2 uses
  %.not21.i.i = icmp eq i8 %i.t, 0
  br i1 %.not21.i.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.u = sext i8 %i.t to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.v = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.u, %.lr.ph.preheader.i.i ]
  %.022.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %1, %.lr.ph.preheader.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !231
  %i.y = sext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.v, -128
  %i.aa = or i32 %i.z, %i.y
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %fts3PoslistCopy.exit.i, label %.lr.ph.i.i, !llvm.loop !5478

fts3PoslistCopy.exit.i:                           ; preds = %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi ptr [ %1, %bb.d ], [ %i.w, %.lr.ph.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %sext20.i.i = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext20.i.i, 32          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %1, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %i.m, i64 %i.af
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %.not17.i = icmp eq ptr %i.r, %1
  br i1 %.not17.i, label %fts3PoslistNearMerge.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.p, align 1, !tbaa !231  ; 2 uses
  %.not21.i18.i = icmp eq i8 %i.ah, 0
  br i1 %.not21.i18.i, label %fts3PoslistCopy.exit25.i, label %.lr.ph.preheader.i19.i

.lr.ph.preheader.i19.i:                           ; preds = %bb.f
  %i.ai = sext i8 %i.ah to i32
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.preheader.i19.i
  %i.aj = phi i32 [ %i.am, %.lr.ph.i20.i ], [ %i.ai, %.lr.ph.preheader.i19.i ]
  %.022.i21.i = phi ptr [ %i.ak, %.lr.ph.i20.i ], [ %i.p, %.lr.ph.preheader.i19.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.022.i21.i, i64 1 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !231
  %i.am = sext i8 %i.al to i32                    ; 2 uses
  %i.an = and i32 %i.aj, -128
  %i.ao = or i32 %i.an, %i.am
  %.not.i22.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i22.i, label %fts3PoslistCopy.exit25.i, label %.lr.ph.i20.i, !llvm.loop !5478

fts3PoslistCopy.exit25.i:                         ; preds = %.lr.ph.i20.i, %bb.f
  %.0.lcssa.i23.i = phi ptr [ %i.p, %bb.f ], [ %i.ak, %.lr.ph.i20.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i23.i, i64 1
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %sext20.i24.i = shl i64 %i.as, 32
  %i.at = ashr exact i64 %sext20.i24.i, 32        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.p, i64 %i.at, i1 false)
  %i.au = getelementptr inbounds i8, ptr %i.m, i64 %i.at
  br label %bb.g

fts3PoslistNearMerge.exit:                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.g:                                             ; preds = %bb.c, %fts3PoslistCopy.exit.i, %fts3PoslistCopy.exit25.i
  %i.av = phi ptr [ %.pre, %bb.c ], [ %i.ag, %fts3PoslistCopy.exit.i ], [ %i.au, %fts3PoslistCopy.exit25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !5769 ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1                   ; 4 uses
  %i.bc = icmp sgt i32 %i.ba, 0
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !5791 ; 2 uses
  %.not25 = icmp sgt i32 %i.bb, %i.be
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bf
  %i.bh = sub nuw nsw i32 %i.be, %i.bb
  %i.bi = zext nneg i32 %i.bh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 0, i64 %i.bi, i1 false)
  store i32 %i.bb, ptr %i.bd, align 8, !tbaa !5791
  %.pre32 = load ptr, ptr %i.l, align 8, !tbaa !5769
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = phi ptr [ %.pre32, %bb.i ], [ %i.aw, %bb.h ], [ %i.aw, %bb.g ]
  store ptr %i.bj, ptr %2, align 8, !tbaa !259
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !27
  store i32 %i.bk, ptr %3, align 4, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %fts3PoslistNearMerge.exit, %bb.j
  %.0.i29 = phi i32 [ 1, %bb.j ], [ 0, %fts3PoslistNearMerge.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  ret i32 %.0.i29
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3DeleteByRowid(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.g, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  %i.h = call fastcc i32 @fts3SqlStmt(ptr noundef %0, i32 noundef 7, ptr noundef %i.f, ptr noundef nonnull %i.e), !inline_history !5944 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !522  ; 8 uses
  br i1 %i.i, label %bb.b, label %fts3DeleteTerms.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = call i32 @sqlite3_step(ptr noundef %i.j), !inline_history !5944
  %i.l = icmp eq i32 %i.k, 100
  br i1 %i.l, label %bb.c, label %fts3DeleteTerms.exit.thread63

fts3DeleteTerms.exit.thread63:                    ; preds = %bb.b
  %i.m = call i32 @sqlite3_reset(ptr noundef %i.j), !inline_history !5944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5541
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %langidFromSelect.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !5368
  %i.r = add nsw i32 %i.q, 1
  %i.s = call i32 @sqlite3_column_int(ptr noundef %i.j, i32 noundef %i.r), !inline_history !5944
  br label %langidFromSelect.exit.i

langidFromSelect.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.t = call i64 @sqlite3_column_int64(ptr noundef %i.j, i32 noundef 0), !inline_history !5944 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !5646 ; 2 uses
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %bb.i, label %bb.e

bb.e:                                             ; preds = %langidFromSelect.exit.i
  %i.x = icmp eq i64 %i.t, %i.v
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.z = load i32, ptr %i.y, align 4, !tbaa !5647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !5393
  %.not.i34.i = icmp eq i32 %i.ac, %.0.i.i
  br i1 %.not.i34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !5648
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !5649
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %langidFromSelect.exit.i
  %i.ai = call fastcc i32 @sqlite3Fts3PendingTermsFlush(ptr noundef nonnull %0), !inline_history !5945 ; 2 uses
  %.not22.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not22.not.i.i, label %.lr.ph.i, label %fts3DeleteTerms.exit.thread

.lr.ph.i:                                         ; preds = %bb.i, %bb.h
  store i64 %i.t, ptr %i.u, align 8, !tbaa !5646
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 %.0.i.i, ptr %i.aj, align 8, !tbaa !5393
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 1, ptr %i.ak, align 4, !tbaa !5647
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !5368
  %i.ao = sext i32 %i.an to i64
  %.not32.i = icmp sgt i64 %indvars.iv.i, %i.ao
  br i1 %.not32.i, label %fts3DeleteTerms.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !5651
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !231
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.av = call ptr @sqlite3_column_text(ptr noundef %i.j, i32 noundef %i.au), !inline_history !5944
  %i.aw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ap
  %i.ax = call fastcc i32 @fts3PendingTermsAdd(ptr noundef nonnull %0, i32 noundef %.0.i.i, ptr noundef %i.av, i32 noundef -1, ptr noundef nonnull %i.aw), !inline_history !5944
  %i.ay = call i32 @sqlite3_column_bytes(ptr noundef %i.j, i32 noundef %i.au), !inline_history !5944
  %i.az = load i32, ptr %i.al, align 8, !tbaa !5368
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = add i32 %i.bc, %i.ay
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.ax, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.be = icmp eq i32 %.1.i, 0
  br i1 %i.be, label %bb.j, label %fts3DeleteTerms.exit.thread, !llvm.loop !5946

fts3DeleteTerms.exit.thread:                      ; preds = %bb.m, %bb.a, %bb.i
  %.0.lcssa.sink.i.ph = phi i32 [ %i.h, %bb.a ], [ %i.ai, %bb.i ], [ %.1.i, %bb.m ]
  %i.bf = call i32 @sqlite3_reset(ptr noundef %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

fts3DeleteTerms.exit:                             ; preds = %bb.j
  %i.bg = call i32 @sqlite3_reset(ptr noundef %i.j), !inline_history !5944 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %bb.y

bb.n:                                             ; preds = %fts3DeleteTerms.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !5540
  %.not.i15 = icmp eq ptr %i.bj, null
  br i1 %.not.i15, label %bb.o, label %.thread48

bb.o:                                             ; preds = %bb.n
  %i.bk = call fastcc i32 @fts3SqlStmt(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.d, ptr noundef nonnull %i.c), !inline_history !5947 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %fts3IsEmpty.exit.thread39

fts3IsEmpty.exit.thread39:                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !522 ; 4 uses
  %i.bn = call i32 @sqlite3_step(ptr noundef %i.bm), !inline_history !5947
  %i.bo = icmp eq i32 %i.bn, 100
  br i1 %i.bo, label %fts3IsEmpty.exit, label %fts3IsEmpty.exit.thread

fts3IsEmpty.exit:                                 ; preds = %bb.p
  %i.bp = call i32 @sqlite3_column_int(ptr noundef %i.bm, i32 noundef 0), !inline_history !5947
  %i.bq = call i32 @sqlite3_reset(ptr noundef %i.bm), !inline_history !5947 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %bb.y

fts3IsEmpty.exit.thread:                          ; preds = %bb.p
  %i.bs = call i32 @sqlite3_reset(ptr noundef %i.bm), !inline_history !5947 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread, label %bb.y

bb.q:                                             ; preds = %fts3IsEmpty.exit
end_hunk_22
begin_hunk_23_@rowidWrite:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !175  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 76 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !166
  %i.v = and i16 %i.u, -28672
  %.not.i.i5 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.s, i64 noundef %2), !inline_history !886
  br label %sqlite3VdbeMemSetInt64.exit.i6

bb.h:                                             ; preds = %bb.f
  store i64 %2, ptr %i.s, align 8, !tbaa !231
  store i16 4, ptr %i.t, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i6

sqlite3VdbeMemSetInt64.exit.i6:                   ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not.i8.i7 = icmp eq ptr %i.y, null
  br i1 %.not.i8.i7, label %sqlite3_bind_int64.exit8, label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i6
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !887
  br label %sqlite3_bind_int64.exit8

sqlite3_bind_int64.exit8:                         ; preds = %sqlite3_bind_int64.exit, %sqlite3VdbeMemSetInt64.exit.i6, %bb.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !6482
  %i.ab = tail call i32 @sqlite3_step(ptr noundef %i.aa) ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !6482
  %i.ad = tail call i32 @sqlite3_reset(ptr noundef %i.ac)
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define internal i32 @parentWrite(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6536 ; 3 uses
  %i.c = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.b, i32 noundef 0), !inline_history !886
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %sqlite3_bind_int64.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !175  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !166
  %i.i = and i16 %i.h, -28672
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.f, i64 noundef %1), !inline_history !886
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 %1, ptr %i.f, align 8, !tbaa !231
  store i16 4, ptr %i.g, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.m(ptr noundef nonnull %i.l) #58, !inline_history !887
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.a, %sqlite3VdbeMemSetInt64.exit.i, %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !6536 ; 3 uses
  %i.o = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.n, i32 noundef 1), !inline_history !886
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %sqlite3_bind_int64.exit8

bb.f:                                             ; preds = %sqlite3_bind_int64.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !175  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 76 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !166
  %i.v = and i16 %i.u, -28672
  %.not.i.i5 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.s, i64 noundef %2), !inline_history !886
  br label %sqlite3VdbeMemSetInt64.exit.i6

bb.h:                                             ; preds = %bb.f
  store i64 %2, ptr %i.s, align 8, !tbaa !231
  store i16 4, ptr %i.t, align 4, !tbaa !166
  br label %sqlite3VdbeMemSetInt64.exit.i6

sqlite3VdbeMemSetInt64.exit.i6:                   ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not.i8.i7 = icmp eq ptr %i.y, null
  br i1 %.not.i8.i7, label %sqlite3_bind_int64.exit8, label %bb.i

bb.i:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i6
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.z(ptr noundef nonnull %i.y) #58, !inline_history !887
  br label %sqlite3_bind_int64.exit8

sqlite3_bind_int64.exit8:                         ; preds = %sqlite3_bind_int64.exit, %sqlite3VdbeMemSetInt64.exit.i6, %bb.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !6536
  %i.ab = tail call i32 @sqlite3_step(ptr noundef %i.aa) ; 0 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !6536
  %i.ad = tail call i32 @sqlite3_reset(ptr noundef %i.ac)
  ret i32 %i.ad
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @updateMapping(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = select i1 %i.a, ptr @rowidWrite, ptr @parentWrite
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = trunc i64 %1 to i32
  %i.f = urem i32 %i.e, 97
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  %.07.i = load ptr, ptr %i.h, align 8, !tbaa !6437 ; 2 uses
  %.not8.i = icmp eq ptr %.07.i, null
  br i1 %.not8.i, label %nodeHashLookup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.09.i = phi ptr [ %.0.i, %bb.c ], [ %.07.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !6543
  %.not6.i = icmp eq i64 %i.j, %1
  br i1 %.not6.i, label %nodeHashLookup.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i, i64 32
  %.0.i = load ptr, ptr %i.k, align 8, !tbaa !6437 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %nodeHashLookup.exit, label %.lr.ph.i, !llvm.loop !6552

nodeHashLookup.exit:                              ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.0.lcssa.i = phi ptr [ null, %bb.b ], [ %.09.i, %.lr.ph.i ], [ null, %bb.c ] ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %nodeHashLookup.exit, %bb.e
  %.02127 = phi ptr [ %2, %nodeHashLookup.exit ], [ %i.m, %bb.e ] ; 2 uses
  %i.l = icmp eq ptr %.02127, %.0.lcssa.i
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %.02127, align 8, !tbaa !6544 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.d, !llvm.loop !6614

bb.f:                                             ; preds = %bb.e
  %.not25 = icmp eq ptr %.0.lcssa.i, null
  br i1 %.not25, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %.0.lcssa.i, align 8, !tbaa !6544
  %i.o = tail call fastcc i32 @nodeRelease(ptr noundef %0, ptr noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !6542
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !6542
  store ptr %2, ptr %.0.lcssa.i, align 8, !tbaa !6544
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !6543
  %i.u = tail call i32 %i.b(ptr noundef %0, i64 noundef %1, i64 noundef %i.t) #58, !callees !6616
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.thread
  %.1 = phi i32 [ %i.u, %.thread ], [ 267, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @SortByDimension(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -32766, 65537) %2, i32 noundef range(i32 -2147483648, 255) %3, ptr noundef nonnull %4, ptr noundef nonnull %5) unnamed_addr #48 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.b = lshr i32 %2, 1                           ; 7 uses
  %i.c = sub nuw nsw i32 %2, %i.b                 ; 5 uses
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 3 uses
  tail call fastcc void @SortByDimension(ptr noundef %0, ptr noundef %1, i32 noundef %i.b, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  tail call fastcc void @SortByDimension(ptr noundef %0, ptr noundef %i.e, i32 noundef %i.c, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.f = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr align 4 %1, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.h = load i8, ptr %i.g, align 2, !tbaa !6472
  %i.i = icmp eq i8 %i.h, 0
  %i.j = shl nsw i32 %3, 1
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.k ; 4 uses
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.093.us = phi i32 [ %.1.us, %bb.f ], [ 0, %.lr.ph ] ; 6 uses
  %.08492.us = phi i32 [ %.185.us, %bb.f ], [ 0, %.lr.ph ] ; 6 uses
  %i.l = sext i32 %.08492.us to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %5, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %4, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.k
  %i.s = load float, ptr %i.r, align 4, !tbaa !231 ; 2 uses
  %gep97.us = getelementptr [48 x i8], ptr %invariant.gep, i64 %i.o
  %i.t = getelementptr i8, ptr %gep97.us, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !231
  %i.v = sext i32 %.093.us to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27   ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [48 x i8], ptr %4, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.k
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !231 ; 2 uses
  %gep99.us = getelementptr [48 x i8], ptr %invariant.gep, i64 %i.y
  %i.ad = getelementptr i8, ptr %gep99.us, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !231
  %.not.us = icmp eq i32 %.08492.us, %i.b
  br i1 %.not.us, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.af = icmp eq i32 %.093.us, %i.c
  %i.ag = fcmp olt float %i.s, %i.ac
  %or.cond.us = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = fcmp oeq float %i.s, %i.ac
  %i.ai = fcmp olt float %i.u, %i.ae
  %or.cond89.us = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond89.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = add nsw i32 %.093.us, %.08492.us
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  store i32 %i.n, ptr %i.al, align 4, !tbaa !27
  %i.am = add nsw i32 %.08492.us, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.lr.ph.split.us
  %i.an = add nsw i32 %.093.us, %.08492.us
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ao
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !27
  %i.aq = add nsw i32 %.093.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.185.us = phi i32 [ %i.am, %bb.d ], [ %.08492.us, %bb.e ] ; 2 uses
  %.1.us = phi i32 [ %.093.us, %bb.d ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = icmp slt i32 %.185.us, %i.b
  %i.as = icmp slt i32 %.1.us, %i.c
  %i.at = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %i.at, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !6638

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.093 = phi i32 [ %.1, %bb.k ], [ 0, %.lr.ph ]  ; 6 uses
  %.08492 = phi i32 [ %.185, %bb.k ], [ 0, %.lr.ph ] ; 6 uses
  %i.au = sext i32 %.08492 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27 ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [48 x i8], ptr %4, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.k
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !231 ; 2 uses
  %gep = getelementptr [48 x i8], ptr %invariant.gep, i64 %i.ax
  %i.bc = getelementptr i8, ptr %gep, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !231
  %i.be = sext i32 %.093 to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27 ; 2 uses
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [48 x i8], ptr %4, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.k
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !231 ; 2 uses
  %gep95 = getelementptr [48 x i8], ptr %invariant.gep, i64 %i.bh
  %i.bm = getelementptr i8, ptr %gep95, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !231
  %.not = icmp eq i32 %.08492, %i.b
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.bo = icmp eq i32 %.093, %i.c
  %i.bp = icmp slt i32 %i.bb, %i.bl
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = icmp eq i32 %i.bb, %i.bl
  %i.br = icmp slt i32 %i.bd, %i.bn
  %or.cond89 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond89, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bs = add nsw i32 %.093, %.08492
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bt
  store i32 %i.aw, ptr %i.bu, align 4, !tbaa !27
  %i.bv = add nsw i32 %.08492, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.lr.ph.split
  %i.bw = add nsw i32 %.093, %.08492
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bx
  store i32 %i.bg, ptr %i.by, align 4, !tbaa !27
  %i.bz = add nsw i32 %.093, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.185 = phi i32 [ %i.bv, %bb.i ], [ %.08492, %bb.j ] ; 2 uses
  %.1 = phi i32 [ %.093, %bb.i ], [ %i.bz, %bb.j ] ; 2 uses
  %i.ca = icmp slt i32 %.185, %i.b
  %i.cb = icmp slt i32 %.1, %i.c
  %i.cc = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %i.cc, label %.lr.ph.split, label %.loopexit, !llvm.loop !6638

.loopexit:                                        ; preds = %bb.k, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dbpageConnect(ptr noundef %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 3) ; 0 uses
  %i.b = tail call i32 (ptr, i32, ...) @sqlite3_vtab_config(ptr noundef %0, i32 noundef 4) ; 0 uses
  %i.c = tail call i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef nonnull @.str.1775) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @sqlite3_initialize(), !inline_history !401
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %sqlite3_malloc64.exit, label %.thread

sqlite3_malloc64.exit:                            ; preds = %bb.b
  %i.f = tail call fastcc ptr @sqlite3Malloc(i64 noundef 40), !inline_history !401 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %sqlite3_malloc64.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %0, ptr %i.h, align 8, !tbaa !6639
  br label %.thread

.thread:                                          ; preds = %bb.b, %sqlite3_malloc64.exit, %bb.a, %bb.c
  %.019 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.a ], [ 7, %sqlite3_malloc64.exit ], [ 7, %bb.b ]
  %.01118 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ null, %sqlite3_malloc64.exit ], [ null, %bb.b ]
  store ptr %.01118, ptr %4, align 8, !tbaa !3038
  ret i32 %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 20) i32 @dbpageBestIndex(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #16 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !1145   ; 3 uses
  %.not6068 = icmp sgt i32 %i.a, 0
  br i1 %.not6068, label %.lr.ph, label %.loopexit61.thread

.loopexit61.thread:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double 1.000000e+06, ptr %i.b, align 8, !tbaa !3039
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1150
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3040
end_hunk_23
