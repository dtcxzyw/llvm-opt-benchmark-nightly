inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@h264_mp4toannexb_filter:bb.a
  %i.br = sub i64 %i.ac, %i.bq
  %i.bs = icmp slt i64 %i.br, %i.bp
  br i1 %i.bs, label %.thread350, label %bb.i

._crit_edge.thread.i:                             ; preds = %.split363
  %i.bt = getelementptr inbounds nuw i8, ptr %.043.i, i64 %i.am ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.ac, %i.bu
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %.thread350, label %.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !41

bb.i:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %.lcssa459, 0
  br i1 %.not.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load i8, ptr %i.bo, align 1, !tbaa !23
  %i.by = and i8 %i.bx, 31
  switch i8 %i.by, label %bb.s [
    i8 7, label %bb.k
    i8 8, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.not49.not.i = icmp eq i32 %.040.i, 0
  br i1 %.not49.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = load i32, ptr %i.ag, align 8, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i = phi i32 [ %i.bz, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.cb = add i32 %.lcssa459, 4
  %i.cc = add i32 %i.cb, %.0.i.i
  %i.cd = zext i32 %i.cc to i64
  %i.ce = call ptr @av_fast_realloc(ptr noundef %i.ca, ptr noundef nonnull %i.ah, i64 noundef %i.cd) #8 ; 4 uses
  %.not22.i.i = icmp eq ptr %i.ce, null
  br i1 %.not22.i.i, label %h264_mp4toannexb_save_ps.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = zext i32 %.0.i.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i32 16777216, ptr %i.cg, align 1
  %i.ch = add i32 %.0.i.i, 4                      ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bo, i64 %i.bp, i1 false)
  %i.ck = add i32 %i.ch, %.lcssa459
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !43
  store i32 %i.ck, ptr %i.ag, align 8, !tbaa !42
  br label %h264_mp4toannexb_save_ps.exit.i

h264_mp4toannexb_save_ps.exit.i:                  ; preds = %bb.n, %bb.m
  %i.cl = add nsw i32 %.040.i, 1
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %.not48.not.i = icmp eq i32 %.037.i, 0
  br i1 %.not48.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load i32, ptr %i.ae, align 4, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i51.i = phi i32 [ %i.cm, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %i.cn = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.co = add i32 %.lcssa459, 4
  %i.cp = add i32 %i.co, %.0.i51.i
  %i.cq = zext i32 %i.cp to i64
  %i.cr = call ptr @av_fast_realloc(ptr noundef %i.cn, ptr noundef nonnull %i.af, i64 noundef %i.cq) #8 ; 4 uses
  %.not22.i52.i = icmp eq ptr %i.cr, null
  br i1 %.not22.i52.i, label %h264_mp4toannexb_save_ps.exit54.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = zext i32 %.0.i51.i to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  store i32 16777216, ptr %i.ct, align 1
  %i.cu = add i32 %.0.i51.i, 4                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cw, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bo, i64 %i.bp, i1 false)
  %i.cx = add i32 %i.cu, %.lcssa459
  store ptr %i.cr, ptr %i.ad, align 8, !tbaa !43
  store i32 %i.cx, ptr %i.ae, align 4, !tbaa !42
  br label %h264_mp4toannexb_save_ps.exit54.i

h264_mp4toannexb_save_ps.exit54.i:                ; preds = %bb.r, %bb.q
  %i.cy = add nsw i32 %.037.i, 1
  br label %bb.s

bb.s:                                             ; preds = %h264_mp4toannexb_save_ps.exit54.i, %h264_mp4toannexb_save_ps.exit.i, %bb.j
  %.141.i = phi i32 [ %i.cl, %h264_mp4toannexb_save_ps.exit.i ], [ %.040.i, %h264_mp4toannexb_save_ps.exit54.i ], [ %.040.i, %bb.j ]
  %.138.i = phi i32 [ %.037.i, %h264_mp4toannexb_save_ps.exit.i ], [ %i.cy, %h264_mp4toannexb_save_ps.exit54.i ], [ %.037.i, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.i, %._crit_edge.thread.i
  %.144.ph.i = phi ptr [ %i.bo, %bb.i ], [ %i.cz, %bb.s ], [ %i.bt, %._crit_edge.thread.i ] ; 2 uses
  %.242.ph.i = phi i32 [ %.040.i, %bb.i ], [ %.141.i, %bb.s ], [ %.040.i, %._crit_edge.thread.i ]
  %.239.ph.i = phi i32 [ %.037.i, %bb.i ], [ %.138.i, %bb.s ], [ %.037.i, %._crit_edge.thread.i ]
  %i.da = icmp ult ptr %.144.ph.i, %i.aa
  br i1 %i.da, label %.split363thread-pre-split, label %h264_mp4toannexb_filter_ps.exit.preheader, !llvm.loop !44

h264_mp4toannexb_filter_ps.exit.preheader:        ; preds = %.thread.i, %.thread.i.us
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 33 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 34 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 35 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.t

bb.t:                                             ; preds = %h264_mp4toannexb_filter_ps.exit, %h264_mp4toannexb_filter_ps.exit.preheader
  %.not.i191 = phi i1 [ true, %h264_mp4toannexb_filter_ps.exit.preheader ], [ false, %h264_mp4toannexb_filter_ps.exit ] ; 11 uses
  %.0266367 = phi ptr [ undef, %h264_mp4toannexb_filter_ps.exit.preheader ], [ %i.ht, %h264_mp4toannexb_filter_ps.exit ]
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !34
  %i.di = load i8, ptr %i.db, align 1, !tbaa !46
  %i.dj = load i8, ptr %i.dc, align 2, !tbaa !47
  %i.dk = load i8, ptr %i.dd, align 1, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t
  %.1267 = phi ptr [ %.0266367, %bb.t ], [ %.8.ph, %.thread ] ; 16 uses
  %.0258 = phi i64 [ 0, %bb.t ], [ %.7265.ph, %.thread ] ; 12 uses
  %.1152 = phi i8 [ %i.dj, %bb.t ], [ %.6157.ph, %.thread ] ; 8 uses
  %.1145 = phi i8 [ %i.dk, %bb.t ], [ %.5149.ph, %.thread ] ; 7 uses
  %.0142 = phi ptr [ %i.dh, %bb.t ], [ %.1143.ph, %.thread ] ; 7 uses
  %.1137 = phi i8 [ %i.di, %bb.t ], [ %.6.ph, %.thread ] ; 7 uses
  %i.dl = load i8, ptr %i.ab, align 8, !tbaa !36  ; 4 uses
  %.not369 = icmp eq i8 %i.dl, 0
  %i.dm = zext i8 %i.dl to i64                    ; 3 uses
  br i1 %.not369, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %xtraiter462 = and i64 %i.dm, 3                 ; 3 uses
  %i.dn = icmp ult i8 %i.dl, 4
  br i1 %i.dn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter467 = and i64 %i.dm, 252
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %.0142, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.0142, i64 %indvars.iv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 8
  %i.dx = or disjoint i32 %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.0142, i64 %indvars.iv
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = zext i8 %i.ea to i32
  %i.ec = or disjoint i32 %i.dx, %i.eb
  %i.ed = shl nuw i32 %i.ec, 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0142, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !23
  %i.eh = zext i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ed, %i.eh            ; 2 uses
  %lcmp.mod464.not = icmp eq i64 %xtraiter462, 0
  br i1 %lcmp.mod464.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0130364.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ei, %._crit_edge.unr-lcssa ]
  %lcmp.mod466 = icmp ne i64 %xtraiter462, 0
  call void @llvm.assume(i1 %lcmp.mod466)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0130364.epil = phi i32 [ %i.en, %.lr.ph.epil ], [ %.0130364.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter463 = phi i64 [ %epil.iter463.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ej = shl i32 %.0130364.epil, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.0142, i64 %indvars.iv.epil
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !23
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter463.next = add i64 %epil.iter463, 1   ; 2 uses
  %epil.iter463.cmp.not = icmp eq i64 %epil.iter463.next, %xtraiter462
  br i1 %epil.iter463.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.ei, %._crit_edge.unr-lcssa ], [ %i.en, %.lr.ph.epil ] ; 9 uses
  %i.eo = zext i8 %i.dl to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.0142, i64 %i.eo ; 9 uses
  %i.eq = zext i32 %.lcssa to i64                 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.ac, %i.er
  %i.et = icmp slt i64 %i.es, %i.eq
  br i1 %i.et, label %.thread350, label %bb.v

._crit_edge.thread:                               ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %.0142, i64 %i.dm ; 2 uses
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.ac, %i.ev
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %.thread350, label %.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter468 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter468.next.3, %.lr.ph ]
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter468.next.3 = add i64 %niter468, 4         ; 2 uses
  %niter468.ncmp.3 = icmp eq i64 %niter468.next.3, %unroll_iter467
  br i1 %niter468.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !50

bb.v:                                             ; preds = %._crit_edge
  %.not179 = icmp eq i32 %.lcssa, 0
  br i1 %.not179, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = load i8, ptr %i.ep, align 1, !tbaa !23
  %i.ez = and i8 %i.ey, 31                        ; 7 uses
  switch i8 %i.ez, label %bb.ad [
    i8 7, label %.thread286
    i8 8, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %.not180 = icmp eq i8 %.1152, 0
  br i1 %.not180, label %bb.y, label %.thread286

bb.y:                                             ; preds = %bb.x
  %i.fa = load i32, ptr %i.ag, align 8, !tbaa !51 ; 3 uses
  %.not181 = icmp eq i32 %i.fa, 0
  br i1 %.not181, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %.not.i191, label %.thread286, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.9) #8
  br label %.thread286

bb.ab:                                            ; preds = %bb.y
  br i1 %.not.i191, label %._crit_edge.i192, label %bb.ac

._crit_edge.i192:                                 ; preds = %bb.ab
  %.pre24.i = sext i32 %i.fa to i64
  br label %count_or_copy.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.fc = sext i32 %i.fa to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1267, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.fb, i64 %i.fc, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %.1267, i64 %i.fc
  br label %count_or_copy.exit

count_or_copy.exit:                               ; preds = %._crit_edge.i192, %bb.ac
  %.10 = phi ptr [ %.1267, %._crit_edge.i192 ], [ %i.fd, %bb.ac ]
  %.pre-phi25.i = phi i64 [ %.pre24.i, %._crit_edge.i192 ], [ %i.fc, %bb.ac ]
  %i.fe = add i64 %.pre-phi25.i, %.0258
  br label %.thread286

bb.ad:                                            ; preds = %bb.w
  %i.ff = icmp eq i8 %.1137, 0
  %i.fg = icmp eq i8 %i.ez, 5                     ; 2 uses
  %or.cond = and i1 %i.ff, %i.fg
  br i1 %or.cond, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !23
  %.lobit = lshr i8 %i.fi, 7
  br label %.thread286

bb.af:                                            ; preds = %bb.ad
  %i.fj = icmp eq i8 %i.ez, 6
  br i1 %i.fj, label %bb.ag, label %.thread286

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !23
  %i.fm = icmp ne i8 %i.fl, 0
  %i.fn = icmp ne i8 %.1152, 0
  %or.cond4 = select i1 %i.fm, i1 true, i1 %i.fn
  %i.fo = icmp ne i8 %.1145, 0
  %or.cond6 = select i1 %or.cond4, i1 true, i1 %i.fo
  br i1 %or.cond6, label %.thread286, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load i32, ptr %i.ag, align 8, !tbaa !51 ; 3 uses
  %.not184 = icmp eq i32 %i.fp, 0
  br i1 %.not184, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not.i191, label %._crit_edge.i195, label %bb.aj

._crit_edge.i195:                                 ; preds = %bb.ai
  %.pre24.i196 = sext i32 %i.fp to i64
  br label %count_or_copy.exit197

bb.aj:                                            ; preds = %bb.ai
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.fr = sext i32 %i.fp to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1267, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.fq, i64 %i.fr, i1 false)
  %i.fs = getelementptr inbounds i8, ptr %.1267, i64 %i.fr
  br label %count_or_copy.exit197

