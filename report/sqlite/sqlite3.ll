inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %i.abj = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 2
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !231
  %i.abm = sext i8 %i.abl to i64
  %i.abn = add i64 %i.abi, -48
  %.0118.i.2 = add i64 %i.abn, %i.abm
  %i.abo = mul i64 %.0118.i.2, 10
  %i.abp = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 3
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !231
  %i.abs = sext i8 %i.abr to i64
  %indvars.iv.next201.i.3 = add nuw nsw i64 %indvars.iv200.i, 4 ; 2 uses
  %i.abt = add i64 %i.abo, -48
  %.0118.i.3 = add i64 %i.abt, %i.abs             ; 3 uses
  %niter2235.next.3 = add nuw i64 %niter2235, 4   ; 2 uses
  %niter2235.ncmp.3 = icmp eq i64 %niter2235.next.3, %unroll_iter2234
  br i1 %niter2235.ncmp.3, label %.thread169.sink.split.i.loopexit.unr-lcssa, label %.lr.ph182.i, !llvm.loop !344

.thread169.sink.split.i.loopexit.unr-lcssa:       ; preds = %.lr.ph182.i
  %lcmp.mod2231.not = icmp eq i64 %xtraiter2230, 0
  br i1 %lcmp.mod2231.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil.preheader

