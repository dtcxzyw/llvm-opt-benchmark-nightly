inline.NumInlined: 579
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9Stockfish8generateILNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES3_:bb.a
_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.cl = phi i64 [ %i.bi, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %.3.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ck, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.co = and i64 %i.cn, %i.cl                    ; 2 uses
  %.not9.i39.i = icmp eq i64 %i.co, 0
  br i1 %.not9.i39.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i40.i
  %.011.i41.i = phi ptr [ %i.du, %.lr.ph.i40.i ], [ %.0.lcssa.i.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i42.i = phi i64 [ %i.cs, %.lr.ph.i40.i ], [ %i.co, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i42.i, i1 true) ; 2 uses
  %i.cq = trunc nuw nsw i64 %i.cp to i16
  %i.cr = add i64 %.0810.i42.i, -1
  %i.cs = and i64 %i.cr, %.0810.i42.i             ; 2 uses
  %i.ct = load i64, ptr %i.f, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.cp ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = load i64, ptr %i.cu, align 16, !tbaa !42
  %i.cy = tail call noundef i64 @llvm.pext.i64(i64 %i.ct, i64 %i.cx)
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !26
  %i.dc = and i64 %i.db, %i.h                     ; 2 uses
  %i.dd = shl nuw nsw i16 %i.cq, 6
  %i.de = insertelement <32 x i16> poison, i16 %i.dd, i64 0
  %i.df = shufflevector <32 x i16> %i.de, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.dg = trunc i64 %i.dc to i32                  ; 2 uses
  %i.dh = or disjoint <32 x i16> %i.df, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.di = bitcast i32 %i.dg to <32 x i1>
  %i.dj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.dh, <32 x i16> zeroinitializer, <32 x i1> %i.di)
  store <32 x i16> %i.dj, ptr %.011.i41.i, align 1, !tbaa !33
  %i.dk = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dg)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %.011.i41.i, i64 %i.dl ; 2 uses
  %i.dn = lshr i64 %i.dc, 32
  %i.do = trunc nuw i64 %i.dn to i32              ; 2 uses
  %i.dp = or disjoint <32 x i16> %i.df, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.dq = bitcast i32 %i.do to <32 x i1>
  %i.dr = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.dp, <32 x i16> zeroinitializer, <32 x i1> %i.dq)
  store <32 x i16> %i.dr, ptr %i.dm, align 1, !tbaa !33
  %i.ds = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.do)
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dt ; 2 uses
  %.not.i43.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i43.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i40.i, !llvm.loop !43

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i40.i
  %.pre71.i = load i64, ptr %i.l, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.dv = phi i64 [ %i.cl, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre71.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i44.i = phi ptr [ %.0.lcssa.i.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.du, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.dy = and i64 %i.dx, %i.dv                    ; 2 uses
  %.not9.i45.i = icmp eq i64 %i.dy, 0
  br i1 %.not9.i45.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i46.i
  %.011.i47.i = phi ptr [ %i.ff, %.lr.ph.i46.i ], [ %.0.lcssa.i44.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i48.i = phi i64 [ %i.ec, %.lr.ph.i46.i ], [ %i.dy, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.dz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i48.i, i1 true) ; 2 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i16
  %i.eb = add i64 %.0810.i48.i, -1
  %i.ec = and i64 %i.eb, %.0810.i48.i             ; 2 uses
  %i.ed = load i64, ptr %i.f, align 8, !tbaa !26
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.dz ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !39
  %i.ei = load i64, ptr %i.ef, align 16, !tbaa !42
  %i.ej = tail call noundef i64 @llvm.pext.i64(i64 %i.ed, i64 %i.ei)
  %i.ek = and i64 %i.ej, 4294967295
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !26
  %i.en = and i64 %i.em, %i.h                     ; 2 uses
  %i.eo = shl nuw nsw i16 %i.ea, 6
  %i.ep = insertelement <32 x i16> poison, i16 %i.eo, i64 0
  %i.eq = shufflevector <32 x i16> %i.ep, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.er = trunc i64 %i.en to i32                  ; 2 uses
  %i.es = or disjoint <32 x i16> %i.eq, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.et = bitcast i32 %i.er to <32 x i1>
  %i.eu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.es, <32 x i16> zeroinitializer, <32 x i1> %i.et)
  store <32 x i16> %i.eu, ptr %.011.i47.i, align 1, !tbaa !33
  %i.ev = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.er)
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %.011.i47.i, i64 %i.ew ; 2 uses
  %i.ey = lshr i64 %i.en, 32
  %i.ez = trunc nuw i64 %i.ey to i32              ; 2 uses
  %i.fa = or disjoint <32 x i16> %i.eq, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.fb = bitcast i32 %i.ez to <32 x i1>
  %i.fc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.fa, <32 x i16> zeroinitializer, <32 x i1> %i.fb)
  store <32 x i16> %i.fc, ptr %i.ex, align 1, !tbaa !33
  %i.fd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ez)
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.fe ; 2 uses
  %.not.i49.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i49.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i46.i, !llvm.loop !44

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i46.i
  %.pre72.i = load i64, ptr %i.l, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.fg = phi i64 [ %i.dv, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre72.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i50.i = phi ptr [ %.0.lcssa.i44.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ff, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !26
  %i.fj = and i64 %i.fi, %i.fg                    ; 2 uses
  %.not9.i51.i = icmp eq i64 %i.fj, 0
  br i1 %.not9.i51.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i

.lr.ph.i52.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i52.i
  %.011.i53.i = phi ptr [ %i.gy, %.lr.ph.i52.i ], [ %.0.lcssa.i50.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i54.i = phi i64 [ %i.fn, %.lr.ph.i52.i ], [ %i.fj, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.fk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i54.i, i1 true) ; 2 uses
  %i.fl = trunc nuw nsw i64 %i.fk to i16
  %i.fm = add i64 %.0810.i54.i, -1
  %i.fn = and i64 %i.fm, %.0810.i54.i             ; 2 uses
  %i.fo = load i64, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.fp = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.fk ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !39
  %i.fs = load i64, ptr %i.fp, align 16, !tbaa !42
  %i.ft = tail call noundef i64 @llvm.pext.i64(i64 %i.fo, i64 %i.fs)
  %i.fu = and i64 %i.ft, 4294967295
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !26
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !39
  %i.ga = load i64, ptr %i.fx, align 16, !tbaa !42
  %i.gb = tail call noundef i64 @llvm.pext.i64(i64 %i.fo, i64 %i.ga)
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !26
  %i.gf = or i64 %i.ge, %i.fw
  %i.gg = and i64 %i.gf, %i.h                     ; 2 uses
  %i.gh = shl nuw nsw i16 %i.fl, 6
  %i.gi = insertelement <32 x i16> poison, i16 %i.gh, i64 0
  %i.gj = shufflevector <32 x i16> %i.gi, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.gk = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gl = or disjoint <32 x i16> %i.gj, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gm = bitcast i32 %i.gk to <32 x i1>
  %i.gn = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gl, <32 x i16> zeroinitializer, <32 x i1> %i.gm)
  store <32 x i16> %i.gn, ptr %.011.i53.i, align 1, !tbaa !33
  %i.go = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gk)
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %.011.i53.i, i64 %i.gp ; 2 uses
  %i.gr = lshr i64 %i.gg, 32
  %i.gs = trunc nuw i64 %i.gr to i32              ; 2 uses
  %i.gt = or disjoint <32 x i16> %i.gj, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.gu = bitcast i32 %i.gs to <32 x i1>
  %i.gv = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gt, <32 x i16> zeroinitializer, <32 x i1> %i.gu)
  store <32 x i16> %i.gv, ptr %i.gq, align 1, !tbaa !33
  %i.gw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gs)
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gq, i64 %i.gx ; 2 uses
  %.not.i55.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i55.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i, !llvm.loop !45

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i52.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i56.i = phi ptr [ %.0.lcssa.i50.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.gy, %.lr.ph.i52.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.o
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !26
  %i.hb = and i64 %i.ha, %i.h                     ; 2 uses
  %i.hc = shl nuw nsw i16 %i.p, 6                 ; 2 uses
  %i.hd = insertelement <32 x i16> poison, i16 %i.hc, i64 0
  %i.he = shufflevector <32 x i16> %i.hd, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.hf = trunc i64 %i.hb to i32                  ; 2 uses
  %i.hg = or disjoint <32 x i16> %i.he, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.hh = bitcast i32 %i.hf to <32 x i1>
  %i.hi = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.hg, <32 x i16> zeroinitializer, <32 x i1> %i.hh)
  store <32 x i16> %i.hi, ptr %.0.lcssa.i56.i, align 1, !tbaa !33
  %i.hj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hf)
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i56.i, i64 %i.hk ; 2 uses
  %i.hm = lshr i64 %i.hb, 32
  %i.hn = trunc nuw i64 %i.hm to i32              ; 2 uses
  %i.ho = or disjoint <32 x i16> %i.he, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.hp = bitcast i32 %i.hn to <32 x i1>
  %i.hq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ho, <32 x i16> zeroinitializer, <32 x i1> %i.hp)
  store <32 x i16> %i.hq, ptr %i.hl, align 1, !tbaa !33
  %i.hr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hn)
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.hs ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !34
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !55 ; 3 uses
  %i.hy = and i32 %i.hx, 3
  %.not60.i = icmp eq i32 %i.hy, 0
  br i1 %.not60.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.hz = load i64, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ia = or disjoint i16 %i.hc, -16384
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !26
  %i.id = and i64 %i.ic, %i.hz
  %i.ie = icmp eq i64 %i.id, 0
  %i.if = trunc nuw i32 %i.hx to i1
  %or.cond.i = and i1 %i.ie, %i.if
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 496
  %2 = load i64, ptr %i.ig, align 8, !tbaa !26
  %3 = and i64 %2, %i.hz
  %4 = icmp eq i64 %3, 0
  %5 = and i32 %i.hx, 2
  %6 = icmp ne i32 %5, 0
  %or.cond.1.i = and i1 %6, %4
  br i1 %or.cond.1.i, label %bb.e, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i64 [ 465, %bb.c ], [ 466, %bb.d ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %7 = load i8, ptr %i.ih, align 1, !tbaa !56
  %8 = zext i8 %7 to i16
  %9 = add nuw nsw i16 %i.ia, %8
  %10 = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  store i16 %9, ptr %i.ht, align 2, !tbaa !27
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.f:                                             ; preds = %bb.a
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !26 ; 2 uses
  %i.ik = and i64 %i.e, %i.ij
  %i.il = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ik, i1 true) ; 2 uses
  %i.im = trunc nuw nsw i64 %i.il to i16
  %i.in = and i64 %i.j, %i.ij                     ; 2 uses
  %i.io = and i64 %i.in, 65280                    ; 2 uses
  %i.ip = lshr i64 %i.in, 8
  %i.iq = and i64 %i.k, %i.ip                     ; 3 uses
  %i.ir = trunc i64 %i.iq to i32                  ; 2 uses
  %i.is = bitcast i32 %i.ir to <32 x i1>
  %i.it = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 512, i16 577, i16 642, i16 707, i16 772, i16 837, i16 902, i16 967, i16 1032, i16 1097, i16 1162, i16 1227, i16 1292, i16 1357, i16 1422, i16 1487, i16 1552, i16 1617, i16 1682, i16 1747, i16 1812, i16 1877, i16 1942, i16 2007, i16 2072, i16 2137, i16 2202, i16 2267, i16 2332, i16 2397, i16 2462, i16 2527>, <32 x i16> zeroinitializer, <32 x i1> %i.is)
  store <32 x i16> %i.it, ptr %1, align 1, !tbaa !33
  %i.iu = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ir)
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.iv ; 2 uses
  %i.ix = lshr i64 %i.iq, 32
  %i.iy = trunc nuw nsw i64 %i.ix to i32          ; 2 uses
  %i.iz = bitcast i32 %i.iy to <32 x i1>
  %i.ja = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2592, i16 2657, i16 2722, i16 2787, i16 2852, i16 2917, i16 2982, i16 3047, i16 3112, i16 3177, i16 3242, i16 3307, i16 3372, i16 3437, i16 3502, i16 3567, i16 3632, i16 3697, i16 3762, i16 3827, i16 3892, i16 3957, i16 4022, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.iz)
  store <32 x i16> %i.ja, ptr %i.iw, align 1, !tbaa !33
  %i.jb = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.iy)
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %i.jc ; 2 uses
  %i.je = lshr i64 %i.iq, 40
  %i.jf = lshr i64 %i.h, 32
  %i.jg = and i64 %i.jf, 255
  %i.jh = and i64 %i.jg, %i.je
  %i.ji = trunc nuw nsw i64 %i.jh to i32          ; 2 uses
  %i.jj = bitcast i32 %i.ji to <32 x i1>
  %i.jk = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 3104, i16 3169, i16 3234, i16 3299, i16 3364, i16 3429, i16 3494, i16 3559, i16 3624, i16 3689, i16 3754, i16 3819, i16 3884, i16 3949, i16 4014, i16 4079, i16 4080, i16 4081, i16 4082, i16 4083, i16 4084, i16 4085, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.jj)
  store <32 x i16> %i.jk, ptr %i.jd, align 1, !tbaa !33
  %i.jl = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ji)
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jm ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i5, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.preheader34.i.i6

