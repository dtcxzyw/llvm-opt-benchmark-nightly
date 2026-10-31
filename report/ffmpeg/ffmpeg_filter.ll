Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg_filter?download=true
inline.NumInlined: 139
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@read_frames:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !207
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !421 ; 3 uses
  %i.ba = call i32 @av_buffersink_get_frame_flags(ptr noundef %i.az, ptr noundef %2, i32 noundef 2) #16 ; 4 uses
  switch i32 %i.ba, label %bb.k [
    i32 -541478725, label %bb.i
    i32 -11, label %fg_output_step.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !208
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !51
  %.not.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i, label %bb.j, label %fg_output_step.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = call fastcc i32 @fg_output_frame(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, ptr noundef null) ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %fg_output_step.exit.thread, label %fg_output_step.exit

bb.k:                                             ; preds = %bb.h
  %i.bi = icmp slt i32 %i.ba, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.bj = call i32 @av_strerror(i32 noundef %i.ba, ptr noundef nonnull %i.a, i64 noundef 64) #16 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 24, ptr noundef nonnull @.str.144, ptr noundef nonnull %i.a) #16
  br label %fg_output_step.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.aa, align 8, !tbaa !135
  %i.bl = load i32, ptr %i.am, align 8, !tbaa !208
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !51
  %.not76.i = icmp eq i8 %i.bo, 0
  br i1 %.not76.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @av_frame_unref(ptr noundef %2) #16
  br label %fg_output_step.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = call i64 @av_buffersink_get_time_base(ptr noundef %i.az) #16 ; 2 uses
  store i64 %i.bp, ptr %i.ab, align 8, !tbaa !38
  %i.bq = load i32, ptr @debug_ts, align 4, !tbaa !38
  %.not77.i = icmp eq i32 %i.bq, 0
  br i1 %.not77.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !166 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -9223372036854775808
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.137, i64 6, i1 false)
  br label %av_ts_make_string.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.138, i64 noundef %i.br) #16 ; 0 uses
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !166
  %.val.pre.i = load i64, ptr %i.ab, align 8
  br label %av_ts_make_string.exit.i

av_ts_make_string.exit.i:                         ; preds = %bb.r, %bb.q
  %.val.i = phi i64 [ %i.bp, %bb.q ], [ %.val.pre.i, %bb.r ]
  %i.bu = phi i64 [ -9223372036854775808, %bb.q ], [ %.pre.i, %bb.r ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.bv = call ptr @av_ts_make_time_string2(ptr noundef nonnull %i.c, i64 noundef %i.bu, i64 %.val.i) #16
  %i.bw = load i32, ptr %i.ab, align 8, !tbaa !422
  %i.bx = load i32, ptr %i.ad, align 4, !tbaa !423
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 32, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.b, ptr noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bx) #16
  br label %bb.s

