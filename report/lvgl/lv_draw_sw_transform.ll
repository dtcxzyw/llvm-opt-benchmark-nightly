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
  %i.ac = trunc i64 %i.e to i32                   ; 4 uses
  %9 = bitcast i64 %i.e to <2 x i32>
  %i.ad = bitcast i64 %i.e to <2 x i32>
  %i.ae = shufflevector <2 x i32> %i.ad, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %.sroa.97.48.extract.trunc = trunc nuw i64 %.sroa.97.48.extract.shift to i32 ; 3 uses
  %i.af = shl nsw <2 x i32> %9, splat (i32 8)
  %10 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = shufflevector <2 x i32> %10, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 5 uses
  %i.ah = tail call i32 @lv_area_get_width(ptr noundef %0) #4 ; 19 uses
  %i.ai = tail call i32 @lv_area_get_height(ptr noundef %0) #4 ; 6 uses
  switch i32 %7, label %bb.b [
    i32 15, label %.thread
    i32 20, label %.thread426
    i32 21, label %bb.c
    i32 6, label %bb.c
  ]

.thread:                                          ; preds = %bb.a
  %i.aj = tail call zeroext i8 @lv_color_format_get_size(i32 noundef 16) #4
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.ah, %i.ak
  br label %bb.f

.thread426:                                       ; preds = %bb.a
  %i.am = shl nsw i32 %i.ah, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.an = tail call zeroext i8 @lv_color_format_get_size(i32 noundef %7) #4
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nsw i32 %i.ah, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.0234 = phi i32 [ %i.ah, %bb.a ], [ %i.ah, %bb.a ], [ %i.ap, %bb.b ] ; 5 uses
  switch i32 %7, label %bb.f [
    i32 27, label %bb.d
    i32 20, label %bb.d
    i32 18, label %bb.d
    i32 21, label %bb.e
    i32 6, label %bb.e
  ]

bb.d:                                             ; preds = %.thread426, %bb.c, %bb.c, %bb.c
  %.0234428 = phi i32 [ %i.am, %.thread426 ], [ %.0234, %bb.c ], [ %.0234, %bb.c ], [ %.0234, %bb.c ] ; 2 uses
  %i.aq = mul nsw i32 %.0234428, %i.ai
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %8, i64 %i.ar
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.at = mul nsw i32 %i.ai, %i.ah
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %8, i64 %i.au
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.d
  %.0234425 = phi i32 [ %.0234428, %bb.d ], [ %.0234, %bb.e ], [ %.0234, %bb.c ], [ %i.al, %.thread ]
  %.0231 = phi ptr [ %i.as, %bb.d ], [ %i.av, %bb.e ], [ null, %bb.c ], [ null, %.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 121
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = and i8 %i.ax, 16
  %i.az = icmp ne i8 %i.ay, 0                     ; 10 uses
  %i.ba = load i32, ptr %i.a, align 8, !tbaa !33
  %.not = icmp eq i32 %i.ba, 0                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.bb = load <2 x i32>, ptr %i.d, align 4, !tbaa !34 ; 2 uses
  %i.bc = xor <2 x i32> %i.bb, splat (i32 -1)
  %i.bd = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %3, i64 1
  %i.bf = add <2 x i32> %i.be, %i.bc
  %i.bg = load <2 x i32>, ptr %i.c, align 4, !tbaa !34
  %i.bh = mul nsw <2 x i32> %i.bf, %i.bg
  %i.bi = ashr <2 x i32> %i.bh, splat (i32 8)
  %i.bj = add nsw <2 x i32> %i.bi, %i.bb
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bl = load <4 x i32>, ptr %0, align 4, !tbaa !34
  %i.bm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bl, <4 x i32> %i.bk) ; 6 uses
  %i.bn = icmp eq i32 %i.b, 0
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = shufflevector <4 x i32> %i.n, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.bp = icmp eq <2 x i32> %i.bo, splat (i32 256) ; 2 uses
  %i.bq = extractelement <2 x i1> %i.bp, i64 0
  %i.br = extractelement <2 x i1> %i.bp, i64 1
  %or.cond = select i1 %i.br, i1 %i.bq, i1 false
  br i1 %or.cond, label %.thread442, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bs = extractelement <4 x i32> %i.bm, i64 0
  %i.bt = sub nsw i32 %i.bs, %i.ac                ; 3 uses
  %i.bu = extractelement <4 x i32> %i.bm, i64 1
  %i.bv = sub nsw i32 %i.bu, %.sroa.97.48.extract.trunc ; 3 uses
  %i.bw = shufflevector <4 x i32> %i.n, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.bx = icmp eq <2 x i32> %i.bw, splat (i32 256) ; 2 uses
  %i.by = extractelement <2 x i1> %i.bx, i64 0
  %i.bz = extractelement <2 x i1> %i.bx, i64 1
  %or.cond489 = select i1 %i.bz, i1 %i.by, i1 false
  %i.ca = extractelement <4 x i32> %i.bm, i64 3
  %i.cb = sub nsw i32 %i.ca, %.sroa.97.48.extract.trunc ; 4 uses
  %i.cc = extractelement <4 x i32> %i.bm, i64 2
  %i.cd = sub nsw i32 %i.cc, %i.ac                ; 4 uses
  %i.ce = mul nsw i32 %i.bv, %i.ab
  %i.cf = mul nsw i32 %i.bt, %i.aa
  %i.cg = add nsw i32 %i.ce, %i.cf                ; 2 uses
  br i1 %or.cond489, label %.thread454, label %transform_point_upscaled.exit

