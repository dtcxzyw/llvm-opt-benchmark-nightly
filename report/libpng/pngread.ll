Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngread?download=true
inline.NumInlined: 35
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@png_read_row:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.ab:                                            ; preds = %bb.i
  %i.ay = and i32 %i.af, 3
  %.not109 = icmp eq i32 %i.ay, 2
  br i1 %.not109, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not110 = icmp eq ptr %2, null
  %i.az = and i32 %i.af, 2
  %.not111 = icmp eq i32 %i.az, 0
  %or.cond132 = select i1 %.not110, i1 true, i1 %.not111
  br i1 %or.cond132, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.af:                                            ; preds = %bb.i
  %i.ba = and i32 %i.af, 1
  %.not107 = icmp eq i32 %i.ba, 0
  br i1 %.not107, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !107
  %i.bd = icmp ult i32 %i.bc, 2
  br i1 %i.bd, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not108 = icmp eq ptr %2, null
  br i1 %.not108, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.ak:                                            ; preds = %bb.i
  %i.be = and i32 %i.af, 1
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @png_read_finish_row(ptr noundef nonnull %0) #13
  br label %bb.bx

bb.am:                                            ; preds = %bb.j, %bb.o, %bb.s, %bb.x, %bb.ab, %bb.ag, %bb.ak, %bb.h, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = and i32 %i.bh, 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !108
  store i8 -1, ptr %i.bl, align 1, !tbaa !32
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !108
  %i.bn = load i64, ptr %i.ad, align 8, !tbaa !104
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  tail call void @png_read_IDAT_data(ptr noundef nonnull %0, ptr noundef %i.bm, i64 noundef %i.bo) #13
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !108 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32  ; 3 uses
  %i.br = zext nneg i8 %i.bq to i32
  %.not121 = icmp eq i8 %i.bq, 0
  br i1 %.not121, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bs = icmp ult i8 %i.bq, 5
  br i1 %i.bs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !109
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  call void @png_read_filter_row(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bw, i32 noundef %i.br) #13
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !108
  %.pre135 = load i64, ptr %i.ad, align 8, !tbaa !104
  %.pre136 = add i64 %.pre135, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  unreachable

