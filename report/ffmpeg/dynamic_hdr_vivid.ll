Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dynamic_hdr_vivid?download=true
inline.NumInlined: 43
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1094995529, 1) i32 @ff_parse_itu_t_t35_to_dynamic_hdr_vivid(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread321, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %2, 268435455
  %i.a = shl nuw nsw i32 %2, 3
  %i.b = select i1 %or.cond.i, i32 -8, i32 %i.a   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.b, 2147483134
  %i.c = icmp eq ptr %1, null
  %or.cond3.i.i.not = or i1 %i.c, %or.cond.i.i    ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i.not, i32 0, i32 %i.b ; 11 uses
  %i.d = add nuw nsw i32 %.013.i.i, 8             ; 34 uses
  %i.e = icmp eq i32 %.013.i.i, 0
  %or.cond324 = or i1 %or.cond3.i.i.not, %i.e
  br i1 %or.cond324, label %.thread321, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 1, !tbaa !10     ; 2 uses
  %i.g = and i32 %i.f, 255
  %i.h = trunc i32 %i.f to i8
  store i8 %i.h, ptr %0, align 4, !tbaa !12
  %i.i = add nsw i32 %i.g, -1
  %or.cond = icmp ult i32 %i.i, 7
  br i1 %or.cond, label %bb.d, label %.thread321

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.j, align 1, !tbaa !13
  %i.k = icmp samesign ult i32 %.013.i.i, 56
  br i1 %i.k, label %.thread321, label %.preheader331

.preheader331:                                    ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i32, ptr %i.m, align 1, !tbaa !10
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = lshr i32 %i.o, 20
  store i32 %i.p, ptr %i.l, align 4, !tbaa !14
  %.sroa.286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4095, ptr %.sroa.286.0..sroa_idx, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i32, ptr %i.r, align 1, !tbaa !10
  %i.t = tail call i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 4095
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4095, ptr %.sroa.284.0..sroa_idx, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 1, !tbaa !10
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = lshr i32 %i.z, 20
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !14
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 4095, ptr %.sroa.282.0..sroa_idx, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !10
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = lshr i32 %i.ae, 16
  %i.ag = and i32 %i.af, 4095
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !14
  %.sroa.280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4095, ptr %.sroa.280.0..sroa_idx, align 4, !tbaa !14
  %i.ah = icmp eq i32 %.013.i.i, 56
  br i1 %i.ah, label %.thread321, label %.preheader

.preheader:                                       ; preds = %.preheader331
  %invariant.op340 = add nsw i32 %.013.i.i, -13
  %invariant.op341 = add nsw i32 %.013.i.i, -64
  %invariant.op = add nsw i32 %.013.i.i, -8       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !10
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj) ; 2 uses
  %i.al = lshr i32 %i.ak, 31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.al, ptr %i.am, align 4, !tbaa !17
  %.not173 = icmp sgt i32 %i.ak, -1
  br i1 %.not173, label %.thread312, label %bb.e

bb.e:                                             ; preds = %.preheader
  %.not326 = icmp samesign ugt i32 %.013.i.i, 57
  br i1 %.not326, label %.lr.ph344, label %.thread321

