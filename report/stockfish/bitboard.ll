inline.NumInlined: 156
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9Stockfish9Bitboards4initEv:vector.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store <64 x i8> %i.i, ptr %i.k, align 16, !tbaa !19
  %vec.ind.next.2 = add nuw nsw <64 x i64> %vec.ind, splat (i64 192)
  %i.l = tail call range(i64 1, 64) <64 x i64> @llvm.ctpop.v64i64(<64 x i64> %vec.ind.next.2)
  %i.m = trunc nuw nsw <64 x i64> %i.l to <64 x i8>
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish8PopCnt16E, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store <64 x i8> %i.m, ptr %i.o, align 16, !tbaa !19
  %index.next.3 = add nuw nsw i64 %index, 256     ; 2 uses
  %vec.ind.next.3 = add nuw nsw <64 x i64> %vec.ind, splat (i64 256)
  %i.p = icmp eq i64 %index.next.3, 65536
  br i1 %i.p, label %.preheader, label %vector.body, !llvm.loop !32

.preheader:                                       ; preds = %vector.body, %.preheader
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.1, %.preheader ], [ 0, %vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish14SquareDistanceE, i64 %indvars.iv127
  %i.r = trunc nuw nsw i64 %indvars.iv127 to i8   ; 2 uses
  %i.s = lshr i8 %i.r, 3
  %i.t = zext nneg i8 %i.s to i32
  %broadcast.splatinsert140 = insertelement <64 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat141 = shufflevector <64 x i32> %broadcast.splatinsert140, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.u = and i8 %i.r, 6
  %i.v = zext nneg i8 %i.u to i32
  %broadcast.splatinsert = insertelement <64 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat = shufflevector <64 x i32> %broadcast.splatinsert, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.w = add nsw <64 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7>
  %i.x = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.w, i1 true)
  %i.y = add nsw <64 x i32> %broadcast.splat141, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7>
  %i.z = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.y, i1 true)
  %i.aa = tail call <64 x i32> @llvm.umax.v64i32(<64 x i32> %i.x, <64 x i32> %i.z)
  %i.ab = trunc nuw nsw <64 x i32> %i.aa to <64 x i8>
  store <64 x i8> %i.ab, ptr %i.q, align 16, !tbaa !19
  %indvars.iv.next128 = or disjoint i64 %indvars.iv127, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr @_ZN9Stockfish14SquareDistanceE, i64 %indvars.iv.next128
  %i.ad = trunc nuw nsw i64 %indvars.iv.next128 to i8 ; 2 uses
  %i.ae = lshr i8 %i.ad, 3
  %i.af = zext nneg i8 %i.ae to i32
  %broadcast.splatinsert140.1 = insertelement <64 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat141.1 = shufflevector <64 x i32> %broadcast.splatinsert140.1, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.ag = and i8 %i.ad, 7
  %i.ah = zext nneg i8 %i.ag to i32
  %broadcast.splatinsert.1 = insertelement <64 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat.1 = shufflevector <64 x i32> %broadcast.splatinsert.1, <64 x i32> poison, <64 x i32> zeroinitializer
  %i.ai = add nsw <64 x i32> %broadcast.splat.1, <i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7, i32 0, i32 -1, i32 -2, i32 -3, i32 -4, i32 -5, i32 -6, i32 -7>
  %i.aj = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.ai, i1 true)
  %i.ak = add nsw <64 x i32> %broadcast.splat141.1, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7>
  %i.al = tail call <64 x i32> @llvm.abs.v64i32(<64 x i32> %i.ak, i1 true)
  %i.am = tail call <64 x i32> @llvm.umax.v64i32(<64 x i32> %i.aj, <64 x i32> %i.al)
  %i.an = trunc nuw nsw <64 x i32> %i.am to <64 x i8>
  store <64 x i8> %i.an, ptr %i.ac, align 16, !tbaa !19
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 2 ; 2 uses
  %exitcond130.not.1 = icmp eq i64 %indvars.iv.next128.1, 64
  br i1 %exitcond130.not.1, label %bb.a, label %.preheader, !llvm.loop !35

