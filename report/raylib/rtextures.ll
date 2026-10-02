Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@qoi_encode:bb.a
  %.sroa.12.0.insert.insert = or disjoint i32 %.sroa.19.0.insert.insert, %.sroa.12.0.insert.shift
  %.sroa.066.0.insert.ext = zext i8 %i.bk to i32  ; 2 uses
  %.sroa.066.0.insert.insert = or disjoint i32 %.sroa.12.0.insert.insert, %.sroa.066.0.insert.ext ; 2 uses
  %.sroa.11.0.insert.ext = zext i8 %.sroa.11.0216 to i32
  %.sroa.11.0.insert.shift = shl nuw i32 %.sroa.11.0.insert.ext, 24
  %.sroa.9.0.insert.ext = zext i8 %.sroa.9.0217 to i32
  %.sroa.9.0.insert.shift = shl nuw nsw i32 %.sroa.9.0.insert.ext, 16
  %.sroa.9.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.shift, %.sroa.11.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %.sroa.7.0218 to i32
  %.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.7.0.insert.ext, 8
  %.sroa.7.0.insert.insert = or disjoint i32 %.sroa.9.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %.sroa.0.0219 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.insert, %.sroa.0.0.insert.ext
  %i.br = icmp eq i32 %.sroa.066.0.insert.insert, %.sroa.0.0.insert.insert
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = add nsw i32 %.0170214, 1                ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 62
  %i.bu = icmp eq i64 %indvars.iv, %i.be
  %or.cond187 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond187, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc i32 %.0170214 to i8
  %i.bw = or i8 %i.bv, -64
  %i.bx = add nsw i32 %.0210213, 1
  %i.by = sext i32 %.0210213 to i64
  %i.bz = getelementptr inbounds i8, ptr %i.u, i64 %i.by
  store i8 %i.bw, ptr %i.bz, align 1
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  %i.ca = icmp sgt i32 %.0170214, 0
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = trunc i32 %.0170214 to i8
  %i.cc = add i8 %i.cb, 63
  %i.cd = or i8 %i.cc, -64
  %i.ce = add nsw i32 %.0210213, 1
  %i.cf = sext i32 %.0210213 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.u, i64 %i.cf
  store i8 %i.cd, ptr %i.cg, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1211 = phi i32 [ %i.ce, %bb.o ], [ %.0210213, %bb.n ] ; 10 uses
  %.1 = phi i32 [ 0, %bb.o ], [ %.0170214, %bb.n ] ; 5 uses
  %i.ch = mul nuw nsw i32 %.sroa.066.0.insert.ext, 3
  %i.ci = mul nuw nsw i32 %.sroa.12.0.insert.ext, 5
  %i.cj = add nuw nsw i32 %i.ci, %i.ch
  %i.ck = mul nuw nsw i32 %.sroa.19.0.insert.ext, 7
  %i.cl = add nuw nsw i32 %i.cj, %i.ck
  %i.cm = mul nuw nsw i32 %.sroa.26.0.insert.ext, 11
  %i.cn = add nuw nsw i32 %i.cl, %i.cm
  %i.co = and i32 %i.cn, 63                       ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, %.sroa.066.0.insert.insert
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = trunc nuw nsw i32 %i.co to i8
  %i.cu = add nsw i32 %.1211, 1
  %i.cv = sext i32 %.1211 to i64
  %i.cw = getelementptr inbounds i8, ptr %i.u, i64 %i.cv
  store i8 %i.ct, ptr %i.cw, align 1
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  store i8 %i.bk, ptr %i.cq, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  store i8 %i.bm, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %i.bo, ptr %.sroa.19.0..sroa_idx, align 2
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 3
  store i8 %.sroa.26.1, ptr %.sroa.26.0..sroa_idx, align 1
  %i.cx = icmp eq i8 %.sroa.26.1, %.sroa.11.0216
  br i1 %i.cx, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cy = sub i8 %i.bk, %.sroa.0.0219             ; 3 uses
  %i.cz = sub i8 %i.bm, %.sroa.7.0218             ; 5 uses
  %i.da = sub i8 %i.bo, %.sroa.9.0217             ; 2 uses
  %i.db = add i8 %i.cy, 2
  %or.cond6 = icmp ult i8 %i.db, 4
  %i.dc = add i8 %i.cz, 2
  %i.dd = icmp ult i8 %i.dc, 4
  %or.cond12 = select i1 %or.cond6, i1 %i.dd, i1 false
  %i.de = add i8 %i.da, 2                         ; 2 uses
  %i.df = icmp ult i8 %i.de, 4
  %or.cond18 = select i1 %or.cond12, i1 %i.df, i1 false
  br i1 %or.cond18, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = shl nsw i8 %i.cy, 4
  %i.dh = add nsw i8 %i.dg, 32
  %i.di = shl nsw i8 %i.cz, 2
  %i.dj = add nsw i8 %i.di, 8
  %i.dk = or i8 %i.dh, %i.dj
  %i.dl = or disjoint i8 %i.dk, %i.de
  %i.dm = or i8 %i.dl, 64
  %i.dn = add nsw i32 %.1211, 1
  %i.do = sext i32 %.1211 to i64
  %i.dp = getelementptr inbounds i8, ptr %i.u, i64 %i.do
  store i8 %i.dm, ptr %i.dp, align 1
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dq = sub i8 %i.da, %i.cz
  %i.dr = sub i8 %i.cy, %i.cz                     ; 2 uses
  %i.ds = add i8 %i.dr, 8
  %or.cond21 = icmp ult i8 %i.ds, 16
  %i.dt = add i8 %i.cz, 32                        ; 2 uses
  %i.du = icmp ult i8 %i.dt, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.du, i1 false
  %i.dv = add i8 %i.dq, 8                         ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.dw, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = or disjoint i8 %i.dt, -128
  %i.dy = sext i32 %.1211 to i64
  %i.dz = getelementptr i8, ptr %i.u, i64 %i.dy   ; 2 uses
  store i8 %i.dx, ptr %i.dz, align 1
  %i.ea = shl nsw i8 %i.dr, 4
  %i.eb = or disjoint i8 %i.dv, %i.ea
  %i.ec = xor i8 %i.eb, -128
  %i.ed = add nsw i32 %.1211, 2
  %i.ee = getelementptr i8, ptr %i.dz, i64 1
  store i8 %i.ec, ptr %i.ee, align 1
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ef = sext i32 %.1211 to i64
  %i.eg = getelementptr i8, ptr %i.u, i64 %i.ef   ; 4 uses
  store i8 -2, ptr %i.eg, align 1
  %i.eh = getelementptr i8, ptr %i.eg, i64 1
  store i8 %i.bk, ptr %i.eh, align 1
  %i.ei = getelementptr i8, ptr %i.eg, i64 2
  store i8 %i.bm, ptr %i.ei, align 1
  %i.ej = add nsw i32 %.1211, 4
  %i.ek = getelementptr i8, ptr %i.eg, i64 3
  store i8 %i.bo, ptr %i.ek, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.el = sext i32 %.1211 to i64
  %i.em = getelementptr i8, ptr %i.u, i64 %i.el   ; 5 uses
  store i8 -1, ptr %i.em, align 1
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.bk, ptr %i.en, align 1
  %i.eo = getelementptr i8, ptr %i.em, i64 2
  store i8 %i.bm, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %i.em, i64 3
  store i8 %i.bo, ptr %i.ep, align 1
  %i.eq = add nsw i32 %.1211, 5
  %i.er = getelementptr i8, ptr %i.em, i64 4
  store i8 %.sroa.26.1, ptr %i.er, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bx, %bb.m ], [ %.0210213, %bb.l ], [ %i.cu, %bb.q ], [ %i.dn, %bb.t ], [ %i.ed, %bb.v ], [ %i.ej, %bb.w ], [ %i.eq, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.bs, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.es = icmp samesign ult i64 %indvars.iv.next, %i.bf
  br i1 %i.es, label %bb.i, label %.preheader.loopexit

bb.z:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.preheader
  %.0172 = phi ptr [ null, %bb.a ], [ %i.u, %.preheader ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #52
  ret ptr %.0172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoi_decode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca [64 x %union.qoi_rgba_t], align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #52
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 3
  %i.d = and i32 %3, -5
  %i.e = icmp ne i32 %i.d, 0
  %or.cond5 = and i1 %i.c, %i.e
  %i.f = icmp slt i32 %1, 22
  %or.cond7 = or i1 %i.f, %or.cond5
  br i1 %or.cond7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %6, 24
  %17 = shl nuw nsw i32 %9, 16
  %18 = or disjoint i32 %17, %16
  %19 = shl nuw nsw i32 %12, 8
  %20 = or disjoint i32 %18, %19
  %21 = or disjoint i32 %20, %15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 1              ; 2 uses
  %i.i = tail call i32 @llvm.bswap.i32(i32 %i.h)  ; 3 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.r, ptr %i.s, align 1
  %i.t = icmp eq i32 %i.h, 0
  %i.u = icmp eq i32 %i.k, 0
  %or.cond124 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond124, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = zext nneg i8 %i.o to i32
  %i.w = add i8 %i.o, -5
  %or.cond116 = icmp ult i8 %i.w, -2
  br i1 %or.cond116, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i8 %i.r, 1
  %i.y = icmp ne i32 %21, 1903126886
  %or.cond9 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond9, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = udiv i32 400000000, %i.i
  %.not = icmp ult i32 %i.l, %i.z
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i32 %3, 0
  %spec.select = select i1 %i.aa, i32 %i.v, i32 %3 ; 3 uses
  %i.ab = mul i32 %i.l, %i.i
  %i.ac = mul i32 %i.ab, %spec.select             ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #53 ; 4 uses
  %.not115 = icmp eq ptr %i.ae, null
  br i1 %.not115, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %i.af = add nsw i32 %1, -8
  %i.ag = icmp sgt i32 %i.ac, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ah = icmp eq i32 %spec.select, 4
  %i.ai = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.0102131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 2 uses
  %.sroa.0.0129 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.w ] ; 5 uses
  %.sroa.13.0128 = phi i8 [ 0, %.lr.ph ], [ %.sroa.13.2, %bb.w ] ; 5 uses
  %.sroa.22.0127 = phi i8 [ 0, %.lr.ph ], [ %.sroa.22.2, %bb.w ] ; 5 uses
  %.sroa.31.0126 = phi i8 [ -1, %.lr.ph ], [ %.sroa.31.2, %bb.w ] ; 6 uses
  %.0121125 = phi i32 [ 14, %.lr.ph ], [ %.2123, %bb.w ] ; 8 uses
  %i.aj = icmp sgt i32 %.0102131, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = add nsw i32 %.0102131, -1
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.al = icmp slt i32 %.0121125, %i.af
  br i1 %i.al, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %.0121125, 1                ; 6 uses
  %i.an = sext i32 %.0121125 to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.an     ; 6 uses
  %i.ap = load i8, ptr %i.ao, align 1             ; 6 uses
  %i.aq = zext i8 %i.ap to i32                    ; 3 uses
  switch i8 %i.ap, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ar = sext i32 %i.am to i64
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr i8, ptr %i.ao, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = add nsw i32 %.0121125, 4
  %i.ax = getelementptr i8, ptr %i.ao, i64 3
  %i.ay = load i8, ptr %i.ax, align 1
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.az = sext i32 %i.am to i64
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr i8, ptr %i.ao, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr i8, ptr %i.ao, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = add nsw i32 %.0121125, 5
  %i.bh = getelementptr i8, ptr %i.ao, i64 4
  %i.bi = load i8, ptr %i.bh, align 1
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.bj = lshr i32 %i.aq, 6
  switch i32 %i.bj, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.bk = zext i8 %i.ap to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %i.bl, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bm = lshr i8 %i.ap, 4
  %i.bn = and i8 %i.bm, 3
  %i.bo = add i8 %.sroa.0.0129, -2
  %i.bp = add i8 %i.bo, %i.bn
  %i.bq = lshr i8 %i.ap, 2
  %i.br = and i8 %i.bq, 3
  %i.bs = add i8 %.sroa.13.0128, -2
  %i.bt = add i8 %i.bs, %i.br
  %i.bu = and i8 %i.ap, 3
  %i.bv = add i8 %.sroa.22.0127, -2
  %i.bw = add i8 %i.bv, %i.bu
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.bx = add nsw i32 %.0121125, 2
  %i.by = sext i32 %i.am to i64
  %i.bz = getelementptr inbounds i8, ptr %0, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = and i32 %i.aq, 63                       ; 2 uses
  %i.cd = add nsw i32 %i.cc, -40                  ; 2 uses
  %i.ce = lshr i32 %i.cb, 4
  %i.cf = add nsw i32 %i.ce, %i.cd
  %i.cg = trunc nsw i32 %i.cf to i8
  %i.ch = add i8 %.sroa.0.0129, %i.cg
  %i.ci = trunc nuw nsw i32 %i.cc to i8
  %i.cj = add i8 %.sroa.13.0128, -32
  %i.ck = add i8 %i.cj, %i.ci
  %i.cl = and i32 %i.cb, 15
  %i.cm = add nsw i32 %i.cl, %i.cd
  %i.cn = trunc nsw i32 %i.cm to i8
  %i.co = add i8 %.sroa.22.0127, %i.cn
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cp = and i32 %i.aq, 63
  br label %bb.t

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.n, %bb.q, %bb.s, %bb.r, %bb.p, %bb.m
  %.1122 = phi i32 [ %i.am, %bb.p ], [ %i.am, %bb.q ], [ %i.bx, %bb.r ], [ %i.am, %bb.s ], [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %.sroa.31.1 = phi i8 [ %.sroa.31.0.copyload, %bb.p ], [ %.sroa.31.0126, %bb.q ], [ %.sroa.31.0126, %bb.r ], [ %.sroa.31.0126, %bb.s ], [ %.sroa.31.0126, %bb.m ], [ %i.bi, %bb.n ] ; 3 uses
  %.sroa.22.1 = phi i8 [ %.sroa.22.0.copyload, %bb.p ], [ %i.bw, %bb.q ], [ %i.co, %bb.r ], [ %.sroa.22.0127, %bb.s ], [ %i.ay, %bb.m ], [ %i.bf, %bb.n ] ; 3 uses
  %.sroa.13.1 = phi i8 [ %.sroa.13.0.copyload, %bb.p ], [ %i.bt, %bb.q ], [ %i.ck, %bb.r ], [ %.sroa.13.0128, %bb.s ], [ %i.av, %bb.m ], [ %i.bd, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.copyload, %bb.p ], [ %i.bp, %bb.q ], [ %i.ch, %bb.r ], [ %.sroa.0.0129, %bb.s ], [ %i.at, %bb.m ], [ %i.bb, %bb.n ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ %i.cp, %bb.s ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.cq = zext i8 %.sroa.0.1 to i64
  %i.cr = mul nuw nsw i64 %i.cq, 3
  %i.cs = zext i8 %.sroa.13.1 to i64
  %i.ct = mul nuw nsw i64 %i.cs, 5
  %i.cu = zext i8 %.sroa.22.1 to i64
  %i.cv = mul nuw nsw i64 %i.cu, 7
  %i.cw = zext i8 %.sroa.31.1 to i64
  %i.cx = mul nuw nsw i64 %i.cw, 11
  %i.cy = add nuw nsw i64 %i.cv, %i.cx
  %i.cz = add nuw nsw i64 %i.cy, %i.ct
  %i.da = add nuw nsw i64 %i.cz, %i.cr
  %i.db = and i64 %i.da, 63
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.db ; 4 uses
  store i8 %.sroa.0.1, ptr %i.dc, align 4
  %.sroa.13.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %.sroa.13.1, ptr %.sroa.13.0..sroa_idx41, align 1
  %.sroa.22.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i8 %.sroa.22.1, ptr %.sroa.22.0..sroa_idx46, align 2
  %.sroa.31.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dc, i64 3
  store i8 %.sroa.31.1, ptr %.sroa.31.0..sroa_idx51, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t, %bb.j
  %.2123 = phi i32 [ %.0121125, %bb.j ], [ %.1122, %bb.t ], [ %.0121125, %bb.k ]
  %.sroa.31.2 = phi i8 [ %.sroa.31.0126, %bb.j ], [ %.sroa.31.1, %bb.t ], [ %.sroa.31.0126, %bb.k ] ; 2 uses
  %.sroa.22.2 = phi i8 [ %.sroa.22.0127, %bb.j ], [ %.sroa.22.1, %bb.t ], [ %.sroa.22.0127, %bb.k ] ; 2 uses
  %.sroa.13.2 = phi i8 [ %.sroa.13.0128, %bb.j ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0128, %bb.k ] ; 2 uses
  %.sroa.0.2 = phi i8 [ %.sroa.0.0129, %bb.j ], [ %.sroa.0.1, %bb.t ], [ %.sroa.0.0129, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %i.ak, %bb.j ], [ %.1, %bb.t ], [ 0, %bb.k ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv ; 4 uses
  store i8 %.sroa.0.2, ptr %i.dd, align 1
  %i.de = getelementptr i8, ptr %i.dd, i64 1
  store i8 %.sroa.13.2, ptr %i.de, align 1
  %i.df = getelementptr i8, ptr %i.dd, i64 2
  store i8 %.sroa.22.2, ptr %i.df, align 1
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr i8, ptr %i.dd, i64 3
  store i8 %.sroa.31.2, ptr %i.dg, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.dh = trunc nuw i64 %indvars.iv.next to i32
  %i.di = icmp sgt i32 %i.ac, %i.dh
  br i1 %i.di, label %bb.i, label %.loopexit
end_hunk_0