.thread442:                                       ; preds = %bb.h
  %i.ch = shl nsw <4 x i32> %i.bm, splat (i32 8)
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  br label %transform_point_upscaled.exit251

bb.j:                                             ; preds = %bb.h
  %i.cj = sub nsw <4 x i32> %i.bm, %i.ae
  %i.ck = shl nsw <4 x i32> %i.cj, splat (i32 16)
  %i.cl = shufflevector <2 x i32> %i.m, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cm = sdiv <4 x i32> %i.ck, %i.cl
  %i.cn = shufflevector <4 x i32> %i.cm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.co = shufflevector <2 x i32> %10, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cp = add nsw <4 x i32> %i.cn, %i.co
  br label %transform_point_upscaled.exit251

.thread454:                                       ; preds = %bb.i
  %i.cq = mul nsw i32 %i.bt, %i.ab
  %i.cr = mul nsw i32 %i.bv, %i.aa
  %i.cs = sub nsw i32 %i.cq, %i.cr
  %i.ct = mul nsw i32 %i.cd, %i.ab
  %i.cu = mul nsw i32 %i.cb, %i.aa
  %i.cv = sub nsw i32 %i.ct, %i.cu
  %i.cw = mul nsw i32 %i.cd, %i.aa
  %i.cx = mul nsw i32 %i.cb, %i.ab
  %i.cy = add nsw i32 %i.cx, %i.cw
  %i.cz = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cs, i64 1
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cy, i64 2
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.cv, i64 3
  %i.dd = ashr <4 x i32> %i.dc, splat (i32 2)
  %i.de = add nsw <4 x i32> %i.dd, %i.ag
  br label %transform_point_upscaled.exit251

