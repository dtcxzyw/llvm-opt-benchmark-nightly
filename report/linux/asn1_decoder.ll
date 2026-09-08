Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/asn1_decoder?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@asn1_ber_decoder:bb.a
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %asn1_find_indefinite_length.exit.thread, label %bb.q, !prof !15

bb.o:                                             ; preds = %bb.l
  %i.av = zext i8 %i.ao to i32                    ; 3 uses
  %i.aw = add nsw i32 %i.av, -128
  %i.ax = icmp samesign ugt i8 %i.ao, -126
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = sub i64 %.0183434, %i.am
  %i.ba = icmp ult i64 %i.az, %i.ay
  %or.cond379 = select i1 %i.ax, i1 true, i1 %i.ba, !prof !16
  br i1 %or.cond379, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph.preheader, !prof !16

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bb = add i8 %i.ao, -126
  %xtraiter = and i32 %i.av, 3                    ; 3 uses
  %i.bc = add nsw i8 %i.ao, 127
  %i.bd = icmp ult i8 %i.bc, 3
  br i1 %i.bd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.av, 124
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.1209421 = phi i64 [ %i.am, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 5 uses
  %.1274420 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cb, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.be = getelementptr i8, ptr %2, i64 %.1209421
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl i64 %.1274420, 16
  %i.bi = shl nuw nsw i64 %i.bg, 8
  %i.bj = or disjoint i64 %i.bh, %i.bi
  %i.bk = getelementptr i8, ptr %2, i64 %.1209421
  %i.bl = getelementptr i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bj, %i.bn
  %i.bp = getelementptr i8, ptr %2, i64 %.1209421
  %i.bq = getelementptr i8, ptr %i.bp, i64 2
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl i64 %i.bo, 16
  %i.bu = shl nuw nsw i64 %i.bs, 8
  %i.bv = or disjoint i64 %i.bt, %i.bu
  %i.bw = add i64 %.1209421, 4                    ; 3 uses
  %i.bx = getelementptr i8, ptr %2, i64 %.1209421
  %i.by = getelementptr i8, ptr %i.bx, i64 3
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = or disjoint i64 %i.bv, %i.ca            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !10

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.1209421.epil.init = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.bw, %._crit_edge.unr-lcssa ]
  %.1274420.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cb, %._crit_edge.unr-lcssa ]
  %lcmp.mod668 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod668)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.1209421.epil = phi i64 [ %i.cd, %.lr.ph.epil ], [ %.1209421.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.1274420.epil = phi i64 [ %i.ch, %.lr.ph.epil ], [ %.1274420.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.cc = shl i64 %.1274420.epil, 8
  %i.cd = add i64 %.1209421.epil, 1               ; 2 uses
  %i.ce = getelementptr i8, ptr %2, i64 %.1209421.epil
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cc, %i.cg            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa629 = phi i64 [ %i.bw, %._crit_edge.unr-lcssa ], [ %i.cd, %.lr.ph.epil ] ; 2 uses
  %.lcssa = phi i64 [ %i.cb, %._crit_edge.unr-lcssa ], [ %i.ch, %.lr.ph.epil ] ; 2 uses
  %i.ci = sub i64 %.0183434, %.lcssa629
  %.not381 = icmp ugt i64 %.lcssa, %i.ci
  br i1 %.not381, label %asn1_find_indefinite_length.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.cj = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.ck = sub i64 %.0183434, %i.am
  %i.cl = icmp ult i64 %i.ck, %i.cj
  br i1 %i.cl, label %asn1_find_indefinite_length.exit.thread, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p, %bb.n, %._crit_edge
  %.3276 = phi i64 [ 128, %bb.n ], [ %.lcssa, %._crit_edge ], [ %i.cj, %bb.p ] ; 3 uses
  %.2221 = phi i8 [ %i.as, %bb.n ], [ %i.al, %._crit_edge ], [ %i.al, %bb.p ] ; 3 uses
  %.3211 = phi i64 [ %i.am, %bb.n ], [ %.lcssa629, %._crit_edge ], [ %i.am, %bb.p ] ; 6 uses
  %.2202 = phi i8 [ 2, %bb.n ], [ %i.bb, %._crit_edge ], [ 2, %bb.p ] ; 3 uses
  %i.cm = zext nneg i8 %.2221 to i32              ; 2 uses
  %i.cn = and i32 %i.cm, 32
  %.not244 = icmp eq i32 %i.cn, 0
  br i1 %.not244, label %.thread299, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = icmp ugt i8 %.0193432, 9
  br i1 %i.co, label %asn1_find_indefinite_length.exit.thread, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.cp = trunc i64 %.3211 to i16
  %i.cq = zext nneg i8 %.0193432 to i64           ; 3 uses
  %i.cr = getelementptr [2 x i8], ptr %i.a, i64 %i.cq
  store i16 %i.cp, ptr %i.cr, align 2
  %i.cs = getelementptr i8, ptr %i.c, i64 %i.cq
  store i8 %.2202, ptr %i.cs, align 1
  %i.ct = and i32 %i.cm, 1
  %.not245 = icmp eq i32 %i.ct, 0                 ; 2 uses
  %i.cu = trunc i64 %.0183434 to i16
  %i.cv = add i64 %.3211, %.3276
  %.sink = select i1 %.not245, i16 %i.cu, i16 0
  %.1184 = select i1 %.not245, i64 %i.cv, i64 %.0183434
  %i.cw = getelementptr [2 x i8], ptr %i.b, i64 %i.cq
  store i16 %.sink, ptr %i.cw, align 2
  %i.cx = add nuw nsw i8 %.0193432, 1
  br label %.thread299

.backedge:                                        ; preds = %bb.j, %bb.e, %bb.ah, %bb.aj, %bb.al, %bb.au, %bb.ay, %bb.bc, %bb.be, %bb.bg, %bb.bi
  %.0273.be = phi i64 [ %.0273425, %bb.j ], [ %.6279, %bb.ah ], [ %.5278, %bb.aj ], [ %.5278, %bb.al ], [ %storemerge, %bb.bc ], [ %.4187, %bb.au ], [ %.4187, %bb.ay ], [ %.5278, %bb.be ], [ %.5278, %bb.bg ], [ %.5278, %bb.bi ], [ %.0273425, %bb.e ]
  %.0224.be = phi i64 [ %.0224426, %bb.j ], [ %.2226, %bb.ah ], [ %.2226, %bb.aj ], [ %.2226, %bb.al ], [ %i.hq, %bb.bc ], [ %i.hq, %bb.au ], [ %i.hq, %bb.ay ], [ %.2226, %bb.be ], [ %.2226, %bb.bg ], [ %.2226, %bb.bi ], [ %.0224426, %bb.e ]
  %.0219.be = phi i8 [ %i.ah, %bb.j ], [ %.4223, %bb.ah ], [ %.4223, %bb.aj ], [ %.4223, %bb.al ], [ %.4223, %bb.bc ], [ %.4223, %bb.au ], [ %.4223, %bb.ay ], [ %.4223, %bb.be ], [ %.4223, %bb.bg ], [ %i.jt, %bb.bi ], [ %i.w, %bb.e ]
  %.0208.be = phi i64 [ %.0208428, %bb.j ], [ %.6, %bb.ah ], [ %.5213, %bb.aj ], [ %.5213, %bb.al ], [ %.7, %bb.bc ], [ %.5213, %bb.au ], [ %.5213, %bb.ay ], [ %.5213, %bb.be ], [ %.5213, %bb.bg ], [ %.5213, %bb.bi ], [ %.0208428, %bb.e ]
  %.0205.be = phi i64 [ %i.r, %bb.j ], [ %i.gr, %bb.ah ], [ %i.hb, %bb.aj ], [ %i.hd, %bb.al ], [ %i.iz, %bb.bc ], [ %i.if, %bb.au ], [ %i.io, %bb.ay ], [ %i.jb, %bb.be ], [ %i.jm, %bb.bg ], [ %i.js, %bb.bi ], [ %i.r, %bb.e ] ; 2 uses
  %.0200.be = phi i8 [ 2, %bb.j ], [ %.4204, %bb.ah ], [ %.4204, %bb.aj ], [ %.4204, %bb.al ], [ %i.hs, %bb.bc ], [ %i.hs, %bb.au ], [ %i.hs, %bb.ay ], [ %.4204, %bb.be ], [ %.4204, %bb.bg ], [ %.4204, %bb.bi ], [ %.0200430, %bb.e ]
  %.0198.be = phi i8 [ %.0198431, %bb.j ], [ %.0198431, %bb.ah ], [ %i.gv, %bb.aj ], [ %.0198431, %bb.al ], [ %.0198431, %bb.bc ], [ %.0198431, %bb.au ], [ %.0198431, %bb.ay ], [ %.0198431, %bb.be ], [ %.0198431, %bb.bg ], [ %i.jo, %bb.bi ], [ %.0198431, %bb.e ]
  %.0193.be = phi i8 [ %.0193432, %bb.j ], [ %.3196, %bb.ah ], [ %.3196, %bb.aj ], [ %.3196, %bb.al ], [ %i.hm, %bb.bc ], [ %.3196, %bb.au ], [ %.3196, %bb.ay ], [ %.3196, %bb.be ], [ %.3196, %bb.bg ], [ %.3196, %bb.bi ], [ %.0193432, %bb.e ]
  %.0190.be = phi i8 [ %i.aa, %bb.j ], [ %.2192, %bb.ah ], [ %.2192, %bb.aj ], [ %.2192, %bb.al ], [ %.2192, %bb.bc ], [ %.2192, %bb.au ], [ %.2192, %bb.ay ], [ %.2192, %bb.be ], [ %.2192, %bb.bg ], [ %.2192, %bb.bi ], [ %.0190433, %bb.e ]
  %.0183.be = phi i64 [ %.0183434, %bb.j ], [ %.4187, %bb.ah ], [ %.4187, %bb.aj ], [ %.4187, %bb.al ], [ %.5188, %bb.bc ], [ %.4187, %bb.au ], [ %.4187, %bb.ay ], [ %.4187, %bb.be ], [ %.4187, %bb.bg ], [ %.4187, %bb.bi ], [ %.0183434, %bb.e ]
  %.not = icmp ult i64 %.0205.be, %i.i
  br i1 %.not, label %.lr.ph435, label %asn1_find_indefinite_length.exit.thread, !prof !19

.thread299:                                       ; preds = %bb.q, %bb.s, %bb.b
  %.5278 = phi i64 [ %.3276, %bb.q ], [ %.0273425, %bb.b ], [ %.3276, %bb.s ] ; 7 uses
  %.2226 = phi i64 [ %.3211, %bb.q ], [ %.0224426, %bb.b ], [ %.3211, %bb.s ] ; 7 uses
  %.4223 = phi i8 [ %.2221, %bb.q ], [ %.0219427, %bb.b ], [ %.2221, %bb.s ] ; 13 uses
  %.5213 = phi i64 [ %.3211, %bb.q ], [ %.0208428, %bb.b ], [ %.3211, %bb.s ] ; 19 uses
  %.4204 = phi i8 [ %.2202, %bb.q ], [ %.0200430, %bb.b ], [ %.2202, %bb.s ] ; 8 uses
  %.3196 = phi i8 [ %.0193432, %bb.q ], [ %.0193432, %bb.b ], [ %i.cx, %bb.s ] ; 13 uses
  %.2192 = phi i8 [ %i.aa, %bb.q ], [ %.0190433, %bb.b ], [ %i.aa, %bb.s ] ; 11 uses
  %.4187 = phi i64 [ %.0183434, %bb.q ], [ %.0183434, %bb.b ], [ %.1184, %bb.s ] ; 21 uses
  switch i8 %i.l, label %bb.bj [
    i8 0, label %bb.t
    i8 1, label %bb.t
    i8 2, label %bb.t
    i8 3, label %bb.t
    i8 8, label %bb.t
    i8 9, label %bb.t
    i8 10, label %bb.t
    i8 11, label %bb.t
    i8 17, label %bb.t
    i8 19, label %bb.t
    i8 24, label %bb.t
    i8 25, label %bb.t
    i8 26, label %bb.t
    i8 27, label %bb.t
    i8 4, label %bb.ai
    i8 5, label %bb.ai
    i8 21, label %bb.ai
    i8 28, label %bb.ak
    i8 29, label %bb.am
    i8 33, label %bb.ao
    i8 37, label %bb.ao
    i8 32, label %bb.ap
    i8 35, label %bb.ap
    i8 34, label %bb.ap
    i8 36, label %bb.ap
    i8 39, label %bb.ap
    i8 38, label %bb.ap
    i8 31, label %bb.bd
    i8 30, label %bb.bf
    i8 40, label %bb.bh
  ]

bb.t:                                             ; preds = %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299
  %i.cy = zext nneg i8 %.4223 to i32              ; 2 uses
  %i.cz = and i32 %i.cy, 32
  %.not256.not = icmp eq i32 %i.cz, 0
  %i.da = and i32 %i.cy, 33
  %or.cond264.not = icmp eq i32 %i.da, 1
  br i1 %or.cond264.not, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.db = sub i64 %.4187, %.5213
  %i.dc = icmp ult i64 %i.db, 2
  br i1 %i.dc, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph94.i, !prof !14

.lr.ph94.i:                                       ; preds = %bb.u, %.outer.backedge.i
  %.0.ph98.i = phi i32 [ %.0.ph.be.i, %.outer.backedge.i ], [ 1, %bb.u ] ; 2 uses
  %.053.ph97.i = phi i64 [ %.053.ph.be.i, %.outer.backedge.i ], [ %.5213, %bb.u ]
  br label %bb.w

bb.v:                                             ; preds = %.loopexit.i, %.preheader.i
  %.1135.i = phi i64 [ %.1.i, %.loopexit.i ], [ 0, %.preheader.i ]
  %.4134.i = phi i64 [ %.4.i, %.loopexit.i ], [ %i.eb, %.preheader.i ]
  %i.dd = add i64 %.4134.i, %.1135.i              ; 2 uses
  %i.de = sub i64 %.4187, %i.dd
  %i.df = icmp ult i64 %i.de, 2
  br i1 %i.df, label %asn1_find_indefinite_length.exit.thread, label %bb.w, !prof !20

bb.w:                                             ; preds = %bb.v, %.lr.ph94.i
  %.05393.i = phi i64 [ %.053.ph97.i, %.lr.ph94.i ], [ %i.dd, %bb.v ] ; 3 uses
  %i.dg = add i64 %.05393.i, 1                    ; 4 uses
  %i.dh = getelementptr i8, ptr %2, i64 %.05393.i
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = icmp eq i8 %i.di, 0
  br i1 %i.dk, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr i8, ptr %2, i64 %i.dg
  %i.dm = load i8, ptr %i.dl, align 1
  %.not62.i = icmp eq i8 %i.dm, 0
  br i1 %.not62.i, label %bb.y, label %asn1_find_indefinite_length.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.dn = add i64 %.05393.i, 2                    ; 2 uses
  %i.do = add i32 %.0.ph98.i, -1                  ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %asn1_find_indefinite_length.exit, label %.outer.backedge.i

.outer.backedge.i:                                ; preds = %bb.ac, %bb.y
  %.053.ph.be.i = phi i64 [ %i.eb, %bb.ac ], [ %i.dn, %bb.y ] ; 2 uses
  %.0.ph.be.i = phi i32 [ %i.ej, %bb.ac ], [ %i.do, %bb.y ]
  %i.dq = sub i64 %.4187, %.053.ph.be.i
  %i.dr = icmp ult i64 %i.dq, 2
  br i1 %i.dr, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph94.i, !prof !21

bb.z:                                             ; preds = %bb.w
  %i.ds = and i32 %i.dj, 31
  %i.dt = icmp eq i32 %i.ds, 31
  br i1 %i.dt, label %.preheader63.i.preheader, label %.loopexit65.i, !prof !15

.preheader63.i.preheader:                         ; preds = %bb.z
  %i.du = sub i64 %.4187, %i.dg
  %i.dv = icmp ult i64 %i.du, 2
  br i1 %i.dv, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph625, !prof !14

.preheader63.i:                                   ; preds = %.lr.ph625
  %i.dw = sub i64 %.4187, %i.dy
  %i.dx = icmp ult i64 %i.dw, 2
  br i1 %i.dx, label %asn1_find_indefinite_length.exit.thread, label %.lr.ph625, !prof !20, !llvm.loop !12

.lr.ph625:                                        ; preds = %.preheader63.i.preheader, %.preheader63.i
  %.154.i624 = phi i64 [ %i.dy, %.preheader63.i ], [ %i.dg, %.preheader63.i.preheader ] ; 2 uses
  %i.dy = add i64 %.154.i624, 1                   ; 3 uses
  %i.dz = getelementptr i8, ptr %2, i64 %.154.i624
  %i.ea = load i8, ptr %i.dz, align 1
  %.not.i = icmp sgt i8 %i.ea, -1
  br i1 %.not.i, label %.loopexit65.i, label %.preheader63.i, !llvm.loop !12

.loopexit65.i:                                    ; preds = %.lr.ph625, %bb.z
  %.2.i = phi i64 [ %i.dg, %bb.z ], [ %i.dy, %.lr.ph625 ] ; 9 uses
  %i.eb = add i64 %.2.i, 1                        ; 5 uses
  %i.ec = getelementptr i8, ptr %2, i64 %.2.i
  %i.ed = load i8, ptr %i.ec, align 1             ; 10 uses
  %i.ee = zext i8 %i.ed to i64                    ; 3 uses
  %i.ef = icmp sgt i8 %i.ed, -1
  br i1 %i.ef, label %.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit65.i
  %i.eg = icmp eq i8 %i.ed, -128
  br i1 %i.eg, label %bb.ab, label %bb.ad, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.eh = and i32 %i.dj, 32
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %asn1_find_indefinite_length.exit.thread, label %bb.ac, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.ej = add i32 %.0.ph98.i, 1
  br label %.outer.backedge.i

bb.ad:                                            ; preds = %bb.aa
  %i.ek = icmp samesign ugt i8 %i.ed, -121
  br i1 %i.ek, label %asn1_find_indefinite_length.exit.thread, label %bb.ae, !prof !15

bb.ae:                                            ; preds = %bb.ad
  %i.el = add nsw i64 %i.ee, -128                 ; 2 uses
  %i.em = sub i64 %.4187, %i.eb
  %i.en = icmp ugt i64 %i.el, %i.em
  br i1 %i.en, label %asn1_find_indefinite_length.exit.thread, label %.preheader.i, !prof !15

.preheader.i:                                     ; preds = %bb.ae
  %.not6188.i = icmp eq i64 %i.el, 0
  br i1 %.not6188.i, label %bb.v, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.eo = getelementptr i8, ptr %2, i64 %i.eb
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i64                    ; 2 uses
  %.not61.i = icmp eq i8 %i.ed, -127
  br i1 %.not61.i, label %.loopexit.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.er = shl nuw nsw i64 %i.eq, 8
  %i.es = getelementptr i8, ptr %2, i64 %.2.i
  %i.et = getelementptr i8, ptr %i.es, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = or disjoint i64 %i.er, %i.ev            ; 2 uses
  %.not61.i.1 = icmp eq i8 %i.ed, -126
  br i1 %.not61.i.1, label %.loopexit.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ex = shl nuw nsw i64 %i.ew, 8
  %i.ey = getelementptr i8, ptr %2, i64 %.2.i
  %i.ez = getelementptr i8, ptr %i.ey, i64 3
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i64
  %i.fc = or disjoint i64 %i.ex, %i.fb            ; 2 uses
  %.not61.i.2 = icmp eq i8 %i.ed, -125
  br i1 %.not61.i.2, label %.loopexit.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.fd = shl nuw nsw i64 %i.fc, 8
  %i.fe = getelementptr i8, ptr %2, i64 %.2.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 4
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = zext i8 %i.fg to i64
  %i.fi = or disjoint i64 %i.fd, %i.fh            ; 2 uses
  %.not61.i.3 = icmp eq i8 %i.ed, -124
  br i1 %.not61.i.3, label %.loopexit.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.fj = shl i64 %i.fi, 8
  %i.fk = getelementptr i8, ptr %2, i64 %.2.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 5
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i64
  %i.fo = or disjoint i64 %i.fj, %i.fn            ; 2 uses
  %.not61.i.4 = icmp eq i8 %i.ed, -123
  br i1 %.not61.i.4, label %.loopexit.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.fp = shl i64 %i.fo, 8
  %i.fq = getelementptr i8, ptr %2, i64 %.2.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 6
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i64
  %i.fu = or disjoint i64 %i.fp, %i.ft            ; 2 uses
  %.not61.i.5 = icmp eq i8 %i.ed, -122
  br i1 %.not61.i.5, label %.loopexit.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.fv = shl i64 %i.fu, 8
  %i.fw = getelementptr i8, ptr %2, i64 %.2.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 7
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = or disjoint i64 %i.fv, %i.fz
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa632 = phi i64 [ %i.eq, %.lr.ph.i ], [ %i.ew, %.lr.ph.i.1 ], [ %i.fc, %.lr.ph.i.2 ], [ %i.fi, %.lr.ph.i.3 ], [ %i.fo, %.lr.ph.i.4 ], [ %i.fu, %.lr.ph.i.5 ], [ %i.ga, %.lr.ph.i.6 ]
  %i.gb = add i64 %.2.i, -127
  %i.gc = add i64 %i.gb, %i.ee
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit65.i
  %.4.i = phi i64 [ %i.eb, %.loopexit65.i ], [ %i.gc, %.loopexit.loopexit.i ] ; 2 uses
  %.1.i = phi i64 [ %i.ee, %.loopexit65.i ], [ %.lcssa632, %.loopexit.loopexit.i ] ; 2 uses
  %i.gd = sub i64 %.4187, %.4.i
  %i.ge = icmp ugt i64 %.1.i, %i.gd
  br i1 %i.ge, label %asn1_find_indefinite_length.exit.thread, label %bb.v

asn1_find_indefinite_length.exit:                 ; preds = %bb.y
  %i.gf = sub i64 %i.dn, %.5213
  br label %bb.af

bb.af:                                            ; preds = %asn1_find_indefinite_length.exit, %bb.t
  %.6279 = phi i64 [ %.5278, %bb.t ], [ %i.gf, %asn1_find_indefinite_length.exit ] ; 3 uses
  %i.gg = and i32 %i.m, 2
  %.not258 = icmp eq i32 %i.gg, 0
  br i1 %.not258, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = and i32 %i.m, 8
  %.not259 = icmp eq i32 %i.gh, 0
  %i.gi = getelementptr i8, ptr %i.e, i64 %.0205429
  %.0197.in.v = select i1 %.not259, i64 2, i64 1
  %.0197.in = getelementptr i8, ptr %i.gi, i64 %.0197.in.v
  %.0197 = load i8, ptr %.0197.in, align 1
  %i.gj = zext i8 %.0197 to i64
  %i.gk = getelementptr [8 x i8], ptr %i.g, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = zext i8 %.4204 to i64
  %i.gn = getelementptr i8, ptr %2, i64 %.5213
  %i.go = tail call i32 %i.gl(ptr noundef %1, i64 noundef %i.gm, i8 noundef zeroext %.2192, ptr noundef %i.gn, i64 noundef %.6279) #6 ; 2 uses
  %i.gp = icmp sgt i32 %i.go, -1
  br i1 %i.gp, label %bb.ah, label %asn1_find_indefinite_length.exit.thread

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gq = select i1 %.not256.not, i64 %.6279, i64 0
  %.6 = add i64 %i.gq, %.5213
  %i.gr = add i64 %.0205429, %i.q
  br label %.backedge

bb.ai:                                            ; preds = %.thread299, %.thread299, %.thread299
  %i.gs = icmp eq i8 %.0198431, 10
  br i1 %i.gs, label %asn1_find_indefinite_length.exit.thread, label %bb.aj, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.gt = trunc i64 %.0205429 to i8
  %i.gu = add i8 %i.p, %i.gt
  %i.gv = add i8 %.0198431, 1
  %i.gw = zext i8 %.0198431 to i64
  %i.gx = getelementptr i8, ptr %i.d, i64 %i.gw
  store i8 %i.gu, ptr %i.gx, align 1
  %i.gy = getelementptr i8, ptr %i.e, i64 %.0205429
  %i.gz = getelementptr i8, ptr %i.gy, i64 2
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = zext i8 %i.ha to i64
  br label %.backedge

bb.ak:                                            ; preds = %.thread299
  %i.hc = and i8 %.4223, 2
  %.not255 = icmp eq i8 %i.hc, 0
  br i1 %.not255, label %asn1_find_indefinite_length.exit.thread, label %bb.al, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.hd = add i64 %.0205429, %i.q
  br label %.backedge

bb.am:                                            ; preds = %.thread299
  %i.he = icmp ne i8 %.0198431, 0
  %i.hf = icmp ne i8 %.3196, 0
  %i.hg = select i1 %i.he, i1 true, i1 %i.hf, !prof !15
  br i1 %i.hg, label %bb.an, label %asn1_find_indefinite_length.exit.thread, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.hh = zext i8 %.3196 to i32
  %i.hi = zext i8 %.0198431 to i32
  %i.hj = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.hi, i32 noundef %i.hh) #7 ; 0 uses
  br label %asn1_find_indefinite_length.exit.thread

bb.ao:                                            ; preds = %.thread299, %.thread299
  %i.hk = and i8 %.4223, 2
  %.not247 = icmp eq i8 %i.hk, 0
  %i.hl = icmp eq i8 %.3196, 0
  %or.cond380 = select i1 %.not247, i1 true, i1 %i.hl, !prof !16
  br i1 %or.cond380, label %asn1_find_indefinite_length.exit.thread, label %bb.aq, !prof !16

bb.ap:                                            ; preds = %.thread299, %.thread299, %.thread299, %.thread299, %.thread299, %.thread299
  %.old = icmp eq i8 %.3196, 0
  br i1 %.old, label %asn1_find_indefinite_length.exit.thread, label %bb.aq, !prof !15

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.hm = add i8 %.3196, -1                       ; 2 uses
  %i.hn = zext i8 %i.hm to i64                    ; 3 uses
  %i.ho = getelementptr [2 x i8], ptr %i.a, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2
  %i.hq = zext i16 %i.hp to i64                   ; 5 uses
  %i.hr = getelementptr i8, ptr %i.c, i64 %i.hn
  %i.hs = load i8, ptr %i.hr, align 1             ; 4 uses
  %i.ht = getelementptr [2 x i8], ptr %i.b, i64 %i.hn
  %i.hu = load i16, ptr %i.ht, align 2            ; 2 uses
  %i.hv = zext i16 %i.hu to i64
  %i.hw = icmp eq i16 %i.hu, 0
  br i1 %i.hw, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.hx = sub i64 %.4187, %.5213
  %i.hy = icmp ult i64 %i.hx, 2
  br i1 %i.hy, label %asn1_find_indefinite_length.exit.thread, label %bb.as, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.hz = getelementptr i8, ptr %2, i64 %.5213    ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1
  %.not250 = icmp eq i8 %i.ia, 0
  br i1 %.not250, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = and i32 %i.m, 2
  %.not254 = icmp eq i32 %i.ib, 0
  br i1 %.not254, label %asn1_find_indefinite_length.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ic = getelementptr i8, ptr %i.e, i64 %.0205429
  %i.id = getelementptr i8, ptr %i.ic, i64 1
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = zext i8 %i.ie to i64
  br label %.backedge

bb.av:                                            ; preds = %bb.as
  %i.ig = getelementptr i8, ptr %i.hz, i64 1
  %i.ih = load i8, ptr %i.ig, align 1
  %.not251 = icmp eq i8 %i.ih, 0
end_hunk_0
