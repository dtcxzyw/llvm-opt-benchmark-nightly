Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/position?download=true
inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN9Stockfish8Position4initEv:bb.a
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.sroa.0.0.copyload.i81.1 = phi i16 [ %.sroa.0.0.copyload.i.1, %.lr.ph.1 ], [ %.sroa.0.0.copyload.i79.1, %.lr.ph.preheader.1 ]
  %i.arl = phi i64 [ %i.aru, %.lr.ph.1 ], [ %i.arg, %.lr.ph.preheader.1 ] ; 2 uses
  %.080.1 = phi i32 [ %i.arr, %.lr.ph.1 ], [ %i.ark, %.lr.ph.preheader.1 ]
  %i.arm = trunc i64 %i.arl to i32                ; 2 uses
  %i.arn = and i32 %i.arm, 8191                   ; 2 uses
  %i.aro = icmp eq i32 %.080.1, %i.arn
  %i.arp = lshr i32 %i.arm, 16
  %i.arq = and i32 %i.arp, 8191
  %i.arr = select i1 %i.aro, i32 %i.arq, i32 %i.arn ; 2 uses
  %i.ars = zext nneg i32 %i.arr to i64            ; 2 uses
  %i.art = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish6cuckooE, i64 %i.ars ; 2 uses
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !13
  store i64 %i.arl, ptr %i.art, align 8, !tbaa !13
  %i.arv = getelementptr inbounds nuw [2 x i8], ptr @_ZN9Stockfish10cuckooMoveE, i64 %i.ars ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i16, ptr %i.arv, align 2, !tbaa !88 ; 2 uses
  store i16 %.sroa.0.0.copyload.i81.1, ptr %i.arv, align 2, !tbaa !88
  %i.arw = icmp eq i16 %.sroa.0.0.copyload.i.1, 0
  br i1 %i.arw, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !145

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.s, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit.1, %._crit_edge
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %exitcond106.not.1 = icmp eq i64 %indvars.iv.next104.1, 64
  br i1 %exitcond106.not.1, label %.loopexit, label %.lr.ph85.new, !llvm.loop !146
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9Stockfish8Position18set_castling_rightENS_5ColorENS_6SquareE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, %i.d
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 true) ; 4 uses
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = icmp ugt i8 %2, %i.i
  %i.k = select i1 %i.j, i8 5, i8 10
  %i.l = icmp eq i8 %1, 0
  %i.m = select i1 %i.l, i8 3, i8 12
  %i.n = and i8 %i.k, %i.m                        ; 2 uses
  %i.o = zext nneg i8 %i.n to i32                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !76
  %i.t = or i32 %i.s, %i.o
  store i32 %i.t, ptr %i.r, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.h ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  %i.x = or i32 %i.w, %i.o
  store i32 %i.x, ptr %i.v, align 4, !tbaa !75
  %i.y = zext i8 %2 to i64                        ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75
  %i.ab = or i32 %i.aa, %i.o
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ad = zext nneg i8 %i.n to i64                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 %2, ptr %i.ae, align 1, !tbaa !82
  %i.af = and i32 %i.o, 5
  %.not = icmp eq i32 %i.af, 0                    ; 2 uses
  %i.ag = select i1 %.not, i8 2, i8 6
  %i.ah = mul i8 %1, 56                           ; 2 uses
  %i.ai = or disjoint i8 %i.ag, %i.ah
  %i.aj = select i1 %.not, i8 3, i8 5
  %i.ak = or disjoint i8 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.y
  %i.am = zext i8 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.h
  %i.aq = zext i8 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !13
  %i.at = or i64 %i.as, %i.ao
  %i.au = shl nuw i64 1, %i.h
  %i.av = shl nuw i64 1, %i.y
  %i.aw = or i64 %i.au, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.at, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ad
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !13
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK9Stockfish8Position9set_stateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 0, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = load i64, ptr @_ZN9Stockfish7Zobrist7noPawnsE, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !81    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = and i64 %i.p, %i.n
  %i.r = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.q, i1 true) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.r ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = load i64, ptr %i.v, align 16, !tbaa !93
  %i.z = tail call noundef i64 @llvm.pext.i64(i64 %i.t, i64 %i.y)
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ah = or i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91
  %i.al = load i64, ptr %i.u, align 16, !tbaa !93
  %i.am = tail call noundef i64 @llvm.pext.i64(i64 %i.t, i64 %i.al)
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !13
  %i.as = or i64 %i.ar, %i.ag
  %i.at = and i64 %i.as, %i.ap
  %i.au = or i64 %i.at, %i.ai
  %i.av = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.r
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = load i64, ptr %i.k, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !13
  %i.ba = and i64 %i.ax, %i.aw
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.r
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13
  %i.bf = and i64 %i.be, %i.bc
  %i.bg = or i64 %i.bf, %i.ba
  %i.bh = and i64 %i.bg, %i.az
  %i.bi = or i64 %i.au, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.r
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bn = and i64 %i.bm, %i.bk
  %i.bo = or i64 %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.r
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.br = and i64 %i.bq, %i.p
  %i.bs = or i64 %i.bo, %i.br
  %i.bt = xor i8 %i.j, 1
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = and i64 %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !74
  tail call void @_ZNK9Stockfish8Position14set_check_infoEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  %.not18 = icmp eq i64 %i.bz, 0
  %.pre.a = load ptr, ptr %i.a, align 8, !tbaa !70 ; 12 uses
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.a, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre.a, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre.a, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre.a, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.a, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.a, i64 60
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !83  ; 2 uses
  %.not15 = icmp eq i8 %i.cg, 64
  br i1 %.not15, label %bb.i, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.019 = phi i64 [ %i.bz, %.lr.ph ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.019, i1 true) ; 2 uses
  %i.ci = add i64 %.019, -1
  %i.cj = and i64 %i.ci, %.019                    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !22  ; 3 uses
  %i.cm = zext i8 %i.cl to i64                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish7Zobrist3psqE, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ch ; 3 uses
  %1 = load i64, ptr %i.co, align 8, !tbaa !13
  %i.cp = load i64, ptr %i.ca, align 8, !tbaa !72
  %i.cq = xor i64 %i.cp, %1
  store i64 %i.cq, ptr %i.ca, align 8, !tbaa !72
  %i.cr = and i8 %i.cl, 7                         ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 1
  %i.ct = load i64, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  br i1 %i.cs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cu = load i64, ptr %i.ce, align 8, !tbaa !92
  %i.cv = xor i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.ce, align 8, !tbaa !92
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.cw = lshr i8 %i.cl, 3
  %i.cx = zext nneg i8 %i.cw to i64               ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cx ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = xor i64 %i.cz, %i.ct
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !13
  %.not16 = icmp eq i8 %i.cr, 6
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.db = getelementptr inbounds nuw [4 x i8], ptr @_ZN9StockfishL10PieceValueE, i64 %i.cm
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !75
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cx ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !75
  %i.df = add nsw i32 %i.de, %i.dc
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !75
  %i.dg = icmp samesign ult i8 %i.cr, 4
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dh = load i64, ptr %i.co, align 8, !tbaa !13
  %i.di = load i64, ptr %i.cd, align 8, !tbaa !94
  %i.dj = xor i64 %i.di, %i.dh
  store i64 %i.dj, ptr %i.cd, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !147