transform_point_upscaled.exit:                    ; preds = %bb.i
  %i.df = mul nsw i32 %i.bt, %i.ab
  %i.dg = mul nsw i32 %i.bv, %i.aa
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = mul nsw i32 %i.cd, %i.ab
  %i.dj = mul nsw i32 %i.cb, %i.aa
  %i.dk = sub nsw i32 %i.di, %i.dj
  %i.dl = mul nsw i32 %i.cd, %i.aa
  %i.dm = mul nsw i32 %i.cb, %i.ab
  %i.dn = add nsw i32 %i.dm, %i.dl
  %i.do = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.dp = insertelement <4 x i32> %i.do, i32 %i.dh, i64 1
  %i.dq = insertelement <4 x i32> %i.dp, i32 %i.dn, i64 2
  %i.dr = insertelement <4 x i32> %i.dq, i32 %i.dk, i64 3
  %i.ds = shl nsw <4 x i32> %i.dr, splat (i32 8)
  %i.dt = sdiv <4 x i32> %i.ds, %i.n
  %i.du = ashr <4 x i32> %i.dt, splat (i32 2)
  %i.dv = add nsw <4 x i32> %i.du, %i.ag
  br label %transform_point_upscaled.exit251

transform_point_upscaled.exit251:                 ; preds = %.thread442, %bb.j, %.thread454, %transform_point_upscaled.exit
  %i.dw = phi <4 x i32> [ %i.ci, %.thread442 ], [ %i.cp, %bb.j ], [ %i.de, %.thread454 ], [ %i.dv, %transform_point_upscaled.exit ] ; 6 uses
  %i.dx = extractelement <4 x i32> %i.dw, i64 0
  %shift = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = sub nsw <4 x i32> %shift, %i.dw
  %i.dy = extractelement <4 x i32> %foldExtExtBinop, i64 0
  %i.dz = icmp sgt i32 %i.ah, 1
  br i1 %i.dz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %transform_point_upscaled.exit251
  %shift547 = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop548 = sub nsw <4 x i32> %shift547, %i.dw
  %i.ea = extractelement <4 x i32> %foldExtExtBinop548, i64 1
  %i.eb = shl nsw i32 %i.ea, 8
  %i.ec = add nsw i32 %i.ah, -1
  %i.ed = sdiv i32 %i.eb, %i.ec
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %transform_point_upscaled.exit251
  %.0222 = phi i32 [ %i.ed, %bb.k ], [ 0, %transform_point_upscaled.exit251 ]
  %i.ee = icmp sgt i32 %i.ai, 1
  br i1 %i.ee, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ef = shl nsw i32 %i.dy, 8
  %i.eg = add nsw i32 %i.ai, -1
  %i.eh = sdiv i32 %i.ef, %i.eg
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0224 = phi i32 [ %i.eh, %bb.m ], [ 0, %bb.l ]
  %i.ei = extractelement <4 x i32> %i.dw, i64 1
  %i.ej = add nsw i32 %i.ei, 128
  %i.ek = add nsw i32 %i.dx, 128
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.0228 = phi i32 [ %i.ej, %bb.n ], [ 0, %bb.f ]
  %.0226 = phi i32 [ %i.ek, %bb.n ], [ 0, %bb.f ]
  %.1225 = phi i32 [ %.0224, %bb.n ], [ 0, %bb.f ]
  %.1223 = phi i32 [ %.0222, %bb.n ], [ 0, %bb.f ]
  %i.el = icmp sgt i32 %i.ai, 0
  br i1 %i.el, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.en = icmp eq i32 %i.b, 0
  %i.eo = shufflevector <4 x i32> %i.n, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ep = icmp eq <2 x i32> %i.eo, splat (i32 256) ; 2 uses
  %i.eq = extractelement <2 x i1> %i.ep, i64 0
  %i.er = extractelement <2 x i1> %i.ep, i64 1
  %or.cond493 = select i1 %i.er, i1 %i.eq, i1 false ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.et = icmp sgt i32 %i.ah, 1
  %i.eu = add nsw i32 %i.ah, -1                   ; 2 uses
  %i.ev = icmp sgt i32 %i.ah, 0                   ; 4 uses
  %i.ew = add nsw i32 %2, -1                      ; 4 uses
  %i.ex = add nsw i32 %3, -1                      ; 4 uses
  %wide.trip.count.i284 = zext nneg i32 %i.ah to i64 ; 4 uses
  %i.ey = sext i32 %.0234425 to i64
  %i.ez = sext i32 %i.ah to i64
  %i.fa = bitcast i64 %i.e to <2 x i32>
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %transform_a8.exit
  %.0503 = phi i32 [ 0, %.lr.ph ], [ %i.zg, %transform_a8.exit ] ; 3 uses
  %.2502 = phi i32 [ %.1223, %.lr.ph ], [ %.4, %transform_a8.exit ]
  %.1229501 = phi i32 [ %.0228, %.lr.ph ], [ %.2230, %transform_a8.exit ]
  %.1232500 = phi ptr [ %.0231, %.lr.ph ], [ %.2233, %transform_a8.exit ] ; 11 uses
  %.0235499 = phi ptr [ %8, %.lr.ph ], [ %i.ze, %transform_a8.exit ] ; 14 uses
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fc = mul nsw i32 %.0503, %.1225
  %i.fd = ashr i32 %i.fc, 8
  %i.fe = add nsw i32 %i.fd, %.0226
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.ff = load i32, ptr %0, align 4, !tbaa !35    ; 3 uses
  %i.fg = load i32, ptr %i.em, align 4, !tbaa !36
  %i.fh = add nsw i32 %i.fg, %.0503               ; 3 uses
  br i1 %i.en, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fi = load i32, ptr %i.es, align 4, !tbaa !37 ; 2 uses
  br i1 %or.cond493, label %.thread472, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fj = sub nsw i32 %i.ff, %i.ac                ; 3 uses
  %i.fk = sub nsw i32 %i.fh, %.sroa.97.48.extract.trunc ; 3 uses
  %i.fl = load i32, ptr %i.es, align 4, !tbaa !37
  %i.fm = sub nsw i32 %i.fl, %i.ac                ; 4 uses
  %i.fn = mul nsw i32 %i.fk, %i.ab                ; 3 uses
  %i.fo = mul nsw i32 %i.fj, %i.aa
  %i.fp = add nsw i32 %i.fn, %i.fo                ; 2 uses
  br i1 %or.cond493, label %.thread484, label %bb.v

