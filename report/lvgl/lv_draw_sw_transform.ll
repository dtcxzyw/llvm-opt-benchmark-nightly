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
  %i.e = load i64, ptr %i.d, align 4, !tbaa !34   ; 5 uses
  %i.f = sdiv i32 %i.b, -10                       ; 2 uses
  %.neg = mul nsw i32 %i.f, -10
  %i.g = sub i32 %.neg, %i.b                      ; 3 uses
  %i.h = trunc i32 %i.f to i16                    ; 4 uses
  %i.i = add i16 %i.h, 1
  %i.j = add i16 %i.h, 90
  %i.k = add i16 %i.h, 91
  %i.l = sub nsw i32 10, %i.g                     ; 2 uses
  %.sroa.97.48.extract.shift = lshr i64 %i.e, 32
  %i.m = load <2 x i32>, ptr %i.c, align 4, !tbaa !34 ; 2 uses
  %i.n = shufflevector <2 x i32> %i.m, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 6 uses
  %i.o = tail call i32 @lv_trigo_sin(i16 noundef signext %i.h) #4
  %i.p = tail call i32 @lv_trigo_sin(i16 noundef signext %i.i) #4
  %i.q = tail call i32 @lv_trigo_sin(i16 noundef signext %i.j) #4
  %i.r = tail call i32 @lv_trigo_sin(i16 noundef signext %i.k) #4
  %i.s = mul nsw i32 %i.o, %i.l
  %i.t = mul nsw i32 %i.p, %i.g
  %i.u = add nsw i32 %i.t, %i.s
  %i.v = sdiv i32 %i.u, 10
  %i.w = mul nsw i32 %i.q, %i.l
  %i.x = mul nsw i32 %i.r, %i.g
  %i.y = add nsw i32 %i.x, %i.w
  %i.z = sdiv i32 %i.y, 10
  %i.aa = ashr i32 %i.v, 5                        ; 12 uses
  %i.ab = ashr i32 %i.z, 5                        ; 12 uses
  %.sroa.97.44.extract.trunc = trunc i64 %i.e to i32 ; 4 uses
  %i.ac = bitcast i64 %i.e to <2 x i32>
  %i.ad = bitcast i64 %i.e to <2 x i32>
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.97.48.extract.trunc = trunc nuw i64 %.sroa.97.48.extract.shift to i32 ; 3 uses
  %i.af = shl nsw <2 x i32> %i.ac, splat (i32 8)
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.ai = tail call i32 @lv_area_get_width(ptr noundef %0) #4 ; 19 uses
  %i.aj = tail call i32 @lv_area_get_height(ptr noundef %0) #4 ; 6 uses
  switch i32 %7, label %bb.b [
    i32 15, label %.thread
    i32 20, label %.thread426
    i32 21, label %bb.c
    i32 6, label %bb.c
  ]

.thread:                                          ; preds = %bb.a
  %i.ak = tail call zeroext i8 @lv_color_format_get_size(i32 noundef 16) #4
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nsw i32 %i.ai, %i.al
  br label %bb.f

.thread426:                                       ; preds = %bb.a
  %i.an = shl nsw i32 %i.ai, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ao = tail call zeroext i8 @lv_color_format_get_size(i32 noundef %7) #4
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.ai, %i.ap
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.0234 = phi i32 [ %i.ai, %bb.a ], [ %i.ai, %bb.a ], [ %i.aq, %bb.b ] ; 5 uses
  switch i32 %7, label %bb.f [
    i32 27, label %bb.d
    i32 20, label %bb.d
    i32 18, label %bb.d
    i32 21, label %bb.e
    i32 6, label %bb.e
  ]

