Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/iparam2stage?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"GEQRF\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"GELQF\00", align 1

; Function Attrs: nounwind uwtable
define i32 @iparam2stage_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [6 x i8], align 1                 ; 20 uses
  %i.c = alloca [14 x i8], align 1                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = load i32, ptr %0, align 4, !tbaa !8      ; 5 uses
  %i.e = add i32 %i.d, -22
  %or.cond163 = icmp ult i32 %i.e, -5
  br i1 %or.cond163, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 19
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 13) #7 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 0, ptr %i.g, align 1, !tbaa !9
  %i.h = tail call ptr @__ctype_toupper_loc() #8  ; 13 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = load i8, ptr %i.c, align 1, !tbaa !9
  %i.k = sext i8 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = trunc i32 %i.m to i8                     ; 5 uses
  store i8 %i.n, ptr %i.c, align 1, !tbaa !9
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = trunc i32 %i.t to i8
  store i8 %i.u, ptr %i.p, align 1, !tbaa !9
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = sext i8 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !9
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !9
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = trunc i32 %i.ao to i8
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !9
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = trunc i32 %i.av to i8
  store i8 %i.aw, ptr %i.ar, align 1, !tbaa !9
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9
  %i.ba = sext i8 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ay, align 1, !tbaa !9
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = sext i8 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !9
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9
  %i.bo = sext i8 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = trunc i32 %i.bq to i8
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !9
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9
  %i.bv = sext i8 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = trunc i32 %i.bx to i8
  store i8 %i.by, ptr %i.bt, align 1, !tbaa !9
  %i.bz = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = sext i8 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = trunc i32 %i.ce to i8
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !9
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cj = sext i8 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ch, align 1, !tbaa !9
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = sext i8 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !8
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %i.co, align 1, !tbaa !9
  %i.cu = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.ad, i64 noundef 3) #7 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.cv, align 1, !tbaa !9
  %i.cw = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 5) #7 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 0, ptr %i.cx, align 1, !tbaa !9
  %i.cy = icmp ne i8 %i.n, 67
  %i.cz = icmp ne i8 %i.n, 90
  %.not171 = and i1 %i.cy, %i.cz
  switch i8 %i.n, label %bb.x [
    i8 90, label %bb.d
    i8 83, label %bb.d
    i8 68, label %bb.d
    i8 67, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  switch i32 %i.d, label %bb.x [
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 21, label %bb.w
    i32 20, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %. = select i1 %.not171, i32 32, i32 16
  %i.da = icmp eq i32 %i.d, 17
  %.1 = select i1 %i.da, i32 %., i32 -1
  %i.db = icmp eq i32 %i.d, 18
  %spec.select = select i1 %i.db, i32 16, i32 %.1
  br label %bb.x

.thread:                                          ; preds = %bb.b
  %i.dc = load i8, ptr %2, align 1, !tbaa !9
  %i.dd = icmp eq i8 %i.dc, 78
  %i.de = load i32, ptr %3, align 4, !tbaa !8
  %i.df = shl i32 %i.de, 2
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1) ; 2 uses
  br i1 %i.dd, label %bb.x, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.dh = load i32, ptr %5, align 4, !tbaa !8
  %i.di = add nsw i32 %i.dg, %i.dh
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 -1)
  br label %bb.x

