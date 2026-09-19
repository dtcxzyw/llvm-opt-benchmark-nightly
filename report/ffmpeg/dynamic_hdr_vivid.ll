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
  %4 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cl) ; 3 uses
  store i32 %i.ck, ptr %i.cc, align 4, !tbaa !14
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 10, ptr %.sroa.237.0..sroa_idx, align 4, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.cn = lshr i32 %4, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !10
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %4, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = lshr i32 %i.ct, 22
  %i.cv = add nuw i32 %4, 10
  %5 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.cv) ; 3 uses
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !14
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 1023, ptr %.sroa.235.0..sroa_idx, align 4, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.cx = lshr i32 %5, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !10
  %i.db = tail call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dc = and i32 %5, 7
  %i.dd = shl i32 %i.db, %i.dc
  %i.de = lshr i32 %i.dd, 22
  %i.df = add nuw i32 %5, 10
  %6 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.df) ; 3 uses
  store i32 %i.de, ptr %i.cw, align 4, !tbaa !14
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i32 1023, ptr %.sroa.233.0..sroa_idx, align 4, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.dh = lshr i32 %6, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !10
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %7 = and i32 %6, 7
  %i.dm = shl i32 %i.dl, %7
  %i.dn = lshr i32 %i.dm, 26
  %i.do = add nuw i32 %6, 6
  %8 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.do) ; 3 uses
  store i32 %i.dn, ptr %i.dg, align 4, !tbaa !14
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  store i32 10, ptr %.sroa.231.0..sroa_idx, align 4, !tbaa !14
  %i.dp = lshr i32 %8, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !10
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %i.ds)
  %i.du = and i32 %8, 7
  %i.dv = shl i32 %i.dt, %i.du
  %i.dw = lshr i32 %i.dv, 30
  %i.dx = add nuw i32 %8, 2
  %9 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.dx) ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  store i32 %i.dw, ptr %i.dy, align 4, !tbaa !21
  %i.dz = lshr i32 %9, 3
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 1, !tbaa !10
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  %10 = and i32 %9, 7
  %i.ee = shl i32 %i.ed, %10
  %i.ef = lshr i32 %i.ee, 30
  %i.eg = add nuw i32 %9, 2
  %11 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.eg) ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i32 %i.ef, ptr %i.eh, align 4, !tbaa !22
  %i.ei = lshr i32 %11, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 1, !tbaa !10
  %i.em = tail call i32 @llvm.bswap.i32(i32 %i.el)
  %i.en = and i32 %11, 7
  %i.eo = shl i32 %i.em, %i.en
  %i.ep = lshr i32 %i.eo, 28
  %i.eq = add nuw i32 %11, 4
  %12 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.eq) ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.au, i64 60
  store i32 %i.ep, ptr %i.er, align 4, !tbaa !23
  %i.es = lshr i32 %12, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !10
  %i.ew = tail call i32 @llvm.bswap.i32(i32 %i.ev)
  %i.ex = and i32 %12, 7
  %i.ey = shl i32 %i.ew, %i.ex
  %i.ez = lshr i32 %i.ey, 29
  %i.fa = add nuw i32 %12, 3
  %13 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.fa) ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i32 %i.ez, ptr %i.fb, align 4, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  %i.fd = lshr i32 %13, 3
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 1, !tbaa !10
  %i.fh = tail call i32 @llvm.bswap.i32(i32 %i.fg)
  %i.fi = and i32 %13, 7
  %i.fj = shl i32 %i.fh, %i.fi
  %i.fk = lshr i32 %i.fj, 25
  %i.fl = add nuw i32 %13, 7
  %14 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.fl)
  store i32 %i.fk, ptr %i.fc, align 4, !tbaa !14
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 127, ptr %.sroa.229.0..sroa_idx, align 4, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.sroa.33.3 = phi i32 [ %i.bp, %bb.g ], [ %14, %bb.i ] ; 4 uses
  %.not327 = icmp sgt i32 %.013.i.i, %.sroa.33.3
  br i1 %.not327, label %bb.k, label %.thread321