.lr.ph182.i.epil.preheader:                       ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i
  %indvars.iv200.i.epil.init = phi i64 [ 1, %.lr.ph182.preheader.i ], [ %indvars.iv.next201.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %.0118180.i.epil.init = phi i64 [ %.0118178.i, %.lr.ph182.preheader.i ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod2233 = icmp ne i64 %xtraiter2230, 0
  call void @llvm.assume(i1 %lcmp.mod2233)
  br label %.lr.ph182.i.epil

.lr.ph182.i.epil:                                 ; preds = %.lr.ph182.i.epil, %.lr.ph182.i.epil.preheader
  %indvars.iv200.i.epil = phi i64 [ %indvars.iv200.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %indvars.iv.next201.i.epil, %.lr.ph182.i.epil ] ; 2 uses
  %.0118180.i.epil = phi i64 [ %.0118180.i.epil.init, %.lr.ph182.i.epil.preheader ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph182.i.epil.preheader ], [ %epil.iter.next, %.lr.ph182.i.epil ]
  %i.abu = mul i64 %.0118180.i.epil, 10
  %i.abv = getelementptr inbounds nuw i8, ptr %i.wt, i64 %indvars.iv200.i.epil
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !231
  %i.abx = sext i8 %i.abw to i64
  %indvars.iv.next201.i.epil = add nuw nsw i64 %indvars.iv200.i.epil, 1
  %i.aby = add i64 %i.abu, -48
  %.0118.i.epil = add i64 %i.aby, %i.abx          ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2230
  br i1 %epil.iter.cmp.not, label %.thread169.sink.split.i, label %.lr.ph182.i.epil, !llvm.loop !345

.thread169.sink.split.i:                          ; preds = %.thread169.sink.split.i.loopexit.unr-lcssa, %.lr.ph182.i.epil, %bb.gr, %._crit_edge189.i, %.preheader171.13.i
  %.0123174.sink237.i = phi i32 [ 0, %.preheader171.13.i ], [ %.0123185.lcssa230.i, %._crit_edge189.i ], [ %indvars1525.le, %bb.gr ], [ %indvars1525.le, %.lr.ph182.i.epil ], [ %indvars1525.le, %.thread169.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %.1.sink.i = phi i64 [ 1, %.preheader171.13.i ], [ %i.aaf, %._crit_edge189.i ], [ %.0118178.i, %bb.gr ], [ %.0118.i.3, %.thread169.sink.split.i.loopexit.unr-lcssa ], [ %.0118.i.epil, %.lr.ph182.i.epil ]
  %i.abz = add i32 %i.tc, %.0123174.sink237.i
  %i.aca = sub i32 %.0130161.i, %i.abz
  %i.acb = call fastcc double @sqlite3Fp10Convert2(i64 noundef %.1.sink.i, i32 noundef %i.aca)
  %i.acc = fcmp oeq double %.0124.i, %i.acb
  %i.acd = add nsw i32 %.0123174.sink237.i, 1
  %.2.i = select i1 %i.acc, i32 %i.acd, i32 17
  br label %.thread169.i

.thread169.i:                                     ; preds = %.thread169.sink.split.i, %bb.gp, %bb.go, %bb.gn, %.thread167.i, %bb.gj
  %.4.i = phi i32 [ %i.ww, %bb.gj ], [ 17, %.thread167.i ], [ 17, %bb.gp ], [ 17, %bb.go ], [ 17, %bb.gn ], [ %.2.i, %.thread169.sink.split.i ] ; 4 uses
  %i.ace = sext i32 %.4.i to i64                  ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %i.wt, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !231
  %i.ach = icmp sgt i8 %i.acg, 52
  br i1 %i.ach, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.thread169.i, %bb.gs
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %bb.gs ], [ %i.ace, %.thread169.i ]
  %indvars.iv.next211.i = add nsw i64 %indvars.iv210.i, -1 ; 3 uses
  %i.aci = getelementptr inbounds i8, ptr %i.wt, i64 %indvars.iv.next211.i ; 3 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !231
  %i.ack = add i8 %i.acj, 1                       ; 2 uses
  store i8 %i.ack, ptr %i.aci, align 1, !tbaa !231
  %i.acl = icmp slt i8 %i.ack, 58
  br i1 %i.acl, label %.loopexit.i, label %bb.gs

bb.gs:                                            ; preds = %.preheader.i
  store i8 48, ptr %i.aci, align 1, !tbaa !231
  %i.acm = icmp eq i64 %indvars.iv.next211.i, 0
  br i1 %i.acm, label %bb.gt, label %.preheader.i

bb.gt:                                            ; preds = %bb.gs
  %i.acn = getelementptr inbounds i8, ptr %i.wt, i64 -1 ; 2 uses
  store i8 49, ptr %i.acn, align 1, !tbaa !231
  %i.aco = add nsw i32 %.4.i, 1
  %i.acp = load i32, ptr %i.af, align 4, !tbaa !336
  %i.acq = add nsw i32 %i.acp, 1
  store i32 %i.acq, ptr %i.af, align 4, !tbaa !336
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.gt, %.thread169.i, %bb.gi, %bb.gh, %bb.gf
  %.2132.i = phi i32 [ %i.wb, %bb.gh ], [ %.4.i, %.thread169.i ], [ %.0130161.i, %bb.gi ], [ %i.wb, %bb.gf ], [ %i.aco, %bb.gt ], [ %.4.i, %.preheader.i ]
  %.1128.i = phi ptr [ %i.wg, %bb.gh ], [ %i.wt, %.thread169.i ], [ %i.wt, %bb.gi ], [ %i.wg, %bb.gf ], [ %i.acn, %bb.gt ], [ %i.wt, %.preheader.i ] ; 2 uses
  %i.acr = sext i32 %.2132.i to i64
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gu, %.loopexit.i
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i, %bb.gu ], [ %i.acr, %.loopexit.i ] ; 3 uses
  %i.acs = getelementptr i8, ptr %.1128.i, i64 %indvars.iv213.i
  %i.act = getelementptr i8, ptr %i.acs, i64 -1
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !231
  %i.acv = icmp eq i8 %i.acu, 48
  %indvars.iv.next214.i = add nsw i64 %indvars.iv213.i, -1
  br i1 %i.acv, label %bb.gu, label %bb.gv, !llvm.loop !346

bb.gv:                                            ; preds = %bb.gu
  %i.acw = trunc nsw i64 %indvars.iv213.i to i32
  store i32 %i.acw, ptr %3, align 8, !tbaa !335
  %.pr.pre = load i8, ptr %i.ad, align 2, !tbaa !332
  br label %sqlite3FpDecode.exit

sqlite3FpDecode.exit:                             ; preds = %bb.gv, %bb.fo
  %i.acx = phi i8 [ %i.sm, %bb.fo ], [ %.pr.pre, %bb.gv ]
  %.1128.sink.i = phi ptr [ %i.ag, %bb.fo ], [ %.1128.i, %bb.gv ] ; 2 uses
  store ptr %.1128.sink.i, ptr %i.ah, align 8, !tbaa !337
  switch i8 %i.acx, label %bb.gx [
    i8 0, label %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge
    i8 2, label %bb.gw
  ]

sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge: ; preds = %sqlite3FpDecode.exit
  %.pre.pre.pre = load i32, ptr %i.af, align 4
  br label %sqlite3FpDecode.exit._crit_edge

bb.gw:                                            ; preds = %sqlite3FpDecode.exit
  %.not948 = icmp eq i8 %.175811661938, 0         ; 2 uses
  %i.acy = select i1 %.not948, ptr @.str.2, ptr @.str.1
  %i.acz = select i1 %.not948, i32 3, i32 4
  br label %sqlite3StrAccumSetError.exit.thread

bb.gx:                                            ; preds = %sqlite3FpDecode.exit
  %.not932 = icmp eq i8 %.175811661938, 0
  br i1 %.not932, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  store i8 57, ptr %.1128.sink.i, align 1, !tbaa !231
  store i32 1000, ptr %i.af, align 4, !tbaa !336
  store i32 1, ptr %3, align 8, !tbaa !335
  br label %sqlite3FpDecode.exit._crit_edge

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.ada = load i8, ptr %i.ae, align 1, !tbaa !334
  %i.adb = icmp eq i8 %i.ada, 45
  br i1 %i.adb, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.not933 = icmp eq i8 %.176911601968, 0
  br i1 %.not933, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  store i8 %.176911601968, ptr %i.a, align 16, !tbaa !231
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb, %bb.gz
  %.9820 = phi ptr [ %i.a, %bb.gz ], [ %i.a, %bb.hb ], [ %i.z, %bb.ha ] ; 2 uses
  %i.adc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.9820) #59
  %i.add = trunc i64 %i.adc to i32
  %i.ade = and i32 %i.add, 1073741823
  br label %sqlite3StrAccumSetError.exit.thread