bb.s:                                             ; preds = %av_ts_make_string.exit.i, %bb.o
  %i.by = load i32, ptr %i.an, align 4, !tbaa !205
  %.not78.i = icmp eq i32 %i.by, 0
  br i1 %.not78.i, label %bb.t, label %bb.aq

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bz = call ptr @frame_data_c(ptr noundef nonnull %2) #16 ; 2 uses
  %i.ca = load i32, ptr %i.ao, align 4, !tbaa !424 ; 2 uses
  switch i32 %i.ca, label %.thread.i.i [
    i32 -1, label %bb.u
    i32 0, label %.thread80.i.i
    i32 -2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !427 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 1
  br i1 %i.cd, label %bb.ap, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 28 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !428
  %i.cg = icmp slt i32 %i.cf, 1
  br i1 %i.cg, label %bb.ap, label %.thread.i.i

bb.w:                                             ; preds = %bb.t
  %.sroa.018.0.copyload21.i.i = load i32, ptr %i.ab, align 8, !tbaa !38
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t, %bb.w, %bb.v
  %.sroa.13.0.in.i.i = phi ptr [ %i.ce, %bb.v ], [ %i.ad, %bb.w ], [ %.sroa.13.0..sroa_idx27.i.i, %bb.t ]
  %.sroa.018.0.i.i = phi i32 [ %i.cc, %bb.v ], [ %.sroa.018.0.copyload21.i.i, %bb.w ], [ %i.ca, %bb.t ] ; 3 uses
  %.sroa.13.0.i.i = load i32, ptr %.sroa.13.0.in.i.i, align 4, !tbaa !38 ; 2 uses
  %i.ch = load i32, ptr %i.ap, align 8, !tbaa !30
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.x, label %bb.y

.thread80.i.i:                                    ; preds = %bb.t
  %i.cj = load i32, ptr %i.ap, align 8, !tbaa !30
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %.thread87.i.i, label %bb.y

bb.x:                                             ; preds = %.thread.i.i
  %.not76.i.i = icmp eq i32 %.sroa.018.0.i.i, 0
  br i1 %.not76.i.i, label %.thread87.i.i, label %choose_out_timebase.exit.i

.thread87.i.i:                                    ; preds = %bb.x, %.thread80.i.i
  %i.cl = load i32, ptr %i.ae, align 4, !tbaa !157
  br label %choose_out_timebase.exit.i

bb.y:                                             ; preds = %.thread80.i.i, %.thread.i.i
  %.sroa.018.086.i.i = phi i32 [ 0, %.thread80.i.i ], [ %.sroa.018.0.i.i, %.thread.i.i ] ; 2 uses
  %.sroa.13.083.i.i = phi i32 [ 0, %.thread80.i.i ], [ %.sroa.13.0.i.i, %.thread.i.i ] ; 2 uses
  %i.cm = load i64, ptr %i.aq, align 4, !tbaa !38 ; 3 uses
  store i64 %i.cm, ptr %3, align 8, !tbaa !38
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.cn, 0
  %i.co = lshr i64 %i.cm, 32                      ; 2 uses
  br i1 %.not.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cp = load ptr, ptr %i.al, align 8, !tbaa !199
  %i.cq = call i64 @av_buffersink_get_frame_rate(ptr noundef %i.cp) #16 ; 3 uses
  %.sroa.013.0.extract.trunc.i.i = trunc i64 %i.cq to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.cq, 32 ; 2 uses
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  %i.cr = icmp sgt i32 %.sroa.013.0.extract.trunc.i.i, 0
  %i.cs = icmp sgt i32 %.sroa.5.0.extract.trunc.i.i, 0
  %or.cond.i.i = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i64 %i.cq, ptr %3, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.ct = phi i64 [ %i.co, %bb.z ], [ %.sroa.5.0.extract.shift.i.i, %bb.aa ], [ %i.co, %bb.y ] ; 2 uses
  %i.cu = phi i32 [ 0, %bb.z ], [ %.sroa.013.0.extract.trunc.i.i, %bb.aa ], [ %i.cn, %bb.y ] ; 3 uses
  %i.cv = load i32, ptr %i.ar, align 8, !tbaa !209
  switch i32 %i.cv, label %bb.ah [
    i32 1, label %bb.ac
    i32 3, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %.not71.i.i = icmp eq i32 %i.cu, 0
  %.pre110 = load i32, ptr %i.as, align 4, !tbaa !429 ; 2 uses
  br i1 %.not71.i.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %.not72.i.i = icmp eq i32 %.pre110, 0
  br i1 %.not72.i.i, label %bb.ae, label %.thread127

bb.ae:                                            ; preds = %bb.ad
  store i32 25, ptr %3, align 8, !tbaa !38
  store i32 1, ptr %.sroa.2.0..sroa_idx.i.i, align 4, !tbaa !38
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 24, ptr noundef nonnull @.str.148) #16
  %.pre109 = load i32, ptr %i.as, align 4, !tbaa !429
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.cw = phi i32 [ %.pre109, %bb.ae ], [ %.pre110, %bb.ac ]
  %i.cx = phi i64 [ 1, %bb.ae ], [ %i.ct, %bb.ac ]
  %i.cy = phi i32 [ 25, %bb.ae ], [ %i.cu, %bb.ac ]
  %.not73.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not73.i.i, label %bb.ah, label %.thread127

.thread127:                                       ; preds = %bb.ad, %bb.af
  %i.cz = load i64, ptr %3, align 8               ; 2 uses
  %i.da = load i64, ptr %i.as, align 4            ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.cz to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %i.cz, 32 ; 3 uses
  %.sroa.2.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i to i32
  %.sroa.0.0.extract.trunc.i77.i.i = trunc i64 %i.da to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i78.i.i = lshr i64 %i.da, 32 ; 2 uses
  %.sroa.2.0.extract.trunc.i79.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i78.i.i to i32
  %i.db = insertelement <2 x i32> poison, i32 %.sroa.0.0.extract.trunc.i.i.i, i64 0
  %i.dc = insertelement <2 x i32> %i.db, i32 %.sroa.0.0.extract.trunc.i77.i.i, i64 1
  %i.dd = sitofp <2 x i32> %i.dc to <2 x double>
  %i.de = insertelement <2 x i32> poison, i32 %.sroa.2.0.extract.trunc.i.i.i, i64 0
  %i.df = insertelement <2 x i32> %i.de, i32 %.sroa.2.0.extract.trunc.i79.i.i, i64 1
  %i.dg = sitofp <2 x i32> %i.df to <2 x double>
  %i.dh = fdiv nsz <2 x double> %i.dd, %i.dg      ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  %i.dk = fcmp nsz ule double %i.di, %i.dj
  %i.dl = icmp ne i64 %.sroa.2.0.extract.shift.i.i.i, 0
  %or.cond5.i.i = and i1 %i.dl, %i.dk
  br i1 %or.cond5.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread127
  store i64 %i.da, ptr %3, align 8, !tbaa !38
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread127, %bb.af, %bb.ab
  %i.dm = phi i64 [ %i.ct, %bb.ab ], [ %i.cx, %bb.af ], [ %.sroa.2.0.extract.shift.i78.i.i, %bb.ag ], [ %.sroa.2.0.extract.shift.i.i.i, %.thread127 ]
  %i.dn = phi i32 [ %i.cu, %bb.ab ], [ %i.cy, %bb.af ], [ %.sroa.0.0.extract.trunc.i77.i.i, %bb.ag ], [ %.sroa.0.0.extract.trunc.i.i.i, %.thread127 ] ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.dp = load ptr, ptr %i.at, align 8, !tbaa !430 ; 2 uses
  %.not74.i.i = icmp eq ptr %i.dp, null
  br i1 %.not74.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = load i64, ptr %3, align 8
  %i.dr = call i32 @av_find_nearest_q_idx(i64 %i.dq, ptr noundef nonnull %i.dp) #16
  %i.ds = load ptr, ptr %i.at, align 8, !tbaa !430
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 4, !tbaa !38 ; 3 uses
  store i64 %i.dv, ptr %3, align 8, !tbaa !38
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = lshr i64 %i.dv, 32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dy = phi i64 [ %i.dx, %bb.aj ], [ %i.dm, %bb.ai ]
  %i.dz = phi i32 [ %i.dw, %bb.aj ], [ %i.dn, %bb.ai ]
  %i.ea = load i32, ptr %i.au, align 8, !tbaa !431 ; 2 uses
  %.not75.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not75.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = sext i32 %i.dz to i64
  %sext.i.i = shl nuw i64 %i.dy, 32
  %i.ec = ashr exact i64 %sext.i.i, 32
  %i.ed = sext i32 %i.ea to i64
  %i.ee = call i32 @av_reduce(ptr noundef nonnull %3, ptr noundef nonnull %.sroa.2.0..sroa_idx.i.i, i64 noundef %i.eb, i64 noundef %i.ec, i64 noundef %i.ed) #16 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ah
  %i.ef = icmp sgt i32 %.sroa.018.086.i.i, 0
  %i.eg = icmp sgt i32 %.sroa.13.083.i.i, 0
  %or.cond8.i.i = select i1 %i.ef, i1 %i.eg, i1 false ; 2 uses
  %i.eh = load i64, ptr %3, align 8               ; 3 uses
  %.sroa.01.0.insert.insert.i.i.i = call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 32) ; 2 uses
  %.sroa.018.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.insert.insert.i.i.i to i32
  %.sroa.13.0.extract.shift.i.i = lshr i64 %.sroa.01.0.insert.insert.i.i.i, 32
  %.sroa.13.0.extract.trunc.i.i = trunc nuw i64 %.sroa.13.0.extract.shift.i.i to i32
  %.sroa.13.1.i.i = select i1 %or.cond8.i.i, i32 %.sroa.13.083.i.i, i32 %.sroa.13.0.extract.trunc.i.i ; 2 uses
  %.sroa.018.1.i.i = select i1 %or.cond8.i.i, i32 %.sroa.018.086.i.i, i32 %.sroa.018.0.extract.trunc.i.i ; 2 uses
  %i.ei = icmp sgt i32 %.sroa.018.1.i.i, 0
  %i.ej = icmp sgt i32 %.sroa.13.1.i.i, 0
  %or.cond11.i.i = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond11.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.018.0.copyload23.i.i = load i32, ptr %i.ab, align 8, !tbaa !38
  %.sroa.13.0.copyload30.i.i = load i32, ptr %i.ad, align 4, !tbaa !38
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.13.2.i.i = phi i32 [ %.sroa.13.1.i.i, %bb.am ], [ %.sroa.13.0.copyload30.i.i, %bb.an ]
  %.sroa.018.2.i.i = phi i32 [ %.sroa.018.1.i.i, %bb.am ], [ %.sroa.018.0.copyload23.i.i, %bb.an ]
  store i64 %i.eh, ptr %i.aq, align 4, !tbaa !38
  br label %choose_out_timebase.exit.i