bb.k:                                             ; preds = %bb.j
  %i.fm = lshr i32 %.sroa.33.3, 3
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 1, !tbaa !10
  %i.fq = tail call i32 @llvm.bswap.i32(i32 %i.fp)
  %i.fr = and i32 %.sroa.33.3, 7
  %i.fs = shl i32 %i.fq, %i.fr                    ; 2 uses
  %i.ft = lshr i32 %i.fs, 31
  %i.fu = add nsw i32 %.sroa.33.3, 1
  %i.fv = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.fu) ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.au, i64 76
  store i32 %i.ft, ptr %i.fw, align 4, !tbaa !25
  %.not175 = icmp sgt i32 %i.fs, -1
  br i1 %.not175, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fx = sub nsw i32 %.013.i.i, %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !26
  %i.ga = mul nsw i32 %i.fz, 43
  %.not176 = icmp sgt i32 %i.fx, %i.ga
  br i1 %.not176, label %.lr.ph, label %.thread321

.lr.ph:                                           ; preds = %bb.l
  %i.gb = lshr i32 %i.fv, 3
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 1, !tbaa !10
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %i.ge)
  %i.gg = and i32 %i.fv, 7
  %i.gh = shl i32 %i.gf, %i.gg                    ; 2 uses
  %i.gi = lshr i32 %i.gh, 31
  %i.gj = add nuw nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.fy, align 4, !tbaa !26
  %i.gk = add nuw i32 %i.fv, 1
  %i.gl = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.gk) ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %i.gn = lshr i32 %i.gl, 3
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 1, !tbaa !10
  %i.gr = tail call i32 @llvm.bswap.i32(i32 %i.gq)
  %i.gs = and i32 %i.gl, 7
  %i.gt = shl i32 %i.gr, %i.gs
  %i.gu = lshr i32 %i.gt, 30                      ; 2 uses
  %i.gv = add nuw i32 %i.gl, 2
  %i.gw = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.gv) ; 5 uses
  store i32 %i.gu, ptr %i.gm, align 4, !tbaa !28
  switch i32 %i.gu, label %bb.o [
    i32 0, label %bb.m
    i32 2, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph, %.lr.ph
  %i.gx = icmp sgt i32 %i.gw, %invariant.op
  br i1 %i.gx, label %.thread321, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gy = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.gz = lshr i32 %i.gw, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 1, !tbaa !10
  %i.hd = tail call i32 @llvm.bswap.i32(i32 %i.hc)
  %i.he = and i32 %i.gw, 7
  %i.hf = shl i32 %i.hd, %i.he
  %i.hg = lshr i32 %i.hf, 24
  %i.hh = add nuw i32 %i.gw, 8
  %15 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.hh)
  store i32 %i.hg, ptr %i.gy, align 4, !tbaa !14
  %.sroa.217.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  store i32 255, ptr %.sroa.217.0..sroa_idx.peel, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.sroa.33.5.peel = phi i32 [ %i.gw, %.lr.ph ], [ %15, %bb.n ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.hj = lshr i32 %.sroa.33.5.peel, 3
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 1, !tbaa !10
  %i.hn = tail call i32 @llvm.bswap.i32(i32 %i.hm)
  %i.ho = and i32 %.sroa.33.5.peel, 7
  %i.hp = shl i32 %i.hn, %i.ho
  %i.hq = lshr i32 %i.hp, 20
  %i.hr = add i32 %.sroa.33.5.peel, 12
  %i.hs = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.hr) ; 3 uses
  store i32 %i.hq, ptr %i.hi, align 4, !tbaa !14
  %.sroa.215.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  store i32 4095, ptr %.sroa.215.0..sroa_idx.peel, align 4, !tbaa !14
  %i.ht = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.hu = lshr i32 %i.hs, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 1, !tbaa !10
  %i.hy = tail call i32 @llvm.bswap.i32(i32 %i.hx)
  %i.hz = and i32 %i.hs, 7
  %i.ia = shl i32 %i.hy, %i.hz
  %i.ib = lshr i32 %i.ia, 22
  %i.ic = add nuw i32 %i.hs, 10
  %i.id = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ic) ; 3 uses
  store i32 %i.ib, ptr %i.ht, align 4, !tbaa !14
  %.sroa.213.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 108
  store i32 1023, ptr %.sroa.213.0..sroa_idx.peel, align 4, !tbaa !14
  %i.ie = getelementptr inbounds nuw i8, ptr %i.au, i64 112
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
  %.sroa.211.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 116
  store i32 1023, ptr %.sroa.211.0..sroa_idx.peel, align 4, !tbaa !14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.iq = lshr i32 %i.io, 3
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 1, !tbaa !10
  %i.iu = tail call i32 @llvm.bswap.i32(i32 %i.it)
  %i.iv = and i32 %i.io, 7
  %i.iw = shl i32 %i.iu, %i.iv
  %i.ix = lshr i32 %i.iw, 24
  %i.iy = add nuw i32 %i.io, 8
  %i.iz = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.iy) ; 4 uses
  store i32 %i.ix, ptr %i.ip, align 4, !tbaa !14
  %.sroa.29.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.au, i64 124
  store i32 255, ptr %.sroa.29.0..sroa_idx.peel, align 4, !tbaa !14
  %.not177.peel.not = icmp sgt i32 %i.gh, -1
  br i1 %.not177.peel.not, label %.loopexit, label %.lr.ph.peel.newph

