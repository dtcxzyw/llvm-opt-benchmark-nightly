inline.NumInlined: 318
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesE:bb.a
  store i16 0, ptr %i.dh, align 64, !noalias !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 68224
  store i16 0, ptr %i.dj, align 64, !noalias !59
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 68864
  store i16 0, ptr %i.dk, align 64, !noalias !59
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 73152
  store i16 0, ptr %i.dm, align 64, !noalias !59
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 73792
  store i16 0, ptr %i.dn, align 64, !noalias !59
  %i.do = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 78080
  store i16 0, ptr %i.dp, align 64, !noalias !59
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 78720
  store i16 0, ptr %i.dq, align 64, !noalias !59
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 83008
  store i16 0, ptr %i.ds, align 64, !noalias !59
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 83648
  store i16 0, ptr %i.dt, align 64, !noalias !59
  %i.du = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 87936
  store i16 0, ptr %i.dv, align 64, !noalias !59
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 88576
  store i16 0, ptr %i.dw, align 64, !noalias !59
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 92864
  store i16 0, ptr %i.dy, align 64, !noalias !59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 93504
  store i16 0, ptr %i.dz, align 64, !noalias !59
  %.add.i.i.i.18 = add nuw nsw i64 %.idx.i.i.i, 93632 ; 2 uses
  %i.ea = icmp eq i64 %.add.i.i.i.18, 1217216
  br i1 %i.ea, label %_ZNSt5arrayIN9Stockfish4Eval4NNUE16AccumulatorStateINS2_8Features11HalfKAv2_hmEEELm247EEC2Ev.exit.i.i, label %bb.b

