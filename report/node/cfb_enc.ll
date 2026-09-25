Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cfb_enc?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @DES_cfb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = alloca [4 x i32], align 16               ; 18 uses
  %i.c = sdiv i32 %2, 8                           ; 2 uses
  %i.d = add nsw i32 %2, 7
  %i.e = sdiv i32 %i.d, 8                         ; 5 uses
  %i.f = srem i32 %2, 8                           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.g = add i32 %2, -65
  %or.cond = icmp ult i32 %i.g, -64
  br i1 %or.cond, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %5, align 1                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 1              ; 4 uses
  %.not = icmp eq i32 %6, 0
  %i.k = zext nneg i32 %i.e to i64                ; 13 uses
  %.not250267 = icmp ult i64 %3, %i.k             ; 2 uses
  br i1 %.not, label %.preheader252, label %.preheader256

.preheader256:                                    ; preds = %bb.b
  br i1 %.not250267, label %.loopexit253, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader256
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = icmp eq i32 %i.f, 0
  %7 = trunc nuw nsw i32 %i.f to i8
  %i.q = zext nneg i32 %i.c to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %8 = insertelement <8 x i8> poison, i8 %7, i64 0
  %9 = shufflevector <8 x i8> %8, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %bb.c

.preheader252:                                    ; preds = %bb.b
  br i1 %.not250267, label %.loopexit253, label %.lr.ph273

.lr.ph273:                                        ; preds = %.preheader252
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = icmp eq i32 %i.f, 0
  %10 = trunc nuw nsw i32 %i.f to i8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %11 = insertelement <8 x i8> poison, i8 %10, i64 0
  %12 = shufflevector <8 x i8> %11, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %bb.y

