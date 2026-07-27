inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii:bb.a
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !330
  %i.jy = icmp ne i8 %i.jx, 0
  %.not.i.i = icmp ult i16 %i.jr, -16384          ; 2 uses
  %or.cond.not.i.i = and i1 %.not.i.i, %i.jy
  %i.jz = icmp slt i16 %i.jr, -16384              ; 2 uses
  %spec.select.i.i = or i1 %i.jz, %or.cond.not.i.i
  %i.ka = and i16 %i.jr, 12288
  %i.kb = icmp eq i16 %i.ka, 12288                ; 2 uses
  %i.kc = or i1 %i.kb, %spec.select.i.i           ; 2 uses
  %i.kd = add nsw i32 %.0137.ph272, 1             ; 4 uses
  br i1 %i.jt, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ke = trunc i16 %i.jr to i8
  %i.kf = and i8 %i.ke, 63                        ; 2 uses
  %i.kg = zext nneg i8 %i.kf to i32
  %.not156 = icmp eq i32 %i.ic, %i.kg
  %i.kh = icmp sgt i16 %i.jr, 16383
  %or.cond395 = or i1 %.not156, %i.kh
  br i1 %or.cond395, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ki = icmp sgt i32 %.0137.ph272, 1
  br i1 %i.ki, label %.outer271.backedge, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kj = zext nneg i8 %i.kf to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !330
  %i.km = zext i8 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !138
  %i.kp = add nsw i32 %i.ko, %storemerge          ; 2 uses
  %.not158 = icmp sgt i32 %i.kp, %.4250.ph.ph.ph
  br i1 %.not158, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.4255.ph360, i32 %i.kp)
  br label %.outer.backedge, !llvm.loop !761

bb.bf:                                            ; preds = %bb.bd
  %i.kq = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jr, i32 noundef %i.ir) #33
  br i1 %i.kq, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.speculated204 = call i32 @llvm.smax.i32(i32 %.4255.ph360, i32 %.sroa.speculated238)
  br label %.outer.backedge, !llvm.loop !761

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.kc, label %.loopexit270.split, label %.outer.backedge

bb.bi:                                            ; preds = %bb.bb, %bb.ba
  br i1 %i.kc, label %.loopexit270.split, label %.outer271.backedge

.outer271.backedge:                               ; preds = %bb.bi, %bb.bc
  br label %.outer271, !llvm.loop !761

.loopexit270.split:                               ; preds = %bb.bi, %bb.bh
  %i.kr = phi i1 [ false, %bb.bh ], [ %i.jt, %bb.bi ]
  %i.ks = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jr, i32 noundef -80) #33
  br i1 %i.ks, label %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.be, %bb.bg, %.loopexit270.split, %bb.bh
  %.4255.ph.be = phi i32 [ %.4255.ph360, %bb.bh ], [ %.4255.ph360, %.loopexit270.split ], [ %.sroa.speculated, %bb.be ], [ %.sroa.speculated204, %bb.bg ]
  %.4255.ph.be.fr = freeze i32 %.4255.ph.be       ; 3 uses
  %i.kt = icmp slt i32 %.4255.ph.be.fr, -31506
  br i1 %i.kt, label %.outer.split.us, label %.outer.split, !llvm.loop !761

