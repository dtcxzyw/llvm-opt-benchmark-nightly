Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@_m3dstbi_zlib_decode_malloc_guesssize_headerflag:bb.a
_m3dstbi__zget8.exit.i.i.i.i:                     ; preds = %bb.h, %.new351
  %i.bl = phi ptr [ %i.bi, %bb.h ], [ %i.bh, %.new351 ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.bk, %bb.h ], [ 0, %.new351 ]
  %i.bm = shl i32 %.0.i.i.i.i.i, %i.bg
  %i.bn = or i32 %i.bm, %i.bf                     ; 2 uses
  store i32 %i.bn, ptr %i.ab, align 4
  %i.bo = add nsw i32 %i.bg, 8                    ; 3 uses
  store i32 %i.bo, ptr %i.aa, align 8
  %.not.i.i.i.i.i.1 = icmp ult ptr %i.bl, %i.au
  br i1 %.not.i.i.i.i.i.1, label %bb.i, label %_m3dstbi__zget8.exit.i.i.i.i.1

bb.i:                                             ; preds = %_m3dstbi__zget8.exit.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  store ptr %i.bp, ptr %6, align 8
  %i.bq = load i8, ptr %i.bl, align 1
  %i.br = zext i8 %i.bq to i32
  br label %_m3dstbi__zget8.exit.i.i.i.i.1

_m3dstbi__zget8.exit.i.i.i.i.1:                   ; preds = %bb.i, %_m3dstbi__zget8.exit.i.i.i.i
  %i.bs = phi ptr [ %i.bp, %bb.i ], [ %i.bl, %_m3dstbi__zget8.exit.i.i.i.i ]
  %.0.i.i.i.i.i.1 = phi i32 [ %i.br, %bb.i ], [ 0, %_m3dstbi__zget8.exit.i.i.i.i ]
  %i.bt = shl i32 %.0.i.i.i.i.i.1, %i.bo
  %i.bu = or i32 %i.bt, %i.bn                     ; 3 uses
  store i32 %i.bu, ptr %i.ab, align 4
  %i.bv = add nsw i32 %i.bg, 16                   ; 2 uses
  store i32 %i.bv, ptr %i.aa, align 8
  %i.bw = icmp slt i32 %i.bg, 9
  br i1 %i.bw, label %.new351, label %_m3dstbi__zreceive.exit.thread.i.i

_m3dstbi__zreceive.exit.thread.i.i:               ; preds = %_m3dstbi__zget8.exit.i.i.i.i.1, %.prol.loopexit350
  %.lcssa312 = phi i32 [ %.lcssa312.unr, %.prol.loopexit350 ], [ %i.bu, %_m3dstbi__zget8.exit.i.i.i.i.1 ] ; 2 uses
  %.lcssa311 = phi i32 [ %i.as, %.prol.loopexit350 ], [ %i.bo, %_m3dstbi__zget8.exit.i.i.i.i.1 ]
  %i.bx = lshr i32 %.lcssa312, 1
  %i.by = add nuw nsw i32 %.lcssa311, 7
  br label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit.i.i:                      ; preds = %thread-pre-split.i.i
  %i.bz = lshr i32 %.promoted6.i.i.i.i, 1         ; 4 uses
  store i32 %i.bz, ptr %i.ab, align 4
  %i.ca = add nsw i32 %i.as, -1                   ; 4 uses
  store i32 %i.ca, ptr %i.aa, align 8
  %i.cb = icmp samesign ult i32 %i.as, 3
  br i1 %i.cb, label %bb.j, label %_m3dstbi__zreceive.exit31.i.i

bb.j:                                             ; preds = %_m3dstbi__zreceive.exit.i.i
  %i.cc = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted.i.i26.i.i = load ptr, ptr %6, align 8 ; 5 uses
  %lcmp.mod.not.not.not = icmp eq i32 %i.as, 1
  br i1 %lcmp.mod.not.not.not, label %.new, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.j
  %.not.i.i.i28.i.i.prol = icmp ult ptr %.promoted.i.i26.i.i, %i.cc
  br i1 %.not.i.i.i28.i.i.prol, label %bb.k, label %_m3dstbi__zget8.exit.i.i29.i.i.prol

