Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.gp = load i8, ptr %i.p, align 4, !tbaa !177
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !150
  %i.gt = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.gm, ptr noundef nonnull align 64 dereferenceable(327680) %i.gn, i32 noundef %i.gs) #32
  %.pre = load i32, ptr %i.co, align 4, !tbaa !281
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %bb.ad
  %i.gu = phi i32 [ %i.cn, %bb.ad ], [ %.pre, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ] ; 3 uses
  %.0397 = phi i32 [ %i.gc, %bb.ad ], [ %i.gt, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ] ; 3 uses
  %i.gv = sdiv i32 %i.ft, 131072
  %i.gw = add nsw i32 %.0397, %i.gv
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.gw, i32 -31506)
  %.sroa.speculated.i = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 31506) ; 6 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.sroa.speculated.i, ptr %i.gx, align 8, !tbaa !248
  %.not920 = icmp eq i32 %i.gu, 32002
  br i1 %.not920, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !289
  %i.ha = zext i8 %i.gz to i32
  %i.hb = icmp sgt i32 %i.gu, %.sroa.speculated.i
  %i.hc = select i1 %i.hb, i32 2, i32 1
  %i.hd = and i32 %i.hc, %i.ha
  %.not420 = icmp eq i32 %i.hd, 0
  %spec.select = select i1 %.not420, i32 %.sroa.speculated.i, i32 %i.gu
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !176, !nonnull !72, !align !73 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload.i477 = load i64, ptr %i.hg, align 8, !tbaa !55 ; 2 uses
  call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.hf, i64 noundef %.sroa.0.0.copyload.i477)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !138
  %i.hj = getelementptr inbounds nuw [160 x i8], ptr %i.hi, i64 %.sroa.0.0.copyload.i477 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 152
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !140
  switch i8 %i.hl, label %bb.an [
    i8 -1, label %bb.al
    i8 2, label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480
    i8 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  call void @abort() #36
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  br label %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480

bb.an:                                            ; preds = %bb.ak
  unreachable

_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480: ; preds = %bb.ak, %bb.am
  %.0.i.i.i.in.i.i.i478 = phi ptr [ %i.hm, %bb.am ], [ %i.hj, %bb.ak ]
  %.0.i.i.i.i.i.i479 = load ptr, ptr %.0.i.i.i.in.i.i.i478, align 8, !tbaa !142
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.hq = load i8, ptr %i.p, align 4, !tbaa !177
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !150
  %i.hu = call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i.i479, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.hn, ptr noundef nonnull align 64 dereferenceable(327680) %i.ho, i32 noundef %i.ht) #32 ; 3 uses
  %i.hv = sdiv i32 %i.ft, 131072
  %i.hw = add nsw i32 %i.hu, %i.hv
  %.sroa.speculate.load.false.sroa.speculated.i481 = call i32 @llvm.smax.i32(i32 %i.hw, i32 -31506)
  %.sroa.speculated.i482 = call noundef range(i32 -31506, 31507) i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i481, i32 31506) ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 %.sroa.speculated.i482, ptr %i.hx, align 8, !tbaa !248
  %i.hy = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.ib = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ia) #32
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.bc, i32 noundef 32002, i1 noundef zeroext %i.hz, i8 noundef zeroext 0, i32 noundef -2, i16 0, i32 noundef %i.hu, i8 noundef zeroext %i.ib) #32
  %.pre1061 = load i32, ptr %i.hx, align 8, !tbaa !248
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.ab, %bb.ai, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480, %bb.z
  %i.ic = phi i32 [ %i.fx, %bb.z ], [ %i.ga, %bb.ab ], [ %.pre1061, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %.sroa.speculated.i, %bb.aj ], [ %.sroa.speculated.i, %bb.ai ] ; 3 uses
  %.1398 = phi i32 [ 32002, %bb.z ], [ %i.ga, %bb.ab ], [ %i.hu, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %.0397, %bb.aj ], [ %.0397, %bb.ai ] ; 2 uses
  %.0387 = phi i32 [ %i.fx, %bb.z ], [ %i.ga, %bb.ab ], [ %.sroa.speculated.i482, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit480 ], [ %spec.select, %bb.aj ], [ %.sroa.speculated.i, %bb.ai ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.ie = getelementptr inbounds i8, ptr %2, i64 -80
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !248
  %i.ig = icmp sgt i32 %i.ic, %i.if               ; 4 uses
  %i.ih = zext i1 %i.ig to i8
  %i.ii = getelementptr inbounds i8, ptr %2, i64 -24 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !248 ; 2 uses
  %i.ik = sub nsw i32 0, %i.ij
  %i.il = icmp sle i32 %i.ic, %i.ik               ; 2 uses
  %i.im = icmp sgt i32 %i.al, 2
  %or.cond.not = select i1 %i.im, i1 %i.il, i1 false
  %i.in = zext i1 %or.cond.not to i32
  %spec.select892 = add nuw nsw i32 %.sroa.speculated672, %i.in ; 2 uses
  %i.io = icmp sgt i32 %i.al, 1
  %i.ip = icmp samesign ugt i32 %spec.select892, 1
  %or.cond6 = select i1 %i.io, i1 %i.ip, i1 false
  %i.iq = add nsw i32 %i.ij, %i.ic                ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 173
  %or.cond894 = select i1 %or.cond6, i1 %i.ir, i1 false
  %i.is = sext i1 %or.cond894 to i32
  %.1 = add nsw i32 %spec.select892, %i.is        ; 12 uses
  %i.it = load i8, ptr %i.k, align 4, !tbaa !270, !range !223, !noundef !72
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.bo, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iv = load i16, ptr %i.af, align 4, !tbaa !234 ; 3 uses
  switch i16 %i.iv, label %bb.aq [
    i16 65, label %bb.au
    i16 0, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds i8, ptr %2, i64 -12
  %i.ix = load i8, ptr %i.iw, align 4, !tbaa !270, !range !223, !noundef !72
  %i.iy = or i8 %i.ix, %i.n
  %or.cond8.not = icmp eq i8 %i.iy, 0
  br i1 %or.cond8.not, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.iz = sub nsw i32 0, %i.iq
  %i.ja = icmp slt i32 %i.iq, -167
  %.sroa.speculate.load.false586.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.iz, i32 -209)
  %i.jb = add nsw i32 %.sroa.speculate.load.false586.sroa.speculated, 59
  %i.jc = select i1 %i.ja, i32 226, i32 %i.jb     ; 2 uses
  %i.jd = xor i8 %i.q, 1
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.je
  %i.jg = zext i16 %i.iv to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %i.jg ; 2 uses
  %i.ji = mul nsw i32 %i.jc, 9
  %.sroa.speculated.i486 = call i32 @llvm.smin.i32(i32 %i.ji, i32 7183) ; 2 uses
  %i.jj = load i16, ptr %i.jh, align 2, !tbaa !147
  %i.jk = sext i16 %i.jj to i32                   ; 2 uses
  %i.jl = add nsw i32 %.sroa.speculated.i486, %i.jk
  %i.jm = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i486, i1 true)
  %i.jn = mul nsw i32 %i.jm, %i.jk
  %.neg.i = sdiv i32 %i.jn, -7183
  %i.jo = add nsw i32 %i.jl, %.neg.i
  %i.jp = trunc i32 %i.jo to i16
  store i16 %i.jp, ptr %i.jh, align 2, !tbaa !147
  %i.jq = load i8, ptr %i.bf, align 4, !tbaa !267, !range !223, !noundef !72
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.js = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !283 ; 2 uses
  %i.jv = and i8 %i.ju, 7
  %.not421 = icmp eq i8 %i.jv, 1
  %i.jw = and i16 %i.iv, -16384
  %.not422 = icmp eq i16 %i.jw, 16384
  %or.cond895 = or i1 %.not422, %.not421
  br i1 %or.cond895, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jx = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.jy = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !286
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !290
  %i.kd = and i64 %i.kc, %i.ka
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !170
  %i.kg = getelementptr inbounds nuw [2048 x i8], ptr %i.kf, i64 %i.kd
  %i.kh = zext i8 %i.ju to i64
  %i.ki = getelementptr inbounds nuw [128 x i8], ptr %i.kg, i64 %i.kh
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.js ; 2 uses
  %i.kk = mul nsw i32 %i.jc, 13
  %.sroa.speculated.i488 = call i32 @llvm.smin.i32(i32 %i.kk, i32 8192) ; 2 uses
  %i.kl = load atomic i16, ptr %i.kj monotonic, align 2
  %i.km = sext i16 %i.kl to i32                   ; 2 uses
  %i.kn = add nsw i32 %.sroa.speculated.i488, %i.km
  %i.ko = call i32 @llvm.abs.i32(i32 %.sroa.speculated.i488, i1 true)
  %i.kp = mul nsw i32 %i.ko, %i.km
  %.neg.i489 = sdiv i32 %i.kp, -8192
  %i.kq = add nsw i32 %i.kn, %.neg.i489
  %i.kr = trunc i32 %i.kq to i16
  store atomic i16 %i.kr, ptr %i.kj monotonic, align 2
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aq
  %i.ks = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.kt = trunc nuw i8 %i.ks to i1
  %i.ku = icmp samesign ugt i32 %.1, 13
  %or.cond10.not = select i1 %i.kt, i1 true, i1 %i.ku
  br i1 %or.cond10.not, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kv = load i8, ptr %i.bi, align 2, !tbaa !278, !range !223, !noundef !72
  %16 = icmp eq i8 %i.kv, 0
  %narrow.neg.i.finite = select i1 %16, i8 -23, i8 0
  %narrow3.i = add nsw i8 %narrow.neg.i.finite, 76
  %i.kw = zext nneg i8 %narrow3.i to i32          ; 2 uses
  %i.kx = mul nuw nsw i32 %.1, %i.kw
  %i.ky = select i1 %i.ig, i32 2474, i32 0
  %i.kz = select i1 %i.il, i32 0, i32 331
  %i.la = add nuw nsw i32 %i.kz, %i.ky
  %i.lb = mul nuw nsw i32 %i.la, %i.kw
  %i.lc = lshr i32 %i.lb, 10
  %i.ld = call i32 @llvm.abs.i32(i32 %i.ft, i1 true)
  %i.le = udiv i32 %i.ld, 174665
  %i.lf = add nuw nsw i32 %i.le, %i.kx
  %.neg921 = sub i32 %.0387, %i.lf
  %i.lg = add i32 %.neg921, %i.lc
  %.not = icmp slt i32 %i.lg, %4
  %.not424 = icmp slt i32 %.0387, %4
  %or.cond467 = or i1 %.not424, %.not
  br i1 %or.cond467, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lh = load i16, ptr %i.bg, align 8, !tbaa !234
  %.not922 = icmp eq i16 %i.lh, 0
  %or.cond13 = or i1 %i.dd, %.not922
  %or.cond13.not = xor i1 %or.cond13, true
  %i.li = icmp slt i32 %4, -31506
  %or.cond896 = or i1 %i.li, %or.cond13.not
  %i.lj = icmp sgt i32 %.0387, 31506
  %or.cond897 = select i1 %or.cond896, i1 true, i1 %i.lj
  br i1 %or.cond897, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lk = shl nsw i32 %4, 1
  %i.ll = add nsw i32 %.0387, %i.lk
  %i.lm = sdiv i32 %i.ll, 3
  br label %.thread851