_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit: ; preds = %.loopexit270.split, %.loopexit270.split.us.us, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us
  %.sink = phi i64 [ %i.ix, %.loopexit270.split.us.us ], [ %i.jl, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.jv, %.loopexit270.split ] ; 3 uses
  %i.ku = phi i1 [ %i.iv, %.loopexit270.split.us.us ], [ %i.jj, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.kr, %.loopexit270.split ]
  %.not.i.i299 = phi i1 [ %.not.i.i.us341.us, %.loopexit270.split.us.us ], [ %.not.i.i.us, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %.not.i.i, %.loopexit270.split ]
  %i.kv = phi i1 [ %i.jb, %.loopexit270.split.us.us ], [ %i.jm, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.jz, %.loopexit270.split ]
  %i.kw = phi i1 [ %i.jd, %.loopexit270.split.us.us ], [ %i.jo, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.kb, %.loopexit270.split ]
  %i.kx = phi i32 [ %i.jf, %.loopexit270.split.us.us ], [ %i.jp, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.kd, %.loopexit270.split ] ; 3 uses
  %.lcssa276279 = phi i16 [ %i.jg, %.loopexit270.split.us.us ], [ %i.jq, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %i.jr, %.loopexit270.split ] ; 6 uses
  %.7 = phi i32 [ %.4255.ph.ph, %.loopexit270.split.us.us ], [ %.4255.ph.lcssa, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit.loopexit.split.us ], [ %.4255.ph360, %.loopexit270.split ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !330
  %i.la = load atomic i64, ptr %i.ii monotonic, align 8
  %i.lb = add i64 %i.la, 1
  store atomic i64 %i.lb, ptr %i.ii monotonic, align 8
  %i.lc = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ij) #33 ; 2 uses
  %i.ld = extractvalue { ptr, ptr } %i.lc, 0      ; 2 uses
  %i.le = extractvalue { ptr, ptr } %i.lc, 1
  %i.lf = load ptr, ptr %i.bh, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.lg = load ptr, ptr %i.if, align 8, !tbaa !139, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa276279, ptr noundef nonnull align 8 dereferenceable(192) %6, i1 noundef zeroext %i.ku, ptr noundef nonnull align 1 dereferenceable(7) %i.ld, ptr noundef nonnull align 8 dereferenceable(416) %i.le, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lg) #33
  %i.lh = icmp ne i8 %i.kz, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i299, %i.lh
  %spec.select.i.i.i = or i1 %i.kv, %or.cond.not.i.i.i
  %i.li = or i1 %i.kw, %spec.select.i.i.i
  store i16 %.lcssa276279, ptr %i.ik, align 4, !tbaa !191
  %i.lj = load i8, ptr %i.r, align 4, !tbaa !317, !range !221, !noundef !48
  %i.lk = zext nneg i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [4194304 x i8], ptr %i.il, i64 %i.lk
  %i.lm = zext i1 %i.li to i64
  %i.ln = getelementptr inbounds nuw [2097152 x i8], ptr %i.ll, i64 %i.lm
  %i.lo = load i8, ptr %i.ld, align 1, !tbaa !340
  %i.lp = zext i8 %i.lo to i64                    ; 2 uses
  %i.lq = getelementptr inbounds nuw [131072 x i8], ptr %i.ln, i64 %i.lp
  %i.lr = getelementptr inbounds nuw [2048 x i8], ptr %i.lq, i64 %.sink
  store ptr %i.lr, ptr %i.im, align 8, !tbaa !247
  %i.ls = getelementptr inbounds nuw [131072 x i8], ptr %i.in, i64 %i.lp
  %i.lt = getelementptr inbounds nuw [2048 x i8], ptr %i.ls, i64 %.sink
  store ptr %i.lt, ptr %i.io, align 8, !tbaa !251
  %i.lu = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE1EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.k, i32 noundef %i.ip, i32 noundef %i.is)
  %i.lv = sub i32 0, %i.lu                        ; 7 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa276279) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ij) #33
  %i.lw = icmp slt i32 %.7, %i.lv
  br i1 %i.lw, label %bb.bj, label %.outer.outer.backedge

bb.bj:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %i.lx = icmp slt i32 %.4250.ph.ph.ph, %i.lv
  br i1 %i.lx, label %bb.bk, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bj, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit
  %.4255.ph.ph.be = phi i32 [ %i.lv, %bb.bj ], [ %.7, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEbPNS0_5StackE.exit ]
  br label %.outer.outer, !llvm.loop !761

