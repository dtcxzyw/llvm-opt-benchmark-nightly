Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hwcontext?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@av_hwframe_get_buffer:bb.a
  %.1 = phi i32 [ %.0, %bb.g ], [ %i.ac, %bb.l ], [ 0, %bb.m ], [ -22, %bb.i ], [ -38, %bb.h ], [ -12, %bb.j ]
  ret i32 %.1
}

declare ptr @av_frame_alloc() local_unnamed_addr #5

declare void @av_frame_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @av_hwframe_map(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  %.not82 = icmp eq ptr %i.b, null                ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not82
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 4 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !92
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !93
  %i.s = icmp eq i32 %i.d, %i.r
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %.not83 = icmp eq ptr %i.u, null
  br i1 %.not83, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %.not84 = icmp eq ptr %i.z, null
  br i1 %.not84, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.h, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  br label %.thread94

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  %i.ad = tail call i32 @av_frame_replace(ptr noundef nonnull %0, ptr noundef %i.ac) #9
  br label %.thread94

.thread:                                          ; preds = %bb.a
  br i1 %.not, label %.thread98, label %.thread.thread

.thread.thread:                                   ; preds = %bb.f, %bb.e, %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !93
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !53
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.j, label %.thread98

bb.j:                                             ; preds = %.thread.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !94 ; 2 uses
  %.not86 = icmp eq ptr %i.ao, null
  br i1 %.not86, label %.thread98, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.af, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #9 ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.thread94, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not87 = icmp eq i32 %i.ap, -38
  br i1 %.not87, label %..thread98_crit_edge, label %bb.q

..thread98_crit_edge:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %.thread98

.thread98:                                        ; preds = %..thread98_crit_edge, %bb.j, %.thread.thread, %.thread
  %i.ar = phi ptr [ %.pre, %..thread98_crit_edge ], [ %i.b, %bb.j ], [ %i.b, %.thread.thread ], [ %i.b, %.thread ] ; 2 uses
  %.not88 = icmp eq ptr %i.ar, null
  br i1 %.not88, label %.thread94, label %bb.m

bb.m:                                             ; preds = %.thread98
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.av = load i32, ptr %i.au, align 4, !tbaa !93
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !53
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.n, label %.thread94

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !95 ; 2 uses
  %.not89 = icmp eq ptr %i.bb, null
  br i1 %.not89, label %.thread94, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call i32 %i.bb(ptr noundef nonnull %i.at, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) #9 ; 4 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %.thread94, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not90 = icmp eq i32 %i.bc, -38
  br i1 %.not90, label %.thread94, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.5 = phi i32 [ %i.ap, %bb.l ], [ %i.bc, %bb.p ]
  br i1 %.not82, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.bf = icmp eq ptr %i.b, %i.be
  br i1 %i.bf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 858) #9
  tail call void @abort() #10
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.q
  store ptr null, ptr %i.a, align 8, !tbaa !52
  tail call void @av_frame_unref(ptr noundef nonnull %0) #9
  store ptr %i.b, ptr %i.a, align 8, !tbaa !52
  store i32 %i.d, ptr %i.c, align 4, !tbaa !53
  br label %.thread94

.thread94:                                        ; preds = %bb.p, %bb.m, %bb.n, %bb.o, %bb.k, %.thread98, %bb.h, %bb.i, %bb.t
  %.567 = phi i32 [ -38, %.thread98 ], [ %i.ap, %bb.k ], [ -22, %bb.h ], [ %.5, %bb.t ], [ %i.ad, %bb.i ], [ %i.bc, %bb.o ], [ -38, %bb.n ], [ -38, %bb.m ], [ -38, %bb.p ]
  ret i32 %.567
}

; Function Attrs: nounwind uwtable
define noalias ptr @av_hwdevice_hwconfig_alloc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @av_mallocz(i64 noundef %i.f) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @av_hwdevice_get_hwframe_constraints(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 7 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !58
  %.not8 = icmp eq ptr %i.h, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> <i32 0, i32 0, i32 2147483647, i32 2147483647>, ptr %i.i, align 8, !tbaa !37
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.h) #9
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %av_hwframe_constraints_free.exit