_ZNSt5arrayIN9Stockfish4Eval4NNUE16AccumulatorStateINS2_8Features11HalfKAv2_hmEEELm247EEC2Ev.exit.i.i: ; preds = %bb.b
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1217216 ; 19 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt5arrayIN9Stockfish4Eval4NNUE16AccumulatorStateINS2_8Features11HalfKAv2_hmEEELm247EEC2Ev.exit.i.i
  %.idx.i1.i.i = phi i64 [ 0, %_ZNSt5arrayIN9Stockfish4Eval4NNUE16AccumulatorStateINS2_8Features11HalfKAv2_hmEEELm247EEC2Ev.exit.i.i ], [ %.add.i3.i.i.18, %bb.c ] ; 20 uses
  %.ptr.i2.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.ptr.i2.i.i, i64 4160
  store i16 0, ptr %i.ec, align 64, !noalias !59
  %i.ed = getelementptr inbounds nuw i8, ptr %.ptr.i2.i.i, i64 4800
  store i16 0, ptr %i.ed, align 64, !noalias !59
  %i.ee = getelementptr inbounds nuw i8, ptr %.ptr.i2.i.i, i64 5248
  store i64 0, ptr %i.ee, align 64, !tbaa !62, !noalias !59
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 9472
  store i16 0, ptr %i.eg, align 64, !noalias !59
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 10112
  store i16 0, ptr %i.eh, align 64, !noalias !59
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 10560
  store i64 0, ptr %i.ei, align 64, !tbaa !62, !noalias !59
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 14784
  store i16 0, ptr %i.ek, align 64, !noalias !59
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 15424
  store i16 0, ptr %i.el, align 64, !noalias !59
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 15872
  store i64 0, ptr %i.em, align 64, !tbaa !62, !noalias !59
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20096
  store i16 0, ptr %i.eo, align 64, !noalias !59
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 20736
  store i16 0, ptr %i.ep, align 64, !noalias !59
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 21184
  store i64 0, ptr %i.eq, align 64, !tbaa !62, !noalias !59
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 25408
  store i16 0, ptr %i.es, align 64, !noalias !59
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 26048
  store i16 0, ptr %i.et, align 64, !noalias !59
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 26496
  store i64 0, ptr %i.eu, align 64, !tbaa !62, !noalias !59
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 30720
  store i16 0, ptr %i.ew, align 64, !noalias !59
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 31360
  store i16 0, ptr %i.ex, align 64, !noalias !59
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 31808
  store i64 0, ptr %i.ey, align 64, !tbaa !62, !noalias !59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 36032
  store i16 0, ptr %i.fa, align 64, !noalias !59
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 36672
  store i16 0, ptr %i.fb, align 64, !noalias !59
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 37120
  store i64 0, ptr %i.fc, align 64, !tbaa !62, !noalias !59
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 41344
  store i16 0, ptr %i.fe, align 64, !noalias !59
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 41984
  store i16 0, ptr %i.ff, align 64, !noalias !59
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 42432
  store i64 0, ptr %i.fg, align 64, !tbaa !62, !noalias !59
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 46656
  store i16 0, ptr %i.fi, align 64, !noalias !59
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 47296
  store i16 0, ptr %i.fj, align 64, !noalias !59
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 47744
  store i64 0, ptr %i.fk, align 64, !tbaa !62, !noalias !59
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 51968
  store i16 0, ptr %i.fm, align 64, !noalias !59
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 52608
  store i16 0, ptr %i.fn, align 64, !noalias !59
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 53056
  store i64 0, ptr %i.fo, align 64, !tbaa !62, !noalias !59
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 57280
  store i16 0, ptr %i.fq, align 64, !noalias !59
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 57920
  store i16 0, ptr %i.fr, align 64, !noalias !59
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 58368
  store i64 0, ptr %i.fs, align 64, !tbaa !62, !noalias !59
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 62592
  store i16 0, ptr %i.fu, align 64, !noalias !59
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 63232
  store i16 0, ptr %i.fv, align 64, !noalias !59
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 63680
  store i64 0, ptr %i.fw, align 64, !tbaa !62, !noalias !59
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 67904
  store i16 0, ptr %i.fy, align 64, !noalias !59
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 68544
  store i16 0, ptr %i.fz, align 64, !noalias !59
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 68992
  store i64 0, ptr %i.ga, align 64, !tbaa !62, !noalias !59
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 73216
  store i16 0, ptr %i.gc, align 64, !noalias !59
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 73856
  store i16 0, ptr %i.gd, align 64, !noalias !59
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 74304
  store i64 0, ptr %i.ge, align 64, !tbaa !62, !noalias !59
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 78528
  store i16 0, ptr %i.gg, align 64, !noalias !59
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 79168
  store i16 0, ptr %i.gh, align 64, !noalias !59
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 79616
  store i64 0, ptr %i.gi, align 64, !tbaa !62, !noalias !59
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 83840
  store i16 0, ptr %i.gk, align 64, !noalias !59
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 84480
  store i16 0, ptr %i.gl, align 64, !noalias !59
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 84928
  store i64 0, ptr %i.gm, align 64, !tbaa !62, !noalias !59
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 89152
  store i16 0, ptr %i.go, align 64, !noalias !59
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 89792
  store i16 0, ptr %i.gp, align 64, !noalias !59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 90240
  store i64 0, ptr %i.gq, align 64, !tbaa !62, !noalias !59
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 94464
  store i16 0, ptr %i.gs, align 64, !noalias !59
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 95104
  store i16 0, ptr %i.gt, align 64, !noalias !59
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 95552
  store i64 0, ptr %i.gu, align 64, !tbaa !62, !noalias !59
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i1.i.i ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 99776
  store i16 0, ptr %i.gw, align 64, !noalias !59
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 100416
  store i16 0, ptr %i.gx, align 64, !noalias !59
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 100864
  store i64 0, ptr %i.gy, align 64, !tbaa !62, !noalias !59
  %.add.i3.i.i.18 = add nuw nsw i64 %.idx.i1.i.i, 100928 ; 2 uses
  %i.gz = icmp eq i64 %.add.i3.i.i.18, 1312064
  br i1 %i.gz, label %_ZSt11make_uniqueIN9Stockfish4Eval4NNUE16AccumulatorStackEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.c

