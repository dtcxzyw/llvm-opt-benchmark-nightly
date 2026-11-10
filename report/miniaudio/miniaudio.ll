Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_context_open_pcm__alsa:bb.a
bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ap = icmp eq i32 %1, 0
  br i1 %i.ap, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %.str.395..str.392 = select i1 %i.c, ptr @.str.395, ptr @.str.392
  %i.aq = call i32 @ma_strcpy_s(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %.str.395..str.392) ; 0 uses
  %i.ar = call i32 @ma_strcat_s(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %6)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !119
  %i.av = call i32 %i.au(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d, i32 noundef %4) #55 ; 2 uses
  %.not44 = icmp eq i32 %i.av, 0
  br i1 %.not44, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.w, %bb.x, %bb.y
  %.055 = phi i32 [ %i.av, %bb.y ], [ -19, %bb.x ], [ -19, %bb.w ]
  %i.aw = call i32 @ma_strcpy_s(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull @.str.389) ; 0 uses
  %i.ax = call i32 @ma_strcat_s(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %6)
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !119
  %i.bb = call i32 %i.ba(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.d, i32 noundef %4) #55
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z, %bb.y
  %.1 = phi i32 [ %i.bb, %bb.z ], [ %.055, %.thread ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %.2 = phi i32 [ %i.al, %bb.t ], [ %.1, %bb.aa ] ; 2 uses
  %i.bc = icmp sgt i32 %.2, -1
  br i1 %i.bc, label %.thread56, label %bb.ac

.thread56:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %.critedge49

bb.ac:                                            ; preds = %bb.ab
  %i.bd = icmp eq ptr %0, null
  br i1 %i.bd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !275
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i = phi ptr [ %i.bf, %bb.ad ], [ null, %bb.ac ]
  %i.bg = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %.0.i, i32 noundef 1, ptr noundef nonnull @.str.399) ; 0 uses
  %i.bh = sub nsw i32 0, %.2
  %i.bi = call fastcc i32 @ma_result_from_errno(i32 noundef %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %bb.af

.critedge49:                                      ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.n, %bb.p, %bb.r, %.thread56
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !1166
  store ptr %i.bj, ptr %5, align 8, !tbaa !1166
  br label %bb.af

ma_context_get_log.exit52:                        ; preds = %bb.l, %bb.r, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !275
  %i.bm = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bl, i32 noundef 1, ptr noundef nonnull @.str.398) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %ma_context_get_log.exit52, %.critedge49
  %.241 = phi i32 [ 0, %.critedge49 ], [ -401, %ma_context_get_log.exit52 ], [ %i.bi, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret i32 %.241
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_context_iterate_rates_and_add_native_data_format__alsa(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = call i32 %i.e(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #55 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119
  %i.i = call i32 %i.h(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #55 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !118
  %i.k = call i32 @llvm.umax.i32(i32 %i.j, i32 8000)
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 384000) ; 3 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !118
  %i.m = load i32, ptr %i.b, align 4, !tbaa !118
  %i.n = call i32 @llvm.umax.i32(i32 %i.m, i32 8000)
  %i.o = call i32 @llvm.umin.i32(i32 %i.n, i32 384000) ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 516 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 520 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ma_context_test_rate_and_add_native_data_format__alsa.exit
  %i.s = phi i32 [ %i.l, %bb.a ], [ %i.aj, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 2 uses
  %i.t = phi i32 [ %i.o, %bb.a ], [ %i.ak, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 3 uses
  %i.u = phi i32 [ %i.l, %bb.a ], [ %i.al, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @g_maStandardSampleRatePriorities, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !118  ; 4 uses
  %.not35 = icmp ult i32 %i.w, %i.u
  %.not36 = icmp ugt i32 %i.w, %i.t
  %or.cond = select i1 %.not35, i1 true, i1 %.not36
  br i1 %or.cond, label %ma_context_test_rate_and_add_native_data_format__alsa.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.p, align 4, !tbaa !178
  %i.y = icmp ult i32 %i.x, 64
  br i1 %i.y, label %bb.d, label %ma_context_test_rate_and_add_native_data_format__alsa.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.aa = call i32 %i.z(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.w, i32 noundef 0) #55, !inline_history !3120
  %i.ab = icmp eq i32 %i.aa, 0
  %.pre = load i32, ptr %i.a, align 4, !tbaa !118 ; 4 uses
  %.pre59 = load i32, ptr %i.b, align 4           ; 2 uses
  br i1 %i.ab, label %bb.e, label %ma_context_test_rate_and_add_native_data_format__alsa.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !178 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ad ; 4 uses
  store i32 %3, ptr %i.ae, align 8, !tbaa !180
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %4, ptr %i.af, align 4, !tbaa !181
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.w, ptr %i.ag, align 8, !tbaa !182
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !183
  %i.ai = add i32 %i.ac, 1
  store i32 %i.ai, ptr %i.p, align 4, !tbaa !178
  br label %ma_context_test_rate_and_add_native_data_format__alsa.exit

ma_context_test_rate_and_add_native_data_format__alsa.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.aj = phi i32 [ %.pre, %bb.e ], [ %.pre, %bb.d ], [ %i.s, %bb.c ], [ %i.s, %bb.b ] ; 4 uses
  %i.ak = phi i32 [ %.pre59, %bb.e ], [ %.pre59, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %bb.b ]
  %i.al = phi i32 [ %.pre, %bb.e ], [ %.pre, %bb.d ], [ %i.u, %bb.c ], [ %i.u, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !3121

bb.f:                                             ; preds = %ma_context_test_rate_and_add_native_data_format__alsa.exit
  switch i32 %i.aj, label %bb.g [
    i32 48000, label %ma_is_standard_sample_rate.exit39
    i32 44100, label %ma_is_standard_sample_rate.exit39
    i32 32000, label %ma_is_standard_sample_rate.exit39
    i32 24000, label %ma_is_standard_sample_rate.exit39
    i32 22050, label %ma_is_standard_sample_rate.exit39
    i32 88200, label %ma_is_standard_sample_rate.exit39
    i32 96000, label %ma_is_standard_sample_rate.exit39
    i32 176400, label %ma_is_standard_sample_rate.exit39
    i32 192000, label %ma_is_standard_sample_rate.exit39
    i32 16000, label %ma_is_standard_sample_rate.exit39
    i32 11025, label %ma_is_standard_sample_rate.exit39
    i32 8000, label %ma_is_standard_sample_rate.exit39
    i32 352800, label %ma_is_standard_sample_rate.exit39
    i32 384000, label %ma_is_standard_sample_rate.exit39
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.p, align 4, !tbaa !178
  %i.an = icmp ult i32 %i.am, 64
  br i1 %i.an, label %bb.h, label %ma_is_standard_sample_rate.exit39

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.ap = call i32 %i.ao(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.aj, i32 noundef 0) #55, !inline_history !3120
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %ma_is_standard_sample_rate.exit39

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.p, align 4, !tbaa !178 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.as ; 4 uses
  store i32 %3, ptr %i.at, align 8, !tbaa !180
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %4, ptr %i.au, align 4, !tbaa !181
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.aj, ptr %i.av, align 8, !tbaa !182
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !183
  %i.ax = add i32 %i.ar, 1
  store i32 %i.ax, ptr %i.p, align 4, !tbaa !178
  br label %ma_is_standard_sample_rate.exit39

ma_is_standard_sample_rate.exit39:                ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.i, %bb.h, %bb.g
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !118 ; 5 uses
  switch i32 %i.ay, label %6 [
    i32 48000, label %ma_is_standard_sample_rate.exit
    i32 44100, label %ma_is_standard_sample_rate.exit
    i32 32000, label %ma_is_standard_sample_rate.exit
    i32 24000, label %ma_is_standard_sample_rate.exit
    i32 22050, label %ma_is_standard_sample_rate.exit
    i32 88200, label %ma_is_standard_sample_rate.exit
    i32 96000, label %ma_is_standard_sample_rate.exit
  ]

6:                                                ; preds = %ma_is_standard_sample_rate.exit39
  switch i32 %i.ay, label %bb.j [
    i32 176400, label %ma_is_standard_sample_rate.exit
    i32 192000, label %ma_is_standard_sample_rate.exit
    i32 16000, label %ma_is_standard_sample_rate.exit
    i32 11025, label %ma_is_standard_sample_rate.exit
    i32 8000, label %ma_is_standard_sample_rate.exit
    i32 352800, label %ma_is_standard_sample_rate.exit
    i32 384000, label %ma_is_standard_sample_rate.exit
  ]

bb.j:                                             ; preds = %6
  %i.az = load i32, ptr %i.a, align 4, !tbaa !118
  %.not34 = icmp eq i32 %i.ay, %i.az
  br i1 %.not34, label %ma_is_standard_sample_rate.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !178
  %i.bb = icmp ult i32 %i.ba, 64
  br i1 %i.bb, label %bb.l, label %ma_is_standard_sample_rate.exit

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !119
  %i.bd = call i32 %i.bc(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.ay, i32 noundef 0) #55, !inline_history !3120
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.m, label %ma_is_standard_sample_rate.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.p, align 4, !tbaa !178 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.bg ; 4 uses
  store i32 %3, ptr %i.bh, align 8, !tbaa !180
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %4, ptr %i.bi, align 4, !tbaa !181
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.ay, ptr %i.bj, align 8, !tbaa !182
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !183
  %i.bl = add i32 %i.bf, 1
  store i32 %i.bl, ptr %i.p, align 4, !tbaa !178
  br label %ma_is_standard_sample_rate.exit

ma_is_standard_sample_rate.exit:                  ; preds = %6, %6, %6, %6, %6, %6, %6, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -401, 1) i32 @ma_device_init_by_type__alsa(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef range(i32 1, 3) %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [254 x i8], align 16              ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !189  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_convert_ma_format_to_alsa_format.ALSAFormats, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !118  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3126
  %.not = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not, i32 0, i32 65536 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3127
  %.not331 = icmp eq i32 %i.p, 0
  %i.q = or disjoint i32 %spec.select, 131072
  %.1294 = select i1 %.not331, i32 %spec.select, i32 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3128
  %.not332 = icmp eq i32 %i.s, 0
  %i.t = or disjoint i32 %.1294, 262144
  %.2295 = select i1 %.not332, i32 %.1294, i32 %i.t
  %i.u = load ptr, ptr %0, align 8, !tbaa !219
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !315
  %i.x = load ptr, ptr %2, align 8, !tbaa !227
  %i.y = call fastcc i32 @ma_context_open_pcm__alsa(ptr noundef %i.u, i32 noundef %i.w, i32 noundef %3, ptr noundef %i.x, i32 noundef %.2295, ptr noundef %i.a) ; 2 uses
  %.not333 = icmp eq i32 %i.y, 0
  br i1 %.not333, label %bb.b, label %ma_log_post.exit

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %0, align 8, !tbaa !219
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 448
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ac = tail call i64 %i.ab() #55               ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 296
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !125 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i, label %ma_device_get_context.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !126
  %i.ai = tail call ptr %i.af(i64 noundef %i.ac, ptr noundef %i.ah) #55, !inline_history !1070 ; 28 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %.ma_device_get_context.exit.i_crit_edge, label %bb.d

.ma_device_get_context.exit.i_crit_edge:          ; preds = %bb.c
  %.pre611 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i

bb.d:                                             ; preds = %bb.c
  %.not8.i = icmp eq i64 %i.ac, 0
  br i1 %.not8.i, label %ma_calloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ac, i1 false)
  br label %ma_calloc.exit

ma_device_get_context.exit.i:                     ; preds = %.ma_device_get_context.exit.i_crit_edge, %bb.b
  %i.aj = phi ptr [ %.pre611, %.ma_device_get_context.exit.i_crit_edge ], [ %i.ad, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 440
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1166
  %i.an = tail call i32 %i.al(ptr noundef %i.am) #55 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ma_log_post.exit, label %ma_device_get_log.exit

ma_device_get_log.exit:                           ; preds = %ma_device_get_context.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !275 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %ma_log_post.exit, label %bb.f

bb.f:                                             ; preds = %ma_device_get_log.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 104 ; 2 uses
  %i.au = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.at) #55 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !138 ; 2 uses
  %.not21.i = icmp eq i32 %i.aw, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %i.ax = phi i32 [ %i.bc, %bb.h ], [ %i.aw, %bb.f ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !140 ; 2 uses
  %.not.i340 = icmp eq ptr %i.az, null
  br i1 %.not.i340, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !141
  tail call void %i.az(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.400) #55, !inline_history !142
  %.pre.i = load i32, ptr %i.av, align 8, !tbaa !138
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.bc = phi i32 [ %i.ax, %.lr.ph.i ], [ %.pre.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next.i, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.at) #55 ; 0 uses
  br label %ma_log_post.exit

ma_calloc.exit:                                   ; preds = %bb.e, %bb.d
  %i.bg = load ptr, ptr %0, align 8, !tbaa !219
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 456
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !119
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !1166 ; 47 uses
  %i.bk = tail call i32 %i.bi(ptr noundef %i.bj, ptr noundef nonnull %i.ai) #55 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = load ptr, ptr %0, align 8, !tbaa !219   ; 4 uses
  br i1 %i.bl, label %bb.i, label %bb.n

bb.i:                                             ; preds = %ma_calloc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132 ; 2 uses
  %.not9.i = icmp eq ptr %i.bo, null
  br i1 %.not9.i, label %ma_device_get_context.exit.i342, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 288
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !126
  tail call void %i.bo(ptr noundef nonnull %i.ai, ptr noundef %i.bq) #55, !inline_history !133
  %.pre610 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i342

ma_device_get_context.exit.i342:                  ; preds = %bb.j, %bb.i
  %i.br = phi ptr [ %.pre610, %bb.j ], [ %i.bm, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 440
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !119
  %i.bu = tail call i32 %i.bt(ptr noundef %i.bj) #55 ; 0 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %ma_log_post.exit353, label %ma_device_get_log.exit344

ma_device_get_log.exit344:                        ; preds = %ma_device_get_context.exit.i342
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !275 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %ma_log_post.exit353, label %bb.k

bb.k:                                             ; preds = %ma_device_get_log.exit344
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  %i.cb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ca) #55 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !138 ; 2 uses
  %.not21.i345 = icmp eq i32 %i.cd, 0
  br i1 %.not21.i345, label %._crit_edge.i351, label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %bb.k, %bb.m
  %i.ce = phi i32 [ %i.cj, %bb.m ], [ %i.cd, %bb.k ]
  %indvars.iv.i347 = phi i64 [ %indvars.iv.next.i350, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv.i347 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !140 ; 2 uses
  %.not.i348 = icmp eq ptr %i.cg, null
  br i1 %.not.i348, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i346
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !141
  tail call void %i.cg(ptr noundef %i.ci, i32 noundef 1, ptr noundef nonnull @.str.388) #55, !inline_history !142
  %.pre.i349 = load i32, ptr %i.cc, align 8, !tbaa !138
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i346
  %i.cj = phi i32 [ %i.ce, %.lr.ph.i346 ], [ %.pre.i349, %bb.l ] ; 2 uses
  %indvars.iv.next.i350 = add nuw nsw i64 %indvars.iv.i347, 1 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i350, %i.ck
  br i1 %i.cl, label %.lr.ph.i346, label %._crit_edge.i351, !llvm.loop !0

._crit_edge.i351:                                 ; preds = %bb.m, %bb.k
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ca) #55 ; 0 uses
  br label %ma_log_post.exit353

ma_log_post.exit353:                              ; preds = %ma_device_get_context.exit.i342, %ma_device_get_log.exit344, %._crit_edge.i351
  %i.cn = sub nsw i32 0, %i.bk
end_hunk_0
