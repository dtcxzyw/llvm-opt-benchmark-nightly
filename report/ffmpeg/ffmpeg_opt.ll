Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg_opt?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
begin_hunk_0_@opt_preset:bb.a
bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.bh = call i32 @parse_option(ptr noundef %0, ptr noundef nonnull @.str.605, ptr noundef %i.bg, ptr noundef nonnull @options) #13, !inline_history !83 ; 0 uses
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.bi = load i32, ptr %i.c, align 16
  %i.bj = xor i32 %i.bi, 1685021555
  %i.bk = getelementptr i8, ptr %i.c, i64 3
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 6514020
  %i.bn = or i32 %i.bj, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not48 = icmp eq i32 %i.bp, 0
  br i1 %.not48, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.br = call i32 @parse_option(ptr noundef %0, ptr noundef nonnull @.str.621, ptr noundef %i.bq, ptr noundef nonnull @options) #13, !inline_history !184 ; 0 uses
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bs = load i32, ptr %i.c, align 16
  %i.bt = xor i32 %i.bs, 1685021540
  %i.bu = getelementptr i8, ptr %i.c, i64 3
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 %i.bv, 6514020
  %i.bx = or i32 %i.bt, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not50 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  br i1 %.not50, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cb = call i32 @parse_option(ptr noundef %0, ptr noundef nonnull @.str.632, ptr noundef %i.ca, ptr noundef nonnull @options) #13, !inline_history !185 ; 0 uses
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.cc = call i32 @parse_option(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef %i.ca, ptr noundef nonnull @options) #13
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.cf = load ptr, ptr @codec_opts, align 8, !tbaa !85
  %i.cg = load ptr, ptr @format_opts, align 8, !tbaa !85
  store ptr null, ptr @codec_opts, align 8, !tbaa !85
  store ptr null, ptr @format_opts, align 8, !tbaa !85
  %i.ch = call i32 @opt_default(ptr noundef null, ptr noundef nonnull %i.c, ptr noundef %i.ce) #13
  %i.ci = load ptr, ptr %0, align 8, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr @codec_opts, align 8, !tbaa !85
  %i.cl = call i32 @av_dict_copy(ptr noundef nonnull %i.cj, ptr noundef %i.ck, i32 noundef 0) #13 ; 0 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !76
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr @format_opts, align 8, !tbaa !85
  %i.cp = call i32 @av_dict_copy(ptr noundef nonnull %i.cn, ptr noundef %i.co, i32 noundef 0) #13 ; 0 uses
  call void @av_dict_free(ptr noundef nonnull @codec_opts) #13
  call void @av_dict_free(ptr noundef nonnull @format_opts) #13
  store ptr %i.cf, ptr @codec_opts, align 8, !tbaa !85
  store ptr %i.cg, ptr @format_opts, align 8, !tbaa !85
  %i.cq = icmp slt i32 %i.ch, 0
  br i1 %i.cq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !24
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 8, ptr noundef nonnull @.str.631, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %i.cr) #13
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.loopexit