bb.ay:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.pre1063 = load i32, ptr %i.id, align 8, !tbaa !248 ; 5 uses
  br i1 %6, label %bb.az, label %.thread848

bb.az:                                            ; preds = %bb.ay
  %.neg = mul nsw i32 %.1, -18
  %i.ln = add i32 %4, 350
  %i.lo = add i32 %i.ln, %.neg
  %.not425 = icmp slt i32 %.pre1063, %i.lo
  %brmerge = or i1 %i.cp, %.not425
  br i1 %brmerge, label %.thread848, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lp = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = zext i8 %i.q to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !150
  %.not426 = icmp eq i32 %i.lt, 0
  br i1 %.not426, label %.thread848, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lu = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 11419828 ; 4 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !291
  %.not427 = icmp slt i32 %i.lu, %i.lw
  %i.lx = icmp slt i32 %4, -31506
  %or.cond898 = or i1 %i.lx, %.not427
  br i1 %or.cond898, label %.thread848, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.lhs.trunc = trunc nuw i32 %.1 to i8
  %i.ly = udiv i8 %.lhs.trunc, 3
  %narrow923 = add nuw nsw i8 %i.ly, 7
  %i.lz = zext nneg i8 %narrow923 to i32
  %i.ma = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  call void @_ZN9Stockfish8Position12do_null_moveERNS_9StateInfoERKNS_18TranspositionTableE(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(17) %i.ma) #32
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i16 65, ptr %i.mb, align 4, !tbaa !196
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !246
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !247
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.mh = sub nsw i32 0, %4
  %i.mi = sub nsw i32 1, %4
  %i.mj = sub nsw i32 %.1, %i.lz                  ; 3 uses
  %i.mk = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.mg, i32 noundef %i.mh, i32 noundef %i.mi, i32 noundef %i.mj, i1 noundef zeroext false) ; 2 uses
  %i.ml = sub nsw i32 0, %i.mk                    ; 3 uses
  call void @_ZN9Stockfish8Position14undo_null_moveEv(ptr noundef nonnull align 8 dereferenceable(1048) %1) #32
  %.not428 = icmp sgt i32 %4, %i.ml
  %i.mm = icmp slt i32 %i.mk, -31506
  %or.cond899 = or i1 %.not428, %i.mm
  br i1 %or.cond899, label %..thread848_crit_edge, label %bb.bd