bb.d:                                             ; preds = %.thread426, %bb.c, %bb.c, %bb.c
  %.0234428 = phi i32 [ %i.an, %.thread426 ], [ %.0234, %bb.c ], [ %.0234, %bb.c ], [ %.0234, %bb.c ] ; 2 uses
  %i.ar = mul nsw i32 %.0234428, %i.aj
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %8, i64 %i.as
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.au = mul nsw i32 %i.aj, %i.ai
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %8, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.d
  %.0234425 = phi i32 [ %.0234428, %bb.d ], [ %.0234, %bb.e ], [ %.0234, %bb.c ], [ %i.am, %.thread ]
  %.0231 = phi ptr [ %i.at, %bb.d ], [ %i.aw, %bb.e ], [ null, %bb.c ], [ null, %.thread ]
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 121
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = and i8 %i.ay, 16
  %i.ba = icmp ne i8 %i.az, 0                     ; 10 uses
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !33
  %.not = icmp eq i32 %i.bb, 0                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.bc = load <2 x i32>, ptr %i.d, align 4, !tbaa !34 ; 2 uses
  %i.bd = xor <2 x i32> %i.bc, splat (i32 -1)
  %i.be = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.bf = insertelement <2 x i32> %i.be, i32 %3, i64 1
  %i.bg = add <2 x i32> %i.bf, %i.bd
  %i.bh = load <2 x i32>, ptr %i.c, align 4, !tbaa !34
  %i.bi = mul nsw <2 x i32> %i.bg, %i.bh
  %i.bj = ashr <2 x i32> %i.bi, splat (i32 8)
  %i.bk = add nsw <2 x i32> %i.bj, %i.bc
  %i.bl = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = load <4 x i32>, ptr %0, align 4, !tbaa !34
  %i.bn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bm, <4 x i32> %i.bl) ; 6 uses
  %i.bo = icmp eq i32 %i.b, 0
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = shufflevector <4 x i32> %i.n, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %.fr556 = freeze <2 x i32> %i.bp
  %.fr556.scalar = bitcast <2 x i32> %.fr556 to i64
  %or.cond = icmp eq i64 %.fr556.scalar, 1099511628032
  br i1 %or.cond, label %.thread442, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bq = extractelement <4 x i32> %i.bn, i64 0
  %i.br = sub nsw i32 %i.bq, %.sroa.97.44.extract.trunc ; 3 uses
  %i.bs = extractelement <4 x i32> %i.bn, i64 1
  %i.bt = sub nsw i32 %i.bs, %.sroa.97.48.extract.trunc ; 3 uses
  %i.bu = shufflevector <4 x i32> %i.n, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %.fr = freeze <2 x i32> %i.bu
  %.fr.scalar = bitcast <2 x i32> %.fr to i64
  %or.cond489 = icmp eq i64 %.fr.scalar, 1099511628032
  %i.bv = extractelement <4 x i32> %i.bn, i64 3
  %i.bw = sub nsw i32 %i.bv, %.sroa.97.48.extract.trunc ; 4 uses
  %i.bx = extractelement <4 x i32> %i.bn, i64 2
  %i.by = sub nsw i32 %i.bx, %.sroa.97.44.extract.trunc ; 4 uses
  %i.bz = mul nsw i32 %i.bt, %i.ab
  %i.ca = mul nsw i32 %i.br, %i.aa
  %i.cb = add nsw i32 %i.bz, %i.ca                ; 2 uses
  br i1 %or.cond489, label %.thread454, label %transform_point_upscaled.exit

.thread442:                                       ; preds = %bb.h
  %i.cc = shl nsw <4 x i32> %i.bn, splat (i32 8)
  %i.cd = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  br label %transform_point_upscaled.exit251

bb.j:                                             ; preds = %bb.h
  %i.ce = sub nsw <4 x i32> %i.bn, %i.ae
  %i.cf = shl nsw <4 x i32> %i.ce, splat (i32 16)
  %i.cg = shufflevector <2 x i32> %i.m, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ch = sdiv <4 x i32> %i.cf, %i.cg
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.cj = shufflevector <2 x i32> %i.ag, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ck = add nsw <4 x i32> %i.ci, %i.cj
  br label %transform_point_upscaled.exit251