count_or_copy.exit197:                            ; preds = %._crit_edge.i195, %bb.aj
  %.11 = phi ptr [ %.1267, %._crit_edge.i195 ], [ %i.fs, %bb.aj ]
  %.pre-phi25.i194 = phi i64 [ %.pre24.i196, %._crit_edge.i195 ], [ %i.fr, %bb.aj ]
  %i.ft = add i64 %.pre-phi25.i194, %.0258
  br label %bb.ak

bb.ak:                                            ; preds = %count_or_copy.exit197, %bb.ah
  %.3269 = phi ptr [ %.1267, %bb.ah ], [ %.11, %count_or_copy.exit197 ] ; 4 uses
  %.2260 = phi i64 [ %.0258, %bb.ah ], [ %i.ft, %count_or_copy.exit197 ] ; 2 uses
  %.3154 = phi i8 [ 0, %bb.ah ], [ 1, %count_or_copy.exit197 ] ; 2 uses
  %i.fu = load i32, ptr %i.ae, align 4, !tbaa !53 ; 3 uses
  %.not185 = icmp eq i32 %i.fu, 0
  br i1 %.not185, label %.thread286, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not.i191, label %._crit_edge.i200, label %bb.am

._crit_edge.i200:                                 ; preds = %bb.al
  %.pre24.i201 = sext i32 %i.fu to i64
  br label %count_or_copy.exit202