..thread848_crit_edge:                            ; preds = %bb.bc
  %.pre1062 = load i32, ptr %i.id, align 8, !tbaa !248
  br label %.thread848

bb.bd:                                            ; preds = %bb.bc
  %i.mn = load i32, ptr %i.lv, align 4, !tbaa !291
  %i.mo = icmp ne i32 %i.mn, 0
  %i.mp = icmp samesign ult i32 %.1, 16
  %or.cond15 = select i1 %i.mo, i1 true, i1 %i.mp
  br i1 %or.cond15, label %.thread851, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mq = load i32, ptr %i.ac, align 8, !tbaa !249
  %i.mr = trunc nsw i32 %i.mj to i16
  %.lhs.trunc891 = mul nsw i16 %i.mr, 3
  %i.ms = sdiv i16 %.lhs.trunc891, 4
  %.sext = sext i16 %i.ms to i32
  %i.mt = add nsw i32 %i.mq, %.sext
  store i32 %i.mt, ptr %i.lv, align 4, !tbaa !291
  %i.mu = add nsw i32 %4, -1
  %i.mv = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %2, i32 noundef %i.mu, i32 noundef %4, i32 noundef %i.mj, i1 noundef zeroext false)
  store i32 0, ptr %i.lv, align 4, !tbaa !291
  %.not429 = icmp slt i32 %i.mv, %4
  br i1 %.not429, label %.thread854, label %.thread851