av_hwframe_constraints_free.exit:                 ; preds = %bb.c
  tail call void @av_freep(ptr noundef nonnull %i.h) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.m) #9
  call void @av_freep(ptr noundef nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %av_hwframe_constraints_free.exit
  %.0 = phi ptr [ null, %bb.b ], [ null, %av_hwframe_constraints_free.exit ], [ null, %bb.a ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @av_hwframe_constraints_free(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @av_freep(ptr noundef nonnull %i.a) #9
  %i.b = load ptr, ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @av_freep(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @av_hwdevice_ctx_create(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call ptr @av_hwdevice_ctx_alloc(i32 noundef %1) ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !26
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98   ; 2 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 %i.h(ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3, i32 noundef %4) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %av_hwdevice_ctx_init.exit.thread, label %av_hwdevice_ctx_init.exit

av_hwdevice_ctx_init.exit:                        ; preds = %bb.d
  %i.p = tail call i32 %i.o(ptr noundef nonnull %i.k) #9, !inline_history !59 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %av_hwdevice_ctx_init.exit.thread

bb.e:                                             ; preds = %bb.b, %bb.a, %av_hwdevice_ctx_init.exit, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ %i.p, %av_hwdevice_ctx_init.exit ], [ -12, %bb.a ], [ -38, %bb.b ]
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #9
  br label %av_hwdevice_ctx_init.exit.thread

av_hwdevice_ctx_init.exit.thread:                 ; preds = %av_hwdevice_ctx_init.exit, %bb.d, %bb.e
  %storemerge = phi ptr [ null, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %av_hwdevice_ctx_init.exit ]
  %.012 = phi i32 [ %.0, %bb.e ], [ 0, %bb.d ], [ 0, %av_hwdevice_ctx_init.exit ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define noundef i32 @av_hwdevice_ctx_create_derived_opts(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not70 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.03171 = phi ptr [ %i.i, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.03171, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !100
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @av_buffer_ref(ptr noundef nonnull %.03171) #9 ; 3 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !26
  %.not46 = icmp eq ptr %i.g, null
  br i1 %.not46, label %.thread52, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.j = tail call ptr @av_hwdevice_ctx_alloc(i32 noundef %1) ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !26
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %.thread52, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 3 uses
  br i1 %.not70, label %.thread52, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75, %.lr.ph75.split.us
  %.23373.us = phi ptr [ %i.u, %.lr.ph75.split.us ], [ %2, %.lr.ph75 ]
  %i.r = getelementptr inbounds nuw i8, ptr %.23373.us, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101  ; 2 uses
  %.not42.us = icmp eq ptr %i.u, null
  br i1 %.not42.us, label %.thread52, label %.lr.ph75.split.us

.lr.ph75.split:                                   ; preds = %.lr.ph75, %bb.h
  %.23373 = phi ptr [ %i.al, %bb.h ], [ %2, %.lr.ph75 ]
  %i.v = getelementptr inbounds nuw i8, ptr %.23373, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102  ; 2 uses
  %.not43 = icmp eq ptr %i.z, null
  br i1 %.not43, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph75.split
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %i.l, ptr noundef %i.w, ptr noundef %3, i32 noundef %4) #9 ; 2 uses
  switch i32 %i.aa, label %.thread52 [
    i32 0, label %bb.f
    i32 -38, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call ptr @av_buffer_ref(ptr noundef nonnull %2) #9 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !101
  %.not45 = icmp eq ptr %i.ab, null
  br i1 %.not45, label %.thread52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !24  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %.thread, label %av_hwdevice_ctx_init.exit

av_hwdevice_ctx_init.exit:                        ; preds = %bb.g
  %i.ai = tail call i32 %i.ah(ptr noundef nonnull %i.ad) #9, !inline_history !59
  %.fr = freeze i32 %i.ai                         ; 2 uses
  %i.aj = icmp slt i32 %.fr, 0
  br i1 %i.aj, label %.thread52, label %.thread

bb.h:                                             ; preds = %.lr.ph75.split, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101 ; 2 uses
  %.not42 = icmp eq ptr %i.al, null
  br i1 %.not42, label %.thread52, label %.lr.ph75.split, !llvm.loop !99

.thread52:                                        ; preds = %bb.h, %bb.e, %.lr.ph75.split.us, %bb.d, %av_hwdevice_ctx_init.exit, %bb.f, %bb.b, %._crit_edge
  %.5 = phi i32 [ -12, %bb.f ], [ -12, %bb.b ], [ -12, %._crit_edge ], [ %.fr, %av_hwdevice_ctx_init.exit ], [ -38, %.lr.ph75.split.us ], [ -38, %bb.d ], [ %i.aa, %bb.e ], [ -38, %bb.h ]
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #9
  br label %.thread

.thread:                                          ; preds = %bb.b, %av_hwdevice_ctx_init.exit, %bb.g, %.thread52
  %storemerge = phi ptr [ null, %.thread52 ], [ %i.j, %bb.g ], [ %i.j, %av_hwdevice_ctx_init.exit ], [ %i.g, %bb.b ]
  %.035 = phi i32 [ %.5, %.thread52 ], [ 0, %bb.g ], [ 0, %av_hwdevice_ctx_init.exit ], [ 0, %bb.b ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !26
end_hunk_0
