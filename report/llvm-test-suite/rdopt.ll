Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rdopt?download=true
inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumUnrolled: 172
begin_hunk_0_@update_offset_params:bb.a
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.be, <4 x i32> %i.ar)
  %i.bg = trunc <4 x i32> %i.bf to <4 x i16>
  store <4 x i16> %i.bg, ptr %i.ay, align 2, !tbaa !246
  %i.bh = add nsw i32 %i.ae, %i.au
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.bk ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !246
  %i.bn = trunc i32 %i.bj to i16
  %i.bo = add i16 %i.bm, %i.bn
  %i.bp = tail call i16 @llvm.smax.i16(i16 %i.bo, i16 0)
  %i.bq = zext nneg i16 %i.bp to i32
  %i.br = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.bq, i32 %i.o)
  %i.bs = trunc i32 %i.br to i16
  store i16 %i.bs, ptr %i.bl, align 2, !tbaa !246
  %i.bt = add nsw i32 %i.af, %i.au
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.bw ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !246
  %i.bz = trunc i32 %i.bv to i16
  %i.ca = add i16 %i.by, %i.bz
  %i.cb = tail call i16 @llvm.smax.i16(i16 %i.ca, i16 0)
  %i.cc = zext nneg i16 %i.cb to i32
  %i.cd = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.cc, i32 %i.o)
  %i.ce = trunc i32 %i.cd to i16
  store i16 %i.ce, ptr %i.bx, align 2, !tbaa !246
  %i.cf = add nsw i32 %i.ag, %i.au
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !246
  %i.cl = trunc i32 %i.ch to i16
  %i.cm = add i16 %i.ck, %i.cl
  %i.cn = tail call i16 @llvm.smax.i16(i16 %i.cm, i16 0)
  %i.co = zext nneg i16 %i.cn to i32
  %i.cp = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.co, i32 %i.o)
  %i.cq = trunc i32 %i.cp to i16
  store i16 %i.cq, ptr %i.cj, align 2, !tbaa !246
  %i.cr = add nsw i32 %i.ah, %i.au
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.cu ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !246
  %i.cx = trunc i32 %i.ct to i16
  %i.cy = add i16 %i.cw, %i.cx
  %i.cz = tail call i16 @llvm.smax.i16(i16 %i.cy, i16 0)
  %i.da = zext nneg i16 %i.cz to i32
  %i.db = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.da, i32 %i.o)
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %i.cv, align 2, !tbaa !246
  %i.dd = add nsw i32 %i.ai, %i.au
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = sext i32 %i.dd to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !246
  %i.dj = trunc i32 %i.df to i16
  %i.dk = add i16 %i.di, %i.dj
  %i.dl = tail call i16 @llvm.smax.i16(i16 %i.dk, i16 0)
  %i.dm = zext nneg i16 %i.dl to i32
  %i.dn = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.dm, i32 %i.o)
  %i.do = trunc i32 %i.dn to i16
  store i16 %i.do, ptr %i.dh, align 2, !tbaa !246
  %i.dp = add nsw i32 %i.aj, %i.au
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ds ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !246
  %i.dv = trunc i32 %i.dr to i16
  %i.dw = add i16 %i.du, %i.dv
  %i.dx = tail call i16 @llvm.smax.i16(i16 %i.dw, i16 0)
  %i.dy = zext nneg i16 %i.dx to i32
  %i.dz = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.dy, i32 %i.o)
  %i.ea = trunc i32 %i.dz to i16
  store i16 %i.ea, ptr %i.dt, align 2, !tbaa !246
  %i.eb = add nsw i32 %i.ak, %i.au
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ee ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !246
  %i.eh = trunc i32 %i.ed to i16
  %i.ei = add i16 %i.eg, %i.eh
  %i.ej = tail call i16 @llvm.smax.i16(i16 %i.ei, i16 0)
  %i.ek = zext nneg i16 %i.ej to i32
  %i.el = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.ek, i32 %i.o)
  %i.em = trunc i32 %i.el to i16
  store i16 %i.em, ptr %i.ef, align 2, !tbaa !246
  %i.en = add nsw i32 %i.al, %i.au
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %i.eq = sext i32 %i.en to i64
  %i.er = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.eq ; 2 uses
  %i.es = load i16, ptr %i.er, align 2, !tbaa !246
  %i.et = trunc i32 %i.ep to i16
  %i.eu = add i16 %i.es, %i.et
  %i.ev = tail call i16 @llvm.smax.i16(i16 %i.eu, i16 0)
  %i.ew = zext nneg i16 %i.ev to i32
  %i.ex = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.ew, i32 %i.o)
  %i.ey = trunc i32 %i.ex to i16
  store i16 %i.ey, ptr %i.er, align 2, !tbaa !246
  %i.ez = add nsw i32 %i.am, %i.au
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = sext i32 %i.ez to i64
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.fc ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !246
  %i.ff = trunc i32 %i.fb to i16
  %i.fg = add i16 %i.fe, %i.ff
  %i.fh = tail call i16 @llvm.smax.i16(i16 %i.fg, i16 0)
  %i.fi = zext nneg i16 %i.fh to i32
  %i.fj = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.fi, i32 %i.o)
  %i.fk = trunc i32 %i.fj to i16
  store i16 %i.fk, ptr %i.fd, align 2, !tbaa !246
  %i.fl = add nsw i32 %i.an, %i.au
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.fo ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !246
  %i.fr = trunc i32 %i.fn to i16
  %i.fs = add i16 %i.fq, %i.fr
  %i.ft = tail call i16 @llvm.smax.i16(i16 %i.fs, i16 0)
  %i.fu = zext nneg i16 %i.ft to i32
  %i.fv = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.fu, i32 %i.o)
  %i.fw = trunc i32 %i.fv to i16
  store i16 %i.fw, ptr %i.fp, align 2, !tbaa !246
  %i.fx = add nsw i32 %i.ao, %i.au
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.ga = sext i32 %i.fx to i64
  %i.gb = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ga ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !246
  %i.gd = trunc i32 %i.fz to i16
  %i.ge = add i16 %i.gc, %i.gd
  %i.gf = tail call i16 @llvm.smax.i16(i16 %i.ge, i16 0)
  %i.gg = zext nneg i16 %i.gf to i32
  %i.gh = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.gg, i32 %i.o)
  %i.gi = trunc i32 %i.gh to i16
  store i16 %i.gi, ptr %i.gb, align 2, !tbaa !246
  %i.gj = add nsw i32 %i.ap, %i.au
  %i.gk = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7
  %i.gm = sext i32 %i.gj to i64
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.gm ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !246
  %i.gp = trunc i32 %i.gl to i16
  %i.gq = add i16 %i.go, %i.gp
  %i.gr = tail call i16 @llvm.smax.i16(i16 %i.gq, i16 0)
  %i.gs = zext nneg i16 %i.gr to i32
  %i.gt = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.gs, i32 %i.o)
  %i.gu = trunc i32 %i.gt to i16
  store i16 %i.gu, ptr %i.gn, align 2, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !470