.thread854:                                       ; preds = %bb.be
  %i.mw = load i32, ptr %i.id, align 8, !tbaa !248 ; 2 uses
  %i.mx = icmp sge i32 %i.mw, %4
  %i.my = or i1 %i.ig, %i.mx
  %i.mz = zext i1 %i.my to i8
  br label %.thread859

.thread848:                                       ; preds = %..thread848_crit_edge, %bb.az, %bb.bb, %bb.ba, %bb.ay
  %i.na = phi i32 [ %.pre1062, %..thread848_crit_edge ], [ %.pre1063, %bb.az ], [ %.pre1063, %bb.bb ], [ %.pre1063, %bb.ba ], [ %.pre1063, %bb.ay ] ; 3 uses
  %i.nb = icmp sge i32 %i.na, %4
  %i.nc = or i1 %i.ig, %i.nb                      ; 2 uses
  %i.nd = zext i1 %i.nc to i8                     ; 3 uses
  %i.ne = icmp samesign ugt i32 %.1, 5
  br i1 %i.ne, label %.thread859, label %bb.bf

.thread859:                                       ; preds = %.thread854, %.thread848
  %i.nf = phi i8 [ %i.mz, %.thread854 ], [ %i.nd, %.thread848 ] ; 2 uses
  %i.ng = phi i32 [ %i.mw, %.thread854 ], [ %i.na, %.thread848 ]
  %i.nh = load i16, ptr %i.bg, align 8, !tbaa !234
  %i.ni = icmp eq i16 %i.nh, 0
  %i.nj = icmp slt i32 %i.al, 4
  %or.cond18.not.not = select i1 %i.ni, i1 %i.nj, i1 false
  %i.nk = sext i1 %or.cond18.not.not to i32
  %spec.select900 = add nsw i32 %.1, %i.nk
  %i.nl = add nsw i32 %4, 235
  %narrow862 = mul nuw nsw i8 %i.nf, 63
  %i.nm = zext nneg i8 %narrow862 to i32
  %i.nn = sub nsw i32 %i.nl, %i.nm
  br label %bb.bg

