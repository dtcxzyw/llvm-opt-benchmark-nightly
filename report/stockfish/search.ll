Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii:bb.a
  %i.fs = getelementptr inbounds nuw [160 x i8], ptr %i.fr, i64 %.sroa.0.0.copyload.i165 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 152
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !140
  switch i8 %i.fu, label %bb.ag [
    i8 -1, label %bb.ae
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit168
    i8 1, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  call void @abort() #37
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit168

bb.ag:                                            ; preds = %bb.ad
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit168: ; preds = %bb.ad, %bb.af
  %.0.i.i.i.in.i.i.i166 = phi ptr [ %i.fv, %bb.af ], [ %i.fs, %bb.ad ]
  %.0.i.i.i.i.i.i167 = load ptr, ptr %.0.i.i.i.in.i.i.i166, align 8, !tbaa !142
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.fz = load i8, ptr %i.ct, align 4, !tbaa !177
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !150
  %i.gd = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i167, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.fw, ptr noundef nonnull align 64 dereferenceable(327680) %i.fx, i32 noundef %i.gc) #33
  %.pre = load i32, ptr %i.cp, align 4, !tbaa !281
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit168, %bb.ac
  %i.ge = phi i32 [ %i.co, %bb.ac ], [ %.pre, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit168 ] ; 3 uses
  %.0139 = phi i32 [ %i.fm, %bb.ac ], [ %i.gd, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit168 ] ; 3 uses
  %i.gf = sdiv i32 %i.fk, 131072
  %i.gg = add nsw i32 %.0139, %i.gf
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gg, i32 -31506)
  %.sroa.speculated.i = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 31506) ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i, ptr %i.gh, align 8, !tbaa !248
  %i.gi = add i32 %i.ge, -31507
  %spec.select.i169 = icmp ult i32 %i.gi, -63013
  br i1 %spec.select.i169, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !289
  %i.gl = zext i8 %i.gk to i32
  %i.gm = icmp sgt i32 %i.ge, %.sroa.speculated.i
  %i.gn = select i1 %i.gm, i32 2, i32 1
  %i.go = and i32 %i.gn, %i.gl
  %.not154 = icmp eq i32 %i.go, 0
  %spec.select = select i1 %.not154, i32 %.sroa.speculated.i, i32 %i.ge
  %i.gp = freeze i32 %spec.select
  br label %bb.an

bb.aj:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.gr = load ptr, ptr %i.gq, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i170 = load i64, ptr %i.gs, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.gr, i64 noundef %.sroa.0.0.copyload.i170)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !138
  %i.gv = getelementptr inbounds nuw [160 x i8], ptr %i.gu, i64 %.sroa.0.0.copyload.i170 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 152
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !140
  switch i8 %i.gx, label %bb.am [
    i8 -1, label %bb.ak
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173
    i8 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  call void @abort() #37
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173

bb.am:                                            ; preds = %bb.aj
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173: ; preds = %bb.aj, %bb.al
  %.0.i.i.i.in.i.i.i171 = phi ptr [ %i.gy, %bb.al ], [ %i.gv, %bb.aj ]
  %.0.i.i.i.i.i.i172 = load ptr, ptr %.0.i.i.i.in.i.i.i171, align 8, !tbaa !142
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.hc = load i8, ptr %i.ct, align 4, !tbaa !177
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !150
  %i.hg = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i172, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.gz, ptr noundef nonnull align 64 dereferenceable(327680) %i.ha, i32 noundef %i.hf) #33 ; 2 uses
  %i.hh = sdiv i32 %i.fk, 131072
  %i.hi = add nsw i32 %i.hg, %i.hh
  %.sroa.speculate.load.false.sroa.speculated.i174 = call i32 @llvm.smax.i32(i32 %i.hi, i32 -31506)
  %.sroa.speculated.i175 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i174, i32 31506) ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i175, ptr %i.hj, align 8, !tbaa !248
  br label %bb.an

bb.an:                                            ; preds = %bb.ai, %bb.ah, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173
  %i.hk = phi i32 [ %.sroa.speculated.i175, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173 ], [ %.sroa.speculated.i, %bb.ai ], [ %.sroa.speculated.i, %bb.ah ]
  %.0251 = phi i32 [ %.sroa.speculated.i175, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173 ], [ %i.gp, %bb.ai ], [ %.sroa.speculated.i, %bb.ah ] ; 4 uses
  %.1140 = phi i32 [ %i.hg, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit173 ], [ %.0139, %bb.ai ], [ %.0139, %bb.ah ] ; 2 uses
  %.not155 = icmp slt i32 %.0251, %4
  br i1 %.not155, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hl = add nsw i32 %.0251, %4                  ; 2 uses
  %i.hm = sdiv i32 %i.hl, 2                       ; 3 uses
  %i.hn = load i8, ptr %i.bm, align 2, !tbaa !278, !range !223, !noundef !72
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %.thread259, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hp = load i32, ptr %i.v, align 8, !tbaa !249
  %i.hq = icmp slt i32 %i.hl, -63013
  %i.hr = select i1 %i.hq, i32 %i.hp, i32 0
  %i.hs = sub i32 %i.hm, %i.hr
  %i.ht = load ptr, ptr %i.bh, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.hu = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ht) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.bg, i32 noundef %i.hs, i1 noundef zeroext false, i8 noundef zeroext 2, i32 noundef -2, i16 0, i32 noundef %.1140, i8 noundef zeroext %i.hu) #33
  br label %.thread259

bb.aq:                                            ; preds = %bb.an
  %spec.select264 = call i32 @llvm.smax.i32(i32 %.0251, i32 %.0246)
  %i.hv = add nsw i32 %i.hk, 351
  br label %bb.ar