.preheader34.i.i6:                                ; preds = %bb.f
  %i.jo = lshr exact i64 %i.io, 8
  %i.jp = and i64 %i.jo, %i.h                     ; 2 uses
  %.not2540.i.i7 = icmp eq i64 %i.jp, 0
  br i1 %.not2540.i.i7, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph43.i.i8

.lr.ph43.i.i8:                                    ; preds = %.preheader34.i.i6, %.lr.ph43.i.i8
  %.242.i.i9 = phi ptr [ %i.kc, %.lr.ph43.i.i8 ], [ %i.jn, %.preheader34.i.i6 ] ; 4 uses
  %.03141.i.i10 = phi i64 [ %i.jt, %.lr.ph43.i.i8 ], [ %i.jp, %.preheader34.i.i6 ] ; 3 uses
  %i.jq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.03141.i.i10, i1 true)
  %i.jr = trunc nuw nsw i64 %i.jq to i16          ; 2 uses
  %i.js = add nsw i64 %.03141.i.i10, -1
  %i.jt = and i64 %i.js, %.03141.i.i10            ; 2 uses
  %i.ju = shl nuw nsw i16 %i.jr, 6
  %i.jv = add nuw nsw i16 %i.ju, 512
  %i.jw = or disjoint i16 %i.jv, %i.jr            ; 3 uses
  %i.jx = or disjoint i16 %i.jw, 24576
  %i.jy = getelementptr inbounds nuw i8, ptr %.242.i.i9, i64 2
  store i16 %i.jx, ptr %.242.i.i9, align 2, !tbaa !27
  %i.jz = add nuw nsw i16 %i.jw, 20480
  %i.ka = getelementptr inbounds nuw i8, ptr %.242.i.i9, i64 4
  store i16 %i.jz, ptr %i.jy, align 2, !tbaa !27
  %i.kb = or disjoint i16 %i.jw, 16384
  %i.kc = getelementptr inbounds nuw i8, ptr %.242.i.i9, i64 6 ; 2 uses
  store i16 %i.kb, ptr %i.ka, align 2, !tbaa !27
  %.not25.i.i11 = icmp eq i64 %i.jt, 0
  br i1 %.not25.i.i11, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph43.i.i8, !llvm.loop !57

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph43.i.i8, %.preheader34.i.i6, %bb.f
  %.3.i.i12 = phi ptr [ %i.jn, %bb.f ], [ %i.jn, %.preheader34.i.i6 ], [ %i.kc, %.lr.ph43.i.i8 ] ; 2 uses
  %i.kd = load i64, ptr %i.ii, align 8, !tbaa !26 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !26
  %i.kg = and i64 %i.kf, %i.kd                    ; 2 uses
  %.not9.i.i13 = icmp eq i64 %i.kg, 0
  br i1 %.not9.i.i13, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i.i14
  %.011.i.i15 = phi ptr [ %i.lf, %.lr.ph.i.i14 ], [ %.3.i.i12, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i.i16 = phi i64 [ %i.kk, %.lr.ph.i.i14 ], [ %i.kg, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.kh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i.i16, i1 true) ; 2 uses
  %i.ki = trunc nuw nsw i64 %i.kh to i16
  %i.kj = add i64 %.0810.i.i16, -1
  %i.kk = and i64 %i.kj, %.0810.i.i16             ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 1024), i64 %i.kh
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !26
  %i.kn = and i64 %i.km, %i.h                     ; 2 uses
  %i.ko = shl nuw nsw i16 %i.ki, 6
  %i.kp = insertelement <32 x i16> poison, i16 %i.ko, i64 0
  %i.kq = shufflevector <32 x i16> %i.kp, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.kr = trunc i64 %i.kn to i32                  ; 2 uses
  %i.ks = or disjoint <32 x i16> %i.kq, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.kt = bitcast i32 %i.kr to <32 x i1>
  %i.ku = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ks, <32 x i16> zeroinitializer, <32 x i1> %i.kt)
  store <32 x i16> %i.ku, ptr %.011.i.i15, align 1, !tbaa !33
  %i.kv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kr)
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.011.i.i15, i64 %i.kw ; 2 uses
  %i.ky = lshr i64 %i.kn, 32
  %i.kz = trunc nuw i64 %i.ky to i32              ; 2 uses
  %i.la = or disjoint <32 x i16> %i.kq, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.lb = bitcast i32 %i.kz to <32 x i1>
  %i.lc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.la, <32 x i16> zeroinitializer, <32 x i1> %i.lb)
  store <32 x i16> %i.lc, ptr %i.kx, align 1, !tbaa !33
  %i.ld = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kz)
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.le ; 2 uses
  %.not.i38.i17 = icmp eq i64 %i.kk, 0
  br i1 %.not.i38.i17, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i.i14, !llvm.loop !50

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i.i14
  %.pre.i18 = load i64, ptr %i.ii, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.lg = phi i64 [ %i.kd, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i18, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i.i19 = phi ptr [ %.3.i.i12, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.lf, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !26
  %i.lj = and i64 %i.li, %i.lg                    ; 2 uses
  %.not9.i39.i20 = icmp eq i64 %i.lj, 0
  br i1 %.not9.i39.i20, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i40.i21

.lr.ph.i40.i21:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i40.i21
  %.011.i41.i22 = phi ptr [ %i.mp, %.lr.ph.i40.i21 ], [ %.0.lcssa.i.i19, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i42.i23 = phi i64 [ %i.ln, %.lr.ph.i40.i21 ], [ %i.lj, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.lk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i42.i23, i1 true) ; 2 uses
  %i.ll = trunc nuw nsw i64 %i.lk to i16
  %i.lm = add i64 %.0810.i42.i23, -1
  %i.ln = and i64 %i.lm, %.0810.i42.i23           ; 2 uses
  %i.lo = load i64, ptr %i.f, align 8, !tbaa !26
  %i.lp = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.lk ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !39
  %i.ls = load i64, ptr %i.lp, align 16, !tbaa !42
  %i.lt = tail call noundef i64 @llvm.pext.i64(i64 %i.lo, i64 %i.ls)
  %i.lu = and i64 %i.lt, 4294967295
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.lu
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !26
  %i.lx = and i64 %i.lw, %i.h                     ; 2 uses
  %i.ly = shl nuw nsw i16 %i.ll, 6
  %i.lz = insertelement <32 x i16> poison, i16 %i.ly, i64 0
  %i.ma = shufflevector <32 x i16> %i.lz, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.mb = trunc i64 %i.lx to i32                  ; 2 uses
  %i.mc = or disjoint <32 x i16> %i.ma, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.md = bitcast i32 %i.mb to <32 x i1>
  %i.me = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.mc, <32 x i16> zeroinitializer, <32 x i1> %i.md)
  store <32 x i16> %i.me, ptr %.011.i41.i22, align 1, !tbaa !33
  %i.mf = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.mb)
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %.011.i41.i22, i64 %i.mg ; 2 uses
  %i.mi = lshr i64 %i.lx, 32
  %i.mj = trunc nuw i64 %i.mi to i32              ; 2 uses
  %i.mk = or disjoint <32 x i16> %i.ma, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ml = bitcast i32 %i.mj to <32 x i1>
  %i.mm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.mk, <32 x i16> zeroinitializer, <32 x i1> %i.ml)
  store <32 x i16> %i.mm, ptr %i.mh, align 1, !tbaa !33
  %i.mn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.mj)
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %i.mo ; 2 uses
  %.not.i43.i24 = icmp eq i64 %i.ln, 0
  br i1 %.not.i43.i24, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i40.i21, !llvm.loop !51

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i40.i21
  %.pre71.i25 = load i64, ptr %i.ii, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.mq = phi i64 [ %i.lg, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre71.i25, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i44.i26 = phi ptr [ %.0.lcssa.i.i19, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.mp, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !26
  %i.mt = and i64 %i.ms, %i.mq                    ; 2 uses
  %.not9.i45.i27 = icmp eq i64 %i.mt, 0
  br i1 %.not9.i45.i27, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i46.i28

.lr.ph.i46.i28:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i46.i28
  %.011.i47.i29 = phi ptr [ %i.oa, %.lr.ph.i46.i28 ], [ %.0.lcssa.i44.i26, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i48.i30 = phi i64 [ %i.mx, %.lr.ph.i46.i28 ], [ %i.mt, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.mu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i48.i30, i1 true) ; 2 uses
  %i.mv = trunc nuw nsw i64 %i.mu to i16
  %i.mw = add i64 %.0810.i48.i30, -1
  %i.mx = and i64 %i.mw, %.0810.i48.i30           ; 2 uses
  %i.my = load i64, ptr %i.f, align 8, !tbaa !26
  %i.mz = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.mu ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !39
  %i.nd = load i64, ptr %i.na, align 16, !tbaa !42
  %i.ne = tail call noundef i64 @llvm.pext.i64(i64 %i.my, i64 %i.nd)
  %i.nf = and i64 %i.ne, 4294967295
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.nf
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !26
  %i.ni = and i64 %i.nh, %i.h                     ; 2 uses
  %i.nj = shl nuw nsw i16 %i.mv, 6
  %i.nk = insertelement <32 x i16> poison, i16 %i.nj, i64 0
  %i.nl = shufflevector <32 x i16> %i.nk, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.nm = trunc i64 %i.ni to i32                  ; 2 uses
  %i.nn = or disjoint <32 x i16> %i.nl, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.no = bitcast i32 %i.nm to <32 x i1>
  %i.np = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.nn, <32 x i16> zeroinitializer, <32 x i1> %i.no)
  store <32 x i16> %i.np, ptr %.011.i47.i29, align 1, !tbaa !33
  %i.nq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.nm)
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %.011.i47.i29, i64 %i.nr ; 2 uses
  %i.nt = lshr i64 %i.ni, 32
  %i.nu = trunc nuw i64 %i.nt to i32              ; 2 uses
  %i.nv = or disjoint <32 x i16> %i.nl, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.nw = bitcast i32 %i.nu to <32 x i1>
  %i.nx = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.nv, <32 x i16> zeroinitializer, <32 x i1> %i.nw)
  store <32 x i16> %i.nx, ptr %i.ns, align 1, !tbaa !33
  %i.ny = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.nu)
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.nz ; 2 uses
  %.not.i49.i31 = icmp eq i64 %i.mx, 0
  br i1 %.not.i49.i31, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i46.i28, !llvm.loop !52

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i46.i28
  %.pre72.i32 = load i64, ptr %i.ii, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ob = phi i64 [ %i.mq, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre72.i32, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i50.i33 = phi ptr [ %.0.lcssa.i44.i26, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.oa, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !26
  %i.oe = and i64 %i.od, %i.ob                    ; 2 uses
  %.not9.i51.i34 = icmp eq i64 %i.oe, 0
  br i1 %.not9.i51.i34, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i35

.lr.ph.i52.i35:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i52.i35
  %.011.i53.i36 = phi ptr [ %i.pt, %.lr.ph.i52.i35 ], [ %.0.lcssa.i50.i33, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i54.i37 = phi i64 [ %i.oi, %.lr.ph.i52.i35 ], [ %i.oe, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.of = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i54.i37, i1 true) ; 2 uses
  %i.og = trunc nuw nsw i64 %i.of to i16
  %i.oh = add i64 %.0810.i54.i37, -1
  %i.oi = and i64 %i.oh, %.0810.i54.i37           ; 2 uses
  %i.oj = load i64, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.of ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !39
  %i.on = load i64, ptr %i.ok, align 16, !tbaa !42
  %i.oo = tail call noundef i64 @llvm.pext.i64(i64 %i.oj, i64 %i.on)
  %i.op = and i64 %i.oo, 4294967295
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.op
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !26
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !39
  %i.ov = load i64, ptr %i.os, align 16, !tbaa !42
  %i.ow = tail call noundef i64 @llvm.pext.i64(i64 %i.oj, i64 %i.ov)
  %i.ox = and i64 %i.ow, 4294967295
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !26
  %i.pa = or i64 %i.oz, %i.or
  %i.pb = and i64 %i.pa, %i.h                     ; 2 uses
  %i.pc = shl nuw nsw i16 %i.og, 6
  %i.pd = insertelement <32 x i16> poison, i16 %i.pc, i64 0
  %i.pe = shufflevector <32 x i16> %i.pd, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.pf = trunc i64 %i.pb to i32                  ; 2 uses
  %i.pg = or disjoint <32 x i16> %i.pe, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.ph = bitcast i32 %i.pf to <32 x i1>
  %i.pi = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.pg, <32 x i16> zeroinitializer, <32 x i1> %i.ph)
  store <32 x i16> %i.pi, ptr %.011.i53.i36, align 1, !tbaa !33
  %i.pj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.pf)
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %.011.i53.i36, i64 %i.pk ; 2 uses
  %i.pm = lshr i64 %i.pb, 32
  %i.pn = trunc nuw i64 %i.pm to i32              ; 2 uses
  %i.po = or disjoint <32 x i16> %i.pe, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.pp = bitcast i32 %i.pn to <32 x i1>
  %i.pq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.po, <32 x i16> zeroinitializer, <32 x i1> %i.pp)
  store <32 x i16> %i.pq, ptr %i.pl, align 1, !tbaa !33
  %i.pr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.pn)
  %i.ps = zext nneg i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.pl, i64 %i.ps ; 2 uses
  %.not.i55.i38 = icmp eq i64 %i.oi, 0
  br i1 %.not.i55.i38, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i52.i35, !llvm.loop !53

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i52.i35, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i56.i39 = phi ptr [ %.0.lcssa.i50.i33, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.pt, %.lr.ph.i52.i35 ] ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.il
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !26
  %i.pw = and i64 %i.pv, %i.h                     ; 2 uses
  %i.px = shl nuw nsw i16 %i.im, 6                ; 2 uses
  %i.py = insertelement <32 x i16> poison, i16 %i.px, i64 0
  %i.pz = shufflevector <32 x i16> %i.py, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.qa = trunc i64 %i.pw to i32                  ; 2 uses
  %i.qb = or disjoint <32 x i16> %i.pz, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.qc = bitcast i32 %i.qa to <32 x i1>
  %i.qd = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qb, <32 x i16> zeroinitializer, <32 x i1> %i.qc)
  store <32 x i16> %i.qd, ptr %.0.lcssa.i56.i39, align 1, !tbaa !33
  %i.qe = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qa)
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i56.i39, i64 %i.qf ; 2 uses
  %i.qh = lshr i64 %i.pw, 32
  %i.qi = trunc nuw i64 %i.qh to i32              ; 2 uses
  %i.qj = or disjoint <32 x i16> %i.pz, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.qk = bitcast i32 %i.qi to <32 x i1>
  %i.ql = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.qj, <32 x i16> zeroinitializer, <32 x i1> %i.qk)
  store <32 x i16> %i.ql, ptr %i.qg, align 1, !tbaa !33
  %i.qm = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.qi)
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.qg, i64 %i.qn ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !34
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 48
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !55 ; 3 uses
  %i.qt = and i32 %i.qs, 12
  %.not60.i40 = icmp eq i32 %i.qt, 0
  br i1 %.not60.i40, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.qu = load i64, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.qv = or disjoint i16 %i.px, -16384           ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !26
  %i.qy = and i64 %i.qx, %i.qu
  %i.qz = icmp eq i64 %i.qy, 0
  %i.ra = and i32 %i.qs, 4
  %i.rb = icmp ne i32 %i.ra, 0
  %or.cond.i41 = and i1 %i.rb, %i.qz
  br i1 %or.cond.i41, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.rd = load i8, ptr %i.rc, align 4, !tbaa !56
  %i.re = zext i8 %i.rd to i16
  %i.rf = add nuw nsw i16 %i.qv, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qo, i64 2
  store i16 %i.rf, ptr %i.qo, align 2, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i42 = phi ptr [ %i.qo, %bb.g ], [ %i.rg, %bb.h ] ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !26
  %i.rj = and i64 %i.ri, %i.qu
  %i.rk = icmp eq i64 %i.rj, 0
  %i.rl = and i32 %i.qs, 8
  %i.rm = icmp ne i32 %i.rl, 0
  %or.cond.1.i43 = and i1 %i.rm, %i.rk
  br i1 %or.cond.1.i43, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split: ; preds = %bb.i
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ro = load i8, ptr %i.rn, align 8, !tbaa !56
  %i.rp = zext i8 %i.ro to i16
  %i.rq = add nuw nsw i16 %i.qv, %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %.1.i42, i64 2
  store i16 %i.rq, ptr %.1.i42, align 2, !tbaa !27
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit: ; preds = %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, %bb.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %bb.e, %bb.d, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %11 = phi ptr [ %10, %bb.e ], [ %i.ht, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ht, %bb.d ], [ %i.qo, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.1.i42, %bb.i ], [ %i.rr, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE1EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split ]
  ret ptr %11
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !11
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58   ; 11 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.i)
  %i.k = icmp samesign ugt i64 %i.j, 1            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.n = and i64 %i.e, %i.m
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.n, i1 true) ; 4 uses
  br i1 %i.k, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.i, i1 true)
  %i.q = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish9BetweenBBE, i64 %i.o
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !26
  %i.v = xor i64 %i.u, -1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = and i64 %i.x, %i.m                       ; 4 uses
  %i.z = and i64 %i.y, 71776119061217280          ; 4 uses
  %i.aa = and i64 %i.y, -71776119061217281        ; 2 uses
  %i.ab = shl i64 %i.aa, 8
  %i.ac = and i64 %i.ab, %i.v                     ; 2 uses
  %i.ad = shl nuw i64 %i.ac, 8
  %i.ae = and i64 %i.ac, %i.s                     ; 2 uses
  %i.af = and i64 %i.s, %i.v
  %i.ag = and i64 %i.af, 4278190080
  %i.ah = and i64 %i.ag, %i.ad
  %i.ai = trunc i64 %i.ae to i32                  ; 2 uses
  %i.aj = bitcast i32 %i.ai to <32 x i1>
  %i.ak = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 73, i16 138, i16 203, i16 268, i16 333, i16 398, i16 463, i16 528, i16 593, i16 658, i16 723, i16 788, i16 853, i16 918, i16 983, i16 1048, i16 1113, i16 1178, i16 1243, i16 1308, i16 1373, i16 1438, i16 1503>, <32 x i16> zeroinitializer, <32 x i1> %i.aj)
  store <32 x i16> %i.ak, ptr %1, align 1, !tbaa !33
  %i.al = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ai)
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.ae, 32
  %i.ap = trunc nuw nsw i64 %i.ao to i32          ; 2 uses
  %i.aq = bitcast i32 %i.ap to <32 x i1>
  %i.ar = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1568, i16 1633, i16 1698, i16 1763, i16 1828, i16 1893, i16 1958, i16 2023, i16 2088, i16 2153, i16 2218, i16 2283, i16 2348, i16 2413, i16 2478, i16 2543, i16 2608, i16 2673, i16 2738, i16 2803, i16 2868, i16 2933, i16 2998, i16 3063, i16 3128, i16 3193, i16 3258, i16 3323, i16 3388, i16 3453, i16 3518, i16 3583>, <32 x i16> zeroinitializer, <32 x i1> %i.aq)
  store <32 x i16> %i.ar, ptr %i.an, align 1, !tbaa !33
  %i.as = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.ap)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.at ; 2 uses
  %i.av = trunc nuw i64 %i.ah to i32              ; 2 uses
  %i.aw = bitcast i32 %i.av to <32 x i1>
  %i.ax = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 81, i16 146, i16 211, i16 276, i16 341, i16 406, i16 471, i16 536, i16 601, i16 666, i16 731, i16 796, i16 861, i16 926, i16 991>, <32 x i16> zeroinitializer, <32 x i1> %i.aw)
  store <32 x i16> %i.ax, ptr %i.au, align 1, !tbaa !33
  %i.ay = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.av)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.az ; 4 uses
  %i.bb = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1056, i16 1121, i16 1186, i16 1251, i16 1316, i16 1381, i16 1446, i16 1511, i16 1576, i16 1641, i16 1706, i16 1771, i16 1836, i16 1901, i16 1966, i16 2031, i16 2096, i16 2161, i16 2226, i16 2291, i16 2356, i16 2421, i16 2486, i16 2551, i16 2616, i16 2681, i16 2746, i16 2811, i16 2876, i16 2941, i16 3006, i16 3071>, <32 x i16> zeroinitializer, <32 x i1> zeroinitializer)
  store <32 x i16> %i.bb, ptr %i.ba, align 1, !tbaa !33
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %.loopexit67.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = shl i64 %i.z, 9
  %i.bd = and i64 %i.bc, %i.i                     ; 2 uses
  %i.be = shl nuw nsw i64 %i.z, 7
  %i.bf = and i64 %i.i, 9151314442816847872
  %i.bg = and i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = shl nuw i64 %i.z, 8
  %i.bi = and i64 %i.bh, %i.v
  %i.bj = and i64 %i.bi, %i.s                     ; 2 uses
  %.not4769.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not4769.i.i, label %.preheader68.i.i, label %.lr.ph.i.i