bb.bf:                                            ; preds = %.thread848
  %i.no = add nsw i32 %4, 235
  %.neg924 = select i1 %i.nc, i32 -63, i32 0
  %i.np = add nsw i32 %i.no, %.neg924
  %i.nq = icmp samesign ugt i32 %.1, 2
  br i1 %i.nq, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %.thread859, %bb.bf
  %i.nr = phi i32 [ %i.nn, %.thread859 ], [ %i.np, %bb.bf ] ; 7 uses
  %.2864 = phi i32 [ %spec.select900, %.thread859 ], [ %.1, %bb.bf ] ; 5 uses
  %i.ns = phi i32 [ %i.ng, %.thread859 ], [ %i.na, %bb.bf ]
  %i.nt = phi i8 [ %i.nf, %.thread859 ], [ %i.nd, %bb.bf ] ; 3 uses
  %i.nu = sub nsw i32 0, %i.nr                    ; 2 uses
  %i.nv = add i32 %4, -31507
  %spec.select.i490 = icmp ult i32 %i.nv, -63013
  br i1 %spec.select.i490, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nw = load i32, ptr %i.co, align 4, !tbaa !281 ; 2 uses
  %i.nx = icmp ne i32 %i.nw, 32002
  %i.ny = icmp slt i32 %i.nw, %i.nr
  %or.cond901 = select i1 %i.nx, i1 %i.ny, i1 false
  br i1 %or.cond901, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %.sroa.0121.0.copyload = load i16, ptr %i.bg, align 8, !tbaa !196
  %i.nz = sub nsw i32 %i.nr, %i.ns
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEEE(ptr noundef nonnull align 8 dereferenceable(2164) %12, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0121.0.copyload, i32 noundef %i.nz, ptr noundef nonnull %i.oa) #32
  %i.ob = add nsw i32 %.2864, -5
  %i.oc = load i32, ptr %i.id, align 8, !tbaa !248
  %i.od = sub nsw i32 %i.oc, %4
  %.neg431 = sdiv i32 %i.od, -315
  %i.oe = add nsw i32 %i.ob, %.neg431
  %i.of = call i32 @llvm.smax.i32(i32 %i.oe, i32 0)
  %.sroa.speculated706 = call i32 @llvm.umin.i32(i32 %.2864, i32 %i.of) ; 3 uses
  %i.og = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %12) #32 ; 2 uses
  %.not929988 = icmp eq i16 %i.og, 0
  br i1 %.not929988, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.op = sub nsw i32 1, %i.nr                    ; 2 uses
  %i.oq = icmp ne i32 %.sroa.speculated706, 0
  %i.or = xor i1 %6, true
  %i.os = add nuw nsw i32 %.sroa.speculated706, 1