bb.ar:                                            ; preds = %bb.y, %bb.aq
  %storemerge = phi i32 [ %i.hv, %bb.aq ], [ -32001, %bb.y ] ; 4 uses
  %.3254 = phi i32 [ %.0251, %bb.aq ], [ -32001, %bb.y ]
  %.3249 = phi i32 [ %spec.select264, %bb.aq ], [ %.0246, %bb.y ]
  %.2141 = phi i32 [ %.1140, %bb.aq ], [ 32002, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.hw = getelementptr inbounds i8, ptr %2, i64 -48
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !246
  store ptr %i.hx, ptr %i.a, align 8, !tbaa !294
  %i.hy = getelementptr inbounds i8, ptr %2, i64 -28
  %i.hz = load i16, ptr %i.hy, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.hz, label %bb.as [
    i16 65, label %bb.at
    i16 0, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ia = and i16 %i.hz, 63
  %i.ib = zext nneg i16 %i.ia to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.ar, %bb.as
  %i.ic = phi i32 [ %i.ib, %bb.as ], [ 64, %bb.ar ], [ 64, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %.sroa.016.0.copyload = load i16, ptr %i.bk, align 8, !tbaa !196
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 917504
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 11419656 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !151, !nonnull !72, !align !73
  %i.ih = load i32, ptr %i.v, align 8, !tbaa !249
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %8, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.016.0.copyload, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.id, ptr noundef nonnull %i.ie, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ig, i32 noundef %i.ih) #33
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ip = sub nsw i32 0, %4
  %i.iq = icmp slt i32 %storemerge, -31506
  br label %.outer.outer.outer

.outer.outer.outer:                               ; preds = %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, %bb.at
  %.4255.ph.ph.ph = phi i32 [ %i.lu, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ], [ %.3254, %bb.at ]
  %.4250.ph.ph.ph = phi i32 [ %i.lu, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ], [ %.3249, %bb.at ] ; 5 uses
  %.0137.ph.ph.ph = phi i32 [ %i.kw, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ], [ 0, %bb.at ]
  %.sroa.059.0.ph.ph.ph = phi i16 [ %.lcssa276279, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ], [ 0, %bb.at ] ; 3 uses
  %i.ir = sub nsw i32 %.4250.ph.ph.ph, %storemerge
  %.sroa.speculated238 = call i32 @llvm.smin.i32(i32 %storemerge, i32 %.4250.ph.ph.ph)
  %i.is = sub nsw i32 0, %.4250.ph.ph.ph
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.outer.outer.outer
  %.4255.ph.ph = phi i32 [ %.4255.ph.ph.ph, %.outer.outer.outer ], [ %.4255.ph.ph.be, %.outer.outer.backedge ] ; 5 uses
  %.0137.ph.ph = phi i32 [ %.0137.ph.ph.ph, %.outer.outer.outer ], [ %i.kw, %.outer.outer.backedge ] ; 3 uses
  %i.it = icmp slt i32 %.4255.ph.ph, -31506
  br i1 %i.it, label %.outer.split.us, label %.outer.split.lr.ph

.outer.split.lr.ph:                               ; preds = %.outer.outer
  br i1 %i.iq, label %.outer271.us338.us, label %.outer.split

.outer271.us338.us:                               ; preds = %.outer.split.lr.ph, %.outer271.us338.us.backedge
  %.0137.ph272.us339.us = phi i32 [ %i.jf, %.outer271.us338.us.backedge ], [ %.0137.ph.ph, %.outer.split.lr.ph ] ; 2 uses
  br label %10

bb.au:                                            ; preds = %10
  %i.iu = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %11) #33
  br i1 %i.iu, label %.outer271.backedge.us.us, label %10, !llvm.loop !781

.outer271.backedge.us.us:                         ; preds = %bb.au
  %i.iv = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %11) #33
  %i.iw = and i16 %11, 63
  %i.ix = zext nneg i16 %i.iw to i64              ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !283
  %i.ja = icmp ne i8 %i.iz, 0
  %.not.i.i.us341.us = icmp ult i16 %11, -16384   ; 2 uses
  %or.cond.not.i.i.us342.us = and i1 %.not.i.i.us341.us, %i.ja
  %i.jb = icmp slt i16 %11, -16384                ; 2 uses
  %spec.select.i.i.us343.us = or i1 %i.jb, %or.cond.not.i.i.us342.us
  %i.jc = and i16 %11, 12288
  %i.jd = icmp eq i16 %i.jc, 12288                ; 2 uses
  %i.je = or i1 %i.jd, %spec.select.i.i.us343.us
  %i.jf = add nsw i32 %.0137.ph272.us339.us, 1    ; 2 uses
  br i1 %i.je, label %.loopexit270.split.us.us, label %.outer271.us338.us.backedge

.outer271.us338.us.backedge:                      ; preds = %.outer271.backedge.us.us, %.loopexit270.split.us.us
  br label %.outer271.us338.us, !llvm.loop !781

10:                                               ; preds = %bb.au, %.outer271.us338.us
  %11 = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %8) #33 ; 9 uses
  %.not268.us344.us = icmp eq i16 %11, 0
  br i1 %.not268.us344.us, label %.loopexit, label %bb.au

.loopexit270.split.us.us:                         ; preds = %.outer271.backedge.us.us
  %i.jg = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %11, i32 noundef -80) #33
  br i1 %i.jg, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %.outer271.us338.us.backedge