bb.am:                                            ; preds = %bb.al
  %i.fv = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.fw = sext i32 %i.fu to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.3269, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.fv, i64 %i.fw, i1 false)
  %i.fx = getelementptr inbounds i8, ptr %.3269, i64 %i.fw
  br label %count_or_copy.exit202

count_or_copy.exit202:                            ; preds = %._crit_edge.i200, %bb.am
  %.12 = phi ptr [ %.3269, %._crit_edge.i200 ], [ %i.fx, %bb.am ]
  %.pre-phi25.i199 = phi i64 [ %.pre24.i201, %._crit_edge.i200 ], [ %i.fw, %bb.am ]
  %i.fy = add i64 %.pre-phi25.i199, %.2260
  br label %.thread286

.thread286:                                       ; preds = %bb.z, %bb.aa, %count_or_copy.exit, %bb.x, %bb.w, %bb.ae, %bb.ak, %count_or_copy.exit202, %bb.ag, %bb.af
  %.3139292 = phi i8 [ %.1137, %bb.ag ], [ %.1137, %bb.ak ], [ %.1137, %count_or_copy.exit202 ], [ %.1137, %bb.af ], [ %.lobit, %bb.ae ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %count_or_copy.exit ], [ 1, %bb.aa ], [ 1, %bb.z ] ; 8 uses
  %i.fz = phi i1 [ false, %bb.ag ], [ false, %bb.ak ], [ false, %count_or_copy.exit202 ], [ %i.fg, %bb.af ], [ true, %bb.ae ], [ false, %bb.w ], [ false, %bb.x ], [ false, %count_or_copy.exit ], [ false, %bb.aa ], [ false, %bb.z ]
  %.4270 = phi ptr [ %.1267, %bb.ag ], [ %.3269, %bb.ak ], [ %.12, %count_or_copy.exit202 ], [ %.1267, %bb.af ], [ %.1267, %bb.ae ], [ %.1267, %bb.w ], [ %.1267, %bb.x ], [ %.10, %count_or_copy.exit ], [ %.1267, %bb.aa ], [ %.1267, %bb.z ] ; 14 uses
  %.3261 = phi i64 [ %.0258, %bb.ag ], [ %.2260, %bb.ak ], [ %i.fy, %count_or_copy.exit202 ], [ %.0258, %bb.af ], [ %.0258, %bb.ae ], [ %.0258, %bb.w ], [ %.0258, %bb.x ], [ %i.fe, %count_or_copy.exit ], [ %.0258, %bb.aa ], [ %.0258, %bb.z ] ; 10 uses
  %.4155 = phi i8 [ %.1152, %bb.ag ], [ %.3154, %bb.ak ], [ %.3154, %count_or_copy.exit202 ], [ %.1152, %bb.af ], [ %.1152, %bb.ae ], [ 1, %bb.w ], [ %.1152, %bb.x ], [ 1, %count_or_copy.exit ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %.3147 = phi i8 [ %.1145, %bb.ag ], [ 0, %bb.ak ], [ 1, %count_or_copy.exit202 ], [ %.1145, %bb.af ], [ %.1145, %bb.ae ], [ %.1145, %bb.w ], [ 1, %bb.x ], [ 1, %count_or_copy.exit ], [ 1, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %i.ga = icmp ne i8 %.3139292, 0
  %or.cond9 = and i1 %i.ga, %i.fz
  %or.cond9.not = xor i1 %or.cond9, true          ; 2 uses
  %i.gb = icmp ne i8 %.4155, 0
  %or.cond11 = select i1 %or.cond9.not, i1 true, i1 %i.gb
  %i.gc = icmp ne i8 %.3147, 0                    ; 2 uses
  %or.cond13 = select i1 %or.cond11, i1 true, i1 %i.gc
  br i1 %or.cond13, label %bb.at, label %bb.an

bb.an:                                            ; preds = %.thread286
  %i.gd = load i32, ptr %i.ag, align 8, !tbaa !51 ; 3 uses
  %.not186 = icmp eq i32 %i.gd, 0
  br i1 %.not186, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i191, label %._crit_edge.i205, label %bb.ap

._crit_edge.i205:                                 ; preds = %bb.ao
  %.pre24.i206 = sext i32 %i.gd to i64
  br label %count_or_copy.exit207.a

bb.ap:                                            ; preds = %bb.ao
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.gf = sext i32 %i.gd to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4270, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ge, i64 %i.gf, i1 false)
  %i.gg = getelementptr inbounds i8, ptr %.4270, i64 %i.gf
  br label %count_or_copy.exit207.a

count_or_copy.exit207.a:                          ; preds = %._crit_edge.i205, %bb.ap
  %.13 = phi ptr [ %.4270, %._crit_edge.i205 ], [ %i.gg, %bb.ap ]
  %.pre-phi25.i204 = phi i64 [ %.pre24.i206, %._crit_edge.i205 ], [ %i.gf, %bb.ap ]
  %i.gh = add i64 %.pre-phi25.i204, %.3261
  br label %bb.aq

bb.aq:                                            ; preds = %count_or_copy.exit207.a, %bb.an
  %.5271 = phi ptr [ %.4270, %bb.an ], [ %.13, %count_or_copy.exit207.a ] ; 4 uses
  %.4262 = phi i64 [ %.3261, %bb.an ], [ %i.gh, %count_or_copy.exit207.a ] ; 2 uses
  %i.gi = load i32, ptr %i.ae, align 4, !tbaa !53 ; 3 uses
  %.not187 = icmp eq i32 %i.gi, 0
  br i1 %.not187, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i191, label %._crit_edge.i210, label %bb.as

._crit_edge.i210:                                 ; preds = %bb.ar
  %.pre24.i211 = sext i32 %i.gi to i64
  br label %count_or_copy.exit212.a

bb.as:                                            ; preds = %bb.ar
  %i.gj = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.gk = sext i32 %i.gi to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.5271, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gj, i64 %i.gk, i1 false)
  %i.gl = getelementptr inbounds i8, ptr %.5271, i64 %i.gk
  br label %count_or_copy.exit212.a