.thread472:                                       ; preds = %bb.s
  %i.fq = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %i.fr = insertelement <4 x i32> %i.fq, i32 %i.ff, i64 1
  %i.fs = insertelement <4 x i32> %i.fr, i32 %i.fi, i64 3
  %i.ft = shl nsw <4 x i32> %i.fs, <i32 8, i32 8, i32 poison, i32 8>
  %i.fu = shufflevector <4 x i32> %i.ft, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  br label %transform_point_upscaled.exit255

bb.u:                                             ; preds = %bb.s
  %i.fv = insertelement <4 x i32> poison, i32 %i.fh, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.ff, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.fi, i64 3
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fz = sub nsw <4 x i32> %i.fy, %i.fb
  %i.ga = shl nsw <4 x i32> %i.fz, splat (i32 16)
  %i.gb = sdiv <4 x i32> %i.ga, %i.n
  %i.gc = add nsw <4 x i32> %i.gb, %i.ag
  br label %transform_point_upscaled.exit255

.thread484:                                       ; preds = %bb.t
  %i.gd = mul nsw i32 %i.fj, %i.ab
  %i.ge = mul nsw i32 %i.fk, %i.aa                ; 2 uses
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = mul nsw i32 %i.fm, %i.ab
  %i.gh = sub nsw i32 %i.gg, %i.ge
  %i.gi = mul nsw i32 %i.fm, %i.aa
  %i.gj = add nsw i32 %i.fn, %i.gi
  %i.gk = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gf, i64 1
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gj, i64 2
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gh, i64 3
  %i.go = ashr <4 x i32> %i.gn, splat (i32 2)
  %i.gp = add nsw <4 x i32> %i.go, %i.ag
  br label %transform_point_upscaled.exit255