bb.bk:                                            ; preds = %bb.bj
  %i.ly = load ptr, ptr %2, align 8, !tbaa !254   ; 2 uses
  %i.lz = load ptr, ptr %i.k, align 8, !tbaa !254 ; 3 uses
  store i16 %.lcssa276279, ptr %i.ly, align 2, !tbaa !191
  %.09.i = getelementptr inbounds nuw i8, ptr %i.ly, i64 2 ; 3 uses
  %.not10.i = icmp eq ptr %i.lz, null
  br i1 %.not10.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bk
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !234 ; 2 uses
  %.not8.i391 = icmp eq i16 %i.ma, 0
  br i1 %.not8.i391, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.mb = phi i16 [ %i.md, %.lr.ph.i ], [ %i.ma, %.lr.ph.i.preheader ]
  %.0711.i393 = phi ptr [ %i.mc, %.lr.ph.i ], [ %i.lz, %.lr.ph.i.preheader ]
  %.012.i392 = phi ptr [ %.0.i182, %.lr.ph.i ], [ %.09.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0711.i393, i64 2 ; 2 uses
  store i16 %i.mb, ptr %.012.i392, align 2, !tbaa !191
  %.0.i182 = getelementptr inbounds nuw i8, ptr %.012.i392, i64 2 ; 2 uses
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !234 ; 2 uses
  %.not8.i = icmp eq i16 %i.md, 0
  br i1 %.not8.i, label %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, label %.lr.ph.i

_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.bk
  %.0.lcssa.i = phi ptr [ %.09.i, %bb.bk ], [ %.09.i, %.lr.ph.i.preheader ], [ %.0.i182, %.lr.ph.i ]
  store i16 0, ptr %.0.lcssa.i, align 2, !tbaa !191
  %i.me = icmp sgt i32 %4, %i.lv
  br i1 %i.me, label %.outer.outer.outer, label %.loopexit, !llvm.loop !761

.loopexit:                                        ; preds = %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit, %bb.ax, %bb.av, %bb.ay
  %.9 = phi i32 [ %.4255.ph360, %bb.ay ], [ %.4255.ph.ph, %bb.av ], [ %.4255.ph.lcssa, %bb.ax ], [ %i.lv, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ] ; 5 uses
  %.1138 = phi i32 [ %.0137.ph272, %bb.ay ], [ %.0137.ph272.us339.us, %bb.av ], [ %.0137.ph.lcssa, %bb.ax ], [ %i.kx, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ]
  %.sroa.059.2 = phi i16 [ %.sroa.059.0.ph.ph.ph, %bb.ay ], [ %.sroa.059.0.ph.ph.ph, %bb.av ], [ %.sroa.059.0.ph.ph.ph, %bb.ax ], [ %.lcssa276279, %_ZN9Stockfish12_GLOBAL__N_19update_pvEPNS_4MoveES1_PKS1_.exit ]
  %i.mf = load i8, ptr %i.r, align 4, !tbaa !317, !range !221, !noundef !48
  %i.mg = trunc nuw i8 %i.mf to i1                ; 2 uses
  %i.mh = icmp eq i32 %.9, -32001
  %or.cond = and i1 %i.mh, %i.mg
  br i1 %or.cond, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.loopexit
  %i.mi = load i32, ptr %i.v, align 8, !tbaa !253
  %i.mj = add nsw i32 %i.mi, -32000
  br label %bb.bu

bb.bm:                                            ; preds = %.loopexit
  %i.mk = add i32 %.9, 31506
  %spec.select.i183 = icmp ult i32 %i.mk, 63013
  %i.ml = icmp sgt i32 %.9, %4
  %or.cond266 = and i1 %i.ml, %spec.select.i183
  br i1 %or.cond266, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.mm = add nsw i32 %.9, %4
  %i.mn = sdiv i32 %i.mm, 2
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.10 = phi i32 [ %.9, %bb.bm ], [ %i.mn, %bb.bn ] ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.mp = load i8, ptr %i.mo, align 4, !tbaa !171 ; 2 uses
  %i.mq = icmp ne i32 %.1138, 0
  %or.cond3 = select i1 %i.mg, i1 true, i1 %i.mq
  br i1 %or.cond3, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mr = load ptr, ptr %i.m, align 8, !tbaa !213 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %i.mt = zext i8 %i.mp to i64                    ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !138
  %.not159 = icmp eq i32 %i.mv, 0
  br i1 %.not159, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 184
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !318
  %i.my = and i8 %i.mx, 4
  %.not269 = icmp eq i8 %i.my, 0
  br i1 %.not269, label %bb.bt, label %10

10:                                               ; preds = %bb.bq
  %11 = icmp eq i8 %i.mp, 0
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %11, label %13, label %19

13:                                               ; preds = %10
  %14 = load i64, ptr %12, align 8, !tbaa !25
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %16 = load i64, ptr %15, align 8, !tbaa !25
  %17 = and i64 %16, %14
  %18 = shl i64 %17, 8
  br label %bb.br

19:                                               ; preds = %10
  %20 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.mt
  %21 = load i64, ptr %20, align 8, !tbaa !25
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %23 = load i64, ptr %22, align 8, !tbaa !25
  %24 = and i64 %23, %21
  %25 = lshr i64 %24, 8
  br label %bb.br

bb.br:                                            ; preds = %19, %13
  %26 = phi i64 [ %18, %13 ], [ %25, %19 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !25
  %i.nb = xor i64 %i.na, -1
  %i.nc = and i64 %26, %i.nb
  %.not160 = icmp eq i64 %i.nc, 0
  br i1 %.not160, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mr, i64 72
  store i64 255, ptr %i.nd, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ne = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(520) %9) #33
  %.not161 = icmp eq ptr %i.ne, %9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %spec.select267 = select i1 %.not161, i32 0, i32 %.10
  %i.nf = load ptr, ptr %i.m, align 8, !tbaa !213
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 72
  store i64 0, ptr %i.ng, align 8, !tbaa !214
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq, %bb.bp, %bb.bo
  %.12 = phi i32 [ %.10, %bb.bo ], [ %spec.select267, %bb.bs ], [ %.10, %bb.br ], [ %.10, %bb.bq ], [ %.10, %bb.bp ] ; 5 uses
  %i.nh = load i32, ptr %i.v, align 8, !tbaa !253 ; 2 uses
  %i.ni = icmp sgt i32 %.12, 31506
  %i.nj = icmp slt i32 %.12, -31506
  %i.nk = select i1 %i.nj, i32 %i.nh, i32 0
  %i.nl = sub i32 0, %i.nk
  %.p.i184 = select i1 %i.ni, i32 %i.nh, i32 %i.nl
  %i.nm = add i32 %.p.i184, %.12
  %.not162 = icmp slt i32 %.12, %4
  %i.nn = select i1 %.not162, i8 1, i8 2
  %i.no = load ptr, ptr %i.bh, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.np = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.no) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.bg, i32 noundef %i.nm, i1 noundef zeroext %i.cq, i8 noundef zeroext %i.nn, i32 noundef 0, i16 %.sroa.059.2, i32 noundef %.2141, i8 noundef zeroext %i.np) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bl
  %.1 = phi i32 [ %i.mj, %bb.bl ], [ %.12, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread259

.thread259:                                       ; preds = %bb.ap, %bb.ao, %bb.bu
  %.2 = phi i32 [ %.1, %bb.bu ], [ %i.hm, %bb.ao ], [ %i.hm, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %.thread, %bb.h, %.thread259
  %.3 = phi i32 [ %.2, %.thread259 ], [ %i.at, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ 0, %.thread ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bw

bb.bw:                                            ; preds = %bb.c, %bb.bv
  %.4 = phi i32 [ %.3, %bb.bv ], [ %i.j, %bb.c ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN9Stockfish12_GLOBAL__N_113value_from_ttEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #22 {
bb.a:
  %.not = icmp eq i32 %0, 32002
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %0, 31506
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.b = icmp samesign ugt i32 %0, 31753
  br i1 %i.b, label %bb.d, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.c
  %.pre = sub nsw i32 100, %2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = sub nsw i32 32000, %0
  %i.d = sub nsw i32 100, %2                      ; 2 uses
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.j, label %bb.e

bb.e:                                             ; preds = %._crit_edge21, %bb.d
  %.pre-phi = phi i32 [ %.pre, %._crit_edge21 ], [ %i.d, %bb.d ]
  %i.f = sub nsw i32 31753, %0
  %i.g = icmp sgt i32 %i.f, %.pre-phi
  %i.h = sub nsw i32 %0, %1
  %spec.select = select i1 %i.g, i32 31506, i32 %i.h
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %0, -31506
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i32 %0, -31753
  br i1 %i.j, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre22 = sub nsw i32 100, %2
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = add nsw i32 %0, 32000
  %i.l = sub nsw i32 100, %2                      ; 2 uses
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi23 = phi i32 [ %.pre22, %._crit_edge ], [ %i.l, %bb.h ]
  %i.n = add nsw i32 %0, 31753
  %i.o = icmp sgt i32 %i.n, %.pre-phi23
  %i.p = add nsw i32 %1, %0
  %spec.select20 = select i1 %i.o, i32 -31506, i32 %i.p
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e, %bb.f, %bb.h, %bb.d, %bb.a
  %.0 = phi i32 [ 32002, %bb.a ], [ 31506, %bb.d ], [ %0, %bb.f ], [ %spec.select20, %bb.i ], [ -31506, %bb.h ], [ %spec.select, %bb.e ]
  ret i32 %.0
}

declare void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, i16, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

declare noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 39 uses
  %7 = alloca %"struct.Stockfish::StateInfo", align 8 ; 6 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %9 = alloca %"class.Stockfish::ValueList.410", align 8 ; 5 uses
  %10 = alloca %"class.std::tuple.201", align 8   ; 18 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %11 = alloca %"class.std::tuple.201", align 8   ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.422, align 8           ; 8 uses
  %13 = alloca %"class.Stockfish::MovePicker", align 8 ; 6 uses
  %i.f = alloca [6 x ptr], align 16               ; 11 uses
  %14 = alloca %"class.Stockfish::MovePicker", align 8 ; 7 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !762
  %i.g = xor i1 %6, true                          ; 3 uses
  %i.h = icmp slt i32 %5, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.gb

bb.c:                                             ; preds = %bb.a
  %.sroa.speculated884 = tail call i32 @llvm.umin.i32(i32 %5, i32 245)
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !253
  %i.m = tail call noundef zeroext i1 @_ZNK9Stockfish8Position19upcoming_repetitionEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i32 noundef %i.l) #33
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11419800
  %i.o = load atomic i64, ptr %i.n seq_cst, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 2                          ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  %.not564.not = icmp sgt i32 %i.q, %4
  br i1 %.not564.not, label %bb.gb, label %._crit_edge1313

._crit_edge1313:                                  ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge1313, %bb.d, %bb.c
  %i.s = phi ptr [ %.pre, %._crit_edge1313 ], [ %2, %bb.d ], [ %2, %bb.c ] ; 9 uses
  %.01030 = phi i32 [ %i.r, %._crit_edge1313 ], [ %3, %bb.d ], [ %3, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 4 uses
  store i64 0, ptr %i.u, align 8, !tbaa !315
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 15 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !213  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !214
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 4, !tbaa !317
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !318
  %i.ae = icmp ne i8 %i.ad, 0                     ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 620 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !171 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i32 0, ptr %i.ah, align 8, !tbaa !319
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 11421120 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 64, !tbaa !64
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii:bb.a
  %.not268.us = icmp eq i16 %i.jy, 0
  br i1 %.not268.us, label %.loopexit, label %bb.au

.outer.split:                                     ; preds = %.outer.split.lr.ph, %.outer.backedge
  %.0135.ph362 = phi i32 [ %i.kl, %.outer.backedge ], [ %.0135.ph.ph, %.outer.split.lr.ph ]
  %.4252.ph361 = phi i32 [ %.4252.ph.be.fr, %.outer.backedge ], [ %.4252.ph.ph, %.outer.split.lr.ph ] ; 6 uses
  br label %.outer272

.outer272:                                        ; preds = %.outer272.backedge, %.outer.split
  %.0135.ph273 = phi i32 [ %.0135.ph362, %.outer.split ], [ %i.kl, %.outer272.backedge ] ; 3 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.outer272, %bb.ax
  %i.jz = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %7) #33 ; 12 uses
  %.not268 = icmp eq i16 %i.jz, 0
  br i1 %.not268, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ka = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jz) #33
  br i1 %i.ka, label %bb.ay, label %bb.aw, !llvm.loop !774

bb.ay:                                            ; preds = %bb.ax
  %i.kb = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jz) #33 ; 2 uses
  %i.kc = and i16 %i.jz, 63
  %i.kd = zext nneg i16 %i.kc to i64              ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !330
  %i.kg = icmp ne i8 %i.kf, 0
  %.not.i.i = icmp ult i16 %i.jz, -16384          ; 2 uses
  %or.cond.not.i.i = and i1 %.not.i.i, %i.kg
  %i.kh = icmp slt i16 %i.jz, -16384              ; 2 uses
  %spec.select.i.i = or i1 %i.kh, %or.cond.not.i.i
  %i.ki = and i16 %i.jz, 12288
  %i.kj = icmp eq i16 %i.ki, 12288                ; 2 uses
  %i.kk = or i1 %i.kj, %spec.select.i.i           ; 2 uses
  %i.kl = add nsw i32 %.0135.ph273, 1             ; 4 uses
  br i1 %i.kb, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.km = trunc i16 %i.jz to i8
  %i.kn = and i8 %i.km, 63                        ; 2 uses
  %i.ko = zext nneg i8 %i.kn to i32
  %.not154 = icmp eq i32 %i.ij, %i.ko
  %i.kp = icmp sgt i16 %i.jz, 16383
  %or.cond392 = or i1 %.not154, %i.kp
  br i1 %or.cond392, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kq = icmp sgt i32 %.0135.ph273, 1
  br i1 %i.kq, label %.outer272.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kr = zext nneg i8 %i.kn to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !330
  %i.ku = zext i8 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !138
  %i.kx = add nsw i32 %i.kw, %storemerge          ; 2 uses
  %.not156 = icmp sgt i32 %i.kx, %.4246.ph.ph.ph
  br i1 %.not156, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.4252.ph361, i32 %i.kx)
  br label %.outer.backedge, !llvm.loop !774