.critedge:                                        ; preds = %bb.d
  %i.dk = call noalias dereferenceable_or_null(7) ptr @malloc(i64 noundef 7) #9 ; 4 uses
  store i8 %i.n, ptr %i.dk, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dl, ptr noundef nonnull align 1 dereferenceable(6) @.str, i64 6, i1 false)
  %i.dm = call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 12, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dl, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dl, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false), !tbaa !9
  %i.dn = call i32 @ilaenv_(ptr noundef nonnull @c__1, ptr noundef nonnull %i.dk, ptr noundef nonnull @.str.1, ptr noundef %4, ptr noundef %3, ptr noundef nonnull @c_n1, ptr noundef nonnull @c_n1, i32 noundef 12, i32 noundef 1) #7
  %i.do = call i32 @llvm.smax.i32(i32 %i.dm, i32 %i.dn) ; 4 uses
  %i.dp = load i16, ptr %i.a, align 1
  %i.dq = xor i16 %i.dp, 21076
  %i.dr = getelementptr i8, ptr %i.a, i64 2
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i16
  %i.du = xor i16 %i.dt, 68
  %i.dv = or i16 %i.dq, %i.du
  %i.dw = icmp ne i16 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.critedge
  %i.dz = load i32, ptr %i.b, align 1
  %i.ea = xor i32 %i.dz, 1096045362
  %i.eb = getelementptr i8, ptr %i.b, i64 4
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = xor i32 %i.ed, 71
  %i.ef = or i32 %i.ea, %i.ee
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ej = load i32, ptr %4, align 4, !tbaa !8     ; 5 uses
  %i.ek = add nsw i32 %i.ej, 1                    ; 2 uses
  %i.el = shl i32 %i.ej, 1
  %i.em = mul nsw i32 %i.el, %i.ej
  %i.en = load i32, ptr %3, align 4, !tbaa !8
  %i.eo = call i32 @llvm.smax.i32(i32 %i.ek, i32 %i.do)
  %i.ep = call i32 @llvm.smax.i32(i32 %i.em, i32 %i.ej)
  %i.eq = add i32 %i.ek, %i.ej
  %reass.add173 = add i32 %i.eq, %i.eo
  %reass.mul174 = mul i32 %reass.add173, %i.en
  %i.er = add i32 %reass.mul174, %i.ep
  br label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.es = load i32, ptr %i.b, align 1
  %i.et = xor i32 %i.es, 1211254088
  %i.eu = getelementptr i8, ptr %i.b, i64 4
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i32
  %i.ex = xor i32 %i.ew, 66
  %i.ey = or i32 %i.et, %i.ex
  %i.ez = icmp ne i32 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fc = load i32, ptr %i.b, align 1
  %i.fd = xor i32 %i.fc, 1395808595
  %i.fe = getelementptr i8, ptr %i.b, i64 4
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i32
  %i.fh = xor i32 %i.fg, 66
  %i.fi = or i32 %i.fd, %i.fh
  %i.fj = icmp ne i32 %i.fi, 0
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fm = load i32, ptr %3, align 4, !tbaa !8
  %i.fn = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %.164 = call i32 @llvm.smax.i32(i32 %i.fn, i32 %i.do)
  %i.fo = add i32 %.164, %i.fn
  %i.fp = mul i32 %i.fo, %i.fm
  %i.fq = shl i32 %i.fn, 1
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = add nsw i32 %i.fp, %i.fr
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.ft = load i32, ptr %i.b, align 1
  %i.fu = xor i32 %i.ft, 1395802696
  %i.fv = getelementptr i8, ptr %i.b, i64 4
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i32
  %i.fy = xor i32 %i.fx, 84
  %i.fz = or i32 %i.fu, %i.fy
  %i.ga = icmp ne i32 %i.fz, 0
  %i.gb = zext i1 %i.ga to i32
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gd = load i32, ptr %i.b, align 1
  %i.ge = xor i32 %i.gd, 1395802707
  %i.gf = getelementptr i8, ptr %i.b, i64 4
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = xor i32 %i.gh, 84
  %i.gj = or i32 %i.ge, %i.gi
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gn = load i32, ptr %4, align 4, !tbaa !8     ; 2 uses
  %i.go = shl i32 %i.gn, 1
  %i.gp = or disjoint i32 %i.go, 1
  %i.gq = load i32, ptr %3, align 4, !tbaa !8
  %i.gr = mul nsw i32 %i.gp, %i.gq
  %i.gs = add nsw i32 %i.gr, %i.gn
  br label %bb.v

bb.o:                                             ; preds = %.critedge
  %i.gt = load i16, ptr %i.a, align 1
  %i.gu = xor i16 %i.gt, 21058
  %i.gv = getelementptr i8, ptr %i.a, i64 2
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i16
  %i.gy = xor i16 %i.gx, 68
  %i.gz = or i16 %i.gu, %i.gy
  %i.ha = icmp ne i16 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.hd = load i32, ptr %i.b, align 1
  %i.he = xor i32 %i.hd, 1096045362
  %i.hf = getelementptr i8, ptr %i.b, i64 4
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i32
  %i.hi = xor i32 %i.hh, 71
  %i.hj = or i32 %i.he, %i.hi
  %i.hk = icmp ne i32 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hn = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %i.ho = add nsw i32 %i.hn, 1                    ; 2 uses
  %i.hp = shl i32 %i.hn, 1                        ; 2 uses
  %i.hq = mul nsw i32 %i.hp, %i.hn
  %i.hr = load i32, ptr %3, align 4, !tbaa !8
  %i.hs = call i32 @llvm.smax.i32(i32 %i.ho, i32 %i.do)
  %i.ht = call i32 @llvm.smax.i32(i32 %i.hq, i32 %i.hn)
  %reass.add = add i32 %i.hs, %i.ho
  %reass.add172 = add i32 %reass.add, %i.hp
  %reass.mul = mul i32 %reass.add172, %i.hr
  %i.hu = add i32 %reass.mul, %i.ht
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.hv = load i32, ptr %i.b, align 1
  %i.hw = xor i32 %i.hv, 1194476871
  %i.hx = getelementptr i8, ptr %i.b, i64 4
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = zext i8 %i.hy to i32
  %i.ia = xor i32 %i.hz, 66
  %i.ib = or i32 %i.hw, %i.ia
  %i.ic = icmp ne i32 %i.ib, 0
  %i.id = zext i1 %i.ic to i32
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.if = load i32, ptr %3, align 4, !tbaa !8
  %i.ig = load i32, ptr %4, align 4, !tbaa !8     ; 4 uses
  %.165 = call i32 @llvm.smax.i32(i32 %i.ig, i32 %i.do)
  %i.ih = add i32 %.165, %i.ig
  %i.ii = mul i32 %i.ih, %i.if
  %i.ij = shl i32 %i.ig, 1
  %i.ik = mul nsw i32 %i.ij, %i.ig
  %i.il = add nsw i32 %i.ii, %i.ik
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.im = load i32, ptr %i.b, align 1
  %i.in = xor i32 %i.im, 1110590023
  %i.io = getelementptr i8, ptr %i.b, i64 4
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i32
  %i.ir = xor i32 %i.iq, 68
  %i.is = or i32 %i.in, %i.ir
  %i.it = icmp ne i32 %i.is, 0
  %i.iu = zext i1 %i.it to i32
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %bb.u, label %bb.v

end_hunk_0