sqlite3FpDecode.exit._crit_edge:                  ; preds = %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge, %bb.gy
  %.pre.ph = phi i32 [ %.pre.pre.pre, %sqlite3FpDecode.exit.sqlite3FpDecode.exit._crit_edge_crit_edge ], [ 1000, %bb.gy ] ; 3 uses
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !334
  %i.adf = icmp eq i8 %.pr, 45
  br i1 %i.adf, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %sqlite3FpDecode.exit._crit_edge
  %i.adg = icmp eq i8 %.176311621955, 0
  %i.adh = icmp ne i8 %.176911601968, 0
  %or.cond8.not936.not1282 = select i1 %i.adg, i1 true, i1 %i.adh
  %or.cond11.not1279 = or i1 %or.cond8.not936.not1282, %i.rz
  %.not937 = icmp sgt i32 %.pre.ph, %.0688
  %or.cond = select i1 %or.cond11.not1279, i1 true, i1 %.not937
  %spec.select983 = select i1 %or.cond, i8 45, i8 0
  br label %bb.he

bb.he:                                            ; preds = %sqlite3FpDecode.exit._crit_edge.thread, %bb.hd, %sqlite3FpDecode.exit._crit_edge
  %.pre2065 = phi i32 [ %.pre.ph, %bb.hd ], [ %.pre.ph, %sqlite3FpDecode.exit._crit_edge ], [ 1, %sqlite3FpDecode.exit._crit_edge.thread ] ; 4 uses
  %.2741 = phi i8 [ %spec.select983, %bb.hd ], [ %.176911601968, %sqlite3FpDecode.exit._crit_edge ], [ %.176911601968, %sqlite3FpDecode.exit._crit_edge.thread ] ; 3 uses
  %i.adi = and i32 %.07842051, -9                 ; 2 uses
  %i.adj = icmp eq i32 %i.adi, 3
  br i1 %i.adj, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.adk = xor i8 %.176311621955, 1
  %i.adl = icmp slt i32 %.pre2065, -3
  %i.adm = icmp sgt i32 %.pre2065, %.6805
  %or.cond968 = select i1 %i.adl, i1 true, i1 %i.adm ; 2 uses
  %i.adn = sub i32 0, %.pre2065
  %spec.select984.p = select i1 %or.cond968, i32 -1, i32 %i.adn
  %spec.select984 = add i32 %spec.select984.p, %.6805
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.ado = icmp eq i32 %i.adi, 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %.7806 = phi i32 [ %.6805, %bb.hg ], [ %spec.select984, %bb.hf ] ; 5 uses
  %.1744 = phi i1 [ %i.ado, %bb.hg ], [ %or.cond968, %bb.hf ] ; 2 uses
  %.0711 = phi i8 [ %.176011641948, %bb.hg ], [ %i.adk, %bb.hf ] ; 2 uses
  %i.adp = add nsw i32 %.pre2065, -1              ; 2 uses
  %.0712 = select i1 %.1744, i32 0, i32 %i.adp    ; 8 uses
  %i.adq = icmp sgt i32 %.0712, 0
  %i.adr = call i32 @llvm.smax.i32(i32 %.0712, i32 0)
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = sext i32 %.7806 to i64
  %i.adu = zext nneg i32 %.377611551998 to i64
  %i.adv = add nuw nsw i64 %i.adu, 10
  %i.adw = add nsw i64 %i.adv, %i.adt
  %i.adx = add nsw i64 %i.adw, %i.ads             ; 2 uses
  %i.ady = icmp ne i8 %.174711701932, 0
  %or.cond13 = select i1 %i.ady, i1 %i.adq, i1 false
  br i1 %or.cond13, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.adz = add nuw nsw i32 %.0712, 2
  %i.aea = udiv i32 %i.adz, 3
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = add nsw i64 %i.adx, %i.aeb
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.0683 = phi i64 [ %i.aec, %bb.hi ], [ %i.adx, %bb.hh ] ; 5 uses
  %i.aed = load i32, ptr %i.q, align 8, !tbaa !287
  %i.aee = zext i32 %i.aed to i64                 ; 2 uses
  %i.aef = add nsw i64 %.0683, %i.aee
  %i.aeg = load i32, ptr %i.r, align 8, !tbaa !288
  %i.aeh = zext i32 %i.aeg to i64
  %.not939 = icmp slt i64 %i.aef, %i.aeh
  br i1 %.not939, label %bb.hs, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aei = load i32, ptr %i.y, align 4, !tbaa !307
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %bb.hl, label %bb.hq

