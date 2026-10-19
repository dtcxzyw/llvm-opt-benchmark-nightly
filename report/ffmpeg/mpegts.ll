Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegts?download=true
inline.NumInlined: 193
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ff_parse_mpeg2_descriptor:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store ptr %i.aw, ptr %4, align 8, !tbaa !16
  %.not467 = icmp eq ptr %9, null
  br i1 %.not467, label %bb.j, label %bb.h

bb.h:                                             ; preds = %get16.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8328
  %i.ay = sext i32 %8 to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51 ; 2 uses
  %.not468 = icmp eq ptr %i.ba, null
  br i1 %.not468, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.av, ptr %i.bb, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %get16.exit
  %i.bc = icmp sgt i32 %7, 0
  br i1 %i.bc, label %.lr.ph653, label %get16.exit.thread

.lr.ph653:                                        ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = icmp ugt i32 %8, 8191
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8328
  %i.bg = zext nneg i32 %8 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 280
  %wide.trip.count684 = zext nneg i32 %7 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph653, %bb.v
  %indvars.iv681 = phi i64 [ 0, %.lr.ph653 ], [ %indvars.iv.next682, %bb.v ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [72 x i8], ptr %6, i64 %indvars.iv681 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !56 ; 2 uses
  %.not469 = icmp eq i32 %i.bm, 0
  br i1 %.not469, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load i32, ptr %i.bk, align 8, !tbaa !57
  %i.bo = icmp eq i32 %i.bn, %i.av
  br i1 %i.bo, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  call void @ffio_init_read_context(ptr noundef nonnull %10, ptr noundef %i.bq, i32 noundef %i.bm) #13
  %i.br = call i32 @ff_mp4_read_dec_config_descr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10) #13 ; 0 uses
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !27  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30
  switch i32 %i.bu, label %mpegts_open_section_filter.exit [
    i32 86018, label %bb.n
    i32 131073, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !59
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.o, label %mpegts_open_section_filter.exit

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bi, align 8, !tbaa !60
  store i32 1, ptr %i.bj, align 8, !tbaa !49
  br label %mpegts_open_section_filter.exit

bb.p:                                             ; preds = %bb.m
  %i.by = call noalias ptr @av_mallocz(i64 noundef 4096) #13 ; 3 uses
  %.not.i488 = icmp eq ptr %i.by, null
  br i1 %.not.i488, label %mpegts_open_section_filter.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bd, align 8, !tbaa !64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bz, i32 noundef 56, ptr noundef nonnull @.str.14, i32 noundef %8, i32 noundef 1) #13
  br i1 %i.be, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !51
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = call noalias ptr @av_mallocz(i64 noundef 88) #13 ; 12 uses
  %.not20.i.i = icmp eq ptr %i.cb, null
  br i1 %.not20.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @av_free(ptr noundef nonnull %i.by) #13
  br label %mpegts_open_section_filter.exit

bb.u:                                             ; preds = %bb.s
  store ptr %i.cb, ptr %i.bh, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store i32 1, ptr %i.cc, align 4, !tbaa !65
  store i32 %8, ptr %i.cb, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 -1, ptr %i.cd, align 4, !tbaa !53
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 -1, ptr %i.ce, align 8, !tbaa !67
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 -1, ptr %i.cf, align 8, !tbaa !68
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  store ptr @m4sl_cb, ptr %i.cg, align 8, !tbaa !70
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  store ptr %9, ptr %i.ch, align 8, !tbaa !71
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %i.by, ptr %i.ci, align 8, !tbaa !72
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8
  %i.cl = or i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i32 -1, ptr %i.cm, align 8, !tbaa !73
  br label %mpegts_open_section_filter.exit

mpegts_open_section_filter.exit:                  ; preds = %bb.m, %bb.n, %bb.o, %bb.u, %bb.t, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %bb.l, %mpegts_open_section_filter.exit
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next682, %wide.trip.count684
  br i1 %exitcond685.not, label %get16.exit.thread, label %bb.k, !llvm.loop !195

bb.w:                                             ; preds = %mpegts_find_stream_type.exit
  %i.cn = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.co = ptrtoint ptr %i.k to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp slt i64 %i.cq, 2
  br i1 %i.cr, label %get16.exit.thread, label %get16.exit491

get16.exit491:                                    ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store ptr %i.cs, ptr %4, align 8, !tbaa !16
  %i.ct = icmp sgt i32 %7, 0
  br i1 %i.ct, label %bb.x, label %get16.exit.thread

