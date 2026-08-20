inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ZDICT_analyzeEntropy:bb.a
  %i.dv = icmp ne ptr %i.ds, null
  %or.cond5 = and i1 %or.cond, %i.dv
  br i1 %or.cond5, label %.preheader258, label %bb.b

.preheader258:                                    ; preds = %.preheader260.preheader
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader258
  %.val = load i32, ptr %9, align 8, !tbaa !25
  %i.dw = shl nuw i32 1, %.val
  %narrow.i = call i32 @llvm.smin.i32(i32 %i.dw, i32 131072)
  %spec.select.i = sext i32 %narrow.i to i64
  %.not63.i = icmp eq i32 %8, 0
  %i.dx = icmp ugt i32 %8, 2
  %wide.trip.count299 = zext i32 %5 to i64
  br label %bb.d

bb.b:                                             ; preds = %.preheader260.preheader
  %.not185 = icmp eq i32 %8, 0
  br i1 %.not185, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dz = call i64 @fwrite(ptr nonnull @.str.3, i64 19, i64 1, ptr %i.dy) #20 ; 0 uses
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eb = call i32 @fflush(ptr noundef %i.ea)     ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %.lr.ph, %ZDICT_countEStats.exit
  %indvars.iv296 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next297, %ZDICT_countEStats.exit ] ; 2 uses
  %.0167268 = phi i64 [ 0, %.lr.ph ], [ %i.lm, %ZDICT_countEStats.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv296 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !16
  %.0.i = call i64 @llvm.umin.i64(i64 %i.ed, i64 %spec.select.i) ; 2 uses
  %i.ee = call i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef %i.dr, ptr noundef %i.dq) #16
  %i.ef = icmp ult i64 %i.ee, -119
  br i1 %i.ef, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not63.i, label %ZDICT_countEStats.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eh = call i64 @fwrite(ptr nonnull @.str.16, i64 48, i64 1, ptr %i.eg) #20 ; 0 uses
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ej = call i32 @fflush(ptr noundef %i.ei)     ; 0 uses
  br label %ZDICT_countEStats.exit

.critedge.i:                                      ; preds = %bb.d
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %.0167268
  %i.el = call i64 @ZSTD_compressBlock_deprecated(ptr noundef %i.dr, ptr noundef %i.ds, i64 noundef 131072, ptr noundef %i.ek, i64 noundef %.0.i) #16 ; 2 uses
  %i.em = icmp ult i64 %i.el, -119
  br i1 %i.em, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i
  br i1 %i.dx, label %bb.h, label %ZDICT_countEStats.exit

bb.h:                                             ; preds = %bb.g
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.eo = trunc i64 %.0.i to i32
  %i.ep = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.17, i32 noundef %i.eo) #19 ; 0 uses
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.er = call i32 @fflush(ptr noundef %i.eq)     ; 0 uses
  br label %ZDICT_countEStats.exit

bb.i:                                             ; preds = %.critedge.i
  %.not65.i = icmp eq i64 %i.el, 0
  br i1 %.not65.i, label %ZDICT_countEStats.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.es = call ptr @ZSTD_getSeqStore(ptr noundef %i.dr) #16 ; 9 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32 ; 3 uses
  %i.ex = icmp ult ptr %i.eu, %i.ew
  br i1 %i.ex, label %.lr.ph.i213.preheader, label %._crit_edge.i

.lr.ph.i213.preheader:                            ; preds = %bb.j
  %i.ey = ptrtoaddr ptr %i.ew to i64              ; 2 uses
  %i.ez = ptrtoaddr ptr %i.eu to i64              ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213.prol
  %.0571.i.prol = phi ptr [ %i.fg, %.lr.ph.i213.prol ], [ %i.eu, %.lr.ph.i213.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i213.prol ], [ 0, %.lr.ph.i213.preheader ]
  %i.fb = load i8, ptr %.0571.i.prol, align 1, !tbaa !33
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %.0571.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol, !llvm.loop !34

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.0571.i.unr = phi ptr [ %i.eu, %.lr.ph.i213.preheader ], [ %i.fg, %.lr.ph.i213.prol ]
  %i.fh = sub i64 %i.ez, %i.ey
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge.i, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.0571.i = phi ptr [ %i.gg, %.lr.ph.i213 ], [ %.0571.i.unr, %.lr.ph.i213.prol.loopexit ] ; 5 uses
  %i.fj = load i8, ptr %.0571.i, align 1, !tbaa !33
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !8
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !8
  %i.fo = getelementptr inbounds nuw i8, ptr %.0571.i, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !33
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %.0571.i, i64 2
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !33
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fw ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !8
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0571.i, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !33
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0571.i, i64 4 ; 2 uses
  %exitcond.not.i214.3 = icmp eq ptr %i.gg, %i.ew
  br i1 %exitcond.not.i214.3, label %._crit_edge.i, label %.lr.ph.i213, !llvm.loop !36

._crit_edge.i:                                    ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.j
  %i.gh = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !37
  %i.gj = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = lshr i64 %i.gm, 3                       ; 8 uses
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = call i32 @ZSTD_seqToCodes(ptr noundef nonnull %i.es) #16 ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !39 ; 5 uses
  %.not.i209 = icmp eq i32 %i.go, 0
  br i1 %.not.i209, label %ZDICT_countEStats.exit, label %.lr.ph4.preheader.i

.lr.ph4.preheader.i:                              ; preds = %._crit_edge.i
  %wide.trip.count.i210 = and i64 %i.gn, 4294967295
  %i.gs = add nsw i64 %wide.trip.count.i210, -1   ; 3 uses
  %xtraiter396 = and i64 %i.gn, 3                 ; 3 uses
  %i.gt = icmp ult i64 %i.gs, 3
  br i1 %i.gt, label %.lr.ph4.i.epil.preheader, label %.lr.ph4.preheader.i.new