.lr.ph.peel.newph:                                ; preds = %bb.o
  %i.ja = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.jb = lshr i32 %i.iz, 3
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 %i.jc
  %i.je = and i32 %i.iz, 7
  %i.jf = add nuw i32 %i.iz, 2
  %i.jg = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.jf) ; 5 uses
  %i.jh = icmp sgt i32 %i.jg, %invariant.op
  %i.ji = getelementptr inbounds nuw i8, ptr %i.au, i64 132
  %i.jj = lshr i32 %i.jg, 3
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 %i.jk
  %i.jm = and i32 %i.jg, 7
  %i.jn = add nuw i32 %i.jg, 8
  %16 = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.jn)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.jo = getelementptr inbounds nuw i8, ptr %i.au, i64 140
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.jp = getelementptr inbounds nuw i8, ptr %i.au, i64 148
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 152
  %i.jq = getelementptr inbounds nuw i8, ptr %i.au, i64 156
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.jr = getelementptr inbounds nuw i8, ptr %i.au, i64 164
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 168
  %i.js = load i32, ptr %i.jd, align 1, !tbaa !10
  %i.jt = tail call i32 @llvm.bswap.i32(i32 %i.js)
  %i.ju = shl i32 %i.jt, %i.je
  %i.jv = lshr i32 %i.ju, 30                      ; 2 uses
  store i32 %i.jv, ptr %i.ja, align 4, !tbaa !28
  switch i32 %i.jv, label %.loopexit.loopexit.loopexit [
    i32 0, label %bb.p
    i32 2, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.peel.newph, %.lr.ph.peel.newph
  br i1 %i.jh, label %.thread321, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jw = load i32, ptr %i.jl, align 1, !tbaa !10
  %i.jx = tail call i32 @llvm.bswap.i32(i32 %i.jw)
  %i.jy = shl i32 %i.jx, %i.jm
  %i.jz = lshr i32 %i.jy, 24
  store i32 %i.jz, ptr %i.ji, align 4, !tbaa !14
  store i32 255, ptr %.sroa.217.0..sroa_idx, align 4, !tbaa !14
  br label %.loopexit.loopexit.loopexit

.loopexit.loopexit.loopexit:                      ; preds = %.lr.ph.peel.newph, %bb.q
  %.sroa.33.5 = phi i32 [ %i.jg, %.lr.ph.peel.newph ], [ %16, %bb.q ] ; 3 uses
  %i.ka = lshr i32 %.sroa.33.5, 3
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 1, !tbaa !10
  %i.ke = tail call i32 @llvm.bswap.i32(i32 %i.kd)
  %i.kf = and i32 %.sroa.33.5, 7
  %i.kg = shl i32 %i.ke, %i.kf
  %i.kh = lshr i32 %i.kg, 20
  %i.ki = add i32 %.sroa.33.5, 12
  %i.kj = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ki) ; 3 uses
  store i32 %i.kh, ptr %i.jo, align 4, !tbaa !14
  store i32 4095, ptr %.sroa.215.0..sroa_idx, align 4, !tbaa !14
  %i.kk = lshr i32 %i.kj, 3
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 1, !tbaa !10
  %i.ko = tail call i32 @llvm.bswap.i32(i32 %i.kn)
  %i.kp = and i32 %i.kj, 7
  %i.kq = shl i32 %i.ko, %i.kp
  %i.kr = lshr i32 %i.kq, 22
  %i.ks = add nuw i32 %i.kj, 10
  %i.kt = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ks) ; 3 uses
  store i32 %i.kr, ptr %i.jp, align 4, !tbaa !14
  store i32 1023, ptr %.sroa.213.0..sroa_idx, align 4, !tbaa !14
  %i.ku = lshr i32 %i.kt, 3
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 1, !tbaa !10
  %i.ky = tail call i32 @llvm.bswap.i32(i32 %i.kx)
  %i.kz = and i32 %i.kt, 7
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = lshr i32 %i.la, 22
  %i.lc = add nuw i32 %i.kt, 10
  %i.ld = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.lc) ; 3 uses
  store i32 %i.lb, ptr %i.jq, align 4, !tbaa !14
  store i32 1023, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !14
  %i.le = lshr i32 %i.ld, 3
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !10
  %i.li = tail call i32 @llvm.bswap.i32(i32 %i.lh)
  %i.lj = and i32 %i.ld, 7
  %i.lk = shl i32 %i.li, %i.lj
  %i.ll = lshr i32 %i.lk, 24
  store i32 %i.ll, ptr %i.jr, align 4, !tbaa !14
  store i32 255, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !14
  %i.lm = add nuw i32 %i.ld, 8
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.lm)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.loopexit.loopexit.loopexit, %bb.k
  %.sroa.33.8 = phi i32 [ %i.fv, %bb.k ], [ %i.iz, %bb.o ], [ %i.ln, %.loopexit.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %i.lo = load i32, ptr %i.as, align 4, !tbaa !18
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp slt i64 %indvars.iv.next357, %i.lp
  br i1 %i.lq, label %bb.f, label %.thread312, !llvm.loop !9

.thread312:                                       ; preds = %.loopexit, %.preheader
  %.sroa.33.10 = phi i32 [ 57, %.preheader ], [ %.sroa.33.8, %.loopexit ] ; 3 uses
  %i.lr = lshr i32 %.sroa.33.10, 3
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 1, !tbaa !10
  %i.lv = tail call i32 @llvm.bswap.i32(i32 %i.lu)
  %i.lw = and i32 %.sroa.33.10, 7
  %i.lx = shl i32 %i.lv, %i.lw                    ; 2 uses
  %i.ly = lshr i32 %i.lx, 31
  %i.lz = add i32 %.sroa.33.10, 1
  %i.ma = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.lz) ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 388
  store i32 %i.ly, ptr %i.mb, align 4, !tbaa !30
  %.not178 = icmp sgt i32 %i.lx, -1
  br i1 %.not178, label %.thread321, label %bb.r

