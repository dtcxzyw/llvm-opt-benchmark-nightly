Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_speechnorm?download=true
inline.NumInlined: 29
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uninit:bb.a
  %i.p = load i16, ptr %i.e, align 2, !tbaa !23   ; 2 uses
  %.not.i = icmp eq i16 %i.p, 0
  br i1 %.not.i, label %ff_bufqueue_discard_all.exit, label %ff_bufqueue_get.exit.i, !llvm.loop !84

ff_bufqueue_discard_all.exit:                     ; preds = %ff_bufqueue_get.exit.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.q) #11
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  call void @av_freep(ptr noundef nonnull %i.r) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33
  %i.e = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #11 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 4, !tbaa !33
  %.not = icmp eq i32 %i.d, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.o = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #11 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(4) @.str.27) #12
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i32 @av_channel_layout_from_string(ptr noundef nonnull %i.m, ptr noundef nonnull %i.r) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #11 ; 2 uses
  %.not43 = icmp eq i32 %i.u, 0
  br i1 %.not43, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ff_inlink_set_status(ptr noundef nonnull %i.g, i32 noundef %i.u) #11
  br label %bb.z

.critedge:                                        ; preds = %bb.d
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !20   ; 11 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 4 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 8330    ; 7 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !90 ; 2 uses
  %.not.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i, label %bb.l, label %ff_bufqueue_peek.exit.i

ff_bufqueue_peek.exit.i:                          ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8328 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !24 ; 3 uses
  %i.af = and i16 %i.ae, 1023
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %.not54.i = icmp eq ptr %i.ai, null
  br i1 %.not54.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %ff_bufqueue_peek.exit.i
  %i.aj = getelementptr i8, ptr %i.v, i64 104
  %.val59.val.i = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.ak = tail call fastcc i32 @available_samples(ptr %i.z, ptr %.val59.val.i)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.am = load i32, ptr %i.al, align 8, !tbaa !91
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %ff_bufqueue_get.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 124
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %.not55.i = icmp eq i32 %i.ap, 0
  br i1 %.not55.i, label %.thread.i, label %ff_bufqueue_get.exit.i

ff_bufqueue_get.exit.i:                           ; preds = %bb.g, %bb.f
  %i.aq = zext i16 %i.ae to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26 ; 9 uses
  %i.at = add i16 %i.ac, -1
  store i16 %i.at, ptr %i.ab, align 2, !tbaa !23
  store ptr null, ptr %i.ar, align 8, !tbaa !26
  %i.au = add i16 %i.ae, 1
  %i.av = and i16 %i.au, 1023
  store i16 %i.av, ptr %i.ad, align 8, !tbaa !24
  store ptr %i.as, ptr %i.a, align 8, !tbaa !26
  %i.aw = tail call i32 @av_frame_is_writable(ptr noundef %i.as) #11
  %.not56.i = icmp eq i32 %i.aw, 0
  br i1 %.not56.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %ff_bufqueue_get.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !91
  %i.az = tail call ptr @ff_get_audio_buffer(ptr noundef %i.x, i32 noundef %i.ay) #11 ; 3 uses
  %.not57.i = icmp eq ptr %i.az, null
  br i1 %.not57.i, label %filter_frame.exit.thread57, label %bb.i

