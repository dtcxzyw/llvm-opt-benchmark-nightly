Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_sbit_decoder_load_bit_aligned:bb.a
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ap) ; 6 uses
  %i.ar = shl nuw nsw i32 255, %i.aq
  %i.as = xor i32 %i.ar, -1
  %i.at = add nuw nsw i32 %i.an, %i.aq
  %i.au = sub nsw i32 8, %i.at
  %i.av = shl nsw i32 %i.as, %i.au
  %i.aw = sub nsw i32 %i.q, %i.aq                 ; 3 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e
  %i.ax = icmp samesign ugt i32 %i.q, 7
  br i1 %i.ax, label %.lr.ph.us.us, label %.split.us.split

.lr.ph.us.us:                                     ; preds = %.split.us, %bb.l
  %.099139.us.us = phi i16 [ %.6.us.us, %bb.l ], [ 0, %.split.us ]
  %.0101138.us.us = phi i32 [ %.3104.us.us, %bb.l ], [ 0, %.split.us ] ; 7 uses
  %.0105137.us.us = phi i32 [ %i.ck, %bb.l ], [ %i.m, %.split.us ] ; 2 uses
  %.0106136.us.us = phi ptr [ %i.cl, %bb.l ], [ %i.am, %.split.us ] ; 2 uses
  %.0108135.us.us = phi ptr [ %.6114.us.us, %bb.l ], [ %1, %.split.us ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.us.us
  %.1131.us.us = phi i32 [ %i.q, %.lr.ph.us.us ], [ %i.bj, %bb.f ] ; 4 uses
  %.198130.us.us = phi ptr [ %.0106136.us.us, %.lr.ph.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.4129.us.us = phi i16 [ %.099139.us.us, %.lr.ph.us.us ], [ %i.bi, %bb.f ]
  %.4112128.us.us = phi ptr [ %.0108135.us.us, %.lr.ph.us.us ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.4112128.us.us, i64 1 ; 6 uses
  %i.az = load i8, ptr %.4112128.us.us, align 1, !tbaa !29
  %i.ba = zext i8 %i.az to i16
  %i.bb = or i16 %.4129.us.us, %i.ba              ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = lshr i32 %i.bc, %.0101138.us.us
  %i.be = getelementptr inbounds nuw i8, ptr %.198130.us.us, i64 1 ; 5 uses
  %i.bf = load i8, ptr %.198130.us.us, align 1, !tbaa !29
  %i.bg = trunc i32 %i.bd to i8
  %i.bh = or i8 %i.bf, %i.bg
  store i8 %i.bh, ptr %.198130.us.us, align 1, !tbaa !29
  %i.bi = shl i16 %i.bb, 8                        ; 6 uses
  %i.bj = add nsw i32 %.1131.us.us, -8            ; 5 uses
  %i.bk = icmp sgt i32 %.1131.us.us, 15
  br i1 %i.bk, label %bb.f, label %._crit_edge.us.us, !llvm.loop !741

._crit_edge.us.us:                                ; preds = %bb.f
  %i.bl = icmp sgt i32 %.1131.us.us, 8
  br i1 %i.bl, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge.us.us
  %i.bm = icmp slt i32 %.0101138.us.us, %i.bj
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = zext i16 %i.bi to i32
  %i.bo = lshr i32 %i.bn, %.0101138.us.us
  %i.bp = lshr i32 65280, %i.bj
  %i.bq = and i32 %i.bp, %i.bo
  %i.br = load i8, ptr %i.be, align 1, !tbaa !29
  %i.bs = trunc i32 %i.bq to i8
  %i.bt = or i8 %i.br, %i.bs
  store i8 %i.bt, ptr %i.be, align 1, !tbaa !29
  %i.bu = sub nuw nsw i32 %.0101138.us.us, %i.bj
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bv = icmp ult ptr %i.ay, %2
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.4112128.us.us, i64 2
  %i.bx = load i8, ptr %i.ay, align 1, !tbaa !29
  %i.by = zext i8 %i.bx to i16
  %i.bz = or disjoint i16 %i.bi, %i.by
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5113.us.us = phi ptr [ %i.bw, %bb.j ], [ %i.ay, %bb.i ]
  %.5.us.us = phi i16 [ %i.bz, %bb.j ], [ %i.bi, %bb.i ] ; 2 uses
  %i.ca = zext i16 %.5.us.us to i32
  %i.cb = lshr i32 %i.ca, %.0101138.us.us
  %i.cc = lshr i32 65280, %i.bj
  %i.cd = and i32 %i.cb, %i.cc
  %i.ce = load i8, ptr %i.be, align 1, !tbaa !29
  %i.cf = trunc i32 %i.cd to i8
  %i.cg = or i8 %i.ce, %i.cf
  store i8 %i.cg, ptr %i.be, align 1, !tbaa !29
  %i.ch = sub i32 %.0101138.us.us, %.1131.us.us
  %i.ci = add i32 %i.ch, 16
  %i.cj = shl i16 %.5.us.us, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %._crit_edge.us.us
  %.6114.us.us = phi ptr [ %.5113.us.us, %bb.k ], [ %i.ay, %bb.h ], [ %i.ay, %._crit_edge.us.us ]
  %.3104.us.us = phi i32 [ %i.ci, %bb.k ], [ %i.bu, %bb.h ], [ %.0101138.us.us, %._crit_edge.us.us ]
  %.6.us.us = phi i16 [ %i.cj, %bb.k ], [ %i.bi, %bb.h ], [ %i.bi, %._crit_edge.us.us ]
  %i.ck = add nsw i32 %.0105137.us.us, -1
  %i.cl = getelementptr inbounds i8, ptr %.0106136.us.us, i64 %i.ao
  %i.cm = icmp sgt i32 %.0105137.us.us, 1
  br i1 %i.cm, label %.lr.ph.us.us, label %.loopexit, !llvm.loop !742

.split.us.split:                                  ; preds = %.split.us
  %i.cn = lshr exact i32 65280, %i.q              ; 2 uses
  %invariant.op198 = sub i32 8, %i.q
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.split.us.split
  %.099139.us = phi i16 [ 0, %.split.us.split ], [ %.6.us, %bb.r ] ; 4 uses
  %.0101138.us = phi i32 [ 0, %.split.us.split ], [ %.3104.us, %bb.r ] ; 5 uses
  %.0105137.us = phi i32 [ %i.m, %.split.us.split ], [ %i.di, %bb.r ] ; 2 uses
  %.0106136.us = phi ptr [ %i.am, %.split.us.split ], [ %i.dj, %bb.r ] ; 5 uses
  %.0108135.us = phi ptr [ %1, %.split.us.split ], [ %.6114.us, %bb.r ] ; 5 uses
  %i.co = icmp slt i32 %.0101138.us, %i.q
  br i1 %i.co, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = zext i16 %.099139.us to i32
  %i.cq = lshr i32 %i.cp, %.0101138.us
  %i.cr = and i32 %i.cn, %i.cq
  %i.cs = load i8, ptr %.0106136.us, align 1, !tbaa !29
  %i.ct = trunc i32 %i.cr to i8
  %i.cu = or i8 %i.cs, %i.ct
  store i8 %i.cu, ptr %.0106136.us, align 1, !tbaa !29
  %i.cv = sub nuw nsw i32 %.0101138.us, %i.q
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.cw = icmp ult ptr %.0108135.us, %2
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0108135.us, i64 1
  %i.cy = load i8, ptr %.0108135.us, align 1, !tbaa !29
  %i.cz = zext i8 %i.cy to i16
  %i.da = or disjoint i16 %.099139.us, %i.cz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5113.us = phi ptr [ %i.cx, %bb.p ], [ %.0108135.us, %bb.o ]
  %.5.us = phi i16 [ %i.da, %bb.p ], [ %.099139.us, %bb.o ] ; 2 uses
  %i.db = zext i16 %.5.us to i32
  %i.dc = lshr i32 %i.db, %.0101138.us
  %i.dd = and i32 %i.dc, %i.cn
  %i.de = load i8, ptr %.0106136.us, align 1, !tbaa !29
  %i.df = trunc i32 %i.dd to i8
  %i.dg = or i8 %i.de, %i.df
  store i8 %i.dg, ptr %.0106136.us, align 1, !tbaa !29
  %.reass.reass.reass = add i32 %.0101138.us, %invariant.op198
  %i.dh = shl i16 %.5.us, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.6114.us = phi ptr [ %.5113.us, %bb.q ], [ %.0108135.us, %bb.n ]
  %.3104.us = phi i32 [ %.reass.reass.reass, %bb.q ], [ %i.cv, %bb.n ]
  %.6.us = phi i16 [ %i.dh, %bb.q ], [ %.099139.us, %bb.n ]
  %i.di = add nsw i32 %.0105137.us, -1
  %i.dj = getelementptr inbounds i8, ptr %.0106136.us, i64 %i.ao
  %i.dk = icmp sgt i32 %.0105137.us, 1
  br i1 %i.dk, label %bb.m, label %.loopexit, !llvm.loop !742

.split:                                           ; preds = %bb.e
  %i.dl = icmp sgt i32 %i.aw, 7
  %invariant.op = sub i32 8, %i.aq
  br label %bb.s

bb.s:                                             ; preds = %.split, %bb.af
  %.099139 = phi i16 [ 0, %.split ], [ %.6, %bb.af ] ; 3 uses
  %.0101138 = phi i32 [ 0, %.split ], [ %.3104, %bb.af ] ; 3 uses
  %.0105137 = phi i32 [ %i.m, %.split ], [ %i.fr, %bb.af ] ; 3 uses
  %.0106136 = phi ptr [ %i.am, %.split ], [ %i.fs, %bb.af ] ; 4 uses
  %.0108135 = phi ptr [ %1, %.split ], [ %.6114, %bb.af ] ; 7 uses
  %i.dm = icmp eq i32 %.0105137, %i.m
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %.0108135, i64 1
  %i.do = load i8, ptr %.0108135, align 1, !tbaa !29
  %i.dp = zext i8 %i.do to i16
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.dq = icmp slt i32 %.0101138, %i.aq
  br i1 %i.dq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dr = icmp ult ptr %.0108135, %2
  br i1 %i.dr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.0108135, i64 1
  %i.dt = load i8, ptr %.0108135, align 1, !tbaa !29
  %i.du = zext i8 %i.dt to i16
  %i.dv = or i16 %.099139, %i.du
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1109 = phi ptr [ %i.ds, %bb.w ], [ %.0108135, %bb.v ]
  %.1100 = phi i16 [ %i.dv, %bb.w ], [ %.099139, %bb.v ]
  %.reass170.reass = add i32 %.0101138, %invariant.op
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.dw = lshr i16 %.099139, 8
  %i.dx = sub nsw i32 %.0101138, %i.aq
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t
  %.2110 = phi ptr [ %i.dn, %bb.t ], [ %.1109, %bb.x ], [ %.0108135, %bb.y ] ; 2 uses
  %.1102 = phi i32 [ %i.an, %bb.t ], [ %.reass170.reass, %bb.x ], [ %i.dx, %bb.y ] ; 8 uses
  %.2 = phi i16 [ %i.dp, %bb.t ], [ %.1100, %bb.x ], [ %i.dw, %bb.y ] ; 2 uses
  %i.dy = zext i16 %.2 to i32
  %i.dz = lshr i32 %i.dy, %.1102
  %i.ea = and i32 %i.dz, %i.av
  %i.eb = getelementptr inbounds nuw i8, ptr %.0106136, i64 1 ; 2 uses
  %i.ec = load i8, ptr %.0106136, align 1, !tbaa !29
  %i.ed = trunc i32 %i.ea to i8
  %i.ee = or i8 %i.ec, %i.ed
  store i8 %i.ee, ptr %.0106136, align 1, !tbaa !29
  %i.ef = shl i16 %.2, 8                          ; 2 uses
  br i1 %i.dl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %.1131 = phi i32 [ %i.er, %.lr.ph ], [ %i.aw, %bb.z ] ; 2 uses
  %.198130 = phi ptr [ %i.em, %.lr.ph ], [ %i.eb, %bb.z ] ; 3 uses
  %.4129 = phi i16 [ %i.eq, %.lr.ph ], [ %i.ef, %bb.z ]
  %.4112128 = phi ptr [ %i.eg, %.lr.ph ], [ %.2110, %bb.z ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.4112128, i64 1 ; 2 uses
  %i.eh = load i8, ptr %.4112128, align 1, !tbaa !29
  %i.ei = zext i8 %i.eh to i16                    ; 2 uses
  %i.ej = or disjoint i16 %.4129, %i.ei
  %i.ek = zext i16 %i.ej to i32
  %i.el = lshr i32 %i.ek, %.1102
  %i.em = getelementptr inbounds nuw i8, ptr %.198130, i64 1 ; 2 uses
  %i.en = load i8, ptr %.198130, align 1, !tbaa !29
  %i.eo = trunc i32 %i.el to i8
  %i.ep = or i8 %i.en, %i.eo
  store i8 %i.ep, ptr %.198130, align 1, !tbaa !29
  %i.eq = shl nuw i16 %i.ei, 8                    ; 2 uses
  %i.er = add nsw i32 %.1131, -8                  ; 2 uses
  %i.es = icmp samesign ugt i32 %.1131, 15
  br i1 %i.es, label %.lr.ph, label %._crit_edge, !llvm.loop !741

._crit_edge:                                      ; preds = %.lr.ph, %bb.z
  %.4112.lcssa = phi ptr [ %.2110, %bb.z ], [ %i.eg, %.lr.ph ] ; 6 uses
  %.4.lcssa = phi i16 [ %i.ef, %bb.z ], [ %i.eq, %.lr.ph ] ; 5 uses
  %.198.lcssa = phi ptr [ %i.eb, %bb.z ], [ %i.em, %.lr.ph ] ; 4 uses
  %.1.lcssa = phi i32 [ %i.aw, %bb.z ], [ %i.er, %.lr.ph ] ; 6 uses
  %i.et = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.et, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %._crit_edge
  %i.eu = icmp slt i32 %.1102, %.1.lcssa
  br i1 %i.eu, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ev = icmp ult ptr %.4112.lcssa, %2
  br i1 %i.ev, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %.4112.lcssa, i64 1
  %i.ex = load i8, ptr %.4112.lcssa, align 1, !tbaa !29
  %i.ey = zext i8 %i.ex to i16
  %i.ez = or disjoint i16 %.4.lcssa, %i.ey
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.5113 = phi ptr [ %i.ew, %bb.ac ], [ %.4112.lcssa, %bb.ab ]
  %.5 = phi i16 [ %i.ez, %bb.ac ], [ %.4.lcssa, %bb.ab ] ; 2 uses
  %i.fa = zext i16 %.5 to i32
  %i.fb = lshr i32 %i.fa, %.1102
  %i.fc = lshr i32 65280, %.1.lcssa
  %i.fd = and i32 %i.fb, %i.fc
  %i.fe = load i8, ptr %.198.lcssa, align 1, !tbaa !29
  %i.ff = trunc i32 %i.fd to i8
  %i.fg = or i8 %i.fe, %i.ff
  store i8 %i.fg, ptr %.198.lcssa, align 1, !tbaa !29
  %reass.sub123 = add nsw i32 %.1102, 8
  %i.fh = sub nsw i32 %reass.sub123, %.1.lcssa
  %i.fi = shl i16 %.5, 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.fj = zext i16 %.4.lcssa to i32
  %i.fk = lshr i32 %i.fj, %.1102
  %i.fl = lshr i32 65280, %.1.lcssa
  %i.fm = and i32 %i.fl, %i.fk
  %i.fn = load i8, ptr %.198.lcssa, align 1, !tbaa !29
  %i.fo = trunc i32 %i.fm to i8
  %i.fp = or i8 %i.fn, %i.fo
  store i8 %i.fp, ptr %.198.lcssa, align 1, !tbaa !29
  %i.fq = sub nuw nsw i32 %.1102, %.1.lcssa
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %._crit_edge
  %.6114 = phi ptr [ %.5113, %bb.ad ], [ %.4112.lcssa, %bb.ae ], [ %.4112.lcssa, %._crit_edge ]
  %.3104 = phi i32 [ %i.fh, %bb.ad ], [ %i.fq, %bb.ae ], [ %.1102, %._crit_edge ]
  %.6 = phi i16 [ %i.fi, %bb.ad ], [ %.4.lcssa, %bb.ae ], [ %.4.lcssa, %._crit_edge ]
  %i.fr = add nsw i32 %.0105137, -1
  %i.fs = getelementptr inbounds i8, ptr %.0106136, i64 %i.ao
  %i.ft = icmp sgt i32 %.0105137, 1
  br i1 %i.ft, label %bb.s, label %.loopexit, !llvm.loop !742

.loopexit:                                        ; preds = %bb.af, %bb.r, %bb.l, %bb.c, %bb.b, %bb.a, %bb.d
  %.0107 = phi i32 [ 0, %bb.d ], [ 3, %bb.b ], [ 3, %bb.c ], [ 3, %bb.a ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.af ]
  ret i32 %.0107
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_sbit_decoder_load_compound(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load <2 x i16>, ptr %i.c, align 2, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !265
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.h = load <2 x i16>, ptr %i.g, align 2, !tbaa !154
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.j = load i16, ptr %i.i, align 2, !tbaa !266
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.l = icmp ugt ptr %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %1, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 3 uses
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  %i.w = icmp ugt ptr %i.v, %2
  br i1 %i.w, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not59 = icmp eq i32 %i.s, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = add i32 %5, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.04756 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.c ]
  %.04955 = phi ptr [ %i.k, %.lr.ph ], [ %i.ao, %bb.c ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04955, i64 2
  %i.z = load i8, ptr %.04955, align 1, !tbaa !29
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.04955, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.04955, i64 3
  %i.ah = load i8, ptr %i.y, align 1, !tbaa !29
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.aj = sext i8 %i.ah to i32
  %i.ak = add nsw i32 %3, %i.aj
  %i.al = sext i8 %i.ai to i32
  %i.am = add nsw i32 %4, %i.al
  %i.an = tail call fastcc i32 @tt_sbit_decoder_load_image(ptr noundef %0, i32 noundef %i.af, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.x, i8 noundef zeroext 0) ; 2 uses
  %.not = icmp ne i32 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %.04955, i64 4
  %i.ap = add nuw nsw i32 %.04756, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.s
  %or.cond = select i1 %.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !743

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !241
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aq = phi ptr [ %i.b, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.1 = phi i32 [ 0, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %i.ar = shl <2 x i16> %i.d, splat (i16 8)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = ashr exact <2 x i16> %i.ar, splat (i16 8)
  store <2 x i16> %i.at, ptr %i.as, align 2, !tbaa !154
  %i.au = and i16 %i.f, 255
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i16 %i.au, ptr %i.av, align 2, !tbaa !265
  %i.aw = shl <2 x i16> %i.h, splat (i16 8)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.ay = ashr exact <2 x i16> %i.aw, splat (i16 8)
  store <2 x i16> %i.ay, ptr %i.ax, align 2, !tbaa !154
  %i.az = and i16 %i.j, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !266
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !240
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !30
  %i.be = trunc <2 x i32> %i.bd to <2 x i16>
  %i.bf = and <2 x i16> %i.be, splat (i16 255)
  store <2 x i16> %i.bf, ptr %i.aq, align 2, !tbaa !154
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge
  %.2 = phi i32 [ %.1, %._crit_edge ], [ 3, %bb.b ], [ 3, %bb.a ]
  ret i32 %.2
end_hunk_0
begin_hunk_1_@Load_SBit_Png:bb.a
  br i1 %.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.d, align 4, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !252
  %i.ao = zext i16 %i.an to i32
  %.not61 = icmp eq i32 %i.al, %i.ao
  br i1 %.not61, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !30
  %i.aq = load i16, ptr %4, align 2, !tbaa !253
  %i.ar = zext i16 %i.aq to i32
  %.not62 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not62, label %bb.t, label %bb.aq

.critedge:                                        ; preds = %bb.o
  %i.as = load i32, ptr %i.e, align 4, !tbaa !30  ; 3 uses
  %i.at = icmp ugt i32 %i.as, 32767
  %i.au = load i32, ptr %i.d, align 4             ; 4 uses
  %i.av = icmp ugt i32 %i.au, 32767
  %or.cond5 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  store i32 10, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.s:                                             ; preds = %.critedge
  %i.aw = trunc nuw nsw i32 %i.au to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !252
  %i.ay = trunc nuw nsw i32 %i.as to i16
  store i16 %i.ay, ptr %4, align 2, !tbaa !253
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.au, ptr %i.az, align 4, !tbaa !256
  store i32 %i.as, ptr %i.j, align 8, !tbaa !255
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 7, ptr %i.ba, align 2, !tbaa !267
  %i.bb = shl nuw nsw i32 %i.au, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !274
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 256, ptr %i.bd, align 8, !tbaa !275
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.be = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_palette_to_rgb(ptr noundef %i.bg) #27
  %.pr = load i32, ptr %i.g, align 4, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = phi i32 [ %.pr, %bb.u ], [ %i.be, %bb.t ]
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_expand_gray_1_2_4_to_8(ptr noundef %i.bj) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.bl = call i32 @png_get_valid(ptr noundef %i.bk, ptr noundef nonnull %i.ac, i32 noundef 16) #27
  %.not63 = icmp eq i32 %i.bl, 0
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_tRNS_to_alpha(ptr noundef %i.bm) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !30  ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 16
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_strip_16(ptr noundef %i.bp) #27
  %.pr69 = load i32, ptr %i.f, align 4, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bq = phi i32 [ %.pr69, %bb.aa ], [ %i.bn, %bb.z ]
  %i.br = icmp slt i32 %i.bq, 8
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_packing(ptr noundef %i.bs) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !30
  %i.bu = and i32 %i.bt, -5
  %or.cond7 = icmp eq i32 %i.bu, 0
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_gray_to_rgb(ptr noundef %i.bv) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !30
  %.not64 = icmp eq i32 %i.bw, 0
  br i1 %.not64, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.by = call i32 @png_set_interlace_handling(ptr noundef %i.bx) #27 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_filler(ptr noundef %i.bz, i32 noundef 255, i32 noundef 1) #27
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_read_update_info(ptr noundef %i.ca, ptr noundef nonnull %i.ac) #27
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.cc = call i32 @png_get_IHDR(ptr noundef %i.cb, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #27 ; 0 uses
  %i.cd = load i32, ptr %i.f, align 4, !tbaa !30
  %.not65 = icmp eq i32 %i.cd, 8
  br i1 %.not65, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 2
  switch i32 %i.ce, label %bb.aj [
    i32 6, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 3, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %.not66 = icmp eq i8 %9, 0
  br i1 %.not66, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !747
  %convert_bytes_to_data.premultiply_data = select i1 %i.cf, ptr @convert_bytes_to_data, ptr @premultiply_data
  call void @png_set_read_user_transform_fn(ptr noundef %i.cg, ptr noundef nonnull %convert_bytes_to_data.premultiply_data) #27
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = call i32 @ft_glyphslot_alloc_bitmap(ptr noundef %0) #27 ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !30
  %.not67 = icmp eq i32 %i.ch, 0
  br i1 %.not67, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !30
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call ptr @ft_mem_qrealloc(ptr noundef %5, i64 noundef 8, i64 noundef 0, i64 noundef %i.cj, ptr noundef null, ptr noundef nonnull %i.a) #27
  store volatile ptr %i.ck, ptr %i.i, align 8, !tbaa !745
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !30
  %.not68 = icmp eq i32 %i.cl, 0
  br i1 %.not68, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cm = load i32, ptr %i.e, align 4, !tbaa !30
  %.fr = freeze i32 %i.cm                         ; 4 uses
  %i.cn = icmp sgt i32 %.fr, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !274
  %i.cr = shl nuw nsw i32 %1, 2
  %i.cs = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.ct = sext i32 %2 to i64                      ; 3 uses
  %i.cu = sext i32 %i.cq to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cv = icmp eq i32 %.fr, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 64, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ap ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ap ]
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !257
  %i.cx = add nsw i64 %indvars.iv, %i.ct
  %i.cy = mul nsw i64 %i.cx, %i.cu
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  %.0..0..0..0. = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0., i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !141
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !257
  %i.dd = add nsw i64 %indvars.iv.next, %i.ct
  %i.de = mul nsw i64 %i.dd, %i.cu
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cs
  %.0..0..0..0..1 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..1, i64 %indvars.iv.next
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !141
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !744

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i32 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.di = load ptr, ptr %i.co, align 8, !tbaa !257
  %i.dj = add nsw i64 %indvars.iv.epil.init, %i.ct
  %i.dk = mul nsw i64 %i.dj, %i.cu
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cs
  %.0..0..0..0..epil = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..epil, i64 %indvars.iv.epil.init
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !141
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !747
  %.0..0..0..0.10 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  call void @png_read_image(ptr noundef %i.do, ptr noundef %.0..0..0..0.10) #27
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_read_end(ptr noundef %i.dp, ptr noundef nonnull %i.ac) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.m, %bb.r, %bb.aj, %bb.ao, %._crit_edge, %bb.q, %bb.p, %bb.n, %bb.ak, %bb.am
  %.0..0..0..0.11 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  call void @ft_mem_free(ptr noundef %5, ptr noundef %.0..0..0..0.11) #27
  store volatile ptr null, ptr %i.i, align 8, !tbaa !745
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #27
  call void @FT_Stream_Close(ptr noundef nonnull %10) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.k, %bb.i, %bb.g, %bb.b
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.dq
}

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree readnone captures(none) %1) #18 {
bb.a:
  %i.a = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 64, ptr %i.a, align 4, !tbaa !30
  %i.b = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #27
  tail call void @longjmp(ptr noundef %i.b, i32 noundef 1) #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @warning_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  ret void
}

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #10

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #19

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @read_data_from_FT_Stream(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @png_get_io_ptr(ptr noundef %0) #27 ; 3 uses
  %i.b = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.a, i64 noundef %2) #27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 84, ptr %i.c, align 4, !tbaa !30
  tail call void @png_error(ptr noundef %0, ptr noundef null) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %2, i1 false)
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.a) #27
  ret void
}

declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_set_palette_to_rgb(ptr noundef) local_unnamed_addr #10

declare void @png_set_expand_gray_1_2_4_to_8(ptr noundef) local_unnamed_addr #10

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @png_set_tRNS_to_alpha(ptr noundef) local_unnamed_addr #10

declare void @png_set_strip_16(ptr noundef) local_unnamed_addr #10

declare void @png_set_packing(ptr noundef) local_unnamed_addr #10

declare void @png_set_gray_to_rgb(ptr noundef) local_unnamed_addr #10

declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #10

declare void @png_set_filler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @png_read_update_info(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_set_read_user_transform_fn(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @premultiply_data(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !348  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = add i32 %i.d, -15                        ; 2 uses
  %.not77 = icmp eq i32 %i.e, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %.0.copyload = load <8 x i16>, ptr %i.g, align 1 ; 2 uses
  %i.h = and <8 x i16> %.0.copyload, splat (i16 255)
  %i.i = lshr <8 x i16> %.0.copyload, splat (i16 8) ; 2 uses
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7> ; 2 uses
  %i.k = or <8 x i16> %i.i, <i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255>
  %i.l = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.m = mul nuw <8 x i16> %i.l, %i.j
  %i.n = mul nuw <8 x i16> %i.k, %i.j
  %i.o = add <8 x i16> %i.m, splat (i16 128)      ; 2 uses
  %i.p = add <8 x i16> %i.n, splat (i16 128)      ; 2 uses
  %i.q = lshr <8 x i16> %i.o, splat (i16 8)
  %i.r = add <8 x i16> %i.q, %i.o
  %i.s = lshr <8 x i16> %i.r, splat (i16 8)
  %i.t = lshr <8 x i16> %i.p, splat (i16 8)
  %i.u = add <8 x i16> %i.t, %i.p
  %i.v = and <8 x i16> %i.u, splat (i16 -256)
  %i.w = or disjoint <8 x i16> %i.s, %i.v
  store <8 x i16> %i.w, ptr %i.g, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.x, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !750

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  %.pre = load i64, ptr %i.a, align 8, !tbaa !348
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.y, %.loopexit.loopexit ] ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp ult i32 %.1, %i.aa
  br i1 %i.ab, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %.loopexit, %bb.g
  %.275 = phi i32 [ %i.bi, %bb.g ], [ %.1, %.loopexit ] ; 2 uses
  %i.ac = zext i32 %.275 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ac ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !29  ; 3 uses
  %i.ag = zext i8 %i.af to i32                    ; 3 uses
  %i.ah = icmp eq i8 %i.af, 0
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph76
  store i32 0, ptr %i.ad, align 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph76
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !29  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29  ; 2 uses
  %.not = icmp eq i8 %i.af, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = zext i8 %i.ai to i32
  %i.ao = zext i8 %i.ak to i32
  %i.ap = zext i8 %i.am to i32
  %i.aq = mul nuw nsw i32 %i.an, %i.ag
  %i.ar = add nuw nsw i32 %i.aq, 128              ; 2 uses
end_hunk_1
