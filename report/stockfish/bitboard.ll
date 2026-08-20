inline.NumInlined: 156
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN9Stockfish9Bitboards4initEv:vector.ph
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
  %i.b = add nuw nsw i64 %i.a, 4294967293
  %i.c = and i64 %i.b, 4294967295
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.c ; 2 uses
  %i.d = icmp eq i8 %0, 4                         ; 4 uses
  %.sroa.speculated36.i = select i1 %i.d, i64 8, i64 9 ; 7 uses
  %.sroa.speculated33.i = select i1 %i.d, i8 -8, i8 -7
  %.sroa.speculated30.i = select i1 %i.d, i8 1, i8 -9
  %.sroa.speculated.i = select i1 %i.d, i8 -1, i8 7
  br label %bb.c

bb.b:                                             ; preds = %bb.p
  ret void

bb.c:                                             ; preds = %bb.a, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.p ] ; 9 uses
  %.02110 = phi i32 [ 0, %bb.a ], [ %i.dz, %bb.p ]
  %i.e = trunc nuw nsw i64 %indvars.iv to i8      ; 4 uses
  %i.f = and i64 %indvars.iv, 56
  %i.g = shl nuw i64 255, %i.f
  %i.h = and i64 %indvars.iv, 7
  %i.i = shl nuw i64 72340172838076673, %i.h
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 3 uses
  %i.j = tail call noundef i64 @_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm(i8 noundef zeroext %0, i8 noundef zeroext %i.e, i64 noundef 0)
  %i.k = or i64 %i.g, 72057594037927680
  %i.l = or i64 %i.i, 9114861777597660798
  %i.m = and i64 %i.k, %i.l
  %i.n = and i64 %i.m, %i.j                       ; 2 uses
  store i64 %i.n, ptr %gep, align 16, !tbaa !39
  %i.o = icmp eq i64 %indvars.iv, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = add nuw nsw i64 %indvars.iv, 4294967295
  %3 = and i64 %2, 4294967295
  %gep8 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %3
  %i.p = getelementptr inbounds nuw i8, ptr %gep8, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = sext i32 %.02110 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %gep, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !36
  %indvars.iv.next1219 = add nuw nsw i64 %indvars.iv, %.sroa.speculated36.i ; 5 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next1219, 64
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = and i32 %i.w, 7
  %i.y = trunc nuw nsw i64 %indvars.iv.next1219 to i32
  %i.z = and i32 %i.y, 7
  %narrow.i.i = add nuw nsw i32 %i.x, 2
  %i.aa = sub nsw i32 %narrow.i.i, %i.z
  %i.ab = icmp ult i32 %i.aa, 5
  %i.ac = shl nuw i64 1, %indvars.iv.next1219     ; 4 uses
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv.next1219, %.sroa.speculated36.i ; 5 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next12, 64
  %i.ae = trunc nuw nsw i64 %indvars.iv.next1219 to i32
  %i.af = and i32 %i.ae, 7
  %i.ag = trunc nuw nsw i64 %indvars.iv.next12 to i32
  %i.ah = and i32 %i.ag, 7
  %narrow.i.i.1 = add nuw nsw i32 %i.af, 2
  %i.ai = sub nsw i32 %narrow.i.i.1, %i.ah
  %i.aj = icmp ult i32 %i.ai, 5
  %i.ak = shl nuw i64 1, %indvars.iv.next12       ; 2 uses
  %i.al = or i64 %i.ak, %i.ac                     ; 3 uses
  %indvars.iv.next12.1 = add nuw nsw i64 %indvars.iv.next12, %.sroa.speculated36.i ; 5 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next12.1, 64
  %i.an = trunc nuw nsw i64 %indvars.iv.next12 to i32
  %i.ao = and i32 %i.an, 7
  %i.ap = trunc nuw nsw i64 %indvars.iv.next12.1 to i32
  %i.aq = and i32 %i.ap, 7
  %narrow.i.i.2 = add nuw nsw i32 %i.ao, 2
  %i.ar = sub nsw i32 %narrow.i.i.2, %i.aq
  %i.as = icmp ult i32 %i.ar, 5
  %i.at = shl nuw i64 1, %indvars.iv.next12.1     ; 2 uses
  %i.au = or i64 %i.at, %i.al                     ; 3 uses
  %indvars.iv.next12.2 = add nuw nsw i64 %indvars.iv.next12.1, %.sroa.speculated36.i ; 5 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next12.2, 64
  %i.aw = trunc nuw nsw i64 %indvars.iv.next12.1 to i32
  %i.ax = and i32 %i.aw, 7
  %i.ay = trunc nuw nsw i64 %indvars.iv.next12.2 to i32
  %i.az = and i32 %i.ay, 7
  %narrow.i.i.3 = add nuw nsw i32 %i.ax, 2
  %i.ba = sub nsw i32 %narrow.i.i.3, %i.az
  %i.bb = icmp ult i32 %i.ba, 5
  %i.bc = shl nuw i64 1, %indvars.iv.next12.2     ; 2 uses
  %i.bd = or i64 %i.bc, %i.au                     ; 3 uses
  %indvars.iv.next12.3 = add nuw nsw i64 %indvars.iv.next12.2, %.sroa.speculated36.i ; 5 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next12.3, 64
  %i.bf = trunc nuw nsw i64 %indvars.iv.next12.2 to i32
  %i.bg = and i32 %i.bf, 7
  %i.bh = trunc nuw nsw i64 %indvars.iv.next12.3 to i32
  %i.bi = and i32 %i.bh, 7
  %narrow.i.i.4 = add nuw nsw i32 %i.bg, 2
  %i.bj = sub nsw i32 %narrow.i.i.4, %i.bi
  %i.bk = icmp ult i32 %i.bj, 5
  %i.bl = shl nuw i64 1, %indvars.iv.next12.3     ; 2 uses
  %i.bm = or i64 %i.bl, %i.bd                     ; 3 uses
  %indvars.iv.next12.4 = add nuw nsw i64 %indvars.iv.next12.3, %.sroa.speculated36.i ; 5 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next12.4, 64
  %i.bo = trunc nuw nsw i64 %indvars.iv.next12.3 to i32
  %i.bp = and i32 %i.bo, 7
  %i.bq = trunc nuw nsw i64 %indvars.iv.next12.4 to i32
  %i.br = and i32 %i.bq, 7
  %narrow.i.i.5 = add nuw nsw i32 %i.bp, 2
  %i.bs = sub nsw i32 %narrow.i.i.5, %i.br
  %i.bt = icmp ult i32 %i.bs, 5
  %i.bu = shl nuw i64 1, %indvars.iv.next12.4     ; 2 uses
  %i.bv = or i64 %i.bu, %i.bm                     ; 3 uses
  %indvars.iv.next12.5 = add nuw nsw i64 %indvars.iv.next12.4, %.sroa.speculated36.i ; 3 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next12.5, 64
  %i.bx = trunc nuw nsw i64 %indvars.iv.next12.4 to i32
  %i.by = and i32 %i.bx, 7
  %i.bz = trunc nuw nsw i64 %indvars.iv.next12.5 to i32
  %i.ca = and i32 %i.bz, 7
  %narrow.i.i.6 = add nuw nsw i32 %i.by, 2
  %i.cb = sub nsw i32 %narrow.i.i.6, %i.ca
  %i.cc = icmp ult i32 %i.cb, 5
  %i.cd = shl nuw i64 1, %indvars.iv.next12.5     ; 2 uses
  %i.ce = or i64 %i.cd, %i.bv                     ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit, %bb.e
  %i.cf = phi i64 [ %i.n, %bb.e ], [ %i.ea, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ]
  %.1 = phi i32 [ 0, %bb.e ], [ %i.dz, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ]
  %.0 = phi i64 [ 0, %bb.e ], [ %i.ec, %_ZN9Stockfish9Bitboards14sliding_attackENS_9PieceTypeENS_6SquareEm.exit ] ; 12 uses
  %.not45 = xor i1 %i.v, true
  %.not46 = xor i1 %i.ab, true
  %brmerge47 = select i1 %.not45, i1 true, i1 %.not46
  br i1 %brmerge47, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i