bb.bd:                                            ; preds = %bb.bb
  %i.ky = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jz, i32 noundef %i.iz) #33
  br i1 %i.ky, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.speculated201 = call i32 @llvm.smax.i32(i32 %.4252.ph361, i32 %.sroa.speculated235)
  br label %.outer.backedge, !llvm.loop !774

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.kk, label %.loopexit271.split, label %.outer.backedge

bb.bg:                                            ; preds = %bb.az, %bb.ay
  br i1 %i.kk, label %.loopexit271.split, label %.outer272.backedge

.outer272.backedge:                               ; preds = %bb.bg, %bb.ba
  br label %.outer272, !llvm.loop !774

.loopexit271.split:                               ; preds = %bb.bg, %bb.bf
  %i.kz = phi i1 [ false, %bb.bf ], [ %i.kb, %bb.bg ]
  %i.la = call noundef zeroext i1 @_ZNK9Stockfish8Position6see_geENS_4MoveEi(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.jz, i32 noundef -80) #33
  br i1 %i.la, label %.loopexit276, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bc, %bb.be, %.loopexit271.split, %bb.bf
  %.4252.ph.be = phi i32 [ %.4252.ph361, %bb.bf ], [ %.4252.ph361, %.loopexit271.split ], [ %.sroa.speculated, %bb.bc ], [ %.sroa.speculated201, %bb.be ]
  %.4252.ph.be.fr = freeze i32 %.4252.ph.be       ; 3 uses
  %i.lb = icmp slt i32 %.4252.ph.be.fr, -31506
  br i1 %i.lb, label %.outer.split.us, label %.outer.split, !llvm.loop !774

