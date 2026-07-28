inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@opj_jp2_apply_color_postprocessing:bb.a
  br i1 %exitcond249.not.i, label %._crit_edge213.i, label %.lr.ph212.i, !llvm.loop !48

.thread:                                          ; preds = %bb.ad
  %i.by = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %i.br) #6 ; 0 uses
  %indvars.iv.next247.i47 = add nuw nsw i64 %indvars.iv246.i, 1 ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next247.i47 to i32
  %exitcond249.not.i48 = icmp eq i64 %indvars.iv.next247.i47, %wide.trip.count240.i
  br i1 %exitcond249.not.i48, label %.critedge180.thread184.i, label %.lr.ph212.i.outer, !llvm.loop !48

._crit_edge213.i:                                 ; preds = %bb.ae
  br i1 %.4138210.i.ph, label %.critedge180.thread184.i, label %bb.af

.critedge180.thread184.i:                         ; preds = %.thread, %._crit_edge213.i
  tail call void @opj_free(ptr noundef nonnull %i.au) #6
  br label %opj_jp2_check_color.exit.thread

bb.af:                                            ; preds = %._crit_edge213.i
  %i.ca = load i32, ptr %i.ao, align 8, !tbaa !28
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph216.i, label %opj_jp2_check_color.exit.sink.split

bb.ag:                                            ; preds = %.lr.ph216.i
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %exitcond254.not.i = icmp eq i64 %indvars.iv.next251.i, %wide.trip.count240.i
  br i1 %exitcond254.not.i, label %opj_jp2_check_color.exit.sink.split, label %.lr.ph216.i, !llvm.loop !49

.lr.ph216.i:                                      ; preds = %bb.af, %bb.ag
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv250.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %.not169.i = icmp eq i32 %i.cd, 0
  br i1 %.not169.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph216.i
  %i.ce = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.20) #6 ; 0 uses
  %xtraiter = and i64 %wide.trip.count240.i, 7    ; 3 uses
  %i.cf = icmp ult i8 %i.an, 8
  br i1 %i.cf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ah
  %unroll_iter = and i64 %wide.trip.count240.i, 248
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.new
  %indvars.iv255.i = phi i64 [ 0, %.new ], [ %indvars.iv.next256.i.7, %bb.ai ] ; 10 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.ai ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv255.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i8 1, ptr %i.ch, align 2, !tbaa !45
  %i.ci = trunc i64 %indvars.iv255.i to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !46
  %indvars.iv.next256.i = or disjoint i64 %indvars.iv255.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 1, ptr %i.cl, align 2, !tbaa !45
  %i.cm = trunc i64 %indvars.iv.next256.i to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !46
  %indvars.iv.next256.i.1 = or disjoint i64 %indvars.iv255.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i.1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 1, ptr %i.cp, align 2, !tbaa !45
  %i.cq = trunc i64 %indvars.iv.next256.i.1 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !46
  %indvars.iv.next256.i.2 = or disjoint i64 %indvars.iv255.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i.2 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 1, ptr %i.ct, align 2, !tbaa !45
  %i.cu = trunc i64 %indvars.iv.next256.i.2 to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !46
  %indvars.iv.next256.i.3 = or disjoint i64 %indvars.iv255.i, 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i.3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 1, ptr %i.cx, align 2, !tbaa !45
  %i.cy = trunc i64 %indvars.iv.next256.i.3 to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !46
  %indvars.iv.next256.i.4 = or disjoint i64 %indvars.iv255.i, 5 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i.4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 1, ptr %i.db, align 2, !tbaa !45
  %i.dc = trunc i64 %indvars.iv.next256.i.4 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !46
  %indvars.iv.next256.i.5 = or disjoint i64 %indvars.iv255.i, 6 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i.5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 1, ptr %i.df, align 2, !tbaa !45
  %i.dg = trunc i64 %indvars.iv.next256.i.5 to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !46
  %indvars.iv.next256.i.6 = or disjoint i64 %indvars.iv255.i, 7 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next256.i.6 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i8 1, ptr %i.dj, align 2, !tbaa !45
  %i.dk = trunc i64 %indvars.iv.next256.i.6 to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !46
  %indvars.iv.next256.i.7 = add nuw nsw i64 %indvars.iv255.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !50

opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opj_jp2_check_color.exit.sink.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa, %bb.ah
  %indvars.iv255.i.epil.init = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next256.i.7, %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod192 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %indvars.iv255.i.epil = phi i64 [ %indvars.iv255.i.epil.init, %.epil.preheader ], [ %indvars.iv.next256.i.epil, %bb.aj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv255.i.epil ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i8 1, ptr %i.dn, align 2, !tbaa !45
  %i.do = trunc i64 %indvars.iv255.i.epil to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !46
  %indvars.iv.next256.i.epil = add nuw nsw i64 %indvars.iv255.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %opj_jp2_check_color.exit.sink.split, label %bb.aj, !llvm.loop !51

opj_jp2_check_color.exit.sink.split:              ; preds = %bb.ag, %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa, %bb.aj, %._crit_edge.thread.i, %bb.af
  %.sink = phi ptr [ %i.au, %bb.af ], [ %i.au, %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa ], [ %i.av, %._crit_edge.thread.i ], [ %i.au, %bb.aj ], [ %i.au, %bb.ag ]
  tail call void @opj_free(ptr noundef nonnull %.sink) #6
  br label %opj_jp2_check_color.exit

opj_jp2_check_color.exit:                         ; preds = %opj_jp2_check_color.exit.sink.split, %bb.n, %.loopexit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !53 ; 7 uses
  %.not18 = icmp eq ptr %i.dr, null
  br i1 %.not18, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %opj_jp2_check_color.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !31 ; 5 uses
  %.not19 = icmp eq ptr %i.dt, null
  br i1 %.not19, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !54
  tail call void @opj_free(ptr noundef %i.dv) #6
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !55
  tail call void @opj_free(ptr noundef %i.dy) #6
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !22
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !56
  tail call void @opj_free(ptr noundef %i.ea) #6
  %i.eb = load ptr, ptr %i.dq, align 8, !tbaa !22 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ed, null
  br i1 %.not.i22, label %opj_jp2_free_pclr.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @opj_free(ptr noundef nonnull %i.ed) #6
  %.pre.i23 = load ptr, ptr %i.dq, align 8, !tbaa !22
  br label %opj_jp2_free_pclr.exit

opj_jp2_free_pclr.exit:                           ; preds = %bb.al, %bb.am
  %i.ee = phi ptr [ %.pre.i23, %bb.am ], [ %i.eb, %bb.al ]
  tail call void @opj_free(ptr noundef %i.ee) #6
  store ptr null, ptr %i.dq, align 8, !tbaa !22
  br label %bb.ay

bb.an:                                            ; preds = %bb.ak
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.ej = load ptr, ptr %i.dr, align 8, !tbaa !56 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 34
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !34  ; 4 uses
  %i.em = zext i8 %i.el to i32                    ; 4 uses
  %.not157.i = icmp eq i8 %i.el, 0
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre.i25 = load ptr, ptr %.phi.trans.insert.i24, align 8, !tbaa !57 ; 6 uses
  br i1 %.not157.i, label %._crit_edge.thread.i37, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.an
  %i.en = load i16, ptr %i.dt, align 2, !tbaa !42
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !58
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i26
  %i.et = zext i8 %i.el to i64
  %i.eu = add nsw i64 %i.et, -1                   ; 2 uses
  %exitcond.not148 = icmp eq i64 %i.eu, 0
  br i1 %exitcond.not148, label %._crit_edge.i27, label %.lr.ph150, !llvm.loop !60

.lr.ph150:                                        ; preds = %.lr.ph.preheader
  br label %bb.ao, !llvm.loop !60

.lr.ph:                                           ; preds = %bb.ao
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.eu
  br i1 %exitcond.not, label %.lr.ph.._crit_edge.i27_crit_edge, label %bb.ao, !llvm.loop !60

bb.ao:                                            ; preds = %.lr.ph150, %.lr.ph
  %indvars.iv149 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv149, 1 ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !42
  %i.ex = zext i16 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !58
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !60

._crit_edge.loopexit:                             ; preds = %bb.ao
  %i.fc = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.i26
  %.lcssa = phi i32 [ 0, %.lr.ph.i26 ], [ %i.fc, %._crit_edge.loopexit ]
  %i.fd = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %.lcssa) #6 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