bb.v:                                             ; preds = %bb.t
  %i.gq = mul nsw i32 %i.fj, %i.ab
  %i.gr = mul nsw i32 %i.fk, %i.aa                ; 2 uses
  %i.gs = sub nsw i32 %i.gq, %i.gr
  %i.gt = mul nsw i32 %i.fm, %i.ab
  %i.gu = sub nsw i32 %i.gt, %i.gr
  %i.gv = mul nsw i32 %i.fm, %i.aa
  %i.gw = add nsw i32 %i.gv, %i.fn
  %i.gx = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gs, i64 1
  %i.gz = insertelement <4 x i32> %i.gy, i32 %i.gw, i64 2
  %i.ha = insertelement <4 x i32> %i.gz, i32 %i.gu, i64 3
  %i.hb = shl nsw <4 x i32> %i.ha, splat (i32 8)
  %i.hc = sdiv <4 x i32> %i.hb, %i.n
  %i.hd = ashr <4 x i32> %i.hc, splat (i32 2)
  %i.he = add nsw <4 x i32> %i.hd, %i.ag
  br label %transform_point_upscaled.exit255

transform_point_upscaled.exit255:                 ; preds = %.thread472, %bb.u, %.thread484, %bb.v
  %i.hf = phi <4 x i32> [ %i.fu, %.thread472 ], [ %i.gc, %bb.u ], [ %i.gp, %.thread484 ], [ %i.he, %bb.v ] ; 6 uses
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %transform_point_upscaled.exit255
  %shift550 = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop551 = sub nsw <4 x i32> %shift550, %i.hf
  %i.hg = extractelement <4 x i32> %foldExtExtBinop551, i64 0
  %shift553 = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop554 = sub nsw <4 x i32> %shift553, %i.hf
  %i.hh = extractelement <4 x i32> %foldExtExtBinop554, i64 1
  %i.hi = shl nsw i32 %i.hh, 8
  %i.hj = sdiv i32 %i.hi, %i.eu
  %i.hk = shl nsw i32 %i.hg, 8
  %i.hl = sdiv i32 %i.hk, %i.eu
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %transform_point_upscaled.exit255
  %.3 = phi i32 [ %i.hj, %bb.w ], [ 0, %transform_point_upscaled.exit255 ]
  %.0221 = phi i32 [ %i.hl, %bb.w ], [ 0, %transform_point_upscaled.exit255 ]
  %i.hm = extractelement <4 x i32> %i.hf, i64 1
  %i.hn = add nsw i32 %i.hm, 128
  %i.ho = extractelement <4 x i32> %i.hf, i64 0
  %i.hp = add nsw i32 %i.ho, 128
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %.2230 = phi i32 [ %.1229501, %bb.q ], [ %i.hn, %bb.x ] ; 11 uses
  %.0227 = phi i32 [ %i.fe, %bb.q ], [ %i.hp, %bb.x ] ; 10 uses
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
  tail call fastcc void @transform_rgb888(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ah, ptr noundef %.0235499, i1 noundef zeroext %i.az, i32 noundef 4)
  br label %transform_a8.exit

bb.aa:                                            ; preds = %bb.y
  tail call fastcc void @transform_rgb888(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %.2230, i32 noundef %.0227, i32 noundef %.4, i32 noundef %.1, i32 noundef %i.ah, ptr noundef %.0235499, i1 noundef zeroext %i.az, i32 noundef 3)
  br label %transform_a8.exit

bb.ab:                                            ; preds = %bb.y
  br i1 %i.ev, label %.lr.ph.i, label %transform_a8.exit