.outer.split.us:                                  ; preds = %.outer.backedge, %.outer.outer
  %.4255.ph.lcssa = phi i32 [ %.4255.ph.ph, %.outer.outer ], [ %.4255.ph.be.fr, %.outer.backedge ] ; 2 uses
  %.0137.ph.lcssa = phi i32 [ %.0137.ph.ph, %.outer.outer ], [ %i.kc, %.outer.backedge ] ; 2 uses
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %i.jh = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jp) #33
  br i1 %i.jh, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us, label %bb.aw, !llvm.loop !781

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us: ; preds = %bb.av
  %i.ji = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jp) #33
  %i.jj = and i16 %i.jp, 63
  %i.jk = zext nneg i16 %i.jj to i64
  %.not.i.i.us = icmp ult i16 %i.jp, -16384
  %i.jl = icmp slt i16 %i.jp, -16384
  %i.jm = and i16 %i.jp, 12288
  %i.jn = icmp eq i16 %i.jm, 12288
  %i.jo = add nsw i32 %.0137.ph.lcssa, 1
  br label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit

bb.aw:                                            ; preds = %bb.av, %.outer.split.us
  %i.jp = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %8) #33 ; 8 uses
  %.not268.us = icmp eq i16 %i.jp, 0
  br i1 %.not268.us, label %.loopexit, label %bb.av

.outer.split:                                     ; preds = %.outer.split.lr.ph, %.outer.backedge
  %.0137.ph361 = phi i32 [ %i.kc, %.outer.backedge ], [ %.0137.ph.ph, %.outer.split.lr.ph ]
  %.4255.ph360 = phi i32 [ %.4255.ph.be.fr, %.outer.backedge ], [ %.4255.ph.ph, %.outer.split.lr.ph ] ; 6 uses
  br label %.outer271

.outer271:                                        ; preds = %.outer271.backedge, %.outer.split
  %.0137.ph272 = phi i32 [ %.0137.ph361, %.outer.split ], [ %i.kc, %.outer271.backedge ] ; 3 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.outer271, %bb.ay
  %i.jq = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %8) #33 ; 12 uses
  %.not268 = icmp eq i16 %i.jq, 0
  br i1 %.not268, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jr = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jq) #33
  br i1 %i.jr, label %bb.az, label %bb.ax, !llvm.loop !781

bb.az:                                            ; preds = %bb.ay
  %i.js = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jq) #33 ; 2 uses
  %i.jt = and i16 %i.jq, 63
  %i.ju = zext nneg i16 %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !283
  %i.jx = icmp ne i8 %i.jw, 0
  %.not.i.i = icmp ult i16 %i.jq, -16384          ; 2 uses
  %or.cond.not.i.i = and i1 %.not.i.i, %i.jx
  %i.jy = icmp slt i16 %i.jq, -16384              ; 2 uses
  %spec.select.i.i = or i1 %i.jy, %or.cond.not.i.i
  %i.jz = and i16 %i.jq, 12288
  %i.ka = icmp eq i16 %i.jz, 12288                ; 2 uses
  %i.kb = or i1 %i.ka, %spec.select.i.i           ; 2 uses
  %i.kc = add nsw i32 %.0137.ph272, 1             ; 4 uses
  br i1 %i.js, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kd = trunc i16 %i.jq to i8
  %i.ke = and i8 %i.kd, 63                        ; 2 uses
  %i.kf = zext nneg i8 %i.ke to i32
  %.not156 = icmp eq i32 %i.ic, %i.kf
  %i.kg = icmp sgt i16 %i.jq, 16383
  %or.cond395 = or i1 %.not156, %i.kg
  br i1 %or.cond395, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kh = icmp sgt i32 %.0137.ph272, 1
  br i1 %i.kh, label %.outer271.backedge, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ki = zext nneg i8 %i.ke to i64
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !283
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !150
  %i.ko = add nsw i32 %i.kn, %storemerge          ; 2 uses
  %.not158 = icmp sgt i32 %i.ko, %.4250.ph.ph.ph
  br i1 %.not158, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.4255.ph360, i32 %i.ko)
  br label %.outer.backedge, !llvm.loop !781

bb.be:                                            ; preds = %bb.bc
  %i.kp = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jq, i32 noundef %i.ir) #33
  br i1 %i.kp, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.sroa.speculated204 = call i32 @llvm.smax.i32(i32 %.4255.ph360, i32 %.sroa.speculated238)
  br label %.outer.backedge, !llvm.loop !781

bb.bg:                                            ; preds = %bb.be
  br i1 %i.kb, label %.loopexit270.split, label %.outer.backedge

bb.bh:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.kb, label %.loopexit270.split, label %.outer271.backedge

.outer271.backedge:                               ; preds = %bb.bh, %bb.bb
  br label %.outer271, !llvm.loop !781

