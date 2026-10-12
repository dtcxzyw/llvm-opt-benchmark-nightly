Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_device__cork_stream__pulse:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !141
  call void %i.aw(ptr noundef %i.ay, i32 noundef 1, ptr noundef nonnull @.str.299) #55, !inline_history !142
  %.pre.i30 = load i32, ptr %i.as, align 8, !tbaa !138
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i27
  %i.az = phi i32 [ %i.au, %.lr.ph.i27 ], [ %.pre.i30, %bb.i ] ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next.i31, %i.ba
  br i1 %i.bb, label %.lr.ph.i27, label %._crit_edge.i32, !llvm.loop !0

._crit_edge.i32:                                  ; preds = %bb.j, %bb.h
  %i.bc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aq) #55 ; 0 uses
  br label %ma_log_post.exit

bb.k:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !119
  call void %i.be(ptr noundef nonnull %i.g) #55, !inline_history !97
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !118
  %.not21 = icmp eq i32 %i.bf, 0
  br i1 %.not21, label %ma_device_get_context.exit.i35, label %ma_log_post.exit

ma_device_get_context.exit.i35:                   ; preds = %bb.k
  %i.bg = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %ma_device_get_log.exit37, label %bb.l

bb.l:                                             ; preds = %ma_device_get_context.exit.i35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !275
  br label %ma_device_get_log.exit37

ma_device_get_log.exit37:                         ; preds = %ma_device_get_context.exit.i35, %bb.l
  %.0.i1.i36 = phi ptr [ %i.bj, %bb.l ], [ null, %ma_device_get_context.exit.i35 ]
  %.not22 = icmp eq i32 %2, 0
  %i.bk = select i1 %.not22, ptr @.str.302, ptr @.str.301
  %i.bl = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i1.i36, i32 noundef 1, ptr noundef nonnull @.str.300, ptr noundef nonnull %i.bk) ; 0 uses
  br label %ma_log_post.exit

