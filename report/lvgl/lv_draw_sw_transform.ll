Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_transform?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_transform(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readnone captures(none) %6, i32 noundef %7, ptr nofree noundef captures(address) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 108 ; 2 uses
  %i.e = sdiv i32 %i.b, -10                       ; 2 uses
  %.neg = mul nsw i32 %i.e, -10
  %i.f = sub i32 %.neg, %i.b                      ; 3 uses
  %i.g = trunc i32 %i.e to i16                    ; 4 uses
  %i.h = add i16 %i.g, 1
  %i.i = add i16 %i.g, 90
  %i.j = add i16 %i.g, 91
  %i.k = sub nsw i32 10, %i.f                     ; 2 uses
  %9 = load <2 x i32>, ptr %i.c, align 4, !tbaa !34
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 7 uses
  %11 = load i64, ptr %i.d, align 4               ; 2 uses
  %i.l = tail call i32 @lv_trigo_sin(i16 noundef signext %i.g) #4
  %i.m = tail call i32 @lv_trigo_sin(i16 noundef signext %i.h) #4
  %i.n = tail call i32 @lv_trigo_sin(i16 noundef signext %i.i) #4
  %i.o = tail call i32 @lv_trigo_sin(i16 noundef signext %i.j) #4
  %i.p = mul nsw i32 %i.l, %i.k
  %i.q = mul nsw i32 %i.m, %i.f
  %i.r = add nsw i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, 10
  %i.t = mul nsw i32 %i.n, %i.k
  %i.u = mul nsw i32 %i.o, %i.f
  %i.v = add nsw i32 %i.u, %i.t
  %i.w = sdiv i32 %i.v, 10
  %i.x = ashr i32 %i.s, 5                         ; 12 uses
  %i.y = ashr i32 %i.w, 5                         ; 12 uses
  %12 = insertelement <2 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <2 x i64> %12, <2 x i64> poison, <4 x i32> zeroinitializer
  %14 = lshr <4 x i64> %13, <i64 32, i64 0, i64 32, i64 0>
  %.sroa.97.44.extract.trunc.a = trunc i64 %11 to i32 ; 5 uses
  %15 = trunc <4 x i64> %14 to <4 x i32>          ; 6 uses
  %16 = shl nsw <4 x i32> %15, <i32 8, i32 8, i32 poison, i32 poison>
  %i.z = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 6 uses
  %i.aa = tail call i32 @lv_area_get_width(ptr noundef %0) #4 ; 19 uses
  %i.ab = tail call i32 @lv_area_get_height(ptr noundef %0) #4 ; 6 uses
  switch i32 %7, label %bb.b [
    i32 15, label %.thread
    i32 20, label %.thread426
    i32 21, label %bb.c
    i32 6, label %bb.c
  ]

.thread:                                          ; preds = %bb.a
  %i.ac = tail call zeroext i8 @lv_color_format_get_size(i32 noundef 16) #4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nsw i32 %i.aa, %i.ad
  br label %bb.f

.thread426:                                       ; preds = %bb.a
  %i.af = shl nsw i32 %i.aa, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ag = tail call zeroext i8 @lv_color_format_get_size(i32 noundef %7) #4
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.aa, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.0234 = phi i32 [ %i.aa, %bb.a ], [ %i.aa, %bb.a ], [ %i.ai, %bb.b ] ; 5 uses
  switch i32 %7, label %bb.f [
    i32 27, label %bb.d
    i32 20, label %bb.d
    i32 18, label %bb.d
    i32 21, label %bb.e
    i32 6, label %bb.e
  ]

bb.d:                                             ; preds = %.thread426, %bb.c, %bb.c, %bb.c
  %.0234428 = phi i32 [ %i.af, %.thread426 ], [ %.0234, %bb.c ], [ %.0234, %bb.c ], [ %.0234, %bb.c ] ; 2 uses
  %i.aj = mul nsw i32 %.0234428, %i.ab
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %8, i64 %i.ak
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.am = mul nsw i32 %i.ab, %i.aa
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %8, i64 %i.an
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.d
  %.0234425 = phi i32 [ %.0234428, %bb.d ], [ %.0234, %bb.e ], [ %.0234, %bb.c ], [ %i.ae, %.thread ]
  %.0231 = phi ptr [ %i.al, %bb.d ], [ %i.ao, %bb.e ], [ null, %bb.c ], [ null, %.thread ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 121
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = and i8 %i.aq, 16
  %i.as = icmp ne i8 %i.ar, 0                     ; 10 uses
  %i.at = load i32, ptr %i.a, align 8, !tbaa !33
  %.not = icmp eq i32 %i.at, 0                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.au = load <2 x i32>, ptr %i.d, align 4, !tbaa !34 ; 2 uses
  %i.av = xor <2 x i32> %i.au, splat (i32 -1)
  %i.aw = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.ax = insertelement <2 x i32> %i.aw, i32 %3, i64 1
  %i.ay = add <2 x i32> %i.ax, %i.av
  %i.az = load <2 x i32>, ptr %i.c, align 4, !tbaa !34
  %i.ba = mul nsw <2 x i32> %i.ay, %i.az
  %i.bb = ashr <2 x i32> %i.ba, splat (i32 8)
  %i.bc = add nsw <2 x i32> %i.bb, %i.au
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.be = load <4 x i32>, ptr %0, align 4, !tbaa !34
  %i.bf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.be, <4 x i32> %i.bd) ; 4 uses
  %17 = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 3 uses
  %i.bg = icmp eq i32 %i.b, 0
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = shufflevector <4 x i32> %10, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.bi = icmp eq <2 x i32> %i.bh, splat (i32 256) ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 0
  %i.bk = extractelement <2 x i1> %i.bi, i64 1
  %or.cond = select i1 %i.bk, i1 %i.bj, i1 false
  br i1 %or.cond, label %.thread442, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bl = extractelement <4 x i32> %i.bf, i64 0
  %i.bm = sub nsw i32 %i.bl, %.sroa.97.44.extract.trunc.a ; 3 uses
  %foldExtExtBinop = sub nsw <4 x i32> %17, %15
  %18 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bn = shufflevector <4 x i32> %10, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.bo = icmp eq <2 x i32> %i.bn, splat (i32 256) ; 2 uses
  %i.bp = extractelement <2 x i1> %i.bo, i64 0
  %i.bq = extractelement <2 x i1> %i.bo, i64 1
  %or.cond489 = select i1 %i.bq, i1 %i.bp, i1 false
  %shift = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop547 = sub nsw <4 x i32> %shift, %15
  %19 = extractelement <4 x i32> %foldExtExtBinop547, i64 0 ; 4 uses
  %i.br = extractelement <4 x i32> %i.bf, i64 2
  %i.bs = sub nsw i32 %i.br, %.sroa.97.44.extract.trunc.a ; 4 uses
  %i.bt = mul nsw i32 %18, %i.y
  %i.bu = mul nsw i32 %i.bm, %i.x
  %i.bv = add nsw i32 %i.bt, %i.bu                ; 2 uses
  br i1 %or.cond489, label %.thread454, label %transform_point_upscaled.exit

.thread442:                                       ; preds = %bb.h
  %i.bw = shl nsw <4 x i32> %17, splat (i32 8)
  br label %transform_point_upscaled.exit251

bb.j:                                             ; preds = %bb.h
  %20 = insertelement <4 x i32> poison, i32 %.sroa.97.44.extract.trunc.a, i64 0
  %21 = shufflevector <4 x i32> %15, <4 x i32> %20, <4 x i32> <i32 0, i32 4, i32 0, i32 4>
  %22 = sub nsw <4 x i32> %17, %21
  %23 = shl nsw <4 x i32> %22, splat (i32 16)
  %24 = sdiv <4 x i32> %23, %10
  %i.bx = add nsw <4 x i32> %24, %i.z
  br label %transform_point_upscaled.exit251

.thread454:                                       ; preds = %bb.i
  %i.by = mul nsw i32 %i.bm, %i.y
  %i.bz = mul nsw i32 %18, %i.x
  %i.ca = sub nsw i32 %i.by, %i.bz
  %i.cb = mul nsw i32 %i.bs, %i.y
  %i.cc = mul nsw i32 %19, %i.x
  %i.cd = sub nsw i32 %i.cb, %i.cc
  %i.ce = mul nsw i32 %i.bs, %i.x
  %i.cf = mul nsw i32 %19, %i.y
  %i.cg = add nsw i32 %i.cf, %i.ce
  %i.ch = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.ci = insertelement <4 x i32> %i.ch, i32 %i.ca, i64 1
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cg, i64 2
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.cd, i64 3
  %i.cl = ashr <4 x i32> %i.ck, splat (i32 2)
  %i.cm = add nsw <4 x i32> %i.cl, %i.z
  br label %transform_point_upscaled.exit251

transform_point_upscaled.exit:                    ; preds = %bb.i
  %i.cn = mul nsw i32 %i.bm, %i.y
  %i.co = mul nsw i32 %18, %i.x
  %i.cp = sub nsw i32 %i.cn, %i.co
  %i.cq = mul nsw i32 %i.bs, %i.y
  %i.cr = mul nsw i32 %19, %i.x
  %i.cs = sub nsw i32 %i.cq, %i.cr
  %i.ct = mul nsw i32 %i.bs, %i.x
  %i.cu = mul nsw i32 %19, %i.y
  %i.cv = add nsw i32 %i.cu, %i.ct
  %i.cw = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.cp, i64 1
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cv, i64 2
  %i.cz = insertelement <4 x i32> %i.cy, i32 %i.cs, i64 3
  %i.da = shl nsw <4 x i32> %i.cz, splat (i32 8)
  %i.db = sdiv <4 x i32> %i.da, %10
  %i.dc = ashr <4 x i32> %i.db, splat (i32 2)
  %i.dd = add nsw <4 x i32> %i.dc, %i.z
  br label %transform_point_upscaled.exit251

transform_point_upscaled.exit251:                 ; preds = %.thread442, %bb.j, %.thread454, %transform_point_upscaled.exit
  %i.de = phi <4 x i32> [ %i.bw, %.thread442 ], [ %i.bx, %bb.j ], [ %i.cm, %.thread454 ], [ %i.dd, %transform_point_upscaled.exit ] ; 6 uses
  %i.df = extractelement <4 x i32> %i.de, i64 0
  %shift549 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop550 = sub nsw <4 x i32> %shift549, %i.de
  %i.dg = extractelement <4 x i32> %foldExtExtBinop550, i64 0
  %i.dh = icmp sgt i32 %i.aa, 1
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %transform_point_upscaled.exit251
  %shift552 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop553 = sub nsw <4 x i32> %shift552, %i.de
  %i.di = extractelement <4 x i32> %foldExtExtBinop553, i64 1
  %i.dj = shl nsw i32 %i.di, 8
  %i.dk = add nsw i32 %i.aa, -1
  %i.dl = sdiv i32 %i.dj, %i.dk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %transform_point_upscaled.exit251
  %.0222 = phi i32 [ %i.dl, %bb.k ], [ 0, %transform_point_upscaled.exit251 ]
  %i.dm = icmp sgt i32 %i.ab, 1
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dn = shl nsw i32 %i.dg, 8
  %i.do = add nsw i32 %i.ab, -1
  %i.dp = sdiv i32 %i.dn, %i.do
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0224 = phi i32 [ %i.dp, %bb.m ], [ 0, %bb.l ]
  %i.dq = extractelement <4 x i32> %i.de, i64 1
  %i.dr = add nsw i32 %i.dq, 128
  %i.ds = add nsw i32 %i.df, 128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.0228 = phi i32 [ %i.dr, %bb.n ], [ 0, %bb.f ]
  %.0226 = phi i32 [ %i.ds, %bb.n ], [ 0, %bb.f ]
  %.1225 = phi i32 [ %.0224, %bb.n ], [ 0, %bb.f ]
  %.1223 = phi i32 [ %.0222, %bb.n ], [ 0, %bb.f ]
  %i.dt = icmp sgt i32 %i.ab, 0
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dv = icmp eq i32 %i.b, 0
  %i.dw = shufflevector <4 x i32> %10, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.dx = icmp eq <2 x i32> %i.dw, splat (i32 256) ; 2 uses
  %i.dy = extractelement <2 x i1> %i.dx, i64 0
  %i.dz = extractelement <2 x i1> %i.dx, i64 1
  %or.cond493 = select i1 %i.dz, i1 %i.dy, i1 false ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eb = icmp sgt i32 %i.aa, 1
  %i.ec = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ed = icmp sgt i32 %i.aa, 0                   ; 4 uses
  %i.ee = add nsw i32 %2, -1                      ; 4 uses
  %i.ef = add nsw i32 %3, -1                      ; 4 uses
  %wide.trip.count.i284 = zext nneg i32 %i.aa to i64 ; 4 uses
  %i.eg = sext i32 %.0234425 to i64
  %i.eh = sext i32 %i.aa to i64
  %25 = extractelement <4 x i32> %15, i64 0
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %transform_a8.exit
  %.0503 = phi i32 [ 0, %.lr.ph ], [ %i.ym, %transform_a8.exit ] ; 3 uses
  %.2502 = phi i32 [ %.1223, %.lr.ph ], [ %.4, %transform_a8.exit ]
  %.1229501 = phi i32 [ %.0228, %.lr.ph ], [ %.2230, %transform_a8.exit ]
  %.1232500 = phi ptr [ %.0231, %.lr.ph ], [ %.2233, %transform_a8.exit ] ; 11 uses
  %.0235499 = phi ptr [ %8, %.lr.ph ], [ %i.yk, %transform_a8.exit ] ; 14 uses
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ei = mul nsw i32 %.0503, %.1225
  %i.ej = ashr i32 %i.ei, 8
  %i.ek = add nsw i32 %i.ej, %.0226
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.el = load i32, ptr %0, align 4, !tbaa !35    ; 3 uses
  %i.em = load i32, ptr %i.du, align 4, !tbaa !36
  %i.en = add nsw i32 %i.em, %.0503               ; 3 uses
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eo = load i32, ptr %i.ea, align 4, !tbaa !37 ; 2 uses
  br i1 %or.cond493, label %.thread472, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ep = sub nsw i32 %i.el, %.sroa.97.44.extract.trunc.a ; 3 uses
  %i.eq = sub nsw i32 %i.en, %25                  ; 3 uses
  %i.er = load i32, ptr %i.ea, align 4, !tbaa !37
  %i.es = sub nsw i32 %i.er, %.sroa.97.44.extract.trunc.a ; 4 uses
  %i.et = mul nsw i32 %i.eq, %i.y                 ; 3 uses
  %i.eu = mul nsw i32 %i.ep, %i.x
  %i.ev = add nsw i32 %i.et, %i.eu                ; 2 uses
  br i1 %or.cond493, label %.thread484, label %bb.v

.thread472:                                       ; preds = %bb.s
  %i.ew = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.ex = insertelement <4 x i32> %i.ew, i32 %i.el, i64 1
  %i.ey = insertelement <4 x i32> %i.ex, i32 %i.eo, i64 3
  %i.ez = shl nsw <4 x i32> %i.ey, <i32 8, i32 8, i32 poison, i32 8>
  %i.fa = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  br label %transform_point_upscaled.exit255

bb.u:                                             ; preds = %bb.s
  %i.fb = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.el, i64 1
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.eo, i64 3
  %i.fe = shufflevector <4 x i32> %i.fd, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ff = sub nsw <4 x i32> %i.fe, %15
  %i.fg = shl nsw <4 x i32> %i.ff, splat (i32 16)
  %i.fh = sdiv <4 x i32> %i.fg, %10
  %i.fi = add nsw <4 x i32> %i.fh, %i.z
  br label %transform_point_upscaled.exit255

.thread484:                                       ; preds = %bb.t
  %i.fj = mul nsw i32 %i.ep, %i.y
  %i.fk = mul nsw i32 %i.eq, %i.x                 ; 2 uses
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = mul nsw i32 %i.es, %i.y
  %i.fn = sub nsw i32 %i.fm, %i.fk
  %i.fo = mul nsw i32 %i.es, %i.x
  %i.fp = add nsw i32 %i.et, %i.fo
  %i.fq = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.fl, i64 1
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fp, i64 2
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fn, i64 3
  %i.fu = ashr <4 x i32> %i.ft, splat (i32 2)
  %i.fv = add nsw <4 x i32> %i.fu, %i.z
  br label %transform_point_upscaled.exit255

bb.v:                                             ; preds = %bb.t
  %i.fw = mul nsw i32 %i.ep, %i.y
  %i.fx = mul nsw i32 %i.eq, %i.x                 ; 2 uses
  %i.fy = sub nsw i32 %i.fw, %i.fx
  %i.fz = mul nsw i32 %i.es, %i.y
  %i.ga = sub nsw i32 %i.fz, %i.fx
  %i.gb = mul nsw i32 %i.es, %i.x
  %i.gc = add nsw i32 %i.gb, %i.et
  %i.gd = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.fy, i64 1
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.gc, i64 2
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.ga, i64 3
  %i.gh = shl nsw <4 x i32> %i.gg, splat (i32 8)
  %i.gi = sdiv <4 x i32> %i.gh, %10
  %i.gj = ashr <4 x i32> %i.gi, splat (i32 2)
  %i.gk = add nsw <4 x i32> %i.gj, %i.z
  br label %transform_point_upscaled.exit255

transform_point_upscaled.exit255:                 ; preds = %.thread472, %bb.u, %.thread484, %bb.v
  %i.gl = phi <4 x i32> [ %i.fa, %.thread472 ], [ %i.fi, %bb.u ], [ %i.fv, %.thread484 ], [ %i.gk, %bb.v ] ; 6 uses
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %transform_point_upscaled.exit255
  %shift555 = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop556 = sub nsw <4 x i32> %shift555, %i.gl
  %i.gm = extractelement <4 x i32> %foldExtExtBinop556, i64 0
  %shift558 = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop559 = sub nsw <4 x i32> %shift558, %i.gl
  %i.gn = extractelement <4 x i32> %foldExtExtBinop559, i64 1
  %i.go = shl nsw i32 %i.gn, 8
  %i.gp = sdiv i32 %i.go, %i.ec
  %i.gq = shl nsw i32 %i.gm, 8
  %i.gr = sdiv i32 %i.gq, %i.ec
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %transform_point_upscaled.exit255
  %.3 = phi i32 [ %i.gp, %bb.w ], [ 0, %transform_point_upscaled.exit255 ]
  %.0221 = phi i32 [ %i.gr, %bb.w ], [ 0, %transform_point_upscaled.exit255 ]
  %i.gs = extractelement <4 x i32> %i.gl, i64 1
  %i.gt = add nsw i32 %i.gs, 128
  %i.gu = extractelement <4 x i32> %i.gl, i64 0
  %i.gv = add nsw i32 %i.gu, 128
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.2230 = phi i32 [ %.1229501, %bb.q ], [ %i.gt, %bb.x ] ; 11 uses
  %.0227 = phi i32 [ %i.ek, %bb.q ], [ %i.gv, %bb.x ] ; 10 uses
  %.4 = phi i32 [ %.2502, %bb.q ], [ %.3, %bb.x ] ; 11 uses
  %.1 = phi i32 [ 0, %bb.q ], [ %.0221, %bb.x ]   ; 10 uses
  switch i32 %7, label %._crit_edge [
    i32 17, label %bb.z
    i32 15, label %bb.aa
    i32 14, label %bb.ab
    i32 16, label %bb.ar
    i32 26, label %bb.bo
    i32 18, label %bb.cp
    i32 27, label %bb.cq
    i32 20, label %bb.de
    i32 6, label %bb.df
    i32 21, label %bb.dg
  ]

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @transform_rgb888(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.aa, ptr noundef %.0235499, i1 noundef zeroext %i.as, i32 noundef 4)
  br label %transform_a8.exit

bb.aa:                                            ; preds = %bb.y
  tail call fastcc void @transform_rgb888(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.aa, ptr noundef %.0235499, i1 noundef zeroext %i.as, i32 noundef 3)
  br label %transform_a8.exit

bb.ab:                                            ; preds = %bb.y
  br i1 %i.ed, label %.lr.ph.i, label %transform_a8.exit

.lr.ph.i:                                         ; preds = %bb.ab, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ 0, %bb.ab ] ; 4 uses
  %i.gw = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.gx = mul i32 %.4, %i.gw
  %i.gy = ashr i32 %i.gx, 8
  %i.gz = add nsw i32 %i.gy, %.2230               ; 2 uses
  %i.ha = mul i32 %.1, %i.gw
  %i.hb = ashr i32 %i.ha, 8
  %i.hc = add nsw i32 %i.hb, %.0227               ; 2 uses
  %i.hd = ashr i32 %i.gz, 8                       ; 6 uses
  %i.he = ashr i32 %i.hc, 8                       ; 6 uses
  %i.hf = icmp slt i32 %i.hd, 0
  br i1 %i.hf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hg = icmp slt i32 %i.hd, %2
  %i.hh = icmp sgt i32 %i.he, -1
  %.not.i = icmp slt i32 %i.he, %3
  %i.hi = and i1 %i.hh, %.not.i
  %or.cond124.i = select i1 %i.hg, i1 %i.hi, i1 false
  br i1 %or.cond124.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.0235499, i64 %indvars.iv.i
  store i8 0, ptr %i.hj, align 1, !tbaa !9
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.hk = and i32 %i.gz, 255                      ; 2 uses
  %i.hl = and i32 %i.hc, 255                      ; 2 uses
  %i.hm = icmp samesign ult i32 %i.hk, 128        ; 4 uses
  %i.hn = shl nuw nsw i32 %i.hk, 1                ; 2 uses
  %i.ho = sub nuw nsw i32 254, %i.hn
  %i.hp = add nsw i32 %i.hn, -256
  %.0103.i = select i1 %i.hm, i32 %i.ho, i32 %i.hp ; 3 uses
  %.0101.i = select i1 %i.hm, i32 -1, i32 1       ; 2 uses
  %i.hq = icmp samesign ult i32 %i.hl, 128        ; 4 uses
  %i.hr = shl nuw nsw i32 %i.hl, 1                ; 2 uses
  %i.hs = sub nuw nsw i32 254, %i.hr
  %i.ht = add nsw i32 %i.hr, -256
  %.0102.i = select i1 %i.hq, i32 %i.hs, i32 %i.ht ; 3 uses
  %.0100.i = select i1 %i.hq, i32 -1, i32 1       ; 2 uses
  %i.hu = mul nsw i32 %i.he, %4
  %i.hv = add nsw i32 %i.hu, %i.hd
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %1, i64 %i.hw ; 3 uses
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !9   ; 9 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0235499, i64 %indvars.iv.i ; 4 uses
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !9
  br i1 %i.as, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.ia = add nsw i32 %.0101.i, %i.hd             ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, -1
  %.not118.not.i = icmp slt i32 %i.ia, %2
  %or.cond125.i = and i1 %i.ib, %.not118.not.i
  br i1 %or.cond125.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ic = add nsw i32 %.0100.i, %i.he             ; 2 uses
  %i.id = icmp sgt i32 %i.ic, -1
  %.not119.not.i = icmp slt i32 %i.ic, %3
  %or.cond126.i = and i1 %i.id, %.not119.not.i
  br i1 %or.cond126.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.ie = sext i32 %.0101.i to i64
  %i.if = getelementptr inbounds i8, ptr %i.hx, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !9   ; 2 uses
  %i.ih = mul nsw i32 %.0100.i, %4
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.hx, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !9   ; 2 uses
  %.not122.i = icmp eq i8 %i.ig, %i.hy
  br i1 %.not122.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.il = zext i8 %i.hy to i32
  %i.im = zext i8 %i.ig to i32
  %i.in = mul nuw nsw i32 %.0102.i, %i.im
  %i.io = sub nuw nsw i32 256, %.0102.i
  %i.ip = mul nuw nsw i32 %i.io, %i.il
  %i.iq = add nuw nsw i32 %i.in, %i.ip
  %i.ir = lshr i32 %i.iq, 8
  %i.is = trunc i32 %i.ir to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.099.i = phi i8 [ %i.is, %bb.ai ], [ %i.hy, %bb.ah ]
  %.not123.i = icmp eq i8 %i.ik, %i.hy
  br i1 %.not123.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.it = zext i8 %i.hy to i32
  %i.iu = zext i8 %i.ik to i32
  %i.iv = mul nuw nsw i32 %.0103.i, %i.iu
  %i.iw = sub nuw nsw i32 256, %.0103.i
  %i.ix = mul nuw nsw i32 %i.iw, %i.it
  %i.iy = add nuw nsw i32 %i.iv, %i.ix
  %i.iz = lshr i32 %i.iy, 8
  %i.ja = trunc i32 %i.iz to i8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i = phi i8 [ %i.ja, %bb.ak ], [ %i.hy, %bb.aj ]
  %i.jb = zext i8 %.099.i to i16
  %i.jc = zext i8 %.0.i to i16
  %i.jd = add nuw nsw i16 %i.jc, %i.jb
  %i.je = lshr i16 %i.jd, 1
  %i.jf = trunc nuw i16 %i.je to i8
  store i8 %i.jf, ptr %i.hz, align 1, !tbaa !9
  br label %bb.aq

