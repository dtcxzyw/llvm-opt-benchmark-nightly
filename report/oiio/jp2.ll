Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jp2?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@opj_jp2_apply_color_postprocessing:bb.a
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv248.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !41
  %.not175.i = icmp eq i8 %i.bw, 0
  br i1 %.not175.i, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad, %.lr.ph214.i
  %indvars.iv.next249.i = add nuw nsw i64 %indvars.iv248.i, 1 ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv.next249.i to i32
  %exitcond251.not.i = icmp eq i64 %indvars.iv.next249.i, %wide.trip.count242.i
  br i1 %exitcond251.not.i, label %._crit_edge215.i, label %.lr.ph214.i, !llvm.loop !97

.thread:                                          ; preds = %bb.ad
  %i.by = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %i.br) #6 ; 0 uses
  %indvars.iv.next249.i47 = add nuw nsw i64 %indvars.iv248.i, 1 ; 3 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv.next249.i47 to i32
  %exitcond251.not.i48 = icmp eq i64 %indvars.iv.next249.i47, %wide.trip.count242.i
  br i1 %exitcond251.not.i48, label %.critedge182.thread186.i, label %.lr.ph214.i.outer, !llvm.loop !97

._crit_edge215.i:                                 ; preds = %bb.ae
  br i1 %.4213.i.ph, label %.critedge182.thread186.i, label %bb.af

.critedge182.thread186.i:                         ; preds = %.thread, %._crit_edge215.i
  tail call void @opj_free(ptr noundef nonnull %i.au) #6
  br label %opj_jp2_check_color.exit.thread

bb.af:                                            ; preds = %._crit_edge215.i
  %i.ca = load i32, ptr %i.ao, align 8, !tbaa !30
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph218.i, label %opj_jp2_check_color.exit.sink.split

bb.ag:                                            ; preds = %.lr.ph218.i
  %indvars.iv.next253.i = add nuw nsw i64 %indvars.iv252.i, 1 ; 2 uses
  %exitcond256.not.i = icmp eq i64 %indvars.iv.next253.i, %wide.trip.count242.i
  br i1 %exitcond256.not.i, label %opj_jp2_check_color.exit.sink.split, label %.lr.ph218.i, !llvm.loop !98

.lr.ph218.i:                                      ; preds = %bb.af, %bb.ag
  %indvars.iv252.i = phi i64 [ %indvars.iv.next253.i, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv252.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %.not171.i = icmp eq i32 %i.cd, 0
  br i1 %.not171.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph218.i
  %i.ce = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.20) #6 ; 0 uses
  %xtraiter = and i64 %wide.trip.count242.i, 7    ; 3 uses
  %i.cf = icmp ult i8 %i.an, 8
  br i1 %i.cf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ah
  %unroll_iter = and i64 %wide.trip.count242.i, 248
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.new
  %indvars.iv257.i = phi i64 [ 0, %.new ], [ %indvars.iv.next258.i.7, %bb.ai ] ; 10 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.7, %bb.ai ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv257.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i8 1, ptr %i.ch, align 2, !tbaa !41
  %i.ci = trunc i64 %indvars.iv257.i to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 3
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !42
  %indvars.iv.next258.i = or disjoint i64 %indvars.iv257.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 1, ptr %i.cl, align 2, !tbaa !41
  %i.cm = trunc i64 %indvars.iv.next258.i to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !42
  %indvars.iv.next258.i.1 = or disjoint i64 %indvars.iv257.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i.1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 1, ptr %i.cp, align 2, !tbaa !41
  %i.cq = trunc i64 %indvars.iv.next258.i.1 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !42
  %indvars.iv.next258.i.2 = or disjoint i64 %indvars.iv257.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i.2 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 1, ptr %i.ct, align 2, !tbaa !41
  %i.cu = trunc i64 %indvars.iv.next258.i.2 to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !42
  %indvars.iv.next258.i.3 = or disjoint i64 %indvars.iv257.i, 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i.3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 1, ptr %i.cx, align 2, !tbaa !41
  %i.cy = trunc i64 %indvars.iv.next258.i.3 to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 3
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !42
  %indvars.iv.next258.i.4 = or disjoint i64 %indvars.iv257.i, 5 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i.4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 1, ptr %i.db, align 2, !tbaa !41
  %i.dc = trunc i64 %indvars.iv.next258.i.4 to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 3
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !42
  %indvars.iv.next258.i.5 = or disjoint i64 %indvars.iv257.i, 6 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i.5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 1, ptr %i.df, align 2, !tbaa !41
  %i.dg = trunc i64 %indvars.iv.next258.i.5 to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 3
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !42
  %indvars.iv.next258.i.6 = or disjoint i64 %indvars.iv257.i, 7 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next258.i.6 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  store i8 1, ptr %i.dj, align 2, !tbaa !41
  %i.dk = trunc i64 %indvars.iv.next258.i.6 to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 3
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !42
  %indvars.iv.next258.i.7 = add nuw nsw i64 %indvars.iv257.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !99

opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %opj_jp2_check_color.exit.sink.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa, %bb.ah
  %indvars.iv257.i.epil.init = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next258.i.7, %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %indvars.iv257.i.epil = phi i64 [ %indvars.iv257.i.epil.init, %.epil.preheader ], [ %indvars.iv.next258.i.epil, %bb.aj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv257.i.epil ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i8 1, ptr %i.dn, align 2, !tbaa !41
  %i.do = trunc i64 %indvars.iv257.i.epil to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !42
  %indvars.iv.next258.i.epil = add nuw nsw i64 %indvars.iv257.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %opj_jp2_check_color.exit.sink.split, label %bb.aj, !llvm.loop !100

opj_jp2_check_color.exit.sink.split:              ; preds = %bb.ag, %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa, %bb.aj, %._crit_edge.thread.i, %bb.af
  %.sink = phi ptr [ %i.au, %bb.af ], [ %i.au, %opj_jp2_check_color.exit.sink.split.loopexit.unr-lcssa ], [ %i.av, %._crit_edge.thread.i ], [ %i.au, %bb.aj ], [ %i.au, %bb.ag ]
  tail call void @opj_free(ptr noundef nonnull %.sink) #6
  br label %opj_jp2_check_color.exit

opj_jp2_check_color.exit:                         ; preds = %opj_jp2_check_color.exit.sink.split, %bb.n, %.loopexit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !43 ; 7 uses
  %.not18 = icmp eq ptr %i.dr, null
  br i1 %.not18, label %bb.ay, label %bb.ak

bb.ak:                                            ; preds = %opj_jp2_check_color.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !33 ; 5 uses
  %.not19 = icmp eq ptr %i.dt, null
  br i1 %.not19, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !44
  tail call void @opj_free(ptr noundef %i.dv) #6
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !114
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !45
  tail call void @opj_free(ptr noundef %i.dy) #6
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !114
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !46
  tail call void @opj_free(ptr noundef %i.ea) #6
  %i.eb = load ptr, ptr %i.dq, align 8, !tbaa !114 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ed, null
  br i1 %.not.i22, label %opj_jp2_free_pclr.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @opj_free(ptr noundef nonnull %i.ed) #6
  %.pre.i23 = load ptr, ptr %i.dq, align 8, !tbaa !114
  br label %opj_jp2_free_pclr.exit

opj_jp2_free_pclr.exit:                           ; preds = %bb.al, %bb.am
  %i.ee = phi ptr [ %.pre.i23, %bb.am ], [ %i.eb, %bb.al ]
  tail call void @opj_free(ptr noundef %i.ee) #6
  store ptr null, ptr %i.dq, align 8, !tbaa !114
  br label %bb.ay

bb.an:                                            ; preds = %bb.ak
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !45
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !44
  %i.ej = load ptr, ptr %i.dr, align 8, !tbaa !46 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 34
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !34  ; 4 uses
  %i.em = zext i8 %i.el to i32                    ; 4 uses
  %.not157.i = icmp eq i8 %i.el, 0
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre.i25 = load ptr, ptr %.phi.trans.insert.i24, align 8, !tbaa !47 ; 6 uses
  br i1 %.not157.i, label %._crit_edge.thread.i37, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.an
  %i.en = load i16, ptr %i.dt, align 2, !tbaa !40
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !116
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i26
  %4 = zext i8 %i.el to i64
  %wide.trip.count = add nsw i64 %4, -1           ; 2 uses
  %exitcond.not148 = icmp eq i64 %wide.trip.count, 0
  br i1 %exitcond.not148, label %._crit_edge.i27, label %.lr.ph150, !llvm.loop !101

.lr.ph150:                                        ; preds = %.lr.ph.preheader
  br label %bb.ao, !llvm.loop !101

.lr.ph:                                           ; preds = %bb.ao
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.._crit_edge.i27_crit_edge, label %bb.ao, !llvm.loop !101

bb.ao:                                            ; preds = %.lr.ph150, %.lr.ph
  %indvars.iv149 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv149, 1 ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !40
  %i.ev = zext i16 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !116
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !101

._crit_edge.loopexit:                             ; preds = %bb.ao
  %i.fa = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.i26
  %.lcssa = phi i32 [ 0, %.lr.ph.i26 ], [ %i.fa, %._crit_edge.loopexit ]
  %i.fb = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %.lcssa) #6 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

