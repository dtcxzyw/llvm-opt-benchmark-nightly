Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN9Stockfish10Tablebases4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.gd = add nsw i32 %.8.1, 1
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 %.8.1, ptr %i.gf, align 8, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2: ; preds = %bb.af, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1
  %.8.2 = phi i32 [ %i.gd, %bb.af ], [ %.8.1, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.1 ] ; 3 uses
  %i.gg = shl nuw i64 8, %indvars.iv435
  %i.gh = and i64 %i.dp, %i.gg
  %.not81.3 = icmp eq i64 %i.gh, 0
  br i1 %.not81.3, label %bb.ag, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2
  %i.gi = add nsw i32 %.8.2, 1
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 %.8.2, ptr %i.gk, align 4, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3: ; preds = %bb.ag, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2
  %.8.3 = phi i32 [ %i.gi, %bb.ag ], [ %.8.2, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.2 ] ; 3 uses
  %i.gl = shl nuw i64 16, %indvars.iv435
  %i.gm = and i64 %i.dp, %i.gl
  %.not81.4 = icmp eq i64 %i.gm, 0
  br i1 %.not81.4, label %bb.ah, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4

bb.ah:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3
  %i.gn = add nsw i32 %.8.3, 1
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i32 %.8.3, ptr %i.gp, align 16, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4: ; preds = %bb.ah, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3
  %.8.4 = phi i32 [ %i.gn, %bb.ah ], [ %.8.3, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.3 ] ; 3 uses
  %i.gq = shl nuw i64 32, %indvars.iv435
  %i.gr = and i64 %i.dp, %i.gq
  %.not81.5 = icmp eq i64 %i.gr, 0
  br i1 %.not81.5, label %bb.ai, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.5

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4
  %i.gs = add nsw i32 %.8.4, 1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  store i32 %.8.4, ptr %i.gu, align 4, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.5

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.5: ; preds = %bb.ai, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4
  %.8.5 = phi i32 [ %i.gs, %bb.ai ], [ %.8.4, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.4 ] ; 3 uses
  %i.gv = shl nuw i64 64, %indvars.iv435
  %i.gw = and i64 %i.dp, %i.gv
  %.not81.6 = icmp eq i64 %i.gw, 0
  br i1 %.not81.6, label %bb.aj, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.6

bb.aj:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.5
  %i.gx = add nsw i32 %.8.5, 1
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i32 %.8.5, ptr %i.gz, align 8, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.6

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.6: ; preds = %bb.aj, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.5
  %.8.6 = phi i32 [ %i.gx, %bb.aj ], [ %.8.5, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.5 ] ; 3 uses
  %i.ha = shl nuw i64 128, %indvars.iv435
  %i.hb = and i64 %i.dp, %i.ha
  %.not81.7 = icmp eq i64 %i.hb, 0
  br i1 %.not81.7, label %bb.ak, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7

bb.ak:                                            ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.6
  %i.hc = add nsw i32 %.8.6, 1
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv435
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 28
  store i32 %.8.6, ptr %i.he, align 4, !tbaa !81
  br label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7

_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7: ; preds = %bb.ak, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.6
  %.8.7 = phi i32 [ %i.hc, %bb.ak ], [ %.8.6, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.6 ] ; 2 uses
  %indvars.iv.next436.7 = add nuw nsw i64 %indvars.iv435, 8 ; 2 uses
  %exitcond438.not.7 = icmp eq i64 %indvars.iv.next436.7, 64
  br i1 %exitcond438.not.7, label %.loopexit, label %.preheader339.split, !llvm.loop !273

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us, %bb.v
  %.sroa.11.4 = phi ptr [ %.sroa.11.1381, %bb.v ], [ %.sroa.11.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.11.1381, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ] ; 3 uses
  %.sroa.7280.4 = phi ptr [ %.sroa.7280.1382, %bb.v ], [ %.sroa.7280.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.7280.1382, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ] ; 4 uses
  %.sroa.0277.4 = phi ptr [ %.sroa.0277.1383, %bb.v ], [ %.sroa.0277.3.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.sroa.0277.1383, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ] ; 7 uses
  %.9 = phi i32 [ %.6384, %bb.v ], [ %.8.us, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.us ], [ %.8.7, %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EE12emplace_backIJRiRS2_EEERS3_DpOT_.exit.7 ] ; 3 uses
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond446.not = icmp eq i64 %indvars.iv.next444, 28
  br i1 %exitcond446.not, label %bb.u, label %bb.v, !llvm.loop !274