ma_log_post.exit:                                 ; preds = %ma_device_get_context.exit.i23, %ma_device_get_context.exit.i, %._crit_edge.i32, %ma_device_get_log.exit25, %._crit_edge.i, %ma_device_get_log.exit, %bb.k, %ma_device_get_log.exit37
  %.0 = phi i32 [ -1, %ma_device_get_log.exit37 ], [ 0, %bb.k ], [ -1, %._crit_edge.i ], [ -1, %._crit_edge.i32 ], [ -1, %ma_device_get_log.exit ], [ -1, %ma_device_get_context.exit.i ], [ -1, %ma_device_get_log.exit25 ], [ -1, %ma_device_get_context.exit.i23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @ma_pulse_operation_complete_callback(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) #0 {
bb.a:
  store i32 %1, ptr %2, align 4, !tbaa !118
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ma_context_uninit__alsa(ptr noundef %0) #8 {
ma_context_get_log.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.d = tail call i32 %i.c() #55                 ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.f = tail call i32 @dlclose(ptr noundef %i.e) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.h = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.g) #55 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -51, 1) i32 @ma_context_enumerate_devices__alsa(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #8 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [256 x i8], align 16              ; 17 uses
  %3 = alloca %struct.ma_device_info, align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 3 uses
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #55 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.h = call i32 %i.g(i32 noundef -1, ptr noundef nonnull @.str.373, ptr noundef nonnull %i.b) #55 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #55 ; 0 uses
  %i.k = sub nsw i32 0, %i.h
  %i.l = call fastcc i32 @ma_result_from_errno(i32 noundef %i.k)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !3117
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %ma_does_id_exist_in_list__alsa.exit, %bb.c
  %.089 = phi i32 [ 1, %bb.c ], [ %.392, %ma_does_id_exist_in_list__alsa.exit ] ; 4 uses
  %.084 = phi ptr [ null, %bb.c ], [ %.387, %ma_does_id_exist_in_list__alsa.exit ] ; 8 uses
  %.082 = phi i32 [ 0, %bb.c ], [ %.3, %ma_does_id_exist_in_list__alsa.exit ] ; 9 uses
  %.080 = phi ptr [ %i.m, %bb.c ], [ %i.eg, %ma_does_id_exist_in_list__alsa.exit ] ; 4 uses
  %i.x = load ptr, ptr %.080, align 8, !tbaa !369 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.aq, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.z = call ptr %i.y(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.374) #55 ; 17 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.ab = load ptr, ptr %.080, align 8, !tbaa !369
  %i.ac = call ptr %i.aa(ptr noundef %i.ab, ptr noundef nonnull @.str.375) #55 ; 8 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.ae = load ptr, ptr %.080, align 8, !tbaa !369
  %i.af = call ptr %i.ad(ptr noundef %i.ae, ptr noundef nonnull @.str.376) #55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  br i1 %i.ag, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = call i32 @ma_strcmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.377) ; 0 uses
  %i.ai = call i32 @ma_strcmp(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.378)
  %.not195 = icmp eq i32 %i.ai, 0                 ; 2 uses
  %spec.select116 = select i1 %.not195, i32 2, i32 1
  %i.aj = select i1 %.not195, i32 1, i32 2
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %. = phi i32 [ %i.aj, %bb.f ], [ 2, %bb.e ]
  %.1 = phi i32 [ %spec.select116, %bb.f ], [ 1, %bb.e ]
  %.not104 = icmp eq ptr %i.z, null
  br i1 %.not104, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !119
  %.not105 = icmp eq i32 %i.ak, 0
  br i1 %.not105, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = call i32 @ma_strncpy_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.z, i64 noundef -1) ; 0 uses
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i8 0, ptr %i.c, align 16, !tbaa !119
  %i.am = load i8, ptr %i.z, align 1, !tbaa !119  ; 2 uses
  switch i8 %i.am, label %.lr.ph.i38.i.preheader [
    i8 104, label %bb.j
    i8 0, label %ma_convert_device_name_to_hw_format__alsa.exit.thread
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !119
  %.not26.i.i = icmp eq i8 %i.ao, 119
  br i1 %.not26.i.i, label %bb.k, label %.lr.ph.i38.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !119
  %.not27.i.i = icmp eq i8 %i.aq, 58
  br i1 %.not27.i.i, label %bb.l, label %.lr.ph.i38.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 4 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !119 ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %.lr.ph.i38.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %indvars.iv46.i.i = phi i32 [ %indvars.iv.next47.i.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.au = phi i8 [ %i.ax, %bb.m ], [ %i.as, %bb.l ]
  %i.av = icmp eq i8 %i.au, 44
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !119 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  %indvars.iv.next47.i.i = add i32 %indvars.iv46.i.i, 1
  br i1 %i.ay, label %.lr.ph.i38.i.preheader, label %.lr.ph.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %.not41.i.i = icmp eq i64 %indvars.iv.i.i.i, 0
  br i1 %.not41.i.i, label %.preheader.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %smax.i.i = call i32 @llvm.umax.i32(i32 %indvars.iv46.i.i, i32 1)
  %wide.trip.count.i.i = zext i32 %smax.i.i to i64
  br label %.lr.ph.i.i

bb.o:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !3111

.preheader.i.i:                                   ; preds = %bb.o, %bb.n
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !119 ; 2 uses
  %.not2836.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not2836.i.i, label %ma_convert_device_name_to_hw_format__alsa.exit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !119
  %i.be = add i8 %i.bd, -58
  %or.cond.i.i = icmp ult i8 %i.be, -10
  br i1 %or.cond.i.i, label %.lr.ph.i38.i.preheader, label %bb.o

bb.p:                                             ; preds = %.lr.ph38.i.i
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.next50.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !119 ; 2 uses
  %.not28.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not28.i.i, label %ma_convert_device_name_to_hw_format__alsa.exit, label %.lr.ph38.i.i, !llvm.loop !3112

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %bb.p
  %indvars.iv49.i.i = phi i64 [ %indvars.iv.next50.i.i, %bb.p ], [ 0, %.preheader.i.i ]
  %i.bh = phi i8 [ %i.bg, %bb.p ], [ %i.bb, %.preheader.i.i ]
  %i.bi = add i8 %i.bh, -58
  %or.cond29.i.i = icmp ult i8 %i.bi, -10
  br i1 %or.cond29.i.i, label %.lr.ph.i38.i.preheader, label %bb.p

.lr.ph.i38.i.preheader:                           ; preds = %bb.m, %.lr.ph.i.i, %.lr.ph38.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  br label %.lr.ph.i38.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph.i38.i.preheader, %bb.q
  %indvars.iv.i39.i = phi i64 [ %indvars.iv.next.i40.i, %bb.q ], [ 0, %.lr.ph.i38.i.preheader ] ; 2 uses
  %i.bj = phi i8 [ %i.bm, %bb.q ], [ %i.am, %.lr.ph.i38.i.preheader ]
  %i.bk = icmp eq i8 %i.bj, 58
  br i1 %i.bk, label %.lr.ph.i41.preheader.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i38.i
  %indvars.iv.next.i40.i = add nuw nsw i64 %indvars.iv.i39.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.i40.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !119 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %ma_convert_device_name_to_hw_format__alsa.exit.thread, label %.lr.ph.i38.i

.lr.ph.i41.preheader.i:                           ; preds = %.lr.ph.i38.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i39.i ; 4 uses
  br label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %bb.r, %.lr.ph.i41.preheader.i
  %indvars.iv.i42.i = phi i64 [ %indvars.iv.next.i43.i, %bb.r ], [ 0, %.lr.ph.i41.preheader.i ] ; 3 uses
  %i.bp = phi i8 [ %i.bs, %bb.r ], [ 58, %.lr.ph.i41.preheader.i ]
  %i.bq = icmp eq i8 %i.bp, 44
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i41.i
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i42.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.next.i43.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !119 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.loopexit.i, label %.lr.ph.i41.i

.loopexit.i:                                      ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bv = call i32 @ma_strncpy_s(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull readonly %i.bu, i64 noundef -1) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph.i41.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 %indvars.iv.i42.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.bz = shl i64 %indvars.iv.i42.i, 32
  %sext.i = add i64 %i.bz, -25769803776
  %i.ca = ashr exact i64 %sext.i, 32
  %i.cb = call i32 @ma_strncpy_s(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull readonly %i.by, i64 noundef %i.ca) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit.i
  %.0.i = phi ptr [ @.str.382, %.loopexit.i ], [ %i.bx, %bb.s ]
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !119
  %i.cd = call i32 %i.cc(ptr noundef nonnull %i.a) #55, !inline_history !3113 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %ma_convert_device_name_to_hw_format__alsa.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 104, ptr %i.c, align 16, !tbaa !119
  store i8 119, ptr %i.q, align 1, !tbaa !119
  store i8 58, ptr %i.r, align 2, !tbaa !119
  %i.cf = call i32 @ma_itoa_s(i32 noundef %i.cd, ptr noundef nonnull %i.s, i64 noundef 253, i32 noundef 10)
  %.not35.i = icmp eq i32 %i.cf, 0
  br i1 %.not35.i, label %bb.v, label %ma_convert_device_name_to_hw_format__alsa.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cg = call i32 @ma_strcat_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull @.str.383)
  %.not36.i = icmp eq i32 %i.cg, 0
  br i1 %.not36.i, label %bb.w, label %ma_convert_device_name_to_hw_format__alsa.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ch = call i32 @ma_strcat_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %.0.i)
  %.not37.i = icmp eq i32 %i.ch, 0
  br i1 %.not37.i, label %ma_convert_device_name_to_hw_format__alsa.exit.thread130, label %ma_convert_device_name_to_hw_format__alsa.exit.thread