.preheader68.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.045.lcssa.i.i = phi ptr [ %i.ba, %bb.d ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.not4872.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not4872.i.i, label %.preheader.i.i, label %.lr.ph75.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.04571.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %i.ba, %bb.d ] ; 2 uses
  %.06370.i.i = phi i64 [ %i.bn, %.lr.ph.i.i ], [ %i.bd, %bb.d ] ; 3 uses
  %i.bk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06370.i.i, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i16          ; 2 uses
  %i.bm = add i64 %.06370.i.i, -1
  %i.bn = and i64 %i.bm, %.06370.i.i              ; 2 uses
  %i.bo = shl nuw nsw i16 %i.bl, 6
  %i.bp = add nuw nsw i16 %i.bo, 15808
  %i.bq = and i16 %i.bp, 16320
  %i.br = or disjoint i16 %i.bl, 8192
  %i.bs = add nuw nsw i16 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.04571.i.i, i64 8 ; 2 uses
  %i.bu = insertelement <4 x i16> poison, i16 %i.bs, i64 0
  %i.bv = shufflevector <4 x i16> %i.bu, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bw = add nuw <4 x i16> %i.bv, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.bw, ptr %.04571.i.i, align 2, !tbaa !27
  %.not47.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not47.i.i, label %.preheader68.i.i, label %.lr.ph.i.i, !llvm.loop !59