count_or_copy.exit212.a:                          ; preds = %._crit_edge.i210, %bb.as
  %.14 = phi ptr [ %.5271, %._crit_edge.i210 ], [ %i.gl, %bb.as ]
  %.pre-phi25.i209 = phi i64 [ %.pre24.i211, %._crit_edge.i210 ], [ %i.gk, %bb.as ]
  %i.gm = add i64 %.pre-phi25.i209, %.4262
  br label %bb.ay

bb.at:                                            ; preds = %.thread286
  %i.gn = icmp eq i8 %.4155, 0
  %or.cond19 = select i1 %or.cond9.not, i1 true, i1 %i.gn
  %or.cond21 = select i1 %or.cond19, i1 true, i1 %i.gc
  br i1 %or.cond21, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.go = load i32, ptr %i.ae, align 4, !tbaa !53 ; 3 uses
  %.not188 = icmp eq i32 %i.go, 0
  br i1 %.not188, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %.not.i191, label %.thread293, label %.thread400

bb.aw:                                            ; preds = %bb.au
  br i1 %.not.i191, label %._crit_edge.i215, label %bb.ax

._crit_edge.i215:                                 ; preds = %bb.aw
  %.pre24.i216 = sext i32 %i.go to i64
  br label %count_or_copy.exit217