bb.r:                                             ; preds = %.thread312
  %i.mc = sub nsw i32 %.013.i.i, %i.ma
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !31
  %i.mf = shl nsw i32 %i.me, 3
  %i.mg = or disjoint i32 %i.mf, 3
  %i.mh = icmp slt i32 %i.mc, %i.mg
  br i1 %i.mh, label %.thread321, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.mi = lshr i32 %i.ma, 3
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 1, !tbaa !10
  %i.mm = tail call i32 @llvm.bswap.i32(i32 %i.ml)
  %i.mn = and i32 %i.ma, 7
  %i.mo = shl i32 %i.mm, %i.mn                    ; 5 uses
  %i.mp = lshr i32 %i.mo, 29                      ; 4 uses
  store i32 %i.mp, ptr %i.md, align 4, !tbaa !31
  %.not352 = icmp eq i32 %i.mp, 0
  br i1 %.not352, label %.thread321, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.s
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.mr = add nuw i32 %i.ma, 3
  %i.ms = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.mr) ; 3 uses
  %i.mt = lshr i32 %i.ms, 3
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 1, !tbaa !10
  %i.mx = tail call i32 @llvm.bswap.i32(i32 %i.mw)
  %i.my = and i32 %i.ms, 7
  %i.mz = shl i32 %i.mx, %i.my
  %i.na = lshr i32 %i.mz, 24
  store i32 %i.na, ptr %i.mq, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 128, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !14
  %.not374 = icmp eq i32 %i.mp, 1
  br i1 %.not374, label %.thread321, label %bb.t

