Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ptl_base_fns?download=true
inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pmix_ptl_base_complete_connection:bb.a
  fence release
  %i.be = tail call i32 @event_add(ptr noundef nonnull %i.az, ptr noundef null) #19 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 392), align 8, !tbaa !95
  %i.bh = load i32, ptr %i.aw, align 4, !tbaa !147
  %i.bi = tail call i32 @pmix_event_assign(ptr noundef nonnull %i.bf, ptr noundef %i.bg, i32 noundef %i.bh, i16 noundef signext 20, ptr noundef nonnull @pmix_ptl_base_send_handler, ptr noundef nonnull %0) #19 ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.bj, align 8, !tbaa !161
  ret void
}

declare i32 @pmix_ptl_base_set_nonblocking(i32 noundef) local_unnamed_addr #5

declare void @pmix_ptl_base_recv_handler(i32 noundef, i16 noundef signext, ptr noundef) #5

declare void @pmix_ptl_base_send_handler(i32 noundef, i16 noundef signext, ptr noundef) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define zeroext range(i8 0, 11) i8 @pmix_ptl_base_set_flag(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 328), align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 6 uses
  %i.d = and i32 %i.c, 268435456
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not25 = icmp eq i32 %i.e, 0
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #20 ; 3 uses
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.f, 13
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.h = icmp ne i64 %i.f, 0
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 260), align 4
  %i.j = icmp ne i32 %i.i, -4
  %or.cond = select i1 %i.h, i1 %i.j, i1 false    ; 2 uses
  %i.k = add i64 %i.f, 13
  %spec.select = select i1 %or.cond, i8 7, i8 6
  %spec.select27 = select i1 %or.cond, i64 %i.k, i64 8
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %.not20 = icmp sgt i32 %i.c, -1
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #20
  %i.m = add i64 %i.l, 13
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.n = and i32 %i.c, 5
  %or.cond26 = icmp eq i32 %i.n, 1
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #20 ; 5 uses
  br i1 %or.cond26, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %i.c, 8
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = add i64 %i.o, 13
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.r = add i64 %i.o, 5
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.s = and i32 %i.c, 1
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = add i64 %i.o, 13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.u = icmp ne i64 %i.o, 0
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 260), align 4
  %i.w = icmp ne i32 %i.v, -4
  %or.cond3 = select i1 %i.u, i1 %i.w, i1 false   ; 2 uses
  %i.x = add i64 %i.o, 13
  %spec.select28 = select i1 %or.cond3, i8 4, i8 3
  %spec.select29 = select i1 %or.cond3, i64 %i.x, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d, %bb.f, %bb.l, %bb.i, %bb.j, %bb.c
  %.017 = phi i8 [ 8, %bb.c ], [ 9, %bb.i ], [ 0, %bb.j ], [ 10, %bb.f ], [ 5, %bb.l ], [ %spec.select28, %bb.m ], [ %spec.select, %bb.d ]
  %.0 = phi i64 [ %i.g, %bb.c ], [ %i.q, %bb.i ], [ %i.r, %bb.j ], [ %i.m, %bb.f ], [ %i.t, %bb.l ], [ %spec.select29, %bb.m ], [ %spec.select27, %bb.d ]
  %i.y = load i64, ptr %0, align 8, !tbaa !123
  %i.z = add i64 %i.y, %.0
  store i64 %i.z, ptr %0, align 8, !tbaa !123
  ret i8 %.017
}

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_ptl_base_set_timeout(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !147
  %i.c = tail call i32 @getsockopt(i32 noundef %i.b, i32 noundef 1, i32 noundef 20, ptr noundef %1, ptr noundef %2) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base, i64 1064), align 8, !tbaa !148
  %i.e = sext i32 %i.d to i64
  store i64 %i.e, ptr %4, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !94
  %i.g = load i32, ptr %i.a, align 4, !tbaa !147
  %i.h = call i32 @setsockopt(i32 noundef %i.g, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %4, i32 noundef 16) #19
  %.not6 = icmp eq i32 %i.h, 0
  br i1 %.not6, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.a
  store i8 0, ptr %3, align 1, !tbaa !162
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @pmix_ptl_base_setup_socket(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pmix_ptl_base_client_handshake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  switch i32 %1, label %bb.i [
    i32 -14, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !147
  %i.j = tail call i32 %i.g(i32 noundef %i.i) #19 ; 2 uses
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_ptl_base_framework, i64 76), align 4, !tbaa !37 ; 3 uses
  %or.cond = icmp ult i32 %i.k, 64
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.k, ptr noundef nonnull @.str.47) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.r = load i32, ptr %i.q, align 4, !tbaa !147
  %i.s = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.r, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 2 uses
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.a, align 4, !tbaa !81
  %i.u = call noundef i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 384), align 8, !tbaa !151
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.1.ph = phi i32 [ 0, %bb.g ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.b
  %.1 = phi i32 [ %i.j, %bb.b ], [ %1, %bb.a ], [ %.1.ph, %bb.h ]
  ret i32 %.1
}