.thread454:                                       ; preds = %bb.i
  %i.cl = mul nsw i32 %i.br, %i.ab
  %i.cm = mul nsw i32 %i.bt, %i.aa
  %i.cn = sub nsw i32 %i.cl, %i.cm
  %i.co = mul nsw i32 %i.by, %i.ab
  %i.cp = mul nsw i32 %i.bw, %i.aa
  %i.cq = sub nsw i32 %i.co, %i.cp
  %i.cr = mul nsw i32 %i.by, %i.aa
  %i.cs = mul nsw i32 %i.bw, %i.ab
  %i.ct = add nsw i32 %i.cs, %i.cr
  %i.cu = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %i.cv = insertelement <4 x i32> %i.cu, i32 %i.cn, i64 1
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.ct, i64 2
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.cq, i64 3
  %i.cy = ashr <4 x i32> %i.cx, splat (i32 2)
  %i.cz = add nsw <4 x i32> %i.cy, %i.ah
  br label %transform_point_upscaled.exit251

transform_point_upscaled.exit:                    ; preds = %bb.i
  %i.da = mul nsw i32 %i.br, %i.ab
  %i.db = mul nsw i32 %i.bt, %i.aa
  %i.dc = sub nsw i32 %i.da, %i.db
  %i.dd = mul nsw i32 %i.by, %i.ab
  %i.de = mul nsw i32 %i.bw, %i.aa
  %i.df = sub nsw i32 %i.dd, %i.de
  %i.dg = mul nsw i32 %i.by, %i.aa
  %i.dh = mul nsw i32 %i.bw, %i.ab
  %i.di = add nsw i32 %i.dh, %i.dg
  %i.dj = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %i.dk = insertelement <4 x i32> %i.dj, i32 %i.dc, i64 1
  %i.dl = insertelement <4 x i32> %i.dk, i32 %i.di, i64 2
  %i.dm = insertelement <4 x i32> %i.dl, i32 %i.df, i64 3
  %i.dn = shl nsw <4 x i32> %i.dm, splat (i32 8)
  %i.do = sdiv <4 x i32> %i.dn, %i.n
  %i.dp = ashr <4 x i32> %i.do, splat (i32 2)
  %i.dq = add nsw <4 x i32> %i.dp, %i.ah
  br label %transform_point_upscaled.exit251