bb.t:                                             ; preds = %.lr.ph348
  %i.nb = add nuw i32 %i.ms, 8
  %i.nc = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.nb) ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ne = lshr i32 %i.nc, 3
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 1, !tbaa !10
  %i.ni = tail call i32 @llvm.bswap.i32(i32 %i.nh)
  %i.nj = and i32 %i.nc, 7
  %i.nk = shl i32 %i.ni, %i.nj
  %i.nl = lshr i32 %i.nk, 24
  store i32 %i.nl, ptr %i.nd, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 128, ptr %.sroa.2.0..sroa_idx.1, align 4, !tbaa !14
  %i.nm = icmp ugt i32 %i.mo, 1610612735
  br i1 %i.nm, label %bb.u, label %.thread321

bb.u:                                             ; preds = %bb.t
  %i.nn = add nuw i32 %i.nc, 8
  %i.no = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.nn) ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.nq = lshr i32 %i.no, 3
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 1, !tbaa !10
  %i.nu = tail call i32 @llvm.bswap.i32(i32 %i.nt)
  %i.nv = and i32 %i.no, 7
  %i.nw = shl i32 %i.nu, %i.nv
  %i.nx = lshr i32 %i.nw, 24
  store i32 %i.nx, ptr %i.np, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 128, ptr %.sroa.2.0..sroa_idx.2, align 4, !tbaa !14
  %i.ny = icmp slt i32 %i.mo, 0
  br i1 %i.ny, label %bb.v, label %.thread321

bb.v:                                             ; preds = %bb.u
  %i.nz = add nuw i32 %i.no, 8
  %i.oa = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.nz) ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.oc = lshr i32 %i.oa, 3
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 1, !tbaa !10
  %i.og = tail call i32 @llvm.bswap.i32(i32 %i.of)
  %i.oh = and i32 %i.oa, 7
  %i.oi = shl i32 %i.og, %i.oh
  %i.oj = lshr i32 %i.oi, 24
  store i32 %i.oj, ptr %i.ob, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 128, ptr %.sroa.2.0..sroa_idx.3, align 4, !tbaa !14
  %i.ok = icmp ugt i32 %i.mo, -1610612737
  br i1 %i.ok, label %bb.w, label %.thread321

bb.w:                                             ; preds = %bb.v
  %i.ol = add nuw i32 %i.oa, 8
  %i.om = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ol) ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.oo = lshr i32 %i.om, 3
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 1, !tbaa !10
  %i.os = tail call i32 @llvm.bswap.i32(i32 %i.or)
  %i.ot = and i32 %i.om, 7
  %i.ou = shl i32 %i.os, %i.ot
  %i.ov = lshr i32 %i.ou, 24
  store i32 %i.ov, ptr %i.on, align 4, !tbaa !14
  %.sroa.2.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 128, ptr %.sroa.2.0..sroa_idx.4, align 4, !tbaa !14
  %i.ow = icmp ugt i32 %i.mo, -1073741825
  br i1 %i.ow, label %bb.x, label %.thread321

bb.x:                                             ; preds = %bb.w
  %i.ox = add nuw i32 %i.om, 8
  %i.oy = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.ox) ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.pa = lshr i32 %i.oy, 3
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 1, !tbaa !10
  %i.pe = tail call i32 @llvm.bswap.i32(i32 %i.pd)
  %i.pf = and i32 %i.oy, 7
  %i.pg = shl i32 %i.pe, %i.pf
  %i.ph = lshr i32 %i.pg, 24
  store i32 %i.ph, ptr %i.oz, align 4, !tbaa !14
end_hunk_0