bb.x:                                             ; preds = %get16.exit491
  %i.cu = icmp eq i32 %i.af, 86065
  br i1 %i.cu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !44 ; 2 uses
  %i.cx = or i32 %i.cw, %i.af
  %or.cond471 = icmp eq i32 %i.cx, 0
  %i.cy = icmp sgt i32 %i.cw, 0
  %or.cond624 = or i1 %i.cy, %or.cond471
  br i1 %or.cond624, label %bb.z, label %get16.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !56 ; 2 uses
  %.not466 = icmp eq i32 %i.da, 0
  br i1 %.not466, label %get16.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = load i32, ptr %6, align 8, !tbaa !57
  %i.dc = icmp eq i32 %i.db, %8
  br i1 %i.dc, label %bb.ab, label %get16.exit.thread

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !58
  call void @ffio_init_read_context(ptr noundef nonnull %11, ptr noundef %i.de, i32 noundef %i.da) #13
  %i.df = call i32 @ff_mp4_read_dec_config_descr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11) #13 ; 0 uses
  %i.dg = load ptr, ptr %i.m, align 8, !tbaa !27  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.dj = icmp eq i32 %i.di, 86018
  br i1 %i.dj, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !59
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 808
  store i32 0, ptr %i.dn, align 8, !tbaa !60
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i32 0, ptr %i.do, align 8, !tbaa !44
  store i32 1, ptr %i.dg, align 8, !tbaa !45
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 1, ptr %i.dp, align 8, !tbaa !49
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %get16.exit.thread

bb.af:                                            ; preds = %mpegts_find_stream_type.exit
  %i.dq = udiv i8 %i.h, 5
  %.zext = zext nneg i8 %i.dq to i32              ; 2 uses
  %i.dr = urem i8 %i.h, 5
  %.not464 = icmp eq i8 %i.dr, 0
  br i1 %.not464, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %.not465 = icmp ult i8 %i.h, 5
  br i1 %.not465, label %get16.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !201
  %i.du = icmp eq ptr %i.dt, null
  %i.dv = shl nuw nsw i32 %.zext, 1               ; 2 uses
  br i1 %i.du, label %bb.ai, label %._crit_edge693

bb.ai:                                            ; preds = %bb.ah
  %i.dw = tail call i32 @ff_alloc_extradata(ptr noundef nonnull %i.n, i32 noundef %i.dv) #13 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %.critedge, label %._crit_edge689

._crit_edge689:                                   ; preds = %bb.ai
  %.pre690.a = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %._crit_edge693