bb.c:                                             ; preds = %.lr.ph, %.loopexit255
  %.0189264 = phi i64 [ %3, %.lr.ph ], [ %i.ab, %.loopexit255 ]
  %.0191263 = phi i32 [ %i.j, %.lr.ph ], [ %.1192, %.loopexit255 ] ; 3 uses
  %.0193262 = phi i32 [ %i.h, %.lr.ph ], [ %.1194, %.loopexit255 ] ; 2 uses
  %.0211261 = phi ptr [ %0, %.lr.ph ], [ %i.bn, %.loopexit255 ]
  %.0227260 = phi ptr [ %1, %.lr.ph ], [ %i.cp, %.loopexit255 ]
  %i.ab = sub nuw i64 %.0189264, %i.k             ; 2 uses
  store i32 %.0193262, ptr %i.a, align 4, !tbaa !12
  store i32 %.0191263, ptr %i.l, align 4, !tbaa !12
  call void @DES_encrypt1(ptr noundef nonnull %i.a, ptr noundef %4, i32 noundef 1) #4
  %i.ac = getelementptr inbounds nuw i8, ptr %.0211261, i64 %i.k ; 9 uses
  switch i32 %i.e, label %bb.l [
    i32 8, label %bb.d
    i32 7, label %bb.e
    i32 6, label %bb.f
    i32 5, label %bb.g
    i32 4, label %bb.h
    i32 3, label %bb.i
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1212 = phi ptr [ %i.ad, %bb.d ], [ %i.ac, %bb.c ]
  %.0198 = phi i32 [ %i.ag, %bb.d ], [ 0, %bb.c ]
  %i.ah = getelementptr inbounds i8, ptr %.1212, i64 -1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = or disjoint i32 %i.ak, %.0198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.2213 = phi ptr [ %i.ah, %bb.e ], [ %i.ac, %bb.c ]
  %.1199 = phi i32 [ %i.al, %bb.e ], [ 0, %bb.c ]
  %i.am = getelementptr inbounds i8, ptr %.2213, i64 -1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = or i32 %i.ap, %.1199
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.3214 = phi ptr [ %i.am, %bb.f ], [ %i.ac, %bb.c ]
  %.2200 = phi i32 [ %i.aq, %bb.f ], [ 0, %bb.c ]
  %i.ar = getelementptr inbounds i8, ptr %.3214, i64 -1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32
  %i.au = or i32 %.2200, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.4215 = phi ptr [ %i.ar, %bb.g ], [ %i.ac, %bb.c ]
  %.3201 = phi i32 [ %i.au, %bb.g ], [ 0, %bb.c ]
  %i.av = getelementptr inbounds i8, ptr %.4215, i64 -1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw i32 %i.ax, 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.5216 = phi ptr [ %i.av, %bb.h ], [ %i.ac, %bb.c ]
  %.0203 = phi i32 [ %i.ay, %bb.h ], [ 0, %bb.c ]
  %.4202 = phi i32 [ %.3201, %bb.h ], [ 0, %bb.c ]
  %i.az = getelementptr inbounds i8, ptr %.5216, i64 -1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 16
  %i.bd = or disjoint i32 %i.bc, %.0203
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.6217 = phi ptr [ %i.az, %bb.i ], [ %i.ac, %bb.c ]
  %.1204 = phi i32 [ %i.bd, %bb.i ], [ 0, %bb.c ]
  %.5 = phi i32 [ %.4202, %bb.i ], [ 0, %bb.c ]
  %i.be = getelementptr inbounds i8, ptr %.6217, i64 -1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = or i32 %i.bh, %.1204
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.7218 = phi ptr [ %i.be, %bb.j ], [ %i.ac, %bb.c ]
  %.2205 = phi i32 [ %i.bi, %bb.j ], [ 0, %bb.c ]
  %.6 = phi i32 [ %.5, %bb.j ], [ 0, %bb.c ]
  %i.bj = getelementptr inbounds i8, ptr %.7218, i64 -1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or i32 %.2205, %i.bl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.c
  %.8219 = phi ptr [ %i.ac, %bb.c ], [ %i.bj, %bb.k ]
  %.3206 = phi i32 [ 0, %bb.c ], [ %i.bm, %bb.k ]
  %.7 = phi i32 [ 0, %bb.c ], [ %.6, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.8219, i64 %i.k
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !12
  %i.bp = xor i32 %i.bo, %.3206                   ; 7 uses
  %i.bq = load i32, ptr %i.l, align 4, !tbaa !12
  %i.br = xor i32 %i.bq, %.7                      ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0227260, i64 %i.k ; 9 uses
  switch i32 %i.e, label %bb.u [
    i32 8, label %bb.m
    i32 7, label %bb.n
    i32 6, label %bb.o
    i32 5, label %bb.p
    i32 4, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.s
    i32 1, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  %i.bt = lshr i32 %i.br, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 -1 ; 2 uses
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1228 = phi ptr [ %i.bv, %bb.m ], [ %i.bs, %bb.l ]
  %i.bw = lshr i32 %i.br, 16
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds i8, ptr %.1228, i64 -1 ; 2 uses
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2229 = phi ptr [ %i.by, %bb.n ], [ %i.bs, %bb.l ]
  %i.bz = lshr i32 %i.br, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds i8, ptr %.2229, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.3230 = phi ptr [ %i.cb, %bb.o ], [ %i.bs, %bb.l ]
  %i.cc = trunc i32 %i.br to i8
  %i.cd = getelementptr inbounds i8, ptr %.3230, i64 -1 ; 2 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.4231 = phi ptr [ %i.cd, %bb.p ], [ %i.bs, %bb.l ]
  %i.ce = lshr i32 %i.bp, 24
  %i.cf = trunc nuw i32 %i.ce to i8
  %i.cg = getelementptr inbounds i8, ptr %.4231, i64 -1 ; 2 uses
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.5232 = phi ptr [ %i.cg, %bb.q ], [ %i.bs, %bb.l ]
  %i.ch = lshr i32 %i.bp, 16
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds i8, ptr %.5232, i64 -1 ; 2 uses
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %.6233 = phi ptr [ %i.cj, %bb.r ], [ %i.bs, %bb.l ]
  %i.ck = lshr i32 %i.bp, 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds i8, ptr %.6233, i64 -1 ; 2 uses
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l
  %.7234 = phi ptr [ %i.cm, %bb.s ], [ %i.bs, %bb.l ]
  %i.cn = trunc i32 %i.bp to i8
  %i.co = getelementptr inbounds i8, ptr %.7234, i64 -1 ; 2 uses
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.8235 = phi ptr [ %i.bs, %bb.l ], [ %i.co, %bb.t ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.8235, i64 %i.k
  switch i32 %2, label %bb.w [
    i32 32, label %.loopexit255
    i32 64, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  br label %.loopexit255

bb.w:                                             ; preds = %bb.u
  store i32 %.0193262, ptr %i.b, align 16, !tbaa !12
  store i32 %.0191263, ptr %i.m, align 4, !tbaa !12
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !12
  store i32 %i.br, ptr %i.o, align 4, !tbaa !12
  br i1 %i.p, label %bb.x, label %.preheader254.preheader

.preheader254.preheader:                          ; preds = %bb.w
  %i.cq = load <8 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.cr = load <8 x i8>, ptr %i.s, align 1, !tbaa !13
  %13 = call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.cq, <8 x i8> %i.cr, <8 x i8> %9)
  store <8 x i8> %13, ptr %i.b, align 16, !tbaa !13
  %.pre = load i32, ptr %i.b, align 16, !tbaa !12
  %.pre279 = load i32, ptr %i.m, align 4, !tbaa !12
  br label %.loopexit255

bb.x:                                             ; preds = %bb.w
  %i.cs = load i64, ptr %i.r, align 1             ; 3 uses
  store i64 %i.cs, ptr %i.b, align 16
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = lshr i64 %i.cs, 32
  %i.cv = trunc nuw i64 %i.cu to i32
  br label %.loopexit255

.loopexit255:                                     ; preds = %bb.x, %.preheader254.preheader, %bb.u, %bb.v
  %.1194 = phi i32 [ %.0191263, %bb.u ], [ %i.bp, %bb.v ], [ %.pre, %.preheader254.preheader ], [ %i.ct, %bb.x ] ; 2 uses
  %.1192 = phi i32 [ %i.bp, %bb.u ], [ %i.br, %bb.v ], [ %.pre279, %.preheader254.preheader ], [ %i.cv, %bb.x ] ; 2 uses
  %.not251 = icmp ult i64 %i.ab, %i.k
  br i1 %.not251, label %.loopexit253, label %bb.c, !llvm.loop !10

bb.y:                                             ; preds = %.lr.ph273, %bb.at
  %.1190272 = phi i64 [ %3, %.lr.ph273 ], [ %i.cw, %bb.at ]
  %.2271 = phi i32 [ %i.j, %.lr.ph273 ], [ %.3, %bb.at ] ; 3 uses
  %.2195270 = phi i32 [ %i.h, %.lr.ph273 ], [ %.3196, %bb.at ] ; 2 uses
  %.9220269 = phi ptr [ %0, %.lr.ph273 ], [ %i.ei, %bb.at ]
  %.9236268 = phi ptr [ %1, %.lr.ph273 ], [ %i.fq, %bb.at ]
  %i.cw = sub nuw i64 %.1190272, %i.k             ; 2 uses
  store i32 %.2195270, ptr %i.a, align 4, !tbaa !12
  store i32 %.2271, ptr %i.t, align 4, !tbaa !12
  call void @DES_encrypt1(ptr noundef nonnull %i.a, ptr noundef %4, i32 noundef 1) #4
  %i.cx = getelementptr inbounds nuw i8, ptr %.9220269, i64 %i.k ; 9 uses
  switch i32 %i.e, label %bb.ah [
    i32 8, label %bb.z
    i32 7, label %bb.aa
    i32 6, label %bb.ab
    i32 5, label %bb.ac
    i32 4, label %bb.ad
    i32 3, label %bb.ae
    i32 2, label %bb.af
    i32 1, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -1 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw i32 %i.da, 24
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.10221 = phi ptr [ %i.cy, %bb.z ], [ %i.cx, %bb.y ]
  %.8 = phi i32 [ %i.db, %bb.z ], [ 0, %bb.y ]
  %i.dc = getelementptr inbounds i8, ptr %.10221, i64 -1 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 16
  %i.dg = or disjoint i32 %i.df, %.8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.11222 = phi ptr [ %i.dc, %bb.aa ], [ %i.cx, %bb.y ]
  %.9 = phi i32 [ %i.dg, %bb.aa ], [ 0, %bb.y ]
  %i.dh = getelementptr inbounds i8, ptr %.11222, i64 -1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = or i32 %i.dk, %.9
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.12223 = phi ptr [ %i.dh, %bb.ab ], [ %i.cx, %bb.y ]
  %.10 = phi i32 [ %i.dl, %bb.ab ], [ 0, %bb.y ]
  %i.dm = getelementptr inbounds i8, ptr %.12223, i64 -1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i32
  %i.dp = or i32 %.10, %i.do
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.13224 = phi ptr [ %i.dm, %bb.ac ], [ %i.cx, %bb.y ]
  %.11 = phi i32 [ %i.dp, %bb.ac ], [ 0, %bb.y ]
  %i.dq = getelementptr inbounds i8, ptr %.13224, i64 -1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !13
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw i32 %i.ds, 24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.14225 = phi ptr [ %i.dq, %bb.ad ], [ %i.cx, %bb.y ]
  %.4207 = phi i32 [ %i.dt, %bb.ad ], [ 0, %bb.y ]
  %.12 = phi i32 [ %.11, %bb.ad ], [ 0, %bb.y ]
  %i.du = getelementptr inbounds i8, ptr %.14225, i64 -1 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 16
  %i.dy = or disjoint i32 %i.dx, %.4207
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %.15226 = phi ptr [ %i.du, %bb.ae ], [ %i.cx, %bb.y ]
  %.5208 = phi i32 [ %i.dy, %bb.ae ], [ 0, %bb.y ]
  %.13 = phi i32 [ %.12, %bb.ae ], [ 0, %bb.y ]
  %i.dz = getelementptr inbounds i8, ptr %.15226, i64 -1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = zext i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 8
  %i.ed = or i32 %i.ec, %.5208
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.y
  %.16 = phi ptr [ %i.dz, %bb.af ], [ %i.cx, %bb.y ]
  %.6209 = phi i32 [ %i.ed, %bb.af ], [ 0, %bb.y ]
  %.14 = phi i32 [ %.13, %bb.af ], [ 0, %bb.y ]
  %i.ee = getelementptr inbounds i8, ptr %.16, i64 -1 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  %i.eg = zext i8 %i.ef to i32
  %i.eh = or i32 %.6209, %i.eg
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.y
  %.17 = phi ptr [ %i.cx, %bb.y ], [ %i.ee, %bb.ag ]
  %.7210 = phi i32 [ 0, %bb.y ], [ %i.eh, %bb.ag ] ; 4 uses
  %.15 = phi i32 [ 0, %bb.y ], [ %.14, %bb.ag ]   ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.17, i64 %i.k
  switch i32 %2, label %bb.aj [
    i32 32, label %.loopexit
    i32 64, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %.loopexit

bb.aj:                                            ; preds = %bb.ah
  store i32 %.2195270, ptr %i.b, align 16, !tbaa !12
  store i32 %.2271, ptr %i.u, align 4, !tbaa !12
  store i32 %.7210, ptr %i.v, align 8, !tbaa !12
  store i32 %.15, ptr %i.w, align 4, !tbaa !12
  br i1 %i.x, label %bb.ak, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.aj
  %i.ej = load <8 x i8>, ptr %i.z, align 1, !tbaa !13
  %i.ek = load <8 x i8>, ptr %i.aa, align 1, !tbaa !13
  %14 = call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.ej, <8 x i8> %i.ek, <8 x i8> %12)
  store <8 x i8> %14, ptr %i.b, align 16, !tbaa !13
  %.pre280 = load i32, ptr %i.b, align 16, !tbaa !12
  %.pre281 = load i32, ptr %i.u, align 4, !tbaa !12
  br label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.el = load i64, ptr %i.z, align 1             ; 3 uses
  store i64 %i.el, ptr %i.b, align 16
  %i.em = trunc i64 %i.el to i32
  %i.en = lshr i64 %i.el, 32
  %i.eo = trunc nuw i64 %i.en to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %.preheader.preheader, %bb.ah, %bb.ai
  %.3196 = phi i32 [ %.2271, %bb.ah ], [ %.7210, %bb.ai ], [ %.pre280, %.preheader.preheader ], [ %i.em, %bb.ak ] ; 2 uses
  %.3 = phi i32 [ %.7210, %bb.ah ], [ %.15, %bb.ai ], [ %.pre281, %.preheader.preheader ], [ %i.eo, %bb.ak ] ; 2 uses
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !12
  %i.eq = xor i32 %i.ep, %.7210                   ; 4 uses
  %i.er = load i32, ptr %i.t, align 4, !tbaa !12
  %i.es = xor i32 %i.er, %.15                     ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.9236268, i64 %i.k ; 9 uses
  switch i32 %i.e, label %bb.at [
    i32 8, label %bb.al
    i32 7, label %bb.am
    i32 6, label %bb.an
    i32 5, label %bb.ao
    i32 4, label %bb.ap
    i32 3, label %bb.aq
    i32 2, label %bb.ar
    i32 1, label %bb.as
  ]

bb.al:                                            ; preds = %.loopexit
  %i.eu = lshr i32 %i.es, 24
  %i.ev = trunc nuw i32 %i.eu to i8
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 -1 ; 2 uses
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit
  %.10237 = phi ptr [ %i.ew, %bb.al ], [ %i.et, %.loopexit ]
  %i.ex = lshr i32 %i.es, 16
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr inbounds i8, ptr %.10237, i64 -1 ; 2 uses
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit
  %.11238 = phi ptr [ %i.ez, %bb.am ], [ %i.et, %.loopexit ]
  %i.fa = lshr i32 %i.es, 8
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds i8, ptr %.11238, i64 -1 ; 2 uses
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %.12239 = phi ptr [ %i.fc, %bb.an ], [ %i.et, %.loopexit ]
  %i.fd = trunc i32 %i.es to i8
  %i.fe = getelementptr inbounds i8, ptr %.12239, i64 -1 ; 2 uses
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit
  %.13240 = phi ptr [ %i.fe, %bb.ao ], [ %i.et, %.loopexit ]
  %i.ff = lshr i32 %i.eq, 24
  %i.fg = trunc nuw i32 %i.ff to i8
  %i.fh = getelementptr inbounds i8, ptr %.13240, i64 -1 ; 2 uses
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.loopexit
  %.14241 = phi ptr [ %i.fh, %bb.ap ], [ %i.et, %.loopexit ]
  %i.fi = lshr i32 %i.eq, 16
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds i8, ptr %.14241, i64 -1 ; 2 uses
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.loopexit
  %.15242 = phi ptr [ %i.fk, %bb.aq ], [ %i.et, %.loopexit ]
  %i.fl = lshr i32 %i.eq, 8
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds i8, ptr %.15242, i64 -1 ; 2 uses
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !13
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.loopexit
  %.16243 = phi ptr [ %i.fn, %bb.ar ], [ %i.et, %.loopexit ]
  %i.fo = trunc i32 %i.eq to i8
  %i.fp = getelementptr inbounds i8, ptr %.16243, i64 -1 ; 2 uses
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !13
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.loopexit
  %.17244 = phi ptr [ %i.et, %.loopexit ], [ %i.fp, %bb.as ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.17244, i64 %i.k
  %.not250 = icmp ult i64 %i.cw, %i.k
  br i1 %.not250, label %.loopexit253, label %bb.y, !llvm.loop !11

.loopexit253:                                     ; preds = %.loopexit255, %bb.at, %.preheader256, %.preheader252
  %.4197 = phi i32 [ %.3196, %bb.at ], [ %i.h, %.preheader252 ], [ %i.h, %.preheader256 ], [ %.1194, %.loopexit255 ]
  %.4 = phi i32 [ %.3, %bb.at ], [ %i.j, %.preheader252 ], [ %i.j, %.preheader256 ], [ %.1192, %.loopexit255 ]
  store i32 %.4197, ptr %5, align 1
  store i32 %.4, ptr %i.i, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %.loopexit253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @DES_encrypt1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.fshl.v8i8(<8 x i8>, <8 x i8>, <8 x i8>) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = distinct !{!10, !14}
!11 = distinct !{!11, !14}
!12 = !{!7, !7, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