.loopexit270.split:                               ; preds = %bb.bh, %bb.bg
  %i.kq = phi i1 [ false, %bb.bg ], [ %i.js, %bb.bh ]
  %i.kr = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jq, i32 noundef -80) #33
  br i1 %i.kr, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bd, %bb.bf, %.loopexit270.split, %bb.bg
  %.4255.ph.be = phi i32 [ %.4255.ph360, %bb.bg ], [ %.4255.ph360, %.loopexit270.split ], [ %.sroa.speculated, %bb.bd ], [ %.sroa.speculated204, %bb.bf ]
  %.4255.ph.be.fr = freeze i32 %.4255.ph.be       ; 3 uses
  %i.ks = icmp slt i32 %.4255.ph.be.fr, -31506
  br i1 %i.ks, label %.outer.split.us, label %.outer.split, !llvm.loop !781

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %.loopexit270.split, %.loopexit270.split.us.us, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us
  %.sink = phi i64 [ %i.ix, %.loopexit270.split.us.us ], [ %i.jk, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.ju, %.loopexit270.split ] ; 3 uses
  %i.kt = phi i1 [ %i.iv, %.loopexit270.split.us.us ], [ %i.ji, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.kq, %.loopexit270.split ]
  %.not.i.i299 = phi i1 [ %.not.i.i.us341.us, %.loopexit270.split.us.us ], [ %.not.i.i.us, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %.not.i.i, %.loopexit270.split ]
  %i.ku = phi i1 [ %i.jb, %.loopexit270.split.us.us ], [ %i.jl, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.jy, %.loopexit270.split ]
  %i.kv = phi i1 [ %i.jd, %.loopexit270.split.us.us ], [ %i.jn, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.ka, %.loopexit270.split ]
  %i.kw = phi i32 [ %i.jf, %.loopexit270.split.us.us ], [ %i.jo, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.kc, %.loopexit270.split ] ; 3 uses
  %.lcssa276279 = phi i16 [ %11, %.loopexit270.split.us.us ], [ %i.jp, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.jq, %.loopexit270.split ] ; 6 uses
  %.7 = phi i32 [ %.4255.ph.ph, %.loopexit270.split.us.us ], [ %.4255.ph.lcssa, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %.4255.ph360, %.loopexit270.split ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !283
  %i.kz = load atomic i64, ptr %i.ii monotonic, align 8
  %i.la = add i64 %i.kz, 1
  store atomic i64 %i.la, ptr %i.ii monotonic, align 8
  %i.lb = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ij) #33 ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0      ; 2 uses
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1
  %i.le = load ptr, ptr %i.bh, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.lf = load ptr, ptr %i.if, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa276279, ptr noundef nonnull align 8 dereferenceable(192) %6, i1 noundef zeroext %i.kt, ptr noundef nonnull align 1 dereferenceable(7) %i.lc, ptr noundef nonnull align 8 dereferenceable(416) %i.ld, ptr noundef nonnull %i.le, ptr noundef nonnull %i.lf) #33
  %i.lg = icmp ne i8 %i.ky, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i299, %i.lg
  %spec.select.i.i.i = or i1 %i.ku, %or.cond.not.i.i.i
  %i.lh = or i1 %i.kv, %spec.select.i.i.i
  store i16 %.lcssa276279, ptr %i.ik, align 4, !tbaa !196
  %i.li = load i8, ptr %i.r, align 4, !tbaa !270, !range !223, !noundef !72
  %i.lj = zext nneg i8 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4194304 x i8], ptr %i.il, i64 %i.lj
  %i.ll = zext i1 %i.lh to i64
  %i.lm = getelementptr inbounds nuw [2097152 x i8], ptr %i.lk, i64 %i.ll
  %i.ln = load i8, ptr %i.lc, align 1, !tbaa !292
  %i.lo = zext i8 %i.ln to i64                    ; 2 uses
  %i.lp = getelementptr inbounds nuw [131072 x i8], ptr %i.lm, i64 %i.lo
  %i.lq = getelementptr inbounds nuw [2048 x i8], ptr %i.lp, i64 %.sink
  store ptr %i.lq, ptr %i.im, align 8, !tbaa !246
  %i.lr = getelementptr inbounds nuw [131072 x i8], ptr %i.in, i64 %i.lo
  %i.ls = getelementptr inbounds nuw [2048 x i8], ptr %i.lr, i64 %.sink
  store ptr %i.ls, ptr %i.io, align 8, !tbaa !247
  %i.lt = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.k, i32 noundef %i.ip, i32 noundef %i.is)
  %i.lu = sub i32 0, %i.lt                        ; 7 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa276279) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ij) #33
  %i.lv = icmp slt i32 %.7, %i.lu
  br i1 %i.lv, label %bb.bi, label %.outer.outer.backedge

bb.bi:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.lw = icmp slt i32 %.4250.ph.ph.ph, %i.lu
  br i1 %i.lw, label %bb.bj, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bi, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.4255.ph.ph.be = phi i32 [ %i.lu, %bb.bi ], [ %.7, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  br label %.outer.outer, !llvm.loop !781

bb.bj:                                            ; preds = %bb.bi
  %i.lx = load ptr, ptr %2, align 8, !tbaa !250   ; 2 uses
  %i.ly = load ptr, ptr %i.k, align 8, !tbaa !250 ; 3 uses
  store i16 %.lcssa276279, ptr %i.lx, align 2, !tbaa !196
  %.09.i = getelementptr inbounds nuw i8, ptr %i.lx, i64 2 ; 3 uses
  %.not10.i = icmp eq ptr %i.ly, null
  br i1 %.not10.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bj
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !234 ; 2 uses
  %.not8.i391 = icmp eq i16 %i.lz, 0
  br i1 %.not8.i391, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ma = phi i16 [ %i.mc, %.lr.ph.i ], [ %i.lz, %.lr.ph.i.preheader ]
  %.0711.i393 = phi ptr [ %i.mb, %.lr.ph.i ], [ %i.ly, %.lr.ph.i.preheader ]
  %.012.i392 = phi ptr [ %.0.i182, %.lr.ph.i ], [ %.09.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.0711.i393, i64 2 ; 2 uses
  store i16 %i.ma, ptr %.012.i392, align 2, !tbaa !196
  %.0.i182 = getelementptr inbounds nuw i8, ptr %.012.i392, i64 2 ; 2 uses
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !234 ; 2 uses
  %.not8.i = icmp eq i16 %i.mc, 0
  br i1 %.not8.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.bj
  %.0.lcssa.i = phi ptr [ %.09.i, %bb.bj ], [ %.09.i, %.lr.ph.i.preheader ], [ %.0.i182, %.lr.ph.i ]
  store i16 0, ptr %.0.lcssa.i, align 2, !tbaa !196
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii:bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 152
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !140
  switch i8 %i.gb, label %bb.ae [
    i8 -1, label %bb.ac
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit166
    i8 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @abort() #37
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit166

bb.ae:                                            ; preds = %bb.ab
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit166: ; preds = %bb.ab, %bb.ad
  %.0.i.i.i.in.i.i.i164 = phi ptr [ %i.gc, %bb.ad ], [ %i.fz, %bb.ab ]
  %.0.i.i.i.i.i.i165 = load ptr, ptr %.0.i.i.i.in.i.i.i164, align 8, !tbaa !142
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.gg = load i8, ptr %i.da, align 4, !tbaa !177
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !150
  %i.gk = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i165, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.gd, ptr noundef nonnull align 64 dereferenceable(327680) %i.ge, i32 noundef %i.gj) #33
  %.pre = load i32, ptr %i.cx, align 4, !tbaa !281
  br label %bb.af

bb.af:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit166, %bb.aa
  %i.gl = phi i32 [ %i.cv, %bb.aa ], [ %.pre, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit166 ] ; 3 uses
  %.0137 = phi i32 [ %i.ft, %bb.aa ], [ %i.gk, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit166 ] ; 3 uses
  %i.gm = sdiv i32 %i.fr, 131072
  %i.gn = add nsw i32 %.0137, %i.gm
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gn, i32 -31506)
  %.sroa.speculated.i = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 31506) ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i, ptr %i.go, align 8, !tbaa !248
  %i.gp = add i32 %i.gl, -31507
  %spec.select.i167 = icmp ult i32 %i.gp, -63013
  br i1 %spec.select.i167, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !289
  %i.gs = zext i8 %i.gr to i32
  %i.gt = icmp sgt i32 %i.gl, %.sroa.speculated.i
  %i.gu = select i1 %i.gt, i32 2, i32 1
  %i.gv = and i32 %i.gu, %i.gs
  %.not152 = icmp eq i32 %i.gv, 0
  %spec.select = select i1 %.not152, i32 %.sroa.speculated.i, i32 %i.gl
  %i.gw = freeze i32 %spec.select
  br label %bb.al