bb.ac:                                            ; preds = %bb.s, %bb.w, %bb.z, %bb.aa, %bb.y, %bb.u, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.cs = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1000, ptr noundef nonnull %i.ac)
  %.not41 = icmp eq ptr %i.cs, null
  br i1 %.not41, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ac, %bb.n, %.thread
  %.2 = phi i32 [ -22, %.thread ], [ 0, %bb.n ], [ 0, %bb.ac ]
  store i32 %i.g, ptr %i.f, align 8, !tbaa !183
  %i.ct = call i32 @fclose(ptr noundef nonnull %i.ac) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.m, %.loopexit, %bb.b
  %.037 = phi i32 [ -22, %bb.b ], [ -2, %bb.l ], [ %.2, %.loopexit ], [ -2, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define internal i32 @opt_data_codec(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @parse_option(ptr noundef %0, ptr noundef nonnull @.str.632, ptr noundef %2, ptr noundef nonnull @options) #13
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @opt_init_hw_device(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.633) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.b = tail call i32 @av_hwdevice_iterate_types(i32 noundef 0) #13 ; 2 uses
  %.not68 = icmp eq i32 %i.b, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.c = phi i32 [ %i.e, %.lr.ph ], [ %i.b, %bb.b ] ; 2 uses
  %i.d = tail call ptr @av_hwdevice_get_type_name(i32 noundef %i.c) #13
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) %i.d) ; 0 uses
  %i.e = tail call i32 @av_hwdevice_iterate_types(i32 noundef %i.c) #13 ; 2 uses
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @hw_device_init_from_string(ptr noundef nonnull %2, ptr noundef null) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.04 = phi i32 [ %i.f, %bb.c ], [ -1414092869, %._crit_edge ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @opt_filter_hw_device(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @filter_hw_device, align 8, !tbaa !188
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.635) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @hw_device_get_by_name(ptr noundef %2) #13 ; 2 uses
  store ptr %i.b, ptr @filter_hw_device, align 8, !tbaa !188
  %.not2 = icmp eq ptr %i.b, null
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.636, ptr noundef %2) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @stream_specifier_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i64 @av_strlcatf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @stream_group_specifier_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @uninit_options(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

.preheader:                                       ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  br label %bb.g

bb.b:                                             ; preds = %bb.a, %bb.f
  %.03643 = phi ptr [ @options, %bb.a ], [ %i.ag, %bb.f ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.03643, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %.fr52 = freeze i32 %i.f                        ; 3 uses
  %i.g = and i32 %.fr52, 256
  %.not37 = icmp eq i32 %i.g, 0
  br i1 %.not37, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.03643, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 11 uses
  %i.k = and i32 %.fr52, 512
  %.not38 = icmp eq i32 %i.k, 0
  br i1 %.not38, label %bb.d, label %.preheader40

.preheader40:                                     ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !14
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader40
  %i.o = and i32 %.fr52, 1024
  %.not39 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.03643, i64 8
  %1 = load i32, ptr %i.p, align 8, !tbaa !195
  %2 = icmp eq i32 %1, 2                          ; 2 uses
  br i1 %.not39, label %.lr.ph.split.us, label %.lr.ph.split.a

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %2, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %.lr.ph.split.us.split.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %3 = load ptr, ptr %i.j, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv63
  tail call void @av_freep(ptr noundef %4) #13
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %indvars.iv63
  %5 = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  tail call void @av_freep(ptr noundef nonnull %5) #13
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.s = load i32, ptr %i.l, align 8, !tbaa !14
  %6 = sext i32 %i.s to i64
  %7 = icmp slt i64 %indvars.iv.next64, %6
  br i1 %7, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !189

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.preheader
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.lr.ph.split.us.split.preheader ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %8 = load ptr, ptr %i.j, align 8, !tbaa !16
  %9 = getelementptr inbounds nuw [72 x i8], ptr %8, i64 %indvars.iv60
  tail call void @av_freep(ptr noundef %9) #13
  %.pre72 = load i32, ptr %i.l, align 8, !tbaa !14
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.t = sext i32 %.pre72 to i64
  %i.u = icmp slt i64 %indvars.iv.next61, %i.t
  br i1 %i.u, label %.lr.ph.split.us.split.preheader, label %._crit_edge, !llvm.loop !190

.lr.ph.split.a:                                   ; preds = %.lr.ph
  br i1 %2, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.a, %.lr.ph.split.split.us
  %indvars.iv57.a = phi i64 [ %indvars.iv.next58, %.lr.ph.split.split.us ], [ 0, %.lr.ph.split.a ] ; 4 uses
  %10 = load ptr, ptr %i.j, align 8, !tbaa !16
  %11 = getelementptr inbounds nuw [72 x i8], ptr %10, i64 %indvars.iv57.a
  tail call void @av_freep(ptr noundef %11) #13
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %indvars.iv57.a
  %12 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @stream_specifier_uninit(ptr noundef nonnull %12) #13
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.x, i64 %indvars.iv57.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.z) #13
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57.a, 1 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !14
  %13 = sext i32 %i.aa to i64
  %14 = icmp slt i64 %indvars.iv.next58, %13
  br i1 %14, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split.us, %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split.us, %.preheader40
  tail call void @av_freep(ptr noundef nonnull %i.j) #13
  store i32 0, ptr %i.l, align 8, !tbaa !14
  br label %bb.f

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split.a, %.lr.ph.split.split.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.split.preheader ], [ 0, %.lr.ph.split.a ] ; 3 uses
  %15 = load ptr, ptr %i.j, align 8, !tbaa !16
  %16 = getelementptr inbounds nuw [72 x i8], ptr %15, i64 %indvars.iv
  tail call void @av_freep(ptr noundef %16) #13
  %17 = load ptr, ptr %i.j, align 8, !tbaa !16
  %18 = getelementptr inbounds nuw [72 x i8], ptr %17, i64 %indvars.iv
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  tail call void @stream_specifier_uninit(ptr noundef nonnull %19) #13
  %.pre = load i32, ptr %i.l, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = sext i32 %.pre to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph.split.split.preheader, label %._crit_edge, !llvm.loop !191

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.03643, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !195
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @av_freep(ptr noundef nonnull %i.j) #13
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.d, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.03643, i64 48 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !192

