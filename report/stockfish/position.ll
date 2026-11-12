Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/position?download=true
inline.NumInlined: 1164
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@llvm.cttz.i64

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish8Position20update_piece_threatsILb0ELb1EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #20 comdat align 2 !guid !355 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = or i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56
  %i.j = or i64 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56
  %i.u = zext i8 %2 to i64                        ; 9 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = load i64, ptr %i.w, align 16, !tbaa !136
  %i.aa = tail call noundef i64 @llvm.pext.i64(i64 %i.b, i64 %i.z)
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !56 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.ag = load i64, ptr %i.v, align 16, !tbaa !136
  %i.ah = tail call noundef i64 @llvm.pext.i64(i64 %i.b, i64 %i.ag)
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !56 ; 4 uses
  %i.al = and i8 %1, 7                            ; 2 uses
  switch i8 %i.al, label %bb.e [
    i8 1, label %bb.b
    i8 3, label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.am = lshr i8 %1, 3
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.u
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.d:                                             ; preds = %bb.a
  %i.ar = or i64 %i.ak, %i.ad
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.e:                                             ; preds = %bb.a
  %i.as = zext nneg i8 %i.al to i64
  %i.at = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.u
  %i.av = load i64, ptr %i.au, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.aq, %bb.b ], [ %i.av, %bb.e ], [ %i.ar, %bb.d ], [ %i.ad, %bb.c ], [ %i.ak, %bb.a ]
  %i.aw = and i64 %.0.i, %i.b                     ; 3 uses
  %i.ax = and i64 %i.ad, %i.g
  %i.ay = and i64 %i.ak, %i.j
  %i.az = or i64 %i.ay, %i.ax                     ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.u
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !56
  %i.bc = and i64 %i.bb, %i.l
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.u
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !56
  %i.bf = and i64 %i.be, %i.t
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.u
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !56
  %i.bi = and i64 %i.bh, %i.p
  %i.bj = or i64 %i.bi, %i.bf
  %i.bk = and i64 %i.bj, %i.r
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.u
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !56
  %i.bn = and i64 %i.bm, %i.n
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
  %i.bo = zext i8 %1 to i32
  %i.bp = shl nuw nsw i32 %i.bo, 20
  %i.bq = zext i8 %2 to i32
  %i.br = or disjoint i32 %i.bp, %i.bq
  %i.bs = load <64 x i8>, ptr %0, align 8, !tbaa !66
  %i.bt = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aw)
  %i.bu = insertelement <16 x i32> poison, i32 %i.br, i64 0
  %i.bv = shufflevector <16 x i32> %i.bu, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !120 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx
  %i.bz = add i64 %i.bx, %i.bt
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !120
  %i.ca = bitcast i64 %i.aw to <64 x i1>
  %i.cb = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ca)
  %i.cc = shufflevector <64 x i8> %i.cb, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = sext <16 x i8> %i.cc to <16 x i32>      ; 2 uses
  %i.ce = bitcast <16 x i32> %i.cd to <64 x i8>
  %i.cf = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.bs, <64 x i8> %i.ce)
  %i.cg = shufflevector <64 x i8> %i.cf, <64 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 65, i32 66, i32 67, i32 4, i32 69, i32 70, i32 71, i32 8, i32 73, i32 74, i32 75, i32 12, i32 77, i32 78, i32 79, i32 16, i32 81, i32 82, i32 83, i32 20, i32 85, i32 86, i32 87, i32 24, i32 89, i32 90, i32 91, i32 28, i32 93, i32 94, i32 95, i32 32, i32 97, i32 98, i32 99, i32 36, i32 101, i32 102, i32 103, i32 40, i32 105, i32 106, i32 107, i32 44, i32 109, i32 110, i32 111, i32 48, i32 113, i32 114, i32 115, i32 52, i32 117, i32 118, i32 119, i32 56, i32 121, i32 122, i32 123, i32 60, i32 125, i32 126, i32 127>
  %i.ch = shl nsw <16 x i32> %i.cd, splat (i32 8)
  %i.ci = bitcast <64 x i8> %i.cg to <16 x i32>
  %i.cj = shl nuw nsw <16 x i32> %i.ci, splat (i32 16)
  %i.ck = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bv, <16 x i32> %i.ch, <16 x i32> %i.cj, i32 254)
  store <16 x i32> %i.ck, ptr %i.by, align 1, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
  %i.cl = or i64 %i.bc, %i.bn
  %i.cm = or i64 %i.cl, %i.bk
  %i.cn = or i64 %i.cm, %i.az                     ; 3 uses
  %.not55 = icmp eq i64 %i.cn, 0
  br i1 %.not55, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = zext i8 %1 to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = zext i8 %2 to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.cp
  %i.ct = load <64 x i8>, ptr %0, align 8, !tbaa !66
  %i.cu = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.cn)
  %i.cv = insertelement <16 x i32> poison, i32 %i.cs, i64 0
  %i.cw = shufflevector <16 x i32> %i.cv, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !120 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cy
  %i.da = add i64 %i.cy, %i.cu
  store i64 %i.da, ptr %i.cx, align 8, !tbaa !120
  %i.db = bitcast i64 %i.cn to <64 x i1>
  %i.dc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.db)
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.de = sext <16 x i8> %i.dd to <16 x i32>      ; 2 uses
  %i.df = bitcast <16 x i32> %i.de to <64 x i8>
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ct, <64 x i8> %i.df)
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 65, i32 66, i32 67, i32 4, i32 69, i32 70, i32 71, i32 8, i32 73, i32 74, i32 75, i32 12, i32 77, i32 78, i32 79, i32 16, i32 81, i32 82, i32 83, i32 20, i32 85, i32 86, i32 87, i32 24, i32 89, i32 90, i32 91, i32 28, i32 93, i32 94, i32 95, i32 32, i32 97, i32 98, i32 99, i32 36, i32 101, i32 102, i32 103, i32 40, i32 105, i32 106, i32 107, i32 44, i32 109, i32 110, i32 111, i32 48, i32 113, i32 114, i32 115, i32 52, i32 117, i32 118, i32 119, i32 56, i32 121, i32 122, i32 123, i32 60, i32 125, i32 126, i32 127>
  %i.di = bitcast <64 x i8> %i.dh to <16 x i32>
  %i.dj = shl nuw nsw <16 x i32> %i.di, splat (i32 20)
  %i.dk = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cw, <16 x i32> %i.de, <16 x i32> %i.dj, i32 254)
  store <16 x i32> %i.dk, ptr %i.cz, align 1, !tbaa !66
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish9RayPassBBE, i64 %i.u
  %invariant.gep62 = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.u
  %.not5664 = icmp eq i64 %i.az, 0
  br i1 %.not5664, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.dl = or i64 %i.ak, %i.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 400 ; 2 uses
  %invariant.op = and i64 %i.dl, %i.b
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.065 = phi i64 [ %i.az, %.lr.ph ], [ %i.dp, %bb.k ] ; 3 uses
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.065, i1 true) ; 5 uses
  %i.do = add i64 %.065, -1
  %i.dp = and i64 %i.do, %.065                    ; 2 uses
  %gep = getelementptr inbounds nuw [512 x i8], ptr %invariant.gep, i64 %i.dn
  %i.dq = load i64, ptr %gep, align 8, !tbaa !56  ; 2 uses
  %gep63 = getelementptr inbounds nuw [512 x i8], ptr %invariant.gep62, i64 %i.dn
  %i.dr = load i64, ptr %gep63, align 8, !tbaa !56
  %i.ds = xor i64 %i.dr, -1
  %.reass.reass = and i64 %i.ds, %invariant.op
  %i.dt = and i64 %.reass.reass, %i.dq            ; 2 uses
  %.not57 = icmp eq i64 %i.dt, 0
  %i.du = and i64 %i.dq, %4
  %.not58 = icmp eq i64 %i.du, %4
  %or.cond = or i1 %.not58, %.not57
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !65
  %i.dx = trunc nuw nsw i64 %i.dn to i32
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.dt, i1 true) ; 3 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !65
  %i.ec = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %i.ed = insertelement <2 x i64> %i.ec, i64 %i.dn, i64 1
  %i.ee = shl nuw <2 x i64> splat (i64 1), %i.ed
  %i.ef = load <2 x i64>, ptr %i.dm, align 8, !tbaa !56
  %i.eg = or <2 x i64> %i.ef, %i.ee
  store <2 x i64> %i.eg, ptr %i.dm, align 8, !tbaa !56
  %i.eh = zext i8 %i.dw to i32
  %i.ei = shl nuw nsw i32 %i.eh, 20
  %i.ej = zext i8 %i.eb to i32
  %i.ek = shl nuw nsw i32 %i.ej, 16
  %i.el = or i32 %i.ei, %i.ek
  %i.em = shl nuw nsw i32 %i.dz, 8
  %5 = or disjoint i32 %i.el, %i.em
  %i.en = or disjoint i32 %5, %i.dx
  %i.eo = or disjoint i32 %i.en, -2147483648
  %i.ep = load i64, ptr %i.cx, align 8, !tbaa !120 ; 2 uses
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.cx, align 8, !tbaa !120
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ep
  store i32 %i.eo, ptr %i.er, align 4, !tbaa !118
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not56 = icmp eq i64 %i.dp, 0
  br i1 %.not56, label %.loopexit, label %bb.i, !llvm.loop !354

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish8Position20update_piece_threatsILb0ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #20 comdat align 2 !guid !356 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = or i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56
  %i.j = or i64 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56
  %i.u = zext i8 %2 to i64                        ; 7 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = load i64, ptr %i.w, align 16, !tbaa !136
  %i.aa = tail call noundef i64 @llvm.pext.i64(i64 %i.b, i64 %i.z)
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.ag = load i64, ptr %i.v, align 16, !tbaa !136
  %i.ah = tail call noundef i64 @llvm.pext.i64(i64 %i.b, i64 %i.ag)
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !56 ; 3 uses
  %i.al = and i8 %1, 7                            ; 2 uses
  switch i8 %i.al, label %bb.e [
    i8 1, label %bb.b
    i8 3, label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
    i8 4, label %bb.c
    i8 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.am = lshr i8 %1, 3
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.u
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.d:                                             ; preds = %bb.a
  %i.ar = or i64 %i.ak, %i.ad
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

bb.e:                                             ; preds = %bb.a
  %i.as = zext nneg i8 %i.al to i64
  %i.at = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.u
  %i.av = load i64, ptr %i.au, align 8, !tbaa !56
  br label %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.aq, %bb.b ], [ %i.av, %bb.e ], [ %i.ar, %bb.d ], [ %i.ad, %bb.c ], [ %i.ak, %bb.a ]
  %i.aw = and i64 %.0.i, %i.b                     ; 3 uses
  %i.ax = and i64 %i.ad, %i.g
  %i.ay = and i64 %i.ak, %i.j
  %i.az = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.u
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !56
  %i.bb = and i64 %i.ba, %i.l
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.u
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !56
  %i.be = and i64 %i.bd, %i.t
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 512), i64 %i.u
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !56
  %i.bh = and i64 %i.bg, %i.p
  %i.bi = or i64 %i.bh, %i.be
  %i.bj = and i64 %i.bi, %i.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.u
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !56
  %i.bm = and i64 %i.bl, %i.n
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
  %i.bn = zext i8 %1 to i32
  %i.bo = shl nuw nsw i32 %i.bn, 20
  %i.bp = zext i8 %2 to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = load <64 x i8>, ptr %0, align 8, !tbaa !66
  %i.bs = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.aw)
  %i.bt = insertelement <16 x i32> poison, i32 %i.bq, i64 0
  %i.bu = shufflevector <16 x i32> %i.bt, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !120 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bw
  %i.by = add i64 %i.bw, %i.bs
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !120
  %i.bz = bitcast i64 %i.aw to <64 x i1>
  %i.ca = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.bz)
  %i.cb = shufflevector <64 x i8> %i.ca, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = sext <16 x i8> %i.cb to <16 x i32>      ; 2 uses
  %i.cd = bitcast <16 x i32> %i.cc to <64 x i8>
  %i.ce = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.br, <64 x i8> %i.cd)
  %i.cf = shufflevector <64 x i8> %i.ce, <64 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 65, i32 66, i32 67, i32 4, i32 69, i32 70, i32 71, i32 8, i32 73, i32 74, i32 75, i32 12, i32 77, i32 78, i32 79, i32 16, i32 81, i32 82, i32 83, i32 20, i32 85, i32 86, i32 87, i32 24, i32 89, i32 90, i32 91, i32 28, i32 93, i32 94, i32 95, i32 32, i32 97, i32 98, i32 99, i32 36, i32 101, i32 102, i32 103, i32 40, i32 105, i32 106, i32 107, i32 44, i32 109, i32 110, i32 111, i32 48, i32 113, i32 114, i32 115, i32 52, i32 117, i32 118, i32 119, i32 56, i32 121, i32 122, i32 123, i32 60, i32 125, i32 126, i32 127>
  %i.cg = shl nsw <16 x i32> %i.cc, splat (i32 8)
  %i.ch = bitcast <64 x i8> %i.cf to <16 x i32>
  %i.ci = shl nuw nsw <16 x i32> %i.ch, splat (i32 16)
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.bu, <16 x i32> %i.cg, <16 x i32> %i.ci, i32 254)
  store <16 x i32> %i.cj, ptr %i.bx, align 1, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN9Stockfish10attacks_bbENS_5PieceENS_6SquareEm.exit
  %i.ck = or i64 %i.ay, %i.ax
  %i.cl = or i64 %i.ck, %i.bb
  %i.cm = or i64 %i.cl, %i.bm
  %i.cn = or i64 %i.cm, %i.bj                     ; 3 uses
  %.not36 = icmp eq i64 %i.cn, 0
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.co = zext i8 %1 to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = zext i8 %2 to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.cp
  %i.ct = load <64 x i8>, ptr %0, align 8, !tbaa !66
  %i.cu = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.cn)
  %i.cv = insertelement <16 x i32> poison, i32 %i.cs, i64 0
  %i.cw = shufflevector <16 x i32> %i.cv, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !120 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cy
  %i.da = add i64 %i.cy, %i.cu
  store i64 %i.da, ptr %i.cx, align 8, !tbaa !120
  %i.db = bitcast i64 %i.cn to <64 x i1>
  %i.dc = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.db)
  %i.dd = shufflevector <64 x i8> %i.dc, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.de = sext <16 x i8> %i.dd to <16 x i32>      ; 2 uses
  %i.df = bitcast <16 x i32> %i.de to <64 x i8>
  %i.dg = tail call <64 x i8> @llvm.x86.avx512.permvar.qi.512(<64 x i8> %i.ct, <64 x i8> %i.df)
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0, i8 poison, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 65, i32 66, i32 67, i32 4, i32 69, i32 70, i32 71, i32 8, i32 73, i32 74, i32 75, i32 12, i32 77, i32 78, i32 79, i32 16, i32 81, i32 82, i32 83, i32 20, i32 85, i32 86, i32 87, i32 24, i32 89, i32 90, i32 91, i32 28, i32 93, i32 94, i32 95, i32 32, i32 97, i32 98, i32 99, i32 36, i32 101, i32 102, i32 103, i32 40, i32 105, i32 106, i32 107, i32 44, i32 109, i32 110, i32 111, i32 48, i32 113, i32 114, i32 115, i32 52, i32 117, i32 118, i32 119, i32 56, i32 121, i32 122, i32 123, i32 60, i32 125, i32 126, i32 127>
  %i.di = bitcast <64 x i8> %i.dh to <16 x i32>
  %i.dj = shl nuw nsw <16 x i32> %i.di, splat (i32 20)
  %i.dk = tail call <16 x i32> @llvm.x86.avx512.pternlog.d.512(<16 x i32> %i.cw, <16 x i32> %i.de, <16 x i32> %i.dj, i32 254)
  store <16 x i32> %i.dk, ptr %i.cz, align 1, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish8Position20update_piece_threatsILb1ELb0EEEvNS_5PieceENS_6SquareEPNS_12DirtyThreatsEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #20 comdat align 2 !guid !357 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = or i64 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56
  %i.j = or i64 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !56
  %i.u = zext i8 %2 to i64                        ; 9 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.u ; 4 uses
end_hunk_0