bb.ah:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_116correction_valueERKNS_6Search6WorkerERKNS_8PositionEPKNS1_5StackE.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.gy = load ptr, ptr %i.gx, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i168 = load i64, ptr %i.gz, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.gy, i64 noundef %.sroa.0.0.copyload.i168)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !138
  %i.hc = getelementptr inbounds nuw [160 x i8], ptr %i.hb, i64 %.sroa.0.0.copyload.i168 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 152
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !140
  switch i8 %i.he, label %bb.ak [
    i8 -1, label %bb.ai
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171
    i8 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @abort() #37
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171

bb.ak:                                            ; preds = %bb.ah
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171: ; preds = %bb.ah, %bb.aj
  %.0.i.i.i.in.i.i.i169 = phi ptr [ %i.hf, %bb.aj ], [ %i.hc, %bb.ah ]
  %.0.i.i.i.i.i.i170 = load ptr, ptr %.0.i.i.i.in.i.i.i169, align 8, !tbaa !142
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.hj = load i8, ptr %i.da, align 4, !tbaa !177
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !150
  %i.hn = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i170, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.hg, ptr noundef nonnull align 64 dereferenceable(327680) %i.hh, i32 noundef %i.hm) #33 ; 2 uses
  %i.ho = sdiv i32 %i.fr, 131072
  %i.hp = add nsw i32 %i.hn, %i.ho
  %.sroa.speculate.load.false.sroa.speculated.i172 = call i32 @llvm.smax.i32(i32 %i.hp, i32 -31506)
  %.sroa.speculated.i173 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i172, i32 31506) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i173, ptr %i.hq, align 8, !tbaa !248
  br label %bb.al

bb.al:                                            ; preds = %bb.ag, %bb.af, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171
  %i.hr = phi i32 [ %.sroa.speculated.i173, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171 ], [ %.sroa.speculated.i, %bb.ag ], [ %.sroa.speculated.i, %bb.af ]
  %.0248 = phi i32 [ %.sroa.speculated.i173, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171 ], [ %i.gw, %bb.ag ], [ %.sroa.speculated.i, %bb.af ] ; 4 uses
  %.1138 = phi i32 [ %i.hn, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit171 ], [ %.0137, %bb.ag ], [ %.0137, %bb.af ] ; 2 uses
  %.not153 = icmp slt i32 %.0248, %4
  br i1 %.not153, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hs = add nsw i32 %.0248, %4                  ; 2 uses
  %i.ht = sdiv i32 %i.hs, 2                       ; 3 uses
  %i.hu = load i8, ptr %i.bh, align 2, !tbaa !278, !range !223, !noundef !72
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.thread258, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hw = load i32, ptr %i.r, align 8, !tbaa !249
  %i.hx = icmp slt i32 %i.hs, -63013
  %i.hy = select i1 %i.hx, i32 %i.hw, i32 0
  %i.hz = sub i32 %i.ht, %i.hy
  %i.ia = load ptr, ptr %i.bc, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ib = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ia) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.bb, i32 noundef %i.hz, i1 noundef zeroext false, i8 noundef zeroext 2, i32 noundef -2, i16 0, i32 noundef %.1138, i8 noundef zeroext %i.ib) #33
  br label %.thread258

bb.ao:                                            ; preds = %bb.al
  %spec.select264 = call i32 @llvm.smax.i32(i32 %.0248, i32 %.0243)
  %i.ic = add nsw i32 %i.hr, 351
  br label %bb.ap