bb.h:                                             ; preds = %._crit_edge
  %i.dk = and i8 %i.cg, 7
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish7Zobrist9enpassantE, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.pre.a, i64 64 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !72
  %i.dq = xor i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.dr = load i8, ptr %i.i, align 4, !tbaa !81
  %i.ds = icmp eq i8 %i.dr, 1
  br i1 %i.ds, label %bb.j, label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 64
  %.pre21 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dt = load i64, ptr @_ZN9Stockfish7Zobrist4sideE, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.pre.a, i64 64 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !72
  %i.dw = xor i64 %i.dv, %i.dt                    ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge20, %bb.j
  %i.dx = phi i64 [ %.pre21, %._crit_edge20 ], [ %i.dw, %bb.j ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre.a, i64 48
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !76
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr @_ZN9Stockfish7Zobrist8castlingE, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre.a, i64 64
  %i.ee = xor i64 %i.dx, %i.ec
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !72
  %i.ef = tail call noundef i64 @_ZNK9Stockfish8Position20compute_material_keyEv(ptr noundef nonnull align 8 dereferenceable(1048) %0)
  store i64 %i.ef, ptr %.pre.a, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK9Stockfish8Position14set_check_infoEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = and i64 %i.d, %i.b
  %i.f = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 2048), i64 %i.f
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = or i64 %i.r, %i.p
  %i.t = and i64 %i.s, %i.m
  %i.u = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1536), i64 %i.f
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13
  %i.y = or i64 %i.x, %i.p
  %i.z = and i64 %i.y, %i.v
  %i.aa = or i64 %i.z, %i.t
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = and i64 %i.aa, %i.ac                    ; 3 uses
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !13
  %i.af = xor i64 %i.ad, %i.ae
  %.not22.i = icmp eq i64 %i.ad, 0
  br i1 %.not22.i, label %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ah = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %bb.e ] ; 3 uses
  %i.ai = phi i64 [ 0, %.lr.ph.i ], [ %i.aw, %bb.e ] ; 2 uses
  %.023.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.al, %bb.e ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.023.i, i1 true) ; 2 uses
  %i.ak = add i64 %.023.i, -1
  %i.al = and i64 %i.ak, %.023.i                  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  %i.ao = and i64 %i.an, %i.af                    ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ao)
  %or.cond.not.i = icmp eq i64 %i.ap, 1
  br i1 %or.cond.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aq = or i64 %i.ai, %i.ao                     ; 3 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !13
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !13
  %i.as = and i64 %i.ar, %i.ao
  %.not18.i = icmp eq i64 %i.as, 0
  br i1 %.not18.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = shl nuw i64 1, %i.aj
  %i.au = or i64 %i.ah, %i.at                     ; 2 uses
  store i64 %i.au, ptr %i.k, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.d ], [ %i.ah, %bb.c ], [ %i.ah, %bb.b ]
  %i.aw = phi i64 [ %i.aq, %bb.d ], [ %i.aq, %bb.c ], [ %i.ai, %bb.b ]
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit.loopexit, label %bb.b, !llvm.loop !0