.lr.ph4.preheader.i.new:                          ; preds = %.lr.ph4.preheader.i
  %unroll_iter = and i64 %i.gn, 4294967292
  br label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %.lr.ph4.i, %.lr.ph4.preheader.i.new
  %indvars.iv.i211 = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %indvars.iv.next.i212.3, %.lr.ph4.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph4.preheader.i.new ], [ %niter.next.3, %.lr.ph4.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i211
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !33
  %i.gw = zext i8 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !8
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i211
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !33
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !8
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i211
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !33
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hk ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !8
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i211
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !33
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !8
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !8
  %indvars.iv.next.i212.3 = add nuw nsw i64 %indvars.iv.i211, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph8.preheader.i.unr-lcssa, label %.lr.ph4.i, !llvm.loop !40

.lr.ph8.preheader.i.unr-lcssa:                    ; preds = %.lr.ph4.i
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %.lr.ph8.preheader.i, label %.lr.ph4.i.epil.preheader

.lr.ph4.i.epil.preheader:                         ; preds = %.lr.ph8.preheader.i.unr-lcssa, %.lr.ph4.preheader.i
  %indvars.iv.i211.epil.init = phi i64 [ 0, %.lr.ph4.preheader.i ], [ %indvars.iv.next.i212.3, %.lr.ph8.preheader.i.unr-lcssa ]
  %lcmp.mod398 = icmp ne i64 %xtraiter396, 0
  call void @llvm.assume(i1 %lcmp.mod398)
  br label %.lr.ph4.i.epil

.lr.ph4.i.epil:                                   ; preds = %.lr.ph4.i.epil, %.lr.ph4.i.epil.preheader
  %indvars.iv.i211.epil = phi i64 [ %indvars.iv.i211.epil.init, %.lr.ph4.i.epil.preheader ], [ %indvars.iv.next.i212.epil, %.lr.ph4.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph4.i.epil.preheader ], [ %epil.iter.next, %.lr.ph4.i.epil ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i211.epil
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !33
  %i.hx = zext i8 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hx ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !8
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !8
  %indvars.iv.next.i212.epil = add nuw nsw i64 %indvars.iv.i211.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter396
  br i1 %epil.iter.cmp.not, label %.lr.ph8.preheader.i, label %.lr.ph4.i.epil, !llvm.loop !41

.lr.ph8.preheader.i:                              ; preds = %.lr.ph4.i.epil, %.lr.ph8.preheader.i.unr-lcssa
  %i.ib = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !42 ; 5 uses
  %xtraiter399 = and i64 %i.gn, 3                 ; 3 uses
  %i.id = icmp ult i64 %i.gs, 3
  br i1 %i.id, label %.lr.ph8.i.epil.preheader, label %.lr.ph8.preheader.i.new

.lr.ph8.preheader.i.new:                          ; preds = %.lr.ph8.preheader.i
  %unroll_iter403 = and i64 %i.gn, 4294967292
  br label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %.lr.ph8.i, %.lr.ph8.preheader.i.new
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph8.preheader.i.new ], [ %indvars.iv.next19.i.3, %.lr.ph8.i ] ; 5 uses
  %niter404 = phi i64 [ 0, %.lr.ph8.preheader.i.new ], [ %niter404.next.3, %.lr.ph8.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv18.i
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !33
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !8
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 4, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv18.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  %i.im = load i8, ptr %i.il, align 1, !tbaa !33
  %i.in = zext i8 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !8
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv18.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.it = load i8, ptr %i.is, align 1, !tbaa !33
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iu ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !8
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iv, align 4, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv18.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !33
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !8
  %i.je = add i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !8
  %indvars.iv.next19.i.3 = add nuw nsw i64 %indvars.iv18.i, 4 ; 2 uses
  %niter404.next.3 = add i64 %niter404, 4         ; 2 uses
  %niter404.ncmp.3 = icmp eq i64 %niter404.next.3, %unroll_iter403
  br i1 %niter404.ncmp.3, label %.lr.ph12.preheader.i.unr-lcssa, label %.lr.ph8.i, !llvm.loop !43

.lr.ph12.preheader.i.unr-lcssa:                   ; preds = %.lr.ph8.i
  %lcmp.mod401.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod401.not, label %.lr.ph12.preheader.i, label %.lr.ph8.i.epil.preheader

.lr.ph8.i.epil.preheader:                         ; preds = %.lr.ph12.preheader.i.unr-lcssa, %.lr.ph8.preheader.i
  %indvars.iv18.i.epil.init = phi i64 [ 0, %.lr.ph8.preheader.i ], [ %indvars.iv.next19.i.3, %.lr.ph12.preheader.i.unr-lcssa ]
  %lcmp.mod402 = icmp ne i64 %xtraiter399, 0
  call void @llvm.assume(i1 %lcmp.mod402)
  br label %.lr.ph8.i.epil

.lr.ph8.i.epil:                                   ; preds = %.lr.ph8.i.epil, %.lr.ph8.i.epil.preheader
  %indvars.iv18.i.epil = phi i64 [ %indvars.iv18.i.epil.init, %.lr.ph8.i.epil.preheader ], [ %indvars.iv.next19.i.epil, %.lr.ph8.i.epil ] ; 2 uses
  %epil.iter400 = phi i64 [ 0, %.lr.ph8.i.epil.preheader ], [ %epil.iter400.next, %.lr.ph8.i.epil ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv18.i.epil
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !33
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !8
  %indvars.iv.next19.i.epil = add nuw nsw i64 %indvars.iv18.i.epil, 1
  %epil.iter400.next = add i64 %epil.iter400, 1   ; 2 uses
  %epil.iter400.cmp.not = icmp eq i64 %epil.iter400.next, %xtraiter399
  br i1 %epil.iter400.cmp.not, label %.lr.ph12.preheader.i, label %.lr.ph8.i.epil, !llvm.loop !44

.lr.ph12.preheader.i:                             ; preds = %.lr.ph8.i.epil, %.lr.ph12.preheader.i.unr-lcssa
  %i.jl = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !45 ; 5 uses
  %xtraiter405 = and i64 %i.gn, 3                 ; 3 uses
  %i.jn = icmp ult i64 %i.gs, 3
  br i1 %i.jn, label %.lr.ph12.i.epil.preheader, label %.lr.ph12.preheader.i.new

.lr.ph12.preheader.i.new:                         ; preds = %.lr.ph12.preheader.i
  %unroll_iter409 = and i64 %i.gn, 4294967292
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i.new
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %indvars.iv.next24.i.3, %.lr.ph12.i ] ; 5 uses
  %niter410 = phi i64 [ 0, %.lr.ph12.preheader.i.new ], [ %niter410.next.3, %.lr.ph12.i ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %indvars.iv23.i
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !33
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !8
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 %indvars.iv23.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !33
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jx ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !8
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 %indvars.iv23.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !33
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ke ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !8
  %i.kh = add i32 %i.kg, 1
  store i32 %i.kh, ptr %i.kf, align 4, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jm, i64 %indvars.iv23.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 3
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !33
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kl ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !8
  %i.ko = add i32 %i.kn, 1
  store i32 %i.ko, ptr %i.km, align 4, !tbaa !8
  %indvars.iv.next24.i.3 = add nuw nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %niter410.next.3 = add i64 %niter410, 4         ; 2 uses
  %niter410.ncmp.3 = icmp eq i64 %niter410.next.3, %unroll_iter409
  br i1 %niter410.ncmp.3, label %._crit_edge13.i.unr-lcssa, label %.lr.ph12.i, !llvm.loop !46

._crit_edge13.i.unr-lcssa:                        ; preds = %.lr.ph12.i
  %lcmp.mod407.not = icmp eq i64 %xtraiter405, 0
  br i1 %lcmp.mod407.not, label %._crit_edge13.i, label %.lr.ph12.i.epil.preheader

.lr.ph12.i.epil.preheader:                        ; preds = %._crit_edge13.i.unr-lcssa, %.lr.ph12.preheader.i
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph12.preheader.i ], [ %indvars.iv.next24.i.3, %._crit_edge13.i.unr-lcssa ]
  %lcmp.mod408 = icmp ne i64 %xtraiter405, 0
  call void @llvm.assume(i1 %lcmp.mod408)
  br label %.lr.ph12.i.epil

.lr.ph12.i.epil:                                  ; preds = %.lr.ph12.i.epil, %.lr.ph12.i.epil.preheader
  %indvars.iv23.i.epil = phi i64 [ %indvars.iv23.i.epil.init, %.lr.ph12.i.epil.preheader ], [ %indvars.iv.next24.i.epil, %.lr.ph12.i.epil ] ; 2 uses
  %epil.iter406 = phi i64 [ 0, %.lr.ph12.i.epil.preheader ], [ %epil.iter406.next, %.lr.ph12.i.epil ]
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jm, i64 %indvars.iv23.i.epil
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !33
  %i.kr = zext i8 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.ku = add i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !8
  %indvars.iv.next24.i.epil = add nuw nsw i64 %indvars.iv23.i.epil, 1
  %epil.iter406.next = add i64 %epil.iter406, 1   ; 2 uses
  %epil.iter406.cmp.not = icmp eq i64 %epil.iter406.next, %xtraiter405
  br i1 %epil.iter406.cmp.not, label %._crit_edge13.i, label %.lr.ph12.i.epil, !llvm.loop !47

._crit_edge13.i:                                  ; preds = %.lr.ph12.i.epil, %._crit_edge13.i.unr-lcssa
  %.not31.i = icmp eq i32 %i.go, 1
  br i1 %.not31.i, label %ZDICT_countEStats.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge13.i
  %i.kv = load ptr, ptr %i.es, align 8, !tbaa !38 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !48
  %i.kx = add i32 %i.kw, -3                       ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !48
  %i.la = add i32 %i.kz, -3                       ; 2 uses
  %i.lb = icmp ugt i32 %i.kx, 1023
  %spec.store.select.i = select i1 %i.lb, i32 0, i32 %i.kx
  %i.lc = icmp ugt i32 %i.la, 1023
  %spec.store.select1.i = select i1 %i.lc, i32 0, i32 %i.la
  %i.ld = zext i32 %spec.store.select.i to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ld ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8
  %i.lg = add i32 %i.lf, 3
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !8
  %i.lh = zext i32 %spec.store.select1.i to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !8
  %i.lk = add i32 %i.lj, 1
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !8
  br label %ZDICT_countEStats.exit

ZDICT_countEStats.exit:                           ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %._crit_edge.i, %._crit_edge13.i, %bb.k
  %i.ll = load i64, ptr %i.ec, align 8, !tbaa !16
  %i.lm = add i64 %i.ll, %.0167268
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge, label %bb.d, !llvm.loop !51

._crit_edge:                                      ; preds = %ZDICT_countEStats.exit, %.preheader258
  %i.ln = icmp ugt i32 %8, 3
  br i1 %i.ln, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %._crit_edge
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lp = call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %i.lo) #20 ; 0 uses
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lr = call i32 @fflush(ptr noundef %i.lq)     ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %indvars.iv301 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next302, %bb.m ] ; 3 uses
  %i.ls = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv301
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !8
  %i.lv = trunc nuw nsw i64 %indvars.iv301 to i32
  %i.lw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ls, ptr noundef nonnull @.str.5, i32 noundef %i.lv, i32 noundef %i.lu) #19 ; 0 uses
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ly = call i32 @fflush(ptr noundef %i.lx)     ; 0 uses
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count
  br i1 %exitcond305.not, label %.loopexit, label %bb.m, !llvm.loop !52

.loopexit:                                        ; preds = %bb.m, %._crit_edge
  %i.lz = call i64 @HUF_buildCTable_wksp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 255, i32 noundef 11, ptr noundef nonnull %i.j, i64 noundef 4864) #16 ; 5 uses
  %i.ma = icmp ult i64 %i.lz, -119
  br i1 %i.ma, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %.not188 = icmp eq i32 %8, 0
  br i1 %.not188, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.mc = call i64 @fwrite(ptr nonnull @.str.6, i64 24, i64 1, ptr %i.mb) #20 ; 0 uses
  %i.md = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.me = call i32 @fflush(ptr noundef %i.md)     ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %.loopexit
  %i.mf = icmp eq i64 %i.lz, 8
  br i1 %i.mf, label %bb.q, label %.preheader.preheader

bb.q:                                             ; preds = %bb.p
  %i.mg = icmp ugt i32 %8, 1
  br i1 %i.mg, label %bb.r, label %vector.body366

bb.r:                                             ; preds = %bb.q
  %i.mh = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.mi = call i64 @fwrite(ptr nonnull @.str.7, i64 99, i64 1, ptr %i.mh) #20 ; 0 uses
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.mk = call i32 @fflush(ptr noundef %i.mj)     ; 0 uses
  br label %vector.body366

vector.body366:                                   ; preds = %bb.r, %bb.q
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store <4 x i32> splat (i32 2), ptr %i.ml, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mm, align 4, !tbaa !8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.mo = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store <4 x i32> splat (i32 2), ptr %i.mn, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mo, align 4, !tbaa !8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store <4 x i32> splat (i32 2), ptr %i.mp, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mq, align 4, !tbaa !8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store <4 x i32> splat (i32 2), ptr %i.mr, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ms, align 4, !tbaa !8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store <4 x i32> splat (i32 2), ptr %i.mt, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mu, align 4, !tbaa !8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store <4 x i32> splat (i32 2), ptr %i.mv, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.mw, align 4, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store <4 x i32> splat (i32 2), ptr %i.mx, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.my, align 4, !tbaa !8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  store <4 x i32> splat (i32 2), ptr %i.mz, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.na, align 4, !tbaa !8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  store <4 x i32> splat (i32 2), ptr %i.nb, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nc, align 4, !tbaa !8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.ne = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  store <4 x i32> splat (i32 2), ptr %i.nd, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ne, align 4, !tbaa !8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 340
  store <4 x i32> splat (i32 2), ptr %i.nf, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ng, align 4, !tbaa !8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.ni = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store <4 x i32> splat (i32 2), ptr %i.nh, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ni, align 4, !tbaa !8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.a, i64 388
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  store <4 x i32> splat (i32 2), ptr %i.nj, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nk, align 4, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  %i.nm = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  store <4 x i32> splat (i32 2), ptr %i.nl, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nm, align 4, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.a, i64 452
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 468
  store <4 x i32> splat (i32 2), ptr %i.nn, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.no, align 4, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 484
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store <4 x i32> splat (i32 2), ptr %i.np, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nq, align 4, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.a, i64 516
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 532
  store <4 x i32> splat (i32 2), ptr %i.nr, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ns, align 4, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 548
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 564
  store <4 x i32> splat (i32 2), ptr %i.nt, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nu, align 4, !tbaa !8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.a, i64 580
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  store <4 x i32> splat (i32 2), ptr %i.nv, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.nw, align 4, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store <4 x i32> splat (i32 2), ptr %i.nx, align 4, !tbaa !8
  store <4 x i32> splat (i32 2), ptr %i.ny, align 4, !tbaa !8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.a, i64 644
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 660
end_hunk_0
begin_hunk_1_@ZDICT_trainFromBuffer_legacy:bb.a

.preheader314.i.i.i:                              ; preds = %ZDICT_count.exit.i.i.i, %ZDICT_count.exit271.i.i.i
  %indvar = phi i32 [ %indvar.next, %ZDICT_count.exit271.i.i.i ], [ 0, %ZDICT_count.exit.i.i.i ] ; 2 uses
  %.0231.i.i.i = phi i32 [ %i.ii, %ZDICT_count.exit271.i.i.i ], [ %i.gc, %ZDICT_count.exit.i.i.i ] ; 5 uses
  %i.ht = zext i32 %.0231.i.i.i to i64            ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hx ; 2 uses
  %.011.val21.i259.i.i.i = load i64, ptr %i.hy, align 1, !tbaa !16 ; 2 uses
  %.not23.i261.i.i.i = icmp eq i64 %.011.val21.i259.i.i.i, %.012.val22.i.i.i.i
  br i1 %.not23.i261.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