bb.hl:                                            ; preds = %bb.hk
  %i.aek = load i8, ptr %i.x, align 4, !tbaa !306
  %i.ael = icmp eq i8 %i.aek, 0
  br i1 %i.ael, label %bb.hm, label %bb.hq

bb.hm:                                            ; preds = %bb.hl
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
  %.17131446 = phi i32 [ %i.aga, %bb.ib ], [ %.0712, %bb.hx ] ; 4 uses
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
  %4 = urem i32 %.17131446, 3
  %5 = icmp eq i32 %4, 0
  %i.afy = icmp samesign ugt i32 %.17131446, 1
  %or.cond15 = and i1 %i.afy, %5
  br i1 %or.cond15, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.afz = getelementptr inbounds nuw i8, ptr %.128231445, i64 2
  store i8 44, ptr %i.afx, align 1, !tbaa !231
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hz, %bb.ia
  %.13 = phi ptr [ %i.afz, %bb.ia ], [ %i.afx, %bb.hz ] ; 2 uses
  %i.aga = add nsw i32 %.17131446, -1
  %i.agb = icmp sgt i32 %.17131446, 0
  br i1 %i.agb, label %.lr.ph1448, label %.loopexit1292, !llvm.loop !348

bb.ic:                                            ; preds = %bb.hx
  %i.agc = add nuw nsw i32 %.0712, 1
  %i.agd = load i32, ptr %3, align 8, !tbaa !335  ; 2 uses
  %.not942 = icmp slt i32 %.0712, %i.agd
  %spec.select969 = select i1 %.not942, i32 %i.agc, i32 %i.agd ; 4 uses
  %i.age = load ptr, ptr %i.ah, align 8, !tbaa !337
  %i.agf = sext i32 %spec.select969 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.11822, ptr align 1 %i.age, i64 %i.agf, i1 false)
  %i.agg = getelementptr inbounds i8, ptr %.11822, i64 %i.agf ; 3 uses
  %i.agh = sub nsw i32 %.0712, %spec.select969    ; 3 uses
  %i.agi = icmp sgt i32 %i.agh, -1
  br i1 %i.agi, label %bb.id, label %.loopexit1292

bb.id:                                            ; preds = %bb.ic
  %i.agj = add nuw nsw i32 %i.agh, 1
  %i.agk = zext nneg i32 %i.agj to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.agg, i8 48, i64 %i.agk, i1 false)
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.agk
  br label %.loopexit1292