.lr.ph.._crit_edge.i27_crit_edge:                 ; preds = %.lr.ph
  br label %._crit_edge.i27, !llvm.loop !60

._crit_edge.i27:                                  ; preds = %.lr.ph.._crit_edge.i27_crit_edge, %.lr.ph.preheader
  %i.fe = zext i8 %i.el to i64                    ; 3 uses
  %i.ff = shl nuw nsw i64 %i.fe, 6
  %i.fg = tail call ptr @opj_malloc(i64 noundef %i.ff) #6 ; 8 uses
  %.not.i28 = icmp eq ptr %i.fg, null
  br i1 %.not.i28, label %bb.ap, label %.lr.ph136.i

._crit_edge.thread.i37:                           ; preds = %bb.an
  %i.fh = tail call ptr @opj_malloc(i64 noundef 0) #6 ; 2 uses
  %.not196.i = icmp eq ptr %i.fh, null
  br i1 %.not196.i, label %bb.ap, label %._crit_edge148.i

bb.ap:                                            ; preds = %._crit_edge.thread.i37, %._crit_edge.i27
  %i.fi = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

.lr.ph136.i:                                      ; preds = %._crit_edge.i27, %bb.as
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i31, %bb.as ], [ 0, %._crit_edge.i27 ] ; 8 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i30 ; 3 uses
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !42
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !45
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph136.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !46
  %i.fq = zext i8 %i.fp to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph136.i
  %.sink204.i = phi i64 [ %i.fq, %bb.aq ], [ %indvars.iv.i30, %.lr.ph136.i ]
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.fg, i64 %.sink204.i
  %i.fs = zext i16 %i.fk to i64
  %i.ft = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.fs ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fr, ptr noundef nonnull align 8 dereferenceable(64) %i.ft, i64 64, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !61
  %i.fw = zext i32 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, 2
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !62
  %i.ga = zext i32 %i.fz to i64
  %i.gb = mul i64 %i.fx, %i.ga
  %i.gc = tail call ptr @opj_image_data_alloc(i64 noundef %i.gb) #6 ; 2 uses
  %i.gd = getelementptr inbounds nuw [64 x i8], ptr %i.fg, i64 %indvars.iv.i30 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !58
  %.not124.i = icmp eq ptr %i.gc, null
  br i1 %.not124.i, label %.preheader.i36, label %bb.as

.preheader.i36:                                   ; preds = %bb.ar
  %.not125153.i = icmp eq i64 %indvars.iv.i30, 0
  br i1 %.not125153.i, label %._crit_edge156.i, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %.preheader.i36, %.lr.ph155.i
  %indvars.iv168.i = phi i64 [ %i.gf, %.lr.ph155.i ], [ %indvars.iv.i30, %.preheader.i36 ]
  %i.gf = add nsw i64 %indvars.iv168.i, -1        ; 3 uses
  %i.gg = getelementptr inbounds nuw [64 x i8], ptr %i.fg, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !58
  tail call void @opj_image_data_free(ptr noundef %i.gi) #6
  %.not125.wide.i = icmp eq i64 %i.gf, 0
  br i1 %.not125.wide.i, label %._crit_edge156.i, label %.lr.ph155.i, !llvm.loop !63