_ZSt11make_uniqueIN9Stockfish4Eval4NNUE16AccumulatorStackEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bv, i64 2529280
  store i64 1, ptr %i.ha, align 64, !tbaa !64, !noalias !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE8evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj1024EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.20") align 4 %5, ptr noundef nonnull align 64 dereferenceable(131331893) %2, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bv, ptr noundef nonnull align 64 dereferenceable(278528) %3) #17
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !68
  %i.hd = load i32, ptr %5, align 4, !tbaa !68
  %i.he = add nsw i32 %i.hd, %i.hc                ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.hg = load i8, ptr %i.hf, align 4, !tbaa !69
  %i.hh = icmp eq i8 %i.hg, 0
  %i.hi = sub nsw i32 0, %i.he
  %i.hj = select i1 %i.hh, i32 %i.he, i32 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %.preheader

.preheader:                                       ; preds = %_ZSt11make_uniqueIN9Stockfish4Eval4NNUE16AccumulatorStackEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, %bb.e
  %indvars.iv105 = phi i64 [ 0, %_ZSt11make_uniqueIN9Stockfish4Eval4NNUE16AccumulatorStackEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %indvars.iv.next106, %bb.e ] ; 3 uses
  %i.ho = shl nuw nsw i64 %indvars.iv105, 3       ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %i.g, i64 %i.ho
  %8 = add nuw nsw i64 %i.ho, 8                   ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  %i.hp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str, i64 noundef 28) #17 ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %"_ZZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesEENK3$_0clENS_4FileENS_4RankENS_5PieceEi.exit"
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, 8
  br i1 %exitcond109.not, label %bb.d, label %.preheader, !llvm.loop !80

