Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avidec?download=true
inline.NumInlined: 22
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@avi_read_header:bb.a
  ]

bb.b:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = icmp eq i8 %i.ah, 25
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.39) #12
  br label %bb.d

get_riff.exit:                                    ; preds = %switch.early.test
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %guess_ni_flag.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !111
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.s, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %i.ak) #12
  %i.al = call i64 @avio_size(ptr noundef %i.u) #12 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 5 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  store i64 %i.al, ptr %i.an, align 8, !tbaa !33
  %i.ao = icmp slt i64 %i.al, 1
  %.pre = load i64, ptr %i.z, align 8, !tbaa !110 ; 3 uses
  %i.ap = icmp slt i64 %i.al, %.pre
  %or.cond1029 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond1029, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp eq i64 %.pre, 8
  %spec.select = select i1 %i.aq, i64 9223372036854775807, i64 %.pre
  store i64 %spec.select, ptr %i.am, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ar = call i32 @avio_feof(ptr noundef %i.u) #12
  %.not803 = icmp eq i32 %i.ar, 0
  br i1 %.not803, label %.lr.ph820, label %guess_ni_flag.exit

.lr.ph820:                                        ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 13 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 7 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 7 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph820, %avi_read_nikon.exit
  %.0566817 = phi i64 [ 0, %.lr.ph820 ], [ %.1567, %avi_read_nikon.exit ] ; 23 uses
  %.0568815 = phi i32 [ 0, %.lr.ph820 ], [ %.2570, %avi_read_nikon.exit ] ; 27 uses
  %.0571813 = phi i32 [ 0, %.lr.ph820 ], [ %.1572, %avi_read_nikon.exit ] ; 24 uses
  %.0573811 = phi i32 [ 0, %.lr.ph820 ], [ %.1574, %avi_read_nikon.exit ] ; 24 uses
  %.0575809 = phi ptr [ null, %.lr.ph820 ], [ %.3578, %avi_read_nikon.exit ] ; 29 uses
  %.0585807 = phi i32 [ 0, %.lr.ph820 ], [ %.1586, %avi_read_nikon.exit ] ; 25 uses
  %.0587806 = phi i32 [ -1, %.lr.ph820 ], [ %.3590, %avi_read_nikon.exit ] ; 30 uses
  %.0591804 = phi i32 [ -1, %.lr.ph820 ], [ %.3594, %avi_read_nikon.exit ] ; 26 uses
  %.05758091079 = ptrtoaddr ptr %.0575809 to i64
  %i.bh = call i32 @avio_rl32(ptr noundef %i.u) #12 ; 4 uses
  %i.bi = call i32 @avio_rl32(ptr noundef %i.u) #12 ; 31 uses
  %i.bj = call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.bk = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.j, i32 noundef %i.bh) #12
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.7, i64 noundef %i.bj, ptr noundef nonnull @.str.8, ptr noundef %i.bk, i32 noundef %i.bi) #12
  switch i32 %i.bh, label %bb.fl [
    i32 1414744396, label %bb.h
    i32 1414087753, label %bb.x
    i32 1751936356, label %bb.am
    i32 1752591713, label %bb.an
    i32 1751742049, label %bb.ao
    i32 1752331379, label %bb.ap
    i32 1718776947, label %bb.bv
    i32 1685222515, label %bb.eh
    i32 2019847785, label %bb.ev
    i32 1886548086, label %bb.fb
    i32 1852994675, label %bb.fg
    i32 1784836969, label %bb.fg
    i32 1835101801, label %bb.fg
    i32 1953653097, label %bb.fg
    i32 1886348137, label %bb.fg
    i32 1953325929, label %bb.fg
    i32 1919838057, label %bb.fg
    i32 1685024873, label %bb.fg
    i32 1718580073, label %bb.fg
    i32 829973609, label %bb.fo
  ]