.loopexit276:                                     ; preds = %.loopexit271.split, %.loopexit271.split.us.us, %.loopexit270.split.us
  %.sink = phi i64 [ %i.jf, %.loopexit271.split.us.us ], [ %i.jt, %.loopexit270.split.us ], [ %i.kd, %.loopexit271.split ] ; 3 uses
  %i.lc = phi i1 [ %i.jd, %.loopexit271.split.us.us ], [ %i.jr, %.loopexit270.split.us ], [ %i.kz, %.loopexit271.split ]
  %.not.i.i300 = phi i1 [ %.not.i.i.us342.us, %.loopexit271.split.us.us ], [ %.not.i.i.us, %.loopexit270.split.us ], [ %.not.i.i, %.loopexit271.split ]
  %i.ld = phi i1 [ %i.jj, %.loopexit271.split.us.us ], [ %i.ju, %.loopexit270.split.us ], [ %i.kh, %.loopexit271.split ]
  %i.le = phi i1 [ %i.jl, %.loopexit271.split.us.us ], [ %i.jw, %.loopexit270.split.us ], [ %i.kj, %.loopexit271.split ]
  %i.lf = phi i32 [ %i.jn, %.loopexit271.split.us.us ], [ %i.jx, %.loopexit270.split.us ], [ %i.kl, %.loopexit271.split ] ; 3 uses
  %.lcssa277281 = phi i16 [ %i.jo, %.loopexit271.split.us.us ], [ %i.jy, %.loopexit270.split.us ], [ %i.jz, %.loopexit271.split ] ; 5 uses
  %.7 = phi i32 [ %.4252.ph.ph, %.loopexit271.split.us.us ], [ %.4252.ph.lcssa, %.loopexit270.split.us ], [ %.4252.ph361, %.loopexit271.split ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !330
  %i.li = load atomic i64, ptr %i.iq monotonic, align 8
  %i.lj = add i64 %i.li, 1
  store atomic i64 %i.lj, ptr %i.iq monotonic, align 8
  %i.lk = call { ptr, ptr } @_ZN9Stockfish4Eval4NNUE16AccumulatorStack4pushEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #33 ; 2 uses
  %i.ll = extractvalue { ptr, ptr } %i.lk, 0      ; 2 uses
  %i.lm = extractvalue { ptr, ptr } %i.lk, 1
  %i.ln = load ptr, ptr %i.bc, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.lo = load ptr, ptr %i.im, align 8, !tbaa !139, !nonnull !48, !align !49
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277281, ptr noundef nonnull align 8 dereferenceable(192) %5, i1 noundef zeroext %i.lc, ptr noundef nonnull align 1 dereferenceable(7) %i.ll, ptr noundef nonnull align 8 dereferenceable(416) %i.lm, ptr noundef nonnull %i.ln, ptr noundef nonnull %i.lo) #33
  %i.lp = icmp ne i8 %i.lh, 0
  %or.cond.not.i.i.i = and i1 %.not.i.i300, %i.lp
  %spec.select.i.i.i = or i1 %i.ld, %or.cond.not.i.i.i
  %i.lq = or i1 %i.le, %spec.select.i.i.i
  store i16 %.lcssa277281, ptr %i.is, align 4, !tbaa !191
  %i.lr = load i8, ptr %i.p, align 4, !tbaa !317, !range !221, !noundef !48
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4194304 x i8], ptr %i.it, i64 %i.ls
  %i.lu = zext i1 %i.lq to i64
  %i.lv = getelementptr inbounds nuw [2097152 x i8], ptr %i.lt, i64 %i.lu
  %i.lw = load i8, ptr %i.ll, align 1, !tbaa !340
  %i.lx = zext i8 %i.lw to i64                    ; 2 uses
  %i.ly = getelementptr inbounds nuw [131072 x i8], ptr %i.lv, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [2048 x i8], ptr %i.ly, i64 %.sink
  store ptr %i.lz, ptr %i.iu, align 8, !tbaa !247
  %i.ma = getelementptr inbounds nuw [131072 x i8], ptr %i.iv, i64 %i.lx
  %i.mb = getelementptr inbounds nuw [2048 x i8], ptr %i.ma, i64 %.sink
  store ptr %i.mb, ptr %i.iw, align 8, !tbaa !251
  %i.mc = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.ix, i32 noundef %i.iy, i32 noundef %i.ja)
  %i.md = sub i32 0, %i.mc                        ; 7 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.lcssa277281) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.ir) #33
  %i.me = icmp slt i32 %.7, %i.md
  br i1 %i.me, label %bb.bh, label %.outer.outer.backedge