._crit_edge47:                                    ; preds = %bb.g, %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 568
  tail call void @av_freep(ptr noundef nonnull %i.ai) #13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !86
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %._crit_edge47
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 584
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph46, %bb.g
  %indvars.iv66 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next67, %bb.g ] ; 2 uses
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %indvars.iv66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.ap) #13
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !80
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next67, %i.ar
  br i1 %i.as, label %bb.g, label %._crit_edge47, !llvm.loop !193

._crit_edge51:                                    ; preds = %bb.h, %._crit_edge47
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @av_freep(ptr noundef nonnull %i.at) #13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @av_dict_free(ptr noundef nonnull %i.au) #13
  ret void

bb.h:                                             ; preds = %.lr.ph50, %bb.h
  %indvars.iv69 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next70, %bb.h ] ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv69
  tail call void @av_freep(ptr noundef %i.aw) #13
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !86
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next70, %i.ay
  br i1 %i.az, label %bb.h, label %._crit_edge51, !llvm.loop !194
}

declare void @stream_specifier_uninit(ptr noundef) local_unnamed_addr #1

declare void @av_dict_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #10

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @grow_array(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @av_get_token(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

declare i32 @stream_specifier_parse(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_parse_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @parse_option(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @avio_open2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @opt_default(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @av_dict_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @av_default_item_name(ptr noundef) #1

declare i32 @av_opt_eval_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_asprintf(ptr noundef, ...) local_unnamed_addr #1

declare void @av_free(ptr noundef) local_unnamed_addr #1

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare i64 @av_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @av_hwdevice_iterate_types(i32 noundef) local_unnamed_addr #1

declare ptr @av_hwdevice_get_type_name(i32 noundef) local_unnamed_addr #1

declare i32 @sch_sdp_filename(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_preset_file(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @hw_device_init_from_string(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @hw_device_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { cold nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !23}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS12SpecifierOpt", !10, i64 0}
!12 = !{!"p1 _ZTS9OptionDef", !10, i64 0}
!13 = !{!"SpecifierOptList", !11, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!14 = !{!13, !7, i64 8}
!15 = !{!13, !7, i64 24}
!16 = !{!13, !11, i64 0}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"StreamSpecifier", !7, i64 0, !7, i64 4, !18, i64 8, !7, i64 16, !6, i64 20, !6, i64 21, !7, i64 24, !17, i64 32, !17, i64 40, !17, i64 48}
!20 = !{!"SpecifierOpt", !17, i64 0, !19, i64 8, !6, i64 64}
!21 = !{!20, !17, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!17, !17, i64 0}
!25 = !{!13, !12, i64 16}
!26 = !{!"OptionDef", !17, i64 0, !7, i64 8, !7, i64 12, !6, i64 16, !17, i64 24, !17, i64 32, !6, i64 40}
!27 = !{!26, !17, i64 0}
!28 = !{!26, !7, i64 12}
!29 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!30 = !{!"p1 _ZTS17AVCodecParameters", !10, i64 0}
!31 = !{!"AVRational", !7, i64 0, !7, i64 4}
!32 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!33 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!34 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!35 = !{!"AVPacket", !33, i64 0, !18, i64 8, !18, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !34, i64 48, !7, i64 56, !18, i64 64, !18, i64 72, !10, i64 80, !33, i64 88, !31, i64 96}
!36 = !{!"AVStream", !29, i64 0, !7, i64 8, !7, i64 12, !30, i64 16, !10, i64 24, !31, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !7, i64 64, !7, i64 68, !31, i64 72, !32, i64 80, !31, i64 88, !35, i64 96, !7, i64 200, !31, i64 204, !7, i64 212}
!37 = !{!7, !7, i64 0}
!38 = !{!18, !18, i64 0}
!39 = !{!"double", !6, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"any p2 pointer", !10, i64 0}
!42 = !{!"p2 _ZTS8AVStream", !41, i64 0}
!43 = !{!"ViewSpecifier", !7, i64 0, !7, i64 4}
!44 = !{!"p2 omnipotent char", !41, i64 0}
!45 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!46 = !{!"p2 _ZTS9InputFile", !41, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 _ZTS9InputFile", !10, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"p1 _ZTS15AVFormatContext", !10, i64 0}
!51 = !{!"p2 _ZTS11InputStream", !41, i64 0}
!52 = !{!"p2 _ZTS16InputStreamGroup", !41, i64 0}
!53 = !{!"InputFile", !29, i64 0, !7, i64 8, !50, i64 16, !18, i64 24, !7, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !51, i64 64, !7, i64 72, !52, i64 80, !7, i64 88}
!54 = !{!53, !50, i64 16}
!55 = !{!"p1 _ZTS13AVInputFormat", !10, i64 0}
!56 = !{!"p1 _ZTS14AVOutputFormat", !10, i64 0}
!57 = !{!"p1 _ZTS11AVIOContext", !10, i64 0}
!58 = !{!"p2 _ZTS13AVStreamGroup", !41, i64 0}
!59 = !{!"p2 _ZTS9AVChapter", !41, i64 0}
!60 = !{!"p2 _ZTS9AVProgram", !41, i64 0}
!61 = !{!"AVIOInterruptCB", !10, i64 0, !10, i64 8}
!62 = !{!"AVFormatContext", !29, i64 0, !55, i64 8, !56, i64 16, !10, i64 24, !57, i64 32, !7, i64 40, !7, i64 44, !42, i64 48, !7, i64 56, !58, i64 64, !7, i64 72, !59, i64 80, !17, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !7, i64 120, !7, i64 124, !7, i64 128, !18, i64 136, !18, i64 144, !17, i64 152, !7, i64 160, !7, i64 164, !60, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !32, i64 192, !18, i64 200, !7, i64 208, !7, i64 212, !61, i64 216, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !18, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !18, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !7, i64 368, !45, i64 376, !45, i64 384, !45, i64 392, !45, i64 400, !7, i64 408, !10, i64 416, !10, i64 424, !18, i64 432, !17, i64 440, !10, i64 448, !10, i64 456, !18, i64 464, !17, i64 472}
!63 = !{!62, !55, i64 8}
!64 = !{!"p2 _ZTS10AVCodecTag", !41, i64 0}
!65 = !{!"AVInputFormat", !17, i64 0, !17, i64 8, !7, i64 16, !17, i64 24, !64, i64 32, !29, i64 40, !17, i64 48}
!66 = !{!65, !7, i64 16}
!67 = !{!"p1 _ZTS9Scheduler", !10, i64 0}
!68 = !{!"GlobalOptionsContext", !67, i64 0, !44, i64 8, !7, i64 16}
!69 = !{!68, !67, i64 0}
!70 = !{!68, !7, i64 16}
!71 = !{!68, !44, i64 8}
!72 = !{!"p1 _ZTS11OptionGroup", !10, i64 0}
!73 = !{!"float", !6, i64 0}
!74 = !{!"p1 _ZTS9StreamMap", !10, i64 0}
!75 = !{!"OptionsContext", !72, i64 0, !18, i64 8, !18, i64 16, !7, i64 24, !17, i64 32, !13, i64 40, !13, i64 72, !13, i64 104, !13, i64 136, !13, i64 168, !13, i64 200, !13, i64 232, !13, i64 264, !18, i64 296, !7, i64 304, !7, i64 308, !73, i64 312, !73, i64 316, !39, i64 320, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !13, i64 344, !13, i64 376, !13, i64 408, !13, i64 440, !13, i64 472, !13, i64 504, !13, i64 536, !74, i64 568, !7, i64 576, !44, i64 584, !7, i64 592, !7, i64 596, !18, i64 600, !18, i64 608, !18, i64 616, !73, i64 624, !73, i64 628, !73, i64 632, !7, i64 636, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !32, i64 664, !13, i64 672, !13, i64 704, !13, i64 736, !13, i64 768, !13, i64 800, !13, i64 832, !13, i64 864, !13, i64 896, !13, i64 928, !13, i64 960, !13, i64 992, !13, i64 1024, !13, i64 1056, !13, i64 1088, !13, i64 1120, !13, i64 1152, !13, i64 1184, !13, i64 1216, !13, i64 1248, !13, i64 1280, !13, i64 1312, !13, i64 1344, !13, i64 1376, !13, i64 1408, !13, i64 1440, !13, i64 1472, !13, i64 1504, !13, i64 1536, !13, i64 1568, !13, i64 1600, !13, i64 1632, !13, i64 1664, !13, i64 1696, !13, i64 1728, !13, i64 1760, !13, i64 1792, !13, i64 1824, !13, i64 1856, !13, i64 1888, !13, i64 1920, !13, i64 1952, !13, i64 1984, !13, i64 2016, !13, i64 2048, !13, i64 2080, !13, i64 2112, !13, i64 2144, !13, i64 2176, !13, i64 2208, !7, i64 2240}
!76 = !{!75, !72, i64 0}
!77 = !{!62, !42, i64 48}
!78 = !{!"p1 _ZTS8AVStream", !10, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!75, !7, i64 576}
!81 = !{!75, !74, i64 568}
!82 = !{!53, !7, i64 72}
!83 = !{ptr @opt_video_codec}
!84 = !{ptr @opt_audio_codec}
!85 = !{!32, !32, i64 0}
!86 = !{!75, !7, i64 592}
!87 = !{!75, !44, i64 584}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = !{!36, !7, i64 8}
!91 = distinct !{!91, !23}
!92 = distinct !{!92, !23}
!93 = !{!"AVStreamGroup", !29, i64 0, !10, i64 8, !7, i64 16, !18, i64 24, !7, i64 32, !6, i64 40, !32, i64 48, !7, i64 56, !42, i64 64, !7, i64 72}
!94 = !{!93, !7, i64 16}
!95 = !{!43, !7, i64 0}
!96 = !{!43, !7, i64 4}
!97 = !{!"p1 _ZTS9AVProfile", !10, i64 0}
!98 = !{!"AVCodecDescriptor", !7, i64 0, !7, i64 4, !17, i64 8, !17, i64 16, !7, i64 24, !44, i64 32, !97, i64 40}
!99 = !{!98, !7, i64 0}
!100 = !{!"AVCodec", !17, i64 0, !17, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !6, i64 28, !29, i64 32, !97, i64 40, !17, i64 48}
!101 = !{!100, !17, i64 0}
!102 = !{!98, !17, i64 8}
!103 = !{!100, !7, i64 16}
!104 = !{!45, !45, i64 0}
!105 = distinct !{!105, !23}
!106 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!62, !17, i64 88}
!109 = distinct !{!109, !23}
!110 = distinct !{null}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = !{!"p1 _ZTS14OptionGroupDef", !10, i64 0}
!117 = !{!"p1 _ZTS6Option", !10, i64 0}
!118 = !{!"OptionGroup", !116, i64 0, !17, i64 8, !117, i64 16, !7, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56}
!119 = !{!"p1 _ZTS15OptionGroupList", !10, i64 0}
!120 = !{!"OptionParseContext", !118, i64 0, !119, i64 64, !7, i64 72, !118, i64 80}
!121 = !{!120, !119, i64 64}
!122 = !{!"OptionGroupList", !116, i64 0, !72, i64 8, !7, i64 16}
!123 = !{!122, !7, i64 16}
!124 = !{!122, !72, i64 8}
!125 = !{!75, !18, i64 608}
!126 = !{!75, !18, i64 8}
!127 = !{!75, !18, i64 16}
!128 = !{!75, !18, i64 600}
!129 = !{!75, !18, i64 616}
!130 = !{!75, !7, i64 596}
!131 = !{!75, !7, i64 328}
!132 = !{!75, !7, i64 336}
!133 = !{!75, !7, i64 340}
!134 = !{!73, !73, i64 0}
!135 = !{!118, !17, i64 8}
!136 = !{ptr @dec_create, ptr @ifile_open, ptr @of_open}
!137 = !{!62, !18, i64 96}
!138 = !{!53, !18, i64 40}
!139 = !{!62, !7, i64 44}
!140 = !{!36, !7, i64 68}
!141 = !{!36, !18, i64 40}
!142 = !{!53, !18, i64 56}
!143 = !{!53, !18, i64 24}
!144 = !{!53, !18, i64 48}
!145 = !{!53, !7, i64 32}
!146 = !{!62, !18, i64 200}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
!149 = !{!"StreamMap", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !17, i64 16, !43, i64 24}
!150 = !{!149, !17, i64 16}
!151 = !{!149, !7, i64 12}
!152 = !{!19, !17, i64 48}
!153 = !{!149, !7, i64 4}
!154 = !{!149, !7, i64 8}
!155 = !{!149, !7, i64 0}
!156 = !{!53, !51, i64 64}
!157 = !{!"p1 _ZTS11InputStream", !10, i64 0}
!158 = !{!157, !157, i64 0}
!159 = !{!"p1 _ZTS7Decoder", !10, i64 0}
!160 = !{!"p2 _ZTS11InputFilter", !41, i64 0}
!161 = !{!"InputStream", !29, i64 0, !48, i64 8, !7, i64 16, !78, i64 24, !7, i64 32, !30, i64 40, !159, i64 48, !45, i64 56, !31, i64 64, !7, i64 72, !160, i64 80, !7, i64 88}
!162 = !{!161, !7, i64 32}
!163 = !{!19, !7, i64 4}
!164 = !{!19, !7, i64 0}
!165 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37, i64 12, i64 4, !37, i64 16, i64 4, !37, i64 20, i64 4, !37, i64 24, i64 4, !37, i64 28, i64 4, !37, i64 32, i64 4, !37, i64 40, i64 8, !38, i64 48, i64 8, !24}
!166 = !{!57, !57, i64 0}
!167 = distinct !{!167, !23}
!168 = distinct !{!168, !23}
!169 = !{!36, !30, i64 16}
!170 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!171 = !{!"AVCodecParameters", !7, i64 0, !7, i64 4, !7, i64 8, !17, i64 16, !7, i64 24, !34, i64 32, !7, i64 40, !7, i64 44, !18, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !31, i64 80, !31, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !170, i64 128, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176}
!172 = !{!171, !7, i64 0}
!173 = !{!36, !7, i64 36}
!174 = !{!36, !7, i64 32}
!175 = !{!75, !73, i64 624}
!176 = !{!29, !29, i64 0}
!177 = !{!"tm", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !18, i64 40, !17, i64 48}
!178 = !{!177, !7, i64 8}
!179 = !{!177, !7, i64 4}
!180 = !{!177, !7, i64 0}
!181 = distinct !{!181, !23}
!182 = distinct !{!182, !23}
!183 = !{!75, !7, i64 2240}
!184 = !{ptr @opt_subtitle_codec}
!185 = !{ptr @opt_data_codec}
!186 = distinct !{!186, !23}
!187 = !{!"p1 _ZTS8HWDevice", !10, i64 0}
!188 = !{!187, !187, i64 0}
!189 = distinct !{!189, !23}
!190 = distinct !{!190, !23, !196}
!191 = distinct !{!191, !23, !196}
!192 = distinct !{!192, !23}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
!195 = !{!26, !7, i64 8}
!196 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