bb.d:                                             ; preds = %bb.c
  %i.gv = load ptr, ptr @input, align 8, !tbaa !202
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 5660
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !313
  %.not67 = icmp eq i32 %i.gx, 0
  br i1 %.not67, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gy = load ptr, ptr @bestInterFAdjust4x4Cr, align 8
  %i.gz = load ptr, ptr @bestIntraFAdjust4x4Cr, align 8
  %i.ha = select i1 %spec.select, ptr %i.gy, ptr %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 15548
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !223 ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 0
  br i1 %i.hd, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %bb.e
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 15544
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !224 ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph73.split, label %.loopexit

.lr.ph73.split:                                   ; preds = %.lr.ph73
  %i.hh = zext i1 %spec.select to i64
  %i.hi = getelementptr inbounds nuw [20 x i8], ptr @AdaptRndCrPos, i64 %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hi, i64 %i.j
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !7
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr %i.t, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hp = load ptr, ptr %i.ha, align 8, !tbaa !210
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !245 ; 4 uses
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !210
  %i.hs = load ptr, ptr %i.hn, align 8, !tbaa !245 ; 4 uses
  %wide.trip.count83 = zext nneg i32 %i.hc to i64
  %wide.trip.count = zext nneg i32 %i.hf to i64   ; 2 uses
  %i.ht = shl nuw nsw i64 %wide.trip.count, 1
  %or.cond98.not = icmp eq i32 %i.hf, 4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph73.split, %._crit_edge
  %indvars.iv80 = phi i64 [ 0, %.lr.ph73.split ], [ %indvars.iv.next81, %._crit_edge ] ; 5 uses
  %i.hu = shl i64 %indvars.iv80, 2
  %i.hv = and i64 %i.hu, 12                       ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv80
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !258 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv80
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !258 ; 2 uses
  br i1 %or.cond98.not, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ia = shl i64 %indvars.iv80, 3
  %i.ib = and i64 %i.ia, 24                       ; 3 uses
  %i.ic = getelementptr i8, ptr %i.hq, i64 %i.ib
  %2 = add nuw nsw i64 %i.ib, %i.ht               ; 2 uses
  %i.id = getelementptr i8, ptr %i.hq, i64 %2
  %i.ie = getelementptr i8, ptr %i.hs, i64 %i.ib
  %i.if = getelementptr i8, ptr %i.hs, i64 %2
  %bound0 = icmp ult ptr %i.ic, %i.if
  %bound1 = icmp ult ptr %i.ie, %i.id
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <4 x i32>, ptr %i.hx, align 4, !tbaa !7
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.hv ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %i.ig, align 2, !tbaa !246, !alias.scope !477, !noalias !478
  %i.ih = trunc <4 x i32> %wide.load to <4 x i16>
  %i.ii = add <4 x i16> %wide.load92, %i.ih
  %i.ij = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ii, <4 x i16> zeroinitializer)
  %i.ik = zext nneg <4 x i16> %i.ij to <4 x i32>
  %i.il = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ik, <4 x i32> %broadcast.splat)
  %i.im = trunc <4 x i32> %i.il to <4 x i16>
  store <4 x i16> %i.im, ptr %i.ig, align 2, !tbaa !246, !alias.scope !477, !noalias !478
  %wide.load93 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !7
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.hv ; 2 uses
  %wide.load94 = load <4 x i16>, ptr %i.in, align 2, !tbaa !246, !alias.scope !478
  %i.io = trunc <4 x i32> %wide.load93 to <4 x i16>
  %i.ip = add <4 x i16> %wide.load94, %i.io
  %i.iq = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ip, <4 x i16> zeroinitializer)
  %i.ir = zext nneg <4 x i16> %i.iq to <4 x i32>
  %i.is = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ir, <4 x i32> %broadcast.splat)
  %i.it = trunc <4 x i32> %i.is to <4 x i16>
  store <4 x i16> %i.it, ptr %i.in, align 2, !tbaa !246, !alias.scope !478
  br label %._crit_edge

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %i.iu = and i64 %indvars.iv76, 3
  %i.iv = or disjoint i64 %i.iu, %i.hv            ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv76
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.iv ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !246
  %i.ja = trunc i32 %i.ix to i16
  %i.jb = add i16 %i.iz, %i.ja
  %i.jc = tail call i16 @llvm.smax.i16(i16 %i.jb, i16 0)
  %i.jd = zext nneg i16 %i.jc to i32
  %i.je = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.jd, i32 %i.o)
  %i.jf = trunc i32 %i.je to i16
  store i16 %i.jf, ptr %i.iy, align 2, !tbaa !246
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv76
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !7
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.iv ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !246
  %i.jk = trunc i32 %i.jh to i16
  %i.jl = add i16 %i.jj, %i.jk
  %i.jm = tail call i16 @llvm.smax.i16(i16 %i.jl, i16 0)
  %i.jn = zext nneg i16 %i.jm to i32
  %i.jo = tail call range(i32 -2147483648, 536870918) i32 @llvm.smin.i32(i32 range(i32 -2147483648, 536870918) %i.jn, i32 %i.o)
  %i.jp = trunc i32 %i.jo to i16
  store i16 %i.jp, ptr %i.ji, align 2, !tbaa !246
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond79.not, label %._crit_edge, label %scalar.ph, !llvm.loop !474