bb.a:                                             ; preds = %.preheader
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext 4, ptr noundef nonnull @_ZN9Stockfish12_GLOBAL__N_19RookTableE)
  tail call fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext 3, ptr noundef nonnull @_ZN9Stockfish12_GLOBAL__N_111BishopTableE)
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  ret void

bb.c:                                             ; preds = %bb.a, %bb.g
  %indvars.iv135 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next136, %bb.g ] ; 8 uses
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %indvars.iv135 ; 6 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv135 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = shl nuw i64 1, %indvars.iv135           ; 4 uses
  %i.at = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish6LineBBE, i64 %indvars.iv135 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9RayPassBBE, i64 %indvars.iv135 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1536), i64 %indvars.iv135
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !15
  br label %bb.h

bb.d:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 2048), i64 %indvars.iv135
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %indvars.iv131.1 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next132.1, %bb.f ] ; 8 uses
  %i.ba = shl nuw i64 1, %indvars.iv131.1         ; 5 uses
  %i.bb = and i64 %i.az, %i.ba
  %.not17.1 = icmp eq i64 %i.bb, 0
  br i1 %.not17.1, label %._crit_edge.1, label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1: ; preds = %bb.e
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !36 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv131.1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bi = and i64 %i.bh, %i.bd
  %i.bj = or i64 %i.as, %i.bi
  %i.bk = or i64 %i.bj, %i.ba
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv131.1
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !15
  %i.bm = load i64, ptr %i.au, align 16, !tbaa !39
  %i.bn = tail call noundef i64 @llvm.pext.i64(i64 %i.ba, i64 %i.bm)
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !39
  %i.bt = tail call noundef i64 @llvm.pext.i64(i64 %i.as, i64 %i.bs)
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.bx = and i64 %i.bw, %i.bq                    ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131.1
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !15
  %i.bz = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.ca = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.cb = or i64 %i.ca, %i.ba
  %i.cc = and i64 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv131.1
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !15
  br label %bb.f

._crit_edge.1:                                    ; preds = %bb.e
  %.phi.trans.insert.1 = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131.1
  %.pre.1 = load i64, ptr %.phi.trans.insert.1, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.1, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1
  %i.ce = phi i64 [ %.pre.1, %._crit_edge.1 ], [ %i.bx, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread75.1 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131.1
  %i.cg = or i64 %i.ce, %i.ba
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !15
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131.1, 1 ; 2 uses
  %exitcond134.not.1 = icmp eq i64 %indvars.iv.next132.1, 64
  br i1 %exitcond134.not.1, label %bb.g, label %bb.e, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, 64
  br i1 %exitcond138.not, label %bb.b, label %bb.c, !llvm.loop !41

bb.h:                                             ; preds = %bb.c, %bb.i
  %indvars.iv131 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next132, %bb.i ] ; 8 uses
  %i.ch = shl nuw i64 1, %indvars.iv131           ; 5 uses
  %i.ci = and i64 %i.ax, %i.ch
  %.not17 = icmp eq i64 %i.ci, 0
  br i1 %.not17, label %._crit_edge, label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread

._crit_edge:                                      ; preds = %bb.h
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %bb.i

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread: ; preds = %bb.h
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %indvars.iv131 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !15
  %i.cp = and i64 %i.co, %i.ck
  %i.cq = or i64 %i.as, %i.cp
  %i.cr = or i64 %i.cq, %i.ch
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv131
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !15
  %i.ct = load i64, ptr %i.ap, align 32, !tbaa !39
  %i.cu = tail call noundef i64 @llvm.pext.i64(i64 %i.ch, i64 %i.ct)
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.cy = load i64, ptr %i.cl, align 32, !tbaa !39
  %i.cz = tail call noundef i64 @llvm.pext.i64(i64 %i.as, i64 %i.cy)
  %i.da = and i64 %i.cz, 4294967295
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !15
  %i.dd = and i64 %i.dc, %i.cx                    ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !15
  %i.df = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.dg = load i64, ptr %i.db, align 8, !tbaa !15
  %i.dh = or i64 %i.dg, %i.ch
  %i.di = and i64 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv131
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread
  %i.dk = phi i64 [ %.pre, %._crit_edge ], [ %i.dd, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.thread ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv131
  %i.dm = or i64 %i.dk, %i.ch
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !15
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, 64
  br i1 %exitcond134.not, label %bb.d, label %bb.h, !llvm.loop !40
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9Stockfish12_GLOBAL__N_111init_magicsENS_9PieceTypeEPmPA2_NS_5MagicE(i8 noundef zeroext range(i8 3, 5) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i8 %0 to i64
  %2 = add nuw nsw i64 %i.a, 4294967293
  %3 = and i64 %2, 4294967295
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %3 ; 2 uses
  %i.b = icmp eq i8 %0, 4                         ; 4 uses
  %.sroa.speculated36.i = select i1 %i.b, i64 8, i64 9 ; 7 uses
  %.sroa.speculated33.i = select i1 %i.b, i8 -8, i8 -7
  %.sroa.speculated30.i = select i1 %i.b, i8 1, i8 -9
  %.sroa.speculated.i = select i1 %i.b, i8 -1, i8 7
  br label %bb.c

bb.b:                                             ; preds = %bb.p
  ret void

bb.c:                                             ; preds = %bb.a, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.p ] ; 9 uses
  %.02110 = phi i32 [ 0, %bb.a ], [ %i.dx, %bb.p ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i8      ; 4 uses
  %i.d = and i64 %indvars.iv, 56
  %i.e = shl nuw i64 255, %i.d
  %i.f = and i64 %indvars.iv, 7
  %i.g = shl nuw i64 72340172838076673, %i.f
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.h = tail call noundef i64 @_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm(i8 noundef zeroext %0, i8 noundef zeroext %i.c, i64 noundef 0)
  %i.i = or i64 %i.e, 72057594037927680
  %i.j = or i64 %i.g, 9114861777597660798
  %i.k = and i64 %i.i, %i.j
  %i.l = and i64 %i.k, %i.h                       ; 2 uses
  store i64 %i.l, ptr %gep, align 16, !tbaa !39
  %i.m = icmp eq i64 %indvars.iv, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = add nuw nsw i64 %indvars.iv, 4294967295
  %5 = and i64 %4, 4294967295
  %gep8 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %5
  %i.n = getelementptr inbounds nuw i8, ptr %gep8, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = sext i32 %.02110 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %gep, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !36
  %indvars.iv.next1219 = add nuw nsw i64 %indvars.iv, %.sroa.speculated36.i ; 5 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next1219, 64
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = and i32 %i.u, 7
  %i.w = trunc nuw nsw i64 %indvars.iv.next1219 to i32
  %i.x = and i32 %i.w, 7
  %narrow.i.i = add nuw nsw i32 %i.v, 2
  %i.y = sub nsw i32 %narrow.i.i, %i.x
  %i.z = icmp ult i32 %i.y, 5
  %i.aa = shl nuw i64 1, %indvars.iv.next1219     ; 4 uses
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv.next1219, %.sroa.speculated36.i ; 5 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next12, 64
  %i.ac = trunc nuw nsw i64 %indvars.iv.next1219 to i32
  %i.ad = and i32 %i.ac, 7
  %i.ae = trunc nuw nsw i64 %indvars.iv.next12 to i32
  %i.af = and i32 %i.ae, 7
  %narrow.i.i.1 = add nuw nsw i32 %i.ad, 2
  %i.ag = sub nsw i32 %narrow.i.i.1, %i.af
  %i.ah = icmp ult i32 %i.ag, 5
  %i.ai = shl nuw i64 1, %indvars.iv.next12       ; 2 uses
  %i.aj = or i64 %i.ai, %i.aa                     ; 3 uses
  %indvars.iv.next12.1 = add nuw nsw i64 %indvars.iv.next12, %.sroa.speculated36.i ; 5 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next12.1, 64
  %i.al = trunc nuw nsw i64 %indvars.iv.next12 to i32
  %i.am = and i32 %i.al, 7
  %i.an = trunc nuw nsw i64 %indvars.iv.next12.1 to i32
  %i.ao = and i32 %i.an, 7
  %narrow.i.i.2 = add nuw nsw i32 %i.am, 2
  %i.ap = sub nsw i32 %narrow.i.i.2, %i.ao
  %i.aq = icmp ult i32 %i.ap, 5
  %i.ar = shl nuw i64 1, %indvars.iv.next12.1     ; 2 uses
  %i.as = or i64 %i.ar, %i.aj                     ; 3 uses
  %indvars.iv.next12.2 = add nuw nsw i64 %indvars.iv.next12.1, %.sroa.speculated36.i ; 5 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next12.2, 64
  %i.au = trunc nuw nsw i64 %indvars.iv.next12.1 to i32
  %i.av = and i32 %i.au, 7
  %i.aw = trunc nuw nsw i64 %indvars.iv.next12.2 to i32
  %i.ax = and i32 %i.aw, 7
  %narrow.i.i.3 = add nuw nsw i32 %i.av, 2
  %i.ay = sub nsw i32 %narrow.i.i.3, %i.ax
  %i.az = icmp ult i32 %i.ay, 5
  %i.ba = shl nuw i64 1, %indvars.iv.next12.2     ; 2 uses
  %i.bb = or i64 %i.ba, %i.as                     ; 3 uses
  %indvars.iv.next12.3 = add nuw nsw i64 %indvars.iv.next12.2, %.sroa.speculated36.i ; 5 uses
  %i.bc = icmp samesign ult i64 %indvars.iv.next12.3, 64
  %i.bd = trunc nuw nsw i64 %indvars.iv.next12.2 to i32
  %i.be = and i32 %i.bd, 7
  %i.bf = trunc nuw nsw i64 %indvars.iv.next12.3 to i32
  %i.bg = and i32 %i.bf, 7
  %narrow.i.i.4 = add nuw nsw i32 %i.be, 2
  %i.bh = sub nsw i32 %narrow.i.i.4, %i.bg
  %i.bi = icmp ult i32 %i.bh, 5
  %i.bj = shl nuw i64 1, %indvars.iv.next12.3     ; 2 uses
  %i.bk = or i64 %i.bj, %i.bb                     ; 3 uses
  %indvars.iv.next12.4 = add nuw nsw i64 %indvars.iv.next12.3, %.sroa.speculated36.i ; 5 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next12.4, 64
  %i.bm = trunc nuw nsw i64 %indvars.iv.next12.3 to i32
  %i.bn = and i32 %i.bm, 7
  %i.bo = trunc nuw nsw i64 %indvars.iv.next12.4 to i32
  %i.bp = and i32 %i.bo, 7
  %narrow.i.i.5 = add nuw nsw i32 %i.bn, 2
  %i.bq = sub nsw i32 %narrow.i.i.5, %i.bp
  %i.br = icmp ult i32 %i.bq, 5
  %i.bs = shl nuw i64 1, %indvars.iv.next12.4     ; 2 uses
  %i.bt = or i64 %i.bs, %i.bk                     ; 3 uses
  %indvars.iv.next12.5 = add nuw nsw i64 %indvars.iv.next12.4, %.sroa.speculated36.i ; 3 uses
  %i.bu = icmp samesign ult i64 %indvars.iv.next12.5, 64
  %i.bv = trunc nuw nsw i64 %indvars.iv.next12.4 to i32
  %i.bw = and i32 %i.bv, 7
  %i.bx = trunc nuw nsw i64 %indvars.iv.next12.5 to i32
  %i.by = and i32 %i.bx, 7
  %narrow.i.i.6 = add nuw nsw i32 %i.bw, 2
  %i.bz = sub nsw i32 %narrow.i.i.6, %i.by
  %i.ca = icmp ult i32 %i.bz, 5
  %i.cb = shl nuw i64 1, %indvars.iv.next12.5     ; 2 uses
  %i.cc = or i64 %i.cb, %i.bt                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit, %bb.e
  %i.cd = phi i64 [ %i.l, %bb.e ], [ %i.dy, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ]
  %.1 = phi i32 [ 0, %bb.e ], [ %i.dx, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ]
  %.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ] ; 12 uses
  %.not45 = xor i1 %i.t, true
  %.not46 = xor i1 %i.z, true
  %brmerge47 = select i1 %.not45, i1 true, i1 %.not46
  br i1 %brmerge47, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i

bb.g:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i
  %.not28.a = xor i1 %i.ab, true
  %.not29.a = xor i1 %i.ah, true
  %brmerge = select i1 %.not28.a, i1 true, i1 %.not29.a
  br i1 %brmerge, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1: ; preds = %bb.g
  %i.ce = and i64 %i.ai, %.0
  %.not11.i.1 = icmp eq i64 %i.ce, 0
  br i1 %.not11.i.1, label %bb.h, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.h:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1
  %.not30 = xor i1 %i.ak, true
  %.not31.a = xor i1 %i.aq, true
  %brmerge32 = select i1 %.not30, i1 true, i1 %.not31.a
  br i1 %brmerge32, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2: ; preds = %bb.h
  %i.cf = and i64 %i.ar, %.0
  %.not11.i.2 = icmp eq i64 %i.cf, 0
  br i1 %.not11.i.2, label %bb.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.i:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2
  %.not33 = xor i1 %i.at, true
  %.not34.a = xor i1 %i.az, true
  %brmerge35 = select i1 %.not33, i1 true, i1 %.not34.a
  br i1 %brmerge35, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3: ; preds = %bb.i
  %i.cg = and i64 %i.ba, %.0
  %.not11.i.3 = icmp eq i64 %i.cg, 0
  br i1 %.not11.i.3, label %bb.j, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.j:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3
  %.not36 = xor i1 %i.bc, true
  %.not37.a = xor i1 %i.bi, true
  %brmerge38 = select i1 %.not36, i1 true, i1 %.not37.a
  br i1 %brmerge38, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4: ; preds = %bb.j
  %i.ch = and i64 %i.bj, %.0
  %.not11.i.4 = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.4, label %bb.k, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.k:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4
  %.not39 = xor i1 %i.bl, true
  %.not40.a = xor i1 %i.br, true
  %brmerge41 = select i1 %.not39, i1 true, i1 %.not40.a
  br i1 %brmerge41, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5: ; preds = %bb.k
  %i.ci = and i64 %i.bs, %.0
  %.not11.i.5 = icmp eq i64 %i.ci, 0
  br i1 %.not11.i.5, label %bb.l, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.l:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5
  %.not42 = xor i1 %i.bu, true
  %.not43 = xor i1 %i.ca, true
  %brmerge44 = select i1 %.not42, i1 true, i1 %.not43
  br i1 %brmerge44, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6: ; preds = %bb.l
  %i.cj = and i64 %i.cb, %.0
  %.not11.i.6 = icmp eq i64 %i.cj, 0
  br i1 %.not11.i.6, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i: ; preds = %bb.f
  %i.ck = and i64 %i.aa, %.0
  %.not11.i = icmp eq i64 %i.ck, 0
  br i1 %.not11.i, label %bb.g, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i
  %.lcssa = phi i64 [ %i.aa, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i ], [ %i.aj, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1 ], [ %i.as, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2 ], [ %i.bb, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3 ], [ %i.bk, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4 ], [ %i.bt, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5 ], [ %i.cc, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6 ]
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge
  %.1.1.i.ph = phi i64 [ %.lcssa, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge ], [ 0, %bb.f ], [ %i.cc, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6 ], [ %i.aa, %bb.g ], [ %i.bb, %bb.j ], [ %i.aj, %bb.h ], [ %i.bk, %bb.k ], [ %i.as, %bb.i ], [ %i.bt, %bb.l ]
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i
  %.1.1.i = phi i64 [ %i.cv, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i ], [ %.1.1.i.ph, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader ] ; 3 uses
  %.0.1.i = phi i8 [ %i.cl, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i ], [ %i.c, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader ] ; 2 uses
  %i.cl = add i8 %.0.1.i, %.sroa.speculated33.i   ; 4 uses
  %i.cm = icmp ult i8 %i.cl, 64
  br i1 %i.cm, label %bb.m, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader

bb.m:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i
  %i.cn = and i8 %.0.1.i, 7
  %i.co = and i8 %i.cl, 7
  %i.cp = zext nneg i8 %i.co to i32
  %narrow.i.1.i = add nuw nsw i8 %i.cn, 2
  %i.cq = zext nneg i8 %narrow.i.1.i to i32
  %i.cr = sub nsw i32 %i.cq, %i.cp
  %i.cs = icmp ult i32 %i.cr, 5
  br i1 %i.cs, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i: ; preds = %bb.m
  %i.ct = zext nneg i8 %i.cl to i64
  %i.cu = shl nuw i64 1, %i.ct                    ; 2 uses
  %i.cv = or i64 %i.cu, %.1.1.i                   ; 2 uses
  %i.cw = and i64 %i.cu, %.0
  %.not11.1.i = icmp eq i64 %i.cw, 0
  br i1 %.not11.1.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i, %bb.m, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i
  %.1.2.i.ph = phi i64 [ %.1.1.i, %bb.m ], [ %i.cv, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i ], [ %.1.1.i, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i ]
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i
  %.1.2.i = phi i64 [ %i.dh, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i ], [ %.1.2.i.ph, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader ] ; 3 uses
  %.0.2.i = phi i8 [ %i.cx, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i ], [ %i.c, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader ] ; 2 uses
  %i.cx = add i8 %.0.2.i, %.sroa.speculated30.i   ; 4 uses
  %i.cy = icmp ult i8 %i.cx, 64
  br i1 %i.cy, label %bb.n, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader

bb.n:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i
  %i.cz = and i8 %.0.2.i, 7
  %i.da = and i8 %i.cx, 7
  %i.db = zext nneg i8 %i.da to i32
  %narrow.i.2.i = add nuw nsw i8 %i.cz, 2
  %i.dc = zext nneg i8 %narrow.i.2.i to i32
  %i.dd = sub nsw i32 %i.dc, %i.db
  %i.de = icmp ult i32 %i.dd, 5
  br i1 %i.de, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i: ; preds = %bb.n
  %i.df = zext nneg i8 %i.cx to i64
  %i.dg = shl nuw i64 1, %i.df                    ; 2 uses
  %i.dh = or i64 %i.dg, %.1.2.i                   ; 2 uses
  %i.di = and i64 %i.dg, %.0
  %.not11.2.i = icmp eq i64 %i.di, 0
  br i1 %.not11.2.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i, %bb.n, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i
  %.1.3.i.ph = phi i64 [ %.1.2.i, %bb.n ], [ %i.dh, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2.i ], [ %.1.2.i, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i ]
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i
  %.1.3.i = phi i64 [ %i.dt, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i ], [ %.1.3.i.ph, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader ] ; 3 uses
  %.0.3.i = phi i8 [ %i.dj, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i ], [ %i.c, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i.preheader ] ; 2 uses
  %i.dj = add i8 %.0.3.i, %.sroa.speculated.i     ; 4 uses
  %i.dk = icmp ult i8 %i.dj, 64
  br i1 %i.dk, label %bb.o, label %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit

bb.o:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i
  %i.dl = and i8 %.0.3.i, 7
  %i.dm = and i8 %i.dj, 7
  %i.dn = zext nneg i8 %i.dm to i32
  %narrow.i.3.i = add nuw nsw i8 %i.dl, 2
  %i.do = zext nneg i8 %narrow.i.3.i to i32
  %i.dp = sub nsw i32 %i.do, %i.dn
  %i.dq = icmp ult i32 %i.dp, 5
  br i1 %i.dq, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i, label %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i: ; preds = %bb.o
  %i.dr = zext nneg i8 %i.dj to i64
  %i.ds = shl nuw i64 1, %i.dr                    ; 2 uses
  %i.dt = or i64 %i.ds, %.1.3.i                   ; 2 uses
  %i.du = and i64 %i.ds, %.0
  %.not11.3.i = icmp eq i64 %i.du, 0
  br i1 %.not11.3.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i, label %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit, !llvm.loop !42

_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i, %bb.o, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i
  %.2.3.i = phi i64 [ %.1.3.i, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2.i ], [ %i.dt, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3.i ], [ %.1.3.i, %bb.o ]
  %i.dv = tail call noundef i64 @llvm.pext.i64(i64 %.0, i64 %i.cd)
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dv
  store i64 %.2.3.i, ptr %i.dw, align 8, !tbaa !15
  %i.dx = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.dy = load i64, ptr %gep, align 16, !tbaa !39 ; 3 uses
  %i.dz = sub i64 %.0, %i.dy
  %i.ea = and i64 %i.dz, %i.dy                    ; 2 uses
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %bb.p, label %bb.f, !llvm.loop !43

bb.p:                                             ; preds = %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !44
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pext.i64(i64, i64) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm(i8 noundef zeroext %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i8 %0, 4                         ; 4 uses
  %.sroa.speculated36 = select i1 %i.a, i8 8, i8 9 ; 2 uses
  %i.b = add i8 %1, %.sroa.speculated36           ; 2 uses
  %i.c = icmp ult i8 %i.b, 64
  br i1 %i.c, label %.lr.ph, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread

bb.b:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit
  %i.d = add nuw nsw i8 %i.f, %.sroa.speculated36 ; 2 uses
  %i.e = icmp samesign ult i8 %i.d, 64
  br i1 %i.e, label %.lr.ph, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread, !llvm.loop !42

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ %i.d, %bb.b ], [ %i.b, %bb.a ]  ; 4 uses
  %.046 = phi i8 [ %i.f, %bb.b ], [ %1, %bb.a ]
  %.145 = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.g = and i8 %.046, 7
  %i.h = and i8 %i.f, 7
  %i.i = zext nneg i8 %i.h to i32
  %narrow.i = add nuw nsw i8 %i.g, 2
  %i.j = zext nneg i8 %narrow.i to i32
  %i.k = sub nsw i32 %i.j, %i.i
  %i.l = icmp ult i32 %i.k, 5
  br i1 %i.l, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit: ; preds = %.lr.ph
  %i.m = zext nneg i8 %i.f to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = or i64 %i.n, %.145                       ; 3 uses
  %i.p = and i64 %i.n, %2
  %.not11 = icmp eq i64 %i.p, 0
  br i1 %.not11, label %bb.b, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread_crit_edge, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread_crit_edge: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread: ; preds = %.lr.ph, %bb.b, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread_crit_edge, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %i.o, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread_crit_edge ], [ %.145, %.lr.ph ], [ %i.o, %bb.b ]
  %.sroa.speculated33 = select i1 %i.a, i8 -8, i8 -7
  br label %bb.c