bb.ap:                                            ; preds = %.thread257, %bb.ao
  %storemerge = phi i32 [ %i.ic, %bb.ao ], [ -32001, %.thread257 ] ; 4 uses
  %.3251 = phi i32 [ %.0248, %bb.ao ], [ -32001, %.thread257 ]
  %.3245 = phi i32 [ %spec.select264, %bb.ao ], [ %.0243, %.thread257 ]
  %.2139 = phi i32 [ %.1138, %bb.ao ], [ 32002, %.thread257 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.id = getelementptr inbounds i8, ptr %2, i64 -48
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !246
  store ptr %i.ie, ptr %i.a, align 8, !tbaa !294
  %i.if = getelementptr inbounds i8, ptr %2, i64 -28
  %i.ig = load i16, ptr %i.if, align 4, !tbaa !234 ; 2 uses
  switch i16 %i.ig, label %bb.aq [
    i16 65, label %bb.ar
    i16 0, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ih = and i16 %i.ig, 63
  %i.ii = zext nneg i16 %i.ih to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.ap, %bb.aq
  %i.ij = phi i32 [ %i.ii, %bb.aq ], [ 64, %bb.ap ], [ 64, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %.sroa.015.0.copyload = load i16, ptr %i.bf, align 8, !tbaa !196
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 917504
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 11419656 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !151, !nonnull !72, !align !73
  %i.io = load i32, ptr %i.r, align 8, !tbaa !249
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %7, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.015.0.copyload, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.il, ptr noundef nonnull %i.a, ptr noundef nonnull %i.in, i32 noundef %i.io) #33
  %i.ip = icmp slt i32 %storemerge, -31506
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.iy = sub nsw i32 0, %4
  br label %.outer.outer.outer

.outer.outer.outer:                               ; preds = %bb.bh, %bb.ar
  %.4252.ph.ph.ph = phi i32 [ %i.mc, %bb.bh ], [ %.3251, %bb.ar ]
  %.4246.ph.ph.ph = phi i32 [ %i.mc, %bb.bh ], [ %.3245, %bb.ar ] ; 5 uses
  %.0135.ph.ph.ph = phi i32 [ %i.le, %bb.bh ], [ 0, %bb.ar ]
  %.sroa.062.0.ph.ph.ph = phi i16 [ %.lcssa277280, %bb.bh ], [ 0, %bb.ar ] ; 3 uses
  %i.iz = sub nsw i32 %.4246.ph.ph.ph, %storemerge
  %.sroa.speculated235 = call i32 @llvm.smin.i32(i32 %storemerge, i32 %.4246.ph.ph.ph)
  %i.ja = sub nsw i32 0, %.4246.ph.ph.ph
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.outer.outer.outer
  %.4252.ph.ph = phi i32 [ %.4252.ph.ph.ph, %.outer.outer.outer ], [ %.4252.ph.ph.be, %.outer.outer.backedge ] ; 5 uses
  %.0135.ph.ph = phi i32 [ %.0135.ph.ph.ph, %.outer.outer.outer ], [ %i.le, %.outer.outer.backedge ] ; 3 uses
  %i.jb = icmp slt i32 %.4252.ph.ph, -31506
  br i1 %i.jb, label %.outer.split.us, label %.outer.split.lr.ph

.outer.split.lr.ph:                               ; preds = %.outer.outer
  br i1 %i.ip, label %.outer272.us339.us, label %.outer.split

.outer272.us339.us:                               ; preds = %.outer.split.lr.ph, %.outer272.us339.us.backedge
  %.0135.ph273.us340.us = phi i32 [ %i.jn, %.outer272.us339.us.backedge ], [ %.0135.ph.ph, %.outer.split.lr.ph ] ; 2 uses
  br label %9

bb.as:                                            ; preds = %9
  %i.jc = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %10) #33
  br i1 %i.jc, label %.outer272.backedge.us.us, label %9, !llvm.loop !784

.outer272.backedge.us.us:                         ; preds = %bb.as
  %i.jd = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %10) #33
  %i.je = and i16 %10, 63
  %i.jf = zext nneg i16 %i.je to i64              ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !283
  %i.ji = icmp ne i8 %i.jh, 0
  %.not.i.i.us342.us = icmp ult i16 %10, -16384   ; 2 uses
  %or.cond.not.i.i.us343.us = and i1 %.not.i.i.us342.us, %i.ji
  %i.jj = icmp slt i16 %10, -16384                ; 2 uses
  %spec.select.i.i.us344.us = or i1 %i.jj, %or.cond.not.i.i.us343.us
  %i.jk = and i16 %10, 12288
  %i.jl = icmp eq i16 %i.jk, 12288                ; 2 uses
  %i.jm = or i1 %i.jl, %spec.select.i.i.us344.us
  %i.jn = add nsw i32 %.0135.ph273.us340.us, 1    ; 2 uses
  br i1 %i.jm, label %.loopexit271.split.us.us, label %.outer272.us339.us.backedge

.outer272.us339.us.backedge:                      ; preds = %.outer272.backedge.us.us, %.loopexit271.split.us.us
  br label %.outer272.us339.us, !llvm.loop !784

9:                                                ; preds = %bb.as, %.outer272.us339.us
  %10 = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %7) #33 ; 9 uses
  %.not268.us345.us = icmp eq i16 %10, 0
  br i1 %.not268.us345.us, label %.loopexit, label %bb.as

.loopexit271.split.us.us:                         ; preds = %.outer272.backedge.us.us
  %i.jo = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %10, i32 noundef -80) #33
  br i1 %i.jo, label %.loopexit276, label %.outer272.us339.us.backedge

.outer.split.us:                                  ; preds = %.outer.backedge, %.outer.outer
  %.4252.ph.lcssa = phi i32 [ %.4252.ph.ph, %.outer.outer ], [ %.4252.ph.be.fr, %.outer.backedge ] ; 2 uses
  %.0135.ph.lcssa = phi i32 [ %.0135.ph.ph, %.outer.outer ], [ %i.kk, %.outer.backedge ] ; 2 uses
  br label %bb.au

bb.at:                                            ; preds = %bb.au
  %i.jp = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jx) #33
  br i1 %i.jp, label %.loopexit270.split.us, label %bb.au, !llvm.loop !784

.loopexit270.split.us:                            ; preds = %bb.at
  %i.jq = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jx) #33
  %i.jr = and i16 %i.jx, 63
  %i.js = zext nneg i16 %i.jr to i64
  %.not.i.i.us = icmp ult i16 %i.jx, -16384
  %i.jt = icmp slt i16 %i.jx, -16384
  %i.ju = and i16 %i.jx, 12288
  %i.jv = icmp eq i16 %i.ju, 12288
  %i.jw = add nsw i32 %.0135.ph.lcssa, 1
  br label %.loopexit276