.loopexit1292:                                    ; preds = %bb.ib, %bb.id, %bb.ic, %bb.hw
  %.14 = phi ptr [ %i.afo, %bb.hw ], [ %i.agg, %bb.ic ], [ %i.agl, %bb.id ], [ %.13, %bb.ib ] ; 3 uses
  %.2714 = phi i32 [ %i.adp, %bb.hw ], [ %i.agh, %bb.ic ], [ -1, %bb.id ], [ -1, %bb.ib ] ; 2 uses
  %.3687 = phi i32 [ 0, %bb.hw ], [ %spec.select969, %bb.ic ], [ %spec.select969, %bb.id ], [ %.1685, %bb.ib ] ; 2 uses
  %.not943 = icmp eq i8 %i.afl, 0
  br i1 %.not943, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %.loopexit1292
  %i.agm = getelementptr inbounds nuw i8, ptr %.14, i64 1
  store i8 46, ptr %.14, align 1, !tbaa !231
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %.loopexit1292
  %.15 = phi ptr [ %i.agm, %bb.ie ], [ %.14, %.loopexit1292 ] ; 3 uses
  %i.agn = icmp ne i32 %.2714, -1
  %or.cond17 = select i1 %i.agn, i1 %i.afi, i1 false
  br i1 %or.cond17, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.ago = xor i32 %.2714, -1
  %spec.select970 = call i32 @llvm.umin.i32(i32 %.7806, i32 %i.ago) ; 2 uses
  %i.agp = zext nneg i32 %spec.select970 to i64   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.15, i8 48, i64 %i.agp, i1 false)
  %i.agq = getelementptr inbounds nuw i8, ptr %.15, i64 %i.agp
  %i.agr = sub nsw i32 %.7806, %spec.select970
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.16 = phi ptr [ %i.agq, %bb.ig ], [ %.15, %bb.if ] ; 4 uses
  %.8807 = phi i32 [ %i.agr, %bb.ig ], [ %.7806, %bb.if ] ; 4 uses
  %i.ags = icmp sgt i32 %.8807, 0
  br i1 %i.ags, label %bb.ii, label %bb.il

bb.ii:                                            ; preds = %bb.ih
  %i.agt = load i32, ptr %3, align 8, !tbaa !335
  %i.agu = sub nsw i32 %i.agt, %.3687             ; 2 uses
  %i.agv = icmp sgt i32 %i.agu, 0
  br i1 %i.agv, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.agw = call i32 @llvm.umin.i32(i32 %i.agu, i32 %.8807) ; 2 uses
  %i.agx = load ptr, ptr %i.ah, align 8, !tbaa !337
  %i.agy = sext i32 %.3687 to i64
  %i.agz = getelementptr inbounds i8, ptr %i.agx, i64 %i.agy
  %i.aha = zext nneg i32 %i.agw to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.16, ptr align 1 %i.agz, i64 %i.aha, i1 false)
  %i.ahb = getelementptr inbounds nuw i8, ptr %.16, i64 %i.aha
  %i.ahc = sub nsw i32 %.8807, %i.agw
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.17 = phi ptr [ %i.ahb, %bb.ij ], [ %.16, %bb.ii ] ; 3 uses
  %.9808 = phi i32 [ %i.ahc, %bb.ij ], [ %.8807, %bb.ii ] ; 2 uses
  %i.ahd = icmp slt i32 %.9808, 1
  %i.ahe = icmp ne i8 %.0711, 0
  %or.cond19 = select i1 %i.ahd, i1 true, i1 %i.ahe
  br i1 %or.cond19, label %bb.il, label %.thread1212

.thread1212:                                      ; preds = %bb.ik
  %i.ahf = zext nneg i32 %.9808 to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.17, i8 48, i64 %i.ahf, i1 false)
  %i.ahg = getelementptr inbounds nuw i8, ptr %.17, i64 %i.ahf
  br label %.loopexit1290

bb.il:                                            ; preds = %bb.ik, %bb.ih
  %.19 = phi ptr [ %.16, %bb.ih ], [ %.17, %bb.ik ] ; 2 uses
  %i.ahh = icmp ne i8 %.0711, 0
  %i.ahi = icmp ne i8 %i.afl, 0
  %or.cond22 = select i1 %i.ahh, i1 %i.ahi, i1 false
  br i1 %or.cond22, label %.preheader1289, label %.loopexit1290

.preheader1289:                                   ; preds = %bb.il, %bb.im
  %.20 = phi ptr [ %i.ahj, %bb.im ], [ %.19, %bb.il ] ; 4 uses
  %i.ahj = getelementptr inbounds i8, ptr %.20, i64 -1 ; 5 uses
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !231
  switch i8 %i.ahk, label %.loopexit1290 [
    i8 48, label %bb.im
    i8 46, label %bb.in
  ]

bb.im:                                            ; preds = %.preheader1289
  store i8 0, ptr %i.ahj, align 1, !tbaa !231
  br label %.preheader1289, !llvm.loop !349