bb.c:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread
  %.1.1 = phi i64 [ %.2, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread ], [ %i.aa, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1 ] ; 3 uses
  %.0.1 = phi i8 [ %1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread ], [ %i.q, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1 ] ; 2 uses
  %i.q = add i8 %.0.1, %.sroa.speculated33        ; 4 uses
  %i.r = icmp ult i8 %i.q, 64
  br i1 %i.r, label %bb.d, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1

bb.d:                                             ; preds = %bb.c
  %i.s = and i8 %.0.1, 7
  %i.t = and i8 %i.q, 7
  %i.u = zext nneg i8 %i.t to i32
  %narrow.i.1 = add nuw nsw i8 %i.s, 2
  %i.v = zext nneg i8 %narrow.i.1 to i32
  %i.w = sub nsw i32 %i.v, %i.u
  %i.x = icmp ult i32 %i.w, 5
  br i1 %i.x, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1: ; preds = %bb.d
  %i.y = zext nneg i8 %i.q to i64
  %i.z = shl nuw i64 1, %i.y                      ; 2 uses
  %i.aa = or i64 %i.z, %.1.1                      ; 2 uses
  %i.ab = and i64 %i.z, %2
  %.not11.1 = icmp eq i64 %i.ab, 0
  br i1 %.not11.1, label %bb.c, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1, %bb.d, %bb.c
  %.2.1 = phi i64 [ %.1.1, %bb.c ], [ %i.aa, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1 ], [ %.1.1, %bb.d ]
  %.sroa.speculated30 = select i1 %i.a, i8 1, i8 -9
  br label %bb.e