transform_point_upscaled.exit251:                 ; preds = %.thread442, %bb.j, %.thread454, %transform_point_upscaled.exit
  %i.dr = phi <4 x i32> [ %i.cd, %.thread442 ], [ %i.ck, %bb.j ], [ %i.cz, %.thread454 ], [ %i.dq, %transform_point_upscaled.exit ] ; 6 uses
  %i.ds = extractelement <4 x i32> %i.dr, i64 0
  %shift = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %shift, %i.dr
  %i.dt = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.du = icmp sgt i32 %i.ai, 1
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %transform_point_upscaled.exit251
  %shift547 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop548 = sub nsw <4 x i32> %shift547, %i.dr
  %i.dv = extractelement <4 x i32> %foldExtExtBinop548, i64 1
  %i.dw = shl nsw i32 %i.dv, 8
  %i.dx = add nsw i32 %i.ai, -1
  %i.dy = sdiv i32 %i.dw, %i.dx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %transform_point_upscaled.exit251
  %.0222 = phi i32 [ %i.dy, %bb.k ], [ 0, %transform_point_upscaled.exit251 ]
  %i.dz = icmp sgt i32 %i.aj, 1
  br i1 %i.dz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ea = shl nsw i32 %i.dt, 8
  %i.eb = add nsw i32 %i.aj, -1
  %i.ec = sdiv i32 %i.ea, %i.eb
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0224 = phi i32 [ %i.ec, %bb.m ], [ 0, %bb.l ]
  %i.ed = extractelement <4 x i32> %i.dr, i64 1
  %i.ee = add nsw i32 %i.ed, 128
  %i.ef = add nsw i32 %i.ds, 128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.0228 = phi i32 [ %i.ee, %bb.n ], [ 0, %bb.f ]
  %.0226 = phi i32 [ %i.ef, %bb.n ], [ 0, %bb.f ]
  %.1225 = phi i32 [ %.0224, %bb.n ], [ 0, %bb.f ]
  %.1223 = phi i32 [ %.0222, %bb.n ], [ 0, %bb.f ]
  %i.eg = icmp sgt i32 %i.aj, 0
  br i1 %i.eg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ei = icmp eq i32 %i.b, 0
  %i.ej = shufflevector <4 x i32> %i.n, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %.fr557 = freeze <2 x i32> %i.ej
  %.fr557.scalar = bitcast <2 x i32> %.fr557 to i64
  %or.cond493 = icmp eq i64 %.fr557.scalar, 1099511628032 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.el = icmp sgt i32 %i.ai, 1
  %i.em = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.en = icmp sgt i32 %i.ai, 0                   ; 4 uses
  %i.eo = add nsw i32 %2, -1                      ; 4 uses
  %i.ep = add nsw i32 %3, -1                      ; 4 uses
  %wide.trip.count.i284 = zext nneg i32 %i.ai to i64 ; 4 uses
  %i.eq = sext i32 %.0234425 to i64
  %i.er = sext i32 %i.ai to i64
  %i.es = bitcast i64 %i.e to <2 x i32>
  %i.et = shufflevector <2 x i32> %i.es, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %transform_a8.exit
  %.0503 = phi i32 [ 0, %.lr.ph ], [ %i.yk, %transform_a8.exit ] ; 3 uses
  %.2502 = phi i32 [ %.1223, %.lr.ph ], [ %.4, %transform_a8.exit ]
  %.1229501 = phi i32 [ %.0228, %.lr.ph ], [ %.2230, %transform_a8.exit ]
  %.1232500 = phi ptr [ %.0231, %.lr.ph ], [ %.2233, %transform_a8.exit ] ; 11 uses
  %.0235499 = phi ptr [ %8, %.lr.ph ], [ %i.yi, %transform_a8.exit ] ; 14 uses
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eu = mul nsw i32 %.0503, %.1225
  %i.ev = ashr i32 %i.eu, 8
  %i.ew = add nsw i32 %i.ev, %.0226
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %0, align 4, !tbaa !35    ; 3 uses
  %i.ey = load i32, ptr %i.eh, align 4, !tbaa !36
  %i.ez = add nsw i32 %i.ey, %.0503               ; 3 uses
  br i1 %i.ei, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fa = load i32, ptr %i.ek, align 4, !tbaa !37 ; 2 uses
  br i1 %or.cond493, label %.thread472, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fb = sub nsw i32 %i.ex, %.sroa.97.44.extract.trunc ; 3 uses
  %i.fc = sub nsw i32 %i.ez, %.sroa.97.48.extract.trunc ; 3 uses
  %i.fd = load i32, ptr %i.ek, align 4, !tbaa !37
  %i.fe = sub nsw i32 %i.fd, %.sroa.97.44.extract.trunc ; 4 uses
  %i.ff = mul nsw i32 %i.fc, %i.ab                ; 3 uses
  %i.fg = mul nsw i32 %i.fb, %i.aa
  %i.fh = add nsw i32 %i.ff, %i.fg                ; 2 uses
  br i1 %or.cond493, label %.thread484, label %bb.v

.thread472:                                       ; preds = %bb.s
  %i.fi = insertelement <4 x i32> poison, i32 %i.ez, i64 0
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ex, i64 1
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fa, i64 3
  %i.fl = shl nsw <4 x i32> %i.fk, <i32 8, i32 8, i32 poison, i32 8>
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  br label %transform_point_upscaled.exit255