bb.au:                                            ; preds = %bb.at, %.outer.split.us
  %i.jx = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %7) #33 ; 8 uses
  %.not268.us = icmp eq i16 %i.jx, 0
  br i1 %.not268.us, label %.loopexit, label %bb.at

.outer.split:                                     ; preds = %.outer.split.lr.ph, %.outer.backedge
  %.0135.ph362 = phi i32 [ %i.kk, %.outer.backedge ], [ %.0135.ph.ph, %.outer.split.lr.ph ]
  %.4252.ph361 = phi i32 [ %.4252.ph.be.fr, %.outer.backedge ], [ %.4252.ph.ph, %.outer.split.lr.ph ] ; 6 uses
  br label %.outer272

.outer272:                                        ; preds = %.outer272.backedge, %.outer.split
  %.0135.ph273 = phi i32 [ %.0135.ph362, %.outer.split ], [ %i.kk, %.outer272.backedge ] ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %.outer272, %bb.aw
  %i.jy = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %7) #33 ; 12 uses
  %.not268 = icmp eq i16 %i.jy, 0
  br i1 %.not268, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jz = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jy) #33
  br i1 %i.jz, label %bb.ax, label %bb.av, !llvm.loop !784

bb.ax:                                            ; preds = %bb.aw
  %i.ka = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jy) #33 ; 2 uses
  %i.kb = and i16 %i.jy, 63
  %i.kc = zext nneg i16 %i.kb to i64              ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !283
  %i.kf = icmp ne i8 %i.ke, 0
  %.not.i.i = icmp ult i16 %i.jy, -16384          ; 2 uses
  %or.cond.not.i.i = and i1 %.not.i.i, %i.kf
  %i.kg = icmp slt i16 %i.jy, -16384              ; 2 uses
  %spec.select.i.i = or i1 %i.kg, %or.cond.not.i.i
  %i.kh = and i16 %i.jy, 12288
  %i.ki = icmp eq i16 %i.kh, 12288                ; 2 uses
  %i.kj = or i1 %i.ki, %spec.select.i.i           ; 2 uses
  %i.kk = add nsw i32 %.0135.ph273, 1             ; 4 uses
  br i1 %i.ka, label %bb.bf, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kl = trunc i16 %i.jy to i8
  %i.km = and i8 %i.kl, 63                        ; 2 uses
  %i.kn = zext nneg i8 %i.km to i32
  %.not154 = icmp eq i32 %i.ij, %i.kn
  %i.ko = icmp sgt i16 %i.jy, 16383
  %or.cond392 = or i1 %.not154, %i.ko
  br i1 %or.cond392, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kp = icmp sgt i32 %.0135.ph273, 1
  br i1 %i.kp, label %.outer272.backedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kq = zext nneg i8 %i.km to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !283
  %i.kt = zext i8 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !150
  %i.kw = add nsw i32 %i.kv, %storemerge          ; 2 uses
  %.not156 = icmp sgt i32 %i.kw, %.4246.ph.ph.ph
  br i1 %.not156, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.4252.ph361, i32 %i.kw)
  br label %.outer.backedge, !llvm.loop !784

bb.bc:                                            ; preds = %bb.ba
  %i.kx = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jy, i32 noundef %i.iz) #33
  br i1 %i.kx, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.speculated201 = call i32 @llvm.smax.i32(i32 %.4252.ph361, i32 %.sroa.speculated235)
  br label %.outer.backedge, !llvm.loop !784

bb.be:                                            ; preds = %bb.bc
  br i1 %i.kj, label %.loopexit271.split, label %.outer.backedge

bb.bf:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.kj, label %.loopexit271.split, label %.outer272.backedge

.outer272.backedge:                               ; preds = %bb.bf, %bb.az
  br label %.outer272, !llvm.loop !784

.loopexit271.split:                               ; preds = %bb.bf, %bb.be
  %i.ky = phi i1 [ false, %bb.be ], [ %i.ka, %bb.bf ]
  %i.kz = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jy, i32 noundef -80) #33
  br i1 %i.kz, label %.loopexit276, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bb, %bb.bd, %.loopexit271.split, %bb.be
  %.4252.ph.be = phi i32 [ %.4252.ph361, %bb.be ], [ %.4252.ph361, %.loopexit271.split ], [ %.sroa.speculated, %bb.bb ], [ %.sroa.speculated201, %bb.bd ]
  %.4252.ph.be.fr = freeze i32 %.4252.ph.be       ; 3 uses
  %i.la = icmp slt i32 %.4252.ph.be.fr, -31506
  br i1 %i.la, label %.outer.split.us, label %.outer.split, !llvm.loop !784