bb.bh:                                            ; preds = %.loopexit276
  %i.mf = icmp slt i32 %.4246.ph.ph.ph, %i.md
  br i1 %i.mf, label %bb.bi, label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %.loopexit276
  %.4252.ph.ph.be = phi i32 [ %i.md, %bb.bh ], [ %.7, %.loopexit276 ]
  br label %.outer.outer, !llvm.loop !774

bb.bi:                                            ; preds = %bb.bh
  %i.mg = icmp sgt i32 %4, %i.md
  br i1 %i.mg, label %.outer.outer.outer, label %.loopexit, !llvm.loop !774

.loopexit:                                        ; preds = %bb.bi, %bb.av, %bb.at, %bb.aw
  %.9 = phi i32 [ %.4252.ph361, %bb.aw ], [ %.4252.ph.ph, %bb.at ], [ %.4252.ph.lcssa, %bb.av ], [ %i.md, %bb.bi ] ; 5 uses
  %.1136 = phi i32 [ %.0135.ph273, %bb.aw ], [ %.0135.ph273.us340.us, %bb.at ], [ %.0135.ph.lcssa, %bb.av ], [ %i.lf, %bb.bi ]
  %.sroa.062.2 = phi i16 [ %.sroa.062.0.ph.ph.ph, %bb.aw ], [ %.sroa.062.0.ph.ph.ph, %bb.at ], [ %.sroa.062.0.ph.ph.ph, %bb.av ], [ %.lcssa277281, %bb.bi ]
  %i.mh = load i8, ptr %i.p, align 4, !tbaa !317, !range !221, !noundef !48
  %i.mi = trunc nuw i8 %i.mh to i1                ; 2 uses
  %i.mj = icmp eq i32 %.9, -32001
  %or.cond = and i1 %i.mj, %i.mi
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.loopexit
  %i.mk = load i32, ptr %i.r, align 8, !tbaa !253
  %i.ml = add nsw i32 %i.mk, -32000
  br label %bb.bs

bb.bk:                                            ; preds = %.loopexit
  %i.mm = add i32 %.9, 31506
  %spec.select.i180 = icmp ult i32 %i.mm, 63013
  %i.mn = icmp sgt i32 %.9, %4
  %or.cond266 = and i1 %i.mn, %spec.select.i180
  br i1 %or.cond266, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.mo = add nsw i32 %.9, %4
  %i.mp = sdiv i32 %i.mo, 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.10 = phi i32 [ %.9, %bb.bk ], [ %i.mp, %bb.bl ] ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.mr = load i8, ptr %i.mq, align 4, !tbaa !171 ; 2 uses
  %i.ms = icmp ne i32 %.1136, 0
  %or.cond3 = select i1 %i.mi, i1 true, i1 %i.ms
  br i1 %or.cond3, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mt = load ptr, ptr %i.k, align 8, !tbaa !213 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.mv = zext i8 %i.mr to i64                    ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !138
  %.not157 = icmp eq i32 %i.mx, 0
  br i1 %.not157, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 184
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !318
  %i.na = and i8 %i.mz, 4
  %.not269 = icmp eq i8 %i.na, 0
  br i1 %.not269, label %bb.br, label %9