bb.u:                                             ; preds = %bb.s
  %i.fn = insertelement <4 x i32> poison, i32 %i.ez, i64 0
  %i.fo = insertelement <4 x i32> %i.fn, i32 %i.ex, i64 1
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.fa, i64 3
  %i.fq = shufflevector <4 x i32> %i.fp, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fr = sub nsw <4 x i32> %i.fq, %i.et
  %i.fs = shl nsw <4 x i32> %i.fr, splat (i32 16)
  %i.ft = sdiv <4 x i32> %i.fs, %i.n
  %i.fu = add nsw <4 x i32> %i.ft, %i.ah
  br label %transform_point_upscaled.exit255

.thread484:                                       ; preds = %bb.t
  %i.fv = mul nsw i32 %i.fb, %i.ab
  %i.fw = mul nsw i32 %i.fc, %i.aa                ; 2 uses
  %i.fx = sub nsw i32 %i.fv, %i.fw
  %i.fy = mul nsw i32 %i.fe, %i.ab
  %i.fz = sub nsw i32 %i.fy, %i.fw
  %i.ga = mul nsw i32 %i.fe, %i.aa
  %i.gb = add nsw i32 %i.ff, %i.ga
  %i.gc = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.fx, i64 1
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.gb, i64 2
  %i.gf = insertelement <4 x i32> %i.ge, i32 %i.fz, i64 3
  %i.gg = ashr <4 x i32> %i.gf, splat (i32 2)
  %i.gh = add nsw <4 x i32> %i.gg, %i.ah
  br label %transform_point_upscaled.exit255

bb.v:                                             ; preds = %bb.t
  %i.gi = mul nsw i32 %i.fb, %i.ab
  %i.gj = mul nsw i32 %i.fc, %i.aa                ; 2 uses
  %i.gk = sub nsw i32 %i.gi, %i.gj
  %i.gl = mul nsw i32 %i.fe, %i.ab
  %i.gm = sub nsw i32 %i.gl, %i.gj
  %i.gn = mul nsw i32 %i.fe, %i.aa
  %i.go = add nsw i32 %i.gn, %i.ff
  %i.gp = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gk, i64 1
  %i.gr = insertelement <4 x i32> %i.gq, i32 %i.go, i64 2
  %i.gs = insertelement <4 x i32> %i.gr, i32 %i.gm, i64 3
  %i.gt = shl nsw <4 x i32> %i.gs, splat (i32 8)
  %i.gu = sdiv <4 x i32> %i.gt, %i.n
  %i.gv = ashr <4 x i32> %i.gu, splat (i32 2)
  %i.gw = add nsw <4 x i32> %i.gv, %i.ah
  br label %transform_point_upscaled.exit255

transform_point_upscaled.exit255:                 ; preds = %.thread472, %bb.u, %.thread484, %bb.v
  %i.gx = phi <4 x i32> [ %i.fm, %.thread472 ], [ %i.fu, %bb.u ], [ %i.gh, %.thread484 ], [ %i.gw, %bb.v ] ; 6 uses
  br i1 %i.el, label %bb.w, label %bb.x