.loopexit276:                                     ; preds = %.loopexit271.split, %.loopexit271.split.us.us, %.loopexit270.split.us
  %.sink = phi i64 [ %i.jf, %.loopexit271.split.us.us ], [ %i.js, %.loopexit270.split.us ], [ %i.kc, %.loopexit271.split ] ; 3 uses
  %i.lb = phi i1 [ %i.jd, %.loopexit271.split.us.us ], [ %i.jq, %.loopexit270.split.us ], [ %i.ky, %.loopexit271.split ]
  %.not.i.i300 = phi i1 [ %.not.i.i.us342.us, %.loopexit271.split.us.us ], [ %.not.i.i.us, %.loopexit270.split.us ], [ %.not.i.i, %.loopexit271.split ]
  %i.lc = phi i1 [ %i.jj, %.loopexit271.split.us.us ], [ %i.jt, %.loopexit270.split.us ], [ %i.kg, %.loopexit271.split ]
  %i.ld = phi i1 [ %i.jl, %.loopexit271.split.us.us ], [ %i.jv, %.loopexit270.split.us ], [ %i.ki, %.loopexit271.split ]
  %i.le = phi i32 [ %i.jn, %.loopexit271.split.us.us ], [ %i.jw, %.loopexit270.split.us ], [ %i.kk, %.loopexit271.split ] ; 3 uses
  %.lcssa277280 = phi i16 [ %10, %.loopexit271.split.us.us ], [ %i.jx, %.loopexit270.split.us ], [ %i.jy, %.loopexit271.split ] ; 5 uses
  %.7 = phi i32 [ %.4252.ph.ph, %.loopexit271.split.us.us ], [ %.4252.ph.lcssa, %.loopexit270.split.us ], [ %.4252.ph361, %.loopexit271.split ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !283
  %i.lh = load atomic i64, ptr %i.iq monotonic, align 8
  %i.li = add i64 %i.lh, 1
  store atomic i64 %i.li, ptr %i.iq monotonic, align 8
  %i.lj = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #33 ; 2 uses
  %i.lk = extractvalue { ptr, ptr } %i.lj, 0      ; 2 uses
  %i.ll = extractvalue { ptr, ptr } %i.lj, 1
  %i.lm = load ptr, ptr %i.bc, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ln = load ptr, ptr %i.im, align 8, !tbaa !151, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277280, ptr noundef nonnull align 8 dereferenceable(192) %5, i1 noundef zeroext %i.lb, ptr noundef nonnull align 1 dereferenceable(7) %i.lk, ptr noundef nonnull align 8 dereferenceable(416) %i.ll, ptr noundef nonnull %i.lm, ptr noundef nonnull %i.ln) #33
  %i.lo = icmp ne i8 %i.lg, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i300, %i.lo
  %spec.select.i.i.i = or i1 %i.lc, %or.cond.not.i.i.i
  %i.lp = or i1 %i.ld, %spec.select.i.i.i
  store i16 %.lcssa277280, ptr %i.is, align 4, !tbaa !196
  %i.lq = load i8, ptr %i.p, align 4, !tbaa !270, !range !223, !noundef !72
  %i.lr = zext nneg i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4194304 x i8], ptr %i.it, i64 %i.lr
  %i.lt = zext i1 %i.lp to i64
  %i.lu = getelementptr inbounds nuw [2097152 x i8], ptr %i.ls, i64 %i.lt
  %i.lv = load i8, ptr %i.lk, align 1, !tbaa !292
  %i.lw = zext i8 %i.lv to i64                    ; 2 uses
  %i.lx = getelementptr inbounds nuw [131072 x i8], ptr %i.lu, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [2048 x i8], ptr %i.lx, i64 %.sink
  store ptr %i.ly, ptr %i.iu, align 8, !tbaa !246
  %i.lz = getelementptr inbounds nuw [131072 x i8], ptr %i.iv, i64 %i.lw
  %i.ma = getelementptr inbounds nuw [2048 x i8], ptr %i.lz, i64 %.sink
  store ptr %i.ma, ptr %i.iw, align 8, !tbaa !247
  %i.mb = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ix, i32 noundef %i.iy, i32 noundef %i.ja)
  %i.mc = sub i32 0, %i.mb                        ; 7 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277280) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #33
  %i.md = icmp slt i32 %.7, %i.mc
  br i1 %i.md, label %bb.bg, label %.outer.outer.backedge

bb.bg:                                            ; preds = %.loopexit276
  %i.me = icmp slt i32 %.4246.ph.ph.ph, %i.mc
  br i1 %i.me, label %bb.bh, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bg, %.loopexit276
  %.4252.ph.ph.be = phi i32 [ %i.mc, %bb.bg ], [ %.7, %.loopexit276 ]
  br label %.outer.outer, !llvm.loop !784

bb.bh:                                            ; preds = %bb.bg
  %i.mf = icmp sgt i32 %4, %i.mc
  br i1 %i.mf, label %.outer.outer.outer, label %.loopexit, !llvm.loop !784

.loopexit:                                        ; preds = %bb.bh, %bb.au, %9, %bb.av
  %.9 = phi i32 [ %.4252.ph361, %bb.av ], [ %.4252.ph.ph, %9 ], [ %.4252.ph.lcssa, %bb.au ], [ %i.mc, %bb.bh ] ; 5 uses
  %.1136 = phi i32 [ %.0135.ph273, %bb.av ], [ %.0135.ph273.us340.us, %9 ], [ %.0135.ph.lcssa, %bb.au ], [ %i.le, %bb.bh ]
  %.sroa.062.2 = phi i16 [ %.sroa.062.0.ph.ph.ph, %bb.av ], [ %.sroa.062.0.ph.ph.ph, %9 ], [ %.sroa.062.0.ph.ph.ph, %bb.au ], [ %.lcssa277280, %bb.bh ]
  %i.mg = load i8, ptr %i.p, align 4, !tbaa !270, !range !223, !noundef !72
  %i.mh = trunc nuw i8 %i.mg to i1                ; 2 uses
  %i.mi = icmp eq i32 %.9, -32001
  %or.cond = and i1 %i.mi, %i.mh
  br i1 %or.cond, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.loopexit
  %i.mj = load i32, ptr %i.r, align 8, !tbaa !249
  %i.mk = add nsw i32 %i.mj, -32000
  br label %bb.br

bb.bj:                                            ; preds = %.loopexit
  %i.ml = add i32 %.9, 31506
  %spec.select.i180 = icmp ult i32 %i.ml, 63013
  %i.mm = icmp sgt i32 %.9, %4
  %or.cond266 = and i1 %i.mm, %spec.select.i180
  br i1 %or.cond266, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
end_hunk_1