bb.g:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i
  %.not28 = xor i1 %i.ad, true
  %.not29 = xor i1 %i.aj, true
  %brmerge = select i1 %.not28, i1 true, i1 %.not29
  br i1 %brmerge, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1: ; preds = %bb.g
  %i.cg = and i64 %i.ak, %.0
  %.not11.i.1 = icmp eq i64 %i.cg, 0
  br i1 %.not11.i.1, label %bb.h, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.h:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1
  %.not30 = xor i1 %i.am, true
  %.not31 = xor i1 %i.as, true
  %brmerge32 = select i1 %.not30, i1 true, i1 %.not31
  br i1 %brmerge32, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2: ; preds = %bb.h
  %i.ch = and i64 %i.at, %.0
  %.not11.i.2 = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.2, label %bb.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.i:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2
  %.not33 = xor i1 %i.av, true
  %.not34 = xor i1 %i.bb, true
  %brmerge35 = select i1 %.not33, i1 true, i1 %.not34
  br i1 %brmerge35, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3: ; preds = %bb.i
  %i.ci = and i64 %i.bc, %.0
  %.not11.i.3 = icmp eq i64 %i.ci, 0
  br i1 %.not11.i.3, label %bb.j, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.j:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3
  %.not36 = xor i1 %i.be, true
  %.not37 = xor i1 %i.bk, true
  %brmerge38 = select i1 %.not36, i1 true, i1 %.not37
  br i1 %brmerge38, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4: ; preds = %bb.j
  %i.cj = and i64 %i.bl, %.0
  %.not11.i.4 = icmp eq i64 %i.cj, 0
  br i1 %.not11.i.4, label %bb.k, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.k:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4
  %.not39 = xor i1 %i.bn, true
  %.not40 = xor i1 %i.bt, true
  %brmerge41 = select i1 %.not39, i1 true, i1 %.not40
  br i1 %brmerge41, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5: ; preds = %bb.k
  %i.ck = and i64 %i.bu, %.0
  %.not11.i.5 = icmp eq i64 %i.ck, 0
  br i1 %.not11.i.5, label %bb.l, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