.lr.ph344:                                        ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !10
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = and i32 %i.ap, 1
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph344, %.loopexit
  %indvars.iv356 = phi i64 [ 0, %.lr.ph344 ], [ %indvars.iv.next357, %.loopexit ] ; 2 uses
  %.sroa.33.2342 = phi i32 [ 58, %.lr.ph344 ], [ %.sroa.33.8, %.loopexit ] ; 4 uses
  %i.au = getelementptr inbounds nuw [172 x i8], ptr %i.at, i64 %indvars.iv356 ; 43 uses
  %i.av = icmp sgt i32 %.sroa.33.2342, %invariant.op340
  br i1 %i.av, label %.thread321, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = lshr i32 %.sroa.33.2342, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !10
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = and i32 %.sroa.33.2342, 7
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = lshr i32 %i.bc, 20
  %i.be = add nsw i32 %.sroa.33.2342, 12
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.be) ; 3 uses
  store i32 %i.bd, ptr %i.au, align 4, !tbaa !14
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 4095, ptr %.sroa.241.0..sroa_idx, align 4, !tbaa !14
  %i.bg = lshr i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 1, !tbaa !10
  %i.bk = tail call i32 @llvm.bswap.i32(i32 %i.bj)
  %i.bl = and i32 %i.bf, 7
  %i.bm = shl i32 %i.bk, %i.bl                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 31
  %i.bo = add nuw i32 %i.bf, 1
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.bo) ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.bn, ptr %i.bq, align 4, !tbaa !20
  %.not174 = icmp sgt i32 %i.bm, -1
  br i1 %.not174, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = icmp sgt i32 %i.bp, %invariant.op341
  br i1 %i.br, label %.thread321, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bt = lshr i32 %i.bp, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !10
  %i.bx = tail call i32 @llvm.bswap.i32(i32 %i.bw)
  %i.by = and i32 %i.bp, 7
  %i.bz = shl i32 %i.bx, %i.by
  %i.ca = lshr i32 %i.bz, 18
  %i.cb = add nuw i32 %i.bp, 14
  %3 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cb) ; 3 uses
  store i32 %i.ca, ptr %i.bs, align 4, !tbaa !14
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 16383, ptr %.sroa.239.0..sroa_idx, align 4, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.cd = lshr i32 %3, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !10
  %i.ch = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = and i32 %3, 7
  %i.cj = shl i32 %i.ch, %i.ci
  %i.ck = lshr i32 %i.cj, 26
  %i.cl = add nuw i32 %3, 6
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cl) ; 3 uses
  store i32 %i.ck, ptr %i.cc, align 4, !tbaa !14
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 10, ptr %.sroa.237.0..sroa_idx, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.co = lshr i32 %i.cm, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !10
  %i.cs = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.ct = and i32 %i.cm, 7
  %i.cu = shl i32 %i.cs, %i.ct
  %i.cv = lshr i32 %i.cu, 22
  %i.cw = add nuw i32 %i.cm, 10
  %i.cx = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cw) ; 3 uses
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !14
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 1023, ptr %.sroa.235.0..sroa_idx, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.cz = lshr i32 %i.cx, 3
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 1, !tbaa !10
  %i.dd = tail call i32 @llvm.bswap.i32(i32 %i.dc)
  %i.de = and i32 %i.cx, 7
  %i.df = shl i32 %i.dd, %i.de
  %i.dg = lshr i32 %i.df, 22
  %i.dh = add nuw i32 %i.cx, 10
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.dh) ; 3 uses
  store i32 %i.dg, ptr %i.cy, align 4, !tbaa !14
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 1023, ptr %.sroa.233.0..sroa_idx, align 4, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.dk = lshr i32 %i.di, 3
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !10
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = and i32 %i.di, 7
  %i.dq = shl i32 %i.do, %i.dp
  %i.dr = lshr i32 %i.dq, 26
  %i.ds = add nuw i32 %i.di, 6
  %i.dt = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ds) ; 3 uses
  store i32 %i.dr, ptr %i.dj, align 4, !tbaa !14
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 10, ptr %.sroa.231.0..sroa_idx, align 4, !tbaa !14
  %i.du = lshr i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !10
  %i.dy = tail call i32 @llvm.bswap.i32(i32 %i.dx)
  %i.dz = and i32 %i.dt, 7
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 30
  %i.ec = add nuw i32 %i.dt, 2
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ec) ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  store i32 %i.eb, ptr %i.ee, align 4, !tbaa !21
  %i.ef = lshr i32 %i.ed, 3
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 1, !tbaa !10
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = and i32 %i.ed, 7
  %i.el = shl i32 %i.ej, %i.ek
  %i.em = lshr i32 %i.el, 30
  %i.en = add nuw i32 %i.ed, 2
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.en) ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i32 %i.em, ptr %i.ep, align 4, !tbaa !22
  %i.eq = lshr i32 %i.eo, 3
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %i.er
  %i.et = load i32, ptr %i.es, align 1, !tbaa !10
  %i.eu = tail call i32 @llvm.bswap.i32(i32 %i.et)
  %i.ev = and i32 %i.eo, 7
  %i.ew = shl i32 %i.eu, %i.ev
  %i.ex = lshr i32 %i.ew, 28
  %i.ey = add nuw i32 %i.eo, 4
  %i.ez = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ey) ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.au, i64 60
  store i32 %i.ex, ptr %i.fa, align 4, !tbaa !23
  %i.fb = lshr i32 %i.ez, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 1, !tbaa !10
  %i.ff = tail call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = and i32 %i.ez, 7
  %i.fh = shl i32 %i.ff, %i.fg
  %i.fi = lshr i32 %i.fh, 29
  %i.fj = add nuw i32 %i.ez, 3
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.fj) ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i32 %i.fi, ptr %i.fl, align 4, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  %i.fn = lshr i32 %i.fk, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 1, !tbaa !10
  %i.fr = tail call i32 @llvm.bswap.i32(i32 %i.fq)
  %i.fs = and i32 %i.fk, 7
  %i.ft = shl i32 %i.fr, %i.fs
  %i.fu = lshr i32 %i.ft, 25
  %i.fv = add nuw i32 %i.fk, 7
  %i.fw = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.fv)
  store i32 %i.fu, ptr %i.fm, align 4, !tbaa !14
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 127, ptr %.sroa.229.0..sroa_idx, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.33.3 = phi i32 [ %i.bp, %bb.g ], [ %i.fw, %bb.i ] ; 4 uses
  %.not327 = icmp sgt i32 %.013.i.i, %.sroa.33.3
  br i1 %.not327, label %bb.k, label %.thread321