bb.in:                                            ; preds = %.preheader1289
  br i1 %.not930, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ahl = getelementptr inbounds nuw i8, ptr %.20, i64 1
  store i8 48, ptr %.20, align 1, !tbaa !231
  br label %.loopexit1290

bb.ip:                                            ; preds = %bb.in
  store i8 0, ptr %i.ahj, align 1, !tbaa !231
  br label %.loopexit1290

.loopexit1290:                                    ; preds = %.preheader1289, %.thread1212, %bb.ip, %bb.io, %bb.il
  %.21 = phi ptr [ %i.ahl, %bb.io ], [ %i.ahj, %bb.ip ], [ %i.ahg, %.thread1212 ], [ %.19, %bb.il ], [ %.20, %.preheader1289 ] ; 5 uses
  br i1 %.1744, label %bb.iq, label %bb.it

bb.iq:                                            ; preds = %.loopexit1290
  %i.ahm = load i32, ptr %i.af, align 4, !tbaa !336 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !323
  %i.ahp = zext i8 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw i8, ptr @aDigits, i64 %i.ahp
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !231
  %i.ahs = getelementptr inbounds nuw i8, ptr %.21, i64 1
  store i8 %i.ahr, ptr %.21, align 1, !tbaa !231
  %i.aht = icmp slt i32 %i.ahm, 1                 ; 2 uses
  %i.ahu = sub nsw i32 1, %i.ahm
  %i.ahv = add nsw i32 %i.ahm, -1
  %.sink = select i1 %i.aht, i8 45, i8 43
  %.0715 = select i1 %i.aht, i32 %i.ahu, i32 %i.ahv ; 4 uses
  store i8 %.sink, ptr %i.ahs, align 1, !tbaa !231
  %.22 = getelementptr inbounds nuw i8, ptr %.21, i64 2 ; 2 uses
  %i.ahw = icmp samesign ugt i32 %.0715, 99
  br i1 %i.ahw, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.ahx = udiv i32 %.0715, 100
  %i.ahy = trunc i32 %i.ahx to i8
  %i.ahz = add i8 %i.ahy, 48
  %i.aia = getelementptr inbounds nuw i8, ptr %.21, i64 3
  store i8 %i.ahz, ptr %.22, align 1, !tbaa !231
  %i.aib = urem i32 %.0715, 100
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.23 = phi ptr [ %i.aia, %bb.ir ], [ %.22, %bb.iq ] ; 3 uses
  %.1716 = phi i32 [ %i.aib, %bb.ir ], [ %.0715, %bb.iq ]
  %.lhs.trunc = trunc nuw nsw i32 %.1716 to i8    ; 2 uses
  %i.aic = udiv i8 %.lhs.trunc, 10
  %i.aid = or disjoint i8 %i.aic, 48
  %i.aie = getelementptr inbounds nuw i8, ptr %.23, i64 1
  store i8 %i.aid, ptr %.23, align 1, !tbaa !231
  %i.aif = urem i8 %.lhs.trunc, 10
  %i.aig = or disjoint i8 %i.aif, 48
  %i.aih = getelementptr inbounds nuw i8, ptr %.23, i64 2
  store i8 %i.aig, ptr %i.aie, align 1, !tbaa !231
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %.loopexit1290
  %.24 = phi ptr [ %i.aih, %bb.is ], [ %.21, %.loopexit1290 ] ; 4 uses
  %i.aii = ptrtoint ptr %.24 to i64
  %i.aij = ptrtoint ptr %.10821 to i64
  %i.aik = sub i64 %i.aii, %i.aij                 ; 3 uses
  %i.ail = trunc i64 %i.aik to i32                ; 3 uses
  %i.aim = icmp sgt i32 %.377611551998, %i.ail
  br i1 %i.aim, label %bb.iu, label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %i.ain = sub nsw i32 %.377611551998, %i.ail
  %i.aio = zext nneg i32 %i.ain to i64            ; 5 uses
  %.not945 = icmp eq i8 %.277211581977, 0
  br i1 %.not945, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  call void @llvm.memset.p0.i64(ptr align 1 %.24, i8 32, i64 %i.aio, i1 false)
  br label %bb.iz

bb.iw:                                            ; preds = %bb.iu
  %.not946 = icmp eq i8 %.175811661938, 0
  br i1 %.not946, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.aip = getelementptr inbounds nuw i8, ptr %.10821, i64 %i.aio
end_hunk_0