bb.l:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5
  %.not42 = xor i1 %i.bw, true
  %.not43 = xor i1 %i.cc, true
  %brmerge44 = select i1 %.not42, i1 true, i1 %.not43
  br i1 %brmerge44, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6: ; preds = %bb.l
  %i.cl = and i64 %i.cd, %.0
  %.not11.i.6 = icmp eq i64 %i.cl, 0
  br i1 %.not11.i.6, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i: ; preds = %bb.f
  %i.cm = and i64 %i.ac, %.0
  %.not11.i = icmp eq i64 %i.cm, 0
  br i1 %.not11.i, label %bb.g, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i
  %.lcssa = phi i64 [ %i.ac, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i ], [ %i.al, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.1 ], [ %i.au, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.2 ], [ %i.bd, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.3 ], [ %i.bm, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.4 ], [ %i.bv, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.5 ], [ %i.ce, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6 ]
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, !llvm.loop !42

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge
  %.1.1.i.ph = phi i64 [ %.lcssa, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i._ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i_crit_edge ], [ 0, %bb.f ], [ %i.ce, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.i.6 ], [ %i.ac, %bb.g ], [ %i.bd, %bb.j ], [ %i.al, %bb.h ], [ %i.bm, %bb.k ], [ %i.au, %bb.i ], [ %i.bv, %bb.l ]
  br label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i: ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i
  %.1.1.i = phi i64 [ %i.cx, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i ], [ %.1.1.i.ph, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader ] ; 3 uses
  %.0.1.i = phi i8 [ %i.cn, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i ], [ %i.e, %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i.preheader ] ; 2 uses
  %i.cn = add i8 %.0.1.i, %.sroa.speculated33.i   ; 4 uses
  %i.co = icmp ult i8 %i.cn, 64
  br i1 %i.co, label %bb.m, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader

bb.m:                                             ; preds = %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i
  %i.cp = and i8 %.0.1.i, 7
  %i.cq = and i8 %i.cn, 7
  %i.cr = zext nneg i8 %i.cq to i32
  %narrow.i.1.i = add nuw nsw i8 %i.cp, 2
  %i.cs = zext nneg i8 %narrow.i.1.i to i32
  %i.ct = sub nsw i32 %i.cs, %i.cr
  %i.cu = icmp ult i32 %i.ct, 5
  br i1 %i.cu, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader

_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.1.i: ; preds = %bb.m
  %i.cv = zext nneg i8 %i.cn to i64
  %i.cw = shl nuw i64 1, %i.cv                    ; 2 uses
  %i.cx = or i64 %i.cw, %.1.1.i                   ; 2 uses
  %i.cy = and i64 %i.cw, %.0
  %.not11.1.i = icmp eq i64 %i.cy, 0
  br i1 %.not11.1.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.i, label %_ZN9Stockfish9Bitboards16safe_destinationENS_6SquareEi.exit.thread.1.i.preheader, !llvm.loop !42

end_hunk_0