bb.f:                                             ; preds = %.preheader, %"_ZZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesEENK3$_0clENS_4FileENS_4RankENS_5PieceEi.exit"
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %"_ZZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesEENK3$_0clENS_4FileENS_4RankENS_5PieceEi.exit" ] ; 3 uses
  %i.hq = shl nuw nsw i64 %indvars.iv, 3
  %i.hr = add nuw nsw i64 %i.hq, %indvars.iv105   ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 %i.hr ; 3 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !81  ; 7 uses
  %.not = icmp eq i8 %i.ht, 0                     ; 2 uses
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hu = and i8 %i.ht, 7                         ; 2 uses
  %.not55 = icmp eq i8 %i.hu, 6
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hv = shl nuw i64 1, %i.hr                    ; 5 uses
  %i.hw = load i64, ptr %i.hk, align 8, !tbaa !11
  %i.hx = xor i64 %i.hw, %i.hv
  store i64 %i.hx, ptr %i.hk, align 8, !tbaa !11
  %i.hy = zext nneg i8 %i.hu to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hy ; 4 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !11
  %i.ib = xor i64 %i.ia, %i.hv
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !11
  %i.ic = lshr i8 %i.ht, 3
  %i.id = zext nneg i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.id ; 4 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !11
  %i.ig = xor i64 %i.if, %i.hv
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !11
  store i8 0, ptr %i.hs, align 1, !tbaa !81
  %i.ih = zext i8 %i.ht to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ih ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !68
  %i.ik = add nsw i32 %i.ij, -1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !68
  %i.il = and i8 %i.ht, -8
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.im ; 4 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !68
  %i.ip = add nsw i32 %i.io, -1
  store i32 %i.ip, ptr %i.in, align 8, !tbaa !68
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack5resetEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.bv) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE8evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj1024EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.20") align 4 %6, ptr noundef nonnull align 64 dereferenceable(131331893) %2, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bv, ptr noundef nonnull align 64 dereferenceable(278528) %3) #17
  %i.iq = load i32, ptr %i.hn, align 4, !tbaa !68 ; 2 uses
  store i32 %i.iq, ptr %i.hb, align 4, !tbaa !68
  %i.ir = load i32, ptr %6, align 4, !tbaa !68    ; 2 uses
  store i32 %i.ir, ptr %5, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.is = add nsw i32 %i.ir, %i.iq                ; 2 uses
  %i.it = load i8, ptr %i.hf, align 4, !tbaa !69
  %i.iu = icmp eq i8 %i.it, 0
  %i.iv = sub i32 0, %i.is
  %i.iw = select i1 %i.iu, i32 %i.iv, i32 %i.is
  %i.ix = add i32 %i.iw, %i.hj
  store i8 %i.ht, ptr %i.hs, align 1, !tbaa !81
  %i.iy = load i64, ptr %i.hz, align 8, !tbaa !11
  %i.iz = or i64 %i.iy, %i.hv                     ; 2 uses
  store i64 %i.iz, ptr %i.hz, align 8, !tbaa !11
  %i.ja = load i64, ptr %i.hk, align 8, !tbaa !11
  %i.jb = or i64 %i.ja, %i.iz
  store i64 %i.jb, ptr %i.hk, align 8, !tbaa !11
  %i.jc = load i64, ptr %i.ie, align 8, !tbaa !11
  %i.jd = or i64 %i.jc, %i.hv
  store i64 %i.jd, ptr %i.ie, align 8, !tbaa !11
  %i.je = load i32, ptr %i.ii, align 4, !tbaa !68
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.ii, align 4, !tbaa !68
  %i.jg = load i32, ptr %i.in, align 8, !tbaa !68
  %i.jh = add nsw i32 %i.jg, 1
  store i32 %i.jh, ptr %i.in, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.054 = phi i32 [ %i.ix, %bb.h ], [ 32002, %bb.g ], [ 32002, %bb.f ] ; 4 uses
  %i.ji = sub nuw nsw i64 7, %indvars.iv
  %i.jj = mul nuw nsw i64 %i.ji, 3                ; 2 uses
  %i.jk = getelementptr [66 x i8], ptr %i.g, i64 %i.jj ; 3 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 198    ; 2 uses
  %i.jm = getelementptr [66 x i8], ptr %invariant.gep.i, i64 %i.jj ; 4 uses
  %gep.i = getelementptr i8, ptr %i.jm, i64 66
  %i.jn = getelementptr i8, ptr %i.jm, i64 74
  store i8 124, ptr %i.jn, align 2, !tbaa !58
  store i8 124, ptr %gep.i, align 2, !tbaa !58
  %gep.1.i = getelementptr i8, ptr %i.jm, i64 132
  %i.jo = getelementptr i8, ptr %i.jm, i64 140
  store i8 124, ptr %i.jo, align 2, !tbaa !58
  store i8 124, ptr %gep.1.i, align 2, !tbaa !58
  %9 = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ho
  store <8 x i8> <i8 43, i8 45, i8 45, i8 45, i8 45, i8 45, i8 45, i8 45>, ptr %9, align 2, !tbaa !58
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %8
  store i8 43, ptr %i.jp, align 2, !tbaa !58
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 %8
  store i8 43, ptr %i.jq, align 2, !tbaa !58
  %10 = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.ho ; 12 uses
  store <8 x i8> <i8 43, i8 45, i8 45, i8 45, i8 45, i8 45, i8 45, i8 45>, ptr %10, align 2, !tbaa !58
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jr = zext i8 %i.ht to i64
  %i.js = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !58
  %i.ju = getelementptr i8, ptr %10, i64 70
  store i8 %i.jt, ptr %i.ju, align 2, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not1.i = icmp eq i32 %.054, 32002
  br i1 %.not1.i, label %"_ZZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesEENK3$_0clENS_4FileENS_4RankENS_5PieceEi.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jv = getelementptr i8, ptr %10, i64 134
  %i.jw = icmp slt i32 %.054, 0
  %.not.i.i = icmp eq i32 %.054, 0
  %i.jx = select i1 %.not.i.i, i8 32, i8 43
  %i.jy = select i1 %i.jw, i8 45, i8 %i.jx
  store i8 %i.jy, ptr %i.jv, align 2, !tbaa !58
  %i.jz = call noundef i32 @_ZN9Stockfish9UCIEngine5to_cpEiRKNS_8PositionE(i32 noundef %.054, ptr noundef nonnull align 8 dereferenceable(1048) %1) #17
  %i.ka = call i32 @llvm.abs.i32(i32 %i.jz, i1 true) ; 5 uses
  %i.kb = icmp samesign ugt i32 %i.ka, 9999
  br i1 %i.kb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.kc = udiv i32 %i.ka, 10000
  %i.kd = trunc i32 %i.kc to i8
  %i.ke = add i8 %i.kd, 48
  %i.kf = getelementptr i8, ptr %10, i64 135
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !58
  %i.kg = urem i32 %i.ka, 10000
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.kg to i16 ; 2 uses
  %i.kh = udiv i16 %.lhs.trunc.i.i, 1000
  %i.ki = trunc nuw nsw i16 %i.kh to i8
  %i.kj = add nuw nsw i8 %i.ki, 48
  %i.kk = getelementptr i8, ptr %10, i64 136
  store i8 %i.kj, ptr %i.kk, align 2, !tbaa !58
  %i.kl = urem i16 %.lhs.trunc.i.i, 1000
  %i.km = udiv i16 %i.kl, 100
  %i.kn = trunc nuw nsw i16 %i.km to i8
  %i.ko = or disjoint i8 %i.kn, 48
  %i.kp = getelementptr i8, ptr %10, i64 137
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !58
  br label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_117format_cp_compactEiPcRKNS_8PositionE.exit.i