.preheader.i.i:                                   ; preds = %.lr.ph75.i.i, %.preheader68.i.i
  %.146.lcssa.i.i = phi ptr [ %.045.lcssa.i.i, %.preheader68.i.i ], [ %i.cg, %.lr.ph75.i.i ] ; 2 uses
  %.not4977.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not4977.i.i, label %.loopexit67.i.i, label %.lr.ph80.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader68.i.i, %.lr.ph75.i.i
  %.14674.i.i = phi ptr [ %i.cg, %.lr.ph75.i.i ], [ %.045.lcssa.i.i, %.preheader68.i.i ] ; 2 uses
  %.06273.i.i = phi i64 [ %i.ca, %.lr.ph75.i.i ], [ %i.bg, %.preheader68.i.i ] ; 3 uses
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06273.i.i, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i16          ; 2 uses
  %i.bz = add nsw i64 %.06273.i.i, -1
  %i.ca = and i64 %i.bz, %.06273.i.i              ; 2 uses
  %i.cb = shl nuw nsw i16 %i.by, 6
  %i.cc = add nuw nsw i16 %i.cb, 15936
  %i.cd = and i16 %i.cc, 16320
  %i.ce = or disjoint i16 %i.by, 8192
  %i.cf = add nuw nsw i16 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.14674.i.i, i64 8 ; 2 uses
  %i.ch = insertelement <4 x i16> poison, i16 %i.cf, i64 0
  %i.ci = shufflevector <4 x i16> %i.ch, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cj = add nuw <4 x i16> %i.ci, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.cj, ptr %.14674.i.i, align 2, !tbaa !27
  %.not48.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not48.i.i, label %.preheader.i.i, label %.lr.ph75.i.i, !llvm.loop !60

.lr.ph80.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph80.i.i
  %.279.i.i = phi ptr [ %i.ct, %.lr.ph80.i.i ], [ %.146.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.06178.i.i = phi i64 [ %i.cn, %.lr.ph80.i.i ], [ %i.bj, %.preheader.i.i ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.06178.i.i, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i16          ; 2 uses
  %i.cm = add i64 %.06178.i.i, -1
  %i.cn = and i64 %i.cm, %.06178.i.i              ; 2 uses
  %i.co = shl nuw nsw i16 %i.cl, 6
  %i.cp = add nuw nsw i16 %i.co, 15872
  %i.cq = and i16 %i.cp, 16320
  %i.cr = or disjoint i16 %i.cl, 8192
  %i.cs = add nuw nsw i16 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.279.i.i, i64 8 ; 2 uses
  %i.cu = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.cv = shufflevector <4 x i16> %i.cu, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cw = add nuw <4 x i16> %i.cv, <i16 20480, i16 16384, i16 12288, i16 8192>
  store <4 x i16> %i.cw, ptr %.279.i.i, align 2, !tbaa !27
  %.not49.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not49.i.i, label %.loopexit67.i.i, label %.lr.ph80.i.i, !llvm.loop !61

.loopexit67.i.i:                                  ; preds = %.lr.ph80.i.i, %.preheader.i.i, %bb.c
  %.3.i.i = phi ptr [ %i.ba, %bb.c ], [ %.146.lcssa.i.i, %.preheader.i.i ], [ %i.ct, %.lr.ph80.i.i ] ; 2 uses
  %i.cx = shl i64 %i.y, 9
  %i.cy = and i64 %i.i, 71775015237778944
  %i.cz = and i64 %i.cy, %i.cx                    ; 2 uses
  %i.da = shl i64 %i.y, 7
  %i.db = and i64 %i.i, 35887507618889472
  %i.dc = and i64 %i.db, %i.da                    ; 2 uses
  %i.dd = trunc i64 %i.cz to i32                  ; 2 uses
  %i.de = bitcast i32 %i.dd to <32 x i1>
  %i.df = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 74, i16 139, i16 204, i16 269, i16 334, i16 399, i16 464, i16 529, i16 594, i16 659, i16 724, i16 789, i16 854, i16 919, i16 984, i16 1049, i16 1114, i16 1179, i16 1244, i16 1309, i16 1374, i16 1439>, <32 x i16> zeroinitializer, <32 x i1> %i.de)
  store <32 x i16> %i.df, ptr %.3.i.i, align 1, !tbaa !33
  %i.dg = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dd)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i, i64 %i.dh ; 2 uses
  %i.dj = lshr i64 %i.cz, 32
  %i.dk = trunc nuw nsw i64 %i.dj to i32          ; 2 uses
  %i.dl = bitcast i32 %i.dk to <32 x i1>
  %i.dm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1504, i16 1569, i16 1634, i16 1699, i16 1764, i16 1829, i16 1894, i16 1959, i16 2024, i16 2089, i16 2154, i16 2219, i16 2284, i16 2349, i16 2414, i16 2479, i16 2544, i16 2609, i16 2674, i16 2739, i16 2804, i16 2869, i16 2934, i16 2999, i16 3064, i16 3129, i16 3194, i16 3259, i16 3324, i16 3389, i16 3454, i16 3519>, <32 x i16> zeroinitializer, <32 x i1> %i.dl)
  store <32 x i16> %i.dm, ptr %i.di, align 1, !tbaa !33
  %i.dn = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dk)
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.do ; 2 uses
  %i.dq = trunc i64 %i.dc to i32                  ; 2 uses
  %i.dr = bitcast i32 %i.dq to <32 x i1>
  %i.ds = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 72, i16 137, i16 202, i16 267, i16 332, i16 397, i16 462, i16 527, i16 592, i16 657, i16 722, i16 787, i16 852, i16 917, i16 982, i16 1047, i16 1112, i16 1177, i16 1242, i16 1307, i16 1372, i16 1437, i16 1502, i16 1567>, <32 x i16> zeroinitializer, <32 x i1> %i.dr)
  store <32 x i16> %i.ds, ptr %i.dp, align 1, !tbaa !33
  %i.dt = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dq)
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.du ; 2 uses
  %i.dw = lshr i64 %i.dc, 32
  %i.dx = trunc nuw nsw i64 %i.dw to i32          ; 2 uses
  %i.dy = bitcast i32 %i.dx to <32 x i1>
  %i.dz = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 1632, i16 1697, i16 1762, i16 1827, i16 1892, i16 1957, i16 2022, i16 2087, i16 2152, i16 2217, i16 2282, i16 2347, i16 2412, i16 2477, i16 2542, i16 2607, i16 2672, i16 2737, i16 2802, i16 2867, i16 2932, i16 2997, i16 3062, i16 3127, i16 3192, i16 3257, i16 3322, i16 3387, i16 3452, i16 3517, i16 3582, i16 3647>, <32 x i16> zeroinitializer, <32 x i1> %i.dy)
  store <32 x i16> %i.dz, ptr %i.dv, align 1, !tbaa !33
  %i.ea = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.dx)
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.eb ; 4 uses
  %i.ed = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !35  ; 4 uses
  %.not50.i.i = icmp eq i8 %i.ef, 64
  br i1 %.not50.i.i, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %.loopexit67.i.i