._crit_edge693:                                   ; preds = %bb.ah, %._crit_edge689
  %i.dy = phi ptr [ %.pre690.a, %._crit_edge689 ], [ %i.n, %bb.ah ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !59
  %i.eb = icmp slt i32 %i.ea, %i.dv
  br i1 %i.eb, label %.critedge, label %.lr.ph648.preheader

.lr.ph648.preheader:                              ; preds = %._crit_edge693
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !201
  %umax678 = tail call i32 @llvm.umax.i32(i32 %.zext, i32 1) ; 2 uses
  %wide.trip.count679 = zext nneg i32 %umax678 to i64
  %.pre691 = load ptr, ptr %4, align 8, !tbaa !16
  br label %.lr.ph648

.lr.ph648:                                        ; preds = %.lr.ph648.preheader, %get8.exit500
  %i.ee = phi ptr [ %.pre691, %.lr.ph648.preheader ], [ %i.ew, %get8.exit500 ] ; 4 uses
  %indvars.iv675 = phi i64 [ 0, %.lr.ph648.preheader ], [ %indvars.iv.next676, %get8.exit500 ] ; 2 uses
  %.0410646 = phi ptr [ %i.ed, %.lr.ph648.preheader ], [ %i.eu, %get8.exit500 ] ; 2 uses
  %.not.i492 = icmp ult ptr %i.ee, %i.k
  br i1 %.not.i492, label %bb.aj, label %get8.exit494

bb.aj:                                            ; preds = %.lr.ph648
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !17
  store ptr %i.ef, ptr %4, align 8, !tbaa !16
  br label %get8.exit494

get8.exit494:                                     ; preds = %.lr.ph648, %bb.aj
  %i.eh = phi ptr [ %i.ef, %bb.aj ], [ %i.ee, %.lr.ph648 ] ; 4 uses
  %.0.i493 = phi i8 [ %i.eg, %bb.aj ], [ -73, %.lr.ph648 ]
  %i.ei = shl nuw nsw i64 %indvars.iv675, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei ; 4 uses
  store i8 %.0.i493, ptr %i.ej, align 4, !tbaa !17
  %.not.i495 = icmp ult ptr %i.eh, %i.k
  br i1 %.not.i495, label %bb.ak, label %get8.exit497

bb.ak:                                            ; preds = %get8.exit494
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !17
  store ptr %i.ek, ptr %4, align 8, !tbaa !16
  br label %get8.exit497

get8.exit497:                                     ; preds = %get8.exit494, %bb.ak
  %i.em = phi ptr [ %i.ek, %bb.ak ], [ %i.eh, %get8.exit494 ] ; 4 uses
  %.0.i496 = phi i8 [ %i.el, %bb.ak ], [ -73, %get8.exit494 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  store i8 %.0.i496, ptr %i.en, align 1, !tbaa !17
  %.not.i498 = icmp ult ptr %i.em, %i.k
  br i1 %.not.i498, label %bb.al, label %get8.exit500

bb.al:                                            ; preds = %get8.exit497
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 2 uses
  %i.ep = load i8, ptr %i.em, align 1, !tbaa !17
  store ptr %i.eo, ptr %4, align 8, !tbaa !16
  br label %get8.exit500

get8.exit500:                                     ; preds = %get8.exit497, %bb.al
  %i.eq = phi ptr [ %i.eo, %bb.al ], [ %i.em, %get8.exit497 ]
  %.0.i499 = phi i8 [ %i.ep, %bb.al ], [ -73, %get8.exit497 ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i8 %.0.i499, ptr %i.er, align 2, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 3
  store i8 44, ptr %i.es, align 1, !tbaa !17
  %i.et = load i16, ptr %i.eq, align 1
  store i16 %i.et, ptr %.0410646, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.0410646, i64 2
  %i.ev = load ptr, ptr %4, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 2 uses
  store ptr %i.ew, ptr %4, align 8, !tbaa !16
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1 ; 2 uses
  %exitcond680.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count679
  br i1 %exitcond680.not, label %._crit_edge649, label %.lr.ph648, !llvm.loop !196

._crit_edge649:                                   ; preds = %get8.exit500
  %i.ex = shl nuw nsw i32 %umax678, 2
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr i8, ptr %i.a, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -1
  store i8 0, ptr %i.fa, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fc = call i32 @av_dict_set(ptr noundef nonnull %i.fb, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 0) #13 ; 0 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 1, ptr %i.fd, align 8, !tbaa !49
  br label %get16.exit.thread

bb.am:                                            ; preds = %mpegts_find_stream_type.exit
  %i.fe = lshr i32 %i.i, 3                        ; 4 uses
  %i.ff = and i32 %i.i, 7
  %.not461 = icmp eq i32 %i.ff, 0
  br i1 %.not461, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.fg = icmp ugt i8 %i.h, 15
  br i1 %i.fg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not462 = icmp eq i32 %i.fe, 0
  br i1 %.not462, label %get16.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = load ptr, ptr %i.m, align 8, !tbaa !27  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !201
  %i.fk = icmp eq ptr %i.fj, null
  %i.fl = mul nuw nsw i32 %i.fe, 5                ; 2 uses
  br i1 %i.fk, label %bb.ar, label %._crit_edge692

bb.ar:                                            ; preds = %bb.aq
  %i.fm = tail call i32 @ff_alloc_extradata(ptr noundef nonnull %i.fh, i32 noundef %i.fl) #13 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %.critedge, label %._crit_edge686

._crit_edge686:                                   ; preds = %bb.ar
  %.pre687.a = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %._crit_edge692

._crit_edge692:                                   ; preds = %bb.aq, %._crit_edge686
  %i.fo = phi ptr [ %.pre687.a, %._crit_edge686 ], [ %i.fh, %bb.aq ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !59
  %i.fr = icmp slt i32 %i.fq, %i.fl
  br i1 %i.fr, label %.critedge, label %bb.as

bb.as:                                            ; preds = %._crit_edge692
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !201
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %wide.trip.count673 = zext nneg i32 %i.fe to i64
  %.pre688 = load ptr, ptr %4, align 8, !tbaa !16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %get8.exit512
  %i.fv = phi ptr [ %.pre688, %bb.as ], [ %i.gu, %get8.exit512 ] ; 4 uses
  %indvars.iv670 = phi i64 [ 0, %bb.as ], [ %indvars.iv.next671, %get8.exit512 ] ; 2 uses
  %.0409644 = phi ptr [ %i.ft, %bb.as ], [ %i.gs, %get8.exit512 ] ; 3 uses
  %.not.i501 = icmp ult ptr %i.fv, %i.k
  br i1 %.not.i501, label %bb.au, label %get8.exit503

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  %i.fx = load i8, ptr %i.fv, align 1, !tbaa !17
  store ptr %i.fw, ptr %4, align 8, !tbaa !16
  br label %get8.exit503

get8.exit503:                                     ; preds = %bb.at, %bb.au
  %i.fy = phi ptr [ %i.fw, %bb.au ], [ %i.fv, %bb.at ] ; 4 uses
  %.0.i502 = phi i8 [ %i.fx, %bb.au ], [ -73, %bb.at ]
  %i.fz = shl nuw nsw i64 %indvars.iv670, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fz ; 4 uses
  store i8 %.0.i502, ptr %i.ga, align 4, !tbaa !17
  %.not.i504 = icmp ult ptr %i.fy, %i.k
  br i1 %.not.i504, label %bb.av, label %get8.exit506

bb.av:                                            ; preds = %get8.exit503
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !17
  store ptr %i.gb, ptr %4, align 8, !tbaa !16
  br label %get8.exit506

get8.exit506:                                     ; preds = %get8.exit503, %bb.av
  %i.gd = phi ptr [ %i.gb, %bb.av ], [ %i.fy, %get8.exit503 ] ; 4 uses
  %.0.i505 = phi i8 [ %i.gc, %bb.av ], [ -73, %get8.exit503 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 %.0.i505, ptr %i.ge, align 1, !tbaa !17
  %.not.i507 = icmp ult ptr %i.gd, %i.k
  br i1 %.not.i507, label %bb.aw, label %get8.exit509

bb.aw:                                            ; preds = %get8.exit506
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  %i.gg = load i8, ptr %i.gd, align 1, !tbaa !17
  store ptr %i.gf, ptr %4, align 8, !tbaa !16
  br label %get8.exit509

get8.exit509:                                     ; preds = %get8.exit506, %bb.aw
  %i.gh = phi ptr [ %i.gf, %bb.aw ], [ %i.gd, %get8.exit506 ] ; 4 uses
  %.0.i508 = phi i8 [ %i.gg, %bb.aw ], [ -73, %get8.exit506 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i8 %.0.i508, ptr %i.gi, align 2, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 3
  store i8 44, ptr %i.gj, align 1, !tbaa !17
  %i.gk = load i8, ptr %i.gh, align 1, !tbaa !17
  %.off = add i8 %i.gk, -32
  %switch = icmp ult i8 %.off, 6
  br i1 %switch, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %get8.exit509
  %i.gl = load i32, ptr %i.fu, align 8, !tbaa !200
  %i.gm = or i32 %i.gl, 128
  store i32 %i.gm, ptr %i.fu, align 8, !tbaa !200
  br label %bb.ay

bb.ay:                                            ; preds = %get8.exit509, %bb.ax
  %.not.i510 = icmp ult ptr %i.gh, %i.k
  br i1 %.not.i510, label %bb.az, label %get8.exit512

bb.az:                                            ; preds = %bb.ay
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.go = load i8, ptr %i.gh, align 1, !tbaa !17
  store ptr %i.gn, ptr %4, align 8, !tbaa !16
  br label %get8.exit512

get8.exit512:                                     ; preds = %bb.ay, %bb.az
  %.0.i511 = phi i8 [ %i.go, %bb.az ], [ -73, %bb.ay ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0409644, i64 4
  store i8 %.0.i511, ptr %i.gp, align 1, !tbaa !17
  %i.gq = load ptr, ptr %4, align 8, !tbaa !16
  %i.gr = load i32, ptr %i.gq, align 1
  store i32 %i.gr, ptr %.0409644, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.0409644, i64 5
  %i.gt = load ptr, ptr %4, align 8, !tbaa !16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4 ; 2 uses
  store ptr %i.gu, ptr %4, align 8, !tbaa !16
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next671, %wide.trip.count673
  br i1 %exitcond674.not, label %bb.ba, label %bb.at, !llvm.loop !197

bb.ba:                                            ; preds = %get8.exit512
  %i.gv = shl nuw nsw i32 %i.fe, 2
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr i8, ptr %i.a, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -1
  store i8 0, ptr %i.gy, align 1, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ha = call i32 @av_dict_set(ptr noundef nonnull %i.gz, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 0) #13 ; 0 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 1, ptr %i.hb, align 8, !tbaa !49
  br label %get16.exit.thread

bb.bb:                                            ; preds = %.lr.ph640, %get8.exit524.thread
  %i.hc = phi ptr [ %.pre, %.lr.ph640 ], [ %i.hw, %get8.exit524.thread ] ; 4 uses
  %indvars.iv665 = phi i64 [ 0, %.lr.ph640 ], [ %indvars.iv.next666, %get8.exit524.thread ] ; 2 uses
  %indvars.iv663 = phi i64 [ 4, %.lr.ph640 ], [ %indvars.iv.next664, %get8.exit524.thread ]
  %.not.i513 = icmp ult ptr %i.hc, %i.k
  br i1 %.not.i513, label %bb.bc, label %get8.exit515

bb.bc:                                            ; preds = %bb.bb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 2 uses
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !17
  store ptr %i.hd, ptr %4, align 8, !tbaa !16
  br label %get8.exit515

get8.exit515:                                     ; preds = %bb.bb, %bb.bc
  %i.hf = phi ptr [ %i.hd, %bb.bc ], [ %i.hc, %bb.bb ] ; 4 uses
  %.0.i514 = phi i8 [ %i.he, %bb.bc ], [ -73, %bb.bb ]
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv665 ; 4 uses
  store i8 %.0.i514, ptr %i.hg, align 4, !tbaa !17
  %.not.i516 = icmp ult ptr %i.hf, %i.k
  br i1 %.not.i516, label %bb.bd, label %get8.exit518

bb.bd:                                            ; preds = %get8.exit515
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 2 uses
  %i.hi = load i8, ptr %i.hf, align 1, !tbaa !17
  store ptr %i.hh, ptr %4, align 8, !tbaa !16
  br label %get8.exit518

get8.exit518:                                     ; preds = %get8.exit515, %bb.bd
  %i.hj = phi ptr [ %i.hh, %bb.bd ], [ %i.hf, %get8.exit515 ] ; 4 uses
  %.0.i517 = phi i8 [ %i.hi, %bb.bd ], [ -73, %get8.exit515 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  store i8 %.0.i517, ptr %i.hk, align 1, !tbaa !17
  %.not.i519 = icmp ult ptr %i.hj, %i.k
  br i1 %.not.i519, label %bb.be, label %get8.exit521

bb.be:                                            ; preds = %get8.exit518
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 2 uses
  %i.hm = load i8, ptr %i.hj, align 1, !tbaa !17
  store ptr %i.hl, ptr %4, align 8, !tbaa !16
  br label %get8.exit521

get8.exit521:                                     ; preds = %get8.exit518, %bb.be
  %i.hn = phi ptr [ %i.hl, %bb.be ], [ %i.hj, %get8.exit518 ] ; 4 uses
end_hunk_0
begin_hunk_1_@handle_packets:bb.a
  %i.ax = call fastcc i32 @read_packet(ptr noundef %i.d, ptr noundef nonnull %i.a, i32 noundef %i.aw, ptr noundef %i.b) ; 2 uses
  %.not51 = icmp eq i32 %i.ax, 0
  br i1 %.not51, label %bb.o, label %.split56.us

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.ba = call i64 @avio_seek(ptr noundef %i.az, i64 noundef 0, i32 noundef 1) #13
  %i.bb = call fastcc i32 @handle_packet(ptr noundef nonnull %0, ptr noundef %i.ay, i64 noundef %i.ba) ; 2 uses
  %i.bc = load i32, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 192
  %i.be = add nsw i32 %i.bc, -188
  %.0.i = select i1 %i.bd, i32 0, i32 %i.be       ; 2 uses
  %i.bf = icmp sgt i32 %.0.i, 0
  br i1 %i.bf, label %bb.p, label %finished_reading_packet.exit

bb.p:                                             ; preds = %bb.o
  %.val = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.bg = zext nneg i32 %.0.i to i64
  %i.bh = call i64 @avio_skip(ptr noundef %.val, i64 noundef %i.bg) #13 ; 0 uses
  br label %finished_reading_packet.exit

finished_reading_packet.exit:                     ; preds = %bb.o, %bb.p
  %.not52 = icmp eq i32 %i.bb, 0
  br i1 %.not52, label %.split, label %.split56.us

.split56.us:                                      ; preds = %.lr.ph, %.split, %finished_reading_packet.exit, %bb.n, %bb.m, %.split.us, %bb.i, %bb.j, %finished_reading_packet.exit.us, %.split.preheader
  %.us-phi = phi i32 [ -11, %.split.us ], [ -11, %.split.preheader ], [ %i.ak, %finished_reading_packet.exit.us ], [ 0, %bb.i ], [ %i.ag, %bb.j ], [ -11, %.split ], [ 0, %bb.m ], [ %i.ax, %bb.n ], [ %i.bb, %finished_reading_packet.exit ], [ -11, %.lr.ph ]
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.bj = call i64 @avio_seek(ptr noundef %i.bi, i64 noundef 0, i32 noundef 1) #13
  store i64 %i.bj, ptr %i.h, align 8, !tbaa !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.us-phi
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 189, 188) i32 @read_packet(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !163  ; 3 uses
  %i.c = icmp eq i32 %2, 192
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @avio_skip(ptr noundef %i.b, i64 noundef 4) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @ffio_read_indirect(ptr noundef %i.b, ptr noundef %1, i32 noundef 188, ptr noundef nonnull %3) #13 ; 2 uses
  %.not22 = icmp eq i32 %i.e, 188
  br i1 %.not22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = sext i32 %2 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %mpegts_resync.exit, %bb.c
  %.lcssa = phi i32 [ %i.e, %bb.c ], [ %i.as, %mpegts_resync.exit ] ; 2 uses
  %i.h = icmp slt i32 %.lcssa, 0
  %i.i = select i1 %i.h, i32 %.lcssa, i32 -541478725
  br label %mpegts_resync.exit.thread

bb.d:                                             ; preds = %.lr.ph, %mpegts_resync.exit
  %i.j = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %.not14 = icmp eq i8 %i.k, 71
  br i1 %.not14, label %mpegts_resync.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !162  ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !163  ; 9 uses
  %i.n = tail call i64 @avio_seek(ptr noundef %i.m, i64 noundef 0, i32 noundef 1) #13 ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.g)
  %i.p = load i8, ptr %i.j, align 1, !tbaa !17
  %i.q = icmp eq i8 %i.p, -128
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = icmp eq i8 %i.s, 71
  %i.u = icmp ugt i64 %i.n, 187
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i64 @avio_seek(ptr noundef %i.m, i64 noundef -176, i32 noundef 1) #13 ; 0 uses
  br label %mpegts_resync.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.w = sub nsw i64 0, %i.o
  %i.x = tail call i64 @avio_seek(ptr noundef %i.m, i64 noundef %i.w, i32 noundef 1) #13 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !164
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

bb.i:                                             ; preds = %bb.j
  %i.ab = add nuw nsw i32 %.040.i, 1              ; 2 uses
  %i.ac = load i32, ptr %i.y, align 8, !tbaa !164
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !334

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.040.i = phi i32 [ %i.ab, %bb.i ], [ 0, %bb.h ]
  %i.ae = tail call i32 @avio_r8(ptr noundef %i.m) #13
  %i.af = tail call i32 @avio_feof(ptr noundef %i.m) #13
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.j, label %mpegts_resync.exit.thread

bb.j:                                             ; preds = %.lr.ph.i
  %i.ag = icmp eq i32 %i.ae, 71
  br i1 %i.ag, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call i64 @avio_seek(ptr noundef %i.m, i64 noundef -1, i32 noundef 1) #13 ; 0 uses
  %i.ai = tail call i64 @avio_seek(ptr noundef %i.m, i64 noundef 0, i32 noundef 1) #13
  %i.aj = tail call i32 @ffio_ensure_seekback(ptr noundef %i.m, i64 noundef 8192) #13
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %mpegts_resync.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call fastcc i32 @get_packet_size(ptr noundef %0) ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !108
  %.not39.i = icmp eq i32 %i.al, %i.ao
  br i1 %.not39.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aq, i32 noundef 24, ptr noundef nonnull @.str.103, i32 noundef %i.al) #13
  store i32 %i.al, ptr %i.an, align 8, !tbaa !108
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.ar = tail call i64 @avio_seek(ptr noundef %i.m, i64 noundef %i.ai, i32 noundef 0) #13 ; 0 uses
  br label %mpegts_resync.exit

._crit_edge.i:                                    ; preds = %bb.h, %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.104) #13
  br label %mpegts_resync.exit.thread

mpegts_resync.exit:                               ; preds = %bb.g, %bb.o
  %i.as = tail call i32 @ffio_read_indirect(ptr noundef %i.b, ptr noundef %1, i32 noundef 188, ptr noundef nonnull %3) #13 ; 2 uses
  %.not = icmp eq i32 %i.as, 188
  br i1 %.not, label %bb.d, label %._crit_edge

mpegts_resync.exit.thread:                        ; preds = %bb.k, %bb.d, %.lr.ph.i, %._crit_edge.i, %._crit_edge
  %.0 = phi i32 [ %i.i, %._crit_edge ], [ -11, %.lr.ph.i ], [ -11, %._crit_edge.i ], [ -11, %bb.k ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @avio_read_partial(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ffio_read_indirect(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #2

declare void @ff_read_frame_flush(ptr noundef) local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare i32 @av_read_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare void @ff_reduce_index(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_add_index_entry(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !74}
!1 = distinct !{null}
!2 = distinct !{!2, !74}
!3 = distinct !{!3, !74}
!4 = distinct !{!4, !74}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 1, !"override-stack-alignment", i32 16}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{!"p1 _ZTS7AVClass", !14, i64 0}
!19 = !{!"p1 _ZTS17AVCodecParameters", !14, i64 0}
!20 = !{!"AVRational", !11, i64 0, !11, i64 4}
!21 = !{!"long", !10, i64 0}
!22 = !{!"p1 _ZTS12AVDictionary", !14, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !14, i64 0}
!24 = !{!"p1 _ZTS16AVPacketSideData", !14, i64 0}
!25 = !{!"AVPacket", !23, i64 0, !21, i64 8, !21, i64 16, !15, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !24, i64 48, !11, i64 56, !21, i64 64, !21, i64 72, !14, i64 80, !23, i64 88, !20, i64 96}
!26 = !{!"AVStream", !18, i64 0, !11, i64 8, !11, i64 12, !19, i64 16, !14, i64 24, !20, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !11, i64 64, !11, i64 68, !20, i64 72, !22, i64 80, !20, i64 88, !25, i64 96, !11, i64 200, !20, i64 204, !11, i64 212}
!27 = !{!26, !19, i64 16}
!28 = !{!"AVChannelLayout", !11, i64 0, !11, i64 4, !10, i64 8, !14, i64 16}
!29 = !{!"AVCodecParameters", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 16, !11, i64 24, !24, i64 32, !11, i64 40, !11, i64 44, !21, i64 48, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !20, i64 80, !20, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !28, i64 128, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176}
!30 = !{!29, !11, i64 4}
!31 = !{!"p1 _ZTS15AVFormatContext", !14, i64 0}
!32 = !{!"p1 _ZTS12AVBSFContext", !14, i64 0}
!33 = !{!"p1 _ZTS14AVCodecContext", !14, i64 0}
!34 = !{!"", !32, i64 0, !11, i64 8}
!35 = !{!"FFFrac", !21, i64 0, !21, i64 8, !21, i64 16}
!36 = !{!"p1 _ZTS12FFStreamInfo", !14, i64 0}
!37 = !{!"p1 _ZTS12AVIndexEntry", !14, i64 0}
!38 = !{!"AVProbeData", !15, i64 0, !15, i64 8, !11, i64 16, !15, i64 24}
!39 = !{!"p1 _ZTS15PacketListEntry", !14, i64 0}
!40 = !{!"p1 _ZTS20AVCodecParserContext", !14, i64 0}
!41 = !{!"p1 _ZTS8AVPacket", !14, i64 0}
!42 = !{!"p1 _ZTS17AVCodecDescriptor", !14, i64 0}
!43 = !{!"FFStream", !26, i64 0, !31, i64 216, !11, i64 224, !32, i64 232, !11, i64 240, !33, i64 248, !11, i64 256, !34, i64 264, !11, i64 280, !11, i64 284, !35, i64 288, !36, i64 312, !37, i64 320, !11, i64 328, !11, i64 332, !21, i64 336, !21, i64 344, !11, i64 352, !11, i64 356, !11, i64 360, !21, i64 368, !21, i64 376, !21, i64 384, !11, i64 392, !21, i64 400, !21, i64 408, !21, i64 416, !11, i64 424, !11, i64 428, !10, i64 432, !10, i64 568, !10, i64 592, !21, i64 728, !10, i64 736, !10, i64 737, !20, i64 740, !38, i64 752, !39, i64 784, !21, i64 792, !11, i64 800, !11, i64 804, !11, i64 808, !40, i64 816, !41, i64 824, !11, i64 832, !11, i64 836, !21, i64 840, !21, i64 848, !42, i64 856}
!44 = !{!43, !11, i64 352}
!45 = !{!29, !11, i64 0}
!46 = !{!"StreamType", !11, i64 0, !11, i64 4, !11, i64 8}
!47 = !{!46, !11, i64 4}
!48 = !{!46, !11, i64 8}
!49 = !{!43, !11, i64 280}
!50 = !{!"p1 _ZTS12MpegTSFilter", !14, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"MpegTSFilter", !11, i64 0, !11, i64 4, !11, i64 8, !21, i64 16, !11, i64 24, !11, i64 28, !10, i64 32}
!53 = !{!52, !11, i64 4}
!54 = !{!"SLConfigDescr", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!55 = !{!"Mp4Descr", !11, i64 0, !11, i64 4, !15, i64 8, !54, i64 16}
!56 = !{!55, !11, i64 4}
!57 = !{!55, !11, i64 0}
!58 = !{!55, !15, i64 8}
!59 = !{!29, !11, i64 24}
!60 = !{!43, !11, i64 808}
!61 = !{!"p1 _ZTS7Program", !14, i64 0}
!62 = !{!"p1 _ZTS8AVStream", !14, i64 0}
!63 = !{!"MpegTSContext", !18, i64 0, !31, i64 8, !11, i64 16, !21, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !21, i64 48, !21, i64 56, !11, i64 64, !41, i64 72, !21, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !61, i64 128, !10, i64 136, !10, i64 8328, !11, i64 73864, !62, i64 73872, !10, i64 73880}
!64 = !{!63, !31, i64 8}
!65 = !{!52, !11, i64 28}
!66 = !{!52, !11, i64 0}
!67 = !{!52, !11, i64 8}
!68 = !{!52, !21, i64 16}
!69 = !{!"MpegTSSectionFilter", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !15, i64 24, !11, i64 32, !11, i64 32, !14, i64 40, !14, i64 48}
!70 = !{!69, !14, i64 40}
!71 = !{!69, !14, i64 48}
!72 = !{!69, !15, i64 24}
!73 = !{!69, !11, i64 8}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!29, !11, i64 8}
!76 = !{!26, !11, i64 12}
!77 = !{!21, !21, i64 0}
!78 = !{!63, !11, i64 120}
!79 = !{!63, !61, i64 128}
!80 = !{!"Program", !11, i64 0, !11, i64 4, !10, i64 8, !11, i64 528, !10, i64 532, !11, i64 1556, !10, i64 1560, !11, i64 134680}
!81 = !{!80, !11, i64 0}
!82 = !{!80, !11, i64 1556}
!83 = !{!"StreamGroup", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !10, i64 16}
!84 = !{!83, !11, i64 0}
!85 = !{!83, !11, i64 12}
!86 = !{!62, !62, i64 0}
!87 = !{!83, !11, i64 4}
!88 = !{!83, !11, i64 8}
!89 = !{!69, !11, i64 12}
!90 = !{!69, !11, i64 16}
!91 = !{!"AVIOContext", !18, i64 0, !15, i64 8, !11, i64 16, !15, i64 24, !15, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !21, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !21, i64 104, !15, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !11, i64 144, !11, i64 148, !15, i64 152, !15, i64 160, !14, i64 168, !11, i64 176, !15, i64 184, !21, i64 192, !21, i64 200}
!92 = !{!"FFIOContext", !91, i64 0, !14, i64 208, !11, i64 216, !11, i64 220, !21, i64 224, !21, i64 232, !21, i64 240, !21, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !21, i64 272}
!93 = !{!"p1 _ZTS8Mp4Descr", !14, i64 0}
!94 = !{!"MP4DescrParseContext", !31, i64 0, !92, i64 8, !93, i64 288, !93, i64 296, !11, i64 304, !11, i64 308, !11, i64 312, !11, i64 316}
!95 = !{!94, !31, i64 0}
!96 = !{!94, !11, i64 312}
!97 = !{!94, !11, i64 304}
!98 = !{!94, !93, i64 288}
!99 = !{!94, !93, i64 296}
!100 = !{!94, !11, i64 308}
!101 = !{!"p1 _ZTS13MpegTSContext", !14, i64 0}
!102 = !{!"PESContext", !11, i64 0, !11, i64 4, !11, i64 8, !101, i64 16, !31, i64 24, !62, i64 32, !62, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !10, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !10, i64 104, !23, i64 368, !54, i64 376, !11, i64 432}
!103 = !{!102, !62, i64 32}
!104 = !{!11, !11, i64 0}
!105 = !{!29, !11, i64 72}
!106 = !{!29, !11, i64 76}
!107 = !{!26, !11, i64 8}
!108 = !{!63, !11, i64 16}
!109 = !{!63, !11, i64 112}
!110 = !{!63, !11, i64 32}
!111 = !{!63, !11, i64 88}
!112 = !{!"p1 int", !14, i64 0}
!113 = !{!"AVProgram", !11, i64 0, !11, i64 4, !11, i64 8, !112, i64 16, !11, i64 24, !22, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !21, i64 56, !21, i64 64, !21, i64 72, !11, i64 80}
!114 = !{!102, !11, i64 432}
!115 = !{!26, !14, i64 24}
!116 = !{!80, !11, i64 4}
!117 = !{!80, !11, i64 528}
!118 = !{!63, !11, i64 124}
!119 = !{i64 0, i64 4, !104, i64 4, i64 4, !104, i64 8, i64 520, !17, i64 528, i64 4, !104, i64 532, i64 1024, !17, i64 1556, i64 4, !104, i64 1560, i64 133120, !17, i64 134680, i64 4, !104}
!120 = !{!"p1 _ZTS13AVInputFormat", !14, i64 0}
!121 = !{!"p1 _ZTS14AVOutputFormat", !14, i64 0}
!122 = !{!"p1 _ZTS11AVIOContext", !14, i64 0}
!123 = !{!"any p2 pointer", !14, i64 0}
!124 = !{!"p2 _ZTS8AVStream", !123, i64 0}
!125 = !{!"p2 _ZTS13AVStreamGroup", !123, i64 0}
!126 = !{!"p2 _ZTS9AVChapter", !123, i64 0}
!127 = !{!"p2 _ZTS9AVProgram", !123, i64 0}
!128 = !{!"AVIOInterruptCB", !14, i64 0, !14, i64 8}
!129 = !{!"p1 _ZTS7AVCodec", !14, i64 0}
!130 = !{!"AVFormatContext", !18, i64 0, !120, i64 8, !121, i64 16, !14, i64 24, !122, i64 32, !11, i64 40, !11, i64 44, !124, i64 48, !11, i64 56, !125, i64 64, !11, i64 72, !126, i64 80, !15, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !11, i64 120, !11, i64 124, !11, i64 128, !21, i64 136, !21, i64 144, !15, i64 152, !11, i64 160, !11, i64 164, !127, i64 168, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !22, i64 192, !21, i64 200, !11, i64 208, !11, i64 212, !128, i64 216, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !21, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !11, i64 300, !21, i64 304, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !11, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !11, i64 368, !129, i64 376, !129, i64 384, !129, i64 392, !129, i64 400, !11, i64 408, !14, i64 416, !14, i64 424, !21, i64 432, !15, i64 440, !14, i64 448, !14, i64 456, !21, i64 464, !15, i64 472}
!131 = !{!130, !11, i64 164}
!132 = !{!130, !127, i64 168}
!133 = !{!"p1 _ZTS9AVProgram", !14, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!113, !11, i64 0}
!136 = !{!63, !11, i64 92}
!137 = !{!113, !11, i64 24}
!138 = !{!26, !11, i64 68}
!139 = !{!63, !41, i64 72}
!140 = !{!25, !15, i64 24}
!141 = !{!25, !11, i64 32}
!142 = !{!25, !11, i64 36}
!143 = !{!63, !11, i64 64}
!144 = !{!102, !101, i64 16}
!145 = !{!102, !31, i64 24}
!146 = !{!102, !11, i64 0}
!147 = !{!102, !11, i64 4}
!148 = !{!102, !11, i64 48}
!149 = !{!102, !21, i64 80}
!150 = !{!102, !21, i64 88}
!151 = !{!"MpegTSPESFilter", !14, i64 0, !14, i64 8}
!152 = !{!151, !14, i64 0}
!153 = !{!151, !14, i64 8}
!154 = !{!52, !11, i64 24}
!155 = !{!113, !11, i64 8}
!156 = !{!63, !11, i64 73864}
!157 = !{!102, !11, i64 56}
!158 = !{!63, !21, i64 24}
!159 = !{!130, !11, i64 40}
!160 = !{!63, !11, i64 100}
!161 = !{!80, !11, i64 134680}
!162 = !{!130, !14, i64 24}
!163 = !{!130, !122, i64 32}
!164 = !{!63, !11, i64 104}
!165 = !{!63, !21, i64 56}
!166 = !{!63, !21, i64 48}
!167 = !{!102, !11, i64 52}
!168 = !{!25, !21, i64 16}
!169 = !{!25, !21, i64 72}
!170 = !{!130, !124, i64 48}
!171 = !{!25, !21, i64 8}
!172 = !{!94, !11, i64 316}
!173 = !{!113, !11, i64 48}
end_hunk_1
