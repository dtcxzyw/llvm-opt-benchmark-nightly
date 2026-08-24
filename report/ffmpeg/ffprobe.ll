Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffprobe?download=true
inline.NumInlined: 72
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@main:bb.a
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 392)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 408)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 424)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 440)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 456)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 472)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 488)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 504)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 520)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 536)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 552)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 568)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 584)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 600)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 616)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 632)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 648)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 664)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 680)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 696)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 712)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 728)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 744)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 760)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 776)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 792)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 808)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 824)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 840)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 856)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 872)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 888)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 904)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 920)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 936)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 952)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 968)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 984)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 1000)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 1016)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 1032)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 1048)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 1064)) #20
  call void @av_dict_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @selected_entries, i64 1080)) #20
  %i.cm = call i32 @avformat_network_deinit() #20 ; 0 uses
  %.2.lobit = lshr i32 %.2, 31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.2.lobit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @init_dynload() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr noundef captures(none), ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @av_log_set_flags(i32 noundef) local_unnamed_addr #1

declare void @parse_loglevel(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @avformat_network_init() local_unnamed_addr #1

declare void @avdevice_register_all() local_unnamed_addr #1

declare void @show_banner(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @parse_options(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @opt_input_file(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @input_filename, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %sub_0, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.209, ptr noundef %1, ptr noundef nonnull %i.a) #20
  br label %bb.c

sub_0:                                            ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %.not6 = icmp eq i8 %i.b, 45
  br i1 %.not6, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = select i1 %i.e, ptr @.str.206, ptr %1
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1
  %.not4 = phi ptr [ %1, %sub_0 ], [ %i.f, %sub_1 ]
  %i.g = tail call noalias ptr @av_strdup(ptr noundef nonnull %.not4) #20 ; 2 uses
  store ptr %i.g, ptr @input_filename, align 8, !tbaa !15
  %.not5 = icmp eq ptr %i.g, null
  %. = select i1 %.not5, i32 -12, i32 0
  br label %bb.c

bb.c:                                             ; preds = %.tail, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ %., %.tail ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @log_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.va_copy.p0(ptr nonnull %4, ptr %3)
  call void @av_log_default_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #20
  call void @av_log_format_line(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull @log_callback.print_prefix) #20
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.d = call i32 @pthread_mutex_lock(ptr noundef nonnull @log_mutex) #20 ; 0 uses
  %i.e = load ptr, ptr @log_buffer, align 8, !tbaa !36
  %i.f = load i32, ptr @log_buffer_size, align 4, !tbaa !14
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = call ptr @av_realloc_array(ptr noundef %i.e, i64 noundef %i.h, i64 noundef 48) #20 ; 4 uses
  %.not47 = icmp eq ptr %i.i, null
  br i1 %.not47, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr @log_buffer, align 8, !tbaa !36
  %i.j = load i32, ptr @log_buffer_size, align 4, !tbaa !14
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [48 x i8], ptr %i.i, i64 %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %.not48 = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %.not48, label %.critedge55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = call ptr %i.n(ptr noundef %0) #20
  %i.p = call noalias ptr @av_strdup(ptr noundef %i.o) #20
  %i.q = load ptr, ptr @log_buffer, align 8, !tbaa !36 ; 2 uses
  %i.r = load i32, ptr @log_buffer_size, align 4, !tbaa !14
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [48 x i8], ptr %i.q, i64 %i.s ; 2 uses
  store ptr %i.p, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43   ; 2 uses
  %.not49 = icmp eq ptr %i.v, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 %i.v(ptr noundef %0) #20
  %i.x = load ptr, ptr @log_buffer, align 8, !tbaa !36 ; 2 uses
  %i.y = load i32, ptr @log_buffer_size, align 4, !tbaa !14
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [48 x i8], ptr %i.x, i64 %i.z
  br label %.critedge55.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !44
  br label %.critedge55.sink.split

.critedge55.sink.split:                           ; preds = %bb.g, %bb.f
  %.sink71 = phi ptr [ %i.aa, %bb.f ], [ %i.t, %bb.g ]
  %.sink = phi i32 [ %i.w, %bb.f ], [ %i.ac, %bb.g ]
  %.pre-phi.ph = phi i64 [ %i.z, %bb.f ], [ %i.s, %bb.g ]
  %.ph = phi ptr [ %i.x, %bb.f ], [ %i.q, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink71, i64 24
  store i32 %.sink, ptr %i.ad, align 8, !tbaa !45
  br label %.critedge55

.critedge55:                                      ; preds = %.critedge55.sink.split, %bb.d
  %.pre-phi = phi i64 [ %i.k, %bb.d ], [ %.pre-phi.ph, %.critedge55.sink.split ]
  %i.ae = phi ptr [ %i.i, %bb.d ], [ %.ph, %.critedge55.sink.split ]
  %i.af = getelementptr inbounds [48 x i8], ptr %i.ae, i64 %.pre-phi
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %1, ptr %i.ag, align 8, !tbaa !46
  %i.ah = call noalias ptr @av_strdup(ptr noundef nonnull %i.a) #20 ; 3 uses
  %i.ai = load ptr, ptr @log_buffer, align 8, !tbaa !36
  %i.aj = load i32, ptr @log_buffer_size, align 4, !tbaa !14 ; 5 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [48 x i8], ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ah, ptr %i.am, align 8, !tbaa !47
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #21
  %i.ao = trunc i64 %i.an to i32
  %.056 = add i32 %i.ao, -1                       ; 2 uses
  %i.ap = icmp sgt i32 %.056, -1
  br i1 %i.ap, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.critedge55
  %5 = zext nneg i32 %.056 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %5, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !48
  %i.as = icmp eq i8 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.aq, align 1, !tbaa !48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.at = icmp sgt i64 %indvars.iv, 0
  br i1 %i.at, label %.lr.ph, label %.critedge, !llvm.loop !49

.critedge:                                        ; preds = %.lr.ph, %bb.h, %.critedge55
  br i1 %.not48, label %bb.p, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %.not50 = icmp eq i32 %i.av, 0
  br i1 %.not50, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52 ; 5 uses
  %.not51 = icmp eq ptr %i.ay, null
  br i1 %.not51, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bc = call ptr %i.bb(ptr noundef nonnull %i.ay) #20
  %i.bd = call noalias ptr @av_strdup(ptr noundef %i.bc) #20
  %i.be = load ptr, ptr @log_buffer, align 8, !tbaa !36 ; 2 uses
  %i.bf = load i32, ptr @log_buffer_size, align 4, !tbaa !14 ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [48 x i8], ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !55
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !43 ; 2 uses
  %.not53 = icmp eq ptr %i.bl, null
  br i1 %.not53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = call i32 %i.bl(ptr noundef nonnull %i.ay) #20
  %.pre = load ptr, ptr @log_buffer, align 8, !tbaa !36
  %.pre59 = load i32, ptr @log_buffer_size, align 4, !tbaa !14 ; 2 uses
  %.pre60 = sext i32 %.pre59 to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi61 = phi i64 [ %i.bg, %bb.n ], [ %.pre60, %bb.m ]
  %i.bp = phi i32 [ %i.bf, %bb.n ], [ %.pre59, %bb.m ]
  %i.bq = phi ptr [ %i.be, %bb.n ], [ %.pre, %bb.m ]
  %i.br = phi i32 [ %i.bo, %bb.n ], [ %i.bm, %bb.m ]
  %i.bs = getelementptr inbounds [48 x i8], ptr %i.bq, i64 %.pre-phi61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store i32 %i.br, ptr %i.bt, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.k, %bb.o, %bb.i, %.critedge
  %i.bu = phi i32 [ %i.aj, %bb.j ], [ %i.aj, %bb.k ], [ %i.bp, %bb.o ], [ %i.aj, %bb.i ], [ %i.aj, %.critedge ]
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr @log_buffer_size, align 4, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %i.bw = call i32 @pthread_mutex_unlock(ptr noundef nonnull @log_mutex) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @check_section_show_entries(i32 noundef range(i32 0, -1) %0) unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [16 x i8], ptr @selected_entries, i64 %i.a ; 2 uses
  %i.c = load i32, ptr %i.b, align 16, !tbaa !57
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds [128 x i8], ptr @sections, i64 %i.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %.not1315.not = icmp eq i32 %i.h, -1
  br i1 %.not1315.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %.not13.not = icmp eq i32 %i.j, -1
  br i1 %.not13.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  %.016 = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.l = tail call fastcc i32 @check_section_show_entries(i32 noundef %i.k)
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b
  %.2 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 0, %bb.d ]
  ret i32 %.2
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #1

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @avtext_get_formatter_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @avtextwriter_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @avtextwriter_create_stdout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @is_key_selected_callback(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.g, ptrtoint (ptr @sections to i64)
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds i8, ptr @selected_entries, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = tail call ptr @av_dict_get(ptr noundef %i.m, ptr noundef %1, ptr noundef null, i32 noundef 0) #20
  %i.o = icmp ne ptr %i.n, null
  %i.p = zext i1 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i32 [ 1, %bb.a ], [ %i.p, %bb.b ]
  ret i32 %i.q
}

declare i32 @avtext_context_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.AVTextFormatOptions) align 8, ptr noundef) local_unnamed_addr #1

declare void @avtext_print_section_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ffprobe_show_program_version(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.AVBPrint, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @av_bprint_init(ptr noundef nonnull %1, i32 noundef 1, i32 noundef -1) #20
  call void @avtext_print_section_header(ptr noundef %0, ptr noundef null, i32 noundef 38) #20
  %i.a = call i32 @avtext_print_string(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.293, i32 noundef 0) #20 ; 0 uses
  call void @av_bprint_clear(ptr noundef nonnull %1) #20
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.294, i32 noundef 2007, i32 noundef 2026) #20
  %i.b = load ptr, ptr %1, align 8, !tbaa !64
  %i.c = call i32 @avtext_print_string(ptr noundef %0, ptr noundef nonnull @.str.295, ptr noundef %i.b, i32 noundef 0) #20 ; 0 uses
  %i.d = call i32 @avtext_print_string(ptr noundef %0, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.297, i32 noundef 0) #20 ; 0 uses
  %i.e = call i32 @avtext_print_string(ptr noundef %0, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.299, i32 noundef 0) #20 ; 0 uses
  call void @avtext_print_section_footer(ptr noundef %0) #20
  %i.f = call i32 @av_bprint_finalize(ptr noundef nonnull %1, ptr noundef null) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ffprobe_show_library_versions(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @avtext_print_section_header(ptr noundef %0, ptr noundef null, i32 noundef 20) #20
  %i.a = tail call i32 @avutil_version() #20
  tail call void @avtext_print_section_header(ptr noundef %0, ptr noundef null, i32 noundef 19) #20
  %i.b = tail call i32 @avtext_print_string(ptr noundef %0, ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.301, i32 noundef 0) #20 ; 0 uses
  tail call void @avtext_print_integer(ptr noundef %0, ptr noundef nonnull @.str.302, i64 noundef 61, i32 noundef 0) #20
  tail call void @avtext_print_integer(ptr noundef %0, ptr noundef nonnull @.str.303, i64 noundef 1, i32 noundef 0) #20
  tail call void @avtext_print_integer(ptr noundef %0, ptr noundef nonnull @.str.304, i64 noundef 100, i32 noundef 0) #20
  %i.c = zext i32 %i.a to i64
  tail call void @avtext_print_integer(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef %i.c, i32 noundef 0) #20
  %i.d = tail call i32 @avtext_print_string(ptr noundef %0, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.306, i32 noundef 0) #20 ; 0 uses
  tail call void @avtext_print_section_footer(ptr noundef %0) #20
  %i.e = tail call i32 @avcodec_version() #20
  tail call void @avtext_print_section_header(ptr noundef %0, ptr noundef null, i32 noundef 19) #20
end_hunk_0