end_hunk_0
begin_hunk_1_@_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_:bb.a

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.fo = phi i64 [ %i.el, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i40.i = phi ptr [ %.5.i.i, %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.fn, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !26
  %i.fr = and i64 %i.fq, %i.fo                    ; 2 uses
  %.not9.i41.i = icmp eq i64 %i.fr, 0
  br i1 %.not9.i41.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i42.i

.lr.ph.i42.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i42.i
  %.011.i43.i = phi ptr [ %i.gx, %.lr.ph.i42.i ], [ %.0.lcssa.i40.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i44.i = phi i64 [ %i.fv, %.lr.ph.i42.i ], [ %i.fr, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i44.i, i1 true) ; 2 uses
  %i.ft = trunc nuw nsw i64 %i.fs to i16
  %i.fu = add i64 %.0810.i44.i, -1
  %i.fv = and i64 %i.fu, %.0810.i44.i             ; 2 uses
  %i.fw = load i64, ptr %i.n, align 8, !tbaa !26
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.fs ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !39
  %i.ga = load i64, ptr %i.fx, align 16, !tbaa !42
  %i.gb = tail call noundef i64 @llvm.pext.i64(i64 %i.fw, i64 %i.ga)
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !26
  %i.gf = and i64 %i.ge, %i.m                     ; 2 uses
  %i.gg = shl nuw nsw i16 %i.ft, 6
  %i.gh = insertelement <32 x i16> poison, i16 %i.gg, i64 0
  %i.gi = shufflevector <32 x i16> %i.gh, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.gj = trunc i64 %i.gf to i32                  ; 2 uses
  %i.gk = or disjoint <32 x i16> %i.gi, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gl = bitcast i32 %i.gj to <32 x i1>
  %i.gm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gk, <32 x i16> zeroinitializer, <32 x i1> %i.gl)
  store <32 x i16> %i.gm, ptr %.011.i43.i, align 1, !tbaa !33
  %i.gn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gj)
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.011.i43.i, i64 %i.go ; 2 uses
  %i.gq = lshr i64 %i.gf, 32
  %i.gr = trunc nuw i64 %i.gq to i32              ; 2 uses
  %i.gs = or disjoint <32 x i16> %i.gi, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.gt = bitcast i32 %i.gr to <32 x i1>
  %i.gu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.gs, <32 x i16> zeroinitializer, <32 x i1> %i.gt)
  store <32 x i16> %i.gu, ptr %i.gp, align 1, !tbaa !33
  %i.gv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gr)
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %i.gp, i64 %i.gw ; 2 uses
  %.not.i45.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i45.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i42.i, !llvm.loop !43

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i42.i
  %.pre79.i = load i64, ptr %i.d, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.gy = phi i64 [ %i.fo, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre79.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i46.i = phi ptr [ %.0.lcssa.i40.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.gx, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !26
  %i.hb = and i64 %i.ha, %i.gy                    ; 2 uses
  %.not9.i47.i = icmp eq i64 %i.hb, 0
  br i1 %.not9.i47.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i48.i
  %.011.i49.i = phi ptr [ %i.ii, %.lr.ph.i48.i ], [ %.0.lcssa.i46.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i50.i = phi i64 [ %i.hf, %.lr.ph.i48.i ], [ %i.hb, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.hc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i50.i, i1 true) ; 2 uses
  %i.hd = trunc nuw nsw i64 %i.hc to i16
  %i.he = add i64 %.0810.i50.i, -1
  %i.hf = and i64 %i.he, %.0810.i50.i             ; 2 uses
  %i.hg = load i64, ptr %i.n, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.hc ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !39
  %i.hl = load i64, ptr %i.hi, align 16, !tbaa !42
  %i.hm = tail call noundef i64 @llvm.pext.i64(i64 %i.hg, i64 %i.hl)
  %i.hn = and i64 %i.hm, 4294967295
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hn
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !26
  %i.hq = and i64 %i.hp, %i.m                     ; 2 uses
  %i.hr = shl nuw nsw i16 %i.hd, 6
  %i.hs = insertelement <32 x i16> poison, i16 %i.hr, i64 0
  %i.ht = shufflevector <32 x i16> %i.hs, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.hu = trunc i64 %i.hq to i32                  ; 2 uses
  %i.hv = or disjoint <32 x i16> %i.ht, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.hw = bitcast i32 %i.hu to <32 x i1>
  %i.hx = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.hv, <32 x i16> zeroinitializer, <32 x i1> %i.hw)
  store <32 x i16> %i.hx, ptr %.011.i49.i, align 1, !tbaa !33
  %i.hy = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hu)
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.011.i49.i, i64 %i.hz ; 2 uses
  %i.ib = lshr i64 %i.hq, 32
  %i.ic = trunc nuw i64 %i.ib to i32              ; 2 uses
  %i.id = or disjoint <32 x i16> %i.ht, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ie = bitcast i32 %i.ic to <32 x i1>
  %i.if = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.id, <32 x i16> zeroinitializer, <32 x i1> %i.ie)
  store <32 x i16> %i.if, ptr %i.ia, align 1, !tbaa !33
  %i.ig = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ic)
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.ih ; 2 uses
  %.not.i51.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i51.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i48.i, !llvm.loop !44

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i48.i
  %.pre80.i = load i64, ptr %i.d, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ij = phi i64 [ %i.gy, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre80.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i52.i = phi ptr [ %.0.lcssa.i46.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.ii, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !26
  %i.im = and i64 %i.il, %i.ij                    ; 2 uses
  %.not9.i53.i = icmp eq i64 %i.im, 0
  br i1 %.not9.i53.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i54.i
  %.011.i55.i = phi ptr [ %i.kb, %.lr.ph.i54.i ], [ %.0.lcssa.i52.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i56.i = phi i64 [ %i.iq, %.lr.ph.i54.i ], [ %i.im, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.in = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i56.i, i1 true) ; 2 uses
  %i.io = trunc nuw nsw i64 %i.in to i16
  %i.ip = add i64 %.0810.i56.i, -1
  %i.iq = and i64 %i.ip, %.0810.i56.i             ; 2 uses
  %i.ir = load i64, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %i.is = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.in ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !39
  %i.iv = load i64, ptr %i.is, align 16, !tbaa !42
  %i.iw = tail call noundef i64 @llvm.pext.i64(i64 %i.ir, i64 %i.iv)
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !26
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !39
  %i.jd = load i64, ptr %i.ja, align 16, !tbaa !42
  %i.je = tail call noundef i64 @llvm.pext.i64(i64 %i.ir, i64 %i.jd)
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !26
  %i.ji = or i64 %i.jh, %i.iz
  %i.jj = and i64 %i.ji, %i.m                     ; 2 uses
  %i.jk = shl nuw nsw i16 %i.io, 6
  %i.jl = insertelement <32 x i16> poison, i16 %i.jk, i64 0
  %i.jm = shufflevector <32 x i16> %i.jl, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.jn = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jo = or disjoint <32 x i16> %i.jm, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.jp = bitcast i32 %i.jn to <32 x i1>
  %i.jq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.jo, <32 x i16> zeroinitializer, <32 x i1> %i.jp)
  store <32 x i16> %i.jq, ptr %.011.i55.i, align 1, !tbaa !33
  %i.jr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jn)
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %.011.i55.i, i64 %i.js ; 2 uses
  %i.ju = lshr i64 %i.jj, 32
  %i.jv = trunc nuw i64 %i.ju to i32              ; 2 uses
  %i.jw = or disjoint <32 x i16> %i.jm, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.jx = bitcast i32 %i.jv to <32 x i1>
  %i.jy = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.jw, <32 x i16> zeroinitializer, <32 x i1> %i.jx)
  store <32 x i16> %i.jy, ptr %i.jt, align 1, !tbaa !33
  %i.jz = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.jv)
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %i.ka ; 2 uses
  %.not.i57.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i57.i, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i54.i, !llvm.loop !45

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i54.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i58.i = phi ptr [ %.0.lcssa.i52.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.kb, %.lr.ph.i54.i ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.k
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !26
  %i.ke = and i64 %i.kd, %i.m                     ; 2 uses
  %i.kf = shl nuw nsw i16 %i.l, 6                 ; 2 uses
  %i.kg = insertelement <32 x i16> poison, i16 %i.kf, i64 0
  %i.kh = shufflevector <32 x i16> %i.kg, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.ki = trunc i64 %i.ke to i32                  ; 2 uses
  %i.kj = or disjoint <32 x i16> %i.kh, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.kk = bitcast i32 %i.ki to <32 x i1>
  %i.kl = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.kj, <32 x i16> zeroinitializer, <32 x i1> %i.kk)
  store <32 x i16> %i.kl, ptr %.0.lcssa.i58.i, align 1, !tbaa !33
  %i.km = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ki)
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i58.i, i64 %i.kn ; 2 uses
  %i.kp = lshr i64 %i.ke, 32
  %i.kq = trunc nuw i64 %i.kp to i32              ; 2 uses
  %i.kr = or disjoint <32 x i16> %i.kh, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ks = bitcast i32 %i.kq to <32 x i1>
  %i.kt = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.kr, <32 x i16> zeroinitializer, <32 x i1> %i.ks)
  store <32 x i16> %i.kt, ptr %i.ko, align 1, !tbaa !33
  %i.ku = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.kq)
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.kv ; 4 uses
  %i.kx = load ptr, ptr %i.du, align 8, !tbaa !34
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !55 ; 3 uses
  %i.la = and i32 %i.kz, 3
  %.not62.i = icmp eq i32 %i.la, 0
  br i1 %.not62.i, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.lb = load i64, ptr %i.n, align 8, !tbaa !26  ; 2 uses
  %i.lc = or disjoint i16 %i.kf, -16384
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !26
  %i.lf = and i64 %i.le, %i.lb
  %i.lg = icmp eq i64 %i.lf, 0
  %i.lh = trunc nuw i32 %i.kz to i1
  %or.cond.i = and i1 %i.lg, %i.lh
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 496
  %2 = load i64, ptr %i.li, align 8, !tbaa !26
  %3 = and i64 %2, %i.lb
  %4 = icmp eq i64 %3, 0
  %5 = and i32 %i.kz, 2
  %6 = icmp ne i32 %5, 0
  %or.cond.1.i = and i1 %6, %4
  br i1 %or.cond.1.i, label %bb.h, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ 465, %bb.f ], [ 466, %bb.g ]
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %7 = load i8, ptr %i.lj, align 1, !tbaa !56
  %8 = zext i8 %7 to i16
  %9 = add nuw nsw i16 %i.lc, %8
  %10 = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  store i16 %9, ptr %i.kw, align 2, !tbaa !27
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit

bb.i:                                             ; preds = %bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !26 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !26
  %i.lo = and i64 %i.ln, %i.ll
  %i.lp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lo, i1 true) ; 2 uses
  %i.lq = trunc nuw nsw i64 %i.lp to i16
  %i.lr = xor i64 %i.ll, -1                       ; 5 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !26
  %i.lu = xor i64 %i.lt, -1                       ; 3 uses
  %i.lv = load i64, ptr %i.d, align 8, !tbaa !26  ; 4 uses
  %i.lw = and i64 %i.f, %i.ll                     ; 5 uses
  %i.lx = and i64 %i.lw, 65280                    ; 3 uses
  %i.ly = and i64 %i.lw, -65281                   ; 2 uses
  %i.lz = lshr i64 %i.ly, 8
  %i.ma = and i64 %i.lz, %i.lu                    ; 3 uses
  %i.mb = trunc i64 %i.ma to i32                  ; 2 uses
  %i.mc = bitcast i32 %i.mb to <32 x i1>
  %i.md = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 512, i16 577, i16 642, i16 707, i16 772, i16 837, i16 902, i16 967, i16 1032, i16 1097, i16 1162, i16 1227, i16 1292, i16 1357, i16 1422, i16 1487, i16 1552, i16 1617, i16 1682, i16 1747, i16 1812, i16 1877, i16 1942, i16 2007, i16 2072, i16 2137, i16 2202, i16 2267, i16 2332, i16 2397, i16 2462, i16 2527>, <32 x i16> zeroinitializer, <32 x i1> %i.mc)
  store <32 x i16> %i.md, ptr %1, align 1, !tbaa !33
  %i.me = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.mb)
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.mf ; 2 uses
  %i.mh = lshr i64 %i.ma, 32
  %i.mi = trunc nuw nsw i64 %i.mh to i32          ; 2 uses
  %i.mj = bitcast i32 %i.mi to <32 x i1>
  %i.mk = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2592, i16 2657, i16 2722, i16 2787, i16 2852, i16 2917, i16 2982, i16 3047, i16 3112, i16 3177, i16 3242, i16 3307, i16 3372, i16 3437, i16 3502, i16 3567, i16 3632, i16 3697, i16 3762, i16 3827, i16 3892, i16 3957, i16 4022, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.mj)
  store <32 x i16> %i.mk, ptr %i.mg, align 1, !tbaa !33
  %i.ml = tail call range(i32 0, 25) i32 @llvm.ctpop.i32(i32 %i.mi)
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mg, i64 %i.mm ; 2 uses
  %i.mo = lshr i64 %i.ma, 40
  %i.mp = lshr i64 %i.lu, 32
  %i.mq = and i64 %i.mp, 255
  %i.mr = and i64 %i.mq, %i.mo
  %i.ms = trunc nuw nsw i64 %i.mr to i32          ; 2 uses
  %i.mt = bitcast i32 %i.ms to <32 x i1>
  %i.mu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 3104, i16 3169, i16 3234, i16 3299, i16 3364, i16 3429, i16 3494, i16 3559, i16 3624, i16 3689, i16 3754, i16 3819, i16 3884, i16 3949, i16 4014, i16 4079, i16 4080, i16 4081, i16 4082, i16 4083, i16 4084, i16 4085, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.mt)
  store <32 x i16> %i.mu, ptr %i.mn, align 1, !tbaa !33
  %i.mv = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ms)
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.mw ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.lx, 0
  br i1 %.not.i.i5, label %..loopexit52_crit_edge.i.i, label %bb.j

..loopexit52_crit_edge.i.i:                       ; preds = %bb.i
  %.pre.i.i = lshr i64 %i.lw, 7
  br label %.loopexit52.i.i25

bb.j:                                             ; preds = %bb.i
  %i.my = lshr i64 %i.lx, 9
  %i.mz = and i64 %i.my, %i.lv                    ; 2 uses
  %i.na = lshr i64 %i.lw, 7                       ; 3 uses
  %i.nb = and i64 %i.lv, 254
  %i.nc = and i64 %i.nb, %i.na                    ; 2 uses
  %i.nd = lshr exact i64 %i.lx, 8
  %i.ne = and i64 %i.nd, %i.lu                    ; 2 uses
  %.not3554.i.i6 = icmp eq i64 %i.mz, 0
  br i1 %.not3554.i.i6, label %.preheader53.i.i11, label %.lr.ph.i.i7

.preheader53.i.i11:                               ; preds = %.lr.ph.i.i7, %bb.j
  %.0.lcssa.i.i12 = phi ptr [ %i.mx, %bb.j ], [ %i.nm, %.lr.ph.i.i7 ] ; 2 uses
  %.not3657.i.i13 = icmp eq i64 %i.nc, 0
  br i1 %.not3657.i.i13, label %.preheader.i.i18, label %.lr.ph60.i.i14

.lr.ph.i.i7:                                      ; preds = %bb.j, %.lr.ph.i.i7
  %.056.i.i8 = phi ptr [ %i.nm, %.lr.ph.i.i7 ], [ %i.mx, %bb.j ] ; 2 uses
  %.05155.i.i9 = phi i64 [ %i.ni, %.lr.ph.i.i7 ], [ %i.mz, %bb.j ] ; 3 uses
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05155.i.i9, i1 true)
  %i.ng = trunc nuw nsw i64 %i.nf to i16          ; 2 uses
  %i.nh = add nsw i64 %.05155.i.i9, -1
  %i.ni = and i64 %i.nh, %.05155.i.i9             ; 2 uses
  %i.nj = shl nuw nsw i16 %i.ng, 6
  %i.nk = add nuw nsw i16 %i.nj, 576
  %i.nl = or disjoint i16 %i.nk, %i.ng
  %i.nm = getelementptr inbounds nuw i8, ptr %.056.i.i8, i64 8 ; 2 uses
  %i.nn = insertelement <4 x i16> poison, i16 %i.nl, i64 0
  %i.no = shufflevector <4 x i16> %i.nn, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.np = add nuw nsw <4 x i16> %i.no, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.np, ptr %.056.i.i8, align 2, !tbaa !27
  %.not35.i.i10 = icmp eq i64 %i.ni, 0
  br i1 %.not35.i.i10, label %.preheader53.i.i11, label %.lr.ph.i.i7, !llvm.loop !71

.preheader.i.i18:                                 ; preds = %.lr.ph60.i.i14, %.preheader53.i.i11
  %.1.lcssa.i.i19 = phi ptr [ %.0.lcssa.i.i12, %.preheader53.i.i11 ], [ %i.nx, %.lr.ph60.i.i14 ] ; 2 uses
  %.not3762.i.i20 = icmp eq i64 %i.ne, 0
  br i1 %.not3762.i.i20, label %.loopexit52.i.i25, label %.lr.ph65.i.i21

.lr.ph60.i.i14:                                   ; preds = %.preheader53.i.i11, %.lr.ph60.i.i14
  %.159.i.i15 = phi ptr [ %i.nx, %.lr.ph60.i.i14 ], [ %.0.lcssa.i.i12, %.preheader53.i.i11 ] ; 2 uses
  %.05058.i.i16 = phi i64 [ %i.nt, %.lr.ph60.i.i14 ], [ %i.nc, %.preheader53.i.i11 ] ; 3 uses
  %i.nq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05058.i.i16, i1 true)
  %i.nr = trunc nuw nsw i64 %i.nq to i16          ; 2 uses
  %i.ns = add nsw i64 %.05058.i.i16, -1
  %i.nt = and i64 %i.ns, %.05058.i.i16            ; 2 uses
  %i.nu = shl nuw nsw i16 %i.nr, 6
  %i.nv = add nuw nsw i16 %i.nu, 448
  %i.nw = or disjoint i16 %i.nv, %i.nr
  %i.nx = getelementptr inbounds nuw i8, ptr %.159.i.i15, i64 8 ; 2 uses
  %i.ny = insertelement <4 x i16> poison, i16 %i.nw, i64 0
  %i.nz = shufflevector <4 x i16> %i.ny, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.oa = add nuw nsw <4 x i16> %i.nz, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.oa, ptr %.159.i.i15, align 2, !tbaa !27
  %.not36.i.i17 = icmp eq i64 %i.nt, 0
  br i1 %.not36.i.i17, label %.preheader.i.i18, label %.lr.ph60.i.i14, !llvm.loop !72

.lr.ph65.i.i21:                                   ; preds = %.preheader.i.i18, %.lr.ph65.i.i21
  %.264.i.i22 = phi ptr [ %i.oi, %.lr.ph65.i.i21 ], [ %.1.lcssa.i.i19, %.preheader.i.i18 ] ; 2 uses
  %.04963.i.i23 = phi i64 [ %i.oe, %.lr.ph65.i.i21 ], [ %i.ne, %.preheader.i.i18 ] ; 3 uses
  %i.ob = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04963.i.i23, i1 true)
  %i.oc = trunc nuw nsw i64 %i.ob to i16          ; 2 uses
  %i.od = add nsw i64 %.04963.i.i23, -1
  %i.oe = and i64 %i.od, %.04963.i.i23            ; 2 uses
  %i.of = shl nuw nsw i16 %i.oc, 6
  %i.og = add nuw nsw i16 %i.of, 512
  %i.oh = or disjoint i16 %i.og, %i.oc
  %i.oi = getelementptr inbounds nuw i8, ptr %.264.i.i22, i64 8 ; 2 uses
  %i.oj = insertelement <4 x i16> poison, i16 %i.oh, i64 0
  %i.ok = shufflevector <4 x i16> %i.oj, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.ol = add nuw nsw <4 x i16> %i.ok, <i16 28672, i16 24576, i16 20480, i16 16384>
  store <4 x i16> %i.ol, ptr %.264.i.i22, align 2, !tbaa !27
  %.not37.i.i24 = icmp eq i64 %i.oe, 0
  br i1 %.not37.i.i24, label %.loopexit52.i.i25, label %.lr.ph65.i.i21, !llvm.loop !73