bb.n:                                             ; preds = %bb.l
  %i.kq = icmp samesign ugt i32 %i.ka, 999
  %.lhs.trunc37.i.i = trunc nuw nsw i32 %i.ka to i16 ; 4 uses
  %i.kr = getelementptr i8, ptr %10, i64 135      ; 2 uses
  br i1 %i.kq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ks = udiv i16 %.lhs.trunc37.i.i, 1000
  %i.kt = trunc nuw nsw i16 %i.ks to i8
  %i.ku = add nuw nsw i8 %i.kt, 48
  store i8 %i.ku, ptr %i.kr, align 1, !tbaa !58
  %i.kv = urem i16 %.lhs.trunc37.i.i, 1000        ; 2 uses
  %i.kw = udiv i16 %i.kv, 100
  %i.kx = trunc nuw nsw i16 %i.kw to i8
  %i.ky = or disjoint i8 %i.kx, 48
  %i.kz = getelementptr i8, ptr %10, i64 136
  store i8 %i.ky, ptr %i.kz, align 2, !tbaa !58
  %i.la = urem i16 %i.kv, 100
  %i.lb = getelementptr i8, ptr %10, i64 137
  store i8 46, ptr %i.lb, align 1, !tbaa !58
  %.lhs.trunc45.i.i = trunc nuw nsw i16 %i.la to i8
  %i.lc = udiv i8 %.lhs.trunc45.i.i, 10
  %i.ld = or disjoint i8 %i.lc, 48
  br label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_117format_cp_compactEiPcRKNS_8PositionE.exit.i

bb.p:                                             ; preds = %bb.n
  %i.le = udiv i16 %.lhs.trunc37.i.i, 100
  %i.lf = trunc nuw nsw i16 %i.le to i8
  %i.lg = or disjoint i8 %i.lf, 48
  store i8 %i.lg, ptr %i.kr, align 1, !tbaa !58
  %i.lh = urem i16 %.lhs.trunc37.i.i, 100
  %i.li = getelementptr i8, ptr %10, i64 136
  store i8 46, ptr %i.li, align 2, !tbaa !58
  %.lhs.trunc51.i.i = trunc nuw nsw i16 %i.lh to i8 ; 2 uses
  %i.lj = udiv i8 %.lhs.trunc51.i.i, 10
  %i.lk = or disjoint i8 %i.lj, 48
  %i.ll = getelementptr i8, ptr %10, i64 137
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !58
  %i.lm = urem i8 %.lhs.trunc51.i.i, 10
  %i.ln = or disjoint i8 %i.lm, 48
  br label %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_117format_cp_compactEiPcRKNS_8PositionE.exit.i