end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_125update_correction_historyERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerEi:bb.a
  %i.ap = add nsw i32 %.sroa.speculated.i29, %i.al
  %i.aq = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i29, i1 true)
  %i.ar = mul nsw i32 %i.aq, %i.al
  %.neg.i30 = sdiv i32 %i.ar, -1024
  %i.as = add nsw i32 %i.ap, %.neg.i30
  %i.at = trunc i32 %i.as to i16
  store atomic i16 %i.at, ptr %i.ag monotonic, align 2
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !55
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !285
  %i.ay = and i64 %i.ax, %i.aw
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.e
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bd = extractelement <2 x i32> %i.an, i64 1
  %.sroa.speculated.i33 = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 1024) ; 3 uses
  %i.be = load atomic i16, ptr %i.bc monotonic, align 2
  %i.bf = sext i16 %i.be to i32                   ; 2 uses
  %i.bg = add nsw i32 %.sroa.speculated.i33, %i.bf
  %i.bh = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i33, i1 true) ; 2 uses
  %i.bi = mul nsw i32 %i.bh, %i.bf
  %.neg.i34 = sdiv i32 %i.bi, -1024
  %i.bj = add nsw i32 %i.bg, %.neg.i34
  %i.bk = trunc i32 %i.bj to i16
  store atomic i16 %i.bk, ptr %i.bc monotonic, align 2
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !55
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !285
  %i.bp = and i64 %i.bo, %i.bn
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6 ; 2 uses
  %i.bu = load atomic i16, ptr %i.bt monotonic, align 2
  %i.bv = sext i16 %i.bu to i32                   ; 2 uses
  %i.bw = add nsw i32 %.sroa.speculated.i33, %i.bv
  %i.bx = mul nsw i32 %i.bh, %i.bv
  %.neg.i38 = sdiv i32 %i.bx, -1024
  %i.by = add nsw i32 %i.bw, %.neg.i38
  %i.bz = trunc i32 %i.by to i16
  store atomic i16 %i.bz, ptr %i.bt monotonic, align 2
  switch i16 %i.b, label %bb.c [
    i16 65, label %bb.d
    i16 0, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35
  %i.ca = and i16 %i.b, 63
  %i.cb = zext nneg i16 %i.ca to i64              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !283
  %i.ce = getelementptr inbounds i8, ptr %1, i64 -96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !247
  %i.cg = zext i8 %i.cd to i64                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [128 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cb ; 2 uses
  %i.cj = mul nsw <2 x i32> %i.ai, <i32 127, i32 59>
  %i.ck = load i16, ptr %i.ci, align 2, !tbaa !173
  %i.cl = sext i16 %i.ck to i32                   ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -208
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !247
  %i.co = getelementptr inbounds nuw [128 x i8], ptr %i.cn, i64 %i.cg
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cb ; 2 uses
  %i.cq = sdiv <2 x i32> %i.cj, splat (i32 128)
  %i.cr = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cq, <2 x i32> splat (i32 -1024)) ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cr, i64 0
  %.sroa.speculated.i40 = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 1024) ; 2 uses
  %i.ct = add nsw i32 %.sroa.speculated.i40, %i.cl
  %i.cu = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i40, i1 true)
  %i.cv = mul nsw i32 %i.cu, %i.cl
  %.neg.i41 = sdiv i32 %i.cv, -1024
  %i.cw = add nsw i32 %i.ct, %.neg.i41
  %i.cx = trunc i32 %i.cw to i16
  store i16 %i.cx, ptr %i.ci, align 2, !tbaa !173
  %i.cy = extractelement <2 x i32> %i.cr, i64 1
  %.sroa.speculated.i43 = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 1024) ; 2 uses
  %i.cz = load i16, ptr %i.cp, align 2, !tbaa !173
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = add nsw i32 %.sroa.speculated.i43, %i.da
  %i.dc = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i43, i1 true)
  %i.dd = mul nsw i32 %i.dc, %i.da
  %.neg.i44 = sdiv i32 %i.dd, -1024
  %i.de = add nsw i32 %i.db, %.neg.i44
  %i.df = trunc i32 %i.de to i16
  store i16 %i.df, ptr %i.cp, align 2, !tbaa !173
  br label %bb.d

bb.d:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35, %_ZN9Stockfish10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEE2atEm.exit35, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048), i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_122update_quiet_historiesERKNS_8PositionEPNS_6Search5StackERNS4_6WorkerENS_4MoveEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 64 captures(none) dereferenceable(14279296) %2, i16 %3, i32 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !177
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw [131072 x i8], ptr %2, i64 %i.c
  %i.e = zext i16 %3 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %4, i32 -7183)
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 7183) ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !147
  %i.h = sext i16 %i.g to i32                     ; 2 uses
  %i.i = add nsw i32 %.sroa.speculated.i, %i.h
  %i.j = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i, i1 true)
  %i.k = mul nsw i32 %i.j, %i.h
  %.neg.i = sdiv i32 %i.k, -7183
  %i.l = add nsw i32 %i.i, %.neg.i
  %i.m = trunc i32 %i.l to i16
  store i16 %i.m, ptr %i.f, align 2, !tbaa !147
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !249  ; 2 uses
  %i.p = icmp slt i32 %i.o, 5
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 262144
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [131072 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.e ; 2 uses
  %i.u = mul nsw i32 %4, 805
  %i.v = sdiv i32 %i.u, 1024
  %.sroa.speculate.load.false.sroa.speculated.i16 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 -7183)
  %.sroa.speculated.i17 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i16, i32 7183) ; 2 uses
  %i.w = load i16, ptr %i.t, align 2, !tbaa !147
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %i.y = add nsw i32 %.sroa.speculated.i17, %i.x
  %i.z = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i17, i1 true)
  %i.aa = mul nsw i32 %i.z, %i.x
  %.neg.i18 = sdiv i32 %i.aa, -7183
  %i.ab = add nsw i32 %i.y, %.neg.i18
  %i.ac = trunc i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 2, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ad = lshr i16 %3, 6
  %i.ae = and i16 %i.ad, 63
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !283
  %i.ai = trunc i16 %3 to i8
  %i.aj = and i8 %i.ai, 63                        ; 2 uses
  %i.ak = mul nsw i32 %4, 7
  %i.al = sdiv i32 %i.ak, 8
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr noundef nonnull %1, i8 noundef zeroext %i.ah, i8 noundef zeroext %i.aj, i32 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 11419656
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !151, !nonnull !72, !align !73 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !218
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !286
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !290
  %i.au = and i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !170
  %i.ax = getelementptr inbounds nuw [2048 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load i8, ptr %i.ag, align 1, !tbaa !283
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %i.az
  %i.bb = zext nneg i8 %i.aj to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = icmp sgt i32 %4, 0
  %i.be = select i1 %i.bd, i32 905, i32 505
  %i.bf = mul nsw i32 %i.be, %4
  %i.bg = sdiv i32 %i.bf, 1024
  %.sroa.speculate.load.false.sroa.speculated.i19 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 -8192)
  %.sroa.speculated.i20 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i19, i32 8192) ; 2 uses
  %i.bh = load atomic i16, ptr %i.bc monotonic, align 2
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = add nsw i32 %.sroa.speculated.i20, %i.bi
  %i.bk = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i20, i1 true)
  %i.bl = mul nsw i32 %i.bk, %i.bi
  %.neg.i21 = sdiv i32 %i.bl, -8192
  %i.bm = add nsw i32 %i.bj, %.neg.i21
  %i.bn = trunc i32 %i.bm to i16
  store atomic i16 %i.bn, ptr %i.bc monotonic, align 2
  ret void
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position12pseudo_legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