bb.e:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1
  %.1.2 = phi i64 [ %.2.1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1 ], [ %i.am, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2 ] ; 3 uses
  %.0.2 = phi i8 [ %1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1 ], [ %i.ac, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2 ] ; 2 uses
  %i.ac = add i8 %.0.2, %.sroa.speculated30       ; 4 uses
  %i.ad = icmp ult i8 %i.ac, 64
  br i1 %i.ad, label %bb.f, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2

bb.f:                                             ; preds = %bb.e
  %i.ae = and i8 %.0.2, 7
  %i.af = and i8 %i.ac, 7
  %i.ag = zext nneg i8 %i.af to i32
  %narrow.i.2 = add nuw nsw i8 %i.ae, 2
  %i.ah = zext nneg i8 %narrow.i.2 to i32
  %i.ai = sub nsw i32 %i.ah, %i.ag
  %i.aj = icmp ult i32 %i.ai, 5
  br i1 %i.aj, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2: ; preds = %bb.f
  %i.ak = zext nneg i8 %i.ac to i64
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  %i.am = or i64 %i.al, %.1.2                     ; 2 uses
  %i.an = and i64 %i.al, %2
  %.not11.2 = icmp eq i64 %i.an, 0
  br i1 %.not11.2, label %bb.e, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2, %bb.f, %bb.e
  %.2.2 = phi i64 [ %.1.2, %bb.e ], [ %i.am, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.2 ], [ %.1.2, %bb.f ]
  %.sroa.speculated = select i1 %i.a, i8 -1, i8 7
  br label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2
  %.1.3 = phi i64 [ %.2.2, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2 ], [ %i.ay, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3 ] ; 3 uses
  %.0.3 = phi i8 [ %1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.2 ], [ %i.ao, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3 ] ; 2 uses
  %i.ao = add i8 %.0.3, %.sroa.speculated         ; 4 uses
  %i.ap = icmp ult i8 %i.ao, 64
  br i1 %i.ap, label %bb.h, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.3