bb.ax:                                            ; preds = %bb.aw
  %i.gp = load ptr, ptr %i.ad, align 8, !tbaa !54
  %i.gq = sext i32 %i.go to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4270, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gp, i64 %i.gq, i1 false)
  %i.gr = getelementptr inbounds i8, ptr %.4270, i64 %i.gq
  br label %count_or_copy.exit217

count_or_copy.exit217:                            ; preds = %._crit_edge.i215, %bb.ax
  %.15 = phi ptr [ %.4270, %._crit_edge.i215 ], [ %i.gr, %bb.ax ]
  %.pre-phi25.i214 = phi i64 [ %.pre24.i216, %._crit_edge.i215 ], [ %i.gq, %bb.ax ]
  %i.gs = add i64 %.pre-phi25.i214, %.3261
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aq, %count_or_copy.exit212.a, %bb.at, %count_or_copy.exit217
  %.6272 = phi ptr [ %.4270, %bb.at ], [ %.14, %count_or_copy.exit212.a ], [ %.5271, %bb.aq ], [ %.15, %count_or_copy.exit217 ] ; 6 uses
  %.5263 = phi i64 [ %.3261, %bb.at ], [ %i.gm, %count_or_copy.exit212.a ], [ %.4262, %bb.aq ], [ %i.gs, %count_or_copy.exit217 ] ; 5 uses
  %.4140 = phi i8 [ %.3139292, %bb.at ], [ 0, %count_or_copy.exit212.a ], [ 0, %bb.aq ], [ %.3139292, %count_or_copy.exit217 ] ; 5 uses
  %i.gt = add nsw i8 %i.ez, -7
  %or.cond24 = icmp ult i8 %i.gt, 2
  br i1 %or.cond24, label %.split160, label %.split

.thread400:                                       ; preds = %bb.av
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.10) #8
  %i.gu = add nsw i8 %i.ez, -7
  %or.cond24404 = icmp ult i8 %i.gu, 2
  br i1 %or.cond24404, label %.split160.thread, label %.split.thread417

.split.thread417:                                 ; preds = %.thread400
  %i.gv = icmp eq i64 %.3261, 0                   ; 2 uses
  %spec.select21.i421 = select i1 %i.gv, i8 4, i8 3 ; 2 uses
  %2 = zext nneg i8 %spec.select21.i421 to i32    ; 2 uses
  %3 = zext nneg i8 %spec.select21.i421 to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %.4270, i64 %3
  %i.gx = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gw, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ep, i64 %i.gx, i1 false)
  br i1 %i.gv, label %bb.ba, label %bb.bb

.thread293:                                       ; preds = %bb.av
  %i.gy = add nsw i8 %i.ez, -7
  %or.cond24297 = icmp ult i8 %i.gy, 2
  br i1 %or.cond24297, label %._crit_edge.i220, label %.split.thread

.split.thread:                                    ; preds = %.thread293
  %i.gz = icmp eq i64 %.3261, 0
  %spec.select21.i317 = select i1 %i.gz, i8 4, i8 3
  br label %._crit_edge.i225

.split160:                                        ; preds = %bb.ay
  br i1 %.not.i191, label %._crit_edge.i220, label %.split160.thread