._crit_edge:                                      ; preds = %.lr.ph393, %.preheader338
  store i32 1, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, align 16, !tbaa !81
  %i.hf = load i32, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, align 16, !tbaa !81
  store i32 %i.hf, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 4), align 4, !tbaa !81
  %i.hg = load i32, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, align 16, !tbaa !81
  store i32 %i.hg, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 260), align 4, !tbaa !81
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 4), align 4, !tbaa !81
  store i32 %i.hh, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 8), align 8, !tbaa !81
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 4), align 4, !tbaa !81
  %i.hj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 260), align 4, !tbaa !81
  %i.hk = add nsw i32 %i.hj, %i.hi
  store i32 %i.hk, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 264), align 8, !tbaa !81
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 260), align 4, !tbaa !81
  store i32 %i.hl, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 520), align 8, !tbaa !81
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 8), align 8, !tbaa !81
  store i32 %i.hm, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 12), align 4, !tbaa !81
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 8), align 8, !tbaa !81
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 264), align 8, !tbaa !81
  %i.hp = add nsw i32 %i.ho, %i.hn
  store i32 %i.hp, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 268), align 4, !tbaa !81
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 264), align 8, !tbaa !81
  %i.hr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 520), align 8, !tbaa !81
  %i.hs = add nsw i32 %i.hr, %i.hq
  store i32 %i.hs, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 524), align 4, !tbaa !81
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 520), align 8, !tbaa !81
  store i32 %i.ht, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 780), align 4, !tbaa !81
  %i.hu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 12), align 4, !tbaa !81
  store i32 %i.hu, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 16), align 16, !tbaa !81
  %i.hv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 12), align 4, !tbaa !81
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 268), align 4, !tbaa !81
  %i.hx = add nsw i32 %i.hw, %i.hv
  store i32 %i.hx, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 272), align 16, !tbaa !81
  %i.hy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 268), align 4, !tbaa !81
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 524), align 4, !tbaa !81
  %i.ia = add nsw i32 %i.hz, %i.hy
  store i32 %i.ia, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 528), align 16, !tbaa !81
  %i.ib = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 524), align 4, !tbaa !81
  %i.ic = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 780), align 4, !tbaa !81
  %i.id = add nsw i32 %i.ic, %i.ib
  store i32 %i.id, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 784), align 16, !tbaa !81
  %i.ie = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 780), align 4, !tbaa !81
  store i32 %i.ie, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 1040), align 16, !tbaa !81
  br label %.peel.next