.lr.ph.._crit_edge.i27_crit_edge:                 ; preds = %.lr.ph
  br label %._crit_edge.i27, !llvm.loop !101

._crit_edge.i27:                                  ; preds = %.lr.ph.._crit_edge.i27_crit_edge, %.lr.ph.preheader
  %5 = zext i8 %i.el to i64                       ; 3 uses
  %i.fc = shl nuw nsw i64 %5, 6
  %i.fd = tail call ptr @opj_malloc(i64 noundef %i.fc) #6 ; 8 uses
  %.not.i28 = icmp eq ptr %i.fd, null
  br i1 %.not.i28, label %bb.ap, label %.lr.ph136.i

._crit_edge.thread.i37:                           ; preds = %bb.an
  %i.fe = tail call ptr @opj_malloc(i64 noundef 0) #6 ; 2 uses
  %.not196.i = icmp eq ptr %i.fe, null
  br i1 %.not196.i, label %bb.ap, label %._crit_edge148.i

bb.ap:                                            ; preds = %._crit_edge.thread.i37, %._crit_edge.i27
  %i.ff = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

.lr.ph136.i:                                      ; preds = %._crit_edge.i27, %bb.as
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i31, %bb.as ], [ 0, %._crit_edge.i27 ] ; 8 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i30 ; 3 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !40
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !41
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph136.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !42
  %i.fn = zext i8 %i.fm to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph136.i
  %.sink204.i = phi i64 [ %i.fn, %bb.aq ], [ %indvars.iv.i30, %.lr.ph136.i ]
  %i.fo = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %.sink204.i
  %i.fp = zext i16 %i.fh to i64
  %i.fq = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.fp ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fo, ptr noundef nonnull align 8 dereferenceable(64) %i.fq, i64 64, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !117
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !118
  %i.fx = zext i32 %i.fw to i64
  %i.fy = mul i64 %i.fu, %i.fx
  %i.fz = tail call ptr @opj_image_data_alloc(i64 noundef %i.fy) #6 ; 2 uses
  %i.ga = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %indvars.iv.i30 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !116
  %.not124.i = icmp eq ptr %i.fz, null
  br i1 %.not124.i, label %.preheader.i36, label %bb.as

.preheader.i36:                                   ; preds = %bb.ar
  %.not125153.i = icmp eq i64 %indvars.iv.i30, 0
  br i1 %.not125153.i, label %._crit_edge156.i, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %.preheader.i36, %.lr.ph155.i
  %indvars.iv168.i = phi i64 [ %i.gc, %.lr.ph155.i ], [ %indvars.iv.i30, %.preheader.i36 ]
  %i.gc = add nsw i64 %indvars.iv168.i, -1        ; 3 uses
  %i.gd = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !116
  tail call void @opj_image_data_free(ptr noundef %i.gf) #6
  %.not125.wide.i = icmp eq i64 %i.gc, 0
  br i1 %.not125.wide.i, label %._crit_edge156.i, label %.lr.ph155.i, !llvm.loop !102

._crit_edge156.i:                                 ; preds = %.lr.ph155.i, %.preheader.i36
  tail call void @opj_free(ptr noundef nonnull %i.fd) #6
  %i.gg = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %opj_jp2_check_color.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %indvars.iv.i30
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !21
  %i.gj = zext i8 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !49
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.i30
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !21
  %i.gn = zext i8 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store i32 %i.gn, ptr %i.go, align 8, !tbaa !50
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %5
  br i1 %exitcond.not.i32, label %._crit_edge137.i, label %.lr.ph136.i, !llvm.loop !103

