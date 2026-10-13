Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 70
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@GHASH:bb.a
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = lshr i32 %i.bn, 4
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.032255, i64 16 ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  %i.bx = load i64, ptr %i.bq, align 8, !tbaa !20
  %i.by = xor i64 %i.bx, %i.bl                    ; 2 uses
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !20
  %i.ca = xor i64 %i.bz, %i.aw                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 56
  %i.cc = and i64 %i.cb, 15
  %i.cd = and i64 %i.by, 1085102592571150095      ; 2 uses
  %i.ce = lshr i64 %i.ca, 4
  %i.cf = and i64 %i.ce, 1085102592571150095
  %i.cg = shl i64 %i.ca, 12
  %i.ch = and i64 %i.cg, -1085102592571150336
  %i.ci = lshr i64 %i.cd, 52
  %i.cj = or disjoint i64 %i.ch, %i.ci
  %i.ck = or disjoint i64 %i.cj, %i.cf
  %i.cl = lshr i64 %i.by, 4
  %i.cm = and i64 %i.cl, 1085102592571150095
  %i.cn = shl i64 %i.cd, 12
  %i.co = or disjoint i64 %i.cm, %i.cn
  %i.cp = load i64, ptr %i.bu, align 8, !tbaa !20
  %i.cq = xor i64 %i.co, %i.cp                    ; 7 uses
  %i.cr = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.cs = xor i64 %i.ck, %i.cr                    ; 12 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.cc
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !203
  %i.cv = zext i16 %i.cu to i64
  %i.cw = xor i64 %i.cq, %i.cv                    ; 5 uses
  store i64 %i.cw, ptr %i.a, align 16, !tbaa !20
  store i64 %i.cs, ptr %i.i, align 8, !tbaa !20
  %i.cx = trunc i64 %i.cw to i8                   ; 2 uses
  %i.cy = lshr i64 %i.cw, 8
  %i.cz = trunc i64 %i.cy to i8                   ; 2 uses
  %i.da = lshr i64 %i.cq, 16
  %i.db = trunc i64 %i.da to i8                   ; 2 uses
  %i.dc = lshr i64 %i.cq, 24
  %i.dd = trunc i64 %i.dc to i8                   ; 2 uses
  %i.de = lshr i64 %i.cq, 32
  %i.df = trunc i64 %i.de to i8                   ; 2 uses
  %i.dg = lshr i64 %i.cq, 40
  %i.dh = trunc i64 %i.dg to i8                   ; 2 uses
  %i.di = lshr i64 %i.cq, 48
  %i.dj = trunc i64 %i.di to i8                   ; 2 uses
  %i.dk = lshr i64 %i.cq, 56
  %i.dl = trunc nuw i64 %i.dk to i8               ; 2 uses
  %i.dm = insertelement <8 x i8> poison, i8 %i.cx, i64 0
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.cz, i64 1
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.db, i64 2
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dd, i64 3
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.df, i64 4
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dh, i64 5
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dj, i64 6
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 7
  %i.du = bitcast i64 %i.cs to <8 x i8>
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !200

