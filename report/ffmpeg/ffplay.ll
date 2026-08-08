inline.NumInlined: 170
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %i.cl = call ptr @SDL_CreateMutex() #18         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 3632
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !65
  %.not.i55.i = icmp eq ptr %i.cl, null
  br i1 %.not.i55.i, label %frame_queue_init.exit.thread.sink.split.i, label %bb.ak

bb.ak:                                            ; preds = %frame_queue_init.exit.i
  %i.cn = call ptr @SDL_CreateCond() #18          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 3640
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !66
  %.not16.i56.i = icmp eq ptr %i.cn, null
  br i1 %.not16.i56.i, label %frame_queue_init.exit.thread.sink.split.i, label %.lr.ph.preheader.i57.i

.lr.ph.preheader.i57.i:                           ; preds = %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 3648
  store ptr %i.ck, ptr %i.cp, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bj, i64 3620 ; 2 uses
  store i32 16, ptr %i.cq, align 4, !tbaa !68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 3624
  store i32 0, ptr %i.cr, align 8, !tbaa !69
  br label %.lr.ph.i58.i

bb.al:                                            ; preds = %.lr.ph.i58.i
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i59.i, 1 ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !68
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next.i61.i, %i.ct
  br i1 %i.cu, label %.lr.ph.i58.i, label %frame_queue_init.exit65.i, !llvm.loop !70

.lr.ph.i58.i:                                     ; preds = %bb.al, %.lr.ph.preheader.i57.i
  %indvars.iv.i59.i = phi i64 [ 0, %.lr.ph.preheader.i57.i ], [ %indvars.iv.next.i61.i, %bb.al ] ; 2 uses
  %i.cv = call ptr @av_frame_alloc() #18          ; 2 uses
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %i.cj, i64 %indvars.iv.i59.i
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !72
  %.not17.i60.i = icmp eq ptr %i.cv, null
  br i1 %.not17.i60.i, label %frame_queue_init.exit.thread.i, label %bb.al

frame_queue_init.exit65.i:                        ; preds = %bb.al
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 3656 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 5696 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1712) %i.cx, i8 0, i64 1712, i1 false)
  %i.cz = call ptr @SDL_CreateMutex() #18         ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bj, i64 5344
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !65
  %.not.i66.i = icmp eq ptr %i.cz, null
  br i1 %.not.i66.i, label %frame_queue_init.exit.thread.sink.split.i, label %bb.am

bb.am:                                            ; preds = %frame_queue_init.exit65.i
  %i.db = call ptr @SDL_CreateCond() #18          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 5352
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !66
  %.not16.i67.i = icmp eq ptr %i.db, null
  br i1 %.not16.i67.i, label %frame_queue_init.exit.thread.sink.split.i, label %.lr.ph.preheader.i68.i

.lr.ph.preheader.i68.i:                           ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 5360
  store ptr %i.cy, ptr %i.dd, align 8, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %i.bj, i64 5332 ; 2 uses
  store i32 9, ptr %i.de, align 4, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 5336
  store i32 1, ptr %i.df, align 8, !tbaa !69
  br label %.lr.ph.i69.i

bb.an:                                            ; preds = %.lr.ph.i69.i
  %indvars.iv.next.i72.i = add nuw nsw i64 %indvars.iv.i70.i, 1 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !68
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next.i72.i, %i.dh
  br i1 %i.di, label %.lr.ph.i69.i, label %frame_queue_init.exit76.i, !llvm.loop !70

.lr.ph.i69.i:                                     ; preds = %bb.an, %.lr.ph.preheader.i68.i
  %indvars.iv.i70.i = phi i64 [ 0, %.lr.ph.preheader.i68.i ], [ %indvars.iv.next.i72.i, %bb.an ] ; 2 uses
  %i.dj = call ptr @av_frame_alloc() #18          ; 2 uses
  %i.dk = getelementptr inbounds nuw [104 x i8], ptr %i.cx, i64 %indvars.iv.i70.i
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !72
  %.not17.i71.i = icmp eq ptr %i.dj, null
  br i1 %.not17.i71.i, label %frame_queue_init.exit.thread.i, label %bb.an