.lr.ph393:                                        ; preds = %.preheader338, %.lr.ph393
  %.10392 = phi i32 [ %i.if, %.lr.ph393 ], [ %.9, %.preheader338 ] ; 2 uses
  %.sroa.0255.0391 = phi ptr [ %i.ik, %.lr.ph393 ], [ %.sroa.0277.4, %.preheader338 ] ; 3 uses
  %.sroa.052.0.copyload = load i32, ptr %.sroa.0255.0391, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0255.0391, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 4
  %i.if = add nsw i32 %.10392, 1
  %i.ig = sext i32 %.sroa.052.0.copyload to i64
  %i.ih = getelementptr inbounds [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_15MapKKE, i64 %i.ig
  %i.ii = zext i8 %.sroa.4.0.copyload to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ii
  store i32 %.10392, ptr %i.ij, align 4, !tbaa !81
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0255.0391, i64 8 ; 2 uses
  %.not328 = icmp eq ptr %i.ik, %.sroa.7280.4
  br i1 %.not328, label %._crit_edge, label %.lr.ph393

.peel.next:                                       ; preds = %._crit_edge, %.loopexit456
  %indvars.iv457 = phi i64 [ 5, %._crit_edge ], [ %indvars.iv.next458, %.loopexit456 ] ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv457 ; 17 uses
  %i.il = getelementptr i8, ptr %invariant.gep, i64 -4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !81
  store i32 %i.im, ptr %invariant.gep, align 4, !tbaa !81
  %i.in = getelementptr i8, ptr %invariant.gep, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !81
  %i.ip = getelementptr i8, ptr %invariant.gep, i64 252
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !81
  %i.ir = add nsw i32 %i.iq, %i.io
  %gep398 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 256
  store i32 %i.ir, ptr %gep398, align 4, !tbaa !81
  %i.is = getelementptr i8, ptr %invariant.gep, i64 252
  %i.it = load i32, ptr %i.is, align 4, !tbaa !81
  %i.iu = getelementptr i8, ptr %invariant.gep, i64 508
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !81
  %i.iw = add nsw i32 %i.iv, %i.it
  %gep398.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 512
  store i32 %i.iw, ptr %gep398.1, align 4, !tbaa !81
  %i.ix = getelementptr i8, ptr %invariant.gep, i64 508
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !81
  %i.iz = getelementptr i8, ptr %invariant.gep, i64 764
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !81
  %i.jb = add nsw i32 %i.ja, %i.iy
  %gep398.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 768
  store i32 %i.jb, ptr %gep398.2, align 4, !tbaa !81
  %i.jc = getelementptr i8, ptr %invariant.gep, i64 764
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !81
  %i.je = getelementptr i8, ptr %invariant.gep, i64 1020
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !81
  %i.jg = add nsw i32 %i.jf, %i.jd
  %gep398.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1024
  store i32 %i.jg, ptr %gep398.3, align 4, !tbaa !81
  %i.jh = getelementptr i8, ptr %invariant.gep, i64 1020
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !81
  %i.jj = icmp samesign ugt i64 %indvars.iv457, 5
  br i1 %i.jj, label %bb.al, label %.loopexit456

.preheader334.us.preheader.peel:                  ; preds = %.loopexit456
  %i.jk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 156), align 4, !tbaa !81
  %i.jl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 148), align 4, !tbaa !81
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 108), align 4, !tbaa !81
  %i.jn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 100), align 4, !tbaa !81
  %i.jo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 60), align 4, !tbaa !81
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 52), align 4, !tbaa !81
  store <4 x i32> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 288), align 16, !tbaa !81
  store <16 x i32> <i32 47, i32 35, i32 23, i32 11, i32 10, i32 22, i32 34, i32 46, i32 45, i32 33, i32 21, i32 9, i32 8, i32 20, i32 32, i32 44>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 32), align 16, !tbaa !81
  store <16 x i32> <i32 43, i32 31, i32 19, i32 7, i32 6, i32 18, i32 30, i32 42, i32 41, i32 29, i32 17, i32 5, i32 4, i32 16, i32 28, i32 40>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 96), align 16, !tbaa !81
  %i.jq = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 getelementptr inbounds ([4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <4 x i64> <i64 47, i64 35, i64 23, i64 11>), <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81 ; 4 uses
  %i.jr = extractelement <4 x i32> %i.jq, i64 0
  store i32 %i.jr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 320), align 16, !tbaa !81
  %i.js = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 getelementptr inbounds ([4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <4 x i64> <i64 45, i64 33, i64 21, i64 9>), <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.jt = add nsw <4 x i32> %i.js, %i.jq          ; 4 uses
  %i.ju = extractelement <4 x i32> %i.jt, i64 0
  store i32 %i.ju, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 352), align 16, !tbaa !81
  %i.jv = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 getelementptr inbounds ([4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <4 x i64> <i64 43, i64 31, i64 19, i64 7>), <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.jw = add nsw <4 x i32> %i.jv, %i.jt          ; 2 uses
  %i.jx = shufflevector <4 x i32> %i.jq, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.jx, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 324), align 4, !tbaa !81
  %i.jy = shufflevector <4 x i32> %i.jt, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.jy, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 356), align 4, !tbaa !81
  %i.jz = extractelement <4 x i32> %i.jq, i64 3
  store i32 %i.jz, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 332), align 4, !tbaa !81
  %i.ka = extractelement <4 x i32> %i.jt, i64 3
  store i32 %i.ka, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 364), align 4, !tbaa !81
  store <4 x i32> %i.jw, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 384), align 16, !tbaa !81
  %i.kb = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 getelementptr inbounds ([4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, <4 x i64> <i64 41, i64 29, i64 17, i64 5>), <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.kc = add nsw <4 x i32> %i.kb, %i.jw          ; 5 uses
  %i.kd = extractelement <4 x i32> %i.kc, i64 0
  %i.ke = add nsw i32 %i.jk, %i.kd                ; 2 uses
  store i32 %i.ke, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 448), align 16, !tbaa !81
  %i.kf = add nsw i32 %i.jl, %i.ke
  store i32 %i.kf, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 16), align 16, !tbaa !81
  %i.kg = extractelement <4 x i32> %i.kc, i64 1
  %i.kh = add nsw i32 %i.jm, %i.kg                ; 2 uses
  store i32 %i.kh, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 452), align 4, !tbaa !81
  %i.ki = add nsw i32 %i.jn, %i.kh
  store i32 %i.ki, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 20), align 4, !tbaa !81
  %i.kj = extractelement <4 x i32> %i.kc, i64 2
  %i.kk = add nsw i32 %i.jo, %i.kj                ; 2 uses
  store i32 %i.kk, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 456), align 8, !tbaa !81
  %i.kl = add nsw i32 %i.jp, %i.kk
  store i32 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 24), align 8, !tbaa !81
  store <4 x i32> %i.kc, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 416), align 16, !tbaa !81
  %i.km = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 12), align 4, !tbaa !81
  %i.kn = extractelement <4 x i32> %i.kc, i64 3
  %i.ko = add nsw i32 %i.km, %i.kn                ; 2 uses
  store <16 x i32> <i32 39, i32 27, i32 15, i32 3, i32 2, i32 14, i32 26, i32 38, i32 37, i32 25, i32 13, i32 1, i32 0, i32 12, i32 24, i32 36>, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 160), align 16, !tbaa !81
  store i32 %i.ko, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 460), align 4, !tbaa !81
  %i.kp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 4), align 4, !tbaa !81
  %i.kq = add nsw i32 %i.kp, %i.ko
  store i32 %i.kq, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 28), align 4, !tbaa !81
  br label %.preheader335