._crit_edge.loopexit:                             ; preds = %GMULT.exit
  %i.dv = lshr i64 %i.cs, 56
  %i.dw = trunc nuw i64 %i.dv to i8
  %i.dx = lshr i64 %i.cs, 48
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = lshr i64 %i.cs, 40
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = lshr i64 %i.cs, 32
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = lshr i64 %i.cs, 24
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = lshr i64 %i.cs, 16
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = lshr i64 %i.cs, 8
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = trunc i64 %i.cs to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ek = phi i8 [ 0, %bb.c ], [ %i.dw, %._crit_edge.loopexit ]
  %i.el = phi i8 [ 0, %bb.c ], [ %i.dy, %._crit_edge.loopexit ]
  %i.em = phi i8 [ 0, %bb.c ], [ %i.ea, %._crit_edge.loopexit ]
  %i.en = phi i8 [ 0, %bb.c ], [ %i.ec, %._crit_edge.loopexit ]
  %i.eo = phi i8 [ 0, %bb.c ], [ %i.ee, %._crit_edge.loopexit ]
  %i.ep = phi i8 [ 0, %bb.c ], [ %i.eg, %._crit_edge.loopexit ]
  %i.eq = phi i8 [ 0, %bb.c ], [ %i.ei, %._crit_edge.loopexit ]
  %i.er = phi i8 [ 0, %bb.c ], [ %i.ej, %._crit_edge.loopexit ]
  %i.es = phi i8 [ 0, %bb.c ], [ %i.dl, %._crit_edge.loopexit ]
  %i.et = phi i8 [ 0, %bb.c ], [ %i.dj, %._crit_edge.loopexit ]
  %i.eu = phi i8 [ 0, %bb.c ], [ %i.dh, %._crit_edge.loopexit ]
  %i.ev = phi i8 [ 0, %bb.c ], [ %i.df, %._crit_edge.loopexit ]
  %i.ew = phi i8 [ 0, %bb.c ], [ %i.dd, %._crit_edge.loopexit ]
  %i.ex = phi i8 [ 0, %bb.c ], [ %i.db, %._crit_edge.loopexit ]
  %i.ey = phi i8 [ 0, %bb.c ], [ %i.cz, %._crit_edge.loopexit ]
  %i.ez = phi i8 [ 0, %bb.c ], [ %i.cx, %._crit_edge.loopexit ]
  %i.fa = phi i64 [ 0, %bb.c ], [ %i.cs, %._crit_edge.loopexit ] ; 2 uses
  %i.fb = phi i64 [ 0, %bb.c ], [ %i.cw, %._crit_edge.loopexit ] ; 2 uses
  %.032.lcssa = phi ptr [ %1, %bb.c ], [ %i.bw, %._crit_edge.loopexit ]
  %.not41 = icmp eq i32 %i.g, 0
  %i.fc = insertelement <4 x i8> poison, i8 %i.ex, i64 0
  %i.fd = insertelement <4 x i8> %i.fc, i8 %i.ew, i64 1
  %i.fe = insertelement <4 x i8> %i.fd, i8 %i.ev, i64 2
  %i.ff = insertelement <4 x i8> %i.fe, i8 %i.eu, i64 3
  br i1 %.not41, label %bb.g, label %.lr.ph.i.i73

.lr.ph.i.i73:                                     ; preds = %._crit_edge
  %i.fg = zext nneg i32 %i.g to i64               ; 3 uses
  %i.fh = sub nuw nsw i64 16, %i.fg
  %i.fi = getelementptr i8, ptr %i.b, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fi, i8 0, i64 %i.fh, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %.032.lcssa, i64 %i.fg, i1 false)
  %.0. = load i64, ptr %i.b, align 16, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fk = xor i64 %i.fb, %.0.                     ; 3 uses
  store i64 %i.fk, ptr %i.a, align 16, !tbaa !20
  %.8..ptr223.1.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8. = load i64, ptr %.8..ptr223.1.sroa_idx, align 8, !tbaa !20
  %i.fl = xor i64 %i.fa, %.8.
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i73
  %indvars.iv.i76 = phi i64 [ 15, %.lr.ph.i.i73 ], [ %indvars.iv.next.i80, %bb.f ] ; 3 uses
  %.sroa.24.068.i77 = phi i64 [ 0, %.lr.ph.i.i73 ], [ %i.gj, %bb.f ]
  %.sroa.0.067.i78 = phi i64 [ 0, %.lr.ph.i.i73 ], [ %i.gy, %bb.f ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i76
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !21
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = and i32 %i.fp, 15
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fr ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !20
  %i.fu = xor i64 %i.ft, %.sroa.0.067.i78         ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !20
  %i.fx = xor i64 %i.fw, %.sroa.24.068.i77        ; 3 uses
  %i.fy = lshr i64 %i.fx, 56
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fu, i64 8)
  %i.ga = shl i64 %i.fu, 8
  %i.gb = lshr i32 %i.fp, 4
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.gc ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 256
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !20
  %i.gg = xor i64 %i.ga, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 264
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !20
  %i.gj = xor i64 %i.fz, %i.gi                    ; 2 uses
  %i.gk = and i64 %i.fy, 15
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !203
  %i.go = zext i16 %i.gn to i64
  %i.gp = xor i64 %i.gg, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !20
  %i.gs = lshr i64 %i.gr, 56
  %i.gt = lshr i64 %i.fx, 60
  %.masked.i79 = and i64 %i.gs, 15
  %i.gu = xor i64 %.masked.i79, %i.gt
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !203
  %i.gx = zext i16 %i.gw to i64
  %i.gy = xor i64 %i.gp, %i.gx                    ; 2 uses
  %indvars.iv.next.i80 = add nsw i64 %indvars.iv.i76, -1
  %i.gz = icmp samesign ugt i64 %indvars.iv.i76, 1
  br i1 %i.gz, label %bb.f, label %GMULT.exit81, !llvm.loop !199