choose_out_timebase.exit.i:                       ; preds = %bb.ao, %.thread87.i.i, %bb.x
  %.sroa.13.3.i.i = phi i32 [ %.sroa.13.2.i.i, %bb.ao ], [ %i.cl, %.thread87.i.i ], [ %.sroa.13.0.i.i, %bb.x ]
  %.sroa.018.3.i.i = phi i32 [ %.sroa.018.2.i.i, %bb.ao ], [ 1, %.thread87.i.i ], [ %.sroa.018.0.i.i, %bb.x ]
  store i32 %.sroa.018.3.i.i, ptr %i.av, align 4, !tbaa !38
  store i32 %.sroa.13.3.i.i, ptr %.sroa.13.0..sroa_idx31.i.i, align 8, !tbaa !38
  store i32 1, ptr %i.an, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.aq

bb.ap:                                            ; preds = %bb.v, %bb.u
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 16, ptr noundef nonnull @.str.147) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.aj, i32 noundef 16, ptr noundef nonnull @.str.146) #16
  call void @av_frame_unref(ptr noundef nonnull %2) #16
  br label %fg_output_step.exit.thread

bb.aq:                                            ; preds = %choose_out_timebase.exit.i, %bb.s
  %i.ek = call ptr @frame_data(ptr noundef nonnull %2) #16 ; 6 uses
  %.not79.i = icmp eq ptr %i.ek, null
  br i1 %.not79.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @av_frame_unref(ptr noundef nonnull %2) #16
  br label %fg_output_step.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 112 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 120 ; 2 uses
  call void @av_frame_side_data_free(ptr noundef nonnull %i.el, ptr noundef nonnull %i.em) #16
  %i.en = load i32, ptr %i.af, align 4, !tbaa !210
  %.not80.i = icmp eq i32 %i.en, 0
  br i1 %.not80.i, label %bb.at, label %clone_side_data.exit.thread.i