.lr.ph.i:                                         ; preds = %bb.ab, %bb.aq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aq ], [ 0, %bb.ab ] ; 4 uses
  %i.hq = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.hr = mul i32 %.4, %i.hq
  %i.hs = ashr i32 %i.hr, 8
  %i.ht = add nsw i32 %i.hs, %.2230               ; 2 uses
  %i.hu = mul i32 %.1, %i.hq
  %i.hv = ashr i32 %i.hu, 8
  %i.hw = add nsw i32 %i.hv, %.0227               ; 2 uses
  %i.hx = ashr i32 %i.ht, 8                       ; 6 uses
  %i.hy = ashr i32 %i.hw, 8                       ; 6 uses
  %i.hz = icmp slt i32 %i.hx, 0
  br i1 %i.hz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i
  %i.ia = icmp slt i32 %i.hx, %2
  %i.ib = icmp sgt i32 %i.hy, -1
  %.not.i = icmp slt i32 %i.hy, %3
  %i.ic = and i1 %i.ib, %.not.i
  %or.cond124.i = select i1 %i.ia, i1 %i.ic, i1 false
  br i1 %or.cond124.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i
  %i.id = getelementptr inbounds nuw i8, ptr %.0235499, i64 %indvars.iv.i
  store i8 0, ptr %i.id, align 1, !tbaa !9
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.ie = and i32 %i.ht, 255                      ; 2 uses
  %i.if = and i32 %i.hw, 255                      ; 2 uses
  %i.ig = icmp samesign ult i32 %i.ie, 128        ; 4 uses
  %i.ih = shl nuw nsw i32 %i.ie, 1                ; 2 uses
  %i.ii = sub nuw nsw i32 254, %i.ih
  %i.ij = add nsw i32 %i.ih, -256
  %.0103.i = select i1 %i.ig, i32 %i.ii, i32 %i.ij ; 3 uses
  %.0101.i = select i1 %i.ig, i32 -1, i32 1       ; 2 uses
  %i.ik = icmp samesign ult i32 %i.if, 128        ; 4 uses
  %i.il = shl nuw nsw i32 %i.if, 1                ; 2 uses
  %i.im = sub nuw nsw i32 254, %i.il
  %i.in = add nsw i32 %i.il, -256
  %.0102.i = select i1 %i.ik, i32 %i.im, i32 %i.in ; 3 uses
  %.0100.i = select i1 %i.ik, i32 -1, i32 1       ; 2 uses
  %i.io = mul nsw i32 %i.hy, %4
  %i.ip = add nsw i32 %i.io, %i.hx
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %1, i64 %i.iq ; 3 uses
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !9   ; 9 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0235499, i64 %indvars.iv.i ; 4 uses
  store i8 %i.is, ptr %i.it, align 1, !tbaa !9
  br i1 %i.az, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.iu = add nsw i32 %.0101.i, %i.hx             ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1
  %.not118.not.i = icmp slt i32 %i.iu, %2
  %or.cond125.i = and i1 %i.iv, %.not118.not.i
  br i1 %or.cond125.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.iw = add nsw i32 %.0100.i, %i.hy             ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, -1
  %.not119.not.i = icmp slt i32 %i.iw, %3
  %or.cond126.i = and i1 %i.ix, %.not119.not.i
  br i1 %or.cond126.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.iy = sext i32 %.0101.i to i64
  %i.iz = getelementptr inbounds i8, ptr %i.ir, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !9   ; 2 uses
  %i.jb = mul nsw i32 %.0100.i, %4
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds i8, ptr %i.ir, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !9   ; 2 uses
  %.not122.i = icmp eq i8 %i.ja, %i.is
  br i1 %.not122.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jf = zext i8 %i.is to i32
  %i.jg = zext i8 %i.ja to i32
  %i.jh = mul nuw nsw i32 %.0102.i, %i.jg
  %i.ji = sub nuw nsw i32 256, %.0102.i
  %i.jj = mul nuw nsw i32 %i.ji, %i.jf
  %i.jk = add nuw nsw i32 %i.jh, %i.jj
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = trunc i32 %i.jl to i8
  br label %bb.aj

end_hunk_0