GMULT.exit81:                                     ; preds = %bb.f
  %i.ha = and i64 %i.fk, 15
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = lshr i64 %i.fk, 4
  %i.he = and i64 %i.hd, 15
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i64, ptr %i.hb, align 8, !tbaa !20
  %i.hi = xor i64 %i.hh, %i.gy                    ; 2 uses
  %i.hj = load i64, ptr %i.hc, align 8, !tbaa !20
  %i.hk = xor i64 %i.hj, %i.gj                    ; 3 uses
  %i.hl = lshr i64 %i.hk, 56
  %i.hm = and i64 %i.hl, 15
  %i.hn = and i64 %i.hi, 1085102592571150095      ; 2 uses
  %i.ho = lshr i64 %i.hk, 4
  %i.hp = and i64 %i.ho, 1085102592571150095
  %i.hq = shl i64 %i.hk, 12
  %i.hr = and i64 %i.hq, -1085102592571150336
  %i.hs = lshr i64 %i.hn, 52
  %i.ht = or disjoint i64 %i.hr, %i.hs
  %i.hu = or disjoint i64 %i.ht, %i.hp
  %i.hv = lshr i64 %i.hi, 4
  %i.hw = and i64 %i.hv, 1085102592571150095
  %i.hx = shl i64 %i.hn, 12
  %i.hy = or disjoint i64 %i.hw, %i.hx
  %i.hz = load i64, ptr %i.hf, align 8, !tbaa !20
  %i.ia = xor i64 %i.hy, %i.hz                    ; 4 uses
  %i.ib = load i64, ptr %i.hg, align 8, !tbaa !20
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.hm
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !203
  %i.ie = zext i16 %i.id to i64
  %i.if = xor i64 %i.ia, %i.ie                    ; 3 uses
  %i.ig = trunc i64 %i.if to i8
  %7 = xor i64 %i.hu, %i.ib                       ; 9 uses
  %i.ih = lshr i64 %i.if, 8
  %i.ii = trunc i64 %i.ih to i8
  %i.ij = lshr i64 %i.ia, 48
  %i.ik = trunc i64 %i.ij to i8
  %i.il = lshr i64 %i.ia, 56
  %i.im = trunc nuw i64 %i.il to i8
  %i.in = trunc i64 %7 to i8
  %i.io = lshr i64 %7, 8
  %i.ip = trunc i64 %i.io to i8
  %i.iq = lshr i64 %7, 16
  %i.ir = trunc i64 %i.iq to i8
  %i.is = lshr i64 %7, 24
  %i.it = trunc i64 %i.is to i8
  %i.iu = lshr i64 %7, 32
  %i.iv = trunc i64 %i.iu to i8
  %i.iw = lshr i64 %7, 40
  %i.ix = trunc i64 %i.iw to i8
  %i.iy = lshr i64 %7, 48
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = lshr i64 %7, 56
  %i.jb = trunc nuw i64 %i.ja to i8
  %i.jc = bitcast i64 %i.ia to <8 x i8>
  %i.jd = shufflevector <8 x i8> %i.jc, <8 x i8> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %GMULT.exit81, %bb.b
  %i.je = phi i64 [ %i.fa, %._crit_edge ], [ %7, %GMULT.exit81 ], [ 0, %bb.b ] ; 3 uses
  %i.jf = phi i64 [ %i.fb, %._crit_edge ], [ %i.if, %GMULT.exit81 ], [ 0, %bb.b ] ; 3 uses
  %i.jg = phi i8 [ %i.ek, %._crit_edge ], [ %i.jb, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jh = phi i8 [ %i.el, %._crit_edge ], [ %i.iz, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.ji = phi i8 [ %i.em, %._crit_edge ], [ %i.ix, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jj = phi i8 [ %i.en, %._crit_edge ], [ %i.iv, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jk = phi i8 [ %i.eo, %._crit_edge ], [ %i.it, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jl = phi i8 [ %i.ep, %._crit_edge ], [ %i.ir, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jm = phi i8 [ %i.eq, %._crit_edge ], [ %i.ip, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jn = phi i8 [ %i.er, %._crit_edge ], [ %i.in, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jo = phi i8 [ %i.es, %._crit_edge ], [ %i.im, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jp = phi i8 [ %i.et, %._crit_edge ], [ %i.ik, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jq = phi i8 [ %i.ey, %._crit_edge ], [ %i.ii, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.jr = phi i8 [ %i.ez, %._crit_edge ], [ %i.ig, %GMULT.exit81 ], [ 0, %bb.b ]
  %i.js = phi <4 x i8> [ %i.ff, %._crit_edge ], [ %i.jd, %GMULT.exit81 ], [ zeroinitializer, %bb.b ]
  %i.jt = icmp ne i32 %4, 0
  %i.ju = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.ju, %i.jt
  br i1 %or.cond3, label %bb.h, label %.lr.ph.i.i187

bb.h:                                             ; preds = %bb.g
  %i.jv = lshr i32 %4, 4                          ; 2 uses
  %i.jw = and i32 %4, 15                          ; 2 uses
  %.not42257 = icmp eq i32 %i.jv, 0
  br i1 %.not42257, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.h
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.jz = insertelement <8 x i8> poison, i8 %i.jq, i64 0
  %i.ka = shufflevector <4 x i8> %i.js, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kb = shufflevector <8 x i8> %i.jz, <8 x i8> %i.ka, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.kc = insertelement <8 x i8> %i.kb, i8 %i.jp, i64 5
  %i.kd = insertelement <8 x i8> %i.kc, i8 %i.jo, i64 6
  %i.ke = insertelement <8 x i8> %i.kd, i8 %i.jn, i64 7
  %i.kf = insertelement <4 x i8> poison, i8 %i.jm, i64 0
  %i.kg = insertelement <4 x i8> %i.kf, i8 %i.jl, i64 1
  %i.kh = insertelement <4 x i8> %i.kg, i8 %i.jk, i64 2
  %i.ki = insertelement <4 x i8> %i.kh, i8 %i.jj, i64 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph261, %GMULT.exit119
  %i.kj = phi i64 [ %i.je, %.lr.ph261 ], [ %9, %GMULT.exit119 ]
  %i.kk = phi i64 [ %i.jf, %.lr.ph261 ], [ %i.og, %GMULT.exit119 ]
  %i.kl = phi i8 [ %i.jg, %.lr.ph261 ], [ %i.pb, %GMULT.exit119 ]
  %i.km = phi i8 [ %i.jh, %.lr.ph261 ], [ %i.oz, %GMULT.exit119 ]
  %i.kn = phi i8 [ %i.ji, %.lr.ph261 ], [ %i.ox, %GMULT.exit119 ]
  %i.ko = phi i8 [ %i.jr, %.lr.ph261 ], [ %8, %GMULT.exit119 ]
  %.1259 = phi i32 [ %i.jv, %.lr.ph261 ], [ %i.kr, %GMULT.exit119 ]
  %.033258 = phi ptr [ %3, %.lr.ph261 ], [ %i.nh, %GMULT.exit119 ] ; 5 uses
  %i.kp = phi <8 x i8> [ %i.ke, %.lr.ph261 ], [ %i.pj, %GMULT.exit119 ]
  %i.kq = phi <4 x i8> [ %i.ki, %.lr.ph261 ], [ %i.pl, %GMULT.exit119 ]
  %i.kr = add nsw i32 %.1259, -1                  ; 2 uses
  %i.ks = ptrtoint ptr %.033258 to i64
  %i.kt = and i64 %i.ks, 7
  %or.cond.i82 = icmp eq i64 %i.kt, 0
  br i1 %or.cond.i82, label %.lr.ph.i.i111.preheader, label %.lr.ph56.i87.preheader

.lr.ph.i.i111.preheader:                          ; preds = %bb.i
  %i.ku = load i64, ptr %.033258, align 8, !tbaa !20
  %i.kv = xor i64 %i.kk, %i.ku                    ; 2 uses
  store i64 %i.kv, ptr %i.a, align 16, !tbaa !20
  %.ptr231.1 = getelementptr inbounds nuw i8, ptr %.033258, i64 8
  %i.kw = load i64, ptr %.ptr231.1, align 8, !tbaa !20
  %i.kx = xor i64 %i.kj, %i.kw
  store i64 %i.kx, ptr %i.jy, align 8, !tbaa !20
  %i.ky = trunc i64 %i.kv to i8
  br label %xorbuf.exit113

.lr.ph56.i87.preheader:                           ; preds = %bb.i
  %i.kz = load <16 x i8>, ptr %.033258, align 1, !tbaa !21
  %i.la = insertelement <16 x i8> poison, i8 %i.ko, i64 0
  %i.lb = shufflevector <8 x i8> %i.kp, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lc = shufflevector <16 x i8> %i.la, <16 x i8> %i.lb, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ld = shufflevector <4 x i8> %i.kq, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.le = shufflevector <16 x i8> %i.lc, <16 x i8> %i.ld, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison>
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kn, i64 13
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.km, i64 14
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kl, i64 15
  %i.li = xor <16 x i8> %i.lh, %i.kz              ; 2 uses
  store <16 x i8> %i.li, ptr %i.a, align 16, !tbaa !21
  %i.lj = extractelement <16 x i8> %i.li, i64 0
  br label %xorbuf.exit113

xorbuf.exit113:                                   ; preds = %.lr.ph56.i87.preheader, %.lr.ph.i.i111.preheader
  %i.lk = phi i8 [ %i.lj, %.lr.ph56.i87.preheader ], [ %i.ky, %.lr.ph.i.i111.preheader ]
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %xorbuf.exit113
  %indvars.iv.i114 = phi i64 [ 15, %xorbuf.exit113 ], [ %indvars.iv.next.i118, %bb.j ] ; 3 uses
  %.sroa.24.068.i115 = phi i64 [ 0, %xorbuf.exit113 ], [ %i.mh, %bb.j ]
  %.sroa.0.067.i116 = phi i64 [ 0, %xorbuf.exit113 ], [ %i.mw, %bb.j ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i114
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !21
  %i.ln = zext i8 %i.lm to i32                    ; 2 uses
  %i.lo = and i32 %i.ln, 15
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.lp ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !20
  %i.ls = xor i64 %i.lr, %.sroa.0.067.i116        ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !20
  %i.lv = xor i64 %i.lu, %.sroa.24.068.i115       ; 3 uses
  %i.lw = lshr i64 %i.lv, 56
  %i.lx = tail call i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.ls, i64 8)
  %i.ly = shl i64 %i.ls, 8
  %i.lz = lshr i32 %i.ln, 4
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.ma ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 256
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 264
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !20
  %i.mf = xor i64 %i.ly, %i.me
  %i.mg = load i64, ptr %i.md, align 8, !tbaa !20
  %i.mh = xor i64 %i.lx, %i.mg                    ; 2 uses
  %i.mi = and i64 %i.lw, 15
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !203
  %i.mm = zext i16 %i.ml to i64
  %i.mn = xor i64 %i.mf, %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !20
  %i.mq = lshr i64 %i.mp, 56
  %i.mr = lshr i64 %i.lv, 60
  %.masked.i117 = and i64 %i.mq, 15
  %i.ms = xor i64 %.masked.i117, %i.mr
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !203
  %i.mv = zext i16 %i.mu to i64
  %i.mw = xor i64 %i.mn, %i.mv                    ; 2 uses
  %indvars.iv.next.i118 = add nsw i64 %indvars.iv.i114, -1
  %i.mx = icmp samesign ugt i64 %indvars.iv.i114, 1
  br i1 %i.mx, label %bb.j, label %GMULT.exit119, !llvm.loop !199

GMULT.exit119:                                    ; preds = %bb.j
  %i.my = zext i8 %i.lk to i32                    ; 2 uses
  %i.mz = and i32 %i.my, 15
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.na ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = lshr i32 %i.my, 4
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.ne ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %.033258, i64 16 ; 2 uses
  %.not42 = icmp eq i32 %i.kr, 0
  %i.ni = load i64, ptr %i.nb, align 8, !tbaa !20
  %i.nj = xor i64 %i.ni, %i.mw                    ; 2 uses
  %i.nk = load i64, ptr %i.nc, align 8, !tbaa !20
  %i.nl = xor i64 %i.nk, %i.mh                    ; 3 uses
  %i.nm = lshr i64 %i.nl, 56
  %i.nn = and i64 %i.nm, 15
  %i.no = and i64 %i.nj, 1085102592571150095      ; 2 uses
  %i.np = lshr i64 %i.nl, 4
  %i.nq = and i64 %i.np, 1085102592571150095
  %i.nr = shl i64 %i.nl, 12
  %i.ns = and i64 %i.nr, -1085102592571150336
  %i.nt = lshr i64 %i.no, 52
  %i.nu = or disjoint i64 %i.ns, %i.nt
  %i.nv = or disjoint i64 %i.nu, %i.nq
  %i.nw = lshr i64 %i.nj, 4
  %i.nx = and i64 %i.nw, 1085102592571150095
  %i.ny = shl i64 %i.no, 12
  %i.nz = or disjoint i64 %i.nx, %i.ny
  %i.oa = load i64, ptr %i.nf, align 8, !tbaa !20
  %i.ob = xor i64 %i.nz, %i.oa                    ; 7 uses
  %i.oc = load i64, ptr %i.ng, align 8, !tbaa !20
  %i.od = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.nn
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !203
  %i.of = zext i16 %i.oe to i64
  %i.og = xor i64 %i.ob, %i.of                    ; 5 uses
  store i64 %i.og, ptr %i.a, align 16, !tbaa !20
  %8 = trunc i64 %i.og to i8
  %9 = xor i64 %i.nv, %i.oc                       ; 8 uses
  store i64 %9, ptr %i.jy, align 8, !tbaa !20
  %i.oh = lshr i64 %i.og, 8
  %i.oi = trunc i64 %i.oh to i8
  %i.oj = lshr i64 %i.ob, 16
  %i.ok = trunc i64 %i.oj to i8
  %i.ol = lshr i64 %i.ob, 24
  %i.om = trunc i64 %i.ol to i8
  %i.on = lshr i64 %i.ob, 32
  %i.oo = trunc i64 %i.on to i8
  %i.op = lshr i64 %i.ob, 40
  %i.oq = trunc i64 %i.op to i8
  %i.or = lshr i64 %i.ob, 48
  %i.os = trunc i64 %i.or to i8
  %i.ot = lshr i64 %i.ob, 56
  %i.ou = trunc nuw i64 %i.ot to i8
  %i.ov = trunc i64 %9 to i8
  %i.ow = lshr i64 %9, 40
  %i.ox = trunc i64 %i.ow to i8
  %i.oy = lshr i64 %9, 48
  %i.oz = trunc i64 %i.oy to i8
  %i.pa = lshr i64 %9, 56
  %i.pb = trunc nuw i64 %i.pa to i8
  %i.pc = insertelement <8 x i8> poison, i8 %i.oi, i64 0
  %i.pd = insertelement <8 x i8> %i.pc, i8 %i.ok, i64 1
  %i.pe = insertelement <8 x i8> %i.pd, i8 %i.om, i64 2
  %i.pf = insertelement <8 x i8> %i.pe, i8 %i.oo, i64 3
  %i.pg = insertelement <8 x i8> %i.pf, i8 %i.oq, i64 4
  %i.ph = insertelement <8 x i8> %i.pg, i8 %i.os, i64 5
  %i.pi = insertelement <8 x i8> %i.ph, i8 %i.ou, i64 6
  %i.pj = insertelement <8 x i8> %i.pi, i8 %i.ov, i64 7
  %i.pk = bitcast i64 %9 to <8 x i8>
  %i.pl = shufflevector <8 x i8> %i.pk, <8 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  br i1 %.not42, label %._crit_edge262, label %bb.i, !llvm.loop !201

._crit_edge262:                                   ; preds = %GMULT.exit119, %bb.h
  %i.pm = phi i64 [ %i.je, %bb.h ], [ %9, %GMULT.exit119 ] ; 2 uses
  %i.pn = phi i64 [ %i.jf, %bb.h ], [ %i.og, %GMULT.exit119 ] ; 2 uses
  %.033.lcssa = phi ptr [ %3, %bb.h ], [ %i.nh, %GMULT.exit119 ]
  %.not43 = icmp eq i32 %i.jw, 0
  br i1 %.not43, label %.lr.ph.i.i187, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %._crit_edge262
  %i.po = zext nneg i32 %i.jw to i64              ; 3 uses
  %i.pp = sub nuw nsw i64 16, %i.po
  %i.pq = getelementptr i8, ptr %i.b, i64 %i.po
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pq, i8 0, i64 %i.pp, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %.033.lcssa, i64 %i.po, i1 false)
  %.0.279 = load i64, ptr %i.b, align 16, !tbaa !20
  %i.pr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ps = xor i64 %i.pn, %.0.279                  ; 3 uses
  store i64 %i.ps, ptr %i.a, align 16, !tbaa !20
  %.8..ptr235.1.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8.281 = load i64, ptr %.8..ptr235.1.sroa_idx, align 8, !tbaa !20
  %i.pt = xor i64 %i.pm, %.8.281
  store i64 %i.pt, ptr %i.pr, align 8, !tbaa !20
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i149
  %indvars.iv.i152 = phi i64 [ 15, %.lr.ph.i.i149 ], [ %indvars.iv.next.i156, %bb.k ] ; 3 uses
  %.sroa.24.068.i153 = phi i64 [ 0, %.lr.ph.i.i149 ], [ %i.qr, %bb.k ]
  %.sroa.0.067.i154 = phi i64 [ 0, %.lr.ph.i.i149 ], [ %i.rg, %bb.k ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i152
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !21
  %i.px = zext i8 %i.pw to i32                    ; 2 uses
  %i.py = and i32 %i.px, 15
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.pz ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !20
  %i.qc = xor i64 %i.qb, %.sroa.0.067.i154        ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !20
  %i.qf = xor i64 %i.qe, %.sroa.24.068.i153       ; 3 uses
  %i.qg = lshr i64 %i.qf, 56
  %i.qh = tail call i64 @llvm.fshl.i64(i64 %i.qf, i64 %i.qc, i64 8)
  %i.qi = shl i64 %i.qc, 8
  %i.qj = lshr i32 %i.px, 4
  %i.qk = zext nneg i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.qk ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 256
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !20
  %i.qo = xor i64 %i.qi, %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ql, i64 264
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !20
  %i.qr = xor i64 %i.qh, %i.qq                    ; 2 uses
  %i.qs = and i64 %i.qg, 15
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !203
  %i.qw = zext i16 %i.qv to i64
  %i.qx = xor i64 %i.qo, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !20
  %i.ra = lshr i64 %i.qz, 56
  %i.rb = lshr i64 %i.qf, 60
  %.masked.i155 = and i64 %i.ra, 15
  %i.rc = xor i64 %.masked.i155, %i.rb
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.rc
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !203
  %i.rf = zext i16 %i.re to i64
  %i.rg = xor i64 %i.qx, %i.rf                    ; 2 uses
  %indvars.iv.next.i156 = add nsw i64 %indvars.iv.i152, -1
  %i.rh = icmp samesign ugt i64 %indvars.iv.i152, 1
  br i1 %i.rh, label %bb.k, label %GMULT.exit157, !llvm.loop !199

GMULT.exit157:                                    ; preds = %bb.k
  %i.ri = and i64 %i.ps, 15
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.ri ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !20
  %i.rl = xor i64 %i.rk, %i.rg                    ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !20
  %i.ro = xor i64 %i.rn, %i.qr                    ; 3 uses
  %i.rp = lshr i64 %i.ro, 56
  %i.rq = and i64 %i.rp, 15
  %i.rr = and i64 %i.rl, 1085102592571150095      ; 2 uses
  %i.rs = lshr i64 %i.ro, 4
  %i.rt = and i64 %i.rs, 1085102592571150095
  %i.ru = shl i64 %i.ro, 12
  %i.rv = and i64 %i.ru, -1085102592571150336
  %i.rw = lshr i64 %i.rr, 52
  %i.rx = or disjoint i64 %i.rv, %i.rw
  %i.ry = or disjoint i64 %i.rx, %i.rt
  %i.rz = lshr i64 %i.rl, 4
  %i.sa = and i64 %i.rz, 1085102592571150095
  %i.sb = shl i64 %i.rr, 12
  %i.sc = or disjoint i64 %i.sa, %i.sb
  %i.sd = lshr i64 %i.ps, 4
  %i.se = and i64 %i.sd, 15
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.se ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !20
  %i.sh = xor i64 %i.sc, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !20
  %i.sk = xor i64 %i.ry, %i.sj
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.rq
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !203
  %i.sn = zext i16 %i.sm to i64
  %i.so = xor i64 %i.sh, %i.sn
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %._crit_edge262, %GMULT.exit157, %bb.g
  %i.sp = phi i64 [ %i.pm, %._crit_edge262 ], [ %i.sk, %GMULT.exit157 ], [ %i.je, %bb.g ]
  %i.sq = phi i64 [ %i.pn, %._crit_edge262 ], [ %i.so, %GMULT.exit157 ], [ %i.jf, %bb.g ]
  %i.sr = lshr i32 %2, 29
  %i.ss = shl i32 %2, 3                           ; 4 uses
  store i8 0, ptr %i.b, align 16, !tbaa !21
  %.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %.1..sroa_idx, align 1, !tbaa !21
  %.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %.2..sroa_idx, align 2, !tbaa !21
  %i.st = trunc nuw nsw i32 %i.sr to i8
  %.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.st, ptr %.3..sroa_idx, align 1, !tbaa !21
  %i.su = lshr i32 %i.ss, 24
  %i.sv = trunc nuw i32 %i.su to i8
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.sv, ptr %.4..sroa_idx, align 4, !tbaa !21
  %i.sw = lshr i32 %i.ss, 16
  %i.sx = trunc i32 %i.sw to i8
  %.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.sx, ptr %.5..sroa_idx, align 1, !tbaa !21
  %i.sy = lshr i32 %i.ss, 8
  %i.sz = trunc i32 %i.sy to i8
  %.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.sz, ptr %.6..sroa_idx, align 2, !tbaa !21
  %i.ta = trunc i32 %i.ss to i8
  %.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.ta, ptr %.7..sroa_idx, align 1, !tbaa !21
  %i.tb = lshr i32 %4, 29
  %i.tc = shl i32 %4, 3                           ; 4 uses
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 0, ptr %.8..sroa_idx, align 8, !tbaa !21
  %.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %.9..sroa_idx, align 1, !tbaa !21
  %.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 0, ptr %.10..sroa_idx, align 2, !tbaa !21
  %i.td = trunc nuw nsw i32 %i.tb to i8
  %.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.td, ptr %.11..sroa_idx, align 1, !tbaa !21
  %i.te = lshr i32 %i.tc, 24
  %i.tf = trunc nuw i32 %i.te to i8
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.tf, ptr %.12..sroa_idx, align 4, !tbaa !21
  %i.tg = lshr i32 %i.tc, 16
  %i.th = trunc i32 %i.tg to i8
  %.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.th, ptr %.13..sroa_idx, align 1, !tbaa !21
  %i.ti = lshr i32 %i.tc, 8
  %i.tj = trunc i32 %i.ti to i8
  %.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.tj, ptr %.14..sroa_idx, align 2, !tbaa !21
  %i.tk = trunc i32 %i.tc to i8
  %.15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 %i.tk, ptr %.15..sroa_idx, align 1, !tbaa !21
  %.0.280 = load i64, ptr %i.b, align 16, !tbaa !20
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.tm = xor i64 %i.sq, %.0.280                  ; 3 uses
  store i64 %i.tm, ptr %i.a, align 16, !tbaa !20
  %.8.282 = load i64, ptr %.8..sroa_idx, align 8, !tbaa !20
  %i.tn = xor i64 %i.sp, %.8.282
  store i64 %i.tn, ptr %i.tl, align 8, !tbaa !20
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i187
  %indvars.iv.i190 = phi i64 [ 15, %.lr.ph.i.i187 ], [ %indvars.iv.next.i194, %bb.l ] ; 3 uses
  %.sroa.24.068.i191 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %i.ul, %bb.l ]
  %.sroa.0.067.i192 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %i.va, %bb.l ]
  %i.tp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i190
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !21
  %i.tr = zext i8 %i.tq to i32                    ; 2 uses
  %i.ts = and i32 %i.tr, 15
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.tt ; 2 uses
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !20
  %i.tw = xor i64 %i.tv, %.sroa.0.067.i192        ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !20
  %i.tz = xor i64 %i.ty, %.sroa.24.068.i191       ; 3 uses
  %i.ua = lshr i64 %i.tz, 56
  %i.ub = tail call i64 @llvm.fshl.i64(i64 %i.tz, i64 %i.tw, i64 8)
  %i.uc = shl i64 %i.tw, 8
  %i.ud = lshr i32 %i.tr, 4
  %i.ue = zext nneg i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.ue ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 256
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !20
  %i.ui = xor i64 %i.uc, %i.uh
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 264
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !20
  %i.ul = xor i64 %i.ub, %i.uk                    ; 2 uses
  %i.um = and i64 %i.ua, 15
  %i.un = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !203
end_hunk_0