._crit_edge137.i:                                 ; preds = %bb.as
  %i.gp = load ptr, ptr %i.dq, align 8, !tbaa !114
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load i16, ptr %i.gq, align 8, !tbaa !51
  %i.gs = zext i16 %i.gr to i32
  %i.gt = add nsw i32 %i.gs, -1                   ; 3 uses
  br label %.lr.ph147.i

.lr.ph147.i:                                      ; preds = %.loopexit.i33, %._crit_edge137.i
  %indvars.iv181.i = phi i64 [ 0, %._crit_edge137.i ], [ %indvars.iv.next182.i, %.loopexit.i33 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv181.i ; 3 uses
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !40
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 3
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !42  ; 2 uses
  %i.gy = zext i16 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !116 ; 10 uses
  %i.hc = ptrtoaddr ptr %i.hb to i64
  %i.hd = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %indvars.iv181.i ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !117
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !118
  %i.hi = mul i32 %i.hh, %i.hf                    ; 7 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.hk = load i8, ptr %i.hj, align 2, !tbaa !41
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph147.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !116 ; 7 uses
  %.not161.i35 = icmp eq i32 %i.hi, 0
  br i1 %.not161.i35, label %.loopexit.i33, label %.lr.ph144.preheader.i

.lr.ph144.preheader.i:                            ; preds = %bb.at
  %i.ho = ptrtoaddr ptr %i.hn to i64
  %wide.trip.count179.i = zext i32 %i.hi to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.hi, 8
  %i.hp = sub i64 %i.hc, %i.ho
  %diff.check = icmp ugt i64 %i.hp, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph144.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph144.preheader.i
  %n.vec = and i64 %wide.trip.count179.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load = load <4 x i32>, ptr %i.hq, align 4, !tbaa !8
  %wide.load151 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !8
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %index ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store <4 x i32> %wide.load, ptr %i.hs, align 4, !tbaa !8
  store <4 x i32> %wide.load151, ptr %i.ht, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count179.i
  br i1 %cmp.n, label %.loopexit.i33, label %.lr.ph144.i.preheader

.lr.ph144.i.preheader:                            ; preds = %.lr.ph144.preheader.i, %middle.block
  %indvars.iv176.i.ph = phi i64 [ 0, %.lr.ph144.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter199 = and i64 %wide.trip.count179.i, 3 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol

.lr.ph144.i.prol:                                 ; preds = %.lr.ph144.i.preheader, %.lr.ph144.i.prol
  %indvars.iv176.i.prol = phi i64 [ %indvars.iv.next177.i.prol, %.lr.ph144.i.prol ], [ %indvars.iv176.i.ph, %.lr.ph144.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph144.i.prol ], [ 0, %.lr.ph144.i.preheader ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv176.i.prol
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !8
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv176.i.prol
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !8
  %indvars.iv.next177.i.prol = add nuw nsw i64 %indvars.iv176.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter199
  br i1 %prol.iter.cmp.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol, !llvm.loop !105

.lr.ph144.i.prol.loopexit:                        ; preds = %.lr.ph144.i.prol, %.lr.ph144.i.preheader
  %indvars.iv176.i.unr = phi i64 [ %indvars.iv176.i.ph, %.lr.ph144.i.preheader ], [ %indvars.iv.next177.i.prol, %.lr.ph144.i.prol ]
  %i.hy = sub nsw i64 %indvars.iv176.i.ph, %wide.trip.count179.i
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %.loopexit.i33, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %.lr.ph144.i.prol.loopexit, %.lr.ph144.i
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i.3, %.lr.ph144.i ], [ %indvars.iv176.i.unr, %.lr.ph144.i.prol.loopexit ] ; 6 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv176.i
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !8
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv176.i
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !8
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next177.i
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !8
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next177.i
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !8
  %indvars.iv.next177.i.1 = add nuw nsw i64 %indvars.iv176.i, 2 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next177.i.1
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !8
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next177.i.1
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !8
  %indvars.iv.next177.i.2 = add nuw nsw i64 %indvars.iv176.i, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next177.i.2
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !8
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next177.i.2
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !8
  %indvars.iv.next177.i.3 = add nuw nsw i64 %indvars.iv176.i, 4 ; 2 uses
  %exitcond180.not.i.3 = icmp eq i64 %indvars.iv.next177.i.3, %wide.trip.count179.i
  br i1 %exitcond180.not.i.3, label %.loopexit.i33, label %.lr.ph144.i, !llvm.loop !106

bb.au:                                            ; preds = %.lr.ph147.i
  %i.im = zext i8 %i.gx to i64
  %i.in = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !116 ; 3 uses
  %.not160.i = icmp eq i32 %i.hi, 0
  br i1 %.not160.i, label %.loopexit.i33, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.au
  %i.iq = zext i8 %i.gx to i32                    ; 3 uses
  %wide.trip.count174.i = zext i32 %i.hi to i64   ; 2 uses
  %xtraiter193 = and i64 %wide.trip.count174.i, 1
  %i.ir = icmp eq i32 %i.hi, 1
  br i1 %i.ir, label %.epil.preheader192, label %.lr.ph141.i.new

.lr.ph141.i.new:                                  ; preds = %.lr.ph141.i
  %unroll_iter197 = and i64 %wide.trip.count174.i, 4294967294
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph141.i.new
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph141.i.new ], [ %indvars.iv.next172.i.1, %bb.av ] ; 4 uses
  %niter198 = phi i64 [ 0, %.lr.ph141.i.new ], [ %niter198.next.1, %bb.av ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv171.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !8  ; 2 uses
  %i.iu = icmp slt i32 %i.it, 0
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.it, i32 %i.gt)
  %.0.i = select i1 %i.iu, i32 0, i32 %spec.select.i
  %i.iv = mul nsw i32 %.0.i, %i.em
  %i.iw = add nsw i32 %i.iv, %i.iq
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv171.i
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !8
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next172.i
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !8  ; 2 uses
  %i.jd = icmp slt i32 %i.jc, 0
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.jc, i32 %i.gt)
  %.0.i.1 = select i1 %i.jd, i32 0, i32 %spec.select.i.1
  %i.je = mul nsw i32 %.0.i.1, %i.em
  %i.jf = add nsw i32 %i.je, %i.iq
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !8
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.next172.i
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !8
  %indvars.iv.next172.i.1 = add nuw nsw i64 %indvars.iv171.i, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %.loopexit.i33.loopexit178.unr-lcssa, label %bb.av, !llvm.loop !107