filter_frame.exit.thread57:                       ; preds = %bb.h
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.az, ptr noundef nonnull %i.as) #11 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ff_bufqueue_get.exit.i
  %.050.i = phi ptr [ %i.az, %bb.i ], [ %i.as, %ff_bufqueue_get.exit.i ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8344
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 112 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !91
  tail call void %i.bg(ptr noundef nonnull %0, ptr noundef %i.as, ptr noundef %.050.i, i32 noundef %i.bi) #11, !inline_history !85
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !92
  %i.bl = load i32, ptr %i.bh, align 8, !tbaa !91
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !52
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bo to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = tail call i64 @av_rescale_q(i64 noundef %i.bm, i64 %.sroa.0.0.insert.insert.i.i, i64 %i.bq) #13
  %i.bs = add nsw i64 %i.br, %i.bk
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !93
  %.not58.i = icmp eq ptr %.050.i, %i.as
  br i1 %.not58.i, label %filter_frame.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  br label %filter_frame.exit

.thread.i:                                        ; preds = %bb.g, %ff_bufqueue_peek.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %.thread.i, %.critedge
  %i.bu = tail call i64 @ff_inlink_queued_frames(ptr noundef %i.z) #11
  %.not83.i = icmp eq i64 %i.bu, 0
  br i1 %.not83.i, label %filter_frame.exit.thread, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 8328 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 76 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 8336
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph82.i
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next88.i, %._crit_edge.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bz = call i32 @ff_inlink_consume_frame(ptr noundef %i.z, ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %filter_frame.exit.thread55, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp eq i32 %i.bz, 0
  br i1 %i.cb, label %.thread74.i, label %bb.o

.thread74.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %filter_frame.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !26
  %.val.i.i = load i16, ptr %i.ab, align 2, !tbaa !23 ; 2 uses
  %.not.i61.i = icmp eq i16 %.val.i.i, 1024
  br i1 %.not.i61.i, label %bb.p, label %ff_bufqueue_add.exit.i

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.41) #11
  %i.cd = load i16, ptr %i.bv, align 8, !tbaa !24
  %i.ce = zext i16 %i.cd to i64
  %i.cf = load i16, ptr %i.ab, align 2, !tbaa !23
  %i.cg = add i16 %i.cf, -1                       ; 2 uses
  store i16 %i.cg, ptr %i.ab, align 2, !tbaa !23
  %i.ch = zext i16 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  %i.cj = and i64 %i.ci, 1023
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cj
  call void @av_frame_free(ptr noundef nonnull %i.ck) #11
  %.pre.i.i = load i16, ptr %i.ab, align 2, !tbaa !23
  br label %ff_bufqueue_add.exit.i

ff_bufqueue_add.exit.i:                           ; preds = %bb.p, %bb.o
  %i.cl = phi i16 [ %.pre.i.i, %bb.p ], [ %.val.i.i, %bb.o ] ; 2 uses
  %i.cm = load i16, ptr %i.bv, align 8, !tbaa !24
  %i.cn = zext i16 %i.cm to i64
  %i.co = add i16 %i.cl, 1
  store i16 %i.co, ptr %i.ab, align 2, !tbaa !23
  %i.cp = zext i16 %i.cl to i64
  %i.cq = add nuw nsw i64 %i.cn, %i.cp
  %i.cr = and i64 %i.cq, 1023
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.cr
  store ptr %i.cc, ptr %i.cs, align 8, !tbaa !26
  %i.ct = load i32, ptr %i.bw, align 4, !tbaa !53
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %ff_bufqueue_add.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %ff_bufqueue_add.exit.i ] ; 3 uses
  %i.cv = load ptr, ptr %i.bx, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw [21168048 x i8], ptr %i.cv, i64 %indvars.iv.i
  %i.cx = load ptr, ptr %i.by, align 8, !tbaa !54
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !55
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 112
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !91
  call void %i.cx(ptr noundef %0, ptr noundef %i.cw, ptr noundef %i.dc, i32 noundef %i.de) #11, !inline_history !85
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.df = load i32, ptr %i.bw, align 4, !tbaa !53
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next.i, %i.dg
  br i1 %i.dh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i, %ff_bufqueue_add.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.di = call i64 @ff_inlink_queued_frames(ptr noundef nonnull %i.z) #11
  %i.dj = icmp ugt i64 %i.di, %indvars.iv.next88.i
  br i1 %i.dj, label %bb.m, label %filter_frame.exit.thread, !llvm.loop !87

filter_frame.exit.thread55:                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.z

filter_frame.exit:                                ; preds = %bb.j, %bb.k
  %i.dk = call i32 @ff_filter_frame(ptr noundef nonnull %i.x, ptr noundef %.050.i) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.dl = icmp slt i32 %i.dk, 1
  br i1 %i.dl, label %bb.z, label %filter_frame.exit.thread

filter_frame.exit.thread:                         ; preds = %._crit_edge.i, %bb.l, %.thread74.i, %filter_frame.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 124 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !45
  %.not44 = icmp eq i32 %i.dn, 0
  br i1 %.not44, label %bb.q, label %.thread