bb.as:                                            ; preds = %bb.aq, %bb.ao
  %.pre-phi = phi i64 [ %.pre136, %bb.aq ], [ %i.bo, %bb.ao ]
  %i.bx = phi ptr [ %.pre, %bb.aq ], [ %i.bp, %bb.ao ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bx, i64 %.pre-phi, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !110
  %i.cc = and i32 %i.cb, 4
  %.not122 = icmp eq i32 %i.cc, 0
  br i1 %.not122, label %png_do_read_intrapixel.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !111
  %i.cf = icmp eq i8 %i.ce, 64
  br i1 %i.cf, label %bb.au, label %png_do_read_intrapixel.exit

bb.au:                                            ; preds = %bb.at
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  %i.ci = load i8, ptr %i.j, align 8, !tbaa !98   ; 3 uses
  %i.cj = and i8 %i.ci, 2
  %.not.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i, label %png_do_read_intrapixel.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ck = load i32, ptr %3, align 8, !tbaa !97    ; 7 uses
  %i.cl = load i8, ptr %i.m, align 1, !tbaa !99
  switch i8 %i.cl, label %png_do_read_intrapixel.exit [
    i8 8, label %bb.aw
    i8 16, label %bb.az
  ]

bb.aw:                                            ; preds = %bb.av
  switch i8 %i.ci, label %png_do_read_intrapixel.exit [
    i8 2, label %bb.ay
    i8 6, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i = phi i64 [ 4, %bb.ax ], [ 3, %bb.aw ]    ; 2 uses
  %.not65.i = icmp eq i32 %i.ck, 0
  br i1 %.not65.i, label %png_do_read_intrapixel.exit, label %.lr.ph63.i.lver.orig.preheader

.lr.ph63.i.lver.orig.preheader:                   ; preds = %bb.ay
  %xtraiter = and i32 %i.ck, 1
  %i.cm = icmp eq i32 %i.ck, 1
  br i1 %i.cm, label %.lr.ph63.i.lver.orig.epil.preheader, label %.lr.ph63.i.lver.orig.preheader.new

.lr.ph63.i.lver.orig.preheader.new:               ; preds = %.lr.ph63.i.lver.orig.preheader
  %unroll_iter = and i32 %i.ck, -2
  br label %.lr.ph63.i.lver.orig

.lr.ph63.i.lver.orig:                             ; preds = %.lr.ph63.i.lver.orig, %.lr.ph63.i.lver.orig.preheader.new
  %.04662.i.lver.orig = phi ptr [ %i.ch, %.lr.ph63.i.lver.orig.preheader.new ], [ %i.cy, %.lr.ph63.i.lver.orig ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph63.i.lver.orig.preheader.new ], [ %niter.next.1, %.lr.ph63.i.lver.orig ]
  %i.cn = load i8, ptr %.04662.i.lver.orig, align 1, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32  ; 2 uses
  %.narrow.i.lver.orig = add i8 %i.cp, %i.cn
  store i8 %.narrow.i.lver.orig, ptr %.04662.i.lver.orig, align 1, !tbaa !32
  %i.cq = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig, i64 2 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %.narrow55.i.lver.orig = add i8 %i.cr, %i.cp
  store i8 %.narrow55.i.lver.orig, ptr %i.cq, align 1, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig, i64 %.0.i ; 5 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !32  ; 2 uses
  %.narrow.i.lver.orig.1 = add i8 %i.cv, %i.ct
  store i8 %.narrow.i.lver.orig.1, ptr %i.cs, align 1, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %.narrow55.i.lver.orig.1 = add i8 %i.cx, %i.cv
  store i8 %.narrow55.i.lver.orig.1, ptr %i.cw, align 1, !tbaa !32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.0.i ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %png_do_read_intrapixel.exit.loopexit.unr-lcssa, label %.lr.ph63.i.lver.orig, !llvm.loop !93

bb.az:                                            ; preds = %bb.av
  switch i8 %i.ci, label %png_do_read_intrapixel.exit [
    i8 2, label %bb.bb
    i8 6, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1.i = phi i64 [ 8, %bb.ba ], [ 6, %bb.az ]
  %.not64.i = icmp eq i32 %i.ck, 0
  br i1 %.not64.i, label %png_do_read_intrapixel.exit, label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %bb.bb, %.lr.ph.i.lver.orig
  %.05060.i.lver.orig = phi i32 [ %i.dm, %.lr.ph.i.lver.orig ], [ 0, %bb.bb ]
  %.05159.i.lver.orig = phi ptr [ %i.dn, %.lr.ph.i.lver.orig ], [ %i.ch, %bb.bb ] ; 7 uses
  %4 = load i16, ptr %.05159.i.lver.orig, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %4)
  %i.cz = zext i16 %5 to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.05159.i.lver.orig, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %.05159.i.lver.orig, i64 2
  %6 = load i16, ptr %i.db, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %i.dc = zext i16 %7 to i32                      ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.05159.i.lver.orig, i64 4 ; 2 uses
  %9 = load i16, ptr %8, align 1
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %i.dd = zext i16 %10 to i32
  %11 = getelementptr inbounds nuw i8, ptr %.05159.i.lver.orig, i64 5
  %i.de = add nuw nsw i32 %i.dc, %i.cz            ; 2 uses
  %i.df = add nuw nsw i32 %i.dd, %i.dc            ; 2 uses
  %i.dg = lshr i32 %i.de, 8
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %.05159.i.lver.orig, align 1, !tbaa !32
  %i.di = trunc i32 %i.de to i8
  store i8 %i.di, ptr %i.da, align 1, !tbaa !32
  %i.dj = lshr i32 %i.df, 8
  %i.dk = trunc i32 %i.dj to i8
  store i8 %i.dk, ptr %8, align 1, !tbaa !32
  %i.dl = trunc i32 %i.df to i8
  store i8 %i.dl, ptr %11, align 1, !tbaa !32
  %i.dm = add nuw i32 %.05060.i.lver.orig, 1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05159.i.lver.orig, i64 %.1.i
  %exitcond.not.i.lver.orig = icmp eq i32 %i.dm, %i.ck
  br i1 %exitcond.not.i.lver.orig, label %png_do_read_intrapixel.exit, label %.lr.ph.i.lver.orig, !llvm.loop !94

png_do_read_intrapixel.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph63.i.lver.orig
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %png_do_read_intrapixel.exit, label %.lr.ph63.i.lver.orig.epil.preheader

.lr.ph63.i.lver.orig.epil.preheader:              ; preds = %png_do_read_intrapixel.exit.loopexit.unr-lcssa, %.lr.ph63.i.lver.orig.preheader
  %.04662.i.lver.orig.epil.init = phi ptr [ %i.ch, %.lr.ph63.i.lver.orig.preheader ], [ %i.cy, %png_do_read_intrapixel.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod156 = trunc i32 %i.ck to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.do = load i8, ptr %.04662.i.lver.orig.epil.init, align 1, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig.epil.init, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !32  ; 2 uses
  %.narrow.i.lver.orig.epil = add i8 %i.dq, %i.do
  store i8 %.narrow.i.lver.orig.epil, ptr %.04662.i.lver.orig.epil.init, align 1, !tbaa !32
  %i.dr = getelementptr inbounds nuw i8, ptr %.04662.i.lver.orig.epil.init, i64 2 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !32
  %.narrow55.i.lver.orig.epil = add i8 %i.ds, %i.dq
  store i8 %.narrow55.i.lver.orig.epil, ptr %i.dr, align 1, !tbaa !32
  br label %png_do_read_intrapixel.exit

png_do_read_intrapixel.exit:                      ; preds = %.lr.ph.i.lver.orig, %.lr.ph63.i.lver.orig.epil.preheader, %png_do_read_intrapixel.exit.loopexit.unr-lcssa, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !31
  %.not123 = icmp eq i32 %i.du, 0
  br i1 %.not123, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %png_do_read_intrapixel.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !34
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc, %png_do_read_intrapixel.exit
  call void @png_do_read_transformations(ptr noundef nonnull %0, ptr noundef nonnull %3) #13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 631 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !112 ; 2 uses
  %i.ea = icmp eq i8 %i.dz, 0
  %i.eb = load i8, ptr %i.s, align 1, !tbaa !103  ; 3 uses
  br i1 %i.ea, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !112
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 630
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !113
  %i.ee = icmp ugt i8 %i.eb, %i.ed
  br i1 %i.ee, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  unreachable

bb.bh:                                            ; preds = %bb.be
  %.not124 = icmp eq i8 %i.dz, %i.eb
  br i1 %.not124, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #14
  unreachable

bb.bj:                                            ; preds = %bb.bh, %bb.bf
  %i.ef = load i8, ptr %i.ag, align 4, !tbaa !30
  %.not125 = icmp eq i8 %i.ef, 0
  br i1 %.not125, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eg = load i32, ptr %i.dt, align 4, !tbaa !31 ; 2 uses
  %i.eh = and i32 %i.eg, 2
  %.not126 = icmp eq i32 %i.eh, 0
  br i1 %.not126, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !106 ; 2 uses
  %i.ek = icmp ult i8 %i.ej, 6
  br i1 %i.ek, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.el = zext nneg i8 %i.ej to i32
  %i.em = load ptr, ptr %i.bk, align 8, !tbaa !108
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  call void @png_do_read_interlace(ptr noundef nonnull %3, ptr noundef nonnull %i.en, i32 noundef %i.el, i32 noundef %i.eg) #13
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not129 = icmp eq ptr %2, null
  br i1 %.not129, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #13
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.not130 = icmp eq ptr %1, null
  br i1 %.not130, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #13
  br label %bb.bv

bb.br:                                            ; preds = %bb.bk, %bb.bj
  %.not127 = icmp eq ptr %1, null
  br i1 %.not127, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef -1) #13
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.not128 = icmp eq ptr %2, null
  br i1 %.not128, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @png_combine_row(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef -1) #13
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bp, %bb.bq
  call void @png_read_finish_row(ptr noundef nonnull %0) #13
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !35 ; 2 uses
  %.not131 = icmp eq ptr %i.ep, null
  br i1 %.not131, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eq = load i32, ptr %i.ae, align 4, !tbaa !105
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.es = load i8, ptr %i.er, align 1, !tbaa !106
  %i.et = zext i8 %i.es to i32
  call void %i.ep(ptr noundef nonnull %0, i32 noundef %i.eq, i32 noundef %i.et) #13
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.a, %bb.al, %bb.aj, %bb.ae, %bb.aa, %bb.v, %bb.r, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

declare void @png_combine_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @png_read_finish_row(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_read_IDAT_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @png_read_filter_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @png_do_read_transformations(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_do_read_interlace(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @png_read_rows(ptr noalias noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  %i.c = icmp ne ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not52 = icmp eq i32 %3, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader, %.lr.ph50
  %.049 = phi i32 [ %i.h, %.lr.ph50 ], [ 0, %.preheader ]
  %.02948 = phi ptr [ %i.d, %.lr.ph50 ], [ %1, %.preheader ] ; 2 uses
  %.03147 = phi ptr [ %i.f, %.lr.ph50 ], [ %2, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.02948, i64 8
  %i.e = load ptr, ptr %.02948, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %.03147, i64 8
  %i.g = load ptr, ptr %.03147, align 8, !tbaa !36
  tail call void @png_read_row(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef %i.g)
  %i.h = add nuw i32 %.049, 1                     ; 2 uses
  %exitcond56.not = icmp eq i32 %i.h, %3
  br i1 %exitcond56.not, label %.loopexit, label %.lr.ph50, !llvm.loop !114

bb.c:                                             ; preds = %bb.b
  br i1 %i.b, label %.preheader38, label %bb.d

.preheader38:                                     ; preds = %bb.c
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader38, %.lr.ph46
  %.145 = phi i32 [ %i.k, %.lr.ph46 ], [ 0, %.preheader38 ]
  %.13044 = phi ptr [ %i.j, %.lr.ph46 ], [ %1, %.preheader38 ] ; 2 uses
  %i.i = load ptr, ptr %.13044, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@png_image_read_background:bb.a
.loopexit212.us:                                  ; preds = %._crit_edge.split.us.us.us, %bb.ad, %bb.ab
  %i.ho = add nuw nsw i32 %.1192219.us, 1         ; 2 uses
  %exitcond240.not = icmp eq i32 %i.ho, %.0190
  br i1 %exitcond240.not, label %.loopexit211, label %.split.us, !llvm.loop !211

.split:                                           ; preds = %bb.aa, %.loopexit212
  %.1192219 = phi i32 [ %i.jr, %.loopexit212 ], [ 0, %bb.aa ] ; 8 uses
  %i.hp = load i8, ptr %i.t, align 4, !tbaa !30
  %i.hq = icmp eq i8 %i.hp, 1
  br i1 %i.hq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.split
  %i.hr = icmp samesign ugt i32 %.1192219, 1
  %i.hs = sub nuw nsw i32 7, %.1192219
  %i.ht = lshr i32 %i.hs, 1                       ; 2 uses
  %i.hu = select i1 %i.hr, i32 %i.ht, i32 3       ; 2 uses
  %notmask = shl nsw i32 -1, %i.hu
  %i.hv = xor i32 %notmask, -1
  %i.hw = and i32 %.1192219, 1                    ; 2 uses
  %i.hx = add nuw nsw i32 %.1192219, 1
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = sub nsw i32 3, %i.hy
  %i.ia = shl nuw nsw i32 %i.hw, %i.hz
  %i.ib = and i32 %i.ia, 7                        ; 2 uses
  %i.ic = add i32 %i.i, %i.hv
  %i.id = sub i32 %i.ic, %i.ib
  %i.ie = lshr i32 %i.id, %i.hu
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %.loopexit212, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ig = shl nuw nsw i32 %i.fc, %i.ht
  %i.ih = xor i32 %i.hw, 1
  %i.ii = lshr i32 %.1192219, 1
  %i.ij = sub nsw i32 3, %i.ii
  %i.ik = shl nuw nsw i32 %i.ih, %i.ij
  %i.il = and i32 %i.ik, 7
  %i.im = icmp samesign ugt i32 %.1192219, 2
  %i.in = add nsw i32 %.1192219, -1
  %i.io = ashr i32 %i.in, 1
  %i.ip = lshr i32 8, %i.io
  %i.iq = select i1 %i.im, i32 %i.ip, i32 8
  %i.ir = zext nneg i32 %i.ib to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.split, %bb.aj
  %.0177 = phi i64 [ %i.ir, %bb.aj ], [ 0, %.split ] ; 2 uses
  %.0176 = phi i32 [ %i.ig, %bb.aj ], [ %i.fc, %.split ]
  %.0175 = phi i32 [ %i.iq, %bb.aj ], [ 1, %.split ]
  %.0174 = phi i32 [ %i.il, %bb.aj ], [ 0, %.split ] ; 2 uses
  %i.is = icmp ult i32 %.0174, %i.g
  br i1 %i.is, label %.lr.ph218, label %.loopexit212

.lr.ph218:                                        ; preds = %bb.ak
  %i.it = zext nneg i32 %.0176 to i64
  %.pre = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.iu = icmp samesign ult i64 %.0177, %i.ff
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph218, %._crit_edge.split
  %i.iv = phi ptr [ %.pre, %.lr.ph218 ], [ %i.ja, %._crit_edge.split ]
  %.1216 = phi i32 [ %.0174, %.lr.ph218 ], [ %i.jp, %._crit_edge.split ] ; 2 uses
  %i.iw = zext i32 %.1216 to i64
  %i.ix = mul nsw i64 %i.fa, %i.iw
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.ff
  tail call void @png_read_row(ptr noundef nonnull %i.c, ptr noundef %i.iv, ptr noundef null)
  %i.ja = load ptr, ptr %i.fg, align 8, !tbaa !88 ; 2 uses
  br i1 %i.iu, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.al
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %.0177
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %.0172215 = phi ptr [ %i.jn, %bb.ao ], [ %i.jb, %.lr.ph.preheader ] ; 2 uses
  %.0173214 = phi ptr [ %i.jm, %bb.ao ], [ %i.ja, %.lr.ph.preheader ] ; 3 uses
  %i.jc = load i16, ptr %.0173214, align 2, !tbaa !77 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.0173214, i64 2
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !77 ; 2 uses
  switch i16 %i.je, label %bb.am [
    i16 0, label %bb.an
    i16 -1, label %bb.ao
  ]

bb.am:                                            ; preds = %.lr.ph
  %i.jf = zext i16 %i.je to i32
  %i.jg = zext i16 %i.jc to i32
  %i.jh = mul nuw i32 %i.jf, %i.jg
  %i.ji = add nuw i32 %i.jh, 32767
  %i.jj = udiv i32 %i.ji, 65535
  %i.jk = trunc nuw i32 %i.jj to i16
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.am, %bb.an
  %.0 = phi i16 [ %i.jk, %bb.am ], [ %i.jc, %.lr.ph ], [ 0, %bb.an ]
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.0172215, i64 %i.fh
  store i16 %.0, ptr %i.jl, align 2, !tbaa !77
  %i.jm = getelementptr inbounds nuw i8, ptr %.0173214, i64 4
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.0172215, i64 %i.it ; 2 uses
  %i.jo = icmp ult ptr %i.jn, %i.iz
  br i1 %i.jo, label %.lr.ph, label %._crit_edge.split, !llvm.loop !209

._crit_edge.split:                                ; preds = %bb.ao, %bb.al
  %i.jp = add i32 %.1216, %.0175                  ; 2 uses
  %i.jq = icmp ult i32 %i.jp, %i.g
  br i1 %i.jq, label %bb.al, label %.loopexit212, !llvm.loop !210

.loopexit212:                                     ; preds = %._crit_edge.split, %bb.ak, %bb.ai
  %i.jr = add nuw nsw i32 %.1192219, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jr, %.0190
  br i1 %exitcond.not, label %.loopexit211, label %.split, !llvm.loop !211

bb.ap:                                            ; preds = %bb.l
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.62) #14
  unreachable

.loopexit211:                                     ; preds = %.loopexit212, %.loopexit212.us, %.loopexit
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @png_image_read_direct_scaled(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !87
  %i.l = tail call i64 @png_get_rowbytes(ptr noundef %i.c, ptr noundef %i.e) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.n = load i8, ptr %i.m, align 4, !tbaa !30
  switch i8 %i.n, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.53) #14
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.023 = phi i32 [ 6, %bb.b ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.split29.us, label %.split

.loopexit:                                        ; preds = %.lr.ph, %.split
  %i.r = icmp sgt i32 %i.u, 0
  br i1 %i.r, label %.splitthread-pre-split, label %.split29.us, !llvm.loop !212

.splitthread-pre-split:                           ; preds = %.loopexit
  %i.s = add nsw i32 %i.u, -1
  %.pr = load i32, ptr %i.o, align 8, !tbaa !66
  br label %.split

.split:                                           ; preds = %bb.d, %.splitthread-pre-split
  %i.t = phi i32 [ %.pr, %.splitthread-pre-split ], [ %i.p, %bb.d ] ; 2 uses
  %i.u = phi i32 [ %i.s, %.splitthread-pre-split ], [ %.023, %bb.d ] ; 2 uses
  %.not25 = icmp eq i32 %i.t, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %.lr.ph
  %.027 = phi ptr [ %i.v, %.lr.ph ], [ %i.i, %.split ] ; 2 uses
  %.02226 = phi i32 [ %i.w, %.lr.ph ], [ %i.t, %.split ]
  tail call void @png_read_row(ptr noundef %i.c, ptr noundef %i.g, ptr noundef null)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.027, ptr align 1 %i.g, i64 %i.l, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.027, i64 %i.k
  %i.w = add i32 %.02226, -1                      ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !213

.split29.us:                                      ; preds = %.loopexit, %bb.d
  ret i32 1
}

declare zeroext i8 @png_get_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS13__jmp_buf_tag", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!13 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !10, i64 16, !11, i64 24, !5, i64 32, !10, i64 40, !11, i64 48, !12, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !5, i64 88, !10, i64 96, !10, i64 104}
!14 = !{!"p1 _ZTS22png_compression_buffer", !8, i64 0}
!15 = !{!"p1 _ZTS16png_color_struct", !8, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!"png_color_16_struct", !4, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8}
!18 = !{!"png_xy", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!19 = !{!"any p2 pointer", !8, i64 0}
!20 = !{!"p2 short", !19, i64 0}
!21 = !{!"png_color_8_struct", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4}
!22 = !{!"png_unknown_chunk_t", !4, i64 0, !11, i64 8, !10, i64 16, !4, i64 24}
!23 = !{!"png_struct_def", !4, i64 0, !8, i64 200, !9, i64 208, !10, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !4, i64 296, !4, i64 297, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !13, i64 320, !14, i64 432, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !10, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !11, i64 552, !11, i64 560, !11, i64 568, !11, i64 576, !10, i64 584, !5, i64 592, !5, i64 596, !15, i64 600, !16, i64 608, !5, i64 612, !16, i64 616, !4, i64 618, !4, i64 619, !4, i64 620, !4, i64 621, !4, i64 622, !4, i64 623, !4, i64 624, !4, i64 625, !4, i64 626, !4, i64 627, !4, i64 628, !4, i64 629, !4, i64 630, !4, i64 631, !4, i64 632, !16, i64 634, !4, i64 636, !5, i64 640, !17, i64 644, !17, i64 654, !8, i64 664, !5, i64 672, !5, i64 676, !18, i64 680, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !11, i64 736, !20, i64 744, !11, i64 752, !11, i64 760, !20, i64 768, !20, i64 776, !21, i64 784, !21, i64 789, !11, i64 800, !17, i64 808, !8, i64 824, !8, i64 832, !8, i64 840, !8, i64 848, !8, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !5, i64 896, !5, i64 900, !10, i64 904, !10, i64 912, !10, i64 920, !10, i64 928, !5, i64 936, !5, i64 940, !11, i64 944, !11, i64 952, !5, i64 960, !4, i64 964, !5, i64 996, !8, i64 1000, !8, i64 1008, !5, i64 1016, !5, i64 1020, !11, i64 1024, !4, i64 1032, !4, i64 1033, !16, i64 1034, !16, i64 1036, !11, i64 1040, !5, i64 1048, !4, i64 1052, !8, i64 1056, !8, i64 1064, !8, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !4, i64 1104, !5, i64 1108, !5, i64 1112, !5, i64 1116, !10, i64 1120, !22, i64 1128, !10, i64 1160, !11, i64 1168, !10, i64 1176, !5, i64 1184, !5, i64 1188, !11, i64 1192, !4, i64 1200}
!24 = !{!23, !5, i64 300}
!25 = !{!23, !5, i64 1184}
!26 = !{!23, !5, i64 304}
!27 = !{!23, !5, i64 544}
!28 = !{!23, !4, i64 623}
!29 = !{!23, !4, i64 624}
!30 = !{!23, !4, i64 620}
!31 = !{!23, !5, i64 308}
!32 = !{!4, !4, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!23, !5, i64 612}
!35 = !{!23, !8, i64 824}
!36 = !{!11, !11, i64 0}
!37 = !{!23, !16, i64 608}
!38 = !{!"p1 _ZTS14png_struct_def", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!23, !15, i64 600}
!41 = !{!23, !11, i64 800}
!42 = !{!"p1 _ZTS15png_text_struct", !8, i64 0}
!43 = !{!"png_time_struct", !16, i64 0, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5, !4, i64 6}
!44 = !{!"p1 short", !8, i64 0}
!45 = !{!"p2 omnipotent char", !19, i64 0}
!46 = !{!"p1 _ZTS19png_unknown_chunk_t", !8, i64 0}
!47 = !{!"p1 _ZTS15png_sPLT_struct", !8, i64 0}
!48 = !{!"png_info_def", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !15, i64 24, !16, i64 32, !16, i64 34, !4, i64 36, !4, i64 37, !4, i64 38, !4, i64 39, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44, !4, i64 52, !4, i64 53, !4, i64 54, !4, i64 55, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !16, i64 84, !16, i64 86, !16, i64 88, !16, i64 90, !16, i64 92, !16, i64 94, !16, i64 96, !16, i64 98, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !42, i64 120, !43, i64 128, !21, i64 136, !11, i64 144, !17, i64 152, !17, i64 162, !5, i64 172, !5, i64 176, !4, i64 180, !5, i64 184, !5, i64 188, !4, i64 192, !5, i64 196, !11, i64 200, !44, i64 208, !11, i64 216, !5, i64 224, !5, i64 228, !11, i64 232, !45, i64 240, !4, i64 248, !4, i64 249, !5, i64 252, !46, i64 256, !5, i64 264, !47, i64 272, !5, i64 280, !4, i64 284, !11, i64 288, !11, i64 296, !45, i64 304, !18, i64 312, !5, i64 344, !5, i64 348}
!49 = !{!"p1 _ZTS11png_control", !8, i64 0}
!50 = !{!"", !49, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36}
!51 = !{!50, !5, i64 8}
!52 = !{!50, !49, i64 0}
!53 = !{!"p1 _ZTS12png_info_def", !8, i64 0}
!54 = !{!"png_control", !38, i64 0, !53, i64 8, !8, i64 16, !11, i64 24, !10, i64 32, !5, i64 40, !5, i64 40}
!55 = !{!54, !38, i64 0}
!56 = !{!23, !8, i64 264}
!57 = !{!54, !53, i64 8}
!58 = !{!5, !5, i64 0}
!59 = !{!23, !16, i64 616}
!60 = !{!50, !5, i64 20}
!61 = !{!50, !5, i64 24}
!62 = !{!50, !5, i64 28}
!63 = !{!54, !11, i64 24}
!64 = !{!54, !10, i64 32}
!65 = !{!50, !5, i64 12}
!66 = !{!50, !5, i64 16}
!67 = !{!"", !8, i64 0, !8, i64 8, !5, i64 16, !8, i64 24, !15, i64 32, !8, i64 40, !8, i64 48, !10, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!68 = !{!67, !8, i64 0}
!69 = !{!67, !8, i64 8}
!70 = !{!67, !5, i64 16}
!71 = !{!67, !8, i64 24}
!72 = !{!67, !15, i64 32}
!73 = !{!"png_color_struct", !4, i64 0, !4, i64 1, !4, i64 2}
!74 = !{!73, !4, i64 1}
!75 = !{!73, !4, i64 0}
!76 = !{!73, !4, i64 2}
!77 = !{!16, !16, i64 0}
!78 = !{!17, !4, i64 0}
!79 = !{!17, !16, i64 2}
!80 = !{!17, !16, i64 4}
!81 = !{!17, !16, i64 8}
!82 = !{!17, !16, i64 6}
!83 = !{!67, !5, i64 72}
!84 = !{!48, !4, i64 37}
!85 = !{!48, !4, i64 36}
!86 = !{!67, !8, i64 48}
!87 = !{!67, !10, i64 56}
!88 = !{!67, !8, i64 40}
!89 = !{!"llvm.loop.unswitch.partial.disable"}
!90 = !{!67, !5, i64 64}
!91 = !{!67, !5, i64 68}
!92 = !{!23, !5, i64 592}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = !{!23, !5, i64 536}
!96 = !{!"png_row_info_struct", !5, i64 0, !10, i64 8, !4, i64 16, !4, i64 17, !4, i64 18, !4, i64 19}
!97 = !{!96, !5, i64 0}
!98 = !{!96, !4, i64 16}
!99 = !{!96, !4, i64 17}
!100 = !{!23, !4, i64 627}
!101 = !{!96, !4, i64 18}
!102 = !{!23, !4, i64 626}
!103 = !{!96, !4, i64 19}
!104 = !{!96, !10, i64 8}
!105 = !{!23, !5, i64 540}
!106 = !{!23, !4, i64 621}
!107 = !{!23, !5, i64 508}
!108 = !{!23, !11, i64 560}
!109 = !{!23, !11, i64 552}
!110 = !{!23, !5, i64 1048}
!111 = !{!23, !4, i64 1052}
!112 = !{!23, !4, i64 631}
!113 = !{!23, !4, i64 630}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !"png_start_read_image"}
!118 = distinct !{!118, !117, !"png_start_read_image: argument 0"}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = !{!118}
!122 = !{!23, !5, i64 512}
!123 = !{!23, !5, i64 516}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !"png_read_destroy"}
!126 = distinct !{!126, !125, !"png_read_destroy: argument 0"}
!127 = !{!23, !11, i64 1080}
!128 = !{!126}
!129 = !{!23, !11, i64 1192}
!130 = !{!23, !11, i64 1168}
!131 = !{!23, !11, i64 944}
!132 = !{!23, !11, i64 952}
!133 = !{!23, !11, i64 872}
!134 = !{!23, !11, i64 1136}
!135 = !{!23, !11, i64 1024}
!136 = !{!23, !11, i64 1040}
!137 = distinct !{!137, !"png_read_update_info"}
!138 = distinct !{!138, !137, !"png_read_update_info: argument 0"}
!139 = distinct !{!139, !137, !"png_read_update_info: argument 1"}
!140 = distinct !{!140, !33}
!141 = !{!48, !5, i64 4}
!142 = !{!48, !5, i64 8}
!143 = !{!138}
!144 = !{!139}
!145 = !{!48, !45, i64 304}
!146 = !{!48, !5, i64 252}
!147 = !{!48, !10, i64 16}
!148 = !{!53, !53, i64 0}
!149 = distinct !{!149, !"png_image_format"}
!150 = distinct !{!150, !149, !"png_image_format: argument 0"}
!151 = distinct !{!151, !"png_image_is_not_sRGB"}
!152 = distinct !{!152, !151, !"png_image_is_not_sRGB: argument 0"}
!153 = !{!150}
!154 = !{!23, !5, i64 504}
!155 = !{!152}
!156 = !{!18, !5, i64 24}
!157 = !{!18, !5, i64 28}
!158 = !{!18, !5, i64 0}
!159 = !{!18, !5, i64 4}
!160 = !{!18, !5, i64 8}
!161 = !{!18, !5, i64 12}
!162 = !{!18, !5, i64 16}
!163 = !{!18, !5, i64 20}
!164 = !{!23, !8, i64 256}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
!168 = distinct !{!168, !33}
!169 = distinct !{!169, !33}
!170 = distinct !{!170, !33}
!171 = distinct !{!171, !33}
!172 = !{!23, !5, i64 728}
end_hunk_1