bb.k:                                             ; preds = %bb.j
  %i.fx = lshr i32 %.sroa.33.3, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 1, !tbaa !10
  %i.gb = tail call i32 @llvm.bswap.i32(i32 %i.ga)
  %i.gc = and i32 %.sroa.33.3, 7
  %i.gd = shl i32 %i.gb, %i.gc                    ; 2 uses
  %i.ge = lshr i32 %i.gd, 31
  %i.gf = add nsw i32 %.sroa.33.3, 1
  %i.gg = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.gf) ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.au, i64 76
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !25
  %.not175 = icmp sgt i32 %i.gd, -1
  br i1 %.not175, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gi = sub nsw i32 %.013.i.i, %i.gg
  %i.gj = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !26
  %i.gl = mul nsw i32 %i.gk, 43
  %.not176 = icmp sgt i32 %i.gi, %i.gl
  br i1 %.not176, label %.lr.ph, label %.thread321

.lr.ph:                                           ; preds = %bb.l
  %i.gm = lshr i32 %i.gg, 3
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 1, !tbaa !10
  %i.gq = tail call i32 @llvm.bswap.i32(i32 %i.gp)
  %i.gr = and i32 %i.gg, 7
  %i.gs = shl i32 %i.gq, %i.gr                    ; 2 uses
  %i.gt = lshr i32 %i.gs, 31
  %i.gu = add nuw nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gj, align 4, !tbaa !26
  %i.gv = add nuw i32 %i.gg, 1
  %i.gw = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.gv) ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %i.gy = lshr i32 %i.gw, 3
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 1, !tbaa !10
  %i.hc = tail call i32 @llvm.bswap.i32(i32 %i.hb)
  %i.hd = and i32 %i.gw, 7
  %i.he = shl i32 %i.hc, %i.hd
  %i.hf = lshr i32 %i.he, 30                      ; 2 uses
  %i.hg = add nuw i32 %i.gw, 2
  %i.hh = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.hg) ; 5 uses
  store i32 %i.hf, ptr %i.gx, align 4, !tbaa !28
  switch i32 %i.hf, label %bb.o [
    i32 0, label %bb.m
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.hi = icmp sgt i32 %i.hh, %invariant.op
  br i1 %i.hi, label %.thread321, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hj = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.hk = lshr i32 %i.hh, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 1, !tbaa !10
  %i.ho = tail call i32 @llvm.bswap.i32(i32 %i.hn)
  %i.hp = and i32 %i.hh, 7
  %i.hq = shl i32 %i.ho, %i.hp
  %i.hr = lshr i32 %i.hq, 24
  %i.hs = add nuw i32 %i.hh, 8
  %4 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.hs)
  store i32 %i.hr, ptr %i.hj, align 4, !tbaa !14
  %.sroa.217.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  store i32 255, ptr %.sroa.217.0..sroa_idx.peel, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.sroa.33.5.peel = phi i32 [ %i.hh, %.lr.ph ], [ %4, %bb.n ] ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.hu = lshr i32 %.sroa.33.5.peel, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 1, !tbaa !10
  %i.hy = tail call i32 @llvm.bswap.i32(i32 %i.hx)
  %i.hz = and i32 %.sroa.33.5.peel, 7
  %i.ia = shl i32 %i.hy, %i.hz
  %i.ib = lshr i32 %i.ia, 20
  %i.ic = add i32 %.sroa.33.5.peel, 12
  %i.id = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ic) ; 3 uses
  store i32 %i.ib, ptr %i.ht, align 4, !tbaa !14
  %.sroa.215.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  store i32 4095, ptr %.sroa.215.0..sroa_idx.peel, align 4, !tbaa !14
  %i.ie = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.if = lshr i32 %i.id, 3
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 1, !tbaa !10
  %i.ij = tail call i32 @llvm.bswap.i32(i32 %i.ii)
  %i.ik = and i32 %i.id, 7
  %i.il = shl i32 %i.ij, %i.ik
  %i.im = lshr i32 %i.il, 22
  %i.in = add nuw i32 %i.id, 10
  %i.io = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.in) ; 3 uses
  store i32 %i.im, ptr %i.ie, align 4, !tbaa !14
  %.sroa.213.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 108
  store i32 1023, ptr %.sroa.213.0..sroa_idx.peel, align 4, !tbaa !14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.iq = lshr i32 %i.io, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !10
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = and i32 %i.io, 7
  %i.iw = shl i32 %i.iu, %i.iv
  %i.ix = lshr i32 %i.iw, 22
  %i.iy = add nuw i32 %i.io, 10
  %i.iz = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.iy) ; 3 uses
  store i32 %i.ix, ptr %i.ip, align 4, !tbaa !14
  %.sroa.211.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 116
  store i32 1023, ptr %.sroa.211.0..sroa_idx.peel, align 4, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.jb = lshr i32 %i.iz, 3
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 1, !tbaa !10
  %i.jf = tail call i32 @llvm.bswap.i32(i32 %i.je)
  %i.jg = and i32 %i.iz, 7
  %i.jh = shl i32 %i.jf, %i.jg
  %i.ji = lshr i32 %i.jh, 24
  %i.jj = add nuw i32 %i.iz, 8
  %i.jk = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.jj) ; 4 uses
  store i32 %i.ji, ptr %i.ja, align 4, !tbaa !14
  %.sroa.29.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 124
  store i32 255, ptr %.sroa.29.0..sroa_idx.peel, align 4, !tbaa !14
  %.not177.peel.not = icmp sgt i32 %i.gs, -1
  br i1 %.not177.peel.not, label %.loopexit, label %.lr.ph.peel.newph