declare noundef i32 @_ZN9Stockfish10Tablebases9probe_wdlERNS_8PositionEPNS0_10ProbeStateE(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !790, !nonnull !72, !align !73
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.d = load i8, ptr %i.c, align 2, !tbaa !278, !range !223, !noundef !72
  %2 = icmp eq i8 %i.d, 0
  %narrow.neg.finite = select i1 %2, i8 -23, i8 0
  %narrow3 = add nsw i8 %narrow.neg.finite, 76
  %i.e = zext nneg i8 %narrow3 to i32             ; 2 uses
  %i.f = mul nsw i32 %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !791, !nonnull !72
  %i.i = load i8, ptr %i.h, align 1, !tbaa !267, !range !223, !noundef !72
  %i.j = zext nneg i8 %i.i to i32
  %i.k = mul nuw nsw i32 %i.j, 2474
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !792, !nonnull !72
  %i.n = load i8, ptr %i.m, align 1, !tbaa !267, !range !223, !noundef !72
  %i.o = zext nneg i8 %i.n to i32
  %i.p = mul nuw nsw i32 %i.o, 331
  %i.q = add nuw nsw i32 %i.p, %i.k
  %i.r = mul nuw nsw i32 %i.q, %i.e
  %i.s = lshr i32 %i.r, 10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !793, !nonnull !72, !align !418
  %i.v = load i32, ptr %i.u, align 4, !tbaa !150
  %i.w = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = udiv i32 %i.w, 174665
  %i.y = add i32 %i.x, %i.f
  %i.z = sub i32 %i.y, %i.s
  ret i32 %i.z
}