.loopexit52.i.i25:                                ; preds = %.lr.ph65.i.i21, %.preheader.i.i18, %..loopexit52_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %..loopexit52_crit_edge.i.i ], [ %i.na, %.preheader.i.i18 ], [ %i.na, %.lr.ph65.i.i21 ]
  %.3.i.i26 = phi ptr [ %i.mx, %..loopexit52_crit_edge.i.i ], [ %.1.lcssa.i.i19, %.preheader.i.i18 ], [ %i.oi, %.lr.ph65.i.i21 ] ; 2 uses
  %i.om = lshr i64 %i.lw, 9
  %i.on = and i64 %i.lv, 35887507618889472
  %i.oo = and i64 %i.on, %i.om                    ; 2 uses
  %i.op = and i64 %i.lv, 71775015237778944
  %i.oq = and i64 %i.op, %.pre-phi.i.i            ; 2 uses
  %i.or = trunc i64 %i.oo to i32                  ; 2 uses
  %i.os = bitcast i32 %i.or to <32 x i1>
  %i.ot = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 576, i16 641, i16 706, i16 771, i16 836, i16 901, i16 966, i16 1031, i16 1096, i16 1161, i16 1226, i16 1291, i16 1356, i16 1421, i16 1486, i16 1551, i16 1616, i16 1681, i16 1746, i16 1811, i16 1876, i16 1941, i16 2006, i16 2071, i16 2136, i16 2201, i16 2266, i16 2331, i16 2396, i16 2461, i16 2526, i16 2591>, <32 x i16> zeroinitializer, <32 x i1> %i.os)
  store <32 x i16> %i.ot, ptr %.3.i.i26, align 1, !tbaa !33
  %i.ou = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.or)
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i26, i64 %i.ov ; 2 uses
  %i.ox = lshr i64 %i.oo, 32
  %i.oy = trunc nuw nsw i64 %i.ox to i32          ; 2 uses
  %i.oz = bitcast i32 %i.oy to <32 x i1>
  %i.pa = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2656, i16 2721, i16 2786, i16 2851, i16 2916, i16 2981, i16 3046, i16 3111, i16 3176, i16 3241, i16 3306, i16 3371, i16 3436, i16 3501, i16 3566, i16 3631, i16 3696, i16 3761, i16 3826, i16 3891, i16 3956, i16 4021, i16 4086, i16 4087, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.oz)
  store <32 x i16> %i.pa, ptr %i.ow, align 1, !tbaa !33
  %i.pb = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.oy)
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %i.pc ; 2 uses
  %i.pe = trunc i64 %i.oq to i32                  ; 2 uses
  %i.pf = bitcast i32 %i.pe to <32 x i1>
  %i.pg = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 448, i16 513, i16 578, i16 643, i16 708, i16 773, i16 838, i16 903, i16 968, i16 1033, i16 1098, i16 1163, i16 1228, i16 1293, i16 1358, i16 1423, i16 1488, i16 1553, i16 1618, i16 1683, i16 1748, i16 1813, i16 1878, i16 1943, i16 2008, i16 2073, i16 2138, i16 2203, i16 2268, i16 2333, i16 2398, i16 2463>, <32 x i16> zeroinitializer, <32 x i1> %i.pf)
  store <32 x i16> %i.pg, ptr %i.pd, align 1, !tbaa !33
  %i.ph = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.pe)
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.pd, i64 %i.pi ; 2 uses
  %i.pk = lshr i64 %i.oq, 32
  %i.pl = trunc nuw nsw i64 %i.pk to i32          ; 2 uses
  %i.pm = bitcast i32 %i.pl to <32 x i1>
  %i.pn = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 2528, i16 2593, i16 2658, i16 2723, i16 2788, i16 2853, i16 2918, i16 2983, i16 3048, i16 3113, i16 3178, i16 3243, i16 3308, i16 3373, i16 3438, i16 3503, i16 3568, i16 3633, i16 3698, i16 3763, i16 3828, i16 3893, i16 3958, i16 4023, i16 4088, i16 4089, i16 4090, i16 4091, i16 4092, i16 4093, i16 4094, i16 4095>, <32 x i16> zeroinitializer, <32 x i1> %i.pm)
  store <32 x i16> %i.pn, ptr %i.pj, align 1, !tbaa !33
  %i.po = tail call range(i32 0, 22) i32 @llvm.ctpop.i32(i32 %i.pl)
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.pj, i64 %i.pp ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !34
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 60
  %i.pu = load i8, ptr %i.pt, align 4, !tbaa !35  ; 3 uses
  %.not38.i.i27 = icmp eq i8 %i.pu, 64
  br i1 %.not38.i.i27, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.k

bb.k:                                             ; preds = %.loopexit52.i.i25
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %i.pv
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !26
  %i.py = and i64 %i.px, %i.ly                    ; 2 uses
  %.not3967.i.i28 = icmp eq i64 %i.py, 0
  br i1 %.not3967.i.i28, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph70.i.i29

.lr.ph70.i.i29:                                   ; preds = %bb.k
  %i.pz = zext i8 %i.pu to i16
  %i.qa = or disjoint i16 %i.pz, -32768
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph70.i.i29
  %.469.i.i30 = phi ptr [ %i.pq, %.lr.ph70.i.i29 ], [ %i.qh, %bb.l ] ; 2 uses
  %.04868.i.i31 = phi i64 [ %i.py, %.lr.ph70.i.i29 ], [ %i.qe, %bb.l ] ; 3 uses
  %i.qb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.04868.i.i31, i1 true)
  %i.qc = trunc nuw nsw i64 %i.qb to i16
  %i.qd = add i64 %.04868.i.i31, -1
  %i.qe = and i64 %i.qd, %.04868.i.i31            ; 2 uses
  %i.qf = shl nuw nsw i16 %i.qc, 6
  %i.qg = add nuw nsw i16 %i.qa, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %.469.i.i30, i64 2 ; 2 uses
  store i16 %i.qg, ptr %.469.i.i30, align 2, !tbaa !27
  %.not39.i.i32 = icmp eq i64 %i.qe, 0
  br i1 %.not39.i.i32, label %_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %bb.l, !llvm.loop !74

_ZN9Stockfish12_GLOBAL__N_119generate_pawn_movesILNS_5ColorE1ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %bb.l, %bb.k, %.loopexit52.i.i25
end_hunk_1
begin_hunk_2_@_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_:bb.a
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !39
  %i.rx = load i64, ptr %i.ru, align 16, !tbaa !42
  %i.ry = tail call noundef i64 @llvm.pext.i64(i64 %i.rt, i64 %i.rx)
  %i.rz = and i64 %i.ry, 4294967295
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rz
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !26
  %i.sc = and i64 %i.sb, %i.lr                    ; 2 uses
  %i.sd = shl nuw nsw i16 %i.rq, 6
  %i.se = insertelement <32 x i16> poison, i16 %i.sd, i64 0
  %i.sf = shufflevector <32 x i16> %i.se, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.sg = trunc i64 %i.sc to i32                  ; 2 uses
  %i.sh = or disjoint <32 x i16> %i.sf, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.si = bitcast i32 %i.sg to <32 x i1>
  %i.sj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.sh, <32 x i16> zeroinitializer, <32 x i1> %i.si)
  store <32 x i16> %i.sj, ptr %.011.i43.i43, align 1, !tbaa !33
  %i.sk = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.sg)
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %.011.i43.i43, i64 %i.sl ; 2 uses
  %i.sn = lshr i64 %i.sc, 32
  %i.so = trunc nuw i64 %i.sn to i32              ; 2 uses
  %i.sp = or disjoint <32 x i16> %i.sf, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.sq = bitcast i32 %i.so to <32 x i1>
  %i.sr = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.sp, <32 x i16> zeroinitializer, <32 x i1> %i.sq)
  store <32 x i16> %i.sr, ptr %i.sm, align 1, !tbaa !33
  %i.ss = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.so)
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.sm, i64 %i.st ; 2 uses
  %.not.i45.i45 = icmp eq i64 %i.rs, 0
  br i1 %.not.i45.i45, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i42.i42, !llvm.loop !51

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i42.i42
  %.pre79.i46 = load i64, ptr %i.lk, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.sv = phi i64 [ %i.rl, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre79.i46, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %.0.lcssa.i46.i47 = phi ptr [ %.0.lcssa.i40.i40, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE2EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.su, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !26
  %i.sy = and i64 %i.sx, %i.sv                    ; 2 uses
  %.not9.i47.i48 = icmp eq i64 %i.sy, 0
  br i1 %.not9.i47.i48, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i48.i49

.lr.ph.i48.i49:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i48.i49
  %.011.i49.i50 = phi ptr [ %i.uf, %.lr.ph.i48.i49 ], [ %.0.lcssa.i46.i47, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i50.i51 = phi i64 [ %i.tc, %.lr.ph.i48.i49 ], [ %i.sy, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.sz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i50.i51, i1 true) ; 2 uses
  %i.ta = trunc nuw nsw i64 %i.sz to i16
  %i.tb = add i64 %.0810.i50.i51, -1
  %i.tc = and i64 %i.tb, %.0810.i50.i51           ; 2 uses
  %i.td = load i64, ptr %i.ls, align 8, !tbaa !26
  %i.te = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.sz ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !39
  %i.ti = load i64, ptr %i.tf, align 16, !tbaa !42
  %i.tj = tail call noundef i64 @llvm.pext.i64(i64 %i.td, i64 %i.ti)
  %i.tk = and i64 %i.tj, 4294967295
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tk
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !26
  %i.tn = and i64 %i.tm, %i.lr                    ; 2 uses
  %i.to = shl nuw nsw i16 %i.ta, 6
  %i.tp = insertelement <32 x i16> poison, i16 %i.to, i64 0
  %i.tq = shufflevector <32 x i16> %i.tp, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.tr = trunc i64 %i.tn to i32                  ; 2 uses
  %i.ts = or disjoint <32 x i16> %i.tq, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.tt = bitcast i32 %i.tr to <32 x i1>
  %i.tu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ts, <32 x i16> zeroinitializer, <32 x i1> %i.tt)
  store <32 x i16> %i.tu, ptr %.011.i49.i50, align 1, !tbaa !33
  %i.tv = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.tr)
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %.011.i49.i50, i64 %i.tw ; 2 uses
  %i.ty = lshr i64 %i.tn, 32
  %i.tz = trunc nuw i64 %i.ty to i32              ; 2 uses
  %i.ua = or disjoint <32 x i16> %i.tq, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.ub = bitcast i32 %i.tz to <32 x i1>
  %i.uc = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.ua, <32 x i16> zeroinitializer, <32 x i1> %i.ub)
  store <32 x i16> %i.uc, ptr %i.tx, align 1, !tbaa !33
  %i.ud = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.tz)
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.tx, i64 %i.ue ; 2 uses
  %.not.i51.i52 = icmp eq i64 %i.tc, 0
  br i1 %.not.i51.i52, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, label %.lr.ph.i48.i49, !llvm.loop !52

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i: ; preds = %.lr.ph.i48.i49
  %.pre80.i53 = load i64, ptr %i.lk, align 8, !tbaa !26
  br label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.ug = phi i64 [ %i.sv, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.pre80.i53, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ]
  %.0.lcssa.i52.i54 = phi ptr [ %.0.lcssa.i46.i47, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE3EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.uf, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.loopexit.i ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !26
  %i.uj = and i64 %i.ui, %i.ug                    ; 2 uses
  %.not9.i53.i55 = icmp eq i64 %i.uj, 0
  br i1 %.not9.i53.i55, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i54.i56

.lr.ph.i54.i56:                                   ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %.lr.ph.i54.i56
  %.011.i55.i57 = phi ptr [ %i.vy, %.lr.ph.i54.i56 ], [ %.0.lcssa.i52.i54, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 2 uses
  %.0810.i56.i58 = phi i64 [ %i.un, %.lr.ph.i54.i56 ], [ %i.uj, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ] ; 3 uses
  %i.uk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0810.i56.i58, i1 true) ; 2 uses
  %i.ul = trunc nuw nsw i64 %i.uk to i16
  %i.um = add i64 %.0810.i56.i58, -1
  %i.un = and i64 %i.um, %.0810.i56.i58           ; 2 uses
  %i.uo = load i64, ptr %i.ls, align 8, !tbaa !26 ; 2 uses
  %i.up = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.uk ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !39
  %i.us = load i64, ptr %i.up, align 16, !tbaa !42
  %i.ut = tail call noundef i64 @llvm.pext.i64(i64 %i.uo, i64 %i.us)
  %i.uu = and i64 %i.ut, 4294967295
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %i.uu
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !26
  %i.ux = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.uy = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !39
  %i.va = load i64, ptr %i.ux, align 16, !tbaa !42
  %i.vb = tail call noundef i64 @llvm.pext.i64(i64 %i.uo, i64 %i.va)
  %i.vc = and i64 %i.vb, 4294967295
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.vc
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !26
  %i.vf = or i64 %i.ve, %i.uw
  %i.vg = and i64 %i.vf, %i.lr                    ; 2 uses
  %i.vh = shl nuw nsw i16 %i.ul, 6
  %i.vi = insertelement <32 x i16> poison, i16 %i.vh, i64 0
  %i.vj = shufflevector <32 x i16> %i.vi, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.vk = trunc i64 %i.vg to i32                  ; 2 uses
  %i.vl = or disjoint <32 x i16> %i.vj, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.vm = bitcast i32 %i.vk to <32 x i1>
  %i.vn = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.vl, <32 x i16> zeroinitializer, <32 x i1> %i.vm)
  store <32 x i16> %i.vn, ptr %.011.i55.i57, align 1, !tbaa !33
  %i.vo = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.vk)
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %.011.i55.i57, i64 %i.vp ; 2 uses
  %i.vr = lshr i64 %i.vg, 32
  %i.vs = trunc nuw i64 %i.vr to i32              ; 2 uses
  %i.vt = or disjoint <32 x i16> %i.vj, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.vu = bitcast i32 %i.vs to <32 x i1>
  %i.vv = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.vt, <32 x i16> zeroinitializer, <32 x i1> %i.vu)
  store <32 x i16> %i.vv, ptr %i.vq, align 1, !tbaa !33
  %i.vw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.vs)
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.vq, i64 %i.vx ; 2 uses
  %.not.i57.i59 = icmp eq i64 %i.un, 0
  br i1 %.not.i57.i59, label %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, label %.lr.ph.i54.i56, !llvm.loop !53

