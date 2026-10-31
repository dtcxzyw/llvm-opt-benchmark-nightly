Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_A?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@BlitARGBto555PixelAlpha:bb.a
  %i.bd = lshr i32 %i.bb, 9
  %i.be = and i32 %i.bd, 31744
  %i.bf = lshr i32 %i.bb, 6
  %i.bg = and i32 %i.bf, 992
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = lshr i32 %i.bb, 3
  %i.bj = and i32 %i.bi, 31
  %i.bk = or disjoint i32 %i.bh, %i.bj
  br label %.sink.split137

bb.i:                                             ; preds = %bb.g
  %i.bl = load i16, ptr %.2116, align 2
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = shl i32 %i.bb, 10
  %i.bo = and i32 %i.bn, 65011712
  %i.bp = lshr i32 %i.bb, 9
  %i.bq = and i32 %i.bp, 31744
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = lshr i32 %i.bb, 3
  %i.bt = and i32 %i.bs, 31
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = shl nuw i32 %i.bm, 16
  %i.bw = or disjoint i32 %i.bv, %i.bm
  %i.bx = and i32 %i.bw, 65043487                 ; 2 uses
  %i.by = sub nsw i32 %i.bu, %i.bx
  %i.bz = mul nsw i32 %i.by, %i.bc
  %i.ca = lshr i32 %i.bz, 5
  %i.cb = add nuw nsw i32 %i.ca, %i.bx
  %i.cc = and i32 %i.cb, 65043487                 ; 2 uses
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = or disjoint i32 %i.cd, %i.cc
  br label %.sink.split137

.sink.split137:                                   ; preds = %bb.i, %bb.h
  %.sink138 = phi i32 [ %i.bk, %bb.h ], [ %i.ce, %bb.i ]
  %i.cf = trunc i32 %.sink138 to i16
  store i16 %i.cf, ptr %.2116, align 2
  br label %bb.j