bb.h:                                             ; preds = %bb.g
  %i.bl = call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = add nsw i64 %i.bl, %i.bm                ; 7 uses
  %i.bo = call i32 @avio_rl32(ptr noundef %i.u) #12 ; 2 uses
  %i.bp = call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.bq = call ptr @av_fourcc_make_string(ptr noundef nonnull %i.k, i32 noundef %i.bo) #12
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.7, i64 noundef %i.bp, ptr noundef nonnull @.str.9, ptr noundef %i.bq, i32 noundef 0) #12
  switch i32 %i.bo, label %avi_read_nikon.exit [
    i32 1769369453, label %bb.i
    i32 1330007625, label %bb.m
    i32 1952736110, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.br = call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12
  %i.bs = add nsw i64 %i.br, -4                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !34
  %.not684 = icmp eq i32 %i.bi, 0
  br i1 %.not684, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = and i32 %i.bi, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, %i.bm
  %i.bx = add i64 %i.bw, %i.bs
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.by = load i64, ptr %i.am, align 8, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi i64 [ %i.by, %bb.k ], [ %i.bx, %bb.j ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sink, ptr %i.bz, align 8, !tbaa !35
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.10, i64 noundef %.sink) #12
  br label %bb.fp

bb.m:                                             ; preds = %bb.h
  %i.ca = icmp ult i32 %i.bi, 4
  br i1 %i.ca, label %guess_ni_flag.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = add i32 %i.bi, -4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = call i32 @ff_read_riff_info(ptr noundef %0, i64 noundef %i.cc) #12 ; 0 uses
  br label %avi_read_nikon.exit

bb.o:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.cf = call i64 @avio_seek(ptr noundef %i.ce, i64 noundef 0, i32 noundef 1) #12
  %i.cg = icmp ult i64 %i.cf, %i.bn
  br i1 %i.cg, label %.lr.ph41.i, label %avi_read_nikon.exit

.lr.ph41.i:                                       ; preds = %bb.o, %.critedge2.i
  %i.ch = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ci = call i32 @avio_feof(ptr noundef %i.ch) #12
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %bb.p, label %avi_read_nikon.exit

bb.p:                                             ; preds = %.lr.ph41.i
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ck = call i32 @avio_rl32(ptr noundef %i.cj) #12
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.cm = call i32 @avio_rl32(ptr noundef %i.cl) #12 ; 2 uses
  %cond.i = icmp eq i32 %i.ck, 1735680878
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !28  ; 2 uses
  br i1 %cond.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.co = call i64 @avio_seek(ptr noundef %i.cn, i64 noundef 0, i32 noundef 1) #12
  %i.cp = zext i32 %i.cm to i64
  %i.cq = add nsw i64 %i.co, %i.cp                ; 3 uses
  %i.cr = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.cs = call i64 @avio_seek(ptr noundef %i.cr, i64 noundef 0, i32 noundef 1) #12
  %i.ct = icmp ult i64 %i.cs, %i.cq
  br i1 %i.ct, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %bb.q, %.critedge39.i
  %i.cu = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.cv = call i32 @avio_feof(ptr noundef %i.cu) #12
  %.not36.i = icmp eq i32 %i.cv, 0
  br i1 %.not36.i, label %bb.r, label %.critedge2.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.cx = call i32 @avio_rl16(ptr noundef %i.cw) #12
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.cz = call i32 @avio_rl16(ptr noundef %i.cy) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.da = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.db = call i64 @avio_seek(ptr noundef %i.da, i64 noundef 0, i32 noundef 1) #12
  %i.dc = sub i64 %i.cq, %i.db
  %i.dd = and i32 %i.cz, 65535
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.de) ; 2 uses
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 63)
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = call i32 @avio_read(ptr noundef %i.dg, ptr noundef nonnull %i.h, i32 noundef %i.di) #12
  %2 = zext i32 %i.dj to i64
  %3 = sub nsw i64 %i.df, %2
  %trunc.i = trunc i32 %i.cx to i16
  switch i16 %trunc.i, label %.critedge39.i [
    i16 3, label %bb.v
    i16 4, label %bb.s
    i16 19, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dk = load i8, ptr %i.bf, align 4, !tbaa !12
  %i.dl = icmp eq i8 %i.dk, 58
  %i.dm = load i8, ptr %i.bg, align 1
  %i.dn = icmp eq i8 %i.dm, 58
  %or.cond.i = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 45, ptr %i.bg, align 1, !tbaa !12
  store i8 45, ptr %i.bf, align 4, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i = phi ptr [ @.str.42, %bb.t ], [ @.str.42, %bb.u ], [ @.str.41, %bb.s ], [ @.str.40, %bb.r ]
  %i.do = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.h, i32 noundef 0) #12 ; 0 uses
  br label %.critedge39.i

.critedge39.i:                                    ; preds = %bb.v, %bb.r
  %i.dp = load ptr, ptr %i.t, align 8, !tbaa !28
  %4 = and i64 %3, 65535
  %i.dq = call i64 @avio_skip(ptr noundef %i.dp, i64 noundef %4) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  %i.dr = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ds = call i64 @avio_seek(ptr noundef %i.dr, i64 noundef 0, i32 noundef 1) #12
  %i.dt = icmp ult i64 %i.ds, %i.cq
  br i1 %i.dt, label %.lr.ph.i, label %.critedge2.i, !llvm.loop !92

