Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwrite?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@png_write_row:bb.a

bb.z:                                             ; preds = %bb.y
  tail call void @png_write_finish_row(ptr noundef nonnull %0) #16
  br label %bb.bb

bb.aa:                                            ; preds = %bb.j, %bb.m, %bb.o, %bb.r, %bb.t, %bb.w, %bb.y, %bb.i, %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !120
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !154
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.au = load i32, ptr %i.at, align 8, !tbaa !156 ; 2 uses
  store i32 %i.au, ptr %2, align 8, !tbaa !157
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !158 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 %i.aw, ptr %i.ax, align 2, !tbaa !159
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !160 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 2 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !161
  %i.bb = mul i8 %i.az, %i.aw                     ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 19 ; 2 uses
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !162
  %i.bd = icmp ugt i8 %i.bb, 7
  %i.be = zext i32 %i.au to i64                   ; 2 uses
  br i1 %i.bd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bf = lshr i8 %i.bb, 3
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = mul nuw nsw i64 %i.bg, %i.be
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.bi = zext nneg i8 %i.bb to i64
  %i.bj = mul nuw nsw i64 %i.bi, %i.be
  %i.bk = add nuw nsw i64 %i.bj, 7
  %i.bl = lshr i64 %i.bk, 3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bm = phi i64 [ %i.bh, %bb.ab ], [ %i.bl, %bb.ac ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !163
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !164
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.bm, i1 false)
  %i.br = load i8, ptr %i.l, align 4, !tbaa !152
  %.not64 = icmp eq i8 %i.br, 0
  br i1 %.not64, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !151 ; 2 uses
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = icmp ult i8 %i.bt, 6
  br i1 %i.bv, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !78
  %i.by = and i32 %i.bx, 2
  %.not65 = icmp eq i32 %i.by, 0
  br i1 %.not65, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !164
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  call void @png_do_write_interlace(ptr noundef nonnull %2, ptr noundef nonnull %i.ca, i32 noundef %i.bu) #16
  %i.cb = load i32, ptr %2, align 8, !tbaa !157
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @png_write_finish_row(ptr noundef nonnull %0) #16
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !78
  %.not66 = icmp eq i32 %i.ce, 0
  br i1 %.not66, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @png_do_write_transformations(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cf = load i8, ptr %i.bc, align 1, !tbaa !162 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !165
  %.not67 = icmp eq i8 %i.cf, %i.ch
  br i1 %.not67, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 631
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !166
  %.not68 = icmp eq i8 %i.cf, %i.cj
  br i1 %.not68, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #17
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !25
  %i.cm = and i32 %i.cl, 4
  %.not69 = icmp eq i32 %i.cm, 0
  br i1 %.not69, label %png_do_write_intrapixel.exitthread-pre-split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !167
  %i.cp = icmp eq i8 %i.co, 64
  br i1 %i.cp, label %bb.ap, label %png_do_write_intrapixel.exitthread-pre-split

bb.ap:                                            ; preds = %bb.ao
  %i.cq = load ptr, ptr %i.bo, align 8, !tbaa !164
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.as, align 8, !tbaa !154 ; 4 uses
  %i.ct = and i8 %i.cs, 2
  %.not.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i, label %png_do_write_intrapixel.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cu = load i32, ptr %2, align 8, !tbaa !157   ; 7 uses
  %i.cv = load i8, ptr %i.ba, align 1, !tbaa !161
  switch i8 %i.cv, label %png_do_write_intrapixel.exitthread-pre-split [
    i8 8, label %bb.ar
    i8 16, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  switch i8 %i.cs, label %png_do_write_intrapixel.exitthread-pre-split [
    i8 2, label %bb.at
    i8 6, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i = phi i64 [ 4, %bb.as ], [ 3, %bb.ar ]    ; 2 uses
  %.not64.i = icmp eq i32 %i.cu, 0
  br i1 %.not64.i, label %png_do_write_intrapixel.exitthread-pre-split, label %.lr.ph62.i.lver.orig.preheader

.lr.ph62.i.lver.orig.preheader:                   ; preds = %bb.at
  %xtraiter = and i32 %i.cu, 1
  %i.cw = icmp eq i32 %i.cu, 1
  br i1 %i.cw, label %.lr.ph62.i.lver.orig.epil.preheader, label %.lr.ph62.i.lver.orig.preheader.new

.lr.ph62.i.lver.orig.preheader.new:               ; preds = %.lr.ph62.i.lver.orig.preheader
  %unroll_iter = and i32 %i.cu, -2
  br label %.lr.ph62.i.lver.orig

.lr.ph62.i.lver.orig:                             ; preds = %.lr.ph62.i.lver.orig, %.lr.ph62.i.lver.orig.preheader.new
  %.04661.i.lver.orig = phi ptr [ %i.cr, %.lr.ph62.i.lver.orig.preheader.new ], [ %i.dm, %.lr.ph62.i.lver.orig ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph62.i.lver.orig.preheader.new ], [ %niter.next.1, %.lr.ph62.i.lver.orig ]
  %i.cx = load i8, ptr %.04661.i.lver.orig, align 1, !tbaa !48
  %i.cy = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !48  ; 2 uses
  %i.da = sub i8 %i.cx, %i.cz
  store i8 %i.da, ptr %.04661.i.lver.orig, align 1, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !48
  %i.dd = sub i8 %i.dc, %i.cz
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig, i64 %.0.i ; 5 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !48
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !48  ; 2 uses
  %i.di = sub i8 %i.df, %i.dh
  store i8 %i.di, ptr %i.de, align 1, !tbaa !48
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !48
  %i.dl = sub i8 %i.dk, %i.dh
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 %.0.i ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa, label %.lr.ph62.i.lver.orig, !llvm.loop !168

bb.au:                                            ; preds = %bb.aq
  switch i8 %i.cs, label %png_do_write_intrapixel.exitthread-pre-split [
    i8 2, label %bb.aw
    i8 6, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1.i = phi i64 [ 8, %bb.av ], [ 6, %bb.au ]
  %.not63.i = icmp eq i32 %i.cu, 0
  br i1 %.not63.i, label %png_do_write_intrapixel.exitthread-pre-split, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %bb.aw, %.lr.ph.i.lver.orig
  %.05059.i.lver.orig = phi i32 [ %i.es, %.lr.ph.i.lver.orig ], [ 0, %bb.aw ]
  %.05158.i.lver.orig = phi ptr [ %i.et, %.lr.ph.i.lver.orig ], [ %i.cr, %bb.aw ] ; 8 uses
  %i.dn = load i8, ptr %.05158.i.lver.orig, align 1, !tbaa !48
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !48
  %i.ds = zext i8 %i.dr to i32
  %i.dt = or disjoint i32 %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 2
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !48
  %i.dw = zext i8 %i.dv to i32
  %i.dx = shl nuw nsw i32 %i.dw, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 3
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !48
  %i.ea = zext i8 %i.dz to i32
  %i.eb = or disjoint i32 %i.dx, %i.ea            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 4 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !48
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 5 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !48
  %i.ei = zext i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.ef, %i.ei
  %i.ek = sub nsw i32 %i.dt, %i.eb                ; 2 uses
  %i.el = sub nsw i32 %i.ej, %i.eb                ; 2 uses
  %i.em = lshr i32 %i.ek, 8
  %i.en = trunc i32 %i.em to i8
  store i8 %i.en, ptr %.05158.i.lver.orig, align 1, !tbaa !48
  %i.eo = trunc i32 %i.ek to i8
  store i8 %i.eo, ptr %i.dq, align 1, !tbaa !48
  %i.ep = lshr i32 %i.el, 8
  %i.eq = trunc i32 %i.ep to i8
  store i8 %i.eq, ptr %i.ec, align 1, !tbaa !48
  %i.er = trunc i32 %i.el to i8
  store i8 %i.er, ptr %i.eg, align 1, !tbaa !48
  %i.es = add nuw i32 %.05059.i.lver.orig, 1      ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 %.1.i
  %exitcond.not.i.lver.orig = icmp eq i32 %i.es, %i.cu
  br i1 %exitcond.not.i.lver.orig, label %png_do_write_intrapixel.exitthread-pre-split, label %.lr.ph.i.lver.orig, !llvm.loop !169

png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa: ; preds = %.lr.ph62.i.lver.orig
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %png_do_write_intrapixel.exitthread-pre-split, label %.lr.ph62.i.lver.orig.epil.preheader

.lr.ph62.i.lver.orig.epil.preheader:              ; preds = %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa, %.lr.ph62.i.lver.orig.preheader
  %.04661.i.lver.orig.epil.init = phi ptr [ %i.cr, %.lr.ph62.i.lver.orig.preheader ], [ %i.dm, %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod86 = trunc i32 %i.cu to i1
  call void @llvm.assume(i1 %lcmp.mod86)
  %i.eu = load i8, ptr %.04661.i.lver.orig.epil.init, align 1, !tbaa !48
  %i.ev = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig.epil.init, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !48  ; 2 uses
  %i.ex = sub i8 %i.eu, %i.ew
  store i8 %i.ex, ptr %.04661.i.lver.orig.epil.init, align 1, !tbaa !48
  %i.ey = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig.epil.init, i64 2 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !48
  %i.fa = sub i8 %i.ez, %i.ew
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !48
  br label %png_do_write_intrapixel.exitthread-pre-split

png_do_write_intrapixel.exitthread-pre-split:     ; preds = %.lr.ph.i.lver.orig, %.lr.ph62.i.lver.orig.epil.preheader, %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.aw
  %.pr = load i8, ptr %i.as, align 8, !tbaa !154
  br label %png_do_write_intrapixel.exit

png_do_write_intrapixel.exit:                     ; preds = %png_do_write_intrapixel.exitthread-pre-split, %bb.ap
  %i.fb = phi i8 [ %.pr, %png_do_write_intrapixel.exitthread-pre-split ], [ %i.cs, %bb.ap ]
  %i.fc = icmp eq i8 %i.fb, 3
  br i1 %i.fc, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %png_do_write_intrapixel.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !121
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %png_do_write_intrapixel.exit
  call void @png_write_find_filter(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170 ; 2 uses
  %.not70 = icmp eq ptr %i.fh, null
  br i1 %.not70, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = load i32, ptr %i.b, align 4, !tbaa !150
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !151
  %i.fl = zext i8 %i.fk to i32
  call void %i.fh(ptr noundef nonnull %0, i32 noundef %i.fi, i32 noundef %i.fl) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.a, %bb.ah, %bb.z, %bb.x, %bb.u, %bb.s, %bb.p, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_image(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @png_set_interlace_handling(ptr noundef nonnull %0) #16 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !171
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i32 [ %i.l, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.01216 = phi i32 [ %i.m, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.015 = phi ptr [ %i.i, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %.01114 = phi i32 [ %i.h, %.lr.ph ], [ 0, %.preheader ]
  %i.g = load ptr, ptr %.015, align 8, !tbaa !148
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %i.g)
  %i.h = add nuw i32 %.01114, 1                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.j = load i32, ptr %i.d, align 8, !tbaa !171  ; 2 uses
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !172

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.l = phi i32 [ 0, %.preheader ], [ %i.j, %.lr.ph ]
  %i.m = add nuw nsw i32 %.01216, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !173

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #1

declare void @png_write_start_row(ptr noundef) local_unnamed_addr #1

declare void @png_write_finish_row(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @png_do_write_interlace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_do_write_transformations(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_find_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_flush(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i32 %i.b, ptr %i.c, align 8, !tbaa !175
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_write_flush(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.c = load i32, ptr %i.b, align 4, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.e = load i32, ptr %i.d, align 4, !tbaa !176
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef 2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.f, align 4, !tbaa !177
  tail call void @png_flush(ptr noundef nonnull %0) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @png_compress_IDAT(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_destroy_write_struct(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 21 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_destroy_info_struct(ptr noundef nonnull %i.a, ptr noundef %1) #16
  store ptr null, ptr %0, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load i32, ptr %i.b, align 8, !tbaa !147, !alias.scope !180
  %i.d = and i32 %i.c, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %png_write_destroy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.f = tail call i32 @deflateEnd(ptr noundef nonnull %i.e) #16 ; 0 uses
  br label %png_write_destroy.exit

png_write_destroy.exit:                           ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  tail call void @png_free_buffer_list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164, !alias.scope !180
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.i) #16
  store ptr null, ptr %i.h, align 8, !tbaa !164, !alias.scope !180
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 2 uses
end_hunk_0
begin_hunk_1_@png_image_write_to_file:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.n, align 8, !tbaa !207
  store i32 %4, ptr %i.m, align 8, !tbaa !208
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.o, align 8, !tbaa !209
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %2, ptr %i.p, align 8, !tbaa !210
  %i.q = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_write_main, ptr noundef nonnull %6) #16
  call void @png_image_free(ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %png_image_write_to_stdio.exit

bb.h:                                             ; preds = %bb.e
  %i.r = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #16
  br label %png_image_write_to_stdio.exit

png_image_write_to_stdio.exit:                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.q, %bb.g ], [ %i.r, %bb.h ]
  %.not33 = icmp eq i32 %.0.i, 0
  br i1 %.not33, label %png_image_write_to_stdio.exit.thread, label %bb.i

bb.i:                                             ; preds = %png_image_write_to_stdio.exit
  %i.s = call i32 @fflush(ptr noundef nonnull %i.f)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @ferror(ptr noundef nonnull %i.f) #16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = call i32 @fclose(ptr noundef nonnull %i.f)
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call ptr @__errno_location() #18
  %i.z = load i32, ptr %i.y, align 4, !tbaa !143
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.aa = tail call ptr @__errno_location() #18
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !143
  %i.ac = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i32 [ %i.z, %bb.l ], [ %i.ab, %bb.m ]
  %i.ad = call i32 @remove(ptr noundef nonnull %1) #16 ; 0 uses
  %i.ae = call ptr @strerror(i32 noundef %.0) #16
  %i.af = call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef %i.ae) #16
  br label %.critedge

png_image_write_to_stdio.exit.thread:             ; preds = %bb.f, %png_image_write_to_stdio.exit
  %i.ag = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.ah = call i32 @remove(ptr noundef nonnull %1) #16 ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %bb.d
  %i.ai = tail call ptr @__errno_location() #18
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !143
  %i.ak = tail call ptr @strerror(i32 noundef %i.aj) #16
  %i.al = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef %i.ak) #16
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  %i.am = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #16
  br label %.critedge

bb.q:                                             ; preds = %bb.b
  %i.an = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.20) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %png_image_write_to_stdio.exit.thread, %bb.o, %bb.k, %bb.n, %bb.q, %bb.p
  %.2 = phi i32 [ 1, %bb.k ], [ %i.am, %bb.p ], [ %i.an, %bb.q ], [ %i.al, %bb.o ], [ 0, %png_image_write_to_stdio.exit.thread ], [ %i.af, %bb.n ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare i32 @png_handle_as_unknown(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_write_chunk(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #1

declare void @png_free_buffer_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @png_safe_error(ptr noundef, ptr noundef) #3

declare void @png_safe_warning(ptr noundef, ptr noundef) #1

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #1

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @image_memory_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !213  ; 3 uses
  %i.e = xor i64 %i.d, -1
  %.not = icmp ugt i64 %2, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212
  %i.h = add i64 %i.d, %2                         ; 2 uses
  %.not16 = icmp ult i64 %i.g, %i.h
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !211
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 %i.h, ptr %i.c, align 8, !tbaa !213
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #17
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @image_memory_flush(ptr nofree readnone captures(none) %0) #8 {
bb.a:
  ret void
}

declare void @png_set_benign_errors(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_set_gAMA_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_set_cHRM_fixed(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @png_set_sRGB(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_write_image_16bit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !221  ; 3 uses
  %i.g = and i32 %i.f, 2                          ; 4 uses
  %i.h = and i32 %i.f, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = or disjoint i32 %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !223  ; 3 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !240
  %i.m = and i32 %i.f, 32
  %.not67 = icmp eq i32 %i.m, 0                   ; 2 uses
  %i.n = zext nneg i32 %i.i to i64
  %.063 = select i1 %.not67, i64 0, i64 2         ; 2 uses
  %.061 = getelementptr inbounds nuw i8, ptr %i.l, i64 %.063 ; 2 uses
  %.060 = select i1 %.not67, i64 %i.n, i64 -1     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !222
  %i.q = add nuw nsw i32 %i.g, 2
  %i.r = mul i32 %i.p, %i.q                       ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx = shl nuw nsw i64 %i.s, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.061, i64 %.idx
  %.not6875 = icmp eq i32 %i.k, 0
  br i1 %.not6875, label %._crit_edge78, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not88 = icmp eq i32 %i.r, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %.not88, label %.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !232
  %.0 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.063
  %.not105.a = icmp eq i32 %i.g, 0
  %.not106 = icmp eq i32 %i.g, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.05977.us = phi i32 [ %i.bp, %._crit_edge.us ], [ %i.k, %.preheader.us.preheader ]
  %.16376.us = phi ptr [ %i.bo, %._crit_edge.us ], [ %.0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %.split71.us84
  %.05874.us = phi ptr [ %.061, %.preheader.us ], [ %i.bc, %.split71.us84 ] ; 9 uses
  %.06073.us = phi ptr [ %.16376.us, %.preheader.us ], [ %i.bb, %.split71.us84 ] ; 9 uses
  %i.x = getelementptr inbounds [2 x i8], ptr %.06073.us, i64 %.060
  %i.y = load i16, ptr %i.x, align 2, !tbaa !230
  %.fr = freeze i16 %i.y                          ; 7 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %.05874.us, i64 %.060
  store i16 %.fr, ptr %i.z, align 2, !tbaa !230
  %i.aa = add i16 %.fr, -1
  %or.cond.us = icmp ult i16 %i.aa, -2
  br i1 %or.cond.us, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.ab = zext i16 %.fr to i32                    ; 2 uses
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = or disjoint i32 %i.ac, 2147450880
  %i.ae = udiv i32 %i.ad, %i.ab
  br label %.split.us87

bb.d:                                             ; preds = %bb.c
  %.not89 = icmp eq i16 %.fr, -1
  br i1 %.not89, label %.split.us.us, label %.split.us87

.split.us87:                                      ; preds = %bb.d, %.thread
  %.056.us98 = phi i32 [ %i.ae, %.thread ], [ 0, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06073.us, i64 2
  %i.ag = load i16, ptr %.06073.us, align 2, !tbaa !230 ; 3 uses
  %i.ah = zext i16 %i.ag to i32
  %.not69.us82 = icmp ult i16 %i.ag, %.fr
  br i1 %.not69.us82, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.split.us87
  %.not90 = icmp eq i16 %i.ag, 0
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = mul i32 %.056.us98, %i.ah
  %i.aj = add i32 %i.ai, 16384
  %i.ak = lshr i32 %i.aj, 15
  %i.al = trunc i32 %i.ak to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.split.us87
  %.054.us83 = phi i16 [ 0, %bb.e ], [ %i.al, %bb.f ], [ -1, %.split.us87 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.05874.us, i64 2
  store i16 %.054.us83, ptr %.05874.us, align 2, !tbaa !230
  br i1 %.not106, label %.split71.us84, label %.split.us87.1

.split.us87.1:                                    ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.06073.us, i64 4 ; 2 uses
  %i.ao = load i16, ptr %i.af, align 2, !tbaa !230 ; 3 uses
  %i.ap = zext i16 %i.ao to i32
  %.not69.us82.1 = icmp ult i16 %i.ao, %.fr
  br i1 %.not69.us82.1, label %bb.h, label %.split.us87.2

bb.h:                                             ; preds = %.split.us87.1
  %.not90.1 = icmp eq i16 %i.ao, 0
  br i1 %.not90.1, label %.split.us87.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = mul i32 %.056.us98, %i.ap
  %i.ar = add i32 %i.aq, 16384
  %i.as = lshr i32 %i.ar, 15
  %i.at = trunc i32 %i.as to i16
  br label %.split.us87.2

.split.us87.2:                                    ; preds = %bb.i, %bb.h, %.split.us87.1
  %.054.us83.1 = phi i16 [ 0, %bb.h ], [ %i.at, %bb.i ], [ -1, %.split.us87.1 ]
  %i.au = getelementptr inbounds nuw i8, ptr %.05874.us, i64 4 ; 2 uses
  store i16 %.054.us83.1, ptr %i.am, align 2, !tbaa !230
  %i.av = load i16, ptr %i.an, align 2, !tbaa !230 ; 3 uses
  %i.aw = zext i16 %i.av to i32
  %.not69.us82.2 = icmp ult i16 %i.av, %.fr
  br i1 %.not69.us82.2, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.split.us87.2
  %.not90.2 = icmp eq i16 %i.av, 0
  br i1 %.not90.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = mul i32 %.056.us98, %i.aw
  %i.ay = add i32 %i.ax, 16384
  %i.az = lshr i32 %i.ay, 15
  %i.ba = trunc i32 %i.az to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.split.us87.2
  %.054.us83.2 = phi i16 [ 0, %bb.j ], [ %i.ba, %bb.k ], [ -1, %.split.us87.2 ]
  store i16 %.054.us83.2, ptr %i.au, align 2, !tbaa !230
  br label %.split71.us84

.split71.us84:                                    ; preds = %.split.us.us, %.split.us.us.1, %bb.g, %bb.l
  %.us-phi.us = phi ptr [ %i.an, %bb.l ], [ %.06073.us, %bb.g ], [ %.06073.us, %.split.us.us ], [ %i.bj, %.split.us.us.1 ]
  %.us-phi72.us = phi ptr [ %i.au, %bb.l ], [ %.05874.us, %bb.g ], [ %.05874.us, %.split.us.us ], [ %i.bi, %.split.us.us.1 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.us-phi.us, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.us-phi72.us, i64 4 ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.t
  br i1 %i.bd, label %bb.c, label %._crit_edge.us, !llvm.loop !242

.split.us.us:                                     ; preds = %bb.d
  %i.be = load i16, ptr %.06073.us, align 2, !tbaa !230
  store i16 %i.be, ptr %.05874.us, align 2, !tbaa !230
  br i1 %.not105.a, label %.split71.us84, label %.split.us.us.1

.split.us.us.1:                                   ; preds = %.split.us.us
  %i.bf = getelementptr inbounds nuw i8, ptr %.05874.us, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.06073.us, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !230
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !230
  %i.bi = getelementptr inbounds nuw i8, ptr %.05874.us, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.06073.us, i64 4 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !230
  store i16 %i.bk, ptr %i.bi, align 2, !tbaa !230
  br label %.split71.us84

._crit_edge.us:                                   ; preds = %.split71.us84
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !240
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.bl)
  %i.bm = load i64, ptr %i.u, align 8, !tbaa !233
  %i.bn = sdiv i64 %i.bm, 2
  %i.bo = getelementptr inbounds [2 x i8], ptr %.16376.us, i64 %i.bn
  %i.bp = add i32 %.05977.us, -1                  ; 2 uses
  %.not68.us = icmp eq i32 %i.bp, 0
  br i1 %.not68.us, label %._crit_edge78, label %.preheader.us, !llvm.loop !243

bb.m:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %i.c, ptr noundef nonnull @.str.30) #17
  unreachable

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.06276 = phi i32 [ %i.br, %.preheader ], [ %i.k, %.preheader.lr.ph ]
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !240
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.bq)
  %i.br = add i32 %.06276, -1                     ; 2 uses
  %.not68 = icmp eq i32 %i.br, 0
  br i1 %.not68, label %._crit_edge78, label %.preheader, !llvm.loop !243

._crit_edge78:                                    ; preds = %._crit_edge.us, %.preheader, %bb.b
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_write_image_8bit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !205    ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !216  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !223  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !221  ; 4 uses
  %i.l = and i32 %i.k, 2                          ; 3 uses
  %i.m = or disjoint i32 %i.l, 1                  ; 2 uses
  %i.n = and i32 %i.k, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.k, 32                         ; 2 uses
  %.not76.not = icmp eq i32 %i.o, 0               ; 2 uses
  %i.p = zext nneg i32 %i.m to i64
  %.lobit = lshr exact i32 %i.o, 5
  %.065.idx = zext nneg i32 %.lobit to i64
  %.065 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.065.idx ; 2 uses
  %.069 = select i1 %.not76.not, i64 %i.p, i64 -1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !222
  %i.s = add nuw nsw i32 %i.l, 2
  %i.t = mul i32 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.065, i64 %i.u
  %.not7785 = icmp eq i32 %i.i, 0
  br i1 %.not7785, label %.loopexit, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %bb.b
  %.not102 = icmp eq i32 %i.t, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %.not102, label %.preheader78, label %.preheader78.us.preheader

.preheader78.us.preheader:                        ; preds = %.preheader78.lr.ph
  %.0.idx = select i1 %.not76.not, i64 0, i64 2
  %.0 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0.idx
  %i.x = lshr i32 %i.k, 1
  %.lobit115 = and i32 %i.x, 1
  %i.y = zext nneg i32 %.lobit115 to i64          ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1                  ; 2 uses
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = shl nuw nsw i64 %i.y, 2
  %.not125 = icmp eq i32 %i.l, 0
  br label %.preheader78.us

.preheader78.us:                                  ; preds = %.preheader78.us.preheader, %._crit_edge.us
  %.07087.us = phi i32 [ %i.dj, %._crit_edge.us ], [ %i.i, %.preheader78.us.preheader ]
  %.17486.us = phi ptr [ %i.di, %._crit_edge.us ], [ %.0, %.preheader78.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader78.us, %.split81.us92
  %.07184.us = phi ptr [ %.065, %.preheader78.us ], [ %i.dd, %.split81.us92 ] ; 7 uses
  %.07383.us = phi ptr [ %.17486.us, %.preheader78.us ], [ %i.dc, %.split81.us92 ] ; 6 uses
  %i.ac = getelementptr inbounds [2 x i8], ptr %.07383.us, i64 %.069
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !230
  %.fr = freeze i16 %i.ad                         ; 6 uses
  %i.ae = zext i16 %.fr to i32                    ; 3 uses
  %i.af = mul nuw nsw i32 %i.ae, 255
  %i.ag = add nuw nsw i32 %i.af, 32895
  %i.ah = lshr i32 %i.ag, 16                      ; 2 uses
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr inbounds i8, ptr %.07184.us, i64 %.069
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !48
  %i.ak = icmp ne i32 %i.ah, 0
  %i.al = icmp ult i16 %.fr, -129                 ; 4 uses
  %or.cond.us = and i1 %i.al, %i.ak
  br i1 %or.cond.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = lshr i32 %i.ae, 1
  %i.an = add nuw nsw i32 %i.am, 2139062400
  %i.ao = udiv i32 %i.an, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.067.us = phi i32 [ %i.ao, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.ap = icmp ult i16 %.fr, 128
  br i1 %i.ap, label %png_unpremultiply.exit.us.us.preheader, label %.split.us95

png_unpremultiply.exit.us.us.preheader:           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.07184.us, i8 -1, i64 %i.aa, i1 false), !tbaa !48
  %scevgep = getelementptr i8, ptr %.07383.us, i64 %i.ab
  %scevgep109 = getelementptr i8, ptr %.07184.us, i64 %i.z
  br label %.split81.us92

.split.us95:                                      ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.07383.us, i64 2
  %i.ar = load i16, ptr %.07383.us, align 2, !tbaa !230 ; 3 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %.not103 = icmp ult i16 %i.ar, %.fr
  br i1 %.not103, label %bb.f, label %png_unpremultiply.exit.us91

bb.f:                                             ; preds = %.split.us95
  %.not.i.us = icmp eq i16 %i.ar, 0
  br i1 %.not.i.us, label %png_unpremultiply.exit.us91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = mul i32 %.067.us, %i.as
  %i.au = add i32 %i.at, 64
  %i.av = lshr i32 %i.au, 7
  %i.aw = mul nuw nsw i32 %i.as, 255
  %.015.i.us = select i1 %i.al, i32 %i.av, i32 %i.aw ; 2 uses
  %i.ax = lshr i32 %.015.i.us, 15
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !230
  %i.bb = zext i16 %i.ba to i32
  %i.bc = and i32 %.015.i.us, 32767
  %i.bd = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.ay
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !48
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bc, %i.bf
  %i.bh = lshr i32 %i.bg, 12
  %i.bi = add nuw nsw i32 %i.bh, %i.bb
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8
  br label %png_unpremultiply.exit.us91

png_unpremultiply.exit.us91:                      ; preds = %bb.g, %bb.f, %.split.us95
  %.0.i.us = phi i8 [ -1, %.split.us95 ], [ %i.bk, %bb.g ], [ 0, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.07184.us, i64 1
  store i8 %.0.i.us, ptr %.07184.us, align 1, !tbaa !48
  br i1 %.not125, label %.split81.us92, label %.split.us95.1

.split.us95.1:                                    ; preds = %png_unpremultiply.exit.us91
  %i.bm = getelementptr inbounds nuw i8, ptr %.07383.us, i64 4 ; 2 uses
  %i.bn = load i16, ptr %i.aq, align 2, !tbaa !230 ; 3 uses
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %.not103.1 = icmp ult i16 %i.bn, %.fr
  br i1 %.not103.1, label %bb.h, label %png_unpremultiply.exit.us91.1

bb.h:                                             ; preds = %.split.us95.1
  %.not.i.us.1 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.us.1, label %png_unpremultiply.exit.us91.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = mul i32 %.067.us, %i.bo
  %i.bq = add i32 %i.bp, 64
  %i.br = lshr i32 %i.bq, 7
  %i.bs = mul nuw nsw i32 %i.bo, 255
  %.015.i.us.1 = select i1 %i.al, i32 %i.br, i32 %i.bs ; 2 uses
  %i.bt = lshr i32 %.015.i.us.1, 15
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !230
  %i.bx = zext i16 %i.bw to i32
  %i.by = and i32 %.015.i.us.1, 32767
  %i.bz = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bu
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !48
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.by, %i.cb
  %i.cd = lshr i32 %i.cc, 12
  %i.ce = add nuw nsw i32 %i.cd, %i.bx
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = trunc i32 %i.cf to i8
  br label %png_unpremultiply.exit.us91.1

png_unpremultiply.exit.us91.1:                    ; preds = %bb.i, %bb.h, %.split.us95.1
  %.0.i.us.1 = phi i8 [ -1, %.split.us95.1 ], [ %i.cg, %bb.i ], [ 0, %bb.h ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.07184.us, i64 2 ; 2 uses
  store i8 %.0.i.us.1, ptr %i.bl, align 1, !tbaa !48
  %i.ci = load i16, ptr %i.bm, align 2, !tbaa !230 ; 3 uses
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not103.2 = icmp ult i16 %i.ci, %.fr
  br i1 %.not103.2, label %bb.j, label %png_unpremultiply.exit.us91.2

bb.j:                                             ; preds = %png_unpremultiply.exit.us91.1
  %.not.i.us.2 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.us.2, label %png_unpremultiply.exit.us91.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = mul i32 %.067.us, %i.cj
  %i.cl = add i32 %i.ck, 64
  %i.cm = lshr i32 %i.cl, 7
  %i.cn = mul nuw nsw i32 %i.cj, 255
  %.015.i.us.2 = select i1 %i.al, i32 %i.cm, i32 %i.cn ; 2 uses
  %i.co = lshr i32 %.015.i.us.2, 15
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !230
  %i.cs = zext i16 %i.cr to i32
  %i.ct = and i32 %.015.i.us.2, 32767
  %i.cu = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.cp
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !48
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.ct, %i.cw
  %i.cy = lshr i32 %i.cx, 12
  %i.cz = add nuw nsw i32 %i.cy, %i.cs
  %i.da = lshr i32 %i.cz, 8
  %i.db = trunc i32 %i.da to i8
  br label %png_unpremultiply.exit.us91.2

png_unpremultiply.exit.us91.2:                    ; preds = %bb.k, %bb.j, %png_unpremultiply.exit.us91.1
  %.0.i.us.2 = phi i8 [ -1, %png_unpremultiply.exit.us91.1 ], [ %i.db, %bb.k ], [ 0, %bb.j ]
  store i8 %.0.i.us.2, ptr %i.ch, align 1, !tbaa !48
  br label %.split81.us92

.split81.us92:                                    ; preds = %png_unpremultiply.exit.us91, %png_unpremultiply.exit.us91.2, %png_unpremultiply.exit.us.us.preheader
  %.us-phi.us = phi ptr [ %scevgep, %png_unpremultiply.exit.us.us.preheader ], [ %.07383.us, %png_unpremultiply.exit.us91 ], [ %i.bm, %png_unpremultiply.exit.us91.2 ]
  %.us-phi82.us = phi ptr [ %scevgep109, %png_unpremultiply.exit.us.us.preheader ], [ %.07184.us, %png_unpremultiply.exit.us91 ], [ %i.ch, %png_unpremultiply.exit.us91.2 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.us-phi.us, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi82.us, i64 2 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.v
  br i1 %i.de, label %bb.c, label %._crit_edge.us, !llvm.loop !244

._crit_edge.us:                                   ; preds = %.split81.us92
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !240
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.df)
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !233
  %i.dh = sdiv i64 %i.dg, 2
  %i.di = getelementptr inbounds [2 x i8], ptr %.17486.us, i64 %i.dh
  %i.dj = add i32 %.07087.us, -1                  ; 2 uses
  %.not77.us = icmp eq i32 %i.dj, 0
  br i1 %.not77.us, label %.loopexit, label %.preheader78.us, !llvm.loop !245

.preheader78:                                     ; preds = %.preheader78.lr.ph, %.preheader78
  %.06886 = phi i32 [ %i.dl, %.preheader78 ], [ %i.i, %.preheader78.lr.ph ]
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !240
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.dk)
  %i.dl = add i32 %.06886, -1                     ; 2 uses
  %.not77 = icmp eq i32 %i.dl, 0
  br i1 %.not77, label %.loopexit, label %.preheader78, !llvm.loop !245

bb.l:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !222 ; 2 uses
  %i.do = mul i32 %i.dn, %i.m
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dp
  %.not7598 = icmp eq i32 %i.i, 0
  br i1 %.not7598, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %.not104 = icmp eq i32 %i.dn, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56
  br i1 %.not104, label %.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us101
  %.171100.us = phi i32 [ %i.ep, %._crit_edge.us101 ], [ %i.i, %.preheader.lr.ph ]
  %.299.us = phi ptr [ %i.eo, %._crit_edge.us101 ], [ %i.e, %.preheader.lr.ph ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader.us, %bb.m
  %.06397.us = phi ptr [ %i.g, %.preheader.us ], [ %i.ek, %bb.m ] ; 2 uses
  %.06496.us = phi ptr [ %.299.us, %.preheader.us ], [ %i.ds, %bb.m ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.06496.us, i64 2
  %i.dt = load i16, ptr %.06496.us, align 2, !tbaa !230
  %i.du = zext i16 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.du, 255              ; 2 uses
  %i.dw = lshr i32 %i.dv, 15
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !230
  %i.ea = zext i16 %i.dz to i32
  %i.eb = and i32 %i.dv, 32767
  %i.ec = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.dx
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !48
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.eb, %i.ee
  %i.eg = lshr i32 %i.ef, 12
  %i.eh = add nuw nsw i32 %i.eg, %i.ea
  %i.ei = lshr i32 %i.eh, 8
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.06397.us, i64 1 ; 2 uses
  store i8 %i.ej, ptr %.06397.us, align 1, !tbaa !48
  %i.el = icmp ult ptr %i.ek, %i.dq
  br i1 %i.el, label %bb.m, label %._crit_edge.us101, !llvm.loop !246

._crit_edge.us101:                                ; preds = %bb.m
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.g)
  %i.em = load i64, ptr %i.dr, align 8, !tbaa !233
  %i.en = sdiv i64 %i.em, 2
  %i.eo = getelementptr inbounds [2 x i8], ptr %.299.us, i64 %i.en
  %i.ep = add i32 %.171100.us, -1                 ; 2 uses
  %.not75.us = icmp eq i32 %i.ep, 0
  br i1 %.not75.us, label %.loopexit, label %.preheader.us, !llvm.loop !247

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.16999 = phi i32 [ %i.eq, %.preheader ], [ %i.i, %.preheader.lr.ph ]
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.g)
  %i.eq = add i32 %.16999, -1                     ; 2 uses
  %.not75 = icmp eq i32 %i.eq, 0
  br i1 %.not75, label %.loopexit, label %.preheader, !llvm.loop !247

.loopexit:                                        ; preds = %._crit_edge.us, %.preheader78, %._crit_edge.us101, %.preheader, %bb.b, %bb.l
  ret i32 1
}

declare void @png_set_PLTE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @png_set_tRNS(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i3 @llvm.bitreverse.i3(i3) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 300}
!9 = !{!"png_struct_def", !6, i64 0, !10, i64 200, !11, i64 208, !12, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !6, i64 296, !6, i64 297, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !13, i64 320, !16, i64 432, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !12, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !14, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !12, i64 584, !5, i64 592, !5, i64 596, !17, i64 600, !18, i64 608, !5, i64 612, !18, i64 616, !6, i64 618, !6, i64 619, !6, i64 620, !6, i64 621, !6, i64 622, !6, i64 623, !6, i64 624, !6, i64 625, !6, i64 626, !6, i64 627, !6, i64 628, !6, i64 629, !6, i64 630, !6, i64 631, !6, i64 632, !18, i64 634, !6, i64 636, !5, i64 640, !19, i64 644, !19, i64 654, !10, i64 664, !5, i64 672, !5, i64 676, !20, i64 680, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !14, i64 736, !21, i64 744, !14, i64 752, !14, i64 760, !21, i64 768, !21, i64 776, !23, i64 784, !23, i64 789, !14, i64 800, !19, i64 808, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !5, i64 896, !5, i64 900, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !5, i64 936, !5, i64 940, !14, i64 944, !14, i64 952, !5, i64 960, !6, i64 964, !5, i64 996, !10, i64 1000, !10, i64 1008, !5, i64 1016, !5, i64 1020, !14, i64 1024, !6, i64 1032, !6, i64 1033, !18, i64 1034, !18, i64 1036, !14, i64 1040, !5, i64 1048, !6, i64 1052, !10, i64 1056, !10, i64 1064, !10, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !6, i64 1104, !5, i64 1108, !5, i64 1112, !5, i64 1116, !12, i64 1120, !24, i64 1128, !12, i64 1160, !14, i64 1168, !12, i64 1176, !5, i64 1184, !5, i64 1188, !14, i64 1192, !6, i64 1200}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS13__jmp_buf_tag", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"z_stream_s", !14, i64 0, !5, i64 8, !12, i64 16, !14, i64 24, !5, i64 32, !12, i64 40, !14, i64 48, !15, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !5, i64 88, !12, i64 96, !12, i64 104}
!14 = !{!"p1 omnipotent char", !10, i64 0}
!15 = !{!"p1 _ZTS14internal_state", !10, i64 0}
!16 = !{!"p1 _ZTS22png_compression_buffer", !10, i64 0}
!17 = !{!"p1 _ZTS16png_color_struct", !10, i64 0}
!18 = !{!"short", !6, i64 0}
!19 = !{!"png_color_16_struct", !6, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8}
!20 = !{!"png_xy", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!21 = !{!"p2 short", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!24 = !{!"png_unknown_chunk_t", !6, i64 0, !14, i64 8, !12, i64 16, !6, i64 24}
!25 = !{!9, !5, i64 1048}
!26 = !{!27, !5, i64 0}
!27 = !{!"png_info_def", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16, !17, i64 24, !18, i64 32, !18, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !6, i64 52, !6, i64 53, !6, i64 54, !6, i64 55, !14, i64 56, !14, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !18, i64 84, !18, i64 86, !18, i64 88, !18, i64 90, !18, i64 92, !18, i64 94, !18, i64 96, !18, i64 98, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !28, i64 120, !29, i64 128, !23, i64 136, !14, i64 144, !19, i64 152, !19, i64 162, !5, i64 172, !5, i64 176, !6, i64 180, !5, i64 184, !5, i64 188, !6, i64 192, !5, i64 196, !14, i64 200, !30, i64 208, !14, i64 216, !5, i64 224, !5, i64 228, !14, i64 232, !31, i64 240, !6, i64 248, !6, i64 249, !5, i64 252, !32, i64 256, !5, i64 264, !33, i64 272, !5, i64 280, !6, i64 284, !14, i64 288, !14, i64 296, !31, i64 304, !20, i64 312, !5, i64 344, !5, i64 348}
!28 = !{!"p1 _ZTS15png_text_struct", !10, i64 0}
!29 = !{!"png_time_struct", !18, i64 0, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6}
!30 = !{!"p1 short", !10, i64 0}
!31 = !{!"p2 omnipotent char", !22, i64 0}
!32 = !{!"p1 _ZTS19png_unknown_chunk_t", !10, i64 0}
!33 = !{!"p1 _ZTS15png_sPLT_struct", !10, i64 0}
!34 = !{!27, !5, i64 4}
!35 = !{!27, !6, i64 36}
!36 = !{!27, !6, i64 37}
!37 = !{!27, !6, i64 38}
!38 = !{!27, !6, i64 39}
!39 = !{!27, !6, i64 40}
!40 = !{!41}
!41 = distinct !{!41, !42, !"write_unknown_chunks: argument 0"}
!42 = distinct !{!42, !"write_unknown_chunks"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"write_unknown_chunks: argument 1"}
!45 = !{!27, !5, i64 264}
!46 = !{!27, !32, i64 256}
!47 = !{!24, !6, i64 24}
!48 = !{!6, !6, i64 0}
!49 = !{!9, !5, i64 1016}
!50 = !{!24, !12, i64 16}
!51 = !{!24, !14, i64 8}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!27, !5, i64 8}
!55 = !{!27, !5, i64 76}
!56 = !{!27, !5, i64 80}
!57 = !{!27, !18, i64 84}
!58 = !{!27, !18, i64 86}
!59 = !{!27, !18, i64 88}
!60 = !{!27, !18, i64 90}
!61 = !{!27, !18, i64 92}
!62 = !{!27, !18, i64 94}
!63 = !{!27, !18, i64 96}
!64 = !{!27, !18, i64 98}
!65 = !{!27, !5, i64 100}
!66 = !{!27, !5, i64 104}
!67 = !{!27, !6, i64 52}
!68 = !{!27, !6, i64 53}
!69 = !{!27, !6, i64 54}
!70 = !{!27, !6, i64 55}
!71 = !{!27, !14, i64 56}
!72 = !{!27, !14, i64 64}
!73 = !{!27, !5, i64 72}
!74 = !{!27, !5, i64 348}
!75 = !{!27, !5, i64 344}
!76 = !{!27, !17, i64 24}
!77 = !{!27, !18, i64 32}
!78 = !{!9, !5, i64 308}
!79 = !{!27, !18, i64 34}
!80 = !{!27, !14, i64 144}
!81 = distinct !{!81, !53}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!27, !14, i64 200}
!85 = !{!27, !5, i64 196}
!86 = !{!27, !30, i64 208}
!87 = !{!27, !5, i64 172}
!88 = !{!27, !5, i64 176}
!89 = !{!27, !6, i64 180}
!90 = !{!27, !14, i64 216}
!91 = !{!27, !5, i64 224}
!92 = !{!27, !5, i64 228}
!93 = !{!27, !6, i64 248}
!94 = !{!27, !6, i64 249}
!95 = !{!27, !14, i64 232}
!96 = !{!27, !31, i64 240}
!97 = !{!27, !6, i64 284}
!98 = !{!27, !14, i64 288}
!99 = !{!27, !14, i64 296}
!100 = !{!27, !5, i64 184}
!101 = !{!27, !5, i64 188}
!102 = !{!27, !6, i64 192}
!103 = !{!27, !5, i64 280}
!104 = !{!27, !33, i64 272}
!105 = distinct !{!105, !53}
!106 = !{!27, !5, i64 108}
!107 = !{!27, !28, i64 120}
!108 = !{!109, !5, i64 0}
!109 = !{!"png_text_struct", !5, i64 0, !14, i64 8, !14, i64 16, !12, i64 24, !12, i64 32, !14, i64 40, !14, i64 48}
!110 = !{!109, !14, i64 8}
!111 = !{!109, !14, i64 40}
!112 = !{!109, !14, i64 48}
!113 = !{!109, !14, i64 16}
!114 = distinct !{!114, !53}
!115 = !{!116}
!116 = distinct !{!116, !117, !"write_unknown_chunks: argument 0"}
!117 = distinct !{!117, !"write_unknown_chunks"}
!118 = !{!119}
!119 = distinct !{!119, !117, !"write_unknown_chunks: argument 1"}
!120 = !{!9, !6, i64 623}
!121 = !{!9, !5, i64 612}
!122 = !{!9, !18, i64 608}
!123 = distinct !{!123, !53}
!124 = !{!125}
!125 = distinct !{!125, !126, !"write_unknown_chunks: argument 0"}
!126 = distinct !{!126, !"write_unknown_chunks"}
!127 = !{!128}
!128 = distinct !{!128, !126, !"write_unknown_chunks: argument 1"}
!129 = !{!130, !5, i64 20}
!130 = !{!"tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !12, i64 40, !14, i64 48}
!131 = !{!29, !18, i64 0}
!132 = !{!130, !5, i64 16}
!133 = !{!29, !6, i64 2}
end_hunk_1