._crit_edge.i220:                                 ; preds = %.thread293, %.split160
  %.6272298313 = phi ptr [ %.6272, %.split160 ], [ %.4270, %.thread293 ]
  %.5263300312 = phi i64 [ %.5263, %.split160 ], [ %.3261, %.thread293 ]
  %.4140304310 = phi i8 [ %.4140, %.split160 ], [ %.3139292, %.thread293 ]
  %.pre22.i = add nsw i32 %.lcssa, 4
  %.pre24.i221 = sext i32 %.pre22.i to i64
  br label %count_or_copy.exit222

.split160.thread:                                 ; preds = %.thread400, %.split160
  %.6272405416 = phi ptr [ %.6272, %.split160 ], [ %.4270, %.thread400 ] ; 3 uses
  %.5263407415 = phi i64 [ %.5263, %.split160 ], [ %.3261, %.thread400 ]
  %.4140409414 = phi i8 [ %.4140, %.split160 ], [ %.3139292, %.thread400 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.6272405416, i64 4
  %i.hb = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ha, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ep, i64 %i.hb, i1 false)
  store i32 16777216, ptr %.6272405416, align 1, !tbaa !23
  %4 = add nsw i32 %.lcssa, 4
  %5 = sext i32 %4 to i64                         ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.6272405416, i64 %5
  br label %count_or_copy.exit222

count_or_copy.exit222:                            ; preds = %._crit_edge.i220, %.split160.thread
  %.5263300311 = phi i64 [ %.5263300312, %._crit_edge.i220 ], [ %.5263407415, %.split160.thread ]
  %.4140304309 = phi i8 [ %.4140304310, %._crit_edge.i220 ], [ %.4140409414, %.split160.thread ]
  %.16 = phi ptr [ %.6272298313, %._crit_edge.i220 ], [ %i.hc, %.split160.thread ]
  %.pre-phi25.i219 = phi i64 [ %.pre24.i221, %._crit_edge.i220 ], [ %5, %.split160.thread ]
  %6 = add i64 %.pre-phi25.i219, %.5263300311
  br label %bb.bd

.split:                                           ; preds = %bb.ay
  %i.hd = icmp eq i64 %.5263, 0                   ; 2 uses
  %spec.select21.i = select i1 %i.hd, i8 4, i8 3  ; 3 uses
  br i1 %.not.i191, label %._crit_edge.i225, label %bb.az

._crit_edge.i225:                                 ; preds = %.split.thread, %.split
  %spec.select21.i324 = phi i8 [ %spec.select21.i317, %.split.thread ], [ %spec.select21.i, %.split ]
  %.6272299323 = phi ptr [ %.4270, %.split.thread ], [ %.6272, %.split ]
  %.5263301322 = phi i64 [ %.3261, %.split.thread ], [ %.5263, %.split ]
  %.4140303320 = phi i8 [ %.3139292, %.split.thread ], [ %.4140, %.split ]
  %.pre.i = zext nneg i8 %spec.select21.i324 to i32
  %.pre22.i226 = add nsw i32 %.lcssa, %.pre.i
  %.pre24.i227 = sext i32 %.pre22.i226 to i64
  br label %count_or_copy.exit228

bb.az:                                            ; preds = %.split
  %7 = zext nneg i8 %spec.select21.i to i32       ; 2 uses
  %i.he = zext nneg i8 %spec.select21.i to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.6272, i64 %i.he
  %i.hg = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hf, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ep, i64 %i.hg, i1 false)
  br i1 %i.hd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.split.thread417, %bb.az
  %8 = phi i32 [ %2, %.split.thread417 ], [ %7, %bb.az ]
  %.4140410422434 = phi i8 [ %.3139292, %.split.thread417 ], [ %.4140, %bb.az ]
  %.6272406424428 = phi ptr [ %.4270, %.split.thread417 ], [ %.6272, %bb.az ] ; 2 uses
  store i32 16777216, ptr %.6272406424428, align 1, !tbaa !23
  br label %bb.bc