ma_convert_device_name_to_hw_format__alsa.exit.thread130: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.preheader

ma_convert_device_name_to_hw_format__alsa.exit.thread: ; preds = %bb.q, %bb.v, %bb.w, %bb.u, %bb.t, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.y

ma_convert_device_name_to_hw_format__alsa.exit:   ; preds = %bb.p, %.preheader.i.i
  %i.ci = call i32 @ma_strcpy_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull readonly %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.preheader, label %bb.y

.preheader:                                       ; preds = %ma_convert_device_name_to_hw_format__alsa.exit.thread130, %ma_convert_device_name_to_hw_format__alsa.exit
  br label %bb.x

bb.x:                                             ; preds = %.preheader, %bb.x
  %.075 = phi ptr [ %i.cm, %bb.x ], [ %i.c, %.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.ck, %bb.x ], [ %i.r, %.preheader ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.cl = load i8, ptr %.0, align 1, !tbaa !119   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.075, i64 1
  store i8 %i.cl, ptr %.075, align 1, !tbaa !119
  %.not106 = icmp eq i8 %i.cl, 0
  br i1 %.not106, label %.loopexit156, label %bb.x, !llvm.loop !3114

bb.y:                                             ; preds = %ma_convert_device_name_to_hw_format__alsa.exit.thread, %ma_convert_device_name_to_hw_format__alsa.exit
  %i.cn = call i32 @ma_strncpy_s(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.z, i64 noundef -1) ; 0 uses
  br label %.loopexit156

.loopexit156:                                     ; preds = %bb.x, %bb.y
  %.not.i = icmp eq i32 %.082, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit156
  %wide.trip.count.i = zext i32 %.082 to i64
  br label %.lr.ph.i

bb.z:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !3115

.lr.ph.i:                                         ; preds = %bb.z, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.z ] ; 2 uses
  %i.co = getelementptr inbounds nuw [256 x i8], ptr %.084, i64 %indvars.iv.i
  %i.cp = call i32 @ma_strcmp(ptr noundef readonly %i.co, ptr noundef nonnull readonly %i.c)
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %ma_does_id_exist_in_list__alsa.exit, label %bb.z

