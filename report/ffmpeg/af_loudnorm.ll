Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_loudnorm?download=true
inline.NumInlined: 17
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@config_input:bb.a
  store i32 %i.at, ptr %i.au, align 4, !tbaa !65
  %i.av = sext i32 %i.at to i64
  %i.aw = tail call ptr @av_malloc_array(i64 noundef %i.av, i64 noundef 8) #12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !71
  %.not48 = icmp eq ptr %i.aw, null
  br i1 %.not48, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !61
  %i.az = sext i32 %i.ay to i64
  %i.ba = tail call ptr @av_malloc_array(i64 noundef %i.az, i64 noundef 8) #12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !72
  %.not49 = icmp eq ptr %i.ba, null
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 504
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  store <2 x double> <double f0x3F5F9B153FC15B39, double f0x3F7128D9D79A663E>, ptr %i.bc, align 8, !tbaa !38
  store <2 x double> <double f0x3F812C0F7EAC007E, double f0x3F8FACD4B62E23B8>, ptr %i.bd, align 8, !tbaa !38
  store <2 x double> <double f0x3F9AEC655CCF5B59, double f0x3FA51733BB1FCA28>, ptr %i.be, align 8, !tbaa !38
  store <2 x double> <double f0x3FAE73E6B99F23AC, double f0x3FB4430CEA9D97E8>, ptr %i.bf, align 8, !tbaa !38
  store <2 x double> <double f0x3FB8D963C175ABEB, double f0x3FBC1608953DC51C>, ptr %i.bg, align 8, !tbaa !38
  store <2 x double> <double f0x3FBD4193680F71F3, double f0x3FBC1608953DC51C>, ptr %i.bh, align 8, !tbaa !38
  store <2 x double> <double f0x3FB8D963C175ABEB, double f0x3FB4430CEA9D97E8>, ptr %i.bi, align 8, !tbaa !38
  store <2 x double> <double f0x3FAE73E6B99F23AC, double f0x3FA51733BB1FCA28>, ptr %i.bj, align 8, !tbaa !38
  store <2 x double> <double f0x3F9AEC655CCF5B59, double f0x3F8FACD4B62E23B8>, ptr %i.bk, align 8, !tbaa !38
  store <2 x double> <double f0x3F812C0F7EAC007E, double f0x3F7128D9D79A663E>, ptr %i.bl, align 8, !tbaa !38
  store double f0x3F5F9B153FC15B39, ptr %i.bm, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  store i32 0, ptr %i.bn, align 8, !tbaa !73
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 0, ptr %i.bo, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 0, ptr %i.bp, align 4, !tbaa !66
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !61
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 860
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  store i32 1, ptr %i.bs, align 8, !tbaa !75
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  store i32 0, ptr %i.bt, align 8, !tbaa !76
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !30
  %i.by = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = fdiv nsz <2 x double> %i.bz, splat (double 2.000000e+01) ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %i.cc = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.cb)
  store double %i.cc, ptr %i.bu, align 8, !tbaa !32
  %i.cd = extractelement <2 x double> %i.ca, i64 1
  %i.ce = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.cd)
  store double %i.ce, ptr %i.bw, align 8, !tbaa !30
  %i.cf = load i32, ptr %i.g, align 8, !tbaa !52
  %i.cg = sitofp nsz i32 %i.cf to double
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul nnan nsz <2 x double> %i.cj, <double 1.000000e-02, double 1.000000e-01>
  %i.cl = tail call nsz <2 x double> @llvm.round.v2f64(<2 x double> %i.ck)
  %i.cm = fptosi <2 x double> %i.cl to <2 x i32>  ; 2 uses
  %i.cn = srem <2 x i32> %i.cm, splat (i32 2)
  %i.co = add nsw <2 x i32> %i.cn, %i.cm
  store <2 x i32> %i.co, ptr %i.ch, align 8, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ -12, %bb.g ], [ -12, %bb.f ], [ -12, %bb.b ], [ -12, %bb.a ], [ -12, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_ebur128_init(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_ebur128_set_channel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #4

declare ptr @av_default_item_name(ptr noundef) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_ebur128_loudness_range(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_ebur128_loudness_global(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_ebur128_relative_threshold(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_ebur128_sample_peak(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_fopen_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

declare void @ff_ebur128_destroy(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 7 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 8 uses
  %i.g = alloca double, align 8                   ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 73 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.o = tail call i32 @av_frame_is_writable(ptr noundef %1) #12
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !62
  %i.r = tail call ptr @ff_get_audio_buffer(ptr noundef %i.n, i32 noundef %i.q) #12 ; 3 uses
  %.not345 = icmp eq ptr %i.r, null
  br i1 %.not345, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.r, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0307 = phi ptr [ %i.r, %bb.d ], [ %1, %bb.a ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 608 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %.0307, i64 136
  store i64 %i.u, ptr %i.v, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 616
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.t, ptr noundef nonnull align 8 dereferenceable(232) %i.w, i64 232, i1 false)
  %i.x = load ptr, ptr %1, align 8, !tbaa !64     ; 15 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = load ptr, ptr %.0307, align 8, !tbaa !64 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 8 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 560 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 864 ; 9 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !62
  %i.aj = sext i32 %i.ai to i64
  tail call void @ff_ebur128_add_frames_double(ptr noundef %i.ag, ptr noundef %i.x, i64 noundef %i.aj) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 848 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !24
  switch i32 %i.al, label %bb.ag [
    i32 0, label %bb.f
    i32 3, label %.preheader369
    i32 1, label %bb.o
    i32 2, label %bb.ac
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !52
  %i.ap = sitofp nsz i32 %i.ao to double
  %i.aq = fmul nnan nsz double %i.ap, 3.000000e+00
  %i.ar = tail call nsz double @llvm.round.f64(double %i.aq)
  %i.as = fptosi double %i.ar to i32              ; 2 uses
  %i.at = srem i32 %i.as, 2
  %i.au = add nsw i32 %i.at, %i.as
  %i.av = icmp slt i32 %i.am, %i.au
  br i1 %i.av, label %bb.g, label %.preheader364

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ax = call i32 @ff_ebur128_loudness_global(ptr noundef %i.aw, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !61
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader, label %thread-pre-split.thread567

.lr.ph.preheader:                                 ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.bc = call i32 @ff_ebur128_sample_peak(ptr noundef %i.bb, i32 noundef 0, ptr noundef nonnull %i.f) #12 ; 0 uses
  %i.bd = load double, ptr %i.f, align 8          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !61
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %.lr.ph, label %thread-pre-split.thread567

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0380 = phi double [ %.1, %.lr.ph ], [ %i.bd, %.lr.ph.preheader ] ; 2 uses
  %.0290379 = phi i32 [ %i.bk, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.bg = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.bh = call i32 @ff_ebur128_sample_peak(ptr noundef %i.bg, i32 noundef %.0290379, ptr noundef nonnull %i.f) #12 ; 0 uses
  %i.bi = load double, ptr %i.f, align 8          ; 2 uses
  %i.bj = fcmp nsz ogt double %i.bi, %.0380
  %.1 = select nsz i1 %i.bj, double %i.bi, double %.0380 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %i.bk = add nuw nsw i32 %.0290379, 1            ; 2 uses
  %i.bl = load i32, ptr %i.ay, align 4, !tbaa !61
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph, label %thread-pre-split.thread567, !llvm.loop !94

thread-pre-split.thread567:                       ; preds = %.lr.ph, %bb.g, %.lr.ph.preheader
  %.0.lcssa = phi double [ undef, %bb.g ], [ %i.bd, %.lr.ph.preheader ], [ %.1, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !27
  %i.bp = load double, ptr %i.b, align 8, !tbaa !38
  %i.bq = fsub nsz double %i.bo, %i.bp
  %i.br = fdiv nsz double %i.bq, 2.000000e+01
  %i.bs = call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.br) ; 2 uses
  %i.bt = fmul nsz double %.0.lcssa, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !30 ; 2 uses
  %i.bw = fcmp nsz olt double %i.bt, %i.bv
  %i.bx = fdiv nsz double %i.bv, %.0.lcssa
  %i.by = select nsz i1 %i.bw, double %i.bs, double %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store double %i.by, ptr %i.bz, align 8, !tbaa !32
  store i32 3, ptr %i.ak, align 8, !tbaa !24
  br label %.preheader369

.preheader369:                                    ; preds = %bb.e, %thread-pre-split.thread567
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !62 ; 4 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.preheader368.lr.ph, label %._crit_edge388.split

.preheader368.lr.ph:                              ; preds = %.preheader369
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !61 ; 4 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  %i.ch = getelementptr i8, ptr %i.k, i64 64      ; 7 uses
  %i.ci = sext i32 %i.cf to i64                   ; 3 uses
  br i1 %i.cg, label %.preheader368.preheader, label %._crit_edge388.split

.preheader368.preheader:                          ; preds = %.preheader368.lr.ph
  %wide.trip.count = zext nneg i32 %i.cf to i64   ; 7 uses
  %scevgep807 = getelementptr i8, ptr %i.k, i64 72
  %i.cj = add nsw i32 %i.cc, -1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nuw nsw i64 %i.ci, %i.ck
  %2 = shl nuw nsw i64 %wide.trip.count, 3        ; 2 uses
  %i.cm = add nuw i64 %i.cl, %wide.trip.count
  %i.cn = shl i64 %i.cm, 3
  %scevgep809 = getelementptr i8, ptr %i.z, i64 %i.cn
  %scevgep808 = getelementptr i8, ptr %i.x, i64 %2
  %scevgep809.a = getelementptr i8, ptr %i.z, i64 %2
  %min.iters.check811 = icmp ult i32 %i.cf, 6
  %bound0813 = icmp ult ptr %i.z, %scevgep808
  %bound1814 = icmp ult ptr %i.x, %scevgep809.a
  %found.conflict815 = and i1 %bound0813, %bound1814
  %bound0816 = icmp ult ptr %i.z, %scevgep807
  %bound1817 = icmp ult ptr %i.ch, %scevgep809
  %found.conflict818 = and i1 %bound0816, %bound1817
  %conflict.rdx819 = or i1 %found.conflict815, %found.conflict818
  %n.vec821 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n830 = icmp eq i64 %n.vec821, %wide.trip.count
  %xtraiter865 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod866.not = icmp eq i64 %xtraiter865, 0
  br label %.preheader368

.preheader364:                                    ; preds = %bb.f
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.preheader363.lr.ph, label %bb.h

.preheader363.lr.ph:                              ; preds = %.preheader364
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !61 ; 5 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  %i.cv = sext i32 %i.ct to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 108 ; 2 uses
  %.promoted444 = load i32, ptr %i.cw, align 4, !tbaa !66 ; 2 uses
  br i1 %i.cu, label %.preheader363.us.preheader, label %.preheader363.preheader

.preheader363.preheader:                          ; preds = %.preheader363.lr.ph
  %i.cx = mul i32 %i.cq, %i.ct
  %i.cy = add i32 %.promoted444, %i.cx
  br label %._crit_edge443

.preheader363.us.preheader:                       ; preds = %.preheader363.lr.ph
  %i.cz = sext i32 %.promoted444 to i64           ; 2 uses
  %wide.trip.count510 = zext nneg i32 %i.ct to i64 ; 5 uses
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = add i64 %i.da, %i.ac
  %min.iters.check735 = icmp ult i32 %i.ct, 4
  %i.dc = sub i64 %i.y, %i.db
  %diff.check = icmp ugt i64 %i.dc, -32
  %or.cond832 = select i1 %min.iters.check735, i1 true, i1 %diff.check
  %n.vec738 = and i64 %wide.trip.count510, 2147483644 ; 3 uses
  %cmp.n745 = icmp eq i64 %n.vec738, %wide.trip.count510
  %xtraiter853.a = and i64 %wide.trip.count510, 3 ; 2 uses
  %lcmp.mod854.not.a = icmp eq i64 %xtraiter853.a, 0
  br label %.preheader363.us

.preheader363.us:                                 ; preds = %.preheader363.us.preheader, %._crit_edge439.us
  %indvars.iv512 = phi i64 [ %i.cz, %.preheader363.us.preheader ], [ %indvars.iv.next513, %._crit_edge439.us ] ; 2 uses
  %.0294442.us = phi i32 [ 0, %.preheader363.us.preheader ], [ %i.eb, %._crit_edge439.us ]
  %.0304441.us = phi ptr [ %i.x, %.preheader363.us.preheader ], [ %i.ea, %._crit_edge439.us ] ; 7 uses
  %i.dd = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv512 ; 6 uses
  br i1 %or.cond832, label %scalar.ph734.preheader, label %vector.body739

vector.body739:                                   ; preds = %.preheader363.us, %vector.body739
  %index740 = phi i64 [ %index.next743, %vector.body739 ], [ 0, %.preheader363.us ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %index740 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load741 = load <2 x double>, ptr %i.de, align 8, !tbaa !38
  %wide.load742 = load <2 x double>, ptr %i.df, align 8, !tbaa !38
  %i.dg = getelementptr [8 x i8], ptr %i.dd, i64 %index740 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store <2 x double> %wide.load741, ptr %i.dg, align 8, !tbaa !38
  store <2 x double> %wide.load742, ptr %i.dh, align 8, !tbaa !38
  %index.next743 = add nuw i64 %index740, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next743, %n.vec738
  br i1 %i.di, label %middle.block744, label %vector.body739, !llvm.loop !95

middle.block744:                                  ; preds = %vector.body739
  br i1 %cmp.n745, label %._crit_edge439.us, label %scalar.ph734.preheader

scalar.ph734.preheader:                           ; preds = %.preheader363.us, %middle.block744
  %indvars.iv507.ph = phi i64 [ 0, %.preheader363.us ], [ %n.vec738, %middle.block744 ] ; 3 uses
  br i1 %lcmp.mod854.not.a, label %scalar.ph734.prol.loopexit, label %scalar.ph734.prol

scalar.ph734.prol:                                ; preds = %scalar.ph734.preheader, %scalar.ph734.prol
  %indvars.iv507.prol = phi i64 [ %indvars.iv.next508.prol, %scalar.ph734.prol ], [ %indvars.iv507.ph, %scalar.ph734.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph734.prol ], [ 0, %scalar.ph734.preheader ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv507.prol
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !38
  %i.dl = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv507.prol
  store double %i.dk, ptr %i.dl, align 8, !tbaa !38
  %indvars.iv.next508.prol = add nuw nsw i64 %indvars.iv507.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter853.a
  br i1 %prol.iter.cmp.not, label %scalar.ph734.prol.loopexit, label %scalar.ph734.prol, !llvm.loop !96

scalar.ph734.prol.loopexit:                       ; preds = %scalar.ph734.prol, %scalar.ph734.preheader
  %indvars.iv507.unr = phi i64 [ %indvars.iv507.ph, %scalar.ph734.preheader ], [ %indvars.iv.next508.prol, %scalar.ph734.prol ]
  %i.dm = sub nsw i64 %indvars.iv507.ph, %wide.trip.count510
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge439.us, label %scalar.ph734

scalar.ph734:                                     ; preds = %scalar.ph734.prol.loopexit, %scalar.ph734
  %indvars.iv507 = phi i64 [ %indvars.iv.next508.3, %scalar.ph734 ], [ %indvars.iv507.unr, %scalar.ph734.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv507
  %i.dp = load double, ptr %i.do, align 8, !tbaa !38
  %i.dq = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv507
  store double %i.dp, ptr %i.dq, align 8, !tbaa !38
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv.next508
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !38
  %i.dt = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next508
  store double %i.ds, ptr %i.dt, align 8, !tbaa !38
  %indvars.iv.next508.1 = add nuw nsw i64 %indvars.iv507, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv.next508.1
  %i.dv = load double, ptr %i.du, align 8, !tbaa !38
  %i.dw = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next508.1
  store double %i.dv, ptr %i.dw, align 8, !tbaa !38
  %indvars.iv.next508.2 = add nuw nsw i64 %indvars.iv507, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %indvars.iv.next508.2
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !38
  %i.dz = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv.next508.2
  store double %i.dy, ptr %i.dz, align 8, !tbaa !38
  %indvars.iv.next508.3 = add nuw nsw i64 %indvars.iv507, 4 ; 2 uses
  %exitcond511.not.3 = icmp eq i64 %indvars.iv.next508.3, %wide.trip.count510
  br i1 %exitcond511.not.3, label %._crit_edge439.us, label %scalar.ph734, !llvm.loop !97

._crit_edge439.us:                                ; preds = %scalar.ph734.prol.loopexit, %scalar.ph734, %middle.block744
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0304441.us, i64 %i.cv
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, %i.cv ; 2 uses
  %i.eb = add nuw nsw i32 %.0294442.us, 1         ; 2 uses
  %exitcond515.not = icmp eq i32 %i.eb, %i.cq
  br i1 %exitcond515.not, label %._crit_edge443.loopexit, label %.preheader363.us, !llvm.loop !98

._crit_edge443.loopexit:                          ; preds = %._crit_edge439.us
  %i.ec = trunc nsw i64 %indvars.iv.next513 to i32
  br label %._crit_edge443

._crit_edge443:                                   ; preds = %.preheader363.preheader, %._crit_edge443.loopexit
  %.us-phi446 = phi i32 [ %i.ec, %._crit_edge443.loopexit ], [ %i.cy, %.preheader363.preheader ]
  store i32 %.us-phi446, ptr %i.cw, align 4, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge443, %.preheader364
  %i.ed = load ptr, ptr %i.af, align 8, !tbaa !33
  %i.ee = call i32 @ff_ebur128_loudness_shortterm(ptr noundef %i.ed, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.ef = load double, ptr %i.c, align 8, !tbaa !38 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !29
  %i.ei = fcmp nsz olt double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.k, i64 852 ; 2 uses
  %i.ek = fcmp nsz ugt double %i.ef, -7.000000e+01 ; 2 uses
  br i1 %i.ei, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ej, align 4, !tbaa !141
  br i1 %i.ek, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !27
  %i.en = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.eo = load double, ptr %i.en, align 8, !tbaa !28
  %i.ep = fsub nsz double %i.em, %i.eo
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  store i32 1, ptr %i.ej, align 4, !tbaa !141
  br i1 %i.ek, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !27
  %i.es = fsub nsz double %i.er, %i.ef
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.0287 = phi nsz double [ 0.000000e+00, %bb.i ], [ %i.ep, %bb.j ], [ %i.es, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.et = fdiv nsz double %.0287, 2.000000e+01
  %i.eu = call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.et) ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.ew = insertelement <4 x double> poison, double %i.eu, i64 0
  %i.ex = shufflevector <4 x double> %i.ew, <4 x double> poison, <4 x i32> zeroinitializer ; 7 uses
  store <4 x double> %i.ex, ptr %i.ev, align 8, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store <4 x double> %i.ex, ptr %i.ey, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store <4 x double> %i.ex, ptr %i.ez, align 8, !tbaa !38
  %i.fa = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  store <4 x double> %i.ex, ptr %i.fa, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store <4 x double> %i.ex, ptr %i.fb, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store <4 x double> %i.ex, ptr %i.fc, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  store <4 x double> %i.ex, ptr %i.fd, align 8, !tbaa !38
  %i.fe = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  store double %i.eu, ptr %i.fe, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store double %i.eu, ptr %i.ff, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 536
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !75
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fi ; 6 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !38
  %i.fl = getelementptr inbounds nuw i8, ptr %i.k, i64 528
  store double %i.fk, ptr %i.fl, align 8, !tbaa !142
  %i.fm = getelementptr inbounds nuw i8, ptr %i.k, i64 576 ; 2 uses
  store i32 0, ptr %i.fm, align 8, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %i.k, i64 108 ; 2 uses
  store i32 0, ptr %i.fn, align 4, !tbaa !66
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 580
end_hunk_0