bb.k:                                             ; preds = %.prol.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.promoted.i.i26.i.i, i64 1 ; 2 uses
  store ptr %i.cd, ptr %6, align 8
  %i.ce = load i8, ptr %.promoted.i.i26.i.i, align 1
  %i.cf = zext i8 %i.ce to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.prol

_m3dstbi__zget8.exit.i.i29.i.i.prol:              ; preds = %bb.k, %.prol.preheader
  %i.cg = phi ptr [ %i.cd, %bb.k ], [ %.promoted.i.i26.i.i, %.prol.preheader ]
  %.0.i.i.i30.i.i.prol = phi i32 [ %i.cf, %bb.k ], [ 0, %.prol.preheader ]
  %i.ch = shl i32 %.0.i.i.i30.i.i.prol, %i.ca
  %i.ci = or i32 %i.ch, %i.bz                     ; 2 uses
  store i32 %i.ci, ptr %i.ab, align 4
  %i.cj = add nuw nsw i32 %i.as, 7                ; 2 uses
  store i32 %i.cj, ptr %i.aa, align 8
  br label %.new

.new:                                             ; preds = %bb.j, %_m3dstbi__zget8.exit.i.i29.i.i.prol
  %.unr = phi i32 [ %i.bz, %bb.j ], [ %i.ci, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr347 = phi i32 [ %i.ca, %bb.j ], [ %i.cj, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  %.unr348 = phi ptr [ %.promoted.i.i26.i.i, %bb.j ], [ %i.cg, %_m3dstbi__zget8.exit.i.i29.i.i.prol ]
  br label %bb.l

bb.l:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %.new
  %i.ck = phi i32 [ %.unr, %.new ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.cl = phi i32 [ %.unr347, %.new ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.cm = phi ptr [ %.unr348, %.new ], [ %i.cx, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %.not.i.i.i28.i.i = icmp ult ptr %i.cm, %i.cc
  br i1 %.not.i.i.i28.i.i, label %bb.m, label %_m3dstbi__zget8.exit.i.i29.i.i

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  store ptr %i.cn, ptr %6, align 8
  %i.co = load i8, ptr %i.cm, align 1
  %i.cp = zext i8 %i.co to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i

_m3dstbi__zget8.exit.i.i29.i.i:                   ; preds = %bb.m, %bb.l
  %i.cq = phi ptr [ %i.cn, %bb.m ], [ %i.cm, %bb.l ] ; 4 uses
  %.0.i.i.i30.i.i = phi i32 [ %i.cp, %bb.m ], [ 0, %bb.l ]
  %i.cr = shl i32 %.0.i.i.i30.i.i, %i.cl
  %i.cs = or i32 %i.cr, %i.ck                     ; 2 uses
  store i32 %i.cs, ptr %i.ab, align 4
  %i.ct = add nuw nsw i32 %i.cl, 8                ; 2 uses
  store i32 %i.ct, ptr %i.aa, align 8
  %.not.i.i.i28.i.i.1 = icmp ult ptr %i.cq, %i.cc
  br i1 %.not.i.i.i28.i.i.1, label %bb.n, label %_m3dstbi__zget8.exit.i.i29.i.i.1

bb.n:                                             ; preds = %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cu, ptr %6, align 8
  %i.cv = load i8, ptr %i.cq, align 1
  %i.cw = zext i8 %i.cv to i32
  br label %_m3dstbi__zget8.exit.i.i29.i.i.1

_m3dstbi__zget8.exit.i.i29.i.i.1:                 ; preds = %bb.n, %_m3dstbi__zget8.exit.i.i29.i.i
  %i.cx = phi ptr [ %i.cu, %bb.n ], [ %i.cq, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %.0.i.i.i30.i.i.1 = phi i32 [ %i.cw, %bb.n ], [ 0, %_m3dstbi__zget8.exit.i.i29.i.i ]
  %i.cy = shl i32 %.0.i.i.i30.i.i.1, %i.ct
  %i.cz = or i32 %i.cy, %i.cs                     ; 3 uses
  store i32 %i.cz, ptr %i.ab, align 4
  %i.da = add nuw nsw i32 %i.cl, 16               ; 3 uses
  store i32 %i.da, ptr %i.aa, align 8
  %i.db = icmp slt i32 %i.cl, 9
  br i1 %i.db, label %bb.l, label %_m3dstbi__zreceive.exit31.i.i

_m3dstbi__zreceive.exit31.i.i:                    ; preds = %_m3dstbi__zget8.exit.i.i29.i.i.1, %_m3dstbi__zreceive.exit.i.i, %_m3dstbi__zreceive.exit.thread.i.i
  %.in.i.i = phi i32 [ %.promoted6.i.i.i.i, %_m3dstbi__zreceive.exit.i.i ], [ %.lcssa312, %_m3dstbi__zreceive.exit.thread.i.i ], [ %.promoted6.i.i.i.i, %_m3dstbi__zget8.exit.i.i29.i.i.1 ]
  %i.dc = phi i32 [ %i.ca, %_m3dstbi__zreceive.exit.i.i ], [ %i.by, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.da, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 4 uses
  %i.dd = phi i32 [ %i.bz, %_m3dstbi__zreceive.exit.i.i ], [ %i.bx, %_m3dstbi__zreceive.exit.thread.i.i ], [ %i.cz, %_m3dstbi__zget8.exit.i.i29.i.i.1 ] ; 2 uses
  %i.de = and i32 %.in.i.i, 1
  %i.df = and i32 %i.dd, 3
  %i.dg = lshr i32 %i.dd, 2                       ; 6 uses
  store i32 %i.dg, ptr %i.ab, align 4
  %i.dh = add nsw i32 %i.dc, -2                   ; 7 uses
  store i32 %i.dh, ptr %i.aa, align 8
  switch i32 %i.df, label %default.unreachable [
    i32 0, label %bb.o
    i32 3, label %.loopexit
    i32 1, label %bb.ab
    i32 2, label %bb.ad
  ]

bb.o:                                             ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.di = and i32 %i.dh, 7                        ; 2 uses
  %.not.i32.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i32.i.i, label %bb.p, label %_m3dstbi__zreceive.exit.i.i.i

_m3dstbi__zreceive.exit.i.i.i:                    ; preds = %bb.o
  %i.dj = lshr i32 %i.dg, %i.di                   ; 2 uses
  store i32 %i.dj, ptr %i.ab, align 4
  %i.dk = and i32 %i.dh, -8                       ; 2 uses
  store i32 %i.dk, ptr %i.aa, align 8
  br label %bb.p

bb.p:                                             ; preds = %_m3dstbi__zreceive.exit.i.i.i, %bb.o
  %.promoted.i.i.i = phi i32 [ %i.dj, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dg, %bb.o ] ; 3 uses
  %.pr.i.i.i = phi i32 [ %i.dk, %_m3dstbi__zreceive.exit.i.i.i ], [ %i.dh, %bb.o ] ; 4 uses
  %.not263.i.i = icmp eq i32 %.pr.i.i.i, 0
  br i1 %.not263.i.i, label %.lr.ph42.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.dl = add nsw i32 %.pr.i.i.i, -1              ; 2 uses
  %i.dm = lshr i32 %i.dl, 3
  %i.dn = add nuw nsw i32 %i.dm, 1
  %wide.trip.count.i.i = zext nneg i32 %i.dn to i64 ; 3 uses
  %xtraiter429 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.do = icmp ult i32 %.pr.i.i.i, 25
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 1073741820
  br label %bb.s

.preheader.i.i.i.unr-lcssa:                       ; preds = %bb.s
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod431.not, label %.preheader.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.preheader.i.i.i.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i.unr-lcssa ]
  %lcmp.mod434 = icmp ne i64 %xtraiter429, 0
  tail call void @llvm.assume(i1 %lcmp.mod434)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.q ] ; 3 uses
  %i.dp = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.ds, %bb.q ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.dq = trunc i32 %i.dp to i8
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i.epil
  store i8 %i.dq, ptr %i.dr, align 1
  %i.ds = lshr i32 %i.dp, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter429
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.epilog-lcssa, label %bb.q, !llvm.loop !64

.preheader.i.i.i.epilog-lcssa:                    ; preds = %bb.q
  %i.dt = icmp samesign ult i64 %indvars.iv.i.i.i.epil, 3
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.unr-lcssa, %.preheader.i.i.i.epilog-lcssa
  %indvars.iv.i.i.i.lcssa = phi i1 [ false, %.preheader.i.i.i.unr-lcssa ], [ %i.dt, %.preheader.i.i.i.epilog-lcssa ]
  %.lcssa345 = phi i32 [ 0, %.preheader.i.i.i.unr-lcssa ], [ %i.ds, %.preheader.i.i.i.epilog-lcssa ] ; 3 uses
  %i.du = add i32 %.pr.i.i.i, -8
  %i.dv = and i32 %i.dl, -8
  %i.dw = sub i32 %i.du, %i.dv                    ; 3 uses
  store i32 %.lcssa345, ptr %i.ab, align 4
  store i32 %i.dw, ptr %i.aa, align 8
  br i1 %indvars.iv.i.i.i.lcssa, label %.lr.ph42.i.i.i, label %._crit_edge.i.i.i

.lr.ph42.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.p
  %.pr.i.i116 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %.pre.i.i.i111 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.promoted.i.i.i, %bb.p ] ; 2 uses
  %.0.lcssa61.i.i.i = phi i64 [ %wide.trip.count.i.i, %.preheader.i.i.i ], [ 0, %bb.p ] ; 5 uses
  %i.dx = load ptr, ptr %i.i, align 8             ; 3 uses
  %.promoted43.i.i.i = load ptr, ptr %6, align 8  ; 5 uses
  %xtraiter437 = and i64 %.0.lcssa61.i.i.i, 1
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %.prol.loopexit436, label %.prol.preheader435

.prol.preheader435:                               ; preds = %.lr.ph42.i.i.i
  %.not.i.i33.i.i.prol = icmp ult ptr %.promoted43.i.i.i, %i.dx
  br i1 %.not.i.i33.i.i.prol, label %bb.r, label %_m3dstbi__zget8.exit.i34.i.i.prol

bb.r:                                             ; preds = %.prol.preheader435
  %i.dy = getelementptr inbounds nuw i8, ptr %.promoted43.i.i.i, i64 1 ; 2 uses
  store ptr %i.dy, ptr %6, align 8
  %i.dz = load i8, ptr %.promoted43.i.i.i, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.prol

_m3dstbi__zget8.exit.i34.i.i.prol:                ; preds = %bb.r, %.prol.preheader435
  %i.ea = phi ptr [ %i.dy, %bb.r ], [ %.promoted43.i.i.i, %.prol.preheader435 ]
  %.0.i.i35.i.i.prol = phi i8 [ %i.dz, %bb.r ], [ 0, %.prol.preheader435 ]
  %indvars.iv.next50.i.i.i.prol = add nuw nsw i64 %.0.lcssa61.i.i.i, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa61.i.i.i
  store i8 %.0.i.i35.i.i.prol, ptr %i.eb, align 1
  br label %.prol.loopexit436

.prol.loopexit436:                                ; preds = %_m3dstbi__zget8.exit.i34.i.i.prol, %.lr.ph42.i.i.i
  %indvars.iv49.i.i.i.unr = phi i64 [ %.0.lcssa61.i.i.i, %.lr.ph42.i.i.i ], [ %indvars.iv.next50.i.i.i.prol, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %.unr440 = phi ptr [ %.promoted43.i.i.i, %.lr.ph42.i.i.i ], [ %i.ea, %_m3dstbi__zget8.exit.i34.i.i.prol ]
  %i.ec = icmp eq i64 %.0.lcssa61.i.i.i, 3
  br i1 %i.ec, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.s ] ; 5 uses
  %i.ed = phi i32 [ %.promoted.i.i.i, %.lr.ph.i.i.i.new ], [ 0, %bb.s ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.s ]
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  store i8 %i.ee, ptr %i.ef, align 2
  %i.eg = lshr i32 %i.ed, 8
  %i.eh = trunc i32 %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.eh, ptr %i.ej, align 1
  %i.ek = lshr i32 %i.ed, 16
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i8 %i.el, ptr %i.en, align 2
  %i.eo = lshr i32 %i.ed, 24
  %i.ep = trunc nuw i32 %i.eo to i8
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 3
  store i8 %i.ep, ptr %i.er, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.i.i.unr-lcssa, label %bb.s

.lr.ph42.i.i.i.new:                               ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1
  %indvars.iv49.i.i.i = phi i64 [ %indvars.iv.next50.i.i.i.1, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %indvars.iv49.i.i.i.unr, %.prol.loopexit436 ] ; 3 uses
  %i.es = phi ptr [ %i.ez, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.unr440, %.prol.loopexit436 ] ; 4 uses
  %.not.i.i33.i.i = icmp ult ptr %i.es, %i.dx
  br i1 %.not.i.i33.i.i, label %bb.t, label %_m3dstbi__zget8.exit.i34.i.i

bb.t:                                             ; preds = %.lr.ph42.i.i.i.new
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 2 uses
  store ptr %i.et, ptr %6, align 8
  %i.eu = load i8, ptr %i.es, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i

_m3dstbi__zget8.exit.i34.i.i:                     ; preds = %bb.t, %.lr.ph42.i.i.i.new
  %i.ev = phi ptr [ %i.et, %bb.t ], [ %i.es, %.lr.ph42.i.i.i.new ] ; 4 uses
  %.0.i.i35.i.i = phi i8 [ %i.eu, %bb.t ], [ 0, %.lr.ph42.i.i.i.new ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  store i8 %.0.i.i35.i.i, ptr %i.ew, align 1
  %.not.i.i33.i.i.1 = icmp ult ptr %i.ev, %i.dx
  br i1 %.not.i.i33.i.i.1, label %bb.u, label %_m3dstbi__zget8.exit.i34.i.i.1

bb.u:                                             ; preds = %_m3dstbi__zget8.exit.i34.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 2 uses
  store ptr %i.ex, ptr %6, align 8
  %i.ey = load i8, ptr %i.ev, align 1
  br label %_m3dstbi__zget8.exit.i34.i.i.1

_m3dstbi__zget8.exit.i34.i.i.1:                   ; preds = %bb.u, %_m3dstbi__zget8.exit.i34.i.i
  %i.ez = phi ptr [ %i.ex, %bb.u ], [ %i.ev, %_m3dstbi__zget8.exit.i34.i.i ]
  %.0.i.i35.i.i.1 = phi i8 [ %i.ey, %bb.u ], [ 0, %_m3dstbi__zget8.exit.i34.i.i ]
  %indvars.iv.next50.i.i.i.1 = add nuw nsw i64 %indvars.iv49.i.i.i, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv49.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 %.0.i.i35.i.i.1, ptr %i.fb, align 1
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next50.i.i.i.1, 4
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph42.i.i.i.new

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit436, %_m3dstbi__zget8.exit.i34.i.i.1, %.preheader.i.i.i
  %.pr.i.i115 = phi i32 [ %i.dw, %.preheader.i.i.i ], [ %.pr.i.i116, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pr.i.i116, %.prol.loopexit436 ]
  %.pre.i.i.i110 = phi i32 [ %.lcssa345, %.preheader.i.i.i ], [ %.pre.i.i.i111, %_m3dstbi__zget8.exit.i34.i.i.1 ], [ %.pre.i.i.i111, %.prol.loopexit436 ]
  %i.fc = load i16, ptr %i.c, align 2             ; 3 uses
  %i.fd = zext i16 %i.fc to i32
  %i.fe = load i16, ptr %i.aq, align 2
  %i.ff = xor i16 %i.fe, %i.fc
  %.not31.i.i.i = icmp eq i16 %i.ff, -1
  br i1 %.not31.i.i.i, label %bb.v, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.fg = load ptr, ptr %6, align 8               ; 2 uses
  %i.fh = zext i16 %i.fc to i64                   ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fj = load ptr, ptr %i.i, align 8
  %i.fk = icmp ugt ptr %i.fi, %i.fj
  br i1 %i.fk, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fh
  %i.fm = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fn = icmp ugt ptr %i.fl, %i.fm
  br i1 %i.fn, label %bb.x, label %_m3dstbi__parse_uncompressed_block.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.fo = load i32, ptr %i.n, align 8
  %.not.i33.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i33.i.i.i, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.fq = ptrtoint ptr %i.ar to i64
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 2 uses
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = ptrtoint ptr %i.fm to i64
  %i.fv = sub i64 %i.fu, %i.fr
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = add nsw i32 %i.ft, %i.fd
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.i34.i.i.i = phi i32 [ %i.fw, %bb.y ], [ %i.fz, %bb.z ] ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, %.0.i34.i.i.i
  %i.fz = shl nsw i32 %.0.i34.i.i.i, 1
  br i1 %i.fy, label %bb.z, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = sext i32 %.0.i34.i.i.i to i64           ; 2 uses
  %i.gb = tail call ptr @realloc(ptr noundef %i.fp, i64 noundef %i.ga) #52 ; 4 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_m3dstbi__parse_uncompressed_block.exit.thread.i.i, label %_m3dstbi__zexpand.exit.i.i.i

_m3dstbi__zexpand.exit.i.i.i:                     ; preds = %bb.aa
  store ptr %i.gb, ptr %i.j, align 8
  %sext.i.i.i.i = shl i64 %i.fs, 32
  %i.gd = ashr exact i64 %sext.i.i.i.i, 32
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.gb, i64 %i.ga
  store ptr %i.gf, ptr %i.m, align 8
  br label %_m3dstbi__parse_uncompressed_block.exit.i.i

_m3dstbi__parse_uncompressed_block.exit.thread.i.i: ; preds = %bb.aa, %bb.x, %bb.v, %._crit_edge.i.i.i
  %.str.319.sink.i.i = phi ptr [ @.str.319, %bb.v ], [ @.str.319, %._crit_edge.i.i.i ], [ @.str.319, %bb.x ], [ @.str.320, %bb.aa ]
  store ptr %.str.319.sink.i.i, ptr @_m3dstbi__g_failure_reason, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %.loopexit

_m3dstbi__parse_uncompressed_block.exit.i.i:      ; preds = %_m3dstbi__zexpand.exit.i.i.i, %bb.w
  %i.gg = phi ptr [ %i.ge, %_m3dstbi__zexpand.exit.i.i.i ], [ %i.ar, %bb.w ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.fg, i64 %i.fh, i1 false)
  store ptr %i.fi, ptr %6, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fh ; 2 uses
  store ptr %i.gh, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %bb.dx

bb.ab:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  %i.gi = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ag, ptr noundef nonnull @_m3dstbi__zdefault_length, i32 noundef 288)
  %.not18.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not18.i.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gj = call fastcc i32 @_m3dstbi__zbuild_huffman(ptr noundef %i.ah, ptr noundef nonnull @_m3dstbi__zdefault_distance, i32 noundef 32)
  %.not19.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not19.i.i, label %.loopexit, label %bb.cc

default.unreachable:                              ; preds = %_m3dstbi__zreceive.exit31.i.i
  unreachable

bb.ad:                                            ; preds = %_m3dstbi__zreceive.exit31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.gk = icmp samesign ult i32 %i.dc, 7
  br i1 %i.gk, label %bb.ae, label %_m3dstbi__zreceive.exit.i40.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %i.i, align 8             ; 3 uses
end_hunk_0