.loopexit:                                        ; preds = %bb.z, %.loopexit156
  %i.cr = add i32 %.082, 1                        ; 2 uses
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !135 ; 2 uses
  %.not10.i = icmp eq ptr %i.cs, null
  br i1 %.not10.i, label %ma_does_id_exist_in_list__alsa.exit, label %ma_realloc.exit

ma_realloc.exit:                                  ; preds = %.loopexit
  %i.ct = zext i32 %i.cr to i64
  %i.cu = shl nuw nsw i64 %i.ct, 8
  %i.cv = load ptr, ptr %i.u, align 8, !tbaa !126
  %i.cw = call ptr %i.cs(ptr noundef %.084, i64 noundef %i.cu, ptr noundef %i.cv) #55, !inline_history !296 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %ma_does_id_exist_in_list__alsa.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_realloc.exit
  %i.cy = zext i32 %.082 to i64
  %i.cz = getelementptr inbounds nuw [256 x i8], ptr %i.cw, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cz, ptr noundef nonnull align 16 dereferenceable(256) %i.c, i64 256, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.h, %bb.ab
  %.286 = phi ptr [ %.084, %bb.h ], [ %i.cw, %bb.aa ], [ %.084, %bb.ab ] ; 4 uses
  %.2 = phi i32 [ %.082, %bb.h ], [ %i.cr, %bb.aa ], [ %.082, %bb.ab ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1544) %3, i8 0, i64 1544, i1 false)
  %i.da = call i32 @ma_strncpy_s(ptr noundef nonnull %3, i64 noundef 256, ptr noundef nonnull %i.c, i64 noundef -1) ; 0 uses
  %i.db = call i32 @ma_strcmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.379)
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %i.v, align 8, !tbaa !1154
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not108 = icmp eq ptr %i.ac, null
  br i1 %.not108, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_0