declare i32 @pmix_ptl_base_recv_blocking(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @pmix_ptl_base_tool_handshake(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.f = load i8, ptr %i.e, align 1, !tbaa !124
  switch i8 %i.f, label %bb.f [
    i8 3, label %bb.c
    i8 6, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !147
  %i.i = tail call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.h, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4), i64 noundef 256) #19 ; 2 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 259), align 1, !tbaa !31
  %.not67 = icmp eq i32 %i.i, 0
  br i1 %.not67, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.j = load i32, ptr %i.g, align 4, !tbaa !147
  %i.k = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.j, ptr noundef nonnull %i.b, i64 noundef 4) #19 ; 2 uses
  %.not68 = icmp eq i32 %i.k, 0
  br i1 %.not68, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.l = load i32, ptr %i.b, align 4, !tbaa !81
  %i.m = call noundef i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 260), align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ae

bb.f:                                             ; preds = %.thread, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_rank_info_t_class, i64 56), align 8, !tbaa !104
  %i.r = call noalias noundef ptr @malloc(i64 noundef %i.q) #22 ; 8 uses
  %i.s = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !81
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_rank_info_t_class, i64 32), align 8, !tbaa !82
  %.not.i = icmp eq i32 %i.s, %i.t
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_rank_info_t_class) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not22.i = icmp eq ptr %i.r, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @pthread_mutex_init(ptr noundef nonnull %i.r, ptr noundef null) #19 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @pmix_rank_info_t_class, ptr %i.v, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i32 1, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_rank_info_t_class, i64 40), align 8, !tbaa !86 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !87  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aa, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %i.ab = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.aa, %bb.j ]
  %.07.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %i.z, %bb.j ]
  call void %i.ab(ptr noundef nonnull %i.r) #19, !inline_history !105
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !89

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.i, %bb.j
  store ptr %i.r, ptr %i.n, align 8, !tbaa !154
  br label %bb.k

bb.k:                                             ; preds = %pmix_obj_new_tma.exit, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_namespace_t_class, i64 56), align 8, !tbaa !104
  %i.ai = call noalias noundef ptr @malloc(i64 noundef %i.ah) #22 ; 8 uses
  %i.aj = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !81
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_namespace_t_class, i64 32), align 8, !tbaa !82
  %.not.i76 = icmp eq i32 %i.aj, %i.ak
  br i1 %.not.i76, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @pmix_class_initialize(ptr noundef nonnull @pmix_namespace_t_class) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not22.i77 = icmp eq ptr %i.ai, null
  br i1 %.not22.i77, label %pmix_obj_new_tma.exit82, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = call i32 @pthread_mutex_init(ptr noundef nonnull %i.ai, ptr noundef null) #19 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr @pmix_namespace_t_class, ptr %i.am, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store i32 1, ptr %i.an, align 8, !tbaa !85
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_namespace_t_class, i64 40), align 8, !tbaa !86 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87 ; 2 uses
  %.not6.i.i78 = icmp eq ptr %i.ar, null
  br i1 %.not6.i.i78, label %pmix_obj_new_tma.exit82, label %.lr.ph.i.i79

.lr.ph.i.i79:                                     ; preds = %bb.o, %.lr.ph.i.i79
  %i.as = phi ptr [ %i.au, %.lr.ph.i.i79 ], [ %i.ar, %bb.o ]
  %.07.i.i80 = phi ptr [ %i.at, %.lr.ph.i.i79 ], [ %i.aq, %bb.o ]
  call void %i.as(ptr noundef nonnull %i.ai) #19, !inline_history !105
  %i.at = getelementptr inbounds nuw i8, ptr %.07.i.i80, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !87 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.au, null
  br i1 %.not.i.i81, label %pmix_obj_new_tma.exit82, label %.lr.ph.i.i79, !llvm.loop !89

pmix_obj_new_tma.exit82:                          ; preds = %.lr.ph.i.i79, %bb.n, %bb.o
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %pmix_obj_new_tma.exit82
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !147
  %i.ax = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.aw, ptr noundef nonnull %i.a, i64 noundef 256) #19 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.ay, align 1, !tbaa !31
  %.not69 = icmp eq i32 %i.ax, 0
  br i1 %.not69, label %bb.q, label %bb.ae

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.az = load i32, ptr %i.av, align 4, !tbaa !147
  %i.ba = call i32 @pmix_ptl_base_recv_blocking(i32 noundef %i.az, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 2 uses
  %.not70 = icmp eq i32 %i.ba, 0
  br i1 %.not70, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.ae

bb.s:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.c, align 4, !tbaa !81
  %i.bc = call noundef i32 @llvm.bswap.i32(i32 %i.bb) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !155 ; 2 uses
  %.not71 = icmp eq ptr %i.bf, null
  br i1 %.not71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bf) #19
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !57
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = phi ptr [ %.pre, %bb.t ], [ %i.bd, %bb.s ]
  %i.bh = call noalias ptr @strdup(ptr noundef nonnull %i.a) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !155
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !154 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !156 ; 2 uses
  %.not72 = icmp eq ptr %i.bl, null
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.bl) #19
  %.pre93 = load ptr, ptr %i.n, align 8, !tbaa !154
  br label %bb.w
end_hunk_0