.loopexit.i33.loopexit178.unr-lcssa:              ; preds = %bb.av
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %.loopexit.i33, label %.epil.preheader192

.epil.preheader192:                               ; preds = %.loopexit.i33.loopexit178.unr-lcssa, %.lr.ph141.i
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.lr.ph141.i ], [ %indvars.iv.next172.i.1, %.loopexit.i33.loopexit178.unr-lcssa ] ; 2 uses
  %lcmp.mod196 = trunc i32 %i.hi to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv171.i.epil.init
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !8  ; 2 uses
  %i.jm = icmp slt i32 %i.jl, 0
  %spec.select.i.epil = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.gt)
  %.0.i.epil = select i1 %i.jm, i32 0, i32 %spec.select.i.epil
  %i.jn = mul nsw i32 %.0.i.epil, %i.em
  %i.jo = add nsw i32 %i.jn, %i.iq
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !8
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv171.i.epil.init
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !8
  br label %.loopexit.i33

.loopexit.i33:                                    ; preds = %.epil.preheader192, %.loopexit.i33.loopexit178.unr-lcssa, %.lr.ph144.i.prol.loopexit, %.lr.ph144.i, %middle.block, %bb.au, %bb.at
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %5
  br i1 %exitcond185.not.i, label %._crit_edge148.i, label %.lr.ph147.i, !llvm.loop !108