bb.al:                                            ; preds = %.peel.next
  %i.kr = getelementptr i8, ptr %invariant.gep, i64 1276
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !81
  br label %.loopexit456

.loopexit456:                                     ; preds = %bb.al, %.peel.next
  %i.kt = phi i32 [ %i.ks, %bb.al ], [ 0, %.peel.next ]
  %i.ku = add nsw i32 %i.kt, %i.ji
  %gep398.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 1280
  store i32 %i.ku, ptr %gep398.4, align 4, !tbaa !81
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond460.not = icmp eq i64 %indvars.iv.next458, 64
  br i1 %exitcond460.not, label %.preheader334.us.preheader.peel, label %.peel.next, !llvm.loop !275

.preheader335:                                    ; preds = %.preheader334.us.preheader.peel, %.preheader335
  %indvars.iv477 = phi i64 [ 2, %.preheader334.us.preheader.peel ], [ %indvars.iv.next478, %.preheader335 ] ; 4 uses
  %i.kv = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_111LeadPawnIdxE, i64 %indvars.iv477 ; 11 uses
  %i.kw = getelementptr [256 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18BinomialE, i64 %indvars.iv477 ; 9 uses
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_113LeadPawnsSizeE, i64 %indvars.iv477 ; 4 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 -256   ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 96
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kv, i64 128
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 160
  %i.le = getelementptr i8, ptr %i.kw, i64 -100
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !81
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kv, i64 192
  %i.lh = getelementptr i8, ptr %i.kw, i64 -108
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !81
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 68
  %i.lk = getelementptr i8, ptr %i.kw, i64 -148
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !81
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 196
  %i.ln = getelementptr i8, ptr %i.kw, i64 -156
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !81
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lq = getelementptr i8, ptr %i.kw, i64 -196
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !81
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kv, i64 200
  %i.lt = getelementptr i8, ptr %i.kw, i64 -204
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !81
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store <4 x i32> zeroinitializer, ptr %i.kz, align 16, !tbaa !81
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kv, i64 76
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.ky, <4 x i64> <i64 47, i64 35, i64 23, i64 11>
  %i.ly = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.lx, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81 ; 4 uses
  %i.lz = extractelement <4 x i32> %i.ly, i64 0
  store i32 %i.lz, ptr %i.la, align 16, !tbaa !81
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ky, <4 x i64> <i64 45, i64 33, i64 21, i64 9>
  %i.mb = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.ma, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.mc = add nsw <4 x i32> %i.mb, %i.ly          ; 2 uses
  %i.md = shufflevector <4 x i32> %i.ly, <4 x i32> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i32> %i.md, ptr %i.lj, align 4, !tbaa !81
  %i.me = extractelement <4 x i32> %i.ly, i64 3
  store i32 %i.me, ptr %i.lw, align 4, !tbaa !81
  store <4 x i32> %i.mc, ptr %i.lb, align 16, !tbaa !81
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.ky, <4 x i64> <i64 43, i64 31, i64 19, i64 7>
  %i.mg = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.mf, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.mh = add nsw <4 x i32> %i.mg, %i.mc          ; 2 uses
  store <4 x i32> %i.mh, ptr %i.lc, align 16, !tbaa !81
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.ky, <4 x i64> <i64 41, i64 29, i64 17, i64 5>
  %i.mj = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.mi, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !81
  %i.mk = add nsw <4 x i32> %i.mj, %i.mh          ; 5 uses
  %i.ml = extractelement <4 x i32> %i.mk, i64 0
  %i.mm = add nsw i32 %i.lf, %i.ml                ; 2 uses
  store i32 %i.mm, ptr %i.lg, align 16, !tbaa !81
  %i.mn = add nsw i32 %i.li, %i.mm
  store i32 %i.mn, ptr %i.kx, align 16, !tbaa !81
  %i.mo = extractelement <4 x i32> %i.mk, i64 1
  %i.mp = add nsw i32 %i.ll, %i.mo                ; 2 uses
  store i32 %i.mp, ptr %i.lm, align 4, !tbaa !81
  %i.mq = add nsw i32 %i.lo, %i.mp
  store i32 %i.mq, ptr %i.lp, align 4, !tbaa !81
  %i.mr = extractelement <4 x i32> %i.mk, i64 2
  %i.ms = add nsw i32 %i.lr, %i.mr                ; 2 uses
  store i32 %i.ms, ptr %i.ls, align 8, !tbaa !81
  %i.mt = add nsw i32 %i.lu, %i.ms
  store i32 %i.mt, ptr %i.lv, align 8, !tbaa !81
  store <4 x i32> %i.mk, ptr %i.ld, align 16, !tbaa !81
  %i.mu = getelementptr i8, ptr %i.kw, i64 -244
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !81
  %i.mw = extractelement <4 x i32> %i.mk, i64 3
  %i.mx = add nsw i32 %i.mv, %i.mw                ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.kv, i64 204
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !81
  %i.mz = getelementptr i8, ptr %i.kw, i64 -252
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !81
  %i.nb = add nsw i32 %i.na, %i.mx
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !81
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1 ; 2 uses
  %exitcond480.not = icmp eq i64 %indvars.iv.next478, 6
  br i1 %exitcond480.not, label %.preheader333, label %.preheader335, !llvm.loop !276

.preheader333:                                    ; preds = %.preheader335
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 15 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 15 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %_ZNSt6vectorIN9Stockfish9PieceTypeESaIS1_EED2Ev.exit

bb.am:                                            ; preds = %bb.as
  %i.nz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0) #26 ; 2 uses
  %i.oa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, ptr noundef nonnull @.str.19, i64 noundef 18) #26 ; 0 uses
  %i.ob = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98496), align 8, !tbaa !99
  %i.oc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.nz, i64 noundef %i.ob) #26 ; 2 uses
  %i.od = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, ptr noundef nonnull @.str.20, i64 noundef 9) #26 ; 0 uses
  %i.oe = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish12_GLOBAL__N_18TBTablesE, i64 98488), align 8, !tbaa !100
  %i.of = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.oc, i64 noundef %i.oe) #26 ; 2 uses
  %i.og = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull @.str.21, i64 noundef 28) #26 ; 0 uses
  %i.oh = load i32, ptr @_ZN9Stockfish10Tablebases14MaxCardinalityE, align 4, !tbaa !81
  %i.oi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.of, i32 noundef %i.oh) #26 ; 4 uses
  %i.oj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef nonnull @.str.22, i64 noundef 6) #26 ; 0 uses
  %i.ok = load ptr, ptr %i.oi, align 8, !tbaa !102
  %i.ol = getelementptr i8, ptr %i.ok, i64 -24
  %i.om = load i64, ptr %i.ol, align 8
  %i.on = getelementptr inbounds i8, ptr %i.oi, i64 %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 240
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !118 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.am
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 56
  %i.or = load i8, ptr %i.oq, align 8, !tbaa !124
  %.not.i1.i.i.i = icmp eq i8 %i.or, 0
  br i1 %.not.i1.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 67
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !125
  br label %_ZNK9Stockfish12_GLOBAL__N_18TBTables4infoEv.exit

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.op) #26
  %i.ou = load ptr, ptr %i.op, align 8, !tbaa !102
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = tail call noundef signext i8 %i.ow(ptr noundef nonnull align 8 dereferenceable(570) %i.op, i8 noundef signext 10) #26, !inline_history !277
  br label %_ZNK9Stockfish12_GLOBAL__N_18TBTables4infoEv.exit

_ZNK9Stockfish12_GLOBAL__N_18TBTables4infoEv.exit: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i.i = phi i8 [ %i.ot, %bb.ao ], [ %i.ox, %bb.ap ]
  %i.oy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, i8 noundef signext %.0.i.i.i.i) #26
  %i.oz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oy) #26
  %i.pa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, i32 noundef 1) #26 ; 0 uses
  %.not.i.i.i91 = icmp eq ptr %.sroa.0277.4, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorISt4pairIiN9Stockfish6SquareEESaIS3_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNK9Stockfish12_GLOBAL__N_18TBTables4infoEv.exit
end_hunk_0