bb.am:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.jg = icmp eq i32 %i.hd, 0
  %or.cond3.i = and i1 %i.jg, %i.hm
  %or.cond3.not.i = xor i1 %or.cond3.i, true
  %i.jh = icmp ne i32 %i.hd, %i.ee
  %or.cond5.not.i = or i1 %i.jh, %i.hm
  %or.cond.i = select i1 %or.cond3.not.i, i1 %or.cond5.not.i, i1 false
  br i1 %or.cond.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ji = zext i8 %i.hy to i32
  %i.jj = sub nuw nsw i32 255, %.0103.i
  %i.jk = mul nuw nsw i32 %i.jj, %i.ji
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = trunc nuw i32 %i.jl to i8
  store i8 %i.jm, ptr %i.hz, align 1, !tbaa !9
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.jn = icmp eq i32 %i.he, 0
  %or.cond7.i = and i1 %i.jn, %i.hq
  %or.cond7.not.i = xor i1 %or.cond7.i, true
  %i.jo = icmp ne i32 %i.he, %i.ef
  %or.cond9.not.i = or i1 %i.jo, %i.hq
  %or.cond131.i = select i1 %or.cond7.not.i, i1 %or.cond9.not.i, i1 false
  br i1 %or.cond131.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
end_hunk_0