._crit_edge148.i:                                 ; preds = %.loopexit.i33, %._crit_edge.thread.i37
  %i.jt = phi ptr [ %i.fe, %._crit_edge.thread.i37 ], [ %i.fd, %.loopexit.i33 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !30 ; 2 uses
  %.not162.i34 = icmp eq i32 %i.jv, 0
  br i1 %.not162.i34, label %opj_jp2_apply_pclr.exit, label %.lr.ph151.preheader.i

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %wide.trip.count189.i = zext i32 %i.jv to i64
  br label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %bb.ax, %.lr.ph151.preheader.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph151.preheader.i ], [ %indvars.iv.next187.i, %bb.ax ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %indvars.iv186.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !116 ; 2 uses
  %.not122.i = icmp eq ptr %i.jy, null
  br i1 %.not122.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph151.i
  tail call void @opj_image_data_free(ptr noundef nonnull %i.jy) #6
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph151.i
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %opj_jp2_apply_pclr.exit, label %.lr.ph151.i, !llvm.loop !109

opj_jp2_apply_pclr.exit:                          ; preds = %bb.ax, %._crit_edge148.i
  tail call void @opj_free(ptr noundef %.pre.i25) #6
  store ptr %i.jt, ptr %.phi.trans.insert.i24, align 8, !tbaa !47
  store i32 %i.em, ptr %i.ju, align 8, !tbaa !30
  br label %bb.ay

bb.ay:                                            ; preds = %opj_jp2_apply_pclr.exit, %opj_jp2_free_pclr.exit, %opj_jp2_check_color.exit
  %i.jz = load ptr, ptr %i.f, align 8, !tbaa !54  ; 4 uses
  %.not21 = icmp eq ptr %i.jz, null
  br i1 %.not21, label %opj_jp2_check_color.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !26 ; 11 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load i16, ptr %i.kb, align 8, !tbaa !27 ; 4 uses
  %.not84.i = icmp eq i16 %i.kc, 0
  br i1 %.not84.i, label %._crit_edge83.i, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %bb.az
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.kf = zext i16 %i.kc to i64                   ; 2 uses
  %i.kg = add i16 %i.kc, -2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bm, %.lr.ph82.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next89.i, %bb.bm ] ; 4 uses
  %indvars.iv.i38 = phi i64 [ 1, %.lr.ph82.i ], [ %indvars.iv.next.i39, %bb.bm ] ; 4 uses
  %i.kh = trunc i64 %indvars.iv88.i to i16
  %i.ki = sub i16 %i.kg, %i.kh                    ; 2 uses
  %i.kj = getelementptr inbounds nuw [6 x i8], ptr %i.ka, i64 %indvars.iv88.i ; 5 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !36 ; 8 uses
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = load i32, ptr %i.kd, align 8, !tbaa !30 ; 4 uses
  %.not74.i = icmp ugt i32 %i.km, %i.kl
  br i1 %.not74.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kn = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %i.kl, i32 noundef %i.km) #6 ; 0 uses
  br label %bb.bm

bb.bc:                                            ; preds = %bb.ba
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !38 ; 2 uses
  %i.kq = add i16 %i.kp, 1
  %or.cond.i42 = icmp ult i16 %i.kq, 2
  br i1 %or.cond.i42, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !55
  %i.kt = load ptr, ptr %i.ke, align 8, !tbaa !47
  %i.ku = zext i16 %i.kk to i64
  %i.kv = getelementptr inbounds nuw [64 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  store i16 %i.ks, ptr %i.kw, align 8, !tbaa !56
  br label %bb.bm

bb.be:                                            ; preds = %bb.bc
  %i.kx = add i16 %i.kp, -1                       ; 6 uses
  %i.ky = zext i16 %i.kx to i32                   ; 2 uses
  %.not75.i = icmp ugt i32 %i.km, %i.ky
  br i1 %.not75.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kz = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %i.ky, i32 noundef %i.km) #6 ; 0 uses
  br label %bb.bm

bb.bg:                                            ; preds = %bb.be
  %.not76.i = icmp eq i16 %i.kk, %i.kx
  br i1 %.not76.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.la = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !55
  %i.lc = icmp eq i16 %i.lb, 0
  br i1 %i.lc, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ld = load ptr, ptr %i.ke, align 8, !tbaa !47 ; 2 uses
  %i.le = zext i16 %i.kk to i64
  %i.lf = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %i.le ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.lf, i64 64, i1 false)
  %i.lg = zext i16 %i.kx to i64                   ; 2 uses
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %i.lg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lf, ptr noundef nonnull align 8 dereferenceable(64) %i.lh, i64 64, i1 false)
  %i.li = load ptr, ptr %i.ke, align 8, !tbaa !47
  %i.lj = getelementptr inbounds nuw [64 x i8], ptr %i.li, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lj, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.lk = add nuw nsw i64 %indvars.iv88.i, 1
  %i.ll = icmp samesign ult i64 %i.lk, %i.kf
  br i1 %i.ll, label %.lr.ph.i44.preheader, label %._crit_edge.i43