frame_queue_init.exit76.i:                        ; preds = %bb.an
  %i.dl = call fastcc i32 @packet_queue_init(ptr noundef %i.bw)
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %frame_queue_init.exit.thread.i, label %bb.ao

bb.ao:                                            ; preds = %frame_queue_init.exit76.i
  %i.dn = call fastcc i32 @packet_queue_init(ptr noundef %i.cy)
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %frame_queue_init.exit.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dp = call fastcc i32 @packet_queue_init(ptr noundef %i.ck)
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %frame_queue_init.exit.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = call ptr @SDL_CreateCond() #18          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bj, i64 1054912
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !79
  %.not48.i = icmp eq ptr %i.dr, null
  br i1 %.not48.i, label %frame_queue_init.exit.thread.sink.split.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.du = getelementptr inbounds nuw i8, ptr %i.bj, i64 1054780
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bj, i64 160
  store double 1.000000e+00, ptr %i.dv, align 8, !tbaa !80
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bj, i64 172
  store i32 0, ptr %i.dw, align 4, !tbaa !81
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !82
  %i.dy = call i64 @av_gettime_relative() #18
  %i.dz = sitofp nsz i64 %i.dy to double
  %i.ea = fdiv nsz double %i.dz, 1.000000e+06
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  store double %i.ea, ptr %i.eb, align 8, !tbaa !83
  store <2 x double> splat (double +qnan), ptr %i.dt, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bj, i64 168
  store i32 -1, ptr %i.ec, align 8, !tbaa !85
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bj, i64 5724
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store double 1.000000e+00, ptr %i.ef, align 8, !tbaa !80
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bj, i64 124
  store i32 0, ptr %i.eg, align 4, !tbaa !81
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  store ptr %i.ee, ptr %i.eh, align 8, !tbaa !82
  %i.ei = call i64 @av_gettime_relative() #18
  %i.ej = sitofp nsz i64 %i.ei to double
  %i.ek = fdiv nsz double %i.ej, 1.000000e+06
  %i.el = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  store double %i.ek, ptr %i.el, align 8, !tbaa !83
  store <2 x double> splat (double +qnan), ptr %i.ed, align 8, !tbaa !84
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 120
  store i32 -1, ptr %i.em, align 8, !tbaa !85
  %i.en = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bj, i64 216 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  store double 1.000000e+00, ptr %i.ep, align 8, !tbaa !80
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bj, i64 220
  store i32 0, ptr %i.eq, align 4, !tbaa !81
  %i.er = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !82
  %i.es = call i64 @av_gettime_relative() #18
  %i.et = sitofp nsz i64 %i.es to double
  %i.eu = fdiv nsz double %i.et, 1.000000e+06
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  store double %i.eu, ptr %i.ev, align 8, !tbaa !83
  store <2 x double> splat (double +qnan), ptr %i.en, align 8, !tbaa !84
  store i32 -1, ptr %i.eo, align 8, !tbaa !85
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bj, i64 5648
  store i32 -1, ptr %i.ew, align 8, !tbaa !86
  %i.ex = load i32, ptr @startup_volume, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.220, i32 noundef %i.ex) #18
  %.pr.i = load i32, ptr @startup_volume, align 4, !tbaa !12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ez = phi i32 [ %.pr.i, %bb.as ], [ %i.ex, %bb.ar ] ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, 100
  br i1 %i.fa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.221, i32 noundef %i.ez) #18
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fb = load ptr, ptr @video_background, align 8, !tbaa !9 ; 4 uses
  %.not49.i = icmp eq ptr %i.fb, null
  br i1 %.not49.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(5) @.str.222) #21
  %.not50.i = icmp eq i32 %i.fc, 0
  br i1 %.not50.i, label %.sink.split.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(6) @.str.223) #21
  %.not51.i = icmp eq i32 %i.fd, 0
  br i1 %.not51.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bj, i64 1054616
  %i.ff = call i32 @av_parse_color(ptr noundef nonnull %i.fe, ptr noundef nonnull %i.fb, i32 noundef -1, ptr noundef null) #18
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %.sink.split.i, label %frame_queue_init.exit.thread.i