9:                                                ; preds = %bb.bo
  %10 = icmp eq i8 %i.mr, 0
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %10, label %12, label %18

12:                                               ; preds = %9
  %13 = load i64, ptr %11, align 8, !tbaa !25
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %15 = load i64, ptr %14, align 8, !tbaa !25
  %16 = and i64 %15, %13
  %17 = shl i64 %16, 8
  br label %bb.bp

18:                                               ; preds = %9
  %19 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.mv
  %20 = load i64, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %22 = load i64, ptr %21, align 8, !tbaa !25
  %23 = and i64 %22, %20
  %24 = lshr i64 %23, 8
  br label %bb.bp

bb.bp:                                            ; preds = %18, %12
  %25 = phi i64 [ %17, %12 ], [ %24, %18 ]
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !25
  %i.nd = xor i64 %i.nc, -1
  %i.ne = and i64 %25, %i.nd
  %.not158 = icmp eq i64 %i.ne, 0
  br i1 %.not158, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mt, i64 72
  store i64 255, ptr %i.nf, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ng = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 8 dereferenceable(520) %8) #33
  %.not159 = icmp eq ptr %i.ng, %8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %spec.select267 = select i1 %.not159, i32 0, i32 %.10
  %i.nh = load ptr, ptr %i.k, align 8, !tbaa !213
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 72
  store i64 0, ptr %i.ni, align 8, !tbaa !214
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.bn, %bb.bm
  %.12 = phi i32 [ %.10, %bb.bm ], [ %spec.select267, %bb.bq ], [ %.10, %bb.bp ], [ %.10, %bb.bo ], [ %.10, %bb.bn ] ; 5 uses
  %i.nj = load i32, ptr %i.r, align 8, !tbaa !253 ; 2 uses
  %i.nk = icmp sgt i32 %.12, 31506
  %i.nl = icmp slt i32 %.12, -31506
  %i.nm = select i1 %i.nl, i32 %i.nj, i32 0
  %i.nn = sub i32 0, %i.nm
  %.p.i181 = select i1 %i.nk, i32 %i.nj, i32 %i.nn
  %i.no = add i32 %.p.i181, %.12
  %.not160 = icmp slt i32 %.12, %4
  %i.np = select i1 %.not160, i8 1, i8 2
  %i.nq = load ptr, ptr %i.bc, align 8, !tbaa !174, !nonnull !48, !align !49
  %i.nr = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.nq) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.bb, i32 noundef %i.no, i1 noundef zeroext %i.cw, i8 noundef zeroext %i.np, i32 noundef 0, i16 %.sroa.062.2, i32 noundef %.2139, i8 noundef zeroext %i.nr) #33
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bj
  %.1 = phi i32 [ %i.ml, %bb.bj ], [ %.12, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %.thread258

.thread258:                                       ; preds = %bb.an, %bb.am, %bb.bs, %bb.w
  %.3 = phi i32 [ %.ph, %bb.w ], [ %.1, %bb.bs ], [ %i.ht, %bb.am ], [ %i.ht, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit, %.thread, %bb.f, %.thread258
  %.4 = phi i32 [ %.3, %.thread258 ], [ %i.ao, %_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE.exit ], [ 0, %.thread ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.c, %bb.bt
  %.5 = phi i32 [ %.4, %bb.bt ], [ %i.j, %bb.c ]
  ret i32 %.5
}

declare void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164), ptr noundef nonnull align 8 dereferenceable(1048), i16, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_129update_continuation_historiesEPNS_6Search5StackENS_5PieceENS_6SquareEi(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef range(i32 -2097152, 2097152) %3) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !317, !range !221, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = zext i8 %1 to i64                        ; 7 uses
  %i.e = zext i8 %2 to i64                        ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 -28
  %i.g = load i16, ptr %i.f, align 4, !tbaa !234  ; 2 uses
  br i1 %i.c, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.a
  switch i16 %i.g, label %bb.b [
    i16 65, label %.split.us.1
    i16 0, label %.split.us.1
  ]

bb.b:                                             ; preds = %.split.us.preheader
  %i.h = getelementptr inbounds i8, ptr %0, i64 -48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.e ; 2 uses
  %i.l = mul nsw i32 %3, 1133
  %i.m = sdiv i32 %i.l, 1024
  %i.n = tail call i32 @llvm.smax.i32(i32 %i.m, i32 -30088)
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.n, i32 29912)
  %.sroa.speculated.i.us = add nsw i32 %i.o, 88   ; 2 uses
  %i.p = load i16, ptr %i.k, align 2, !tbaa !167
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = add nsw i32 %.sroa.speculated.i.us, %i.q
  %i.s = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us, i1 true)
  %i.t = mul nsw i32 %i.s, %i.q
  %.neg.i.us = sdiv i32 %i.t, -30000
  %i.u = add nsw i32 %i.r, %.neg.i.us
  %i.v = trunc i32 %i.u to i16
  store i16 %i.v, ptr %i.k, align 2, !tbaa !167
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader, %.split.us.preheader
  %i.w = getelementptr inbounds i8, ptr %0, i64 -84
  %i.x = load i16, ptr %i.w, align 4, !tbaa !234
  switch i16 %i.x, label %bb.c [
    i16 65, label %.split.us.2
    i16 0, label %.split.us.2
  ]