bb.at:                                            ; preds = %bb.as
  %i.eo = load ptr, ptr %i.aw, align 8, !tbaa !120
  %i.ep = load i32, ptr %i.ax, align 8, !tbaa !121 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.preheader.i.i, label %clone_side_data.exit.thread.i

.lr.ph.preheader.i.i:                             ; preds = %bb.at
  %wide.trip.count.i.i = zext nneg i32 %i.ep to i64
  br label %.lr.ph.i.i

bb.au:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %clone_side_data.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.au, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.au ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !169
  %i.et = call i32 @av_frame_side_data_clone(ptr noundef nonnull %i.el, ptr noundef nonnull %i.em, ptr noundef %i.es, i32 noundef 0) #16 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, -1
  br i1 %i.eu, label %bb.au, label %clone_side_data.exit.i

clone_side_data.exit.i:                           ; preds = %.lr.ph.i.i
  call void @av_frame_unref(ptr noundef nonnull %2) #16
  br label %fg_output_step.exit.thread

clone_side_data.exit.thread.i:                    ; preds = %bb.au, %bb.at, %bb.as
  %i.ev = call i64 @av_gettime_relative() #16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !39
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 1116
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !204
  %.not81.i = icmp eq i32 %i.ey, 0
  br i1 %.not81.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %clone_side_data.exit.thread.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i32 0, ptr %i.ez, align 8, !tbaa !432
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %clone_side_data.exit.thread.i
  %i.fa = load i32, ptr %i.ap, align 8, !tbaa !137
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.fc = load i64, ptr %i.ag, align 8, !tbaa !174
  %.not82.i = icmp eq i64 %i.fc, 0
  br i1 %.not82.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fd = call i64 @av_buffersink_get_frame_rate(ptr noundef %i.az) #16 ; 4 uses
  %.sroa.05.0.extract.trunc.i = trunc i64 %i.fd to i32
  %.sroa.5.0.extract.shift.i = lshr i64 %i.fd, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %i.fe = icmp sgt i32 %.sroa.05.0.extract.trunc.i, 0
  %i.ff = icmp sgt i32 %.sroa.5.0.extract.trunc.i, 0
  %or.cond4.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond4.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.sroa.01.0.insert.insert.i.i = call i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 32)
  %i.fg = load i64, ptr %i.ab, align 8
  %i.fh = call i64 @av_rescale_q(i64 noundef 1, i64 %.sroa.01.0.insert.insert.i.i, i64 %i.fg) #20
  store i64 %i.fh, ptr %i.ag, align 8, !tbaa !174
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.fj = load i64, ptr %i.aq, align 4, !tbaa !38
  store i64 %i.fj, ptr %i.fi, align 8, !tbaa !38
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %i.fk = call fastcc i32 @fg_output_frame(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @av_frame_unref(ptr noundef nonnull %2) #16
  %..i = call i32 @llvm.smin.i32(i32 %i.fk, i32 0)
  br label %fg_output_step.exit

fg_output_step.exit.thread:                       ; preds = %bb.j, %bb.l, %clone_side_data.exit.i, %bb.ar, %bb.ap
  %.0.i.ph = phi i32 [ %i.ba, %bb.l ], [ -22, %bb.ap ], [ -12, %bb.ar ], [ %i.et, %clone_side_data.exit.i ], [ %i.bg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

fg_output_step.exit:                              ; preds = %bb.j, %bb.h, %bb.i, %bb.n, %bb.bb
  %.0.i = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %bb.n ], [ %..i, %bb.bb ], [ 1, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@sub2video_update:bb.a

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.124) #16
  br label %sub2video_copy_rect.exit

bb.k:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.bt, align 8, !tbaa !454 ; 4 uses
  %i.bx = icmp slt i32 %i.bw, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %.pre50.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !455 ; 4 uses
  %i.by = add nsw i32 %.pre50.i, %i.bw
  %i.bz = icmp sgt i32 %i.by, %i.bp
  %or.cond.i36 = select i1 %i.bx, i1 true, i1 %i.bz
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !456 ; 4 uses
  %i.ca = icmp slt i32 %.pre, 0
  %or.cond = select i1 %or.cond.i36, i1 true, i1 %i.ca
  br i1 %or.cond, label %._crit_edge49.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !457 ; 3 uses
  %i.cd = add nsw i32 %i.cc, %.pre
  %i.ce = icmp sgt i32 %i.cd, %i.bq
  br i1 %i.ce, label %._crit_edge49.i, label %bb.m

._crit_edge49.i:                                  ; preds = %bb.k, %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !457
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.125, i32 noundef %i.bw, i32 noundef %.pre, i32 noundef %.pre50.i, i32 noundef %i.cg, i32 noundef %i.bp, i32 noundef %i.bq) #16
  br label %sub2video_copy_rect.exit

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87
  %i.cj = icmp sgt i32 %i.cc, 0
  br i1 %i.cj, label %.preheader.lr.ph.i, label %sub2video_copy_rect.exit