bb.w:                                             ; preds = %transform_point_upscaled.exit255
  %shift550 = shufflevector <4 x i32> %i.gx, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop551 = sub nsw <4 x i32> %shift550, %i.gx
  %i.gy = extractelement <4 x i32> %foldExtExtBinop551, i64 0
  %shift553 = shufflevector <4 x i32> %i.gx, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop554 = sub nsw <4 x i32> %shift553, %i.gx
  %i.gz = extractelement <4 x i32> %foldExtExtBinop554, i64 1
  %i.ha = shl nsw i32 %i.gz, 8
  %i.hb = sdiv i32 %i.ha, %i.em
  %i.hc = shl nsw i32 %i.gy, 8
  %i.hd = sdiv i32 %i.hc, %i.em
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %transform_point_upscaled.exit255
  %.3 = phi i32 [ %i.hb, %bb.w ], [ 0, %transform_point_upscaled.exit255 ]
  %.0221 = phi i32 [ %i.hd, %bb.w ], [ 0, %transform_point_upscaled.exit255 ]
  %i.he = extractelement <4 x i32> %i.gx, i64 1
  %i.hf = add nsw i32 %i.he, 128
  %i.hg = extractelement <4 x i32> %i.gx, i64 0
  %i.hh = add nsw i32 %i.hg, 128
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.2230 = phi i32 [ %.1229501, %bb.q ], [ %i.hf, %bb.x ] ; 11 uses
  %.0227 = phi i32 [ %i.ew, %bb.q ], [ %i.hh, %bb.x ] ; 10 uses
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
  tail call fastcc void @transform_rgb888(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ai, ptr noundef %.0235499, i1 noundef zeroext %i.ba, i32 noundef 4)
  br label %transform_a8.exit

bb.aa:                                            ; preds = %bb.y
  tail call fastcc void @transform_rgb888(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ai, ptr noundef %.0235499, i1 noundef zeroext %i.ba, i32 noundef 3)
  br label %transform_a8.exit

bb.ab:                                            ; preds = %bb.y
  br i1 %i.en, label %.lr.ph.i, label %transform_a8.exit

.lr.ph.i:                                         ; preds = %bb.ab, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ 0, %bb.ab ] ; 4 uses
  %i.hi = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.hj = mul i32 %.4, %i.hi
  %i.hk = ashr i32 %i.hj, 8
  %i.hl = add nsw i32 %i.hk, %.2230               ; 2 uses
  %i.hm = mul i32 %.1, %i.hi
  %i.hn = ashr i32 %i.hm, 8
  %i.ho = add nsw i32 %i.hn, %.0227               ; 2 uses
  %i.hp = ashr i32 %i.hl, 8                       ; 6 uses
  %i.hq = ashr i32 %i.ho, 8                       ; 6 uses
  %i.hr = icmp slt i32 %i.hp, 0
  br i1 %i.hr, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i
  %i.hs = icmp slt i32 %i.hp, %2
  %i.ht = icmp sgt i32 %i.hq, -1
  %.not.i = icmp slt i32 %i.hq, %3
  %i.hu = and i1 %i.ht, %.not.i
  %or.cond124.i = select i1 %i.hs, i1 %i.hu, i1 false
  br i1 %or.cond124.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.0235499, i64 %indvars.iv.i
  store i8 0, ptr %i.hv, align 1, !tbaa !9
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.hw = and i32 %i.hl, 255                      ; 2 uses
  %i.hx = and i32 %i.ho, 255                      ; 2 uses
  %i.hy = icmp samesign ult i32 %i.hw, 128        ; 4 uses
  %i.hz = shl nuw nsw i32 %i.hw, 1                ; 2 uses
  %i.ia = sub nuw nsw i32 254, %i.hz
  %i.ib = add nsw i32 %i.hz, -256
  %.0103.i = select i1 %i.hy, i32 %i.ia, i32 %i.ib ; 3 uses
  %.0101.i = select i1 %i.hy, i32 -1, i32 1       ; 2 uses
  %i.ic = icmp samesign ult i32 %i.hx, 128        ; 4 uses
  %i.id = shl nuw nsw i32 %i.hx, 1                ; 2 uses
  %i.ie = sub nuw nsw i32 254, %i.id
  %i.if = add nsw i32 %i.id, -256
  %.0102.i = select i1 %i.ic, i32 %i.ie, i32 %i.if ; 3 uses
  %.0100.i = select i1 %i.ic, i32 -1, i32 1       ; 2 uses
  %i.ig = mul nsw i32 %i.hq, %4
  %i.ih = add nsw i32 %i.ig, %i.hp
  %i.ii = sext i32 %i.ih to i64
end_hunk_0