.lr.ph.peel.newph:                                ; preds = %bb.o
  %i.jl = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.jm = lshr i32 %i.jk, 3
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %i.jn
  %i.jp = and i32 %i.jk, 7
  %i.jq = add nuw i32 %i.jk, 2
  %i.jr = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.jq) ; 5 uses
  %i.js = icmp sgt i32 %i.jr, %invariant.op
  %i.jt = getelementptr inbounds nuw i8, ptr %i.au, i64 132
  %i.ju = lshr i32 %i.jr, 3
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 %i.jv
  %i.jx = and i32 %i.jr, 7
  %i.jy = add nuw i32 %i.jr, 8
  %5 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.jy)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.jz = getelementptr inbounds nuw i8, ptr %i.au, i64 140
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.ka = getelementptr inbounds nuw i8, ptr %i.au, i64 148
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.kb = getelementptr inbounds nuw i8, ptr %i.au, i64 156
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.kc = getelementptr inbounds nuw i8, ptr %i.au, i64 164
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %i.kd = load i32, ptr %i.jo, align 1, !tbaa !10
  %i.ke = tail call i32 @llvm.bswap.i32(i32 %i.kd)
  %i.kf = shl i32 %i.ke, %i.jp
  %i.kg = lshr i32 %i.kf, 30                      ; 2 uses
  store i32 %i.kg, ptr %i.jl, align 4, !tbaa !28
  switch i32 %i.kg, label %.loopexit.loopexit.loopexit [
    i32 0, label %bb.p
    i32 2, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.peel.newph, %.lr.ph.peel.newph
  br i1 %i.js, label %.thread321, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kh = load i32, ptr %i.jw, align 1, !tbaa !10
  %i.ki = tail call i32 @llvm.bswap.i32(i32 %i.kh)
  %i.kj = shl i32 %i.ki, %i.jx
  %i.kk = lshr i32 %i.kj, 24
  store i32 %i.kk, ptr %i.jt, align 4, !tbaa !14
  store i32 255, ptr %.sroa.217.0..sroa_idx, align 4, !tbaa !14
  br label %.loopexit.loopexit.loopexit

.loopexit.loopexit.loopexit:                      ; preds = %.lr.ph.peel.newph, %bb.q
  %.sroa.33.5 = phi i32 [ %i.jr, %.lr.ph.peel.newph ], [ %5, %bb.q ] ; 3 uses
  %i.kl = lshr i32 %.sroa.33.5, 3
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 1, !tbaa !10
  %i.kp = tail call i32 @llvm.bswap.i32(i32 %i.ko)
  %i.kq = and i32 %.sroa.33.5, 7
  %i.kr = shl i32 %i.kp, %i.kq
  %i.ks = lshr i32 %i.kr, 20
  %i.kt = add i32 %.sroa.33.5, 12
  %i.ku = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.kt) ; 3 uses
  store i32 %i.ks, ptr %i.jz, align 4, !tbaa !14
  store i32 4095, ptr %.sroa.215.0..sroa_idx, align 4, !tbaa !14
  %i.kv = lshr i32 %i.ku, 3
  %i.kw = zext nneg i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 1, !tbaa !10
  %i.kz = tail call i32 @llvm.bswap.i32(i32 %i.ky)
  %i.la = and i32 %i.ku, 7
  %i.lb = shl i32 %i.kz, %i.la
  %i.lc = lshr i32 %i.lb, 22
  %i.ld = add nuw i32 %i.ku, 10
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ld) ; 3 uses
  store i32 %i.lc, ptr %i.ka, align 4, !tbaa !14
  store i32 1023, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !14
  %i.lf = lshr i32 %i.le, 3
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 1, !tbaa !10
  %i.lj = tail call i32 @llvm.bswap.i32(i32 %i.li)
  %i.lk = and i32 %i.le, 7
  %i.ll = shl i32 %i.lj, %i.lk
  %i.lm = lshr i32 %i.ll, 22
  %i.ln = add nuw i32 %i.le, 10
  %i.lo = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ln) ; 3 uses
  store i32 %i.lm, ptr %i.kb, align 4, !tbaa !14
  store i32 1023, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !14
  %i.lp = lshr i32 %i.lo, 3
  %i.lq = zext nneg i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 1, !tbaa !10
  %i.lt = tail call i32 @llvm.bswap.i32(i32 %i.ls)
  %i.lu = and i32 %i.lo, 7
  %i.lv = shl i32 %i.lt, %i.lu
  %i.lw = lshr i32 %i.lv, 24
  store i32 %i.lw, ptr %i.kc, align 4, !tbaa !14
  store i32 255, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !14
  %i.lx = add nuw i32 %i.lo, 8
  %i.ly = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.lx)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.loopexit.loopexit.loopexit, %bb.k
  %.sroa.33.8 = phi i32 [ %i.gg, %bb.k ], [ %i.jk, %bb.o ], [ %i.ly, %.loopexit.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %i.lz = load i32, ptr %i.as, align 4, !tbaa !18
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next357, %i.ma
  br i1 %i.mb, label %bb.f, label %.thread312, !llvm.loop !9

.thread312:                                       ; preds = %.loopexit, %.preheader
  %.sroa.33.10 = phi i32 [ 57, %.preheader ], [ %.sroa.33.8, %.loopexit ] ; 3 uses
  %i.mc = lshr i32 %.sroa.33.10, 3
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 1, !tbaa !10
  %i.mg = tail call i32 @llvm.bswap.i32(i32 %i.mf)
  %i.mh = and i32 %.sroa.33.10, 7
  %i.mi = shl i32 %i.mg, %i.mh                    ; 2 uses
  %i.mj = lshr i32 %i.mi, 31
  %i.mk = add i32 %.sroa.33.10, 1
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.mk) ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %i.mj, ptr %i.mm, align 4, !tbaa !30
  %.not178 = icmp sgt i32 %i.mi, -1
  br i1 %.not178, label %.thread321, label %bb.r