._crit_edge:                                      ; preds = %scalar.ph, %vector.body
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph, !llvm.loop !475

.loopexit:                                        ; preds = %._crit_edge, %bb.e, %.lr.ph73, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @SetRefAndMotionVectors(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 !guid !484 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !202  ; 7 uses
  %i.b = icmp eq i32 %1, 1                        ; 2 uses
  %i.c = add i32 %1, -1
  %or.cond3 = icmp ult i32 %i.c, 3
  %i.d = select i1 %or.cond3, i32 %1, i32 4
  %i.e = and i32 %0, -2                           ; 5 uses
  %i.f = shl i32 %0, 1
  %i.g = and i32 %i.f, 2                          ; 9 uses
  %i.h = load ptr, ptr @input, align 8, !tbaa !202
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = zext nneg i32 %i.d to i64                ; 7 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 3 uses
  %i.n = add nsw i32 %i.m, %i.e                   ; 4 uses
  %i.o = load i32, ptr %i.k, align 8, !tbaa !7    ; 4 uses
  %i.p = add i32 %i.o, %i.g                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !274
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !269
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [536 x i8], ptr %i.r, i64 %i.u ; 3 uses
  %i.w = icmp slt i32 %2, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %i.m, 0
  br i1 %i.x, label %.lr.ph238.preheader, label %.loopexit

.lr.ph238.preheader:                              ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.z = load i32, ptr %i.y, align 4, !tbaa !234
  %i.aa = xor i32 %i.g, -1
  %i.ab = or disjoint i32 %i.g, 1
  %i.ac = sext i32 %i.z to i64
  %i.ad = sext i32 %i.e to i64
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = icmp sgt i32 %i.o, 0
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %._crit_edge235
  %indvars.iv257 = phi i64 [ %i.ae, %.lr.ph238.preheader ], [ %indvars.iv.next258, %._crit_edge235 ] ; 7 uses
  %i.ag = phi ptr [ %i.a, %.lr.ph238.preheader ], [ %i.du, %._crit_edge235 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !235 ; 4 uses
  %i.aj = add i32 %i.ai, %i.g                     ; 2 uses
  %.pre262 = load ptr, ptr @enc_picture, align 8, !tbaa !251 ; 2 uses
  br i1 %i.af, label %.lr.ph234, label %.lr.ph238.._crit_edge235_crit_edge

.lr.ph238.._crit_edge235_crit_edge:               ; preds = %.lr.ph238
  %.pre263 = sext i32 %i.aj to i64
  br label %._crit_edge235

.lr.ph234:                                        ; preds = %.lr.ph238
  %i.ak = add i32 %i.ai, %i.p
  %i.al = getelementptr inbounds nuw i8, ptr %.pre262, i64 6496
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !285 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !287
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv257
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !289
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !287
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %indvars.iv257
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !289
  %i.au = sext i32 %i.aj to i64                   ; 2 uses
  %i.av = shl nsw i64 %i.au, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.av
  %i.aw = add i32 %i.ab, %i.ai
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.aw)
  %i.ax = add i32 %smax, %i.aa
  %i.ay = sub i32 %i.ax, %i.ai
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.bb, i1 false), !tbaa !291
  %scevgep252 = getelementptr i8, ptr %i.at, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep252, i8 -1, i64 %i.bb, i1 false), !tbaa !291
  br label %._crit_edge235