_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_117format_cp_compactEiPcRKNS_8PositionE.exit.i: ; preds = %bb.p, %bb.o, %bb.m
  %.sink.i.i = phi i8 [ %i.ld, %bb.o ], [ %i.ln, %bb.p ], [ 32, %bb.m ]
  %i.lo = getelementptr i8, ptr %10, i64 138
  store i8 %.sink.i.i, ptr %i.lo, align 2, !tbaa !58
  br label %"_ZZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesEENK3$_0clENS_4FileENS_4RankENS_5PieceEi.exit"

"_ZZN9Stockfish4Eval4NNUE5traceB5cxx11ERNS_8PositionERKNS1_8NetworksERNS1_17AccumulatorCachesEENK3$_0clENS_4FileENS_4RankENS_5PieceEi.exit": ; preds = %bb.k, %_ZN9Stockfish4Eval4NNUE12_GLOBAL__N_117format_cp_compactEiPcRKNS_8PositionE.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !82

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 10, ptr %i.f, align 1, !tbaa !58
  %i.lp = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.lq = getelementptr i8, ptr %i.lp, i64 -24
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds i8, ptr %i.w, i64 %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !83
  %.not.i57 = icmp eq i64 %i.lu, 0
  br i1 %.not.i57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.f, i64 noundef 1) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.s:                                             ; preds = %bb.q
  %i.lw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 10) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack5resetEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.bv) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE14trace_evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj1024EEE(ptr dead_on_unwind nonnull writable sret(%"struct.Stockfish::Eval::NNUE::NnueEvalTrace") align 8 %7, ptr noundef nonnull align 64 dereferenceable(131331893) %2, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.bv, ptr noundef nonnull align 64 dereferenceable(278528) %3) #17
  %i.lx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.2, i64 noundef 28) #17 ; 0 uses
  %i.ly = load i8, ptr %i.hf, align 4, !tbaa !69
  %i.lz = icmp eq i8 %i.ly, 0
  %i.ma = select i1 %i.lz, ptr @.str.3, ptr @.str.4
  %i.mb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.ma, i64 noundef 15) #17 ; 0 uses
  %i.mc = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.md = getelementptr i8, ptr %i.mc, i64 -24
  %i.me = load i64, ptr %i.md, align 8
  %i.mf = getelementptr inbounds i8, ptr %i.w, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 240
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !84 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i, label %bb.t, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !85
  %.not.i1.i.i = icmp eq i8 %i.mj, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 67
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !58
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mh) #17
  %i.mm = load ptr, ptr %i.mh, align 8, !tbaa !27
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = call noundef signext i8 %i.mo(ptr noundef nonnull align 8 dereferenceable(570) %i.mh, i8 noundef signext 10) #17, !inline_history !91
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.u, %bb.v
  %.0.i.i.i = phi i8 [ %i.ml, %bb.u ], [ %i.mp, %bb.v ]
  %i.mq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i) #17
  %i.mr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mq) #17 ; 4 uses
  %i.ms = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.5, i64 noundef 54) #17 ; 0 uses
  %i.mt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.6, i64 noundef 54) #17 ; 0 uses
  %i.mu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.7, i64 noundef 54) #17 ; 0 uses
  %i.mv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull @.str.5, i64 noundef 54) #17 ; 0 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.mx = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %bb.ac