bb.w:                                             ; preds = %bb.p
  %i.du = zext i32 %i.cm to i64
  %i.dv = call i64 @avio_skip(ptr noundef %i.cn, i64 noundef %i.du) #12 ; 0 uses
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge39.i, %.lr.ph.i, %bb.w, %bb.q
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.dx = call i64 @avio_seek(ptr noundef %i.dw, i64 noundef 0, i32 noundef 1) #12
  %i.dy = icmp ult i64 %i.dx, %i.bn
  br i1 %i.dy, label %.lr.ph41.i, label %avi_read_nikon.exit, !llvm.loop !93

bb.x:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, i8 0, i64 64, i1 false)
  %i.dz = and i32 %i.bi, 1
  %i.ea = add i32 %i.dz, %i.bi                    ; 2 uses
  %i.eb = call i32 @llvm.umin.i32(i32 %i.ea, i32 63)
  %i.ec = call i32 @avio_read(ptr noundef %i.u, ptr noundef nonnull %i.l, i32 noundef %i.eb) #12
  %i.ed = sub i32 %i.ea, %i.ec
  %i.ee = zext i32 %i.ed to i64
  %i.ef = call i64 @avio_skip(ptr noundef %i.u, i64 noundef %i.ee) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.eg = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g) #12
  %i.eh = icmp eq i32 %i.eg, 4
  br i1 %i.eh, label %.preheader.preheader.i, label %bb.ak

.preheader.preheader.i:                           ; preds = %bb.x
  %i.ei = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull @months) #12
  %.not.i703 = icmp eq i32 %i.ei, 0
  br i1 %.not.i703, label %bb.y, label %.preheader.1.i

bb.y:                                             ; preds = %.preheader.preheader.i
  %i.ej = load i32, ptr %i.g, align 4, !tbaa !37
  %i.ek = load i32, ptr %i.f, align 4, !tbaa !37
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.ej, i32 noundef 1, i32 noundef %i.ek, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.em = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.y, %.preheader.preheader.i
  %i.en = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 4)) #12
  %.not.1.i = icmp eq i32 %i.en, 0
  br i1 %.not.1.i, label %bb.z, label %.preheader.2.i

bb.z:                                             ; preds = %.preheader.1.i
  %i.eo = load i32, ptr %i.g, align 4, !tbaa !37
  %i.ep = load i32, ptr %i.f, align 4, !tbaa !37
  %i.eq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.eo, i32 noundef 2, i32 noundef %i.ep, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.er = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.z, %.preheader.1.i
  %i.es = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 8)) #12
  %.not.2.i = icmp eq i32 %i.es, 0
  br i1 %.not.2.i, label %bb.aa, label %.preheader.3.i

bb.aa:                                            ; preds = %.preheader.2.i
  %i.et = load i32, ptr %i.g, align 4, !tbaa !37
  %i.eu = load i32, ptr %i.f, align 4, !tbaa !37
  %i.ev = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.et, i32 noundef 3, i32 noundef %i.eu, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.ew = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.aa, %.preheader.2.i
  %i.ex = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 12)) #12
  %.not.3.i = icmp eq i32 %i.ex, 0
  br i1 %.not.3.i, label %bb.ab, label %.preheader.4.i

bb.ab:                                            ; preds = %.preheader.3.i
  %i.ey = load i32, ptr %i.g, align 4, !tbaa !37
  %i.ez = load i32, ptr %i.f, align 4, !tbaa !37
  %i.fa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.ey, i32 noundef 4, i32 noundef %i.ez, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.fb = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.ab, %.preheader.3.i
  %i.fc = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 16)) #12
  %.not.4.i = icmp eq i32 %i.fc, 0
  br i1 %.not.4.i, label %bb.ac, label %.preheader.5.i

bb.ac:                                            ; preds = %.preheader.4.i
  %i.fd = load i32, ptr %i.g, align 4, !tbaa !37
  %i.fe = load i32, ptr %i.f, align 4, !tbaa !37
  %i.ff = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.fd, i32 noundef 5, i32 noundef %i.fe, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.fg = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.ac, %.preheader.4.i
  %i.fh = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 20)) #12
  %.not.5.i = icmp eq i32 %i.fh, 0
  br i1 %.not.5.i, label %bb.ad, label %.preheader.6.i

bb.ad:                                            ; preds = %.preheader.5.i
  %i.fi = load i32, ptr %i.g, align 4, !tbaa !37
  %i.fj = load i32, ptr %i.f, align 4, !tbaa !37
  %i.fk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.fi, i32 noundef 6, i32 noundef %i.fj, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.fl = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.ad, %.preheader.5.i
  %i.fm = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 24)) #12
  %.not.6.i = icmp eq i32 %i.fm, 0
  br i1 %.not.6.i, label %bb.ae, label %.preheader.7.i