.sink.split.i:                                    ; preds = %bb.ay, %bb.aw
  %.sink.i = phi i32 [ 2, %bb.aw ], [ 1, %bb.ay ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 1054620
  store i32 %.sink.i, ptr %i.fh, align 4, !tbaa !87
  br label %bb.az

bb.az:                                            ; preds = %.sink.split.i, %bb.ax, %bb.av
  %i.fi = load i32, ptr @startup_volume, align 4, !tbaa !12
  %i.fj = call i32 @llvm.smax.i32(i32 %i.fi, i32 0)
  %i.fk = call i32 @llvm.umin.i32(i32 %i.fj, i32 100)
  %.tr.i = trunc nuw nsw i32 %i.fk to i16
  %.lhs.trunc.i = shl nuw nsw i16 %.tr.i, 7
  %i.fl = udiv i16 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i16 %i.fl to i32           ; 2 uses
  store i32 %.zext.i, ptr @startup_volume, align 4, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bj, i64 5784
  store i32 %.zext.i, ptr %i.fm, align 8, !tbaa !88
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bj, i64 5788
  store i32 0, ptr %i.fn, align 4, !tbaa !89
  %i.fo = load i32, ptr @av_sync_type, align 4, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bj, i64 5636
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !90
  %i.fq = call ptr @SDL_CreateThread(ptr noundef nonnull @read_thread, ptr noundef nonnull @.str.224, ptr noundef nonnull %i.bj) #18 ; 2 uses
  store ptr %i.fq, ptr %i.bj, align 8, !tbaa !91
  %.not52.i = icmp eq ptr %i.fq, null
  br i1 %.not52.i, label %frame_queue_init.exit.thread.sink.split.i, label %.split

frame_queue_init.exit.thread.sink.split.i:        ; preds = %bb.az, %bb.aq, %bb.am, %frame_queue_init.exit65.i, %bb.ak, %frame_queue_init.exit.i, %bb.ai, %bb.ah
  %.str.219.sink.i75.sink.i = phi ptr [ @.str.219, %bb.ak ], [ @.str.219, %bb.ai ], [ @.str.219, %bb.am ], [ @.str.219, %bb.aq ], [ @.str.226, %bb.ah ], [ @.str.226, %frame_queue_init.exit.i ], [ @.str.226, %frame_queue_init.exit65.i ], [ @.str.225, %bb.az ]
  %i.fr = call ptr @SDL_GetError() #18
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull %.str.219.sink.i75.sink.i, ptr noundef %i.fr) #18
  br label %frame_queue_init.exit.thread.i

frame_queue_init.exit.thread.i:                   ; preds = %.lr.ph.i.i, %.lr.ph.i58.i, %.lr.ph.i69.i, %frame_queue_init.exit.thread.sink.split.i, %bb.ay, %bb.ap, %bb.ao, %frame_queue_init.exit76.i, %bb.ag
  call fastcc void @stream_close(ptr noundef %i.bj)
  br label %.split26

.split:                                           ; preds = %bb.az
  call fastcc void @event_loop(ptr noundef nonnull %i.bj)
  unreachable

.split26:                                         ; preds = %frame_queue_init.exit.thread.i, %bb.af
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.24) #18
  call fastcc void @do_exit(ptr noundef null)
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @init_dynload() local_unnamed_addr #1

declare void @av_log_set_flags(i32 noundef) local_unnamed_addr #1

declare void @parse_loglevel(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @avdevice_register_all() local_unnamed_addr #1

declare i32 @avformat_network_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @__sysv_signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal void @sigterm_handler(i32 %0) #5 {
bb.a:
  tail call void @exit(i32 noundef 123) #20
  unreachable
}