_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit.loopexit: ; preds = %bb.e
  %.pre = load i64, ptr %i.ab, align 8, !tbaa !13
  br label %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit

_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit: ; preds = %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit.loopexit, %bb.a
  %i.ax = phi i64 [ %.pre, %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit.loopexit ], [ %i.ac, %bb.a ]
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !13
  %i.az = and i64 %i.ay, %i.ax
  %i.ba = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.az, i1 true) ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 2048), i64 %i.ba
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13
  %i.be = load i64, ptr %i.o, align 8, !tbaa !13  ; 2 uses
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !13
  %i.bg = or i64 %i.bf, %i.be
  %i.bh = and i64 %i.bg, %i.bd
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1536), i64 %i.ba
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !13
  %i.bl = or i64 %i.bk, %i.be
  %i.bm = and i64 %i.bl, %i.bj
  %i.bn = or i64 %i.bm, %i.bh
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bp = and i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = load i64, ptr %i.n, align 8, !tbaa !13
  %i.br = xor i64 %i.bp, %i.bq
  %.not22.i4 = icmp eq i64 %i.bp, 0
  br i1 %.not22.i4, label %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit10, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit
  %i.bs = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.ba
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i5
  %i.bt = phi i64 [ 0, %.lr.ph.i5 ], [ %i.ch, %bb.i ] ; 3 uses
  %i.bu = phi i64 [ 0, %.lr.ph.i5 ], [ %i.ci, %bb.i ] ; 2 uses
  %.023.i6 = phi i64 [ %i.bp, %.lr.ph.i5 ], [ %i.bx, %bb.i ] ; 3 uses
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.023.i6, i1 true) ; 2 uses
  %i.bw = add i64 %.023.i6, -1
  %i.bx = and i64 %i.bw, %.023.i6                 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !13
  %i.ca = and i64 %i.bz, %i.br                    ; 3 uses
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ca)
  %or.cond.not.i7 = icmp eq i64 %i.cb, 1
  br i1 %or.cond.not.i7, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cc = or i64 %i.bu, %i.ca                     ; 3 uses
  store i64 %i.cc, ptr %i.bb, align 8, !tbaa !13
  %i.cd = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ce = and i64 %i.cd, %i.ca
  %.not18.i9 = icmp eq i64 %i.ce, 0
  br i1 %.not18.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = shl nuw i64 1, %i.bv
  %i.cg = or i64 %i.bt, %i.cf                     ; 2 uses
  store i64 %i.cg, ptr %i.j, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ch = phi i64 [ %i.cg, %bb.h ], [ %i.bt, %bb.g ], [ %i.bt, %bb.f ]
  %i.ci = phi i64 [ %i.cc, %bb.h ], [ %i.cc, %bb.g ], [ %i.bu, %bb.f ]
  %.not.i8 = icmp eq i64 %i.bx, 0
  br i1 %.not.i8, label %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit10, label %bb.f, !llvm.loop !0

_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit10: ; preds = %bb.i, %_ZNK9Stockfish8Position22update_slider_blockersENS_5ColorE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !81
  %i.cl = xor i8 %i.ck, 1
  %i.cm = zext i8 %i.cl to i64                    ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !13
end_hunk_0