bb.bb:                                            ; preds = %.split.thread417, %bb.az
  %9 = phi i32 [ %2, %.split.thread417 ], [ %7, %bb.az ]
  %.4140410422433 = phi i8 [ %.3139292, %.split.thread417 ], [ %.4140, %bb.az ]
  %.5263408423430 = phi i64 [ %.3261, %.split.thread417 ], [ %.5263, %bb.az ]
  %.6272406424426 = phi ptr [ %.4270, %.split.thread417 ], [ %.6272, %bb.az ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.6272406424426, i64 1
  store i8 0, ptr %i.hh, align 1, !tbaa !23
  store i8 0, ptr %.6272406424426, align 1, !tbaa !23
  %i.hi = getelementptr inbounds nuw i8, ptr %.6272406424426, i64 2
  store i8 1, ptr %i.hi, align 1, !tbaa !23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %10 = phi i32 [ %9, %bb.bb ], [ %8, %bb.ba ]
  %.4140410422432 = phi i8 [ %.4140410422433, %bb.bb ], [ %.4140410422434, %bb.ba ]
  %.5263408423429 = phi i64 [ %.5263408423430, %bb.bb ], [ 0, %bb.ba ]
  %.6272406424427 = phi ptr [ %.6272406424426, %bb.bb ], [ %.6272406424428, %bb.ba ]
  %i.hj = add nsw i32 %.lcssa, %10
  %i.hk = sext i32 %i.hj to i64                   ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.6272406424427, i64 %i.hk
  br label %count_or_copy.exit228

count_or_copy.exit228:                            ; preds = %._crit_edge.i225, %bb.bc
  %.5263301321 = phi i64 [ %.5263301322, %._crit_edge.i225 ], [ %.5263408423429, %bb.bc ]
  %.4140303319 = phi i8 [ %.4140303320, %._crit_edge.i225 ], [ %.4140410422432, %bb.bc ]
  %.17 = phi ptr [ %.6272299323, %._crit_edge.i225 ], [ %i.hl, %bb.bc ]
  %.pre-phi25.i224 = phi i64 [ %.pre24.i227, %._crit_edge.i225 ], [ %i.hk, %bb.bc ]
  %11 = add i64 %.pre-phi25.i224, %.5263301321
  br label %bb.bd

bb.bd:                                            ; preds = %count_or_copy.exit228, %count_or_copy.exit222
  %.4140302 = phi i8 [ %.4140304309, %count_or_copy.exit222 ], [ %.4140303319, %count_or_copy.exit228 ]
  %.7273 = phi ptr [ %.16, %count_or_copy.exit222 ], [ %.17, %count_or_copy.exit228 ]
  %.6264 = phi i64 [ %6, %count_or_copy.exit222 ], [ %11, %count_or_copy.exit228 ]
  %i.hm = icmp eq i8 %i.ez, 1                     ; 3 uses
  %.5156 = select i1 %i.hm, i8 0, i8 %.4155
  %.4148 = select i1 %i.hm, i8 0, i8 %.3147
  %.5141 = select i1 %i.hm, i8 1, i8 %.4140302
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.bd, %bb.v
  %.8.ph = phi ptr [ %.7273, %bb.bd ], [ %.1267, %bb.v ], [ %.1267, %._crit_edge.thread ]
  %.7265.ph = phi i64 [ %.6264, %bb.bd ], [ %.0258, %bb.v ], [ %.0258, %._crit_edge.thread ] ; 3 uses
  %.6157.ph = phi i8 [ %.5156, %bb.bd ], [ %.1152, %bb.v ], [ %.1152, %._crit_edge.thread ] ; 2 uses
  %.5149.ph = phi i8 [ %.4148, %bb.bd ], [ %.1145, %bb.v ], [ %.1145, %._crit_edge.thread ] ; 2 uses
  %.1143.ph = phi ptr [ %i.hn, %bb.bd ], [ %i.ep, %bb.v ], [ %i.eu, %._crit_edge.thread ] ; 2 uses
  %.6.ph = phi i8 [ %.5141, %bb.bd ], [ %.1137, %bb.v ], [ %.1137, %._crit_edge.thread ] ; 2 uses
  %i.ho = icmp ult ptr %.1143.ph, %i.aa
  br i1 %i.ho, label %bb.u, label %bb.be, !llvm.loop !55

bb.be:                                            ; preds = %.thread
  br i1 %.not.i191, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hp = icmp ugt i64 %.7265.ph, 2147483583
  br i1 %i.hp, label %.thread350, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = trunc nuw nsw i64 %.7265.ph to i32
  %i.hr = call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.hq) #8 ; 2 uses
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %.thread350, label %h264_mp4toannexb_filter_ps.exit

h264_mp4toannexb_filter_ps.exit:                  ; preds = %bb.bg
  %i.ht = load ptr, ptr %i.de, align 8, !tbaa !34
  br label %bb.t, !llvm.loop !56

bb.bh:                                            ; preds = %bb.be
  store i8 %.6.ph, ptr %i.db, align 1, !tbaa !46
  store i8 %.6157.ph, ptr %i.dc, align 2, !tbaa !47
  store i8 %.5149.ph, ptr %i.dd, align 1, !tbaa !48
  %i.hu = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.hv = call i32 @av_packet_copy_props(ptr noundef %1, ptr noundef %i.hu) #8 ; 3 uses
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %.thread350, label %.sink.split