.preheader.lr.ph.i:                               ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.cl = icmp sgt i32 %.pre50.i, 0
  br i1 %i.cl, label %.preheader.preheader.i, label %sub2video_copy_rect.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87
  %i.co = mul nsw i32 %.pre, %i.az
  %i.cp = shl nuw nsw i32 %i.bw, 2
  %i.cq = add nsw i32 %i.co, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.ay, i64 %i.cr
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.ct = phi i32 [ %i.df, %._crit_edge.i ], [ %i.cc, %.preheader.preheader.i ]
  %i.cu = phi i32 [ %i.dg, %._crit_edge.i ], [ %.pre50.i, %.preheader.preheader.i ] ; 2 uses
  %.047.i = phi i32 [ %i.dl, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.03746.i = phi ptr [ %i.dk, %._crit_edge.i ], [ %i.cn, %.preheader.preheader.i ] ; 2 uses
  %.03945.i = phi ptr [ %i.dh, %._crit_edge.i ], [ %i.cs, %.preheader.preheader.i ] ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.03544.i = phi i32 [ %i.dc, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.03643.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %.03746.i, %.preheader.i ] ; 2 uses
  %.03842.i = phi ptr [ %i.db, %.lr.ph.i ], [ %.03945.i, %.preheader.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1
  %i.cx = load i8, ptr %.03643.i, align 1, !tbaa !51
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !38
  %i.db = getelementptr inbounds nuw i8, ptr %.03842.i, i64 4
  store i32 %i.da, ptr %.03842.i, align 4, !tbaa !38
  %i.dc = add nuw nsw i32 %.03544.i, 1            ; 2 uses
  %i.dd = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !455 ; 2 uses
  %i.de = icmp slt i32 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !439

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.cb, align 4, !tbaa !457
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.df = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ct, %.preheader.i ] ; 2 uses
  %i.dg = phi i32 [ %i.dd, %._crit_edge.loopexit.i ], [ %i.cu, %.preheader.i ]
  %i.dh = getelementptr inbounds i8, ptr %.03945.i, i64 %i.bc
  %i.di = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %.03746.i, i64 %i.dj
  %i.dl = add nuw nsw i32 %.047.i, 1              ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.df
  br i1 %i.dm, label %.preheader.i, label %sub2video_copy_rect.exit, !llvm.loop !440

sub2video_copy_rect.exit:                         ; preds = %._crit_edge.i, %bb.j, %._crit_edge49.i, %bb.m, %.preheader.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !441

bb.n:                                             ; preds = %sub2video_push_ref.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #12

declare i32 @av_buffersrc_add_frame_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_get_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log_once(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @sch_filter_choke_inputs(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @frame_data(ptr noundef) local_unnamed_addr #2

declare i64 @av_gettime_relative() local_unnamed_addr #2

declare i32 @av_buffer_replace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_side_data_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q_rnd(i64 noundef, i64, i64, i32 noundef) local_unnamed_addr #12

declare i32 @av_buffersrc_close(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @sch_filter_receive_finish(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_buffersink_get_frame_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_ts_make_time_string2(ptr noundef, i64 noundef, i64) local_unnamed_addr #2

declare ptr @frame_data_c(ptr noundef) local_unnamed_addr #2

declare i32 @av_find_nearest_q_idx(i64, ptr noundef) local_unnamed_addr #2

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_buffersrc_get_nb_failed_requests(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @video_sync_process(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 7 uses
  %i.b = alloca [32 x i8], align 1                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load i64, ptr %i.i, align 8, !tbaa !39
  %..i = tail call i64 @llvm.smax.i64(i64 %i.f, i64 %i.h)
  %.20.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.h)
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %..i)
  %i.l = tail call noundef i64 @llvm.smax.i64(i64 %i.k, i64 %.20.i) ; 2 uses
  store i64 %i.l, ptr %2, align 8, !tbaa !39
  store i64 %i.l, ptr %3, align 8, !tbaa !39
  %i.m = load i64, ptr %2, align 8, !tbaa !39
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.aj

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !459
  %.not126 = icmp eq i32 %i.o, 0
  br i1 %.not126, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = atomicrmw add ptr %i.p, i64 1 seq_cst, align 8 ; 0 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !459
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.n, align 8, !tbaa !459
  br label %bb.aj

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !174
  %i.v = sitofp nsz i64 %i.u to double
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.z = load i64, ptr %i.y, align 4              ; 7 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.x to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.x, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.sroa.0.0.extract.trunc.i136 = trunc i64 %i.z to i32 ; 2 uses
  %.sroa.2.0.extract.shift.i137 = lshr i64 %i.z, 32
  %.sroa.2.0.extract.trunc.i138 = trunc nuw i64 %.sroa.2.0.extract.shift.i137 to i32 ; 4 uses
  %i.aa = insertelement <2 x i32> poison, i32 %.sroa.0.0.extract.trunc.i, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %.sroa.0.0.extract.trunc.i136, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>
  %i.ad = insertelement <2 x i32> poison, i32 %.sroa.2.0.extract.trunc.i, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %.sroa.2.0.extract.trunc.i138, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv nsz <2 x double> %i.ac, %i.af      ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fmul nsz double %i.ah, %i.v
  %i.aj = extractelement <2 x double> %i.ag, i64 1
  %i.ak = fdiv nsz double %i.ai, %i.aj            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !166 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %i.ar, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = tail call i32 @av_log2(i32 noundef %.sroa.2.0.extract.trunc.i138) #20 ; 2 uses
  %i.at = sub nsw i32 29, %i.as
  %i.au = icmp sgt i32 %i.as, 29
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.at, i32 16)
  %.0.i.i = select i1 %i.au, i32 0, i32 %..i.i    ; 2 uses
  %i.av = shl i32 %.sroa.2.0.extract.trunc.i138, %.0.i.i
  %.sroa.5.0.insert.ext.i = zext i32 %i.av to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.06.0.insert.ext.i = and i64 %i.z, 4294967295
  %.sroa.06.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.06.0.insert.ext.i ; 2 uses
  %i.aw = tail call i64 @av_rescale_q(i64 noundef %i.aq, i64 %i.x, i64 %.sroa.06.0.insert.insert.i) #20
  %i.ax = tail call i64 @av_rescale_q(i64 noundef %i.ao, i64 4294967296000001, i64 %.sroa.06.0.insert.insert.i) #20
  %i.ay = sub nsw i64 %i.aw, %i.ax
  %i.az = sitofp nsz i64 %i.ay to double
  %i.ba = shl nuw nsw i32 1, %.0.i.i
  %i.bb = uitofp nneg i32 %i.ba to double
  %i.bc = fdiv nsz double %i.az, %i.bb            ; 5 uses
  %i.bd = tail call i64 @llvm.llrint.i64.f64(double %i.bc)
  %i.be = sitofp nsz i64 %i.bd to double
  %i.bf = fcmp nsz une double %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = fcmp nsz ogt double %i.bc, 0.000000e+00
  %i.bh = select i1 %i.bg, double f0x3EE0000000000000, double f0xBEE0000000000000
  %i.bi = fadd nsz double %i.bc, %i.bh
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi nsz double [ %i.bi, %bb.g ], [ %i.bc, %bb.f ] ; 3 uses
  %i.bj = tail call i64 @av_rescale_q(i64 noundef %i.aq, i64 %i.x, i64 %i.z) #20
  %i.bk = tail call i64 @av_rescale_q(i64 noundef %i.ao, i64 4294967296000001, i64 %i.z) #20
  %i.bl = sub nsw i64 %i.bj, %i.bk                ; 3 uses
  store i64 %i.bl, ptr %i.ap, align 8, !tbaa !166
  store i64 %i.z, ptr %i.w, align 8, !tbaa !38
  %i.bm = load i32, ptr @debug_ts, align 4, !tbaa !38
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %adjust_frame_pts_to_encoder_tb.exit, label %bb.i

.thread.i:                                        ; preds = %bb.e
  %i.bn = load i32, ptr @debug_ts, align 4, !tbaa !38
  %.not53.i = icmp eq i32 %i.bn, 0
  br i1 %.not53.i, label %adjust_frame_pts_to_encoder_tb.exit, label %.thread56.i

.thread56.i:                                      ; preds = %.thread.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.bo, i8 0, i64 26, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.bp = icmp eq i64 %i.bl, -9223372036854775808
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread56.i
  %.15459.i = phi double [ f0xC3E0000000000000, %.thread56.i ], [ %.0.i, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.137, i64 6, i1 false)
  br label %av_ts_make_string.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.138, i64 noundef %i.bl) #16 ; 0 uses
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !166
  br label %av_ts_make_string.exit.i

av_ts_make_string.exit.i:                         ; preds = %bb.k, %bb.j
  %.15458.i = phi double [ %.15459.i, %bb.j ], [ %.0.i, %bb.k ] ; 2 uses
  %i.br = phi i64 [ -9223372036854775808, %bb.j ], [ %.pre.i, %bb.k ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.bs = call ptr @av_ts_make_time_string2(ptr noundef nonnull %i.b, i64 noundef %i.br, i64 %i.z) #16
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.am, i32 noundef 32, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.a, ptr noundef %i.bs, double noundef %.15458.i, i32 noundef %.sroa.0.0.extract.trunc.i136, i32 noundef %.sroa.2.0.extract.trunc.i138) #16
  br label %adjust_frame_pts_to_encoder_tb.exit

adjust_frame_pts_to_encoder_tb.exit:              ; preds = %bb.h, %.thread.i, %av_ts_make_string.exit.i
  %.155.i = phi double [ f0xC3E0000000000000, %.thread.i ], [ %.15458.i, %av_ts_make_string.exit.i ], [ %.0.i, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 5 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !211
  %i.bv = sitofp nsz i64 %i.bu to double
  %i.bw = fsub nsz double %.155.i, %i.bv          ; 6 uses
  %i.bx = fadd nsz double %i.ak, %i.bw            ; 6 uses
  store i64 0, ptr %3, align 8, !tbaa !39
  store i64 1, ptr %2, align 8, !tbaa !39
  %i.by = fcmp nsz olt double %i.bw, 0.000000e+00
  %i.bz = fcmp nsz ogt double %i.bx, 0.000000e+00
  %or.cond = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.l, label %bb.q

bb.l:                                             ; preds = %adjust_frame_pts_to_encoder_tb.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !209
  %.not127 = icmp eq i32 %i.cb, 0
  br i1 %.not127, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = fcmp nsz olt double %i.bw, -6.000000e-01
  %i.cd = fneg nsz double %i.bw                   ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.150, double noundef %i.cd) #16
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.151, double noundef %i.cd) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ce = load i64, ptr %i.bt, align 8, !tbaa !211
  %i.cf = sitofp nsz i64 %i.ce to double
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %adjust_frame_pts_to_encoder_tb.exit
  %.0118 = phi nsz double [ %i.bx, %bb.p ], [ %i.ak, %bb.l ], [ %i.ak, %adjust_frame_pts_to_encoder_tb.exit ] ; 3 uses
  %.0117 = phi nsz double [ %i.cf, %bb.p ], [ %.155.i, %bb.l ], [ %.155.i, %adjust_frame_pts_to_encoder_tb.exit ] ; 3 uses
  %.0115 = phi nsz double [ 0.000000e+00, %bb.p ], [ %i.bw, %bb.l ], [ %i.bw, %adjust_frame_pts_to_encoder_tb.exit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !209
  switch i32 %i.ch, label %bb.ai [
    i32 3, label %bb.r
    i32 1, label %bb.t
    i32 2, label %bb.ac
    i32 0, label %bb.ah
  ]

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !460
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = fcmp nsz oge double %.0115, 5.000000e-01
  %or.cond3 = and i1 %i.cl, %i.ck
  br i1 %or.cond3, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cm = fptrunc nsz double %.0115 to float
  %i.cn = call i64 @llvm.lrint.i64.f32(float %i.cm)
  %i.co = trunc i64 %i.cn to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.152, i32 noundef %i.co) #16
  %i.cp = call i64 @llvm.llrint.i64.f64(double %.0117)
  store i64 %i.cp, ptr %i.bt, align 8, !tbaa !211
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0116 = phi nsz double [ %.0118, %bb.s ], [ %i.bx, %bb.r ], [ %i.bx, %bb.q ] ; 4 uses
  %.1 = phi nsz double [ 0.000000e+00, %bb.s ], [ %.0115, %bb.r ], [ %.0115, %bb.q ] ; 2 uses
  %i.cq = load float, ptr @frame_drop_threshold, align 4, !tbaa !462 ; 2 uses
  %i.cr = fcmp nsz une float %i.cq, 0.000000e+00
  %i.cs = fpext nsz float %i.cq to double
  %i.ct = fcmp nsz olt double %.0116, %i.cs
  %or.cond135 = select i1 %i.cr, i1 %i.ct, i1 false
  br i1 %or.cond135, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !460
  %.not128 = icmp eq i64 %i.cv, 0
  br i1 %.not128, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %2, align 8, !tbaa !39
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.cw = fcmp nsz olt double %.0116, -1.100000e+00
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %2, align 8, !tbaa !39
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cx = fcmp nsz ogt double %.0116, 1.100000e+00
  br i1 %i.cx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.cy = fptrunc nsz double %.0116 to float
  %i.cz = call i64 @llvm.llrint.i64.f32(float %i.cy)
  store i64 %i.cz, ptr %2, align 8, !tbaa !39
  %i.da = fcmp nsz ogt double %.1, 1.100000e+00
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = fadd nsz double %.1, -6.000000e-01
end_hunk_1