bb.r:                                             ; preds = %.thread312
  %i.mn = sub nsw i32 %.013.i.i, %i.ml
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !31
  %i.mq = shl nsw i32 %i.mp, 3
  %i.mr = or disjoint i32 %i.mq, 3
  %i.ms = icmp slt i32 %i.mn, %i.mr
  br i1 %i.ms, label %.thread321, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mt = lshr i32 %i.ml, 3
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 1, !tbaa !10
  %i.mx = tail call i32 @llvm.bswap.i32(i32 %i.mw)
  %i.my = and i32 %i.ml, 7
  %i.mz = shl i32 %i.mx, %i.my                    ; 5 uses
  %i.na = lshr i32 %i.mz, 29                      ; 4 uses
  store i32 %i.na, ptr %i.mo, align 4, !tbaa !31
  %.not352 = icmp eq i32 %i.na, 0
  br i1 %.not352, label %.thread321, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.s
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.nc = add nuw i32 %i.ml, 3
  %i.nd = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.nc) ; 3 uses
  %i.ne = lshr i32 %i.nd, 3
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 1, !tbaa !10
  %i.ni = tail call i32 @llvm.bswap.i32(i32 %i.nh)
  %i.nj = and i32 %i.nd, 7
  %i.nk = shl i32 %i.ni, %i.nj
  %i.nl = lshr i32 %i.nk, 24
  store i32 %i.nl, ptr %i.nb, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 128, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !14
  %.not374 = icmp eq i32 %i.na, 1
  br i1 %.not374, label %.thread321, label %bb.t