.thread350:                                       ; preds = %._crit_edge.i, %._crit_edge.thread.i, %._crit_edge.thread.i.us, %bb.bf, %bb.bg, %._crit_edge, %._crit_edge.thread, %bb.d, %bb.bh
  %.5353 = phi i32 [ %i.hv, %bb.bh ], [ %i.hr, %bb.bg ], [ %i.m, %bb.d ], [ -1094995529, %._crit_edge ], [ -1094995529, %._crit_edge.thread.i.us ], [ -1094995529, %._crit_edge.thread ], [ -1094995529, %bb.bf ], [ -1094995529, %._crit_edge.thread.i ], [ -1094995529, %._crit_edge.i ]
  call void @av_packet_unref(ptr noundef %1) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bh, %.thread350, %bb.g
  %.0133.ph = phi i32 [ 0, %bb.g ], [ %.5353, %.thread350 ], [ %i.hv, %bb.bh ]
  call void @av_packet_free(ptr noundef nonnull %i.a) #8
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %bb.a
  %.0133 = phi i32 [ %i.e, %bb.a ], [ %.0133.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0133
}

; Function Attrs: nounwind uwtable
define internal void @h264_mp4toannexb_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  tail call void @av_freep(ptr noundef %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h264_mp4toannexb_flush(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 0, ptr %i.c, align 2, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 35
  store i8 0, ptr %i.d, align 1, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 %i.g, ptr %i.h, align 1, !tbaa !46
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @h264_extradata_to_annexb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.d = icmp slt i32 %2, 7
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %2) #8
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bytestream2_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 141) #8
  tail call void @abort() #9
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.i = load i8, ptr %i.g, align 1, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.k = load i8, ptr %i.h, align 1, !tbaa !23
  %i.l = and i8 %i.k, 31                          ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.i, label %.thread

bb.e:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  %i.n = load i8, ptr %.sroa.0.1, align 1, !tbaa !23 ; 2 uses
  %.not97 = icmp eq i8 %i.n, 0
  br i1 %.not97, label %.thread122, label %.thread

.thread:                                          ; preds = %bb.i, %bytestream2_init.exit, %bb.e
  %.in = phi i8 [ %i.n, %bb.e ], [ %i.l, %bytestream2_init.exit ], [ %.179, %bb.i ]
  %.076121 = phi i32 [ %.177, %bb.e ], [ 0, %bytestream2_init.exit ], [ %.177, %bb.i ]
  %.083120 = phi i32 [ %.177, %bb.e ], [ 0, %bytestream2_init.exit ], [ %.184, %bb.i ]
  %.086119 = phi i8 [ 1, %bb.e ], [ 0, %bytestream2_init.exit ], [ %.187, %bb.i ] ; 2 uses
  %.sroa.0.0118 = phi ptr [ %i.m, %bb.e ], [ %i.j, %bytestream2_init.exit ], [ %.sroa.0.1, %bb.i ] ; 2 uses
  %i.o = add i8 %.in, -1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 2 ; 3 uses
  %i.q = load i16, ptr %.sroa.0.0118, align 1, !tbaa !23
  %i.r = call i16 @llvm.bswap.i16(i16 %i.q)       ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = add i32 %.076121, 4
  %i.u = add i32 %i.t, %i.s                       ; 3 uses
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i8 %.086119, 1
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.s, %i.aa
  %i.ac = icmp sgt i32 %i.ab, %i.y
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #8
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @av_free(ptr noundef %i.ad) #8
  br label %bb.x

bb.g:                                             ; preds = %.thread
  %i.ae = add i32 %i.u, 64
  %i.af = zext i32 %i.ae to i64
  %i.ag = call i32 @av_reallocp(ptr noundef nonnull %i.a, i64 noundef %i.af) #8 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.aj = zext i32 %i.u to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = zext i16 %i.r to i64                    ; 3 uses
  %i.am = sub nsw i64 0, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  store i32 16777216, ptr %i.ao, align 1
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.p, i64 %i.al, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.al
  br label %bb.i

bb.i:                                             ; preds = %bytestream2_init.exit, %bb.h
  %.sroa.0.1 = phi ptr [ %i.j, %bytestream2_init.exit ], [ %i.as, %bb.h ] ; 3 uses
  %.187 = phi i8 [ 0, %bytestream2_init.exit ], [ %.086119, %bb.h ] ; 2 uses
  %.184 = phi i32 [ 0, %bytestream2_init.exit ], [ %.083120, %bb.h ] ; 2 uses
  %.179 = phi i8 [ 0, %bytestream2_init.exit ], [ %i.o, %bb.h ] ; 2 uses
  %.177 = phi i32 [ 0, %bytestream2_init.exit ], [ %i.u, %bb.h ] ; 8 uses
  %.not103 = icmp eq i8 %.179, 0
  br i1 %.not103, label %bb.j, label %.thread, !llvm.loop !57

bb.j:                                             ; preds = %bb.i
  %.not104 = icmp eq i8 %.187, 0
  br i1 %.not104, label %bb.e, label %.thread122, !llvm.loop !57

.thread122:                                       ; preds = %bb.j, %bb.e
  %.083129 = phi i32 [ %.177, %bb.e ], [ %.184, %bb.j ] ; 6 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %.not98 = icmp eq ptr %i.at, null
  br i1 %.not98, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread122
  %i.au = zext i32 %.177 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.av, i8 0, i64 64, i1 false)
end_hunk_0
