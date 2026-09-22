Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/full_threats?download=true
inline.NumInlined: 90
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9Stockfish4Eval4NNUE8Features11FullThreats21append_active_indicesENS_5ColorERKNS_8PositionERNS_9ValueListIjLm128EEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish4Eval4NNUE8Features11FullThreats9OrientTBLE, i64 %i.h ; 3 uses
  %i.l = mul i8 %0, 56                            ; 3 uses
  %i.m = shl i8 %0, 3
  %i.n = sext i8 %i.m to i32                      ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 6 uses
  %i.p = zext i32 %i.n to i64
  %i.q = zext i32 %i.n to i64
  %i.r = zext i32 %i.n to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  ret void

bb.c:                                             ; preds = %bb.a, %bb.d
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.d ]
  %.0.idx99.sroa.phi.sroa.speculated = phi i8 [ 0, %bb.a ], [ 1, %bb.d ] ; 2 uses
  %i.s = xor i8 %.0.idx99.sroa.phi.sroa.speculated, %0 ; 2 uses
  %i.t = shl i8 %i.s, 3
  %i.u = zext i8 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u
  %i.w = icmp eq i8 %0, %.0.idx99.sroa.phi.sroa.speculated ; 3 uses
  %.neg = select i1 %i.w, i32 247, i32 9
  %.neg82 = select i1 %i.w, i32 249, i32 7
  %i.x = zext i8 %i.t to i64
  br label %bb.e

bb.d:                                             ; preds = %.loopexit83
  br i1 %.not, label %bb.b, label %bb.c

bb.e:                                             ; preds = %bb.c, %.loopexit83
  %indvars.iv = phi i64 [ 1, %bb.c ], [ %indvars.iv.next, %.loopexit83 ] ; 6 uses
  %i.y = add nuw nsw i64 %indvars.iv, %i.x        ; 3 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12
  %i.ac = and i64 %i.ab, %i.z                     ; 6 uses
  %i.ad = icmp eq i64 %indvars.iv, 1
  br i1 %i.ad, label %bb.f, label %.preheader84