bb.h:                                             ; preds = %bb.g
  %i.aq = and i8 %.0.3, 7
  %i.ar = and i8 %i.ao, 7
  %i.as = zext nneg i8 %i.ar to i32
  %narrow.i.3 = add nuw nsw i8 %i.aq, 2
  %i.at = zext nneg i8 %narrow.i.3 to i32
  %i.au = sub nsw i32 %i.at, %i.as
  %i.av = icmp ult i32 %i.au, 5
  br i1 %i.av, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.3

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3: ; preds = %bb.h
  %i.aw = zext nneg i8 %i.ao to i64
  %i.ax = shl nuw i64 1, %i.aw                    ; 2 uses
  %i.ay = or i64 %i.ax, %.1.3                     ; 2 uses
  %i.az = and i64 %i.ax, %2
  %.not11.3 = icmp eq i64 %i.az, 0
  br i1 %.not11.3, label %bb.g, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.3, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.3: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3, %bb.h, %bb.g
  %.2.3 = phi i64 [ %.1.3, %bb.g ], [ %i.ay, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.3 ], [ %.1.3, %bb.h ]
  ret i64 %.2.3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i64> @llvm.ctpop.v64i64(<64 x i64>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i32> @llvm.abs.v64i32(<64 x i32>, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i32> @llvm.umax.v64i32(<64 x i32>, <64 x i32>) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"ThinLTO", i32 0}
end_hunk_0