._crit_edge235:                                   ; preds = %.lr.ph238.._crit_edge235_crit_edge, %.lr.ph234
  %.pre-phi = phi i64 [ %.pre263, %.lr.ph238.._crit_edge235_crit_edge ], [ %i.au, %.lr.ph234 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre262, i64 6488
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !284
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !229
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv257
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !230
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %.pre-phi
  %i.bi = load ptr, ptr @input, align 8, !tbaa !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.j
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !7
  %i.bm = sext i32 %i.bl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 -1, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr @enc_picture, align 8, !tbaa !251
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6488
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !284
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !229
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv257
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !230
  %i.bu = load ptr, ptr @img, align 8, !tbaa !202
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !235
  %i.bx = add nsw i32 %i.bw, %i.g
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 %i.by
  %i.ca = load ptr, ptr @input, align 8, !tbaa !202
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.j
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !7
  %i.ce = sext i32 %i.cd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 -1, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr @enc_picture, align 8, !tbaa !251
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6512
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !299
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !241
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %indvars.iv257
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !243
  %i.cl = load ptr, ptr @img, align 8, !tbaa !202
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 168
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !235
  %i.co = add nsw i32 %i.cn, %i.g
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !245
  %i.cs = load ptr, ptr @input, align 8, !tbaa !202
end_hunk_0