bb.w:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62
  %indvars.iv110 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next111, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62 ] ; 2 uses
  %i.my = getelementptr inbounds nuw [66 x i8], ptr %i.g, i64 %indvars.iv110 ; 2 uses
  %i.mz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.my) #17
  %i.na = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.my, i64 noundef %i.mz) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 10, ptr %i.e, align 1, !tbaa !58
  %i.nb = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.nc = getelementptr i8, ptr %i.nb, i64 -24
  %i.nd = load i64, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds i8, ptr %i.w, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !83
  %.not.i60 = icmp eq i64 %i.ng, 0
  br i1 %.not.i60, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.e, i64 noundef 1) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62

bb.y:                                             ; preds = %bb.w
  %i.ni = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext 10) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit62: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 25
  br i1 %exitcond113.not, label %bb.q, label %bb.w, !llvm.loop !92

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77
  %i.nj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.5, i64 noundef 54) #17 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.nk, ptr %0, align 8, !tbaa !56, !alias.scope !99
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.nl, align 8, !tbaa !57, !alias.scope !99
  store i8 0, ptr %i.nk, align 8, !tbaa !58, !alias.scope !99
  %i.nm = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !100, !noalias !99 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.nn, null
  %i.no = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.np = load ptr, ptr %i.no, align 8, !noalias !99 ; 2 uses
  %i.nq = icmp ugt ptr %i.nn, %i.np
  %.08.i.i.i = select i1 %i.nq, ptr %i.nn, ptr %i.np ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i63 = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i63, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !101, !noalias !99 ; 2 uses
  %i.nt = ptrtoint ptr %.08.i.i.i to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ns, i64 noundef %i.nv) #17 ; 0 uses
  br label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE16AccumulatorStackESt14default_deleteIS3_EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ap) #17
  br label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE16AccumulatorStackESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE16AccumulatorStackESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.bv, i64 noundef 2529344, i64 noundef 64) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.nx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.nx, ptr %4, align 8, !tbaa !27
  %i.ny = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.nz = getelementptr i8, ptr %i.nx, i64 -24
  %i.oa = load i64, ptr %i.nz, align 8
  %i.ob = getelementptr inbounds i8, ptr %4, i64 %i.oa
  store ptr %i.ny, ptr %i.ob, align 8, !tbaa !27
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.oc, ptr %i.w, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !27
  %i.od = load ptr, ptr %i.ap, align 8, !tbaa !102 ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.aq
  br i1 %i.oe, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE16AccumulatorStackESt14default_deleteIS3_EED2Ev.exit
  %i.of = load i64, ptr %i.aq, align 8, !tbaa !58
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE16AccumulatorStackESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #17
  store ptr %i.m, ptr %4, align 8, !tbaa !27
  %i.oh = load i64, ptr %i.o, align 8
  %i.oi = getelementptr inbounds i8, ptr %4, i64 %i.oh
  store ptr %i.n, ptr %i.oi, align 8, !tbaa !27
  store i64 0, ptr %i.r, align 8, !tbaa !47
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.ac:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77
  %.0100 = phi i64 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.su, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit77 ] ; 5 uses
  %i.oj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.8, i64 noundef 3) #17 ; 0 uses
  %i.ok = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %.0100) #17 ; 2 uses
  %i.ol = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull @.str.9, i64 noundef 8) #17 ; 0 uses
  %i.om = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef nonnull @.str.10, i64 noundef 4) #17 ; 0 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.0100 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !68 ; 3 uses
  %i.op = call noundef i32 @_ZN9Stockfish9UCIEngine5to_cpEiRKNS_8PositionE(i32 noundef %i.oo, ptr noundef nonnull align 8 dereferenceable(1048) %1) #17
  %i.oq = icmp slt i32 %i.oo, 0
  %.not.i65 = icmp eq i32 %i.oo, 0
  %i.or = select i1 %.not.i65, i8 32, i8 43
  %i.os = select i1 %i.oq, i8 45, i8 %i.or        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.os, ptr %i.d, align 1, !tbaa !58
  %i.ot = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.ou = getelementptr i8, ptr %i.ot, i64 -24
  %i.ov = load i64, ptr %i.ou, align 8
end_hunk_0