bb.j:                                             ; preds = %.sink.split137, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.2116, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.3117 = phi ptr [ %i.ch, %bb.j ], [ %.0114132, %bb.b ] ; 3 uses
  %.2112 = phi i32 [ %.1111, %bb.j ], [ %i.p, %bb.b ]
  %.3 = phi ptr [ %i.cg, %bb.j ], [ %.0109133, %bb.b ] ; 2 uses
  %i.ci = load i32, ptr %.3, align 4              ; 7 uses
  %i.cj = lshr i32 %i.ci, 27                      ; 2 uses
  switch i32 %i.cj, label %bb.m [
    i32 0, label %bb.n
    i32 31, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ck = lshr i32 %i.ci, 9
  %i.cl = and i32 %i.ck, 31744
  %i.cm = lshr i32 %i.ci, 6
  %i.cn = and i32 %i.cm, 992
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = lshr i32 %i.ci, 3
  %i.cq = and i32 %i.cp, 31
  %i.cr = or disjoint i32 %i.co, %i.cq
  br label %.sink.split139

bb.m:                                             ; preds = %bb.k
  %i.cs = load i16, ptr %.3117, align 2
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = shl i32 %i.ci, 10
  %i.cv = and i32 %i.cu, 65011712
  %i.cw = lshr i32 %i.ci, 9
  %i.cx = and i32 %i.cw, 31744
  %i.cy = or disjoint i32 %i.cv, %i.cx
  %i.cz = lshr i32 %i.ci, 3
  %i.da = and i32 %i.cz, 31
  %i.db = or disjoint i32 %i.cy, %i.da
  %i.dc = shl nuw i32 %i.ct, 16
  %i.dd = or disjoint i32 %i.dc, %i.ct
  %i.de = and i32 %i.dd, 65043487                 ; 2 uses
  %i.df = sub nsw i32 %i.db, %i.de
  %i.dg = mul nsw i32 %i.df, %i.cj
  %i.dh = lshr i32 %i.dg, 5
  %i.di = add nuw nsw i32 %i.dh, %i.de
  %i.dj = and i32 %i.di, 65043487                 ; 2 uses
  %i.dk = lshr i32 %i.dj, 16
  %i.dl = or disjoint i32 %i.dk, %i.dj
  br label %.sink.split139

.sink.split139:                                   ; preds = %bb.m, %bb.l
  %.sink140 = phi i32 [ %i.cr, %bb.l ], [ %i.dl, %bb.m ]
  %i.dm = trunc i32 %.sink140 to i16
  store i16 %i.dm, ptr %.3117, align 2
  br label %bb.n

bb.n:                                             ; preds = %.sink.split139, %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %.3, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.3117, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.4118 = phi ptr [ %i.do, %bb.n ], [ %.0114132, %bb.b ] ; 3 uses
  %.3113 = phi i32 [ %.2112, %bb.n ], [ %i.p, %bb.b ] ; 2 uses
  %.4 = phi ptr [ %i.dn, %bb.n ], [ %.0109133, %bb.b ] ; 2 uses
  %i.dp = load i32, ptr %.4, align 4              ; 7 uses
  %i.dq = lshr i32 %i.dp, 27                      ; 2 uses
  switch i32 %i.dq, label %bb.q [
    i32 0, label %bb.r
    i32 31, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.dr = lshr i32 %i.dp, 9
  %i.ds = and i32 %i.dr, 31744
  %i.dt = lshr i32 %i.dp, 6
  %i.du = and i32 %i.dt, 992
  %i.dv = or disjoint i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dp, 3
  %i.dx = and i32 %i.dw, 31
  %i.dy = or disjoint i32 %i.dv, %i.dx
  br label %.sink.split141

bb.q:                                             ; preds = %bb.o
  %i.dz = load i16, ptr %.4118, align 2
  %i.ea = zext i16 %i.dz to i32                   ; 2 uses
  %i.eb = shl i32 %i.dp, 10
  %i.ec = and i32 %i.eb, 65011712
  %i.ed = lshr i32 %i.dp, 9
  %i.ee = and i32 %i.ed, 31744
  %i.ef = or disjoint i32 %i.ec, %i.ee
  %i.eg = lshr i32 %i.dp, 3
  %i.eh = and i32 %i.eg, 31
  %i.ei = or disjoint i32 %i.ef, %i.eh
  %i.ej = shl nuw i32 %i.ea, 16
  %i.ek = or disjoint i32 %i.ej, %i.ea
  %i.el = and i32 %i.ek, 65043487                 ; 2 uses
  %i.em = sub nsw i32 %i.ei, %i.el
  %i.en = mul nsw i32 %i.em, %i.dq
  %i.eo = lshr i32 %i.en, 5
  %i.ep = add nuw nsw i32 %i.eo, %i.el
  %i.eq = and i32 %i.ep, 65043487                 ; 2 uses
  %i.er = lshr i32 %i.eq, 16
  %i.es = or disjoint i32 %i.er, %i.eq
  br label %.sink.split141

.sink.split141:                                   ; preds = %bb.q, %bb.p
  %.sink142 = phi i32 [ %i.dy, %bb.p ], [ %i.es, %bb.q ]
  %i.et = trunc i32 %.sink142 to i16
  store i16 %i.et, ptr %.4118, align 2
  br label %bb.r

bb.r:                                             ; preds = %.sink.split141, %bb.o
  %i.eu = getelementptr inbounds nuw i8, ptr %.4, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.4118, i64 2 ; 2 uses
  %i.ew = add nsw i32 %.3113, -1
  %i.ex = icmp sgt i32 %.3113, 1
  br i1 %i.ex, label %bb.c, label %bb.s, !llvm.loop !12

default.unreachable135:                           ; preds = %bb.b
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.r
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.s
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit8888to8888PixelAlpha(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not49 = icmp eq i32 %i.d, 0
  br i1 %.not49, label %._crit_edge52.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp sgt i32 %i.b, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 31 ; 2 uses
  %i.m = getelementptr i8, ptr %i.f, i64 20       ; 3 uses
  %i.n = sext i32 %i.j to i64
  %i.o = sext i32 %i.h to i64
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge52.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %scevgep = getelementptr i8, ptr %i.f, i64 32
  %i.t = add nsw i32 %i.b, -1
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = zext nneg i32 %i.b to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  %n.vec = and i64 %i.x, 2147483644               ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.z = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.x
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.in = phi i32 [ %i.cm, %._crit_edge ], [ %i.d, %.preheader.preheader ]
  %.04151 = phi ptr [ %i.cn, %._crit_edge ], [ %i.q, %.preheader.preheader ] ; 6 uses
  %.04250 = phi ptr [ %i.co, %._crit_edge ], [ %i.s, %.preheader.preheader ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep.a = getelementptr i8, ptr %.04250, i64 %i.w ; 2 uses
  %scevgep58 = getelementptr i8, ptr %.04151, i64 %i.w
  %bound0 = icmp ult ptr %.04250, %scevgep58
  %bound1 = icmp ult ptr %.04151, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound060 = icmp ult ptr %.04250, %scevgep
  %bound161 = icmp ult ptr %i.m, %scevgep.a
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx = or i1 %found.conflict, %found.conflict62
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aa = getelementptr i8, ptr %.04151, i64 %i.y ; 2 uses
  %i.ab = getelementptr i8, ptr %.04250, i64 %i.y ; 2 uses
  %i.ac = load i8, ptr %i.l, align 1, !alias.scope !21
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ad = zext nneg <4 x i8> %broadcast.splat to <4 x i32>
  %i.ae = load i32, ptr %i.m, align 4, !alias.scope !21
  %broadcast.splatinsert65 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat66 = shufflevector <4 x i32> %broadcast.splatinsert65, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.04151, i64 %i.af
  %next.gep63 = getelementptr i8, ptr %.04250, i64 %i.af ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !22 ; 2 uses
  %wide.load64 = load <4 x i32>, ptr %next.gep63, align 4, !alias.scope !23, !noalias !24
  %i.ag = lshr <4 x i32> %wide.load, %i.ad
  %i.ah = and <4 x i32> %i.ag, splat (i32 255)
  %i.ai = or <4 x i32> %broadcast.splat66, %wide.load
  %i.aj = zext <4 x i32> %i.ai to <4 x i64>       ; 2 uses
  %i.ak = shl nuw nsw <4 x i64> %i.aj, splat (i64 24)
  %i.al = or <4 x i64> %i.ak, %i.aj
  %i.am = and <4 x i64> %i.al, splat (i64 71777214294589695)
  %i.an = zext <4 x i32> %wide.load64 to <4 x i64> ; 2 uses
  %i.ao = shl nuw nsw <4 x i64> %i.an, splat (i64 24)
  %i.ap = or <4 x i64> %i.ao, %i.an
  %i.aq = and <4 x i64> %i.ap, splat (i64 71777214294589695) ; 2 uses
  %i.ar = sub nsw <4 x i64> %i.am, %i.aq
  %i.as = zext nneg <4 x i32> %i.ah to <4 x i64>
  %i.at = mul <4 x i64> %i.ar, %i.as
  %i.au = mul nuw <4 x i64> %i.aq, splat (i64 255)
  %i.av = add nuw <4 x i64> %i.au, splat (i64 281479271743489)
  %i.aw = add <4 x i64> %i.av, %i.at              ; 2 uses
  %i.ax = lshr <4 x i64> %i.aw, splat (i64 8)
  %i.ay = and <4 x i64> %i.ax, splat (i64 71777214294589695)
  %i.az = add <4 x i64> %i.ay, %i.aw
  %i.ba = and <4 x i64> %i.az, splat (i64 -71777214294589696) ; 2 uses
  %i.bb = lshr exact <4 x i64> %i.ba, splat (i64 8)
  %i.bc = lshr <4 x i64> %i.ba, splat (i64 32)
  %i.bd = or disjoint <4 x i64> %i.bb, %i.bc
  %i.be = trunc <4 x i64> %i.bd to <4 x i32>
  store <4 x i32> %i.be, ptr %next.gep63, align 4, !alias.scope !23, !noalias !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.147.ph = phi ptr [ %.04151, %vector.memcheck ], [ %.04151, %.preheader ], [ %i.aa, %middle.block ]
  %.14346.ph = phi ptr [ %.04250, %vector.memcheck ], [ %.04250, %.preheader ], [ %i.ab, %middle.block ]
  %.04445.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.147 = phi ptr [ %i.cj, %scalar.ph ], [ %.147.ph, %scalar.ph.preheader ] ; 2 uses
  %.14346 = phi ptr [ %i.ck, %scalar.ph ], [ %.14346.ph, %scalar.ph.preheader ] ; 3 uses
  %.04445 = phi i32 [ %i.cl, %scalar.ph ], [ %.04445.ph, %scalar.ph.preheader ]
  %i.bg = load i32, ptr %.147, align 4            ; 2 uses
  %i.bh = load i32, ptr %.14346, align 4
  %i.bi = load i8, ptr %i.l, align 1
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = lshr i32 %i.bg, %i.bj
  %i.bl = and i32 %i.bk, 255
  %i.bm = load i32, ptr %i.m, align 4
  %i.bn = or i32 %i.bm, %i.bg
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 24
  %i.bq = or i64 %i.bp, %i.bo
  %i.br = and i64 %i.bq, 71777214294589695
  %i.bs = zext i32 %i.bh to i64                   ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 24
  %i.bu = or i64 %i.bt, %i.bs
  %i.bv = and i64 %i.bu, 71777214294589695        ; 2 uses
  %i.bw = sub nsw i64 %i.br, %i.bv
  %i.bx = zext nneg i32 %i.bl to i64
  %i.by = mul i64 %i.bw, %i.bx
  %reass.sub = mul nuw i64 %i.bv, 255
  %i.bz = add nuw i64 %reass.sub, 281479271743489
  %i.ca = add i64 %i.bz, %i.by                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 8
  %i.cc = and i64 %i.cb, 71777214294589695
  %i.cd = add i64 %i.cc, %i.ca
  %i.ce = and i64 %i.cd, -71777214294589696       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 8
  %i.cg = lshr i64 %i.ce, 32
  %i.ch = or disjoint i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %.14346, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.147, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.14346, i64 4 ; 2 uses
  %i.cl = add nuw nsw i32 %.04445, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa57 = phi ptr [ %i.aa, %middle.block ], [ %i.cj, %scalar.ph ]
  %.lcssa = phi ptr [ %i.ab, %middle.block ], [ %i.ck, %scalar.ph ]
  %i.cm = add nsw i32 %.in, -1                    ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.lcssa57, i64 %i.n
  %i.co = getelementptr inbounds i8, ptr %.lcssa, i64 %i.o
  %.not = icmp eq i32 %i.cm, 0
  br i1 %.not, label %._crit_edge52.split, label %.preheader, !llvm.loop !20

._crit_edge52.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Blit8888to8888PixelAlphaSwizzle(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8              ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4
  %.not = icmp eq i32 %i.t, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @SDL_Get8888AlphaMaskAndShift(ptr noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not5964 = icmp eq i32 %i.f, 0
  br i1 %.not5964, label %._crit_edge67.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i32 %i.d, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 31 ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 28       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 29 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 29 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 30 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 30 ; 2 uses
  %i.ac = sext i32 %i.j to i64
  %i.ad = sext i32 %i.n to i64
  br i1 %i.u, label %.preheader.preheader, label %._crit_edge67.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre.pre = load i32, ptr %i.a, align 4
  %i.ae = select i1 %.not, i32 %.pre.pre, i32 0   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 31
  %scevgep83 = getelementptr i8, ptr %i.p, i64 32
  %i.af = add nsw i32 %i.d, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4                ; 2 uses
  %i.aj = zext nneg i32 %i.d to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 4
  %n.vec = and i64 %i.aj, 2147483644              ; 4 uses
  %i.ak = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert95.a = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat96.a = shufflevector <4 x i32> %broadcast.splatinsert95.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.in = phi i32 [ %i.et, %._crit_edge ], [ %i.f, %.preheader.preheader ]
  %.05466 = phi ptr [ %i.eu, %._crit_edge ], [ %i.h, %.preheader.preheader ] ; 6 uses
  %.05765 = phi ptr [ %i.ev, %._crit_edge ], [ %i.l, %.preheader.preheader ] ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep.a = getelementptr i8, ptr %.05765, i64 %i.ai ; 3 uses
  %scevgep73 = getelementptr i8, ptr %.05466, i64 %i.ai
  %bound0 = icmp ult ptr %.05765, %scevgep73
  %bound1 = icmp ult ptr %.05466, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound076 = icmp ult ptr %.05765, %scevgep83
  %bound177 = icmp ult ptr %i.w, %scevgep.a
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx = or i1 %found.conflict, %found.conflict78
  %bound079 = icmp ult ptr %.05765, %scevgep
  %bound180 = icmp ult ptr %i.s, %scevgep.a
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx, %found.conflict81
  br i1 %conflict.rdx82, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.am = getelementptr i8, ptr %.05466, i64 %i.ak ; 2 uses
  %i.an = getelementptr i8, ptr %.05765, i64 %i.ak ; 2 uses
  %i.ao = load i8, ptr %i.v, align 1, !alias.scope !33
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ap = zext nneg <4 x i8> %broadcast.splat to <4 x i32>
  %i.aq = load i8, ptr %i.w, align 4, !alias.scope !33
  %broadcast.splatinsert83 = insertelement <4 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat84 = shufflevector <4 x i8> %broadcast.splatinsert83, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ar = zext nneg <4 x i8> %broadcast.splat84 to <4 x i32>
  %i.as = load i8, ptr %i.x, align 4, !alias.scope !34
  %broadcast.splatinsert85 = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %broadcast.splat86 = shufflevector <4 x i8> %broadcast.splatinsert85, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.at = zext nneg <4 x i8> %broadcast.splat86 to <4 x i32>
  %i.au = load i8, ptr %i.y, align 1, !alias.scope !33
  %broadcast.splatinsert87 = insertelement <4 x i8> poison, i8 %i.au, i64 0
  %broadcast.splat88 = shufflevector <4 x i8> %broadcast.splatinsert87, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.av = zext nneg <4 x i8> %broadcast.splat88 to <4 x i32>
  %i.aw = load i8, ptr %i.z, align 1, !alias.scope !34
  %broadcast.splatinsert89 = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %broadcast.splat90 = shufflevector <4 x i8> %broadcast.splatinsert89, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ax = zext nneg <4 x i8> %broadcast.splat90 to <4 x i32>
  %i.ay = load i8, ptr %i.aa, align 2, !alias.scope !33
  %broadcast.splatinsert91 = insertelement <4 x i8> poison, i8 %i.ay, i64 0
  %broadcast.splat92 = shufflevector <4 x i8> %broadcast.splatinsert91, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.az = zext nneg <4 x i8> %broadcast.splat92 to <4 x i32>
  %i.ba = load i8, ptr %i.ab, align 2, !alias.scope !34
  %broadcast.splatinsert93 = insertelement <4 x i8> poison, i8 %i.ba, i64 0
  %broadcast.splat94 = shufflevector <4 x i8> %broadcast.splatinsert93, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bb = zext nneg <4 x i8> %broadcast.splat94 to <4 x i32>
  %i.bc = load i32, ptr %i.s, align 4, !alias.scope !34
  %broadcast.splatinsert99 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat100 = shufflevector <4 x i32> %broadcast.splatinsert99, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.05466, i64 %i.bd
  %next.gep97 = getelementptr i8, ptr %.05765, i64 %i.bd ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !35 ; 4 uses
  %wide.load98 = load <4 x i32>, ptr %next.gep97, align 4, !alias.scope !36, !noalias !37
  %i.be = lshr <4 x i32> %wide.load, %i.ap
  %i.bf = and <4 x i32> %i.be, splat (i32 255)
  %i.bg = lshr <4 x i32> %wide.load, %i.ar
  %i.bh = and <4 x i32> %i.bg, splat (i32 255)
  %i.bi = shl <4 x i32> %i.bh, %i.at
  %i.bj = lshr <4 x i32> %wide.load, %i.av
  %i.bk = and <4 x i32> %i.bj, splat (i32 255)
  %i.bl = shl <4 x i32> %i.bk, %i.ax
  %i.bm = or <4 x i32> %i.bl, %i.bi
  %i.bn = lshr <4 x i32> %wide.load, %i.az
  %i.bo = and <4 x i32> %i.bn, splat (i32 255)
  %i.bp = shl <4 x i32> %i.bo, %i.bb
  %i.bq = or <4 x i32> %i.bm, %broadcast.splat100
  %i.br = or <4 x i32> %i.bq, %i.bp
  %i.bs = zext <4 x i32> %i.br to <4 x i64>       ; 2 uses
  %i.bt = shl nuw nsw <4 x i64> %i.bs, splat (i64 24)
  %i.bu = or <4 x i64> %i.bt, %i.bs
  %i.bv = and <4 x i64> %i.bu, splat (i64 71777214294589695)
  %i.bw = zext <4 x i32> %wide.load98 to <4 x i64> ; 2 uses
  %i.bx = shl nuw nsw <4 x i64> %i.bw, splat (i64 24)
  %i.by = or <4 x i64> %i.bx, %i.bw
  %i.bz = and <4 x i64> %i.by, splat (i64 71777214294589695) ; 2 uses
  %i.ca = sub nsw <4 x i64> %i.bv, %i.bz
  %i.cb = zext nneg <4 x i32> %i.bf to <4 x i64>
  %i.cc = mul <4 x i64> %i.ca, %i.cb
  %i.cd = mul nuw <4 x i64> %i.bz, splat (i64 255)
  %i.ce = add nuw <4 x i64> %i.cd, splat (i64 281479271743489)
  %i.cf = add <4 x i64> %i.ce, %i.cc              ; 2 uses
  %i.cg = lshr <4 x i64> %i.cf, splat (i64 8)
  %i.ch = and <4 x i64> %i.cg, splat (i64 71777214294589695)
  %i.ci = add <4 x i64> %i.ch, %i.cf
  %i.cj = and <4 x i64> %i.ci, splat (i64 -71777214294589696) ; 2 uses
  %i.ck = lshr exact <4 x i64> %i.cj, splat (i64 8)
  %i.cl = lshr <4 x i64> %i.cj, splat (i64 32)
  %i.cm = or disjoint <4 x i64> %i.ck, %i.cl
  %i.cn = trunc <4 x i64> %i.cm to <4 x i32>
  %i.co = or <4 x i32> %broadcast.splat96.a, %i.cn
  store <4 x i32> %i.co, ptr %next.gep97, align 4, !alias.scope !36, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.162.ph = phi ptr [ %.05466, %vector.memcheck ], [ %.05466, %.preheader ], [ %i.am, %middle.block ]
  %.05661.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %i.al, %middle.block ]
  %.15860.ph = phi ptr [ %.05765, %vector.memcheck ], [ %.05765, %.preheader ], [ %i.an, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.162 = phi ptr [ %i.eq, %scalar.ph ], [ %.162.ph, %scalar.ph.preheader ] ; 2 uses
  %.05661 = phi i32 [ %i.es, %scalar.ph ], [ %.05661.ph, %scalar.ph.preheader ]
  %.15860 = phi ptr [ %i.er, %scalar.ph ], [ %.15860.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cq = load i32, ptr %.162, align 4            ; 4 uses
  %i.cr = load i32, ptr %.15860, align 4
  %i.cs = load i8, ptr %i.v, align 1
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = lshr i32 %i.cq, %i.ct
  %i.cv = and i32 %i.cu, 255
  %i.cw = load i8, ptr %i.w, align 4
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = lshr i32 %i.cq, %i.cx
  %i.cz = and i32 %i.cy, 255
  %i.da = load i8, ptr %i.x, align 4
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = shl i32 %i.cz, %i.db
  %i.dd = load i8, ptr %i.y, align 1
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = lshr i32 %i.cq, %i.de
  %i.dg = and i32 %i.df, 255
  %i.dh = load i8, ptr %i.z, align 1
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = shl i32 %i.dg, %i.di
  %i.dk = or i32 %i.dj, %i.dc
  %i.dl = load i8, ptr %i.aa, align 2
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = lshr i32 %i.cq, %i.dm
  %i.do = and i32 %i.dn, 255
  %i.dp = load i8, ptr %i.ab, align 2
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = shl i32 %i.do, %i.dq
  %i.ds = load i32, ptr %i.s, align 4
  %i.dt = or i32 %i.dk, %i.ds
  %i.du = or i32 %i.dt, %i.dr
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dv, 24
  %i.dx = or i64 %i.dw, %i.dv
  %i.dy = and i64 %i.dx, 71777214294589695
  %i.dz = zext i32 %i.cr to i64                   ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 24
  %i.eb = or i64 %i.ea, %i.dz
  %i.ec = and i64 %i.eb, 71777214294589695        ; 2 uses
  %i.ed = sub nsw i64 %i.dy, %i.ec
  %i.ee = zext nneg i32 %i.cv to i64
  %i.ef = mul i64 %i.ed, %i.ee
  %reass.sub = mul nuw i64 %i.ec, 255
  %i.eg = add nuw i64 %reass.sub, 281479271743489
  %i.eh = add i64 %i.eg, %i.ef                    ; 2 uses
  %i.ei = lshr i64 %i.eh, 8
  %i.ej = and i64 %i.ei, 71777214294589695
  %i.ek = add i64 %i.ej, %i.eh
  %i.el = and i64 %i.ek, -71777214294589696       ; 2 uses
  %i.em = lshr exact i64 %i.el, 8
  %i.en = lshr i64 %i.el, 32
  %i.eo = or disjoint i64 %i.em, %i.en
  %i.ep = trunc i64 %i.eo to i32
  %.055 = or i32 %i.ae, %i.ep
  store i32 %.055, ptr %.15860, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.162, i64 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.15860, i64 4 ; 2 uses
  %i.es = add nuw nsw i32 %.05661, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa72 = phi ptr [ %i.am, %middle.block ], [ %i.eq, %scalar.ph ]
  %.lcssa = phi ptr [ %i.an, %middle.block ], [ %i.er, %scalar.ph ]
  %i.et = add nsw i32 %.in, -1                    ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %.lcssa72, i64 %i.ac
  %i.ev = getelementptr inbounds i8, ptr %.lcssa, i64 %i.ad
  %.not59 = icmp eq i32 %i.et, 0
  br i1 %.not59, label %._crit_edge67.split, label %.preheader, !llvm.loop !32

._crit_edge67.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @BlitNto1SurfaceAlpha(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.l = load i8, ptr %i.k, align 1               ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32                      ; 12 uses
  %.not428 = icmp eq i32 %i.b, 0
  br i1 %.not428, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@BlitNtoNSurfaceAlphaKey:bb.a
  %i.bch = load i8, ptr %i.aw, align 1
  %i.bci = zext nneg i8 %i.bch to i32
  %i.bcj = shl i32 %i.bcg, %i.bci
  %i.bck = or i32 %i.bcc, %i.bcj
  %i.bcl = trunc i32 %i.bck to i8
  store i8 %i.bcl, ptr %.4712, align 1
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %i.bcm = load i8, ptr %i.al, align 4
  %i.bcn = zext i8 %i.bcm to i32
  %i.bco = sub nsw i32 8, %i.bcn
  %i.bcp = lshr i32 %i.bab, %i.bco
  %i.bcq = load i8, ptr %i.an, align 4
  %i.bcr = zext nneg i8 %i.bcq to i32
  %i.bcs = shl i32 %i.bcp, %i.bcr
  %i.bct = load i8, ptr %i.ao, align 1
  %i.bcu = zext i8 %i.bct to i32
  %i.bcv = sub nsw i32 8, %i.bcu
  %i.bcw = lshr i32 %i.bal, %i.bcv
  %i.bcx = load i8, ptr %i.aq, align 1
  %i.bcy = zext nneg i8 %i.bcx to i32
  %i.bcz = shl i32 %i.bcw, %i.bcy
  %i.bda = or i32 %i.bcz, %i.bcs
  %i.bdb = load i8, ptr %i.ar, align 2
  %i.bdc = zext i8 %i.bdb to i32
  %i.bdd = sub nsw i32 8, %i.bdc
  %i.bde = lshr i32 %i.bav, %i.bdd
  %i.bdf = load i8, ptr %i.at, align 2
  %i.bdg = zext nneg i8 %i.bdf to i32
  %i.bdh = shl i32 %i.bde, %i.bdg
  %i.bdi = or i32 %i.bda, %i.bdh
  %i.bdj = load i8, ptr %i.au, align 1
  %i.bdk = zext i8 %i.bdj to i32
  %i.bdl = sub nsw i32 8, %i.bdk
  %i.bdm = lshr i32 %i.bbf, %i.bdl
  %i.bdn = load i8, ptr %i.aw, align 1
  %i.bdo = zext nneg i8 %i.bdn to i32
  %i.bdp = shl i32 %i.bdm, %i.bdo
  %i.bdq = or i32 %i.bdi, %i.bdp
  %i.bdr = trunc i32 %i.bdq to i16
  store i16 %i.bdr, ptr %.4712, align 2
  br label %bb.br

bb.bp:                                            ; preds = %bb.bm
  %i.bds = trunc i32 %i.baa to i8
  %i.bdt = load i8, ptr %i.an, align 4
  %i.bdu = lshr i8 %i.bdt, 3
  %i.bdv = zext nneg i8 %i.bdu to i64
  %i.bdw = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.bdv
  store i8 %i.bds, ptr %i.bdw, align 1
  %i.bdx = trunc i32 %i.bak to i8
  %i.bdy = load i8, ptr %i.aq, align 1
  %i.bdz = lshr i8 %i.bdy, 3
  %i.bea = zext nneg i8 %i.bdz to i64
  %i.beb = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.bea
  store i8 %i.bdx, ptr %i.beb, align 1
  %i.bec = trunc i32 %i.bau to i8
  %i.bed = load i8, ptr %i.at, align 2
  %i.bee = lshr i8 %i.bed, 3
  %i.bef = zext nneg i8 %i.bee to i64
  %i.beg = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.bef
  store i8 %i.bec, ptr %i.beg, align 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.beh = load i8, ptr %i.al, align 4
  %i.bei = zext i8 %i.beh to i32
  %i.bej = sub nsw i32 8, %i.bei
  %i.bek = lshr i32 %i.bab, %i.bej
  %i.bel = load i8, ptr %i.an, align 4
  %i.bem = zext nneg i8 %i.bel to i32
  %i.ben = shl i32 %i.bek, %i.bem
  %i.beo = load i8, ptr %i.ao, align 1
  %i.bep = zext i8 %i.beo to i32
  %i.beq = sub nsw i32 8, %i.bep
  %i.ber = lshr i32 %i.bal, %i.beq
  %i.bes = load i8, ptr %i.aq, align 1
  %i.bet = zext nneg i8 %i.bes to i32
  %i.beu = shl i32 %i.ber, %i.bet
  %i.bev = or i32 %i.beu, %i.ben
  %i.bew = load i8, ptr %i.ar, align 2
  %i.bex = zext i8 %i.bew to i32
  %i.bey = sub nsw i32 8, %i.bex
  %i.bez = lshr i32 %i.bav, %i.bey
  %i.bfa = load i8, ptr %i.at, align 2
  %i.bfb = zext nneg i8 %i.bfa to i32
  %i.bfc = shl i32 %i.bez, %i.bfb
  %i.bfd = or i32 %i.bev, %i.bfc
  %i.bfe = load i8, ptr %i.au, align 1
  %i.bff = zext i8 %i.bfe to i32
  %i.bfg = sub nsw i32 8, %i.bff
  %i.bfh = lshr i32 %i.bbf, %i.bfg
  %i.bfi = load i8, ptr %i.aw, align 1
  %i.bfj = zext nneg i8 %i.bfi to i32
  %i.bfk = shl i32 %i.bfh, %i.bfj
  %i.bfl = or i32 %i.bfd, %i.bfk
  store i32 %i.bfl, ptr %.4712, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.bg
  %i.bfm = getelementptr inbounds nuw i8, ptr %.4, i64 %i.ax ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.ay ; 2 uses
  %i.bfo = add nsw i32 %.3736, -1
  %i.bfp = icmp sgt i32 %.3736, 1
  br i1 %i.bfp, label %bb.c, label %bb.bs, !llvm.loop !52

default.unreachable757:                           ; preds = %bb.b
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.bfq = getelementptr inbounds i8, ptr %i.bfm, i64 %i.az
  %i.bfr = getelementptr inbounds i8, ptr %i.bfn, i64 %i.ba
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.bs, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @SDL_Get8888AlphaMaskAndShift(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Blit16to16SurfaceAlpha128(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext range(i16 -2082, -1057) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not146 = icmp eq i32 %i.d, 0
  br i1 %.not146, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %i.g = ashr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = ashr i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i16 %1 to i32                       ; 10 uses
  %i.p = and i32 %i.o, 4095
  %i.q = xor i32 %i.p, 4095                       ; 4 uses
  %i.r = add nsw i32 %i.b, -1                     ; 2 uses
  %i.s = mul nuw i32 %i.o, 65537                  ; 7 uses
  %i.t = xor i32 %i.s, -1                         ; 4 uses
  %i.u = sext i32 %i.l to i64                     ; 2 uses
  %i.v = sext i32 %i.g to i64
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert174 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat175 = shufflevector <4 x i32> %broadcast.splatinsert174, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph150, %bb.m
  %.in = phi i32 [ %i.d, %.lr.ph150 ], [ %i.w, %bb.m ]
  %.0111148 = phi ptr [ %i.n, %.lr.ph150 ], [ %.7, %bb.m ] ; 7 uses
  %.0112147 = phi ptr [ %i.i, %.lr.ph150 ], [ %.7119, %bb.m ] ; 9 uses
  %i.w = add nsw i32 %.in, -1                     ; 2 uses
  %i.x = ptrtoint ptr %.0111148 to i64            ; 2 uses
  %i.y = ptrtoint ptr %.0112147 to i64            ; 2 uses
  %i.z = xor i64 %i.x, %i.y
  %i.aa = and i64 %i.z, 2
  %.not125 = icmp eq i64 %i.aa, 0
  br i1 %.not125, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = and i64 %i.y, 2
  %.not128 = icmp eq i64 %i.ab, 0
  br i1 %.not128, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i16, ptr %.0112147, align 2
  %i.ad = load i16, ptr %.0111148, align 2
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = and i32 %i.ae, %i.o
  %i.ag = zext i16 %i.ac to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, %i.o
  %i.ai = add nuw nsw i32 %i.af, %i.ah
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.q, %i.ag
  %i.al = and i32 %i.ak, %i.ae
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %.0112147, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.0112147, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.0111148, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0123 = phi i32 [ %i.r, %bb.d ], [ %i.b, %bb.c ] ; 6 uses
  %.1113 = phi ptr [ %i.ao, %bb.d ], [ %.0112147, %bb.c ] ; 7 uses
  %.1 = phi ptr [ %i.ap, %bb.d ], [ %.0111148, %bb.c ] ; 3 uses
  %i.aq = getelementptr i8, ptr %.1, i64 2        ; 6 uses
  %i.ar = getelementptr inbounds i8, ptr %.1, i64 -2
  %i.as = load i32, ptr %i.ar, align 4            ; 4 uses
  %i.at = icmp sgt i32 %.0123, 1
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.au = add nsw i32 %.0123, -2                  ; 2 uses
  %2 = zext i32 %i.au to i64                      ; 2 uses
  %3 = lshr i64 %2, 1
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.au, 6
  br i1 %min.iters.check191, label %.lr.ph.preheader212, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.preheader
  %5 = shl nuw nsw i64 %2, 1
  %6 = and i64 %5, 8589934588                     ; 2 uses
  %7 = getelementptr i8, ptr %.1113, i64 %6
  %scevgep184 = getelementptr i8, ptr %7, i64 4
  %scevgep185 = getelementptr i8, ptr %.1, i64 %6
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 6
  %bound0187 = icmp ult ptr %.1113, %scevgep186
  %bound1188 = icmp ult ptr %i.aq, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph.preheader212, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck182
  %n.vec193 = and i64 %4, 4294967292              ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec193, 2            ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.1113, i64 %i.av ; 2 uses
  %i.ay = trunc nuw i64 %n.vec193 to i32
  %i.az = shl i32 %i.ay, 1
  %i.ba = sub i32 %.0123, %i.az                   ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.as, i64 3
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph192
  %index199 = phi i64 [ 0, %vector.ph192 ], [ %index.next204, %vector.body198 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph192 ], [ %wide.load202, %vector.body198 ]
  %i.bb = shl i64 %index199, 2                    ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.aq, i64 %i.bb
  %next.gep201 = getelementptr i8, ptr %.1113, i64 %i.bb ; 2 uses
  %wide.load202 = load <4 x i32>, ptr %next.gep200, align 4, !alias.scope !65 ; 4 uses
  %i.bc = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load202, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %wide.load203 = load <4 x i32>, ptr %next.gep201, align 4, !alias.scope !66, !noalias !65 ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load202, <4 x i32> %i.bc, <4 x i32> splat (i32 16)) ; 2 uses
  %i.be = and <4 x i32> %i.bd, %broadcast.splat195
  %i.bf = lshr <4 x i32> %i.be, splat (i32 1)
  %i.bg = and <4 x i32> %wide.load203, %broadcast.splat195
  %i.bh = lshr <4 x i32> %i.bg, splat (i32 1)
  %i.bi = add nuw <4 x i32> %i.bf, %i.bh
  %i.bj = and <4 x i32> %wide.load203, %broadcast.splat197
  %i.bk = and <4 x i32> %i.bj, %i.bd
  %i.bl = add <4 x i32> %i.bi, %i.bk
  store <4 x i32> %i.bl, ptr %next.gep201, align 4, !alias.scope !66, !noalias !65
  %index.next204 = add nuw i64 %index199, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next204, %n.vec193
  br i1 %i.bm, label %middle.block205, label %vector.body198, !llvm.loop !57

middle.block205:                                  ; preds = %vector.body198
  %vector.recur.extract = extractelement <4 x i32> %wide.load202, i64 3 ; 2 uses
  %cmp.n206 = icmp eq i64 %4, %n.vec193
  br i1 %cmp.n206, label %._crit_edge, label %.lr.ph.preheader212

.lr.ph.preheader212:                              ; preds = %vector.memcheck182, %.lr.ph.preheader, %middle.block205
  %.2133.ph = phi ptr [ %i.aq, %vector.memcheck182 ], [ %i.aq, %.lr.ph.preheader ], [ %i.aw, %middle.block205 ]
  %.2114132.ph = phi ptr [ %.1113, %vector.memcheck182 ], [ %.1113, %.lr.ph.preheader ], [ %i.ax, %middle.block205 ]
  %.0122131.ph = phi i32 [ %i.as, %vector.memcheck182 ], [ %i.as, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block205 ]
  %.1124130.ph = phi i32 [ %.0123, %vector.memcheck182 ], [ %.0123, %.lr.ph.preheader ], [ %i.ba, %middle.block205 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader212, %.lr.ph
  %.2133 = phi ptr [ %i.bz, %.lr.ph ], [ %.2133.ph, %.lr.ph.preheader212 ] ; 2 uses
  %.2114132 = phi ptr [ %i.by, %.lr.ph ], [ %.2114132.ph, %.lr.ph.preheader212 ] ; 3 uses
  %.0122131 = phi i32 [ %i.bn, %.lr.ph ], [ %.0122131.ph, %.lr.ph.preheader212 ]
  %.1124130 = phi i32 [ %i.ca, %.lr.ph ], [ %.1124130.ph, %.lr.ph.preheader212 ] ; 2 uses
  %i.bn = load i32, ptr %.2133, align 4           ; 3 uses
  %i.bo = load i32, ptr %.2114132, align 4        ; 2 uses
  %i.bp = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %.0122131, i32 16) ; 2 uses
  %i.bq = and i32 %i.bp, %i.s
  %i.br = lshr i32 %i.bq, 1
  %i.bs = and i32 %i.bo, %i.s
  %i.bt = lshr i32 %i.bs, 1
  %i.bu = add nuw i32 %i.br, %i.bt
  %i.bv = and i32 %i.bo, %i.t
  %i.bw = and i32 %i.bv, %i.bp
  %i.bx = add i32 %i.bu, %i.bw
  store i32 %i.bx, ptr %.2114132, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.2114132, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.2133, i64 4 ; 2 uses
  %i.ca = add nsw i32 %.1124130, -2               ; 2 uses
  %i.cb = icmp samesign ugt i32 %.1124130, 3
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %middle.block205, %bb.e
  %.1124.lcssa = phi i32 [ %.0123, %bb.e ], [ %i.ba, %middle.block205 ], [ %i.ca, %.lr.ph ]
  %.0122.lcssa = phi i32 [ %i.as, %bb.e ], [ %vector.recur.extract, %middle.block205 ], [ %i.bn, %.lr.ph ]
  %.2114.lcssa = phi ptr [ %.1113, %bb.e ], [ %i.ax, %middle.block205 ], [ %i.by, %.lr.ph ] ; 4 uses
  %.2.lcssa = phi ptr [ %i.aq, %bb.e ], [ %i.aw, %middle.block205 ], [ %i.bz, %.lr.ph ] ; 2 uses
  %.not129 = icmp eq i32 %.1124.lcssa, 0
  br i1 %.not129, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cc = load i16, ptr %.2114.lcssa, align 2
  %i.cd = lshr i32 %.0122.lcssa, 16               ; 2 uses
  %i.ce = and i32 %i.cd, %i.o
  %i.cf = zext i16 %i.cc to i32                   ; 2 uses
  %i.cg = and i32 %i.cf, %i.o
  %i.ch = add nuw nsw i32 %i.cg, %i.ce
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = and i32 %i.cd, %i.q
  %i.ck = and i32 %i.cj, %i.cf
  %i.cl = add nuw nsw i32 %i.ci, %i.ck
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %.2114.lcssa, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %.2114.lcssa, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.3115 = phi ptr [ %i.co, %bb.f ], [ %.2114.lcssa, %._crit_edge ]
  %.3 = phi ptr [ %i.cn, %bb.f ], [ %.2.lcssa, %._crit_edge ]
  %i.cp = getelementptr [2 x i8], ptr %.3, i64 %i.u
  %i.cq = getelementptr i8, ptr %i.cp, i64 -2
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.cr = and i64 %i.x, 2
  %.not126 = icmp eq i64 %i.cr, 0
  br i1 %.not126, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cs = load i16, ptr %.0112147, align 2
  %i.ct = load i16, ptr %.0111148, align 2
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = and i32 %i.cu, %i.o
  %i.cw = zext i16 %i.cs to i32                   ; 2 uses
  %i.cx = and i32 %i.cw, %i.o
  %i.cy = add nuw nsw i32 %i.cv, %i.cx
  %i.cz = lshr i32 %i.cy, 1
  %i.da = and i32 %i.q, %i.cw
  %i.db = and i32 %i.da, %i.cu
  %i.dc = add nuw nsw i32 %i.cz, %i.db
  %i.dd = trunc i32 %i.dc to i16
  store i16 %i.dd, ptr %.0112147, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %.0111148, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0112147, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0120 = phi i32 [ %i.r, %bb.i ], [ %i.b, %bb.h ] ; 6 uses
  %.4116 = phi ptr [ %i.df, %bb.i ], [ %.0112147, %bb.h ] ; 7 uses
  %.4 = phi ptr [ %i.de, %bb.i ], [ %.0111148, %bb.h ] ; 7 uses
  %i.dg = icmp sgt i32 %.0120, 1
  br i1 %i.dg, label %.lr.ph141.preheader, label %._crit_edge142

.lr.ph141.preheader:                              ; preds = %bb.j
  %i.dh = add nsw i32 %.0120, -2                  ; 2 uses
  %8 = zext i32 %i.dh to i64                      ; 2 uses
  %9 = lshr i64 %8, 1
  %10 = add nuw nsw i64 %9, 1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.dh, 14
  br i1 %min.iters.check, label %.lr.ph141.preheader211, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph141.preheader
  %11 = shl nuw nsw i64 %8, 1
  %12 = and i64 %11, 8589934588
  %13 = add nuw nsw i64 %12, 4                    ; 2 uses
  %scevgep172 = getelementptr i8, ptr %.4116, i64 %13
  %scevgep173 = getelementptr i8, ptr %.4, i64 %13
  %bound0 = icmp ult ptr %.4116, %scevgep173
  %bound1 = icmp ult ptr %.4, %scevgep172
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph141.preheader211, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %10, 4294967288                ; 4 uses
  %i.di = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.dj = getelementptr i8, ptr %.4, i64 %i.di    ; 2 uses
  %i.dk = getelementptr i8, ptr %.4116, i64 %i.di ; 2 uses
  %i.dl = trunc nuw i64 %n.vec to i32
  %i.dm = shl i32 %i.dl, 1
  %i.dn = sub i32 %.0120, %i.dm                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.4, i64 %i.do ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.4116, i64 %i.do ; 3 uses
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !67 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.dp, align 4, !alias.scope !67 ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %next.gep176, align 4, !alias.scope !68, !noalias !67 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %i.dq, align 4, !alias.scope !68, !noalias !67 ; 2 uses
  %i.dr = and <4 x i32> %wide.load, %broadcast.splat
  %i.ds = and <4 x i32> %wide.load177, %broadcast.splat
  %i.dt = lshr <4 x i32> %i.dr, splat (i32 1)
  %i.du = lshr <4 x i32> %i.ds, splat (i32 1)
  %i.dv = and <4 x i32> %wide.load178, %broadcast.splat
  %i.dw = and <4 x i32> %wide.load179, %broadcast.splat
  %i.dx = lshr <4 x i32> %i.dv, splat (i32 1)
  %i.dy = lshr <4 x i32> %i.dw, splat (i32 1)
  %i.dz = add nuw <4 x i32> %i.dx, %i.dt
  %i.ea = add nuw <4 x i32> %i.dy, %i.du
  %i.eb = and <4 x i32> %wide.load, %broadcast.splat175
  %i.ec = and <4 x i32> %wide.load177, %broadcast.splat175
  %i.ed = and <4 x i32> %i.eb, %wide.load178
  %i.ee = and <4 x i32> %i.ec, %wide.load179
  %i.ef = add <4 x i32> %i.dz, %i.ed
  %i.eg = add <4 x i32> %i.ea, %i.ee
  store <4 x i32> %i.ef, ptr %next.gep176, align 4, !alias.scope !68, !noalias !67
  store <4 x i32> %i.eg, ptr %i.dq, align 4, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %._crit_edge142, label %.lr.ph141.preheader211

.lr.ph141.preheader211:                           ; preds = %vector.memcheck, %.lr.ph141.preheader, %middle.block
  %.5139.ph = phi ptr [ %.4, %vector.memcheck ], [ %.4, %.lr.ph141.preheader ], [ %i.dj, %middle.block ]
  %.5117138.ph = phi ptr [ %.4116, %vector.memcheck ], [ %.4116, %.lr.ph141.preheader ], [ %i.dk, %middle.block ]
  %.1121137.ph = phi i32 [ %.0120, %vector.memcheck ], [ %.0120, %.lr.ph141.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader211, %.lr.ph141
  %.5139 = phi ptr [ %i.es, %.lr.ph141 ], [ %.5139.ph, %.lr.ph141.preheader211 ] ; 2 uses
  %.5117138 = phi ptr [ %i.et, %.lr.ph141 ], [ %.5117138.ph, %.lr.ph141.preheader211 ] ; 3 uses
  %.1121137 = phi i32 [ %i.eu, %.lr.ph141 ], [ %.1121137.ph, %.lr.ph141.preheader211 ] ; 2 uses
  %i.ei = load i32, ptr %.5139, align 4           ; 2 uses
  %i.ej = load i32, ptr %.5117138, align 4        ; 2 uses
  %i.ek = and i32 %i.ei, %i.s
  %i.el = lshr i32 %i.ek, 1
  %i.em = and i32 %i.ej, %i.s
  %i.en = lshr i32 %i.em, 1
  %i.eo = add nuw i32 %i.en, %i.el
  %i.ep = and i32 %i.ei, %i.t
  %i.eq = and i32 %i.ep, %i.ej
  %i.er = add i32 %i.eo, %i.eq
  store i32 %i.er, ptr %.5117138, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.5139, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.5117138, i64 4 ; 2 uses
  %i.eu = add nsw i32 %.1121137, -2               ; 2 uses
  %i.ev = icmp samesign ugt i32 %.1121137, 3
  br i1 %i.ev, label %.lr.ph141, label %._crit_edge142, !llvm.loop !63

._crit_edge142:                                   ; preds = %.lr.ph141, %middle.block, %bb.j
  %.1121.lcssa = phi i32 [ %.0120, %bb.j ], [ %i.dn, %middle.block ], [ %i.eu, %.lr.ph141 ]
  %.5117.lcssa = phi ptr [ %.4116, %bb.j ], [ %i.dk, %middle.block ], [ %i.et, %.lr.ph141 ] ; 4 uses
  %.5.lcssa = phi ptr [ %.4, %bb.j ], [ %i.dj, %middle.block ], [ %i.es, %.lr.ph141 ] ; 3 uses
  %.not127 = icmp eq i32 %.1121.lcssa, 0
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge142
  %i.ew = load i16, ptr %.5117.lcssa, align 2
  %i.ex = load i16, ptr %.5.lcssa, align 2
  %i.ey = zext i16 %i.ex to i32                   ; 2 uses
  %i.ez = and i32 %i.ey, %i.o
  %i.fa = zext i16 %i.ew to i32                   ; 2 uses
  %i.fb = and i32 %i.fa, %i.o
  %i.fc = add nuw nsw i32 %i.ez, %i.fb
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = and i32 %i.q, %i.fa
  %i.ff = and i32 %i.fe, %i.ey
  %i.fg = add nuw nsw i32 %i.fd, %i.ff
  %i.fh = trunc i32 %i.fg to i16
  store i16 %i.fh, ptr %.5117.lcssa, align 2
  %i.fi = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 2
  %i.fj = getelementptr inbounds nuw i8, ptr %.5117.lcssa, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge142
  %.6118 = phi ptr [ %i.fj, %bb.k ], [ %.5117.lcssa, %._crit_edge142 ]
  %.6 = phi ptr [ %i.fi, %bb.k ], [ %.5.lcssa, %._crit_edge142 ]
  %i.fk = getelementptr inbounds [2 x i8], ptr %.6, i64 %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.3115.pn = phi ptr [ %.3115, %bb.g ], [ %.6118, %bb.l ]
  %.7 = phi ptr [ %i.cq, %bb.g ], [ %i.fk, %bb.l ]
  %.7119 = getelementptr inbounds [2 x i8], ptr %.3115.pn, i64 %i.v
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge151, label %bb.b, !llvm.loop !64

._crit_edge151:                                   ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !3, !4, !5}
!19 = distinct !{!19, !3, !4}
!20 = distinct !{!20, !3}
!21 = !{!15}
!22 = !{!16}
!23 = !{!17}
!24 = !{!16, !15}
!25 = distinct !{!25, i1 false, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !3, !4, !5}
!31 = distinct !{!31, !3, !4}
!32 = distinct !{!32, !3}
!33 = !{!26}
!34 = !{!27}
!35 = !{!28}
!36 = !{!29}
!37 = !{!28, !26, !27}
!38 = distinct !{!38, !3}
!39 = distinct !{!39, !3}
!40 = distinct !{!40, !3}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !3}
!43 = distinct !{!43, !3}
!44 = distinct !{!44, !3}
!45 = distinct !{!45, !3}
!46 = distinct !{!46, !3}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, !3}
!49 = distinct !{!49, !3}
!50 = distinct !{!50, !3}
!51 = distinct !{!51, !3}
!52 = distinct !{!52, !3}
!53 = distinct !{!53, !3}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !3, !4, !5}
!58 = distinct !{!58, !3, !4}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !3, !4, !5}
!63 = distinct !{!63, !3, !4}
!64 = distinct !{!64, !3}
!65 = !{!55}
!66 = !{!56}
!67 = !{!60}
!68 = !{!61}
end_hunk_1