.lr.ph.i265.i.i.i:                                ; preds = %.preheader314.i.i.i, %.lr.ph.i265.i.i.i
  %.01125.i266.i.i.i = phi ptr [ %i.ia, %.lr.ph.i265.i.i.i ], [ %i.hy, %.preheader314.i.i.i ]
  %.01224.i267.i.i.i = phi ptr [ %i.hz, %.lr.ph.i265.i.i.i ], [ %i.gi, %.preheader314.i.i.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.01224.i267.i.i.i, i64 8 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.01125.i266.i.i.i, i64 8 ; 2 uses
  %.011.val.i268.i.i.i = load i64, ptr %i.ia, align 1, !tbaa !16 ; 2 uses
  %.012.val.i269.i.i.i = load i64, ptr %i.hz, align 1, !tbaa !16 ; 2 uses
  %.not.i270.i.i.i = icmp eq i64 %.011.val.i268.i.i.i, %.012.val.i269.i.i.i
  br i1 %.not.i270.i.i.i, label %.lr.ph.i265.i.i.i, label %ZDICT_count.exit271.i.i.i

ZDICT_count.exit271.i.i.i:                        ; preds = %.lr.ph.i265.i.i.i, %.preheader314.i.i.i
  %.012.lcssa.i262.i.i.i = phi ptr [ %i.gi, %.preheader314.i.i.i ], [ %i.hz, %.lr.ph.i265.i.i.i ]
  %.011.val.lcssa.i263.i.i.i = phi i64 [ %.011.val21.i259.i.i.i, %.preheader314.i.i.i ], [ %.011.val.i268.i.i.i, %.lr.ph.i265.i.i.i ]
  %.012.val.lcssa.i264.i.i.i = phi i64 [ %.012.val22.i.i.i.i, %.preheader314.i.i.i ], [ %.012.val.i269.i.i.i, %.lr.ph.i265.i.i.i ]
  %i.ib = xor i64 %.012.val.lcssa.i264.i.i.i, %.011.val.lcssa.i263.i.i.i
  %i.ic = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ib, i1 true)
  %i.id = lshr i64 %i.ic, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.lcssa.i262.i.i.i, i64 %i.id
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = sub i64 %i.if, %i.gq
  %i.ih = icmp ugt i64 %i.ig, 6
  %i.ii = add i32 %.0231.i.i.i, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ih, label %.preheader314.i.i.i, label %bb.x, !llvm.loop !66

bb.x:                                             ; preds = %ZDICT_count.exit271.i.i.i
  %i.ij = sub i32 %indvars.iv391.i.i.i.a, %.0231.i.i.i ; 3 uses
  %i.ik = icmp ult i32 %i.ij, %spec.store.select.i.i
  br i1 %i.ik, label %.preheader.i.i.i, label %bb.y

.preheader.i.i.i:                                 ; preds = %bb.x
  %i.il = icmp ult i32 %.0231.i.i.i, %indvars.iv391.i.i.i.a
  br i1 %i.il, label %.lr.ph354.i.i.i.preheader, label %ZDICT_analyzePos.exit.thread.i.i

.lr.ph354.i.i.i.preheader:                        ; preds = %.preheader.i.i.i
  %i.im = sub i32 %indvars.iv391.in.i.i.i, %i.gc
  %i.in = add i32 %indvar, %i.im
  %xtraiter187 = and i32 %i.ij, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol

.lr.ph354.i.i.i.prol:                             ; preds = %.lr.ph354.i.i.i.preheader, %.lr.ph354.i.i.i.prol
  %indvars.iv388.i.i.i.prol = phi i64 [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ], [ %i.ht, %.lr.ph354.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph354.i.i.i.prol ], [ 0, %.lr.ph354.i.i.i.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !8
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  store i8 1, ptr %i.ir, align 1, !tbaa !33
  %indvars.iv.next389.i.i.i.prol = add nuw nsw i64 %indvars.iv388.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph354.i.i.i.prol.loopexit, label %.lr.ph354.i.i.i.prol, !llvm.loop !67

.lr.ph354.i.i.i.prol.loopexit:                    ; preds = %.lr.ph354.i.i.i.prol, %.lr.ph354.i.i.i.preheader
  %indvars.iv388.i.i.i.unr = phi i64 [ %i.ht, %.lr.ph354.i.i.i.preheader ], [ %indvars.iv.next389.i.i.i.prol, %.lr.ph354.i.i.i.prol ]
  %i.is = icmp ult i32 %i.in, 3
  br i1 %i.is, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i

.lr.ph354.i.i.i:                                  ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i
  %indvars.iv388.i.i.i = phi i64 [ %indvars.iv.next389.i.i.i.3, %.lr.ph354.i.i.i ], [ %indvars.iv388.i.i.i.unr, %.lr.ph354.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !8
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iv
  store i8 1, ptr %i.iw, align 1, !tbaa !33
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ja
  store i8 1, ptr %i.jb, align 1, !tbaa !33
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !8
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jf
  store i8 1, ptr %i.jg, align 1, !tbaa !33
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv388.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !8
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.jk
  store i8 1, ptr %i.jl, align 1, !tbaa !33
  %indvars.iv.next389.i.i.i.3 = add nuw nsw i64 %indvars.iv388.i.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.i.3 = trunc i64 %indvars.iv.next389.i.i.i.3 to i32
  %exitcond393.not.i.i.i.3 = icmp eq i32 %indvars.iv391.i.i.i.a, %lftr.wideiv.i.i.i.3
  br i1 %exitcond393.not.i.i.i.3, label %ZDICT_analyzePos.exit.thread.i.i, label %.lr.ph354.i.i.i, !llvm.loop !68

bb.y:                                             ; preds = %bb.x
  br i1 %i.dn, label %.critedge.i.i.i, label %.critedge245.i.i.i.preheader

.critedge.i.i.i:                                  ; preds = %bb.y
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc.i.i.i = tail call i32 @fputc(i32 10, ptr %i.jm) ; 0 uses
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jo = tail call i32 @fflush(ptr noundef %i.jn) ; 0 uses
  %i.jp = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jp, ptr noundef nonnull @.str.35, i32 noundef %i.ij, i32 noundef 7, i32 noundef %i.gf) #19 ; 0 uses
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.js = tail call i32 @fflush(ptr noundef %i.jr) ; 0 uses
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !13
  %fputc241.i.i.i = tail call i32 @fputc(i32 10, ptr %i.jt) ; 0 uses
  %i.ju = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.jv = tail call i32 @fflush(ptr noundef %i.ju) ; 0 uses
  br label %.critedge245.i.i.i.preheader

.critedge245.i.i.i.preheader:                     ; preds = %.critedge.i.i.i, %bb.y
  br label %.critedge245.i.i.i

.critedge245.i.i.i:                               ; preds = %.critedge245.i.i.i.preheader, %bb.ad
  %.0221.i.i.i = phi i32 [ %i.lf, %bb.ad ], [ 7, %.critedge245.i.i.i.preheader ] ; 4 uses
  %.0219.i.i.i = phi i32 [ %spec.select249.i.i.i, %bb.ad ], [ %.0231.i.i.i, %.critedge245.i.i.i.preheader ] ; 12 uses
  %.0217.i.i.i = phi i32 [ %i.le, %bb.ad ], [ %indvars.iv391.i.i.i.a, %.critedge245.i.i.i.preheader ] ; 2 uses
  %i.jw = icmp ult i32 %.0219.i.i.i, %.0217.i.i.i
  br i1 %i.jw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.critedge245.i.i.i
  %i.jx = zext i32 %.0219.i.i.i to i64            ; 4 uses
  %wide.trip.count.i.i.i = zext i32 %.0217.i.i.i to i64 ; 2 uses
  %i.jy = sub nsw i64 %wide.trip.count.i.i.i, %i.jx ; 3 uses
  %xtraiter171 = and i64 %i.jy, 1
  %i.jz = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.ka = icmp eq i64 %i.jz, %i.jx
  br i1 %i.ka, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter179 = and i64 %i.jy, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %i.jx, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.ab ] ; 4 uses
  %.0205332.i.i.i = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %.2.i.i.i.1, %bb.ab ] ; 2 uses
  %.0206331.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.2208.i.i.i.1, %bb.ab ] ; 3 uses
  %.0211329.i.i.i = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i.new ], [ %.1212.i.i.i.1, %bb.ab ] ; 2 uses
  %.0213328.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.ks, %bb.ab ] ; 3 uses
  %.0215327.i.i.i = phi i8 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.1216.i.i.i.1, %bb.ab ] ; 2 uses
  %niter180 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter180.next.1, %bb.ab ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !8
  %i.kd = add i32 %i.kc, %.0221.i.i.i
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !33  ; 2 uses
  %.not243.i.i.i = icmp eq i8 %i.kg, %.0215327.i.i.i
  br i1 %.not243.i.i.i, label %.lr.ph.i.i.i.1, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.kh = icmp ugt i32 %.0213328.i.i.i, %.0206331.i.i.i
  %spec.select246.i.i.i = tail call i32 @llvm.umax.i32(i32 %.0213328.i.i.i, i32 %.0206331.i.i.i)
  %spec.select247.i.i.i = select i1 %i.kh, i32 %.0211329.i.i.i, i32 %.0205332.i.i.i
  %i.ki = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.z, %.lr.ph.i.i.i
  %.1216.i.i.i = phi i8 [ %i.kg, %bb.z ], [ %.0215327.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.1214.i.i.i = phi i32 [ 0, %bb.z ], [ %.0213328.i.i.i, %.lr.ph.i.i.i ]
  %.1212.i.i.i = phi i32 [ %i.ki, %bb.z ], [ %.0211329.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.2208.i.i.i = phi i32 [ %spec.select246.i.i.i, %bb.z ], [ %.0206331.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %.2.i.i.i = phi i32 [ %spec.select247.i.i.i, %bb.z ], [ %.0205332.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.kj = add i32 %.1214.i.i.i, 1                 ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !8
  %i.km = add i32 %i.kl, %.0221.i.i.i
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !33  ; 2 uses
  %.not243.i.i.i.1 = icmp eq i8 %i.kp, %.1216.i.i.i
  br i1 %.not243.i.i.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.1
  %i.kq = icmp ugt i32 %i.kj, %.2208.i.i.i
  %spec.select246.i.i.i.1 = tail call i32 @llvm.umax.i32(i32 %i.kj, i32 %.2208.i.i.i)
  %spec.select247.i.i.i.1 = select i1 %i.kq, i32 %.1212.i.i.i, i32 %.2.i.i.i
  %i.kr = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.1
  %.1216.i.i.i.1 = phi i8 [ %i.kp, %bb.aa ], [ %.1216.i.i.i, %.lr.ph.i.i.i.1 ] ; 2 uses
  %.1214.i.i.i.1 = phi i32 [ 0, %bb.aa ], [ %i.kj, %.lr.ph.i.i.i.1 ]
  %.1212.i.i.i.1 = phi i32 [ %i.kr, %bb.aa ], [ %.1212.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %.2208.i.i.i.1 = phi i32 [ %spec.select246.i.i.i.1, %bb.aa ], [ %.2208.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %.2.i.i.i.1 = phi i32 [ %spec.select247.i.i.i.1, %bb.aa ], [ %.2.i.i.i, %.lr.ph.i.i.i.1 ] ; 3 uses
  %i.ks = add i32 %.1214.i.i.i.1, 1               ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !69

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ab
  %lcmp.mod173.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ %i.jx, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0205332.i.i.i.epil.init = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0206331.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.2208.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0211329.i.i.i.epil.init = phi i32 [ %.0219.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.1212.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.0213328.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.0215327.i.i.i.epil.init = phi i8 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1216.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod178 = trunc i64 %i.jy to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.i.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8
  %i.kv = add i32 %i.ku, %.0221.i.i.i
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !33
  %.not243.i.i.i.epil = icmp eq i8 %i.ky, %.0215327.i.i.i.epil.init
  br i1 %.not243.i.i.i.epil, label %._crit_edge.i.i.i.loopexit.epilog-lcssa, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.kz = icmp ugt i32 %.0213328.i.i.i.epil.init, %.0206331.i.i.i.epil.init
  %spec.select246.i.i.i.epil = tail call i32 @llvm.umax.i32(i32 %.0213328.i.i.i.epil.init, i32 %.0206331.i.i.i.epil.init)
  %spec.select247.i.i.i.epil = select i1 %i.kz, i32 %.0211329.i.i.i.epil.init, i32 %.0205332.i.i.i.epil.init
  %i.la = trunc nuw i64 %indvars.iv.i.i.i.epil.init to i32
  br label %._crit_edge.i.i.i.loopexit.epilog-lcssa

._crit_edge.i.i.i.loopexit.epilog-lcssa:          ; preds = %bb.ac, %.lr.ph.i.i.i.epil.preheader
  %.1214.i.i.i.epil = phi i32 [ 0, %bb.ac ], [ %.0213328.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.1212.i.i.i.epil = phi i32 [ %i.la, %bb.ac ], [ %.0211329.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.2208.i.i.i.epil = phi i32 [ %spec.select246.i.i.i.epil, %bb.ac ], [ %.0206331.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.2.i.i.i.epil = phi i32 [ %spec.select247.i.i.i.epil, %bb.ac ], [ %.0205332.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %i.lb = add i32 %.1214.i.i.i.epil, 1
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.i.loopexit.unr-lcssa, %.critedge245.i.i.i
  %.0213.lcssa.i.i.i = phi i32 [ 0, %.critedge245.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.lb, %._crit_edge.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %.0211.lcssa.i.i.i = phi i32 [ %.0219.i.i.i, %.critedge245.i.i.i ], [ %.1212.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.1212.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  %.0206.lcssa.i.i.i = phi i32 [ 0, %.critedge245.i.i.i ], [ %.2208.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.2208.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ] ; 2 uses
  %.0205.lcssa.i.i.i = phi i32 [ %.0219.i.i.i, %.critedge245.i.i.i ], [ %.2.i.i.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %.2.i.i.i.epil, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  %spec.select248.i.i.i = tail call i32 @llvm.umax.i32(i32 %.0213.lcssa.i.i.i, i32 %.0206.lcssa.i.i.i) ; 2 uses
  %i.lc = icmp ult i32 %spec.select248.i.i.i, %spec.store.select.i.i
  br i1 %i.lc, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  %i.ld = icmp ugt i32 %.0213.lcssa.i.i.i, %.0206.lcssa.i.i.i
  %spec.select249.i.i.i = select i1 %i.ld, i32 %.0211.lcssa.i.i.i, i32 %.0205.lcssa.i.i.i ; 2 uses
  %i.le = add i32 %spec.select249.i.i.i, %spec.select248.i.i.i
  %i.lf = add i32 %.0221.i.i.i, 1
  br label %.critedge245.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.lg = zext i32 %.0219.i.i.i to i64
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8  ; 3 uses
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lj ; 11 uses
  %.012.val22.i273.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !16 ; 4 uses
  %i.ll = ptrtoint ptr %i.lk to i64               ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %ZDICT_count.exit284.i.i.i, %bb.ae
  %indvars.iv383.in.i.i.i = phi i32 [ %indvars.iv383.i.i.i, %ZDICT_count.exit284.i.i.i ], [ %.0219.i.i.i, %bb.ae ]
  %indvars.iv383.i.i.i = add i32 %indvars.iv383.in.i.i.i, 1 ; 3 uses
  %i.lm = zext i32 %indvars.iv383.i.i.i to i64    ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !8
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.lp ; 2 uses
  %.011.val21.i272.i.i.i = load i64, ptr %i.lq, align 1, !tbaa !16 ; 2 uses
  %.not23.i274.i.i.i = icmp eq i64 %.011.val21.i272.i.i.i, %.012.val22.i273.i.i.i
  br i1 %.not23.i274.i.i.i, label %.lr.ph.i278.i.i.i, label %ZDICT_count.exit284.i.i.i

.lr.ph.i278.i.i.i:                                ; preds = %bb.af, %.lr.ph.i278.i.i.i
  %.01125.i279.i.i.i = phi ptr [ %i.ls, %.lr.ph.i278.i.i.i ], [ %i.lq, %bb.af ]
  %.01224.i280.i.i.i = phi ptr [ %i.lr, %.lr.ph.i278.i.i.i ], [ %i.lk, %bb.af ]
  %i.lr = getelementptr inbounds nuw i8, ptr %.01224.i280.i.i.i, i64 8 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.01125.i279.i.i.i, i64 8 ; 2 uses
  %.011.val.i281.i.i.i = load i64, ptr %i.ls, align 1, !tbaa !16 ; 2 uses
  %.012.val.i282.i.i.i = load i64, ptr %i.lr, align 1, !tbaa !16 ; 2 uses
  %.not.i283.i.i.i = icmp eq i64 %.011.val.i281.i.i.i, %.012.val.i282.i.i.i
  br i1 %.not.i283.i.i.i, label %.lr.ph.i278.i.i.i, label %ZDICT_count.exit284.i.i.i

ZDICT_count.exit284.i.i.i:                        ; preds = %.lr.ph.i278.i.i.i, %bb.af
  %.012.lcssa.i275.i.i.i = phi ptr [ %i.lk, %bb.af ], [ %i.lr, %.lr.ph.i278.i.i.i ]
  %.011.val.lcssa.i276.i.i.i = phi i64 [ %.011.val21.i272.i.i.i, %bb.af ], [ %.011.val.i281.i.i.i, %.lr.ph.i278.i.i.i ]
  %.012.val.lcssa.i277.i.i.i = phi i64 [ %.012.val22.i273.i.i.i, %bb.af ], [ %.012.val.i282.i.i.i, %.lr.ph.i278.i.i.i ]
  %i.lt = xor i64 %.012.val.lcssa.i277.i.i.i, %.011.val.lcssa.i276.i.i.i
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.lt, i1 true)
  %i.lv = lshr i64 %i.lu, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.lcssa.i275.i.i.i, i64 %i.lv
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.lx, %i.ll                    ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ly, i64 63)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.store.select.i.i.i ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !8
  %i.mb = add i32 %i.ma, 1
  store i32 %i.mb, ptr %i.lz, align 4, !tbaa !8
  %i.mc = icmp ugt i64 %i.ly, 6
  br i1 %i.mc, label %bb.af, label %.preheader313.i.i.i, !llvm.loop !70

.preheader313.i.i.i:                              ; preds = %ZDICT_count.exit284.i.i.i
  %.not358.i.i.i = icmp eq i32 %.0219.i.i.i, 0
  br i1 %.not358.i.i.i, label %._crit_edge340.i.i.i, label %.lr.ph339.i.i.i

.lr.ph339.i.i.i:                                  ; preds = %.preheader313.i.i.i, %ZDICT_count.exit297.i.i.i
  %.2233338.i.i.i = phi i32 [ %spec.select250.i.i.i, %ZDICT_count.exit297.i.i.i ], [ %.0219.i.i.i, %.preheader313.i.i.i ] ; 2 uses
  %i.md = add i32 %.2233338.i.i.i, -1             ; 2 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !8
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.mh ; 2 uses
  %.011.val21.i285.i.i.i = load i64, ptr %i.mi, align 1, !tbaa !16 ; 2 uses
  %.not23.i287.i.i.i = icmp eq i64 %.011.val21.i285.i.i.i, %.012.val22.i273.i.i.i
  br i1 %.not23.i287.i.i.i, label %.lr.ph.i291.i.i.i, label %ZDICT_count.exit297.i.i.i

.lr.ph.i291.i.i.i:                                ; preds = %.lr.ph339.i.i.i, %.lr.ph.i291.i.i.i
  %.01125.i292.i.i.i = phi ptr [ %i.mk, %.lr.ph.i291.i.i.i ], [ %i.mi, %.lr.ph339.i.i.i ]
  %.01224.i293.i.i.i = phi ptr [ %i.mj, %.lr.ph.i291.i.i.i ], [ %i.lk, %.lr.ph339.i.i.i ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.01224.i293.i.i.i, i64 8 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.01125.i292.i.i.i, i64 8 ; 2 uses
  %.011.val.i294.i.i.i = load i64, ptr %i.mk, align 1, !tbaa !16 ; 2 uses
  %.012.val.i295.i.i.i = load i64, ptr %i.mj, align 1, !tbaa !16 ; 2 uses
  %.not.i296.i.i.i = icmp eq i64 %.011.val.i294.i.i.i, %.012.val.i295.i.i.i
  br i1 %.not.i296.i.i.i, label %.lr.ph.i291.i.i.i, label %ZDICT_count.exit297.i.i.i

ZDICT_count.exit297.i.i.i:                        ; preds = %.lr.ph.i291.i.i.i, %.lr.ph339.i.i.i
  %.012.lcssa.i288.i.i.i = phi ptr [ %i.lk, %.lr.ph339.i.i.i ], [ %i.mj, %.lr.ph.i291.i.i.i ]
  %.011.val.lcssa.i289.i.i.i = phi i64 [ %.011.val21.i285.i.i.i, %.lr.ph339.i.i.i ], [ %.011.val.i294.i.i.i, %.lr.ph.i291.i.i.i ]
  %.012.val.lcssa.i290.i.i.i = phi i64 [ %.012.val22.i273.i.i.i, %.lr.ph339.i.i.i ], [ %.012.val.i295.i.i.i, %.lr.ph.i291.i.i.i ]
  %i.ml = xor i64 %.012.val.lcssa.i290.i.i.i, %.011.val.lcssa.i289.i.i.i
  %i.mm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ml, i1 true)
  %i.mn = lshr i64 %i.mm, 3
  %i.mo = getelementptr inbounds nuw i8, ptr %.012.lcssa.i288.i.i.i, i64 %i.mn
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = sub i64 %i.mp, %i.ll                    ; 2 uses
  %spec.store.select1.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.mq, i64 63)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %spec.store.select1.i.i.i ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !8
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !8
  %i.mu = icmp ugt i64 %i.mq, 6                   ; 2 uses
  %spec.select250.i.i.i = select i1 %i.mu, i32 %i.md, i32 %.2233338.i.i.i ; 3 uses
  %i.mv = icmp ne i32 %spec.select250.i.i.i, 0
  %i.mw = and i1 %i.mu, %i.mv
  br i1 %i.mw, label %.lr.ph339.i.i.i, label %._crit_edge340.i.i.i, !llvm.loop !71

._crit_edge340.i.i.i:                             ; preds = %ZDICT_count.exit297.i.i.i, %.preheader313.i.i.i
  %.2233.lcssa.i.i.i = phi i32 [ 0, %.preheader313.i.i.i ], [ %spec.select250.i.i.i, %ZDICT_count.exit297.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.mx = load i32, ptr %i.do, align 4, !tbaa !8  ; 2 uses
  store i32 %i.mx, ptr %i.dp, align 4, !tbaa !8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %._crit_edge340.i.i.i
  %store_forwarded = phi i32 [ %i.mx, %._crit_edge340.i.i.i ], [ %i.nj, %bb.ag ]
  %indvars.iv370.i.i.i = phi i64 [ 62, %._crit_edge340.i.i.i ], [ %indvars.iv.next371.i.i.i.2, %bb.ag ] ; 5 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv370.i.i.i
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv370.i.i.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !8
  %i.nb = add i32 %i.na, %store_forwarded         ; 2 uses
  store i32 %i.nb, ptr %i.my, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i = add nsw i64 %indvars.iv370.i.i.i, -1 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next371.i.i.i
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next371.i.i.i
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !8
  %i.nf = add i32 %i.ne, %i.nb                    ; 2 uses
  store i32 %i.nf, ptr %i.nc, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i.1 = add nsw i64 %indvars.iv370.i.i.i, -2 ; 3 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next371.i.i.i.1
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next371.i.i.i.1
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !8
  %i.nj = add i32 %i.ni, %i.nf                    ; 2 uses
  store i32 %i.nj, ptr %i.ng, align 4, !tbaa !8
  %indvars.iv.next371.i.i.i.2 = add nsw i64 %indvars.iv370.i.i.i, -3
  %.not406.i.i.i.2 = icmp eq i64 %indvars.iv.next371.i.i.i.1, 0
  br i1 %.not406.i.i.i.2, label %.preheader312.preheader.i.i.i, label %bb.ag, !llvm.loop !72

.preheader312.preheader.i.i.i:                    ; preds = %bb.ag
  %i.nk = load i32, ptr %i.dp, align 4, !tbaa !8
  %.not.i.i.i = icmp ult i32 %i.nk, %spec.store.select.i.i
  br i1 %.not.i.i.i, label %.preheader312.1.i.i.i, label %bb.ah

.preheader312.1.i.i.i:                            ; preds = %.preheader312.preheader.i.i.i
  %i.nl = load i32, ptr %i.dq, align 8, !tbaa !8
  %.not.1.i.i.i = icmp ult i32 %i.nl, %spec.store.select.i.i
  br i1 %.not.1.i.i.i, label %.preheader312.2.i.i.i, label %bb.ah

.preheader312.2.i.i.i:                            ; preds = %.preheader312.1.i.i.i
  %i.nm = load i32, ptr %i.dr, align 4, !tbaa !8
  %.not.2.i.i.i = icmp ult i32 %i.nm, %spec.store.select.i.i
  br i1 %.not.2.i.i.i, label %.preheader312.3.i.i.i, label %bb.ah

end_hunk_1
begin_hunk_2_@ZDICT_trainFromBuffer_legacy:bb.a
  %i.om = load i32, ptr %i.er, align 4, !tbaa !8
  %.not.28.i.i.i = icmp ult i32 %i.om, %spec.store.select.i.i
  br i1 %.not.28.i.i.i, label %.preheader312.29.i.i.i, label %bb.ah

.preheader312.29.i.i.i:                           ; preds = %.preheader312.28.i.i.i
  %i.on = load i32, ptr %i.es, align 8, !tbaa !8
  %.not.29.i.i.i = icmp ult i32 %i.on, %spec.store.select.i.i
  br i1 %.not.29.i.i.i, label %.preheader312.30.i.i.i, label %bb.ah

.preheader312.30.i.i.i:                           ; preds = %.preheader312.29.i.i.i
  %i.oo = load i32, ptr %i.et, align 4, !tbaa !8
  %.not.30.i.i.i = icmp ult i32 %i.oo, %spec.store.select.i.i
  br i1 %.not.30.i.i.i, label %.preheader312.31.i.i.i, label %bb.ah

.preheader312.31.i.i.i:                           ; preds = %.preheader312.30.i.i.i
  %i.op = load i32, ptr %i.eu, align 16, !tbaa !8
  %.not.31.i.i.i = icmp ult i32 %i.op, %spec.store.select.i.i
  br i1 %.not.31.i.i.i, label %.preheader312.32.i.i.i, label %bb.ah

.preheader312.32.i.i.i:                           ; preds = %.preheader312.31.i.i.i
  %i.oq = load i32, ptr %i.ev, align 4, !tbaa !8
  %.not.32.i.i.i = icmp ult i32 %i.oq, %spec.store.select.i.i
  br i1 %.not.32.i.i.i, label %.preheader312.33.i.i.i, label %bb.ah

.preheader312.33.i.i.i:                           ; preds = %.preheader312.32.i.i.i
  %i.or = load i32, ptr %i.ew, align 8, !tbaa !8
  %.not.33.i.i.i = icmp ult i32 %i.or, %spec.store.select.i.i
  br i1 %.not.33.i.i.i, label %.preheader312.34.i.i.i, label %bb.ah

.preheader312.34.i.i.i:                           ; preds = %.preheader312.33.i.i.i
  %i.os = load i32, ptr %i.ex, align 4, !tbaa !8
  %.not.34.i.i.i = icmp ult i32 %i.os, %spec.store.select.i.i
  br i1 %.not.34.i.i.i, label %.preheader312.35.i.i.i, label %bb.ah

.preheader312.35.i.i.i:                           ; preds = %.preheader312.34.i.i.i
  %i.ot = load i32, ptr %i.ey, align 16, !tbaa !8
  %.not.35.i.i.i = icmp ult i32 %i.ot, %spec.store.select.i.i
  br i1 %.not.35.i.i.i, label %.preheader312.36.i.i.i, label %bb.ah

.preheader312.36.i.i.i:                           ; preds = %.preheader312.35.i.i.i
  %i.ou = load i32, ptr %i.ez, align 4, !tbaa !8
  %.not.36.i.i.i = icmp ult i32 %i.ou, %spec.store.select.i.i
  br i1 %.not.36.i.i.i, label %.preheader312.37.i.i.i, label %bb.ah

.preheader312.37.i.i.i:                           ; preds = %.preheader312.36.i.i.i
  %i.ov = load i32, ptr %i.fa, align 8, !tbaa !8
  %.not.37.i.i.i = icmp ult i32 %i.ov, %spec.store.select.i.i
  br i1 %.not.37.i.i.i, label %.preheader312.38.i.i.i, label %bb.ah

.preheader312.38.i.i.i:                           ; preds = %.preheader312.37.i.i.i
  %i.ow = load i32, ptr %i.fb, align 4, !tbaa !8
  %.not.38.i.i.i = icmp ult i32 %i.ow, %spec.store.select.i.i
  br i1 %.not.38.i.i.i, label %.preheader312.39.i.i.i, label %bb.ah

.preheader312.39.i.i.i:                           ; preds = %.preheader312.38.i.i.i
  %i.ox = load i32, ptr %i.fc, align 16, !tbaa !8
  %.not.39.i.i.i = icmp ult i32 %i.ox, %spec.store.select.i.i
  br i1 %.not.39.i.i.i, label %.preheader312.40.i.i.i, label %bb.ah

.preheader312.40.i.i.i:                           ; preds = %.preheader312.39.i.i.i
  %i.oy = load i32, ptr %i.fd, align 4, !tbaa !8
  %.not.40.i.i.i = icmp ult i32 %i.oy, %spec.store.select.i.i
  br i1 %.not.40.i.i.i, label %.preheader312.41.i.i.i, label %bb.ah

.preheader312.41.i.i.i:                           ; preds = %.preheader312.40.i.i.i
  %i.oz = load i32, ptr %i.fe, align 8, !tbaa !8
  %.not.41.i.i.i = icmp ult i32 %i.oz, %spec.store.select.i.i
  br i1 %.not.41.i.i.i, label %.preheader312.42.i.i.i, label %bb.ah

.preheader312.42.i.i.i:                           ; preds = %.preheader312.41.i.i.i
  %i.pa = load i32, ptr %i.ff, align 4, !tbaa !8
  %.not.42.i.i.i = icmp ult i32 %i.pa, %spec.store.select.i.i
  br i1 %.not.42.i.i.i, label %.preheader312.43.i.i.i, label %bb.ah

.preheader312.43.i.i.i:                           ; preds = %.preheader312.42.i.i.i
  %i.pb = load i32, ptr %i.fg, align 16, !tbaa !8
  %.not.43.i.i.i = icmp ult i32 %i.pb, %spec.store.select.i.i
  br i1 %.not.43.i.i.i, label %.preheader312.44.i.i.i, label %bb.ah

.preheader312.44.i.i.i:                           ; preds = %.preheader312.43.i.i.i
  %i.pc = load i32, ptr %i.fh, align 4, !tbaa !8
  %.not.44.i.i.i = icmp ult i32 %i.pc, %spec.store.select.i.i
  br i1 %.not.44.i.i.i, label %.preheader312.45.i.i.i, label %bb.ah

.preheader312.45.i.i.i:                           ; preds = %.preheader312.44.i.i.i
  %i.pd = load i32, ptr %i.fi, align 8, !tbaa !8
  %.not.45.i.i.i = icmp ult i32 %i.pd, %spec.store.select.i.i
  br i1 %.not.45.i.i.i, label %.preheader312.46.i.i.i, label %bb.ah

.preheader312.46.i.i.i:                           ; preds = %.preheader312.45.i.i.i
  %i.pe = load i32, ptr %i.fj, align 4, !tbaa !8
  %.not.46.i.i.i = icmp ult i32 %i.pe, %spec.store.select.i.i
  br i1 %.not.46.i.i.i, label %.preheader312.47.i.i.i, label %bb.ah

.preheader312.47.i.i.i:                           ; preds = %.preheader312.46.i.i.i
  %i.pf = load i32, ptr %i.fk, align 16, !tbaa !8
  %.not.47.i.i.i = icmp ult i32 %i.pf, %spec.store.select.i.i
  br i1 %.not.47.i.i.i, label %.preheader312.48.i.i.i, label %bb.ah

.preheader312.48.i.i.i:                           ; preds = %.preheader312.47.i.i.i
  %i.pg = load i32, ptr %i.fl, align 4, !tbaa !8
  %.not.48.i.i.i = icmp ult i32 %i.pg, %spec.store.select.i.i
  br i1 %.not.48.i.i.i, label %.preheader312.49.i.i.i, label %bb.ah

.preheader312.49.i.i.i:                           ; preds = %.preheader312.48.i.i.i
  %i.ph = load i32, ptr %i.fm, align 8, !tbaa !8
  %.not.49.i.i.i = icmp ult i32 %i.ph, %spec.store.select.i.i
  br i1 %.not.49.i.i.i, label %.preheader312.50.i.i.i, label %bb.ah

.preheader312.50.i.i.i:                           ; preds = %.preheader312.49.i.i.i
  %i.pi = load i32, ptr %i.fn, align 4, !tbaa !8
  %.not.50.i.i.i = icmp ult i32 %i.pi, %spec.store.select.i.i
  br i1 %.not.50.i.i.i, label %.preheader312.51.i.i.i, label %bb.ah

.preheader312.51.i.i.i:                           ; preds = %.preheader312.50.i.i.i
  %i.pj = load i32, ptr %i.fo, align 16, !tbaa !8
  %.not.51.i.i.i = icmp ult i32 %i.pj, %spec.store.select.i.i
  br i1 %.not.51.i.i.i, label %.preheader312.52.i.i.i, label %bb.ah

.preheader312.52.i.i.i:                           ; preds = %.preheader312.51.i.i.i
  %i.pk = load i32, ptr %i.fp, align 4, !tbaa !8
  %.not.52.i.i.i = icmp ult i32 %i.pk, %spec.store.select.i.i
  br i1 %.not.52.i.i.i, label %.preheader312.53.i.i.i, label %bb.ah

.preheader312.53.i.i.i:                           ; preds = %.preheader312.52.i.i.i
  %i.pl = load i32, ptr %i.fq, align 8, !tbaa !8
  %.not.53.i.i.i = icmp ult i32 %i.pl, %spec.store.select.i.i
  br i1 %.not.53.i.i.i, label %.preheader312.54.i.i.i, label %bb.ah

.preheader312.54.i.i.i:                           ; preds = %.preheader312.53.i.i.i
  %i.pm = load i32, ptr %i.fr, align 4, !tbaa !8
  %.not.54.i.i.i = icmp ult i32 %i.pm, %spec.store.select.i.i
  br i1 %.not.54.i.i.i, label %.preheader312.55.i.i.i, label %bb.ah

.preheader312.55.i.i.i:                           ; preds = %.preheader312.54.i.i.i
  %i.pn = load i32, ptr %i.fs, align 16, !tbaa !8
  %.not.55.i.i.i = icmp ult i32 %i.pn, %spec.store.select.i.i
  br i1 %.not.55.i.i.i, label %.preheader312.56.i.i.i, label %bb.ah

.preheader312.56.i.i.i:                           ; preds = %.preheader312.55.i.i.i
  %i.po = load i32, ptr %i.ft, align 4, !tbaa !8
  %.not.56.i.i.i = icmp ult i32 %i.po, %spec.store.select.i.i
  %spec.select.i.i.i = select i1 %.not.56.i.i.i, i32 6, i32 7
  br label %bb.ah

bb.ah:                                            ; preds = %.preheader312.56.i.i.i, %.preheader312.55.i.i.i, %.preheader312.54.i.i.i, %.preheader312.53.i.i.i, %.preheader312.52.i.i.i, %.preheader312.51.i.i.i, %.preheader312.50.i.i.i, %.preheader312.49.i.i.i, %.preheader312.48.i.i.i, %.preheader312.47.i.i.i, %.preheader312.46.i.i.i, %.preheader312.45.i.i.i, %.preheader312.44.i.i.i, %.preheader312.43.i.i.i, %.preheader312.42.i.i.i, %.preheader312.41.i.i.i, %.preheader312.40.i.i.i, %.preheader312.39.i.i.i, %.preheader312.38.i.i.i, %.preheader312.37.i.i.i, %.preheader312.36.i.i.i, %.preheader312.35.i.i.i, %.preheader312.34.i.i.i, %.preheader312.33.i.i.i, %.preheader312.32.i.i.i, %.preheader312.31.i.i.i, %.preheader312.30.i.i.i, %.preheader312.29.i.i.i, %.preheader312.28.i.i.i, %.preheader312.27.i.i.i, %.preheader312.26.i.i.i, %.preheader312.25.i.i.i, %.preheader312.24.i.i.i, %.preheader312.23.i.i.i, %.preheader312.22.i.i.i, %.preheader312.21.i.i.i, %.preheader312.20.i.i.i, %.preheader312.19.i.i.i, %.preheader312.18.i.i.i, %.preheader312.17.i.i.i, %.preheader312.16.i.i.i, %.preheader312.15.i.i.i, %.preheader312.14.i.i.i, %.preheader312.13.i.i.i, %.preheader312.12.i.i.i, %.preheader312.11.i.i.i, %.preheader312.10.i.i.i, %.preheader312.9.i.i.i, %.preheader312.8.i.i.i, %.preheader312.7.i.i.i, %.preheader312.6.i.i.i, %.preheader312.5.i.i.i, %.preheader312.4.i.i.i, %.preheader312.3.i.i.i, %.preheader312.2.i.i.i, %.preheader312.1.i.i.i, %.preheader312.preheader.i.i.i
  %.0203.lcssa.i.i.i = phi i32 [ 63, %.preheader312.preheader.i.i.i ], [ 24, %.preheader312.39.i.i.i ], [ 62, %.preheader312.1.i.i.i ], [ %spec.select.i.i.i, %.preheader312.56.i.i.i ], [ 61, %.preheader312.2.i.i.i ], [ 34, %.preheader312.29.i.i.i ], [ 60, %.preheader312.3.i.i.i ], [ 8, %.preheader312.55.i.i.i ], [ 59, %.preheader312.4.i.i.i ], [ 21, %.preheader312.42.i.i.i ], [ 58, %.preheader312.5.i.i.i ], [ 9, %.preheader312.54.i.i.i ], [ 57, %.preheader312.6.i.i.i ], [ 33, %.preheader312.30.i.i.i ], [ 56, %.preheader312.7.i.i.i ], [ 10, %.preheader312.53.i.i.i ], [ 55, %.preheader312.8.i.i.i ], [ 27, %.preheader312.36.i.i.i ], [ 54, %.preheader312.9.i.i.i ], [ 11, %.preheader312.52.i.i.i ], [ 53, %.preheader312.10.i.i.i ], [ 32, %.preheader312.31.i.i.i ], [ 52, %.preheader312.11.i.i.i ], [ 12, %.preheader312.51.i.i.i ], [ 51, %.preheader312.12.i.i.i ], [ 22, %.preheader312.41.i.i.i ], [ 50, %.preheader312.13.i.i.i ], [ 13, %.preheader312.50.i.i.i ], [ 49, %.preheader312.14.i.i.i ], [ 31, %.preheader312.32.i.i.i ], [ 48, %.preheader312.15.i.i.i ], [ 14, %.preheader312.49.i.i.i ], [ 47, %.preheader312.16.i.i.i ], [ 25, %.preheader312.38.i.i.i ], [ 46, %.preheader312.17.i.i.i ], [ 15, %.preheader312.48.i.i.i ], [ 45, %.preheader312.18.i.i.i ], [ 30, %.preheader312.33.i.i.i ], [ 44, %.preheader312.19.i.i.i ], [ 16, %.preheader312.47.i.i.i ], [ 43, %.preheader312.20.i.i.i ], [ 23, %.preheader312.40.i.i.i ], [ 42, %.preheader312.21.i.i.i ], [ 17, %.preheader312.46.i.i.i ], [ 41, %.preheader312.22.i.i.i ], [ 29, %.preheader312.34.i.i.i ], [ 40, %.preheader312.23.i.i.i ], [ 18, %.preheader312.45.i.i.i ], [ 39, %.preheader312.24.i.i.i ], [ 26, %.preheader312.37.i.i.i ], [ 38, %.preheader312.25.i.i.i ], [ 19, %.preheader312.44.i.i.i ], [ 37, %.preheader312.26.i.i.i ], [ 28, %.preheader312.35.i.i.i ], [ 36, %.preheader312.27.i.i.i ], [ 20, %.preheader312.43.i.i.i ], [ 35, %.preheader312.28.i.i.i ] ; 2 uses
  %i.pp = zext nneg i32 %.0203.lcssa.i.i.i to i64
  %i.pq = getelementptr i8, ptr %i.lk, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 -1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !33
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.0202.i.i.i = phi i32 [ %.0203.lcssa.i.i.i, %bb.ah ], [ %i.py, %bb.ai ] ; 10 uses
  %i.pt = zext i32 %.0202.i.i.i to i64            ; 6 uses
  %i.pu = getelementptr i8, ptr %i.lk, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 -2
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !33
  %i.px = icmp eq i8 %i.pw, %i.ps
  %i.py = add i32 %.0202.i.i.i, -1
  br i1 %i.px, label %bb.ai, label %bb.aj, !llvm.loop !73

bb.aj:                                            ; preds = %bb.ai
  %i.pz = icmp ult i32 %.0202.i.i.i, 7
  br i1 %i.pz, label %ZDICT_analyzePos.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.fu, align 4, !tbaa !8
  %xtraiter181 = and i64 %i.pt, 1
  %i.qa = icmp eq i32 %.0202.i.i.i, 7
  br i1 %i.qa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ak
  %i.qb = and i64 %i.pt, 4294967294
  %i.qc = add nsw i64 %i.qb, -8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.new
  %i.qd = phi i32 [ 0, %.new ], [ %i.qq, %bb.al ]
  %indvars.iv373.i.i.i = phi i64 [ 7, %.new ], [ %indvars.iv.next374.i.i.i.1, %bb.al ] ; 5 uses
  %niter186 = phi i64 [ 0, %.new ], [ %niter186.next.1, %bb.al ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !8
  %i.qg = trunc nuw i64 %indvars.iv373.i.i.i to i32
  %i.qh = add i32 %i.qg, -3
  %i.qi = mul i32 %i.qh, %i.qf
  %i.qj = add i32 %i.qi, %i.qd                    ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i = add nuw nsw i64 %indvars.iv373.i.i.i, 1 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next374.i.i.i
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !8
  %i.qn = trunc nuw i64 %indvars.iv.next374.i.i.i to i32
  %i.qo = add i32 %i.qn, -3
  %i.qp = mul i32 %i.qo, %i.qm
  %i.qq = add i32 %i.qp, %i.qj                    ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next374.i.i.i
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !8
  %indvars.iv.next374.i.i.i.1 = add nuw nsw i64 %indvars.iv373.i.i.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2
  %niter186.ncmp.1 = icmp eq i64 %niter186, %i.qc
  br i1 %niter186.ncmp.1, label %.unr-lcssa, label %bb.al, !llvm.loop !74

.unr-lcssa:                                       ; preds = %bb.al
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %bb.am, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ak
  %.epil.init = phi i32 [ 0, %bb.ak ], [ %i.qq, %.unr-lcssa ]
  %indvars.iv373.i.i.i.epil.init = phi i64 [ 7, %bb.ak ], [ %indvars.iv.next374.i.i.i.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod184 = trunc i32 %.0202.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv373.i.i.i.epil.init
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !8
  %i.qu = trunc nuw i64 %indvars.iv373.i.i.i.epil.init to i32
  %i.qv = add i32 %i.qu, -3
  %i.qw = mul i32 %i.qv, %i.qt
  %i.qx = add i32 %i.qw, %.epil.init
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv373.i.i.i.epil.init
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %.unr-lcssa, %.epil.preheader
  br i1 %i.dn, label %bb.an, label %._crit_edge398.i.i.i

._crit_edge398.i.i.i:                             ; preds = %bb.am
  %.phi.trans.insert399.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %.pre400.i.i.i = load i32, ptr %.phi.trans.insert399.i.i.i, align 4, !tbaa !8
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qz = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !8  ; 3 uses
  %i.rc = uitofp i32 %i.rb to double
  %i.rd = uitofp i32 %.0202.i.i.i to double
  %i.re = fdiv double %i.rc, %i.rd
  %i.rf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.36, i32 noundef %i.li, i32 noundef %.0202.i.i.i, i32 noundef %i.rb, double noundef %i.re) #19 ; 0 uses
  %i.rg = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.rh = tail call i32 @fflush(ptr noundef %i.rg) ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge398.i.i.i
  %i.ri = phi i32 [ %.pre400.i.i.i, %._crit_edge398.i.i.i ], [ %i.rb, %bb.an ] ; 4 uses
  %i.rj = icmp ult i32 %.2233.lcssa.i.i.i, %indvars.iv383.i.i.i
  br i1 %i.rj, label %.lr.ph351.preheader.i.i.i, label %ZDICT_analyzePos.exit.i.i

.lr.ph351.preheader.i.i.i:                        ; preds = %bb.ao
  %i.rk = zext i32 %.2233.lcssa.i.i.i to i64
  br label %.lr.ph351.i.i.i

.lr.ph351.i.i.i:                                  ; preds = %._crit_edge348.i.i.i, %.lr.ph351.preheader.i.i.i
  %indvars.iv379.i.i.i = phi i64 [ %i.rk, %.lr.ph351.preheader.i.i.i ], [ %indvars.iv.next380.i.i.i, %._crit_edge348.i.i.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv379.i.i.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !8  ; 5 uses
  %i.rn = icmp eq i32 %i.rm, %i.li
  br i1 %i.rn, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph351.i.i.i
  %i.ro = zext i32 %i.rm to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ro ; 2 uses
  %.011.val21.i298.i.i.i = load i64, ptr %i.rp, align 1, !tbaa !16 ; 2 uses
  %.012.val22.i299.i.i.i = load i64, ptr %i.lk, align 1, !tbaa !16 ; 2 uses
  %.not23.i300.i.i.i = icmp eq i64 %.011.val21.i298.i.i.i, %.012.val22.i299.i.i.i
  br i1 %.not23.i300.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

.lr.ph.i304.i.i.i:                                ; preds = %bb.ap, %.lr.ph.i304.i.i.i
  %.01125.i305.i.i.i = phi ptr [ %i.rr, %.lr.ph.i304.i.i.i ], [ %i.rp, %bb.ap ]
  %.01224.i306.i.i.i = phi ptr [ %i.rq, %.lr.ph.i304.i.i.i ], [ %i.lk, %bb.ap ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.01224.i306.i.i.i, i64 8 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.01125.i305.i.i.i, i64 8 ; 2 uses
  %.011.val.i307.i.i.i = load i64, ptr %i.rr, align 1, !tbaa !16 ; 2 uses
  %.012.val.i308.i.i.i = load i64, ptr %i.rq, align 1, !tbaa !16 ; 2 uses
  %.not.i309.i.i.i = icmp eq i64 %.011.val.i307.i.i.i, %.012.val.i308.i.i.i
  br i1 %.not.i309.i.i.i, label %.lr.ph.i304.i.i.i, label %ZDICT_count.exit310.i.i.i

ZDICT_count.exit310.i.i.i:                        ; preds = %.lr.ph.i304.i.i.i, %bb.ap
  %.012.lcssa.i301.i.i.i = phi ptr [ %i.lk, %bb.ap ], [ %i.rq, %.lr.ph.i304.i.i.i ]
  %.011.val.lcssa.i302.i.i.i = phi i64 [ %.011.val21.i298.i.i.i, %bb.ap ], [ %.011.val.i307.i.i.i, %.lr.ph.i304.i.i.i ]
  %.012.val.lcssa.i303.i.i.i = phi i64 [ %.012.val22.i299.i.i.i, %bb.ap ], [ %.012.val.i308.i.i.i, %.lr.ph.i304.i.i.i ]
  %i.rs = xor i64 %.012.val.lcssa.i303.i.i.i, %.011.val.lcssa.i302.i.i.i
  %i.rt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.rs, i1 true)
  %i.ru = lshr i64 %i.rt, 3
  %i.rv = getelementptr inbounds nuw i8, ptr %.012.lcssa.i301.i.i.i, i64 %i.ru
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = sub i64 %i.rw, %i.ll
  %i.ry = trunc i64 %i.rx to i32
  %spec.select251.i.i.i = tail call i32 @llvm.umin.i32(i32 %.0202.i.i.i, i32 %i.ry)
  br label %bb.aq

bb.aq:                                            ; preds = %ZDICT_count.exit310.i.i.i, %.lr.ph351.i.i.i
  %.0.i.i.i = phi i32 [ %spec.select251.i.i.i, %ZDICT_count.exit310.i.i.i ], [ %.0202.i.i.i, %.lr.ph351.i.i.i ] ; 2 uses
  %i.rz = add i32 %.0.i.i.i, %i.rm
  %i.sa = icmp ult i32 %i.rm, %i.rz
  br i1 %i.sa, label %.lr.ph347.preheader.i.i.i, label %._crit_edge348.i.i.i

.lr.ph347.preheader.i.i.i:                        ; preds = %bb.aq
  %i.sb = zext i32 %i.rm to i64
  %scevgep.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.sb
  %i.sc = add i32 %.0.i.i.i, -1
  %i.sd = zext i32 %i.sc to i64
  %i.se = add nuw nsw i64 %i.sd, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i, i8 1, i64 %i.se, i1 false), !tbaa !33
  br label %._crit_edge348.i.i.i

._crit_edge348.i.i.i:                             ; preds = %.lr.ph347.preheader.i.i.i, %bb.aq
  %indvars.iv.next380.i.i.i = add nuw nsw i64 %indvars.iv379.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next380.i.i.i, %i.lm
  br i1 %exitcond386.not.i.i.i, label %ZDICT_analyzePos.exit.i.i, label %.lr.ph351.i.i.i, !llvm.loop !75

ZDICT_analyzePos.exit.thread.i.i:                 ; preds = %.lr.ph354.i.i.i.prol.loopexit, %.lr.ph354.i.i.i, %bb.aj, %.preheader.i.i.i, %.lr.ph357.preheader.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.sf = add i32 %.095150.i.i, 1
  br label %bb.aw, !llvm.loop !62

ZDICT_analyzePos.exit.i.i:                        ; preds = %._crit_edge348.i.i.i, %bb.ao
  %i.sg = shl nuw i64 %i.pt, 32
  %i.sh = or disjoint i64 %i.sg, %i.lj            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.si = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %i.sh, i32 %i.ri, i32 noundef 0, ptr noundef nonnull readonly %i.o) ; 4 uses
  %.not.i111.i.i = icmp eq i32 %i.si, 0
  br i1 %.not.i111.i.i, label %bb.ar, label %.preheader.i112.preheader.i.i

.preheader.i112.preheader.i.i:                    ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sj ; 2 uses
  %.sroa.0.0.copyload.i142.i.i = load i64, ptr %i.sk, align 4
  %.sroa.2.0..sroa_idx.i143.i.i = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.2.0.copyload.i144.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i143.i.i, align 4
  %i.sl = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i142.i.i, i32 %.sroa.2.0.copyload.i144.i.i, i32 noundef %i.si, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i145.i.i = icmp eq i32 %i.sl, 0
  br i1 %.not43.i145.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i112.preheader.i.i, %ZDICT_removeDictItem.exit.i.i.i
  %i.sm = phi i32 [ %i.sy, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sl, %.preheader.i112.preheader.i.i ] ; 3 uses
  %i.sn = phi i64 [ %i.sw, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.sj, %.preheader.i112.preheader.i.i ]
  %.03544.i146.i.i = phi i32 [ %i.sm, %ZDICT_removeDictItem.exit.i.i.i ], [ %i.si, %.preheader.i112.preheader.i.i ] ; 2 uses
  %i.so = load i32, ptr %i.x, align 4, !tbaa !9   ; 2 uses
  %i.sp = add i32 %i.so, -1                       ; 2 uses
  %i.sq = icmp ult i32 %.03544.i146.i.i, %i.sp
  br i1 %i.sq, label %.lr.ph.preheader.i.i.i.i, label %ZDICT_removeDictItem.exit.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.sr = mul nuw nsw i64 %i.sn, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.sr ; 2 uses
  %scevgep12.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 12
  %reass.sub = sub i32 %i.so, %.03544.i146.i.i
  %i.ss = add i32 %reass.sub, -2
  %i.st = zext i32 %i.ss to i64
  %i.su = mul nuw nsw i64 %i.st, 12
  %i.sv = add nuw nsw i64 %i.su, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep12.i.i.i.i, i64 %i.sv, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !9
  %.pre14.i.i.i.i = add i32 %.pre.i.i.i.i, -1
  br label %ZDICT_removeDictItem.exit.i.i.i

ZDICT_removeDictItem.exit.i.i.i:                  ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre14.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.sp, %.preheader.i.i.i.i ]
  store i32 %.pre-phi.i.i.i.i, ptr %i.x, align 4, !tbaa !9
  %i.sw = zext i32 %i.sm to i64                   ; 2 uses
  %i.sx = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.sw ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.sx, align 4
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  %i.sy = tail call fastcc i32 @ZDICT_tryMerge(ptr noundef nonnull %i.x, i64 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.2.0.copyload.i.i.i, i32 noundef %i.sm, ptr noundef nonnull readonly %i.o) ; 2 uses
  %.not43.i.i.i = icmp eq i32 %i.sy, 0
  br i1 %.not43.i.i.i, label %ZDICT_insertDictItem.exit.i.i, label %.preheader.i.i.i.i, !llvm.loop !76

bb.ar:                                            ; preds = %ZDICT_analyzePos.exit.i.i
  %i.sz = load i32, ptr %i.x, align 4, !tbaa !9
  %spec.select.i113.i.i = tail call i32 @llvm.umin.i32(i32 %i.sz, i32 %i.fv) ; 4 uses
  %.03445.i.i.i = add i32 %spec.select.i113.i.i, -1 ; 2 uses
  %i.ta = zext i32 %.03445.i.i.i to i64
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !12
  %i.te = icmp ult i32 %i.td, %i.ri
  br i1 %i.te, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.ar, %.lr.ph.i115.i.i
  %i.tf = phi ptr [ %i.tj, %.lr.ph.i115.i.i ], [ %i.tb, %bb.ar ]
  %.03447.i.i.i = phi i32 [ %.034.i.i.i, %.lr.ph.i115.i.i ], [ %.03445.i.i.i, %bb.ar ] ; 3 uses
  %.034.in46.i.i.i = phi i32 [ %.03447.i.i.i, %.lr.ph.i115.i.i ], [ %spec.select.i113.i.i, %bb.ar ]
  %i.tg = zext i32 %.034.in46.i.i.i to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.tg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.th, ptr noundef nonnull align 4 dereferenceable(12) %i.tf, i64 12, i1 false), !tbaa.struct !77
  %.034.i.i.i = add i32 %.03447.i.i.i, -1         ; 2 uses
  %i.ti = zext i32 %.034.i.i.i to i64
  %i.tj = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !12
  %i.tm = icmp ult i32 %i.tl, %i.ri
  br i1 %i.tm, label %.lr.ph.i115.i.i, label %._crit_edge.i114.i.i, !llvm.loop !78

._crit_edge.i114.i.i:                             ; preds = %.lr.ph.i115.i.i, %bb.ar
  %.034.in.lcssa.i.i.i = phi i32 [ %spec.select.i113.i.i, %bb.ar ], [ %.03447.i.i.i, %.lr.ph.i115.i.i ]
end_hunk_2
begin_hunk_3_@ZDICT_trainFromBuffer_legacy:bb.a
  %.8.i = phi i64 [ -64, %ZDICT_totalSampleSize.exit.i ], [ %.8.ph.i, %.thread233.sink.split.i ]
  tail call void @free(ptr noundef %i.o) #16
  br label %ZDICT_totalSampleSize.exit.thread

ZDICT_totalSampleSize.exit.thread:                ; preds = %bb.a, %bb.b, %ZDICT_totalSampleSize.exit, %ZDICT_trainFromBuffer_unsafe_legacy.exit
  %.0 = phi i64 [ 0, %ZDICT_totalSampleSize.exit ], [ %.8.i, %ZDICT_trainFromBuffer_unsafe_legacy.exit ], [ -64, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZDICT_trainFromBuffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.ZDICT_fastCover_params_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 8, ptr %i.a, align 4, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.b, align 4, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 3, ptr %i.c, align 4, !tbaa !91
  %i.d = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i64 %i.d
}

declare i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @ZDICT_addEntropyTablesFromBuffer(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.ZDICT_params_t, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.a = tail call fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull byval(%struct.ZDICT_params_t) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZDICT_addEntropyTablesFromBuffer_advanced(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly byval(%struct.ZDICT_params_t) align 8 captures(none) %6) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %6, align 8, !tbaa !9      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = select i1 %i.b, i32 3, i32 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #19 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %i.k) #20 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.n = tail call i32 @fflush(ptr noundef %i.m)  ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = add i64 %2, -8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.r = sub i64 0, %1
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r ; 3 uses
  %i.t = tail call fastcc i64 @ZDICT_analyzeEntropy(ptr noundef nonnull %i.o, i64 noundef %i.p, i32 noundef %i.c, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %i.s, i64 noundef %1, i32 noundef %i.e) ; 3 uses
  %i.u = icmp ult i64 %i.t, -119
  %i.v = add nuw i64 %i.t, 8                      ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.critedge
  store i32 -332356553, ptr %0, align 1, !tbaa !8
  %i.w = tail call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.s, i64 noundef %1, i64 noundef 0) #18
  %i.x = urem i64 %i.w, 2147450880
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 32768
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %.not46 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not46, i32 %i.z, i32 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 1, !tbaa !8
  %i.ae = add i64 %i.v, %1                        ; 2 uses
  %i.af = icmp ult i64 %i.ae, %2
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.s, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.ae)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %i.ah, %bb.e ], [ %i.t, %.critedge ]
  ret i64 %.1
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #5

declare void @ZSTD_getParams(ptr dead_on_unwind writable sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) local_unnamed_addr #5

declare ptr @ZSTD_createCCtx() local_unnamed_addr #5

declare i64 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @HUF_writeCTable_wksp(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCDict(ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_freeCCtx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

declare i64 @ZSTD_compressBegin_usingCDict_deprecated(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @ZSTD_compressBlock_deprecated(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @ZSTD_getSeqStore(ptr noundef) local_unnamed_addr #5

declare i32 @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #5

declare i32 @divsufsort(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @ZDICT_tryMerge(ptr nofree noundef nonnull captures(none) %0, i64 %1, i32 %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #12 {
bb.a:
  %.sroa.0102.sroa.0.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %.sroa.0102.sroa.14.0.extract.shift = lshr i64 %1, 32 ; 2 uses
  %.sroa.0102.sroa.14.0.extract.trunc = trunc nuw i64 %.sroa.0102.sroa.14.0.extract.shift to i32 ; 7 uses
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 3 uses
  %i.b = add i32 %.sroa.0102.sroa.14.0.extract.trunc, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.c = icmp ugt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %3 to i64
  %wide.trip.count = zext i32 %i.a to i64
  br label %.lr.ph

.lr.ph197:                                        ; preds = %bb.e
  %i.e = and i64 %1, 4294967295
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = zext i32 %3 to i64
  %wide.trip.count231 = zext i32 %i.a to i64
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.i = icmp eq i64 %indvars.iv, %i.d
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 3 uses
  %i.l = icmp ule i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc
  %.not164 = icmp ugt i32 %i.k, %i.b
  %or.cond = select i1 %i.l, i1 true, i1 %.not164
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw i32 %i.k, %.sroa.0102.sroa.0.0.extract.trunc ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = add i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4, !tbaa !11
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.j, align 4, !tbaa !9
  %i.q = mul i32 %i.m, %2
  %i.r = udiv i32 %i.q, %.sroa.0102.sroa.14.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.v = add i32 %i.r, %i.u
  %i.w = add i32 %i.v, %i.t                       ; 3 uses
  store i32 %i.w, ptr %i.s, align 4, !tbaa !12
  %.sroa.0102.0.copyload = load i64, ptr %i.j, align 4
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %.lr.ph203, label %.critedge

.lr.ph203:                                        ; preds = %bb.c, %bb.d
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %bb.d ], [ %indvars.iv, %bb.c ] ; 3 uses
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1 ; 3 uses
  %5 = and i64 %indvars.iv.next225, 4294967295
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = icmp ult i32 %i.aa, %i.w
  br i1 %i.ab, label %bb.d, label %.critedge.loopexit.split.loop.exit269

bb.d:                                             ; preds = %.lr.ph203
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.y, i64 12, i1 false), !tbaa.struct !77
  %6 = and i64 %indvars.iv.next225, 4294967294
  %.not248 = icmp eq i64 %6, 0
  br i1 %.not248, label %.critedge, label %.lr.ph203, !llvm.loop !92

.critedge.loopexit.split.loop.exit269:            ; preds = %.lr.ph203
  %i.ad = trunc nuw i64 %indvars.iv224 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit269, %bb.c
  %.1.lcssa = phi i32 [ 1, %bb.c ], [ %i.ad, %.critedge.loopexit.split.loop.exit269 ], [ 1, %bb.d ] ; 2 uses
  %i.ae = zext i32 %.1.lcssa to i64
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.ae ; 2 uses
  store i64 %.sroa.0102.0.copyload, ptr %i.af, align 4
  %.sroa.24.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.w, ptr %.sroa.24.0..sroa_idx132, align 4, !tbaa !8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph197, label %.lr.ph, !llvm.loop !93

bb.f:                                             ; preds = %.lr.ph197, %isIncluded.exit
  %indvars.iv227 = phi i64 [ 1, %.lr.ph197 ], [ %indvars.iv.next228, %isIncluded.exit ] ; 6 uses
  %i.ag = icmp eq i64 %indvars.iv227, %i.h
  br i1 %i.ag, label %isIncluded.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv227 ; 8 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !11 ; 6 uses
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %.not = icmp uge i32 %i.al, %.sroa.0102.sroa.0.0.extract.trunc
  %i.am = icmp ult i32 %i.ai, %.sroa.0102.sroa.0.0.extract.trunc
  %or.cond165 = and i1 %i.am, %.not
  br i1 %or.cond165, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.an = sub nsw i32 %i.b, %i.al                 ; 3 uses
  %i.ao = lshr i32 %.sroa.0102.sroa.14.0.extract.trunc, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !12
  %i.ar = add i32 %i.aq, %i.ao                    ; 3 uses
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !12
  %i.as = icmp sgt i32 %i.an, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.au = add i32 %i.an, %i.ak
  store i32 %i.au, ptr %i.at, align 4, !tbaa !11
  %i.av = mul i32 %i.an, %2
  %i.aw = udiv i32 %i.av, %.sroa.0102.sroa.14.0.extract.trunc
  %i.ax = add i32 %i.aw, %i.ar                    ; 2 uses
  store i32 %i.ax, ptr %i.ap, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.24.0.copyload135 = phi i32 [ %i.ax, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.0102.0.copyload112 = load i64, ptr %i.ah, align 4
  %i.ay = icmp samesign ugt i64 %indvars.iv227, 1
  br i1 %i.ay, label %.lr.ph199, label %.critedge2

.lr.ph199:                                        ; preds = %bb.j, %bb.k
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.k ], [ %indvars.iv227, %bb.j ] ; 3 uses
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -1 ; 3 uses
  %7 = and i64 %indvars.iv.next237, 4294967295
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %7 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12
  %i.bc = icmp ult i32 %i.bb, %.sroa.24.0.copyload135
  br i1 %i.bc, label %bb.k, label %.critedge2.loopexit.split.loop.exit274

bb.k:                                             ; preds = %.lr.ph199
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false), !tbaa.struct !77
  %8 = and i64 %indvars.iv.next237, 4294967294
  %.not249 = icmp eq i64 %8, 0
  br i1 %.not249, label %.critedge2, label %.lr.ph199, !llvm.loop !94

.critedge2.loopexit.split.loop.exit274:           ; preds = %.lr.ph199
  %i.be = trunc nuw i64 %indvars.iv236 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.k, %.critedge2.loopexit.split.loop.exit274, %bb.j
  %.3.lcssa = phi i32 [ 1, %bb.j ], [ %i.be, %.critedge2.loopexit.split.loop.exit274 ], [ 1, %bb.k ] ; 2 uses
  %i.bf = zext i32 %.3.lcssa to i64
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.bf ; 2 uses
  store i64 %.sroa.0102.0.copyload112, ptr %i.bg, align 4
  %.sroa.24.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %.sroa.24.0.copyload135, ptr %.sroa.24.0..sroa_idx136, align 4, !tbaa !8
  br label %.loopexit

bb.l:                                             ; preds = %bb.g
  %i.bh = zext i32 %i.ai to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 %i.bh ; 2 uses
  %.val166 = load i64, ptr %i.bi, align 1, !tbaa !16
  %.val = load i64, ptr %i.g, align 1, !tbaa !16
  %i.bj = icmp eq i64 %.val166, %.val
  br i1 %i.bj, label %bb.m, label %isIncluded.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = zext i32 %i.ak to i64
  %.not13.i = icmp eq i32 %i.ak, 0
  br i1 %.not13.i, label %isIncluded.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.010.i = phi i64 [ %i.bp, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.010.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.010.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.bm, %i.bo
  br i1 %.not.i, label %bb.n, label %isIncluded.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.bp = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %i.bk
  br i1 %exitcond.not.i, label %isIncluded.exit.thread, label %.lr.ph.i, !llvm.loop !95

isIncluded.exit.thread:                           ; preds = %bb.m, %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.2196218 = trunc i64 %indvars.iv227 to i32
  %i.br = sub i32 %.sroa.0102.sroa.14.0.extract.trunc, %i.ak
  %narrow = tail call i32 @llvm.umax.i32(i32 %i.br, i32 1)
  %spec.select = zext i32 %narrow to i64
  store i32 %.sroa.0102.sroa.0.0.extract.trunc, ptr %i.ah, align 4, !tbaa !9
  %i.bs = zext i32 %2 to i64
  %i.bt = mul nuw i64 %spec.select, %i.bs
  %i.bu = udiv i64 %i.bt, %.sroa.0102.sroa.14.0.extract.shift
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = add i32 %i.bx, %i.bv
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !12
  %i.bz = add i32 %i.ak, 1
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %.sroa.0102.sroa.14.0.extract.trunc)
  store i32 %i.ca, ptr %i.bq, align 4, !tbaa !11
  br label %.loopexit

isIncluded.exit:                                  ; preds = %.lr.ph.i, %bb.l, %bb.f
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count231
  br i1 %exitcond232.not, label %.loopexit, label %bb.f, !llvm.loop !96

.loopexit:                                        ; preds = %isIncluded.exit, %bb.a, %isIncluded.exit.thread, %.critedge2, %.critedge
  %.0156 = phi i32 [ %.1.lcssa, %.critedge ], [ %.3.lcssa, %.critedge2 ], [ %.2196218, %isIncluded.exit.thread ], [ 0, %bb.a ], [ 0, %isIncluded.exit ]
  ret i32 %.0156
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!11 = !{!10, !5, i64 4}
!12 = !{!10, !5, i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !21, !20}
!23 = distinct !{!23, !19, !20, !21}
!24 = distinct !{!24, !19, !21, !20}
!25 = !{!26, !5, i64 0}
!26 = !{!"", !27, i64 0, !10, i64 28}
!27 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!28 = !{!29, !31, i64 16}
!29 = !{!"", !30, i64 0, !30, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !17, i64 56, !17, i64 64, !5, i64 72, !5, i64 76}
!30 = !{!"p1 _ZTS8SeqDef_s", !15, i64 0}
!31 = !{!"p1 omnipotent char", !15, i64 0}
!32 = !{!29, !31, i64 24}
!33 = !{!6, !6, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !19}
!37 = !{!29, !30, i64 8}
!38 = !{!29, !30, i64 0}
!39 = !{!29, !31, i64 48}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !35}
!42 = !{!29, !31, i64 40}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !35}
!45 = !{!29, !31, i64 32}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !35}
!48 = !{!49, !5, i64 0}
!49 = !{!"SeqDef_s", !5, i64 0, !50, i64 4, !50, i64 6}
!50 = !{!"short", !6, i64 0}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19, !20, !21}
!54 = distinct !{!54, !19, !21, !20}
!55 = distinct !{!55, !19, !20, !21}
!56 = distinct !{!56, !19, !21, !20}
!57 = distinct !{!57, !19, !20, !21}
!58 = distinct !{!58, !19, !21, !20}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !19}
!63 = !{!50, !50, i64 0}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
end_hunk_3