declare void @show_banner(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @parse_options(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @opt_input_file(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @input_filename, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %sub_0, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.215, ptr noundef %1, ptr noundef nonnull %i.a) #18
  br label %bb.c

sub_0:                                            ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %.not6 = icmp eq i8 %i.b, 45
  br i1 %.not6, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = select i1 %i.e, ptr @.str.217, ptr %1
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %.not4 = phi ptr [ %1, %sub_0 ], [ %i.f, %sub_1 ]
  %i.g = tail call noalias ptr @av_strdup(ptr noundef nonnull %.not4) #18 ; 2 uses
  store ptr %i.g, ptr @input_filename, align 8, !tbaa !9
  %.not5 = icmp eq ptr %i.g, null
  %. = select i1 %.not5, i32 -12, i32 0
  br label %bb.c

bb.c:                                             ; preds = %.tail, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ %., %.tail ]
  ret i32 %.0
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @SDL_getenv(ptr noundef) local_unnamed_addr #1

declare i32 @SDL_setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SDL_Init(i32 noundef) local_unnamed_addr #1

declare ptr @SDL_GetError() local_unnamed_addr #1

declare zeroext i8 @SDL_EventState(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @SDL_SetHint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @vk_get_renderer() local_unnamed_addr #1

declare ptr @SDL_CreateWindow(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_exit(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @stream_close(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load ptr, ptr @renderer, align 8, !tbaa !19 ; 2 uses
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @SDL_DestroyRenderer(ptr noundef nonnull %i.a) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.b = load ptr, ptr @vk_renderer, align 8, !tbaa !13 ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @vk_renderer_destroy(ptr noundef nonnull %i.b) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.c = load ptr, ptr @window, align 8, !tbaa !15 ; 2 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @SDL_DestroyWindow(ptr noundef nonnull %i.c) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @uninit_opts() #18
  %i.d = load i32, ptr @nb_vfilters, align 4, !tbaa !12
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  tail call void @av_freep(ptr noundef nonnull @vfilters_list) #18
  tail call void @av_freep(ptr noundef nonnull @video_codec_name) #18
  tail call void @av_freep(ptr noundef nonnull @audio_codec_name) #18
  tail call void @av_freep(ptr noundef nonnull @subtitle_codec_name) #18
  tail call void @av_freep(ptr noundef nonnull @input_filename) #18
  %i.f = tail call i32 @avformat_network_deinit() #18 ; 0 uses
  %i.g = load i32, ptr @show_status, align 4, !tbaa !12
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.h = load ptr, ptr @vfilters_list, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  tail call void @av_freep(ptr noundef %i.i) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr @nb_vfilters, align 4, !tbaa !12
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !94

bb.j:                                             ; preds = %._crit_edge
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  tail call void @SDL_Quit() #18
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef -8, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.136) #18
  tail call void @exit(i32 noundef 0) #19
  unreachable
}

declare i32 @av_dict_parse_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @vk_renderer_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
begin_hunk_1_@sdl_audio_callback:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5752 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5648
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5952
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1054532 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5956
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5924
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5788 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5784 ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !273
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ba
  %i.aw = phi i32 [ %.pre, %.lr.ph ], [ %i.kr, %bb.ba ] ; 2 uses
  %.05573 = phi ptr [ %1, %.lr.ph ], [ %i.kp, %bb.ba ] ; 4 uses
  %.05672 = phi i32 [ %2, %.lr.ph ], [ %i.ko, %bb.ba ] ; 2 uses
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !272 ; 2 uses
  %.not = icmp ult i32 %i.aw, %i.ax
  br i1 %.not, label %bb.at, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !97
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %.preheader.i, label %audio_decode_frame.exit.thread

.preheader.i:                                     ; preds = %bb.c, %frame_queue_next.exit
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.ba = tail call i32 @SDL_LockMutex(ptr noundef %i.az) #18 ; 0 uses
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !108
  %i.bc = load i32, ptr %i.j, align 4, !tbaa !109
  %.not15.i.i = icmp sgt i32 %i.bb, %i.bc
  br i1 %.not15.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i, %bb.d
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !206
  %.not13.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not13.i.i, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.bi = tail call i32 @SDL_CondWait(ptr noundef %i.bg, ptr noundef %i.bh) #18 ; 0 uses
  %i.bj = load i32, ptr %i.i, align 8, !tbaa !108
  %i.bk = load i32, ptr %i.j, align 4, !tbaa !109
  %.not.i.i = icmp sgt i32 %i.bj, %i.bk
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !391

.critedge.i.i:                                    ; preds = %bb.d, %.lr.ph.i.i, %.preheader.i
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.bm = tail call i32 @SDL_UnlockMutex(ptr noundef %i.bl) #18 ; 0 uses
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !206
  %.not14.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not14.i.i, label %bb.e, label %audio_decode_frame.exit.thread

bb.e:                                             ; preds = %.critedge.i.i
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !110 ; 2 uses
  %i.br = load i32, ptr %i.j, align 4, !tbaa !109 ; 2 uses
  %i.bs = add nsw i32 %i.br, %i.bq
  %i.bt = load i32, ptr %i.m, align 4, !tbaa !68
  %i.bu = srem i32 %i.bs, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.bv ; 15 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !69
  %.not.i68 = icmp ne i32 %i.bx, 0
  %.not12.i = icmp eq i32 %i.br, 0
  %or.cond = select i1 %.not.i68, i1 %.not12.i, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.j, align 4, !tbaa !109
  br label %frame_queue_next.exit

bb.g:                                             ; preds = %bb.e
  %i.by = sext i32 %i.bq to i64
  %i.bz = getelementptr inbounds [104 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72
  tail call void @av_frame_unref(ptr noundef %i.ca) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  tail call void @avsubtitle_free(ptr noundef nonnull %i.cb) #18
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !110
  %i.cd = add nsw i32 %i.cc, 1                    ; 2 uses
  %i.ce = load i32, ptr %i.m, align 4, !tbaa !68
  %i.cf = icmp eq i32 %i.cd, %i.ce
  %spec.store.select.i = select i1 %i.cf, i32 0, i32 %i.cd
  store i32 %spec.store.select.i, ptr %i.l, align 8
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.ch = tail call i32 @SDL_LockMutex(ptr noundef %i.cg) #18 ; 0 uses
  %i.ci = load i32, ptr %i.i, align 8, !tbaa !108
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.i, align 8, !tbaa !108
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.cl = tail call i32 @SDL_CondSignal(ptr noundef %i.ck) #18 ; 0 uses
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.cn = tail call i32 @SDL_UnlockMutex(ptr noundef %i.cm) #18 ; 0 uses
  br label %frame_queue_next.exit

frame_queue_next.exit:                            ; preds = %bb.f, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !111
  %i.cq = load i32, ptr %i.n, align 4, !tbaa !241
  %.not106.i = icmp eq i32 %i.cp, %i.cq
  br i1 %.not106.i, label %bb.h, label %.preheader.i, !llvm.loop !392

bb.h:                                             ; preds = %frame_queue_next.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cs = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 388
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !322
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !334
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 116
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !319
  %i.cz = tail call i32 @av_samples_get_buffer_size(ptr noundef null, i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.cy, i32 noundef 1) #18
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !334 ; 9 uses
  %i.dd = load i32, ptr %i.p, align 4, !tbaa !90
  switch i32 %i.dd, label %get_master_sync_type.exit.thread.i.i [
    i32 1, label %get_master_sync_type.exit.i.i
    i32 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !99
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %get_master_sync_type.exit.thread.i.i, label %synchronize_audio.exit.i

get_master_sync_type.exit.i.i:                    ; preds = %bb.h
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !107
  %.not5.i.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not5.i.not.i.i, label %synchronize_audio.exit.i, label %get_master_sync_type.exit.thread.i.i

get_master_sync_type.exit.thread.i.i:             ; preds = %get_master_sync_type.exit.i.i, %bb.i, %bb.h
  %i.dg = load ptr, ptr %i.t, align 8, !tbaa !82
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !12
  %i.di = load i32, ptr %i.u, align 8, !tbaa !85
  %.not.i36.i.i = icmp eq i32 %i.dh, %i.di
  br i1 %.not.i36.i.i, label %bb.j, label %get_clock.exit.i.i

bb.j:                                             ; preds = %get_master_sync_type.exit.thread.i.i
  %i.dj = load i32, ptr %i.v, align 4, !tbaa !81
  %.not10.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not10.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = load double, ptr %i.s, align 8, !tbaa !104
  br label %get_clock.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.dl = tail call i64 @av_gettime_relative() #18
  %i.dm = sitofp nsz i64 %i.dl to double
  %i.dn = fdiv nsz double %i.dm, 1.000000e+06     ; 2 uses
  %i.do = load double, ptr %i.w, align 8, !tbaa !105
  %i.dp = fadd nsz double %i.do, %i.dn
  %i.dq = load double, ptr %i.x, align 8, !tbaa !83
  %i.dr = load double, ptr %i.y, align 8, !tbaa !80
  %i.ds = fsub nsz double 1.000000e+00, %i.dr
  %i.dt = fsub nsz double %i.dq, %i.dn
  %i.du = tail call nsz double @llvm.fmuladd.f64(double %i.dt, double %i.ds, double %i.dp)
  br label %get_clock.exit.i.i

get_clock.exit.i.i:                               ; preds = %bb.l, %bb.k, %get_master_sync_type.exit.thread.i.i
  %.0.i37.i.i = phi nsz double [ %i.du, %bb.l ], [ %i.dk, %bb.k ], [ +qnan, %get_master_sync_type.exit.thread.i.i ]
  %i.dv = tail call nsz fastcc double @get_master_clock(ptr noundef nonnull %0)
  %i.dw = fsub nsz double %.0.i37.i.i, %i.dv      ; 4 uses
  %i.dx = tail call nsz double @llvm.fabs.f64(double %i.dw)
  %i.dy = fcmp nsz olt double %i.dx, 1.000000e+01
  br i1 %i.dy, label %bb.m, label %bb.r

bb.m:                                             ; preds = %get_clock.exit.i.i
  %i.dz = load double, ptr %i.ab, align 8, !tbaa !274 ; 2 uses
  %i.ea = load double, ptr %i.z, align 8, !tbaa !393
  %i.eb = tail call nsz double @llvm.fmuladd.f64(double %i.dz, double %i.ea, double %i.dw) ; 2 uses
  store double %i.eb, ptr %i.z, align 8, !tbaa !393
  %i.ec = load i32, ptr %i.aa, align 8, !tbaa !275 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 20
  br i1 %i.ed, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ee = add nsw i32 %i.ec, 1
  store i32 %i.ee, ptr %i.aa, align 8, !tbaa !275
  br label %synchronize_audio.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ef = fsub nsz double 1.000000e+00, %i.dz
  %i.eg = fmul nsz double %i.ef, %i.eb            ; 2 uses
  %i.eh = tail call nsz double @llvm.fabs.f64(double %i.eg)
  %i.ei = load double, ptr %i.ac, align 8, !tbaa !277 ; 2 uses
  %i.ej = fcmp nsz ult double %i.eh, %i.ei
  br i1 %i.ej, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = load i32, ptr %i.ad, align 8, !tbaa !394
  %i.el = sitofp nsz i32 %i.ek to double
  %i.em = fmul nnan nsz double %i.dw, %i.el
  %i.en = fptosi double %i.em to i32
  %i.eo = add nsw i32 %i.dc, %i.en                ; 2 uses
  %i.ep = mul nsw i32 %i.dc, 90
  %i.eq = sdiv i32 %i.ep, 100                     ; 2 uses
  %i.er = mul nsw i32 %i.dc, 110
  %i.es = sdiv i32 %i.er, 100
  %i.et = icmp slt i32 %i.eo, %i.eq
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.eo, i32 %i.es)
  %.0.i.i.i = select i1 %i.et, i32 %i.eq, i32 %..i.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i115.i = phi i32 [ %.0.i.i.i, %bb.p ], [ %i.dc, %bb.o ] ; 2 uses
  %i.eu = sub nsw i32 %.0.i115.i, %i.dc
  %i.ev = load double, ptr %i.ae, align 8, !tbaa !395
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 56, ptr noundef nonnull @.str.286, double noundef %i.dw, double noundef %i.eg, i32 noundef %i.eu, double noundef %i.ev, double noundef %i.ei) #18
  br label %synchronize_audio.exit.i

bb.r:                                             ; preds = %get_clock.exit.i.i
  store i32 0, ptr %i.aa, align 8, !tbaa !275
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !393
  br label %synchronize_audio.exit.i

synchronize_audio.exit.i:                         ; preds = %bb.r, %bb.q, %bb.n, %get_master_sync_type.exit.i.i, %bb.i
  %.2.i.i = phi i32 [ %i.dc, %get_master_sync_type.exit.i.i ], [ %i.dc, %bb.r ], [ %i.dc, %bb.n ], [ %.0.i115.i, %bb.q ], [ %i.dc, %bb.i ] ; 5 uses
  %i.ew = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 116
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !319
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !396
  %.not107.i = icmp eq i32 %i.ey, %i.ez
  br i1 %.not107.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %synchronize_audio.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 384
  %i.fb = tail call i32 @av_channel_layout_compare(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.ag) #18
  %.not108.i = icmp eq i32 %i.fb, 0
  br i1 %.not108.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.fc = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 180
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !323 ; 3 uses
  %i.ff = load i32, ptr %i.ad, align 8, !tbaa !394
  %.not109.i = icmp eq i32 %i.fe, %i.ff
  br i1 %.not109.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 112
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !334
  %.not110.i = icmp eq i32 %.2.i.i, %i.fh
  %.pre75 = load ptr, ptr %i.ah, align 8, !tbaa !397 ; 2 uses
  br i1 %.not110.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not111.i = icmp eq ptr %.pre75, null
  br i1 %.not111.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.s, %synchronize_audio.exit.i
  tail call void @swr_free(ptr noundef nonnull %i.ah) #18
  %i.fi = load i32, ptr %i.ak, align 8, !tbaa !398
  %i.fj = load i32, ptr %i.ai, align 8, !tbaa !399
  %i.fk = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 384
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 116
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !319
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 180
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !323
  %i.fq = tail call i32 @swr_alloc_set_opts2(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.aj, i32 noundef %i.fi, i32 noundef %i.fj, ptr noundef nonnull %i.fl, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef 0, ptr noundef null) #18
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fs = load ptr, ptr %i.ah, align 8, !tbaa !397
  %i.ft = tail call i32 @swr_init(ptr noundef %i.fs) #18
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fv = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 180
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !323
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 116
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !319
  %i.ga = tail call ptr @av_get_sample_fmt_name(i32 noundef %i.fz) #18
  %i.gb = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 388
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !322
  %i.ge = load i32, ptr %i.ai, align 8, !tbaa !399
  %i.gf = load i32, ptr %i.ak, align 8, !tbaa !398
  %i.gg = tail call ptr @av_get_sample_fmt_name(i32 noundef %i.gf) #18
  %i.gh = load i32, ptr %i.al, align 4, !tbaa !400
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.281, i32 noundef %i.fx, ptr noundef %i.ga, i32 noundef %i.gd, i32 noundef %i.ge, ptr noundef %i.gg, i32 noundef %i.gh) #18
  tail call void @swr_free(ptr noundef nonnull %i.ah) #18
  br label %audio_decode_frame.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.gi = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 384
  %i.gk = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.gj) #18
  %i.gl = icmp slt i32 %i.gk, 0
  br i1 %i.gl, label %audio_decode_frame.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 180
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !323 ; 2 uses
  store i32 %i.go, ptr %i.ad, align 8, !tbaa !394
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 116
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !319
  store i32 %i.gq, ptr %i.af, align 8, !tbaa !396
  %.pre74 = load ptr, ptr %i.ah, align 8, !tbaa !397
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.u
  %i.gr = phi ptr [ %.pre74, %bb.aa ], [ %.pre75, %bb.u ]
  %i.gs = phi i32 [ %i.go, %bb.aa ], [ %i.fe, %bb.u ]
  %i.gt = phi ptr [ %i.gm, %bb.aa ], [ %i.fc, %bb.u ] ; 2 uses
  %.not112.i = icmp eq ptr %i.gr, null
  br i1 %.not112.i, label %bb.an, label %.thread

.thread:                                          ; preds = %bb.v, %bb.ab
  %i.gu = phi ptr [ %i.gt, %bb.ab ], [ %i.fc, %bb.v ]
  %i.gv = phi i32 [ %i.gs, %bb.ab ], [ %i.fe, %bb.v ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 96
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !401
  %i.gy = sext i32 %.2.i.i to i64
  %i.gz = load i32, ptr %i.ai, align 8, !tbaa !399
  %i.ha = sext i32 %i.gz to i64
  %i.hb = mul nsw i64 %i.ha, %i.gy
  %i.hc = sext i32 %i.gv to i64
  %i.hd = sdiv i64 %i.hb, %i.hc
  %i.he = trunc i64 %i.hd to i32
  %i.hf = add i32 %i.he, 256                      ; 3 uses
  %i.hg = load i32, ptr %i.al, align 4, !tbaa !400
  %i.hh = load i32, ptr %i.ak, align 8, !tbaa !398
  %i.hi = tail call i32 @av_samples_get_buffer_size(ptr noundef null, i32 noundef %i.hg, i32 noundef %i.hf, i32 noundef %i.hh, i32 noundef 0) #18 ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.282) #18
  br label %audio_decode_frame.exit.thread

bb.ad:                                            ; preds = %.thread
  %i.hk = load ptr, ptr %i.bw, align 8, !tbaa !72 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !334 ; 2 uses
  %.not113.i = icmp eq i32 %.2.i.i, %i.hm
  br i1 %.not113.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hn = load ptr, ptr %i.ah, align 8, !tbaa !397
  %i.ho = sub nsw i32 %.2.i.i, %i.hm
  %i.hp = load i32, ptr %i.ai, align 8, !tbaa !399 ; 2 uses
  %i.hq = mul nsw i32 %i.hp, %i.ho
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 180
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !323 ; 2 uses
  %i.ht = sdiv i32 %i.hq, %i.hs
  %i.hu = mul nsw i32 %i.hp, %.2.i.i
  %i.hv = sdiv i32 %i.hu, %i.hs
  %i.hw = tail call i32 @swr_set_compensation(ptr noundef %i.hn, i32 noundef %i.ht, i32 noundef %i.hv) #18
  %i.hx = icmp slt i32 %i.hw, 0
  br i1 %i.hx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.283) #18
  br label %audio_decode_frame.exit.thread

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.hy = zext nneg i32 %i.hi to i64
  tail call void @av_fast_malloc(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef %i.hy) #18
  %i.hz = load ptr, ptr %i.am, align 8, !tbaa !402
  %.not114.i = icmp eq ptr %i.hz, null
  br i1 %.not114.i, label %audio_decode_frame.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ia = load ptr, ptr %i.ah, align 8, !tbaa !397
  %i.ib = load ptr, ptr %i.bw, align 8, !tbaa !72
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 112
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !334
  %i.ie = tail call i32 @swr_convert(ptr noundef %i.ia, ptr noundef nonnull %i.am, i32 noundef %i.hf, ptr noundef %i.gx, i32 noundef %i.id) #18 ; 3 uses
  %i.if = icmp slt i32 %i.ie, 0
  br i1 %i.if, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.284) #18
  br label %audio_decode_frame.exit.thread

bb.aj:                                            ; preds = %bb.ah
  %i.ig = icmp eq i32 %i.ie, %i.hf
  br i1 %i.ig, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.285) #18
  %i.ih = load ptr, ptr %i.ah, align 8, !tbaa !397
  %i.ii = tail call i32 @swr_init(ptr noundef %i.ih) #18
  %i.ij = icmp slt i32 %i.ii, 0
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @swr_free(ptr noundef nonnull %i.ah) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ik = load ptr, ptr %i.am, align 8, !tbaa !402
  store ptr %i.ik, ptr %i.ao, align 8, !tbaa !197
end_hunk_1