.lr.ph.i44.preheader:                             ; preds = %bb.bi
  %min.iters.check153 = icmp ult i16 %i.ki, 8
  br i1 %min.iters.check153, label %.lr.ph.i44.preheader177, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.i44.preheader
  %i.lm = zext i16 %i.ki to i64
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %i.lo = and i64 %i.ln, 7                        ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 0
  %i.lq = select i1 %i.lp, i64 8, i64 %i.lo
  %n.vec155 = sub nsw i64 %i.ln, %i.lq            ; 2 uses
  %i.lr = add i64 %indvars.iv.i38, %n.vec155
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kk, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert156 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat157 = shufflevector <8 x i16> %broadcast.splatinsert156, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %pred.store.continue173, %vector.ph154
  %index159 = phi i64 [ 0, %vector.ph154 ], [ %index.next174, %pred.store.continue173 ] ; 2 uses
  %i.ls = add nuw i64 %indvars.iv.i38, %index159  ; 8 uses
  %i.lt = getelementptr inbounds nuw [6 x i8], ptr %i.ka, i64 %i.ls ; 2 uses
  %i.lu = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.lv = getelementptr i8, ptr %i.lu, i64 6      ; 2 uses
  %i.lw = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.lx = getelementptr i8, ptr %i.lw, i64 12     ; 2 uses
  %i.ly = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.lz = getelementptr i8, ptr %i.ly, i64 18     ; 2 uses
  %i.ma = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.mb = getelementptr i8, ptr %i.ma, i64 24     ; 2 uses
  %i.mc = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.md = getelementptr i8, ptr %i.mc, i64 30     ; 2 uses
  %i.me = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.mf = getelementptr i8, ptr %i.me, i64 36     ; 2 uses
  %i.mg = getelementptr [6 x i8], ptr %i.ka, i64 %i.ls
  %i.mh = getelementptr i8, ptr %i.mg, i64 42     ; 2 uses
  %i.mi = load i16, ptr %i.lt, align 2, !tbaa !36
  %i.mj = load i16, ptr %i.lv, align 2, !tbaa !36
  %i.mk = load i16, ptr %i.lx, align 2, !tbaa !36
  %i.ml = load i16, ptr %i.lz, align 2, !tbaa !36
  %i.mm = load i16, ptr %i.mb, align 2, !tbaa !36
  %i.mn = load i16, ptr %i.md, align 2, !tbaa !36
  %i.mo = load i16, ptr %i.mf, align 2, !tbaa !36
  %i.mp = load i16, ptr %i.mh, align 2, !tbaa !36
  %i.mq = insertelement <8 x i16> poison, i16 %i.mi, i64 0
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 1
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 2
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 3
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 4
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 5
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 6
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 7 ; 2 uses
  %i.my = icmp eq <8 x i16> %i.mx, %broadcast.splat ; 2 uses
  %i.mz = icmp eq <8 x i16> %i.mx, %broadcast.splat157
  %i.na = or <8 x i1> %i.mz, %i.my                ; 8 uses
  %predphi = select <8 x i1> %i.my, <8 x i16> %broadcast.splat157, <8 x i16> %broadcast.splat ; 8 uses
  %i.nb = extractelement <8 x i1> %i.na, i64 0
  br i1 %i.nb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body158
  %i.nc = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.nc, ptr %i.lt, align 2, !tbaa !36
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body158
  %i.nd = extractelement <8 x i1> %i.na, i64 1
  br i1 %i.nd, label %pred.store.if160, label %pred.store.continue161

pred.store.if160:                                 ; preds = %pred.store.continue
  %i.ne = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.ne, ptr %i.lv, align 2, !tbaa !36
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.if160, %pred.store.continue
  %i.nf = extractelement <8 x i1> %i.na, i64 2
  br i1 %i.nf, label %pred.store.if162, label %pred.store.continue163
end_hunk_0