bb.c:                                             ; preds = %.split.us.1
  %i.y = getelementptr inbounds i8, ptr %0, i64 -104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !247
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.z, i64 %i.d
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.e ; 2 uses
  %i.ac = mul nsw i32 %3, 683
  %i.ad = sdiv i32 %i.ac, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 -30000)
  %.sroa.speculated.i.us.1 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.1, i32 30000) ; 2 uses
  %i.ae = load i16, ptr %i.ab, align 2, !tbaa !167
  %i.af = sext i16 %i.ae to i32                   ; 2 uses
  %i.ag = add nsw i32 %.sroa.speculated.i.us.1, %i.af
  %i.ah = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.1, i1 true)
  %i.ai = mul nsw i32 %i.ah, %i.af
  %.neg.i.us.1 = sdiv i32 %i.ai, -30000
  %i.aj = add nsw i32 %i.ag, %.neg.i.us.1
  %i.ak = trunc i32 %i.aj to i16
  store i16 %i.ak, ptr %i.ab, align 2, !tbaa !167
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.c, %.split.us.1, %.split.us.1
  %i.al = getelementptr inbounds i8, ptr %0, i64 -140
  %i.am = load i16, ptr %i.al, align 4, !tbaa !234
  switch i16 %i.am, label %bb.d [
    i16 65, label %.split.us.3
    i16 0, label %.split.us.3
  ]

bb.d:                                             ; preds = %.split.us.2
  %i.an = getelementptr inbounds i8, ptr %0, i64 -160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !247
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ao, i64 %i.d
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.e ; 2 uses
  %i.ar = mul nsw i32 %3, 312
  %i.as = sdiv i32 %i.ar, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.2 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 -30000)
  %.sroa.speculated.i.us.2 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.2, i32 30000) ; 2 uses
  %i.at = load i16, ptr %i.aq, align 2, !tbaa !167
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = add nsw i32 %.sroa.speculated.i.us.2, %i.au
  %i.aw = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.2, i1 true)
  %i.ax = mul nsw i32 %i.aw, %i.au
  %.neg.i.us.2 = sdiv i32 %i.ax, -30000
  %i.ay = add nsw i32 %i.av, %.neg.i.us.2
  %i.az = trunc i32 %i.ay to i16
  store i16 %i.az, ptr %i.aq, align 2, !tbaa !167
  br label %.split.us.3

.split.us.3:                                      ; preds = %bb.d, %.split.us.2, %.split.us.2
  %i.ba = getelementptr inbounds i8, ptr %0, i64 -196
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !234
  switch i16 %i.bb, label %bb.e [
    i16 65, label %.split.us.4
    i16 0, label %.split.us.4
  ]

bb.e:                                             ; preds = %.split.us.3
  %i.bc = getelementptr inbounds i8, ptr %0, i64 -216
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !247
  %i.be = getelementptr inbounds nuw [128 x i8], ptr %i.bd, i64 %i.d
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.e ; 2 uses
  %i.bg = mul nsw i32 %3, 582
  %i.bh = sdiv i32 %i.bg, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.3 = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 -30000)
  %.sroa.speculated.i.us.3 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.3, i32 30000) ; 2 uses
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !167
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = add nsw i32 %.sroa.speculated.i.us.3, %i.bj
  %i.bl = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.3, i1 true)
  %i.bm = mul nsw i32 %i.bl, %i.bj
  %.neg.i.us.3 = sdiv i32 %i.bm, -30000
  %i.bn = add nsw i32 %i.bk, %.neg.i.us.3
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %i.bf, align 2, !tbaa !167
  br label %.split.us.4

.split.us.4:                                      ; preds = %bb.e, %.split.us.3, %.split.us.3
  %i.bp = getelementptr inbounds i8, ptr %0, i64 -252
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !234
  switch i16 %i.bq, label %bb.f [
    i16 65, label %.split.us.5
    i16 0, label %.split.us.5
  ]

bb.f:                                             ; preds = %.split.us.4
  %i.br = getelementptr inbounds i8, ptr %0, i64 -272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !247
  %i.bt = getelementptr inbounds nuw [128 x i8], ptr %i.bs, i64 %i.d
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.e ; 2 uses
  %i.bv = mul nsw i32 %3, 149
  %i.bw = sdiv i32 %i.bv, 1024
  %.sroa.speculate.load.false.sroa.speculated.i.us.4 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 -30000)
  %.sroa.speculated.i.us.4 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.us.4, i32 30000) ; 2 uses
  %i.bx = load i16, ptr %i.bu, align 2, !tbaa !167
  %i.by = sext i16 %i.bx to i32                   ; 2 uses
  %i.bz = add nsw i32 %.sroa.speculated.i.us.4, %i.by
  %i.ca = tail call i32 @llvm.abs.i32(i32 %.sroa.speculated.i.us.4, i1 true)
  %i.cb = mul nsw i32 %i.ca, %i.by
end_hunk_1