bb.t:                                             ; preds = %.lr.ph348
  %i.nm = add nuw i32 %i.nd, 8
  %i.nn = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.nm) ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.np = lshr i32 %i.nn, 3
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 1, !tbaa !10
  %i.nt = tail call i32 @llvm.bswap.i32(i32 %i.ns)
  %i.nu = and i32 %i.nn, 7
  %i.nv = shl i32 %i.nt, %i.nu
  %i.nw = lshr i32 %i.nv, 24
  store i32 %i.nw, ptr %i.no, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 128, ptr %.sroa.2.0..sroa_idx.1, align 4, !tbaa !14
  %i.nx = icmp ugt i32 %i.mz, 1610612735
  br i1 %i.nx, label %bb.u, label %.thread321

bb.u:                                             ; preds = %bb.t
  %i.ny = add nuw i32 %i.nn, 8
  %i.nz = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ny) ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.ob = lshr i32 %i.nz, 3
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 1, !tbaa !10
  %i.of = tail call i32 @llvm.bswap.i32(i32 %i.oe)
  %i.og = and i32 %i.nz, 7
  %i.oh = shl i32 %i.of, %i.og
  %i.oi = lshr i32 %i.oh, 24
  store i32 %i.oi, ptr %i.oa, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 128, ptr %.sroa.2.0..sroa_idx.2, align 4, !tbaa !14
  %i.oj = icmp slt i32 %i.mz, 0
  br i1 %i.oj, label %bb.v, label %.thread321

bb.v:                                             ; preds = %bb.u
  %i.ok = add nuw i32 %i.nz, 8
  %i.ol = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ok) ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.on = lshr i32 %i.ol, 3
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 1, !tbaa !10
  %i.or = tail call i32 @llvm.bswap.i32(i32 %i.oq)
  %i.os = and i32 %i.ol, 7
  %i.ot = shl i32 %i.or, %i.os
  %i.ou = lshr i32 %i.ot, 24
  store i32 %i.ou, ptr %i.om, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 128, ptr %.sroa.2.0..sroa_idx.3, align 4, !tbaa !14
  %i.ov = icmp ugt i32 %i.mz, -1610612737
  br i1 %i.ov, label %bb.w, label %.thread321

bb.w:                                             ; preds = %bb.v
  %i.ow = add nuw i32 %i.ol, 8
  %i.ox = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ow) ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.oz = lshr i32 %i.ox, 3
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 1, !tbaa !10
  %i.pd = tail call i32 @llvm.bswap.i32(i32 %i.pc)
  %i.pe = and i32 %i.ox, 7
  %i.pf = shl i32 %i.pd, %i.pe
  %i.pg = lshr i32 %i.pf, 24
  store i32 %i.pg, ptr %i.oy, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 128, ptr %.sroa.2.0..sroa_idx.4, align 4, !tbaa !14
  %i.ph = icmp ugt i32 %i.mz, -1073741825
  br i1 %i.ph, label %bb.x, label %.thread321

bb.x:                                             ; preds = %bb.w
  %i.pi = add nuw i32 %i.ox, 8
  %i.pj = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.pi) ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.pl = lshr i32 %i.pj, 3
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 1, !tbaa !10
  %i.pp = tail call i32 @llvm.bswap.i32(i32 %i.po)
  %i.pq = and i32 %i.pj, 7
  %i.pr = shl i32 %i.pp, %i.pq
  %i.ps = lshr i32 %i.pr, 24
  store i32 %i.ps, ptr %i.pk, align 4, !tbaa !14
end_hunk_0