bb.q:                                             ; preds = %filter_frame.exit.thread
  %i.do = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = load i32, ptr %i.c, align 4
  %i.dr = icmp eq i32 %i.dq, -541478725
  %or.cond = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.dm, align 4, !tbaa !45
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %.pr = load i32, ptr %i.dm, align 4, !tbaa !45
  %.not45 = icmp eq i32 %.pr, 0
  br i1 %.not45, label %bb.v, label %.thread

.thread:                                          ; preds = %filter_frame.exit.thread, %bb.r, %bb.s
  %i.ds = call i32 @ff_inlink_queued_samples(ptr noundef %i.g) #11
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.thread
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8330
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !90
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !93
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.j, i32 noundef -541478725, i64 noundef %i.dy) #11
  br label %bb.z

bb.v:                                             ; preds = %bb.t, %.thread, %bb.s
  %i.dz = getelementptr inbounds nuw i8, ptr %i.l, i64 8330
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !90
  %.not46 = icmp eq i16 %i.ea, 0
  br i1 %.not46, label %bb.x, label %ff_bufqueue_peek.exit

ff_bufqueue_peek.exit:                            ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 8328
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !24
  %i.ee = and i16 %i.ed, 1023
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26
  %.val = load ptr, ptr %i.e, align 8, !tbaa !35
  %.val52 = load ptr, ptr %i.k, align 8, !tbaa !20
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !37
  %i.ei = getelementptr i8, ptr %.val52, i64 104
  %.val52.val = load ptr, ptr %i.ei, align 8, !tbaa !38
  %i.ej = call fastcc i32 @available_samples(ptr %.val.val, ptr %.val52.val)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 112
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !91
  %.not47 = icmp slt i32 %i.ej, %i.el
  br i1 %.not47, label %bb.w, label %.critedge51

bb.w:                                             ; preds = %ff_bufqueue_peek.exit
  %i.em = load i32, ptr %i.dm, align 4, !tbaa !45
  %.not48 = icmp eq i32 %i.em, 0
  br i1 %.not48, label %bb.x, label %.critedge51

.critedge51:                                      ; preds = %bb.w, %ff_bufqueue_peek.exit
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #11
  br label %bb.z

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.en = call i32 @ff_outlink_frame_wanted(ptr noundef %i.j) #11
  %.not49 = icmp eq i32 %i.en, 0
  br i1 %.not49, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @ff_inlink_request_frame(ptr noundef %i.g) #11
  br label %bb.z

bb.z:                                             ; preds = %filter_frame.exit.thread57, %filter_frame.exit.thread55, %bb.e, %bb.x, %.critedge51, %filter_frame.exit, %bb.a, %bb.y, %bb.u
  %.2 = phi i32 [ 0, %bb.e ], [ %i.o, %bb.a ], [ 0, %bb.u ], [ 0, %bb.y ], [ %i.dk, %filter_frame.exit ], [ 0, %.critedge51 ], [ -1497649742, %bb.x ], [ %i.bz, %filter_frame.exit.thread55 ], [ -12, %filter_frame.exit.thread57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52
  %i.g = sdiv i32 %i.f, 10
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 %i.g, ptr %i.h, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @av_calloc(i64 noundef %i.l, i64 noundef 21168048) #11 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.m, ptr %i.n, align 8, !tbaa !38
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.o = load i32, ptr %i.j, align 4, !tbaa !53   ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load double, ptr %i.q, align 8, !tbaa !58 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = icmp ult i32 %i.o, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.t = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv.epil ; 2 uses
  store i32 -1, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 21168008
  store double %i.r, ptr %i.u, align 8, !tbaa !61
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !98
  switch i32 %i.w, label %bb.e [
    i32 8, label %.sink.split
    i32 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.x = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  store i32 -1, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 21168008
  store double %i.r, ptr %i.y, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 21168048
  store i32 -1, ptr %i.aa, align 8, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 42336056
  store double %i.r, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 42336096
  store i32 -1, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 63504104
  store double %i.r, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw [21168048 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 63504144
  store i32 -1, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 84672152
  store double %i.r, ptr %i.ah, align 8, !tbaa !61
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !95

bb.d:                                             ; preds = %._crit_edge
end_hunk_0