_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i: ; preds = %.lr.ph.i54.i56, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %.0.lcssa.i58.i60 = phi ptr [ %.0.lcssa.i52.i54, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE4EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.vy, %.lr.ph.i54.i56 ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish13PseudoAttacksE, i64 3072), i64 %i.lp
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !26
  %i.wb = and i64 %i.wa, %i.lr                    ; 2 uses
  %i.wc = shl nuw nsw i16 %i.lq, 6                ; 2 uses
  %i.wd = insertelement <32 x i16> poison, i16 %i.wc, i64 0
  %i.we = shufflevector <32 x i16> %i.wd, <32 x i16> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.wf = trunc i64 %i.wb to i32                  ; 2 uses
  %i.wg = or disjoint <32 x i16> %i.we, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.wh = bitcast i32 %i.wf to <32 x i1>
  %i.wi = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.wg, <32 x i16> zeroinitializer, <32 x i1> %i.wh)
  store <32 x i16> %i.wi, ptr %.0.lcssa.i58.i60, align 1, !tbaa !33
  %i.wj = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.wf)
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i58.i60, i64 %i.wk ; 2 uses
  %i.wm = lshr i64 %i.wb, 32
  %i.wn = trunc nuw i64 %i.wm to i32              ; 2 uses
  %i.wo = or disjoint <32 x i16> %i.we, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.wp = bitcast i32 %i.wn to <32 x i1>
  %i.wq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> %i.wo, <32 x i16> zeroinitializer, <32 x i1> %i.wp)
  store <32 x i16> %i.wq, ptr %i.wl, align 1, !tbaa !33
  %i.wr = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.wn)
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %i.ws ; 4 uses
  %i.wu = load ptr, ptr %i.pr, align 8, !tbaa !34
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 48
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !55 ; 3 uses
  %i.wx = and i32 %i.ww, 12
  %.not62.i61 = icmp eq i32 %i.wx, 0
  br i1 %.not62.i61, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %i.wy = load i64, ptr %i.ls, align 8, !tbaa !26 ; 2 uses
  %i.wz = or disjoint i16 %i.wc, -16384           ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !26
  %i.xc = and i64 %i.xb, %i.wy
  %i.xd = icmp eq i64 %i.xc, 0
  %i.xe = and i32 %i.ww, 4
  %i.xf = icmp ne i32 %i.xe, 0
  %or.cond.i62 = and i1 %i.xf, %i.xd
  br i1 %or.cond.i62, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.xh = load i8, ptr %i.xg, align 4, !tbaa !56
  %i.xi = zext i8 %i.xh to i16
  %i.xj = add nuw nsw i16 %i.wz, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wt, i64 2
  store i16 %i.xj, ptr %i.wt, align 2, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i63 = phi ptr [ %i.wt, %bb.m ], [ %i.xk, %bb.n ] ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !26
  %i.xn = and i64 %i.xm, %i.wy
  %i.xo = icmp eq i64 %i.xn, 0
  %i.xp = and i32 %i.ww, 8
  %i.xq = icmp ne i32 %i.xp, 0
  %or.cond.1.i64 = and i1 %i.xq, %i.xo
  br i1 %or.cond.1.i64, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split: ; preds = %bb.o
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.xs = load i8, ptr %i.xr, align 8, !tbaa !56
  %i.xt = zext i8 %i.xs to i16
  %i.xu = add nuw nsw i16 %i.wz, %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %.1.i63, i64 2
  store i16 %i.xu, ptr %.1.i63, align 2, !tbaa !27
  br label %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit

_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit: ; preds = %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split, %bb.o, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i, %bb.h, %bb.g, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i
  %11 = phi ptr [ %10, %bb.h ], [ %i.kw, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE0ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %i.kw, %bb.g ], [ %i.wt, %_ZN9Stockfish12_GLOBAL__N_114generate_movesILNS_5ColorE1ELNS_9PieceTypeE5EEEPNS_4MoveERKNS_8PositionES5_m.exit.i ], [ %.1.i63, %bb.o ], [ %i.xv, %_ZN9Stockfish12_GLOBAL__N_112generate_allILNS_5ColorE0ELNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES5_.exit.sink.split ]
  ret ptr %11
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i8, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.f = zext i8 %i.b to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %i.n = and i64 %i.m, %i.k
  %i.o = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.n, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE2EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE3EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.s, %bb.b ], [ %i.t, %bb.c ] ; 3 uses
  %.not2731 = icmp eq ptr %1, %i.u
  br i1 %.not2731, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %invariant.op = and i64 %i.h, %i.k
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.033 = phi ptr [ %.1, %bb.h ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.02532 = phi ptr [ %.126, %bb.h ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %i.v = load i16, ptr %.02532, align 2, !tbaa !75 ; 3 uses
  %i.w = lshr i16 %i.v, 6
  %i.x = trunc i16 %i.w to i8
  %i.y = and i8 %i.x, 63                          ; 2 uses
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %.reass.reass = and i64 %i.aa, %invariant.op
  %.not28 = icmp ne i64 %.reass.reass, 0
  %i.ab = icmp eq i8 %i.y, %i.p
  %or.cond = select i1 %.not28, i1 true, i1 %i.ab
  %i.ac = icmp slt i16 %i.v, -16384
  %or.cond30 = or i1 %i.ac, %or.cond
  br i1 %or.cond30, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.ad = tail call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %i.v) #6
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %.033, i64 -2 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !27
  store i16 %i.af, ptr %.02532, align 2, !tbaa !27
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.02532, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.126 = phi ptr [ %i.ag, %bb.g ], [ %.02532, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %.033, %bb.g ], [ %i.ae, %bb.f ] ; 3 uses
  %.not27 = icmp eq ptr %.126, %.1
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %.0.lcssa = phi ptr [ %i.u, %bb.d ], [ %.1, %bb.h ]
  ret ptr %.0.lcssa
}

declare noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16>, <32 x i16>, <32 x i1>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.pext.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"ThinLTO", i32 0}
!4 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !18, i64 620}
!12 = !{!"_ZTSN9Stockfish8PositionE", !13, i64 0, !14, i64 64, !15, i64 128, !9, i64 144, !9, i64 208, !9, i64 464, !9, i64 480, !16, i64 608, !8, i64 616, !18, i64 620, !19, i64 621, !20, i64 622, !23, i64 632}
!13 = !{!"_ZTSSt5arrayIN9Stockfish5PieceELm64EE", !9, i64 0}
!14 = !{!"_ZTSSt5arrayImLm8EE", !9, i64 0}
!15 = !{!"_ZTSSt5arrayImLm2EE", !9, i64 0}
!16 = !{!"p1 _ZTSN9Stockfish9StateInfoE", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"_ZTSN9Stockfish5ColorE", !9, i64 0}
!19 = !{!"bool", !9, i64 0}
!20 = !{!"_ZTSN9Stockfish10DirtyPieceE", !21, i64 0, !22, i64 1, !22, i64 2, !22, i64 3, !22, i64 4, !21, i64 5, !21, i64 6}
!21 = !{!"_ZTSN9Stockfish5PieceE", !9, i64 0}
!22 = !{!"_ZTSN9Stockfish6SquareE", !9, i64 0}
!23 = !{!"_ZTSN9Stockfish12DirtyThreatsE", !24, i64 0, !18, i64 392, !22, i64 393, !22, i64 394, !25, i64 400, !25, i64 408}
!24 = !{!"_ZTSN9Stockfish9ValueListINS_11DirtyThreatELm96EEE", !9, i64 0, !25, i64 384}
!25 = !{!"long", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !9, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = !{!9, !9, i64 0}
!34 = !{!12, !16, i64 608}
!35 = !{!36, !22, i64 60}
!36 = !{!"_ZTSN9Stockfish9StateInfoE", !25, i64 0, !25, i64 8, !25, i64 16, !9, i64 24, !9, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !22, i64 60, !25, i64 64, !25, i64 72, !16, i64 80, !9, i64 88, !9, i64 104, !9, i64 120, !21, i64 184, !8, i64 188}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSN9Stockfish5MagicE", !25, i64 0, !41, i64 8}
!41 = !{!"p1 long", !17, i64 0}
!42 = !{!40, !25, i64 0}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = !{!36, !8, i64 48}
!56 = !{!22, !22, i64 0}
!57 = distinct !{!57, !30}
!58 = !{!36, !25, i64 72}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = !{!76, !28, i64 0}
!76 = !{!"_ZTSN9Stockfish4MoveE", !28, i64 0}
!77 = distinct !{!77, !30}
end_hunk_2