.preheader84:                                     ; preds = %bb.e
  %.not5388 = icmp eq i64 %i.ac, 0
  br i1 %.not5388, label %.loopexit83, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader84
  %i.ae = getelementptr inbounds nuw [512 x i8], ptr @_ZN9Stockfish13PseudoAttacksE, i64 %indvars.iv
  %i.af = xor i64 %i.y, %i.p                      ; 3 uses
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut1E, i64 %i.af
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL7offsetsE, i64 %i.af
  %i.ai = getelementptr inbounds nuw [4096 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut2E, i64 %i.af
  %i.aj = trunc nuw nsw i64 %indvars.iv to i8
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = shl i64 %i.ac, 9
  %i.al = and i64 %i.ak, -72340172838076928
  %i.am = shl i64 %i.ac, 7
  %i.an = and i64 %i.am, 9187201950435737344
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = lshr i64 %i.ac, 9
  %i.ap = and i64 %i.ao, 35887507618889599
  %i.aq = lshr i64 %i.ac, 7
  %i.ar = and i64 %i.aq, 71775015237779198
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi i64 [ %i.al, %bb.g ], [ %i.ap, %bb.h ]
  %i.as = phi i64 [ %i.an, %bb.g ], [ %i.ar, %bb.h ]
  %i.at = and i64 %.pn, %i.j                      ; 2 uses
  %i.au = and i64 %i.as, %i.j                     ; 2 uses
  %.not5591 = icmp eq i64 %i.at, 0
  br i1 %.not5591, label %.preheader, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.i
  %i.av = load i8, ptr %i.k, align 1, !tbaa !13
  %i.aw = xor i8 %i.av, %i.l
  %i.ax = sext i8 %i.aw to i32                    ; 2 uses
  %i.ay = xor i64 %i.y, %i.q                      ; 3 uses
  %i.az = getelementptr inbounds nuw [128 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut1E, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL7offsetsE, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [4096 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut2E, i64 %i.ay
  br label %bb.j

.preheader:                                       ; preds = %bb.l, %bb.i
  %.not5694 = icmp eq i64 %i.au, 0
  br i1 %.not5694, label %.loopexit83, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader
  %i.bc = load i8, ptr %i.k, align 1, !tbaa !13
  %i.bd = xor i8 %i.bc, %i.l
  %i.be = sext i8 %i.bd to i32                    ; 2 uses
  %i.bf = xor i64 %i.y, %i.r                      ; 3 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut1E, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL7offsetsE, i64 %i.bf
  %i.bi = getelementptr inbounds nuw [4096 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut2E, i64 %i.bf
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph93, %bb.l
  %.07992 = phi i64 [ %i.at, %.lr.ph93 ], [ %i.bm, %bb.l ] ; 3 uses
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.07992, i1 true) ; 2 uses
  %i.bk = trunc nuw nsw i64 %i.bj to i32          ; 2 uses
  %i.bl = add i64 %.07992, -1
  %i.bm = and i64 %i.bl, %.07992                  ; 2 uses
  %i.bn = add nuw nsw i32 %.neg, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !25
  %i.bq = and i32 %i.bn, 255
  %i.br = xor i32 %i.bq, %i.ax                    ; 2 uses
  %i.bs = xor i32 %i.ax, %i.bk                    ; 2 uses
  %i.bt = zext i8 %i.bp to i32
  %i.bu = xor i32 %i.bt, %i.n
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bv
  %i.bx = icmp ult i32 %i.br, %i.bs
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.cb = zext i32 %i.br to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %i.ce = add i32 %i.cd, %i.ca
  %i.cf = getelementptr inbounds nuw [64 x i8], ptr %i.bb, i64 %i.cb
  %i.cg = zext i32 %i.bs to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i32
  %i.ck = add i32 %i.ce, %i.cj                    ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 79856
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = load i64, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.o, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cm
  store i32 %i.ck, ptr %i.co, align 4, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not55 = icmp eq i64 %i.bm, 0
  br i1 %.not55, label %.preheader, label %bb.j, !llvm.loop !19

bb.m:                                             ; preds = %.lr.ph96, %bb.o
  %.07895 = phi i64 [ %i.au, %.lr.ph96 ], [ %i.cs, %bb.o ] ; 3 uses
  %i.cp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.07895, i1 true) ; 2 uses
  %i.cq = trunc nuw nsw i64 %i.cp to i32          ; 2 uses
  %i.cr = add nsw i64 %.07895, -1
  %i.cs = and i64 %i.cr, %.07895                  ; 2 uses
  %i.ct = add nuw nsw i32 %.neg82, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !25
  %i.cw = and i32 %i.ct, 255
  %i.cx = xor i32 %i.cw, %i.be                    ; 2 uses
  %i.cy = xor i32 %i.be, %i.cq                    ; 2 uses
  %i.cz = zext i8 %i.cv to i32
  %i.da = xor i32 %i.cz, %i.n
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.db
  %i.dd = icmp ult i32 %i.cx, %i.cy
  %i.de = zext i1 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !14
  %i.dh = zext i32 %i.cx to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = add i32 %i.dj, %i.dg
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %i.dh
  %i.dm = zext i32 %i.cy to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !13
  %i.dp = zext i8 %i.do to i32
  %i.dq = add i32 %i.dk, %i.dp                    ; 2 uses
  %i.dr = icmp ult i32 %i.dq, 79856
  br i1 %i.dr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ds = load i64, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.o, align 8, !tbaa !16
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds
  store i32 %i.dq, ptr %i.du, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not56 = icmp eq i64 %i.cs, 0
  br i1 %.not56, label %.loopexit83, label %bb.m, !llvm.loop !20

.loopexit:                                        ; preds = %bb.w, %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %.not53 = icmp eq i64 %i.dx, 0
  br i1 %.not53, label %.loopexit83, label %bb.p, !llvm.loop !21

bb.p:                                             ; preds = %.lr.ph90, %.loopexit
  %.08089 = phi i64 [ %i.ac, %.lr.ph90 ], [ %i.dx, %.loopexit ] ; 3 uses
  %i.dv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.08089, i1 true) ; 5 uses
  %3 = trunc nuw nsw i64 %i.dv to i32
  %i.dw = add i64 %.08089, -1
  %i.dx = and i64 %i.dw, %.08089                  ; 2 uses
  switch i8 %i.aj, label %bb.t [
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.dv ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !30
  %i.eb = load i64, ptr %i.dy, align 16, !tbaa !31
  %i.ec = tail call noundef i64 @llvm.pext.i64(i64 %i.j, i64 %i.eb)
  %i.ed = and i64 %i.ec, 4294967295
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !12
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.r:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.dv ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !30
  %i.ek = load i64, ptr %i.eh, align 16, !tbaa !31
  %i.el = tail call noundef i64 @llvm.pext.i64(i64 %i.j, i64 %i.ek)
  %i.em = and i64 %i.el, 4294967295
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !12
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.s:                                             ; preds = %bb.p
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr @_ZN9Stockfish6MagicsE, i64 %i.dv ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.es = load i64, ptr %i.ep, align 16, !tbaa !31
  %i.et = tail call noundef i64 @llvm.pext.i64(i64 %i.j, i64 %i.es)
  %i.eu = and i64 %i.et, 4294967295
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !30
  %i.fa = load i64, ptr %i.ex, align 16, !tbaa !31
  %i.fb = tail call noundef i64 @llvm.pext.i64(i64 %i.j, i64 %i.fa)
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !12
  %i.ff = or i64 %i.fe, %i.ew
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

bb.t:                                             ; preds = %bb.p
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.dv
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !12
  br label %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit

_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi i64 [ %i.fh, %bb.t ], [ %i.ef, %bb.q ], [ %i.eo, %bb.r ], [ %i.ff, %bb.s ]
  %i.fi = and i64 %.0.i, %i.j                     ; 2 uses
  %.not5486 = icmp eq i64 %i.fi, 0
  br i1 %.not5486, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9Stockfish10attacks_bbENS_9PieceTypeENS_6SquareEm.exit
  %i.fj = load i8, ptr %i.k, align 1, !tbaa !13
  %i.fk = xor i8 %i.fj, %i.l
  %i.fl = sext i8 %i.fk to i32                    ; 2 uses
  %i.fm = xor i32 %i.fl, %3                       ; 2 uses
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !14
  %i.fq = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %i.fn
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %.07787 = phi i64 [ %i.fi, %.lr.ph ], [ %i.ft, %bb.w ] ; 3 uses
  %i.fr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.07787, i1 true) ; 2 uses
  %4 = trunc nuw nsw i64 %i.fr to i32
  %i.fs = add i64 %.07787, -1
  %i.ft = and i64 %i.fs, %.07787                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.fr
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !25
  %i.fw = xor i32 %i.fl, %4                       ; 2 uses
  %i.fx = zext i8 %i.fv to i32
  %i.fy = xor i32 %i.fx, %i.n
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.fz
  %i.gb = icmp ult i32 %i.fm, %i.fw
  %i.gc = zext i1 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !14
  %i.gf = add i32 %i.fp, %i.ge
  %i.gg = zext i32 %i.fw to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add i32 %i.gf, %i.gj                    ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 79856
  br i1 %i.gl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gm = load i64, ptr %i.o, align 8, !tbaa !16  ; 2 uses
  %i.gn = add i64 %i.gm, 1
  store i64 %i.gn, ptr %i.o, align 8, !tbaa !16
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gm
  store i32 %i.gk, ptr %i.go, align 4, !tbaa !14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not54 = icmp eq i64 %i.ft, 0
  br i1 %.not54, label %.loopexit, label %bb.u, !llvm.loop !22

.loopexit83:                                      ; preds = %.loopexit, %bb.o, %.preheader84, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9Stockfish4Eval4NNUE8Features11FullThreats22append_changed_indicesENS_5ColorENS_6SquareERKNS_12DirtyThreatsERNS_9ValueListIjLm128EEESB_PNS3_15FusedUpdateDataEb(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(416) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(520) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(520) %4, ptr nofree noundef captures(address_is_null) %5, i1 noundef zeroext %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not50 = icmp eq i64 %i.b, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not43 = icmp eq ptr %5, null
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = zext i8 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN9Stockfish4Eval4NNUE8Features11FullThreats9OrientTBLE, i64 %i.e ; 2 uses
  %i.g = mul i8 %0, 56                            ; 2 uses
  %i.h = shl i8 %0, 3
  %i.i = sext i8 %i.h to i32                      ; 8 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.j = load i8, ptr %i.f, align 1, !tbaa !13
  %i.k = xor i8 %i.j, %i.g
  %i.l = sext i8 %i.k to i32                      ; 6 uses
  %i.m = add i64 %.idx, -4                        ; 2 uses
  %i.n = and i64 %i.m, 4
  %lcmp.mod.not.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.split.us
  %i.o = load i32, ptr %2, align 8, !tbaa !34     ; 5 uses
  %i.p = lshr i32 %i.o, 20
  %i.q = and i32 %i.p, 15
  %i.r = lshr i32 %i.o, 16
  %i.s = and i32 %i.r, 15
  %i.t = lshr i32 %i.o, 8
  %i.u = and i32 %i.o, 255
  %i.v = xor i32 %i.u, %i.l                       ; 2 uses
  %i.w = and i32 %i.t, 255
  %i.x = xor i32 %i.w, %i.l                       ; 2 uses
  %i.y = xor i32 %i.q, %i.i
  %i.z = xor i32 %i.s, %i.i
  %i.aa = zext i32 %i.y to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut1E, i64 %i.aa
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = icmp ult i32 %i.v, %i.x
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL7offsetsE, i64 %i.aa
  %i.aj = zext i32 %i.v to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !14
  %i.am = add i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw [4096 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut2E, i64 %i.aa
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %i.aj
  %i.ap = zext i32 %i.x to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i32
  %i.at = add i32 %i.am, %i.as                    ; 2 uses
  %i.au = icmp ult i32 %i.at, 79856
  br i1 %i.au, label %bb.b, label %.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.prol.preheader
  %i.av = icmp slt i32 %i.o, 0
  %i.aw = select i1 %i.av, ptr %4, ptr %3         ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 512 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  store i32 %i.at, ptr %i.ba, align 4, !tbaa !14
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.b, %.prol.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.split.us
  %.04051.us.unr = phi ptr [ %2, %.lr.ph.split.us ], [ %i.bb, %.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i64 %i.m, 0
  br i1 %i.bc, label %._crit_edge, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.prol.loopexit, %bb.f
  %.04051.us = phi ptr [ %i.ee, %bb.f ], [ %.04051.us.unr, %.prol.loopexit ] ; 3 uses
  %i.bd = load i32, ptr %.04051.us, align 4, !tbaa !34 ; 5 uses
  %i.be = lshr i32 %i.bd, 20
  %i.bf = and i32 %i.be, 15
  %i.bg = lshr i32 %i.bd, 16
  %i.bh = and i32 %i.bg, 15
  %i.bi = lshr i32 %i.bd, 8
  %i.bj = and i32 %i.bd, 255
  %i.bk = xor i32 %i.bj, %i.l                     ; 2 uses
  %i.bl = and i32 %i.bi, 255
  %i.bm = xor i32 %i.bl, %i.l                     ; 2 uses
  %i.bn = xor i32 %i.bf, %i.i
  %i.bo = xor i32 %i.bh, %i.i
  %i.bp = zext i32 %i.bn to i64                   ; 3 uses
  %i.bq = getelementptr inbounds nuw [128 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut1E, i64 %i.bp
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = icmp ult i32 %i.bk, %i.bm
  %i.bu = zext i1 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.bx = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL7offsetsE, i64 %i.bp
  %i.by = zext i32 %i.bk to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !14
  %i.cb = add i32 %i.ca, %i.bw
  %i.cc = getelementptr inbounds nuw [4096 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut2E, i64 %i.bp
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.cc, i64 %i.by
  %i.ce = zext i32 %i.bm to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add i32 %i.cb, %i.ch                    ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 79856
  br i1 %i.cj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.us.new
  %i.ck = icmp slt i32 %i.bd, 0
  %i.cl = select i1 %i.ck, ptr %4, ptr %3         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 512 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !16 ; 2 uses
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cn
  store i32 %i.ci, ptr %i.cp, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.new
  %i.cq = getelementptr inbounds nuw i8, ptr %.04051.us, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !34 ; 5 uses
  %i.cs = lshr i32 %i.cr, 20
  %i.ct = and i32 %i.cs, 15
  %i.cu = lshr i32 %i.cr, 16
  %i.cv = and i32 %i.cu, 15
  %i.cw = lshr i32 %i.cr, 8
  %i.cx = and i32 %i.cr, 255
  %i.cy = xor i32 %i.cx, %i.l                     ; 2 uses
  %i.cz = and i32 %i.cw, 255
  %i.da = xor i32 %i.cz, %i.l                     ; 2 uses
  %i.db = xor i32 %i.ct, %i.i
  %i.dc = xor i32 %i.cv, %i.i
  %i.dd = zext i32 %i.db to i64                   ; 3 uses
  %i.de = getelementptr inbounds nuw [128 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut1E, i64 %i.dd
  %i.df = zext i32 %i.dc to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  %i.dh = icmp ult i32 %i.cy, %i.da
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !14
  %i.dl = getelementptr inbounds nuw [256 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL7offsetsE, i64 %i.dd
  %i.dm = zext i32 %i.cy to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !14
  %i.dp = add i32 %i.do, %i.dk
  %i.dq = getelementptr inbounds nuw [4096 x i8], ptr @_ZN9Stockfish4Eval4NNUE8FeaturesL10index_lut2E, i64 %i.dd
  %i.dr = getelementptr inbounds nuw [64 x i8], ptr %i.dq, i64 %i.dm
  %i.ds = zext i32 %i.da to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
end_hunk_0