declare void @_ZN9Stockfish10MovePicker16skip_quiet_movesEv(ptr noundef nonnull align 8 dereferenceable(2164)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_112is_shufflingENS_4MoveEPNS_6Search5StackERKNS_8PositionE(i16 %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %2) unnamed_addr #25 {
bb.a:
  %i.a = and i16 %0, 63
  %i.b = zext nneg i16 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !283
  %i.e = icmp ne i8 %i.d, 0
  %.not.i.i = icmp ult i16 %0, -16384
  %or.cond.not.i.i = and i1 %.not.i.i, %i.e
  %i.f = icmp slt i16 %0, -16384
  %spec.select.i.i = or i1 %i.f, %or.cond.not.i.i
  %i.g = and i16 %0, 12288
  %i.h = icmp eq i16 %i.g, 12288
  %i.i = or i1 %i.h, %spec.select.i.i
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !218  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !266
  %i.n = icmp slt i32 %i.m, 10
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !794
  %i.q = icmp slt i32 %i.p, 7
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !249
  %i.t = icmp slt i32 %i.s, 20
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i16 %0, 6
  %i.v = getelementptr inbounds i8, ptr %1, i64 -84
  %i.w = load i16, ptr %i.v, align 4, !tbaa !234  ; 2 uses
  %i.x = xor i16 %i.w, %i.u
  %i.y = and i16 %i.x, 63
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = lshr i16 %i.w, 6
  %i.ab = getelementptr inbounds i8, ptr %1, i64 -196
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !234
  %i.ad = xor i16 %i.ac, %i.aa
  %i.ae = and i16 %i.ad, 63
  %i.af = icmp eq i16 %i.ae, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ %i.af, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEiiibENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !796, !nonnull !72, !align !73
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.d = load i8, ptr %i.c, align 2, !tbaa !278, !range !223, !noundef !72
  %2 = icmp eq i8 %i.d, 0
  %narrow.neg.finite = select i1 %2, i8 -23, i8 0
  %narrow3 = add nsw i8 %narrow.neg.finite, 76
  %i.e = zext nneg i8 %narrow3 to i32             ; 2 uses
  %i.f = mul nsw i32 %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !797, !nonnull !72
  %i.i = load i8, ptr %i.h, align 1, !tbaa !267, !range !223, !noundef !72
  %i.j = zext nneg i8 %i.i to i32
  %i.k = mul nuw nsw i32 %i.j, 2474
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !798, !nonnull !72
  %i.n = load i8, ptr %i.m, align 1, !tbaa !267, !range !223, !noundef !72
  %i.o = zext nneg i8 %i.n to i32
  %i.p = mul nuw nsw i32 %i.o, 331
  %i.q = add nuw nsw i32 %i.p, %i.k
  %i.r = mul nuw nsw i32 %i.q, %i.e
  %i.s = lshr i32 %i.r, 10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !799, !nonnull !72, !align !418
  %i.v = load i32, ptr %i.u, align 4, !tbaa !150
  %i.w = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = udiv i32 %i.w, 174665
  %i.y = add i32 %i.x, %i.f
  %i.z = sub i32 %i.y, %i.s
  ret i32 %i.z
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 72
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 72            ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #38 ; 10 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !4

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 44, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !194  ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !194
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197  ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !197
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195  ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !195
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01321.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.020.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.01321.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.020.i.i.i, i64 44, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 48 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !262 ; 3 uses
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !262
  %i.aa = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !195 ; 2 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 72 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01321.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.013.i.i.i, %i.n
  br i1 %.not.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit: ; preds = %.lr.ph.i.i.i
  %i.ae = extractelement <2 x ptr> %i.z, i64 1
  %i.af = extractelement <2 x ptr> %i.z, i64 0
  br label %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i

_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i: ; preds = %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit, %bb.c
  %i.ag = phi ptr [ %i.w, %bb.c ], [ %i.ac, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit ]
  %i.ah = phi ptr [ %i.t, %bb.c ], [ %i.ae, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit ]
  %i.ai = phi ptr [ %i.q, %bb.c ], [ %i.af, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit ]
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.ad, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.0.lcssa.i.i.i, i64 44, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !194
  store ptr %i.ah, ptr %i.s, align 8, !tbaa !197
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i
  %.sroa.4.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.11.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEEvT_SA_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 8 uses
  %i.ak = icmp eq i64 %i.g, %.sroa.4.0
  br i1 %i.ak, label %bb.d, label %bb.e, !prof !298

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.al = getelementptr inbounds [72 x i8], ptr %0, i64 %i.g ; 4 uses
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %i.al, ptr noundef %.sroa.11.0)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.al, ptr %1, ptr noundef %.sroa.11.0)
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.b, %i.am
  %i.ao = sdiv exact i64 %i.an, 72
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_T2_(ptr %0, ptr %i.al, ptr %1, i64 noundef %i.g, i64 noundef %i.ao, ptr noundef %.sroa.11.0)
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.ap = icmp eq ptr %.sroa.11.0, null
  br i1 %i.ap, label %bb.f, label %bb.g, !prof !297

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.11.0, i64 noundef %.sroa.4.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.idx.i = mul i64 %.sroa.4.0, 72                ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.11.0, i64 %.idx.i
  %.not4.i.i.i = icmp eq i64 %.sroa.4.0, 0
  br i1 %.not4.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %bb.h, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i ], [ %.sroa.11.0, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !194 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i8
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !195
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #37
  br label %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ay, %i.aq
  br i1 %.not.i.i.i9, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit, label %.lr.ph.i.i.i8, !llvm.loop !3

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit: ; preds = %_ZSt8_DestroyIN9Stockfish6Search8RootMoveEEvPT_.exit.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef %.sroa.11.0, i64 noundef %.idx.i) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES4_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 1080
  br i1 %i.d, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1)
  br label %common.ret17

common.ret17:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 72
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %i.g)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.g, ptr %1)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = sdiv exact i64 %i.i, 72
end_hunk_1
