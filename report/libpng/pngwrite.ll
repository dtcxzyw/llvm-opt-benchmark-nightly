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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !197
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.au = load i32, ptr %i.at, align 8, !tbaa !198 ; 2 uses
  store i32 %i.au, ptr %2, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !81  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 %i.aw, ptr %i.ax, align 2, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !82  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 17 ; 2 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !201
  %i.bb = mul i8 %i.az, %i.aw                     ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 19 ; 2 uses
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !202
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
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !203
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.bm, i1 false)
  %i.br = load i8, ptr %i.l, align 4, !tbaa !195
  %.not64 = icmp eq i8 %i.br, 0
  br i1 %.not64, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !194 ; 2 uses
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = icmp ult i8 %i.bt, 6
  br i1 %i.bv, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !46
  %i.by = and i32 %i.bx, 2
  %.not65 = icmp eq i32 %i.by, 0
  br i1 %.not65, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  call void @png_do_write_interlace(ptr noundef nonnull %2, ptr noundef nonnull %i.ca, i32 noundef %i.bu) #16
  %i.cb = load i32, ptr %2, align 8, !tbaa !199
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @png_write_finish_row(ptr noundef nonnull %0) #16
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !46
  %.not66 = icmp eq i32 %i.ce, 0
  br i1 %.not66, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @png_do_write_transformations(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cf = load i8, ptr %i.bc, align 1, !tbaa !202 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !204
  %.not67 = icmp eq i8 %i.cf, %i.ch
  br i1 %.not67, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 631
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !205
  %.not68 = icmp eq i8 %i.cf, %i.cj
  br i1 %.not68, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #17
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !28
  %i.cm = and i32 %i.cl, 4
  %.not69 = icmp eq i32 %i.cm, 0
  br i1 %.not69, label %png_do_write_intrapixel.exitthread-pre-split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !206
  %i.cp = icmp eq i8 %i.co, 64
  br i1 %i.cp, label %bb.ap, label %png_do_write_intrapixel.exitthread-pre-split

bb.ap:                                            ; preds = %bb.ao
  %i.cq = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.as, align 8, !tbaa !197 ; 4 uses
  %i.ct = and i8 %i.cs, 2
  %.not.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i, label %png_do_write_intrapixel.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cu = load i32, ptr %2, align 8, !tbaa !199   ; 7 uses
  %i.cv = load i8, ptr %i.ba, align 1, !tbaa !201
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
  %i.cx = load i8, ptr %.04661.i.lver.orig, align 1, !tbaa !40
  %i.cy = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40  ; 2 uses
  %i.da = sub i8 %i.cx, %i.cz
  store i8 %i.da, ptr %.04661.i.lver.orig, align 1, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !40
  %i.dd = sub i8 %i.dc, %i.cz
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !40
  %i.de = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig, i64 %.0.i ; 5 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !40  ; 2 uses
  %i.di = sub i8 %i.df, %i.dh
  store i8 %i.di, ptr %i.de, align 1, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 2 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !40
  %i.dl = sub i8 %i.dk, %i.dh
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 %.0.i ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa, label %.lr.ph62.i.lver.orig, !llvm.loop !192

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
  %.05059.i.lver.orig = phi i32 [ %i.ea, %.lr.ph.i.lver.orig ], [ 0, %bb.aw ]
  %.05158.i.lver.orig = phi ptr [ %i.eb, %.lr.ph.i.lver.orig ], [ %i.cr, %bb.aw ] ; 7 uses
  %3 = load i16, ptr %.05158.i.lver.orig, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %i.dn = zext i16 %4 to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 2
  %5 = load i16, ptr %i.dp, align 1
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %i.dq = zext i16 %6 to i32                      ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 4 ; 2 uses
  %8 = load i16, ptr %7, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %i.dr = zext i16 %9 to i32
  %10 = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 5
  %i.ds = sub nsw i32 %i.dn, %i.dq                ; 2 uses
  %i.dt = sub nsw i32 %i.dr, %i.dq                ; 2 uses
  %i.du = lshr i32 %i.ds, 8
  %i.dv = trunc i32 %i.du to i8
  store i8 %i.dv, ptr %.05158.i.lver.orig, align 1, !tbaa !40
  %i.dw = trunc i32 %i.ds to i8
  store i8 %i.dw, ptr %i.do, align 1, !tbaa !40
  %i.dx = lshr i32 %i.dt, 8
  %i.dy = trunc i32 %i.dx to i8
  store i8 %i.dy, ptr %7, align 1, !tbaa !40
  %i.dz = trunc i32 %i.dt to i8
  store i8 %i.dz, ptr %10, align 1, !tbaa !40
  %i.ea = add nuw i32 %.05059.i.lver.orig, 1      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.05158.i.lver.orig, i64 %.1.i
  %exitcond.not.i.lver.orig = icmp eq i32 %i.ea, %i.cu
  br i1 %exitcond.not.i.lver.orig, label %png_do_write_intrapixel.exitthread-pre-split, label %.lr.ph.i.lver.orig, !llvm.loop !193

png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa: ; preds = %.lr.ph62.i.lver.orig
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %png_do_write_intrapixel.exitthread-pre-split, label %.lr.ph62.i.lver.orig.epil.preheader

.lr.ph62.i.lver.orig.epil.preheader:              ; preds = %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa, %.lr.ph62.i.lver.orig.preheader
  %.04661.i.lver.orig.epil.init = phi ptr [ %i.cr, %.lr.ph62.i.lver.orig.preheader ], [ %i.dm, %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod86 = trunc i32 %i.cu to i1
  call void @llvm.assume(i1 %lcmp.mod86)
  %i.ec = load i8, ptr %.04661.i.lver.orig.epil.init, align 1, !tbaa !40
  %i.ed = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig.epil.init, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !40  ; 2 uses
  %i.ef = sub i8 %i.ec, %i.ee
  store i8 %i.ef, ptr %.04661.i.lver.orig.epil.init, align 1, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %.04661.i.lver.orig.epil.init, i64 2 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !40
  %i.ei = sub i8 %i.eh, %i.ee
  store i8 %i.ei, ptr %i.eg, align 1, !tbaa !40
  br label %png_do_write_intrapixel.exitthread-pre-split

png_do_write_intrapixel.exitthread-pre-split:     ; preds = %.lr.ph.i.lver.orig, %.lr.ph62.i.lver.orig.epil.preheader, %png_do_write_intrapixel.exitthread-pre-split.loopexit.unr-lcssa, %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.at, %bb.au, %bb.aw
  %.pr = load i8, ptr %i.as, align 8, !tbaa !197
  br label %png_do_write_intrapixel.exit

png_do_write_intrapixel.exit:                     ; preds = %png_do_write_intrapixel.exitthread-pre-split, %bb.ap
  %i.ej = phi i8 [ %.pr, %png_do_write_intrapixel.exitthread-pre-split ], [ %i.cs, %bb.ap ]
  %i.ek = icmp eq i8 %i.ej, 3
  br i1 %i.ek, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %png_do_write_intrapixel.exit
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.em = load i32, ptr %i.el, align 4, !tbaa !58
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %png_do_write_intrapixel.exit
  call void @png_write_find_filter(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !84 ; 2 uses
  %.not70 = icmp eq ptr %i.ep, null
  br i1 %.not70, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = load i32, ptr %i.b, align 4, !tbaa !79
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.es = load i8, ptr %i.er, align 1, !tbaa !194
  %i.et = zext i8 %i.es to i32
  call void %i.ep(ptr noundef nonnull %0, i32 noundef %i.eq, i32 noundef %i.et) #16
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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !85
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.f = phi i32 [ %i.l, %._crit_edge ], [ 1, %.preheader.lr.ph ]
  %.01116 = phi i32 [ %i.m, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.015 = phi ptr [ %i.i, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %.01214 = phi i32 [ %i.h, %.lr.ph ], [ 0, %.preheader ]
  %i.g = load ptr, ptr %.015, align 8, !tbaa !78
  tail call void @png_write_row(ptr noundef nonnull %0, ptr noundef %i.g)
  %i.h = add nuw i32 %.01214, 1                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.j = load i32, ptr %i.d, align 8, !tbaa !85   ; 2 uses
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.l = phi i32 [ 0, %.preheader ], [ %i.j, %.lr.ph ]
  %i.m = add nuw nsw i32 %.01116, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !2

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
  store i32 %i.b, ptr %i.c, align 8, !tbaa !207
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.e = load i32, ptr %i.d, align 4, !tbaa !208
  %.not = icmp ult i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_compress_IDAT(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i32 noundef 2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.f, align 4, !tbaa !209
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 21 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_destroy_info_struct(ptr noundef nonnull %i.a, ptr noundef %1) #16
  store ptr null, ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77, !alias.scope !212
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !alias.scope !212
  tail call void @png_free(ptr noundef nonnull %i.a, ptr noundef %i.i) #16
end_hunk_0
begin_hunk_1_@png_write_image_8bit:bb.a
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bc, %i.bf
  %i.bh = lshr i32 %i.bg, 12
  %i.bi = add nuw nsw i32 %i.bh, %i.bb
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8
  br label %png_unpremultiply.exit.us92

png_unpremultiply.exit.us92:                      ; preds = %bb.g, %bb.f, %.split.us88
  %.0.i.us = phi i8 [ -1, %.split.us88 ], [ %i.bk, %bb.g ], [ 0, %bb.f ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.06684.us, i64 1
  store i8 %.0.i.us, ptr %.06684.us, align 1, !tbaa !40
  br i1 %.not124, label %.split81.us93, label %.split.us88.1

.split.us88.1:                                    ; preds = %png_unpremultiply.exit.us92
  %i.bm = getelementptr inbounds nuw i8, ptr %.06783.us, i64 4 ; 2 uses
  %i.bn = load i16, ptr %i.aq, align 2, !tbaa !115 ; 3 uses
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %.not103.1 = icmp ult i16 %i.bn, %.fr
  br i1 %.not103.1, label %bb.h, label %png_unpremultiply.exit.us92.1

bb.h:                                             ; preds = %.split.us88.1
  %.not.i.us.1 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.us.1, label %png_unpremultiply.exit.us92.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = mul i32 %.065.us, %i.bo
  %i.bq = add i32 %i.bp, 64
  %i.br = lshr i32 %i.bq, 7
  %i.bs = mul nuw nsw i32 %i.bo, 255
  %.015.i.us.1 = select i1 %i.al, i32 %i.br, i32 %i.bs ; 2 uses
  %i.bt = lshr i32 %.015.i.us.1, 15
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !115
  %i.bx = zext i16 %i.bw to i32
  %i.by = and i32 %.015.i.us.1, 32767
  %i.bz = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.bu
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.by, %i.cb
  %i.cd = lshr i32 %i.cc, 12
  %i.ce = add nuw nsw i32 %i.cd, %i.bx
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = trunc i32 %i.cf to i8
  br label %png_unpremultiply.exit.us92.1

png_unpremultiply.exit.us92.1:                    ; preds = %bb.i, %bb.h, %.split.us88.1
  %.0.i.us.1 = phi i8 [ -1, %.split.us88.1 ], [ %i.cg, %bb.i ], [ 0, %bb.h ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.06684.us, i64 2 ; 2 uses
  store i8 %.0.i.us.1, ptr %i.bl, align 1, !tbaa !40
  %i.ci = load i16, ptr %i.bm, align 2, !tbaa !115 ; 3 uses
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %.not103.2 = icmp ult i16 %i.ci, %.fr
  br i1 %.not103.2, label %bb.j, label %png_unpremultiply.exit.us92.2

bb.j:                                             ; preds = %png_unpremultiply.exit.us92.1
  %.not.i.us.2 = icmp eq i16 %i.ci, 0
  br i1 %.not.i.us.2, label %png_unpremultiply.exit.us92.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = mul i32 %.065.us, %i.cj
  %i.cl = add i32 %i.ck, 64
  %i.cm = lshr i32 %i.cl, 7
  %i.cn = mul nuw nsw i32 %i.cj, 255
  %.015.i.us.2 = select i1 %i.al, i32 %i.cm, i32 %i.cn ; 2 uses
  %i.co = lshr i32 %.015.i.us.2, 15
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !115
  %i.cs = zext i16 %i.cr to i32
  %i.ct = and i32 %.015.i.us.2, 32767
  %i.cu = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.cp
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !40
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.ct, %i.cw
  %i.cy = lshr i32 %i.cx, 12
  %i.cz = add nuw nsw i32 %i.cy, %i.cs
  %i.da = lshr i32 %i.cz, 8
  %i.db = trunc i32 %i.da to i8
  br label %png_unpremultiply.exit.us92.2

png_unpremultiply.exit.us92.2:                    ; preds = %bb.k, %bb.j, %png_unpremultiply.exit.us92.1
  %.0.i.us.2 = phi i8 [ -1, %png_unpremultiply.exit.us92.1 ], [ %i.db, %bb.k ], [ 0, %bb.j ]
  store i8 %.0.i.us.2, ptr %i.ch, align 1, !tbaa !40
  br label %.split81.us93

.split81.us93:                                    ; preds = %png_unpremultiply.exit.us92, %png_unpremultiply.exit.us92.2, %png_unpremultiply.exit.us.us.preheader
  %.us-phi.us = phi ptr [ %scevgep, %png_unpremultiply.exit.us.us.preheader ], [ %.06783.us, %png_unpremultiply.exit.us92 ], [ %i.bm, %png_unpremultiply.exit.us92.2 ]
  %.us-phi82.us = phi ptr [ %scevgep109, %png_unpremultiply.exit.us.us.preheader ], [ %.06684.us, %png_unpremultiply.exit.us92 ], [ %i.ch, %png_unpremultiply.exit.us92.2 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.us-phi.us, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.us-phi82.us, i64 2 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.v
  br i1 %i.de, label %bb.c, label %._crit_edge.us, !llvm.loop !244

._crit_edge.us:                                   ; preds = %.split81.us93
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !118
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.df)
  %i.dg = load i64, ptr %i.w, align 8, !tbaa !117
  %i.dh = sdiv i64 %i.dg, 2
  %i.di = getelementptr inbounds [2 x i8], ptr %.17486.us, i64 %i.dh
  %i.dj = add i32 %.07087.us, -1                  ; 2 uses
  %.not77.us = icmp eq i32 %i.dj, 0
  br i1 %.not77.us, label %.loopexit, label %.preheader78.us, !llvm.loop !245

.preheader78:                                     ; preds = %.preheader78.lr.ph, %.preheader78
  %.07087 = phi i32 [ %i.dl, %.preheader78 ], [ %i.i, %.preheader78.lr.ph ]
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !118
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.dk)
  %i.dl = add i32 %.07087, -1                     ; 2 uses
  %.not77 = icmp eq i32 %i.dl, 0
  br i1 %.not77, label %.loopexit, label %.preheader78, !llvm.loop !245

bb.l:                                             ; preds = %bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !113 ; 2 uses
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
  %.097.us = phi ptr [ %i.g, %.preheader.us ], [ %i.ek, %bb.m ] ; 2 uses
  %.06396.us = phi ptr [ %.299.us, %.preheader.us ], [ %i.ds, %bb.m ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.06396.us, i64 2
  %i.dt = load i16, ptr %.06396.us, align 2, !tbaa !115
  %i.du = zext i16 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.du, 255              ; 2 uses
  %i.dw = lshr i32 %i.dv, 15
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !115
  %i.ea = zext i16 %i.dz to i32
  %i.eb = and i32 %i.dv, 32767
  %i.ec = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.dx
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !40
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.eb, %i.ee
  %i.eg = lshr i32 %i.ef, 12
  %i.eh = add nuw nsw i32 %i.eg, %i.ea
  %i.ei = lshr i32 %i.eh, 8
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.097.us, i64 1 ; 2 uses
  store i8 %i.ej, ptr %.097.us, align 1, !tbaa !40
  %i.el = icmp ult ptr %i.ek, %i.dq
  br i1 %i.el, label %bb.m, label %._crit_edge.us101, !llvm.loop !246

._crit_edge.us101:                                ; preds = %bb.m
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.g)
  %i.em = load i64, ptr %i.dr, align 8, !tbaa !117
  %i.en = sdiv i64 %i.em, 2
  %i.eo = getelementptr inbounds [2 x i8], ptr %.299.us, i64 %i.en
  %i.ep = add i32 %.171100.us, -1                 ; 2 uses
  %.not75.us = icmp eq i32 %i.ep, 0
  br i1 %.not75.us, label %.loopexit, label %.preheader.us, !llvm.loop !247

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.171100 = phi i32 [ %i.eq, %.preheader ], [ %i.i, %.preheader.lr.ph ]
  tail call void @png_write_row(ptr noundef %i.c, ptr noundef %i.g)
  %i.eq = add i32 %.171100, -1                    ; 2 uses
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

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

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = distinct !{!2, !44, !86}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS13__jmp_buf_tag", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS14internal_state", !11, i64 0}
!16 = !{!"z_stream_s", !14, i64 0, !8, i64 8, !13, i64 16, !14, i64 24, !8, i64 32, !13, i64 40, !14, i64 48, !15, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !13, i64 96, !13, i64 104}
!17 = !{!"p1 _ZTS22png_compression_buffer", !11, i64 0}
!18 = !{!"p1 _ZTS16png_color_struct", !11, i64 0}
!19 = !{!"short", !7, i64 0}
!20 = !{!"png_color_16_struct", !7, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8}
!21 = !{!"png_xy", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p2 short", !22, i64 0}
!24 = !{!"png_color_8_struct", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4}
!25 = !{!"png_unknown_chunk_t", !7, i64 0, !14, i64 8, !13, i64 16, !7, i64 24}
!26 = !{!"png_struct_def", !7, i64 0, !11, i64 200, !12, i64 208, !13, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !7, i64 296, !7, i64 297, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !16, i64 320, !17, i64 432, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !13, i64 528, !8, i64 536, !8, i64 540, !8, i64 544, !14, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !13, i64 584, !8, i64 592, !8, i64 596, !18, i64 600, !19, i64 608, !8, i64 612, !19, i64 616, !7, i64 618, !7, i64 619, !7, i64 620, !7, i64 621, !7, i64 622, !7, i64 623, !7, i64 624, !7, i64 625, !7, i64 626, !7, i64 627, !7, i64 628, !7, i64 629, !7, i64 630, !7, i64 631, !7, i64 632, !19, i64 634, !7, i64 636, !8, i64 640, !20, i64 644, !20, i64 654, !11, i64 664, !8, i64 672, !8, i64 676, !21, i64 680, !8, i64 712, !8, i64 716, !8, i64 720, !8, i64 724, !8, i64 728, !14, i64 736, !23, i64 744, !14, i64 752, !14, i64 760, !23, i64 768, !23, i64 776, !24, i64 784, !24, i64 789, !14, i64 800, !20, i64 808, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !8, i64 896, !8, i64 900, !13, i64 904, !13, i64 912, !13, i64 920, !13, i64 928, !8, i64 936, !8, i64 940, !14, i64 944, !14, i64 952, !8, i64 960, !7, i64 964, !8, i64 996, !11, i64 1000, !11, i64 1008, !8, i64 1016, !8, i64 1020, !14, i64 1024, !7, i64 1032, !7, i64 1033, !19, i64 1034, !19, i64 1036, !14, i64 1040, !8, i64 1048, !7, i64 1052, !11, i64 1056, !11, i64 1064, !11, i64 1072, !14, i64 1080, !14, i64 1088, !14, i64 1096, !7, i64 1104, !8, i64 1108, !8, i64 1112, !8, i64 1116, !13, i64 1120, !25, i64 1128, !13, i64 1160, !14, i64 1168, !13, i64 1176, !8, i64 1184, !8, i64 1188, !14, i64 1192, !7, i64 1200}
!27 = !{!26, !8, i64 300}
!28 = !{!26, !8, i64 1048}
!29 = !{!"p1 _ZTS15png_text_struct", !11, i64 0}
!30 = !{!"png_time_struct", !19, i64 0, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6}
!31 = !{!"p1 short", !11, i64 0}
!32 = !{!"p2 omnipotent char", !22, i64 0}
!33 = !{!"p1 _ZTS19png_unknown_chunk_t", !11, i64 0}
!34 = !{!"p1 _ZTS15png_sPLT_struct", !11, i64 0}
!35 = !{!"png_info_def", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !18, i64 24, !19, i64 32, !19, i64 34, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44, !7, i64 52, !7, i64 53, !7, i64 54, !7, i64 55, !14, i64 56, !14, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !19, i64 84, !19, i64 86, !19, i64 88, !19, i64 90, !19, i64 92, !19, i64 94, !19, i64 96, !19, i64 98, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !29, i64 120, !30, i64 128, !24, i64 136, !14, i64 144, !20, i64 152, !20, i64 162, !8, i64 172, !8, i64 176, !7, i64 180, !8, i64 184, !8, i64 188, !7, i64 192, !8, i64 196, !14, i64 200, !31, i64 208, !14, i64 216, !8, i64 224, !8, i64 228, !14, i64 232, !32, i64 240, !7, i64 248, !7, i64 249, !8, i64 252, !33, i64 256, !8, i64 264, !34, i64 272, !8, i64 280, !7, i64 284, !14, i64 288, !14, i64 296, !32, i64 304, !21, i64 312, !8, i64 344, !8, i64 348}
!36 = !{!35, !7, i64 37}
!37 = !{!35, !8, i64 264}
!38 = !{!35, !33, i64 256}
!39 = !{!25, !7, i64 24}
!40 = !{!7, !7, i64 0}
!41 = !{!26, !8, i64 1016}
!42 = !{!25, !13, i64 16}
!43 = !{!25, !14, i64 8}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!35, !8, i64 8}
!46 = !{!26, !8, i64 308}
!47 = !{!35, !14, i64 200}
!48 = !{!35, !8, i64 196}
!49 = !{!35, !8, i64 108}
!50 = !{!35, !29, i64 120}
!51 = !{!"png_text_struct", !8, i64 0, !14, i64 8, !14, i64 16, !13, i64 24, !13, i64 32, !14, i64 40, !14, i64 48}
!52 = !{!51, !8, i64 0}
!53 = !{!51, !14, i64 8}
!54 = !{!51, !14, i64 40}
!55 = !{!51, !14, i64 48}
!56 = !{!51, !14, i64 16}
!57 = !{!26, !7, i64 623}
!58 = !{!26, !8, i64 612}
!59 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !13, i64 40, !14, i64 48}
!60 = !{!59, !8, i64 20}
!61 = !{!30, !19, i64 0}
!62 = !{!59, !8, i64 16}
!63 = !{!30, !7, i64 2}
!64 = !{!59, !8, i64 12}
!65 = !{!30, !7, i64 3}
!66 = !{!59, !8, i64 8}
!67 = !{!30, !7, i64 4}
!68 = !{!59, !8, i64 4}
!69 = !{!30, !7, i64 5}
!70 = !{!59, !8, i64 0}
!71 = !{!30, !7, i64 6}
!72 = !{!13, !13, i64 0}
!73 = !{!8, !8, i64 0}
!74 = !{!26, !8, i64 480}
!75 = !{!26, !8, i64 476}
!76 = !{!26, !8, i64 472}
!77 = !{!26, !8, i64 304}
!78 = !{!14, !14, i64 0}
!79 = !{!26, !8, i64 540}
!80 = !{!26, !8, i64 508}
!81 = !{!26, !7, i64 628}
!82 = !{!26, !7, i64 625}
!83 = !{!26, !14, i64 560}
!84 = !{!26, !11, i64 832}
!85 = !{!26, !8, i64 512}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = !{!"p1 _ZTS14png_struct_def", !11, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!26, !14, i64 552}
!90 = !{!26, !14, i64 568}
!91 = !{!26, !14, i64 576}
!92 = !{!26, !7, i64 622}
!93 = !{!26, !8, i64 444}
!94 = !{!"p1 _ZTS11png_control", !11, i64 0}
!95 = !{!"", !94, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !7, i64 36}
!96 = !{!95, !8, i64 8}
!97 = !{!"", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !8, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !14, i64 64, !13, i64 72, !13, i64 80}
!98 = !{!97, !11, i64 0}
!99 = !{!97, !11, i64 8}
!100 = !{!97, !8, i64 16}
!101 = !{!97, !11, i64 24}
!102 = !{!97, !8, i64 32}
!103 = !{!97, !14, i64 64}
!104 = !{!97, !13, i64 72}
!105 = !{!97, !13, i64 80}
!106 = !{!"p1 _ZTS12png_info_def", !11, i64 0}
!107 = !{!"png_control", !87, i64 0, !106, i64 8, !11, i64 16, !14, i64 24, !13, i64 32, !8, i64 40, !8, i64 40}
!108 = !{!107, !87, i64 0}
!109 = !{!107, !106, i64 8}
!110 = !{!95, !94, i64 0}
!111 = !{!26, !11, i64 264}
!112 = !{!95, !8, i64 20}
!113 = !{!95, !8, i64 12}
!114 = !{!95, !8, i64 16}
!115 = !{!19, !19, i64 0}
!116 = !{!97, !11, i64 40}
!117 = !{!97, !13, i64 56}
!118 = !{!97, !11, i64 48}
!119 = distinct !{!119, !"write_unknown_chunks"}
!120 = distinct !{!120, !119, !"write_unknown_chunks: argument 0"}
!121 = distinct !{!121, !119, !"write_unknown_chunks: argument 1"}
!122 = !{!35, !8, i64 0}
!123 = !{!35, !8, i64 4}
!124 = !{!35, !7, i64 36}
!125 = !{!35, !7, i64 38}
!126 = !{!35, !7, i64 39}
!127 = !{!35, !7, i64 40}
!128 = !{!120}
!129 = !{!121}
!130 = !{!35, !8, i64 76}
!131 = !{!35, !8, i64 80}
!132 = !{!35, !19, i64 84}
!133 = !{!35, !19, i64 86}
!134 = !{!35, !19, i64 88}
!135 = !{!35, !19, i64 90}
!136 = !{!35, !19, i64 92}
!137 = !{!35, !19, i64 94}
!138 = !{!35, !19, i64 96}
!139 = !{!35, !19, i64 98}
!140 = !{!35, !8, i64 100}
!141 = !{!35, !8, i64 104}
!142 = !{!35, !7, i64 52}
!143 = !{!35, !7, i64 53}
!144 = !{!35, !7, i64 54}
!145 = !{!35, !7, i64 55}
!146 = !{!35, !14, i64 56}
!147 = !{!35, !14, i64 64}
!148 = !{!35, !8, i64 72}
!149 = !{!35, !8, i64 348}
!150 = !{!35, !8, i64 344}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !162}
!153 = distinct !{!153, !44}
!154 = distinct !{!154, !44}
!155 = distinct !{!155, !"write_unknown_chunks"}
!156 = distinct !{!156, !155, !"write_unknown_chunks: argument 0"}
!157 = distinct !{!157, !155, !"write_unknown_chunks: argument 1"}
!158 = !{!35, !18, i64 24}
!159 = !{!35, !19, i64 32}
!160 = !{!35, !19, i64 34}
!161 = !{!35, !14, i64 144}
!162 = !{!"llvm.loop.unroll.disable"}
!163 = !{!35, !31, i64 208}
!164 = !{!35, !8, i64 172}
!165 = !{!35, !8, i64 176}
!166 = !{!35, !7, i64 180}
!167 = !{!35, !14, i64 216}
!168 = !{!35, !8, i64 224}
!169 = !{!35, !8, i64 228}
end_hunk_1