._crit_edge156.i:                                 ; preds = %.lr.ph155.i, %.preheader.i36
  tail call void @opj_free(ptr noundef nonnull %i.fg) #6
  %i.gj = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv.i30
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !19
  %i.gm = zext i8 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i32 %i.gm, ptr %i.gn, align 8, !tbaa !64
  %i.go = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.i30
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !19
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !65
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %i.fe
  br i1 %exitcond.not.i32, label %._crit_edge137.i, label %.lr.ph136.i, !llvm.loop !66

._crit_edge137.i:                                 ; preds = %bb.as
  %i.gs = load ptr, ptr %i.dq, align 8, !tbaa !22
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load i16, ptr %i.gt, align 8, !tbaa !67
  %i.gv = zext i16 %i.gu to i32
  %i.gw = add nsw i32 %i.gv, -1                   ; 3 uses
  br label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %.loopexit.i34, %._crit_edge137.i
  %indvars.iv181.i = phi i64 [ 0, %._crit_edge137.i ], [ %indvars.iv.next182.i, %.loopexit.i34 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv181.i ; 3 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !42
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 3
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !46  ; 2 uses
  %i.hb = zext i16 %i.gy to i64
  %i.hc = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !58 ; 10 uses
  %i.hf = ptrtoaddr ptr %i.he to i64
  %i.hg = getelementptr inbounds nuw [64 x i8], ptr %i.fg, i64 %indvars.iv181.i ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !61
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !62
  %i.hl = mul i32 %i.hk, %i.hi                    ; 7 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.hn = load i8, ptr %i.hm, align 2, !tbaa !45
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph147.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !58 ; 7 uses
  %.not161.i = icmp eq i32 %i.hl, 0
  br i1 %.not161.i, label %.loopexit.i34, label %.lr.ph144.preheader.i

.lr.ph144.preheader.i:                            ; preds = %bb.at
  %i.hr = ptrtoaddr ptr %i.hq to i64
  %wide.trip.count179.i = zext i32 %i.hl to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.hl, 8
  %i.hs = sub i64 %i.hf, %i.hr
  %diff.check = icmp ugt i64 %i.hs, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph144.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph144.preheader.i
  %n.vec = and i64 %wide.trip.count179.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %wide.load = load <4 x i32>, ptr %i.ht, align 4, !tbaa !3
  %wide.load151 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !3
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %index ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store <4 x i32> %wide.load, ptr %i.hv, align 4, !tbaa !3
  store <4 x i32> %wide.load151, ptr %i.hw, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count179.i
  br i1 %cmp.n, label %.loopexit.i34, label %.lr.ph144.i.preheader

.lr.ph144.i.preheader:                            ; preds = %.lr.ph144.preheader.i, %middle.block
  %indvars.iv176.i.ph = phi i64 [ 0, %.lr.ph144.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter200 = and i64 %wide.trip.count179.i, 3 ; 2 uses
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol

.lr.ph144.i.prol:                                 ; preds = %.lr.ph144.i.preheader, %.lr.ph144.i.prol
  %indvars.iv176.i.prol = phi i64 [ %indvars.iv.next177.i.prol, %.lr.ph144.i.prol ], [ %indvars.iv176.i.ph, %.lr.ph144.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph144.i.prol ], [ 0, %.lr.ph144.i.preheader ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv176.i.prol
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv176.i.prol
  store i32 %i.hz, ptr %i.ia, align 4, !tbaa !3
  %indvars.iv.next177.i.prol = add nuw nsw i64 %indvars.iv176.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter200
  br i1 %prol.iter.cmp.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol, !llvm.loop !71

.lr.ph144.i.prol.loopexit:                        ; preds = %.lr.ph144.i.prol, %.lr.ph144.i.preheader
  %indvars.iv176.i.unr = phi i64 [ %indvars.iv176.i.ph, %.lr.ph144.i.preheader ], [ %indvars.iv.next177.i.prol, %.lr.ph144.i.prol ]
  %i.ib = sub nsw i64 %indvars.iv176.i.ph, %wide.trip.count179.i
end_hunk_0