bb.ae:                                            ; preds = %.preheader.6.i
  %i.fn = load i32, ptr %i.g, align 4, !tbaa !37
  %i.fo = load i32, ptr %i.f, align 4, !tbaa !37
  %i.fp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.fn, i32 noundef 7, i32 noundef %i.fo, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.fq = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.ae, %.preheader.6.i
  %i.fr = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 28)) #12
  %.not.7.i = icmp eq i32 %i.fr, 0
  br i1 %.not.7.i, label %bb.af, label %.preheader.8.i

bb.af:                                            ; preds = %.preheader.7.i
  %i.fs = load i32, ptr %i.g, align 4, !tbaa !37
  %i.ft = load i32, ptr %i.f, align 4, !tbaa !37
  %i.fu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.fs, i32 noundef 8, i32 noundef %i.ft, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.fv = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.af, %.preheader.7.i
  %i.fw = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 32)) #12
  %.not.8.i = icmp eq i32 %i.fw, 0
  br i1 %.not.8.i, label %bb.ag, label %.preheader.9.i

bb.ag:                                            ; preds = %.preheader.8.i
  %i.fx = load i32, ptr %i.g, align 4, !tbaa !37
  %i.fy = load i32, ptr %i.f, align 4, !tbaa !37
  %i.fz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.fx, i32 noundef 9, i32 noundef %i.fy, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.ga = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.9.i

.preheader.9.i:                                   ; preds = %bb.ag, %.preheader.8.i
  %i.gb = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 36)) #12
  %.not.9.i = icmp eq i32 %i.gb, 0
  br i1 %.not.9.i, label %bb.ah, label %.preheader.10.i

bb.ah:                                            ; preds = %.preheader.9.i
  %i.gc = load i32, ptr %i.g, align 4, !tbaa !37
  %i.gd = load i32, ptr %i.f, align 4, !tbaa !37
  %i.ge = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.gc, i32 noundef 10, i32 noundef %i.gd, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.gf = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.10.i

.preheader.10.i:                                  ; preds = %bb.ah, %.preheader.9.i
  %i.gg = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 40)) #12
  %.not.10.i = icmp eq i32 %i.gg, 0
  br i1 %.not.10.i, label %bb.ai, label %.preheader.11.i

bb.ai:                                            ; preds = %.preheader.10.i
  %i.gh = load i32, ptr %i.g, align 4, !tbaa !37
  %i.gi = load i32, ptr %i.f, align 4, !tbaa !37
  %i.gj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.gh, i32 noundef 11, i32 noundef %i.gi, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.gk = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %i.e, i32 noundef 0) #12 ; 0 uses
  br label %.preheader.11.i

.preheader.11.i:                                  ; preds = %bb.ai, %.preheader.10.i
  %i.gl = call i32 @av_strcasecmp(ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 44)) #12
  %.not.11.i = icmp eq i32 %i.gl, 0
  br i1 %.not.11.i, label %bb.aj, label %avi_metadata_creation_time.exit

bb.aj:                                            ; preds = %.preheader.11.i
  %i.gm = load i32, ptr %i.g, align 4, !tbaa !37
  %i.gn = load i32, ptr %i.f, align 4, !tbaa !37
  %i.go = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 64, ptr noundef nonnull @.str.44, i32 noundef %i.gm, i32 noundef 12, i32 noundef %i.gn, ptr noundef nonnull %i.d) #12 ; 0 uses
  br label %.loopexit.sink.split.i

bb.ak:                                            ; preds = %bb.x
  %i.gp = load i8, ptr %i.bd, align 4, !tbaa !12
  %i.gq = icmp eq i8 %i.gp, 47
  %i.gr = load i8, ptr %i.be, align 1
  %i.gs = icmp eq i8 %i.gr, 47
  %or.cond = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond, label %bb.al, label %avi_metadata_creation_time.exit

bb.al:                                            ; preds = %bb.ak
  store i8 45, ptr %i.be, align 1, !tbaa !12
  store i8 45, ptr %i.bd, align 4, !tbaa !12
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %bb.al, %bb.aj
  %.sink.i = phi ptr [ %i.e, %bb.aj ], [ %i.l, %bb.al ]
  %i.gt = call i32 @av_dict_set(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull %.sink.i, i32 noundef 0) #12 ; 0 uses
  br label %avi_metadata_creation_time.exit

avi_metadata_creation_time.exit:                  ; preds = %.preheader.11.i, %bb.ak, %.loopexit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
end_hunk_0
