Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/decode?download=true
inline.NumInlined: 66
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_reget_buffer:bb.a
  br i1 %.not58.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread67.i
  %i.ak = tail call i32 @av_frame_is_writable(ptr noundef nonnull %1) #11
  %.not59.i = icmp eq i32 %i.ak, 0
  br i1 %.not59.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread67.i
  %i.al = tail call i32 @ff_decode_frame_props(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %reget_buffer_internal.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !55
  store <2 x ptr> %i.ap, ptr %i.b, align 16, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !55
  store <2 x ptr> %i.at, ptr %i.ar, align 16, !tbaa !55
  store <4 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !55
  tail call void @av_frame_unref(ptr noundef nonnull %1) #11
  %i.au = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !93
  %i.az = load i32, ptr %i.o, align 4, !tbaa !94
  call void @av_image_copy(ptr noundef nonnull %1, ptr noundef nonnull %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.az) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @av_buffer_unref(ptr noundef nonnull %i.b) #11
  call void @av_buffer_unref(ptr noundef nonnull %i.ao) #11
  call void @av_buffer_unref(ptr noundef nonnull %i.ar) #11
  call void @av_buffer_unref(ptr noundef nonnull %i.as) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %reget_buffer_internal.exit

reget_buffer_internal.exit:                       ; preds = %.thread.i, %bb.h, %bb.k
  %.053.i = phi i32 [ %i.al, %bb.h ], [ %i.au, %bb.k ], [ %i.ag, %.thread.i ] ; 2 uses
  %i.ba = icmp slt i32 %.053.i, 0
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %reget_buffer_internal.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %reget_buffer_internal.exit
  ret i32 %.053.i
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_progress_frame_alloc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.e = tail call ptr @av_refstruct_pool_get(ptr noundef %i.d) #11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !256
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !259
  store ptr %i.h, ptr %1, align 8, !tbaa !262
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

declare ptr @av_refstruct_pool_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_progress_frame_get_buffer(ptr noundef %0, ptr noundef initializes((8, 16)) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.e = tail call ptr @av_refstruct_pool_get(ptr noundef %i.d) #11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !256
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ff_progress_frame_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !259  ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !262
  %i.i = tail call i32 @ff_thread_get_buffer(ptr noundef nonnull %0, ptr noundef %i.h, i32 noundef %2) #11 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %ff_progress_frame_alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !262
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.f) #11
  br label %ff_progress_frame_alloc.exit.thread

ff_progress_frame_alloc.exit.thread:              ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ %i.i, %bb.c ], [ -12, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_progress_frame_ref(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %i.a, ptr %0, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !256
  %i.d = tail call ptr @av_refstruct_ref(ptr noundef %i.c) #11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !256
  ret void
}

declare ptr @av_refstruct_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_progress_frame_unref(ptr noundef initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !262
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_progress_frame_replace(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.b) #11
  %i.c = load ptr, ptr %1, align 8, !tbaa !262    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !262
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !256
  %i.f = tail call ptr @av_refstruct_ref(ptr noundef %i.e) #11
  store ptr %i.f, ptr %i.b, align 8, !tbaa !256
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_progress_frame_report(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256
  tail call void @ff_thread_progress_report(ptr noundef %i.b, i32 noundef %1) #11
  ret void
}

declare void @ff_thread_progress_report(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ff_progress_frame_await(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256
  tail call void @ff_thread_progress_await(ptr noundef %i.b, i32 noundef %1) #11
  ret void
}

declare void @ff_thread_progress_await(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define i32 @ff_decode_preinit(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 156 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !123
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 2, ptr %i.j, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.d, align 4, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @av_freep(ptr noundef nonnull %i.n) #11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i8, ptr %i.q, align 4, !tbaa !263
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !250
  %or.cond108 = icmp ugt i32 %i.u, %i.s
  br i1 %or.cond108, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.24, i32 noundef %i.s) #11
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i8, ptr %i.w, align 4, !tbaa !263
  %i.y = zext i8 %i.x to i32
  store i32 %i.y, ptr %i.t, align 8, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !118 ; 2 uses
  %.not96 = icmp eq ptr %i.aa, null
  br i1 %.not96, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !92
  %.not97 = icmp eq i32 %i.ac, 3
  br i1 %.not97, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.25) #11
  br label %bb.ai

bb.i:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !122 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !123
  %i.ag = and i32 %i.af, 65536
  %.not98 = icmp eq i32 %i.ag, 0
  br i1 %.not98, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !264
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.26, ptr noundef %i.ai) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i32 -1, ptr %i.aj, align 8, !tbaa !116
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !116
  switch i32 %i.al, label %bb.n [
    i32 0, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %bb.k
  store i32 1, ptr %i.ak, align 8, !tbaa !116
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.am = tail call noalias ptr @iconv_open(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.aa) #11 ; 2 uses
  %.not99 = icmp eq ptr %i.am, inttoptr (i64 -1 to ptr)
  br i1 %.not99, label %.thread110, label %bb.m

.thread110:                                       ; preds = %bb.l
  %i.an = tail call ptr @__errno_location() #13
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !68
  %i.ap = sub nsw i32 0, %i.ao
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !118
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.28, ptr noundef %i.aq) #11
  br label %bb.ai

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call i32 @iconv_close(ptr noundef %i.am) #11 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.j, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %1, align 8, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 -9223372036854775808, ptr %i.at, align 8, !tbaa !97
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !110
  %i.aw = and i32 %i.av, 8192
  %.not100 = icmp eq i32 %i.aw, 0
  br i1 %.not100, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !265
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.29) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !83
  %i.bd = and i32 %i.bc, 268435456
  %.not101 = icmp eq i32 %i.bd, 0
  br i1 %.not101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !266
  %i.bg = or i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !266
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !267 ; 2 uses
  switch i32 %i.bi, label %.lr.ph127 [
    i32 1, label %bb.t
    i32 0, label %.thread115
  ]

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !268
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !68
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.u, label %.lr.ph127

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i64 -1, ptr %i.bn, align 8, !tbaa !269
  br label %.thread115

.lr.ph127:                                        ; preds = %bb.s, %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !268
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %wide.trip.count = zext i32 %i.bi to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph127, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !68 ; 3 uses
  %or.cond = icmp ugt i32 %i.bs, 42
  br i1 %or.cond, label %.thread117, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.bt = load i32, ptr @ff_sd_global_map, align 4, !tbaa !202 ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, 42
  br i1 %i.bu, label %._crit_edge, label %.lr.ph

.thread117:                                       ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.bs) #11
  br label %bb.ai

.lr.ph:                                           ; preds = %.preheader, %bb.y
  %i.bv = phi i32 [ %i.ci, %bb.y ], [ %i.bt, %.preheader ]
  %i.bw = phi ptr [ %i.ch, %bb.y ], [ @ff_sd_global_map, %.preheader ]
  %.0123 = phi i32 [ %i.cf, %bb.y ], [ 0, %.preheader ]
  %.082122 = phi i32 [ %.1, %bb.y ], [ %i.bs, %.preheader ] ; 2 uses
  %i.bx = icmp eq i32 %i.bv, %.082122
  br i1 %i.bx, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !204 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 63
  br i1 %i.ca, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = zext nneg i32 %i.bz to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = load i64, ptr %i.bq, align 8, !tbaa !269
  %i.ce = or i64 %i.cd, %i.cc
  store i64 %i.ce, ptr %i.bq, align 8, !tbaa !269
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.x
  %.1 = phi i32 [ %i.bz, %bb.x ], [ %.082122, %.lr.ph ]
  %i.cf = add i32 %.0123, 1                       ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @ff_sd_global_map, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !202 ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, 42
  br i1 %i.cj, label %._crit_edge, label %.lr.ph, !llvm.loop !270

._crit_edge:                                      ; preds = %bb.y, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread115, label %bb.v, !llvm.loop !271

bb.z:                                             ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.31) #11
  br label %bb.ai

.thread115:                                       ; preds = %._crit_edge, %bb.s, %bb.u
  %i.ck = tail call ptr @av_packet_alloc() #11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !66
  %i.cm = tail call ptr @av_packet_alloc() #11    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !39
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !66
  %.not103 = icmp eq ptr %i.co, null
  %.not104 = icmp eq ptr %i.cm, null
  %or.cond109 = select i1 %.not103, i1 true, i1 %.not104
  br i1 %or.cond109, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %.thread115
  %i.cp = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = and i32 %i.cr, 64
  %.not105 = icmp eq i32 %i.cs, 0
  br i1 %.not105, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = tail call ptr @av_refstruct_pool_alloc_ext_c(i64 noundef 104, i32 noundef 131072, ptr nonnull %0, ptr noundef nonnull @progress_frame_pool_init_cb, ptr noundef nonnull @progress_frame_pool_reset_cb, ptr noundef nonnull @progress_frame_pool_free_entry_cb, ptr noundef null) #11 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !255
  %.not106 = icmp eq ptr %i.ct, null
  br i1 %.not106, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 5 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %bb.ad, label %decode_bsfs_init.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cy = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 120 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !272
  %i.db = tail call i32 @av_bsf_list_parse_str(ptr noundef %i.da, ptr noundef nonnull %i.cw) #11 ; 3 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.de = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %i.db, ptr noundef nonnull %i.a, i64 noundef 64) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.61, ptr noundef %i.dd, ptr noundef nonnull %i.a) #11
  %.not22.i = icmp eq i32 %i.db, -12
  %spec.store.select.i = select i1 %.not22.i, i32 -12, i32 -558323010
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !37 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store i32 1, ptr %2, align 8, !tbaa !68
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  store i32 90000, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !273
  %i.di = tail call i32 @avcodec_parameters_from_context(ptr noundef %i.dh, ptr noundef nonnull %0) #11 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !37
  %i.dl = tail call i32 @av_bsf_init(ptr noundef %i.dk) #11 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.ah, label %decode_bsfs_init.exit.thread

decode_bsfs_init.exit.thread:                     ; preds = %bb.ac, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.018.i = phi i32 [ %spec.store.select.i, %bb.ae ], [ %i.di, %bb.af ], [ %i.dl, %bb.ag ]
  call void @av_bsf_free(ptr noundef nonnull %i.cw) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.z, %bb.ah, %decode_bsfs_init.exit.thread, %.thread117, %.thread110, %bb.ab, %.thread115, %bb.h
  %.6 = phi i32 [ -22, %bb.h ], [ -12, %bb.ab ], [ -22, %.thread117 ], [ -12, %.thread115 ], [ %i.ap, %.thread110 ], [ -558323010, %bb.z ], [ %.018.i, %bb.ah ], [ 0, %decode_bsfs_init.exit.thread ]
  ret i32 %.6
}

declare noalias ptr @iconv_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @iconv_close(ptr noundef) local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @progress_frame_pool_init_cb(ptr nofree readonly captures(none) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %i.c = and i32 %i.b, 1
  %i.d = tail call i32 @ff_thread_progress_init(ptr noundef %1, i32 noundef %i.c) #11 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @av_frame_alloc() #11      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.f, ptr %i.g, align 8, !tbaa !259
  %.not = icmp eq ptr %i.f, null
  %. = select i1 %.not, i32 -12, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @progress_frame_pool_reset_cb(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) initializes((0, 4)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not.i, i32 2147483647, i32 -1
  store i32 %i.c, ptr %1, align 4, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !259
  tail call void @av_frame_unref(ptr noundef %i.e) #11
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @progress_frame_pool_free_entry_cb(ptr nofree readnone captures(none) %0, ptr noundef %1) #6 {
bb.a:
  tail call void @ff_thread_progress_destroy(ptr noundef %1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @av_frame_free(ptr noundef nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_frame_new_side_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.e = load i32, ptr %i.b, align 8, !tbaa !68
  %i.f = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.d, i32 noundef %i.e, i32 noundef %2) #11
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269
  %i.i = zext nneg i32 %2 to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.h, %i.j
  %.not9.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i, label %bb.c, label %side_data_pref.exit

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_side_data_remove(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2) #11
  br label %bb.e

side_data_pref.exit:                              ; preds = %bb.b
  %.not16 = icmp eq ptr %4, null
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %side_data_pref.exit
  store ptr null, ptr %4, align 8, !tbaa !226
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.l = tail call ptr @av_frame_new_side_data(ptr noundef nonnull %1, i32 noundef %2, i64 noundef %3) #11 ; 2 uses
  %.not14 = icmp eq ptr %4, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.l, ptr %4, align 8, !tbaa !226
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not15 = icmp eq ptr %i.l, null
  %i.m = select i1 %.not15, i32 -12, i32 0
  br label %bb.h

bb.h:                                             ; preds = %side_data_pref.exit, %bb.d, %bb.g
  %.0 = phi i32 [ %i.m, %bb.g ], [ 0, %bb.d ], [ 0, %side_data_pref.exit ]
  ret i32 %.0
}

declare ptr @av_frame_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_frame_new_side_data_from_buf_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.b = load ptr, ptr %1, align 8, !tbaa !278
  %i.c = load i32, ptr %2, align 4, !tbaa !68
  %i.d = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %3) #11
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.f = load i64, ptr %i.e, align 8, !tbaa !269
  %i.g = zext nneg i32 %3 to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.f, %i.h
  %.not9.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i, label %bb.c, label %side_data_pref.exit

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_side_data_remove(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = tail call ptr @av_frame_side_data_add(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i32 noundef 0) #11
  %.not9 = icmp eq ptr %i.j, null
  %spec.select = select i1 %.not9, i32 -12, i32 0
  br label %side_data_pref.exit

side_data_pref.exit:                              ; preds = %bb.b, %bb.d
  %.0 = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.b ]
  tail call void @av_buffer_unref(ptr noundef %4) #11
  ret i32 %.0
}

declare ptr @av_frame_side_data_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_frame_new_side_data_from_buf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.e = load i32, ptr %i.b, align 8, !tbaa !68
  %i.f = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.d, i32 noundef %i.e, i32 noundef %2) #11
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269
  %i.i = zext nneg i32 %2 to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.h, %i.j
  %.not9.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i, label %bb.c, label %ff_frame_new_side_data_from_buf_ext.exit

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_side_data_remove(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %2) #11
  br label %bb.d
end_hunk_0
begin_hunk_1_@ff_decode_content_light_new_ext:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.d = load ptr, ptr %1, align 8, !tbaa !278
  %i.e = load i32, ptr %2, align 4, !tbaa !68
  %i.f = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.d, i32 noundef %i.e, i32 noundef 14) #11
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269
  %i.i = and i64 %i.h, 16384
  %.not9.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i, label %bb.c, label %side_data_pref.exit

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_side_data_remove(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 14) #11
  br label %bb.d

side_data_pref.exit:                              ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !281
  br label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = call ptr @av_content_light_metadata_alloc(ptr noundef nonnull %i.b) #11 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !281
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !43
  %i.l = call ptr @av_buffer_create(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef null, ptr noundef null, i32 noundef 0) #11 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !55
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @av_freep(ptr noundef nonnull %3) #11
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = call ptr @av_frame_side_data_add(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 14, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not14 = icmp eq ptr %i.m, null
  br i1 %.not14, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %3, align 8, !tbaa !281
  call void @av_buffer_unref(ptr noundef nonnull %i.a) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.h, %bb.f, %side_data_pref.exit
  %.0 = phi i32 [ 0, %side_data_pref.exit ], [ -12, %bb.d ], [ -12, %bb.h ], [ -12, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare ptr @av_content_light_metadata_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_decode_content_light_new(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !278
  %i.e = load i32, ptr %i.b, align 8, !tbaa !68
  %i.f = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.d, i32 noundef %i.e, i32 noundef 14) #11
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.h = load i64, ptr %i.g, align 8, !tbaa !269
  %i.i = and i64 %i.h, 16384
  %.not9.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i, label %bb.c, label %side_data_pref.exit

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_side_data_remove(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 14) #11
  br label %bb.d

side_data_pref.exit:                              ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !281
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = tail call ptr @av_content_light_metadata_create_side_data(ptr noundef nonnull %1) #11 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !281
  %.not7 = icmp eq ptr %i.j, null
  %i.k = select i1 %.not7, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %side_data_pref.exit
  %.0 = phi i32 [ 0, %side_data_pref.exit ], [ %i.k, %bb.d ]
  ret i32 %.0
}

declare ptr @av_content_light_metadata_create_side_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ff_copy_palette(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call ptr @av_packet_get_side_data(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 1024
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1024) %i.b, i64 1024, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.32, i64 noundef %i.d) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @ff_hwaccel_frame_priv_alloc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !283  ; 3 uses
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !175
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2, i32 noundef 2343) #11
  tail call void @abort() #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !284  ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156  ; 2 uses
  %.not23.not = icmp eq ptr %i.i, null
  br i1 %.not23.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !285
  %i.o = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 -2147483648, 2147483648) %i.l, i32 noundef 0, ptr %i.n, ptr noundef nonnull %i.g) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.p = sext i32 %i.d to i64
  %i.q = tail call ptr @av_refstruct_alloc_ext_c(i64 noundef range(i64 -2147483648, 2147483648) %i.p, i32 noundef 0, ptr null, ptr noundef null) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %storemerge = phi ptr [ %i.o, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %storemerge, ptr %1, align 8, !tbaa !175
  %.not24 = icmp eq ptr %storemerge, null
  %. = select i1 %.not24, i32 -12, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.a ], [ %., %bb.i ], [ -22, %bb.f ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_decode_flush_buffers(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  tail call void @av_packet_unref(ptr noundef %i.d) #11
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  tail call void @av_packet_unref(ptr noundef %i.f) #11
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i64 -9223372036854775808, ptr %i.g, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i64 -9223372036854775808, ptr %i.h, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @av_bsf_flush(ptr noundef nonnull %i.j) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 0, ptr %i.k, align 8, !tbaa !75
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  store i32 0, ptr %2, align 4, !tbaa !53
  ret void
}

declare void @av_bsf_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define noalias ptr @ff_decode_internal_alloc() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 208) #11
  ret ptr %i.a
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_decode_internal_sync(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.g = load <2 x i32>, ptr %i.e, align 8, !tbaa !68
  store <2 x i32> %i.g, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.i = load i64, ptr %i.h, align 8, !tbaa !269
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i64 %i.i, ptr %i.j, align 8, !tbaa !269
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define void @ff_decode_internal_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_decode_exif_attach_ifd(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !55
  %i.b = call fastcc i32 @exif_attach_ifd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @exif_attach_ifd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !286
  %.not69 = icmp eq i32 %i.c, 0
  br i1 %.not69, label %.thread62, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.04268 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !288
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.04268 ; 5 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !222
  %i.g = zext i16 %i.f to i32
  %i.h = tail call i32 @av_exif_get_tag_id(ptr noundef nonnull @.str.56) #11
  %i.i = icmp eq i32 %i.h, %i.g
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !219
  %i.n = icmp eq i32 %i.m, 3
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.o = add nuw nsw i64 %.04268, 1               ; 2 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !286
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %i.o, %i.q
  br i1 %i.r, label %.lr.ph, label %.thread62, !llvm.loop !289

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.u = load i64, ptr %i.t, align 8, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.62, i64 noundef %i.u) #11
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = add i32 %i.x, -9
  %or.cond.i = icmp ult i32 %i.y, -8
  br i1 %or.cond.i, label %attach_displaymatrix.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !278
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ae = tail call ptr @av_frame_side_data_get_c(ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef 6) #11
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 200
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !269
  %i.ah = and i64 %i.ag, 64
  %.not9.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not9.i.i.i, label %bb.h, label %attach_displaymatrix.exit.thread66

attach_displaymatrix.exit.thread66:               ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @av_frame_side_data_remove(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i32 noundef 6) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ai = tail call ptr @av_frame_new_side_data(ptr noundef nonnull %1, i32 noundef 6, i64 noundef 36) #11 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ai, null
  br i1 %.not15.i.i, label %ff_frame_new_side_data.exit.i, label %attach_displaymatrix.exit

ff_frame_new_side_data.exit.i:                    ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.aj = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) -12, ptr noundef nonnull %i.a, i64 noundef 64) #11 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.a) #11
  br label %attach_displaymatrix.exit.thread

attach_displaymatrix.exit.thread:                 ; preds = %bb.e, %ff_frame_new_side_data.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

attach_displaymatrix.exit:                        ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.am = tail call i32 @av_exif_orientation_to_matrix(ptr noundef %i.al, i32 noundef %i.x) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %attach_displaymatrix.exit.thread, %attach_displaymatrix.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.63) #11
  br label %.thread62

bb.k:                                             ; preds = %attach_displaymatrix.exit.thread66, %attach_displaymatrix.exit
  %i.ao = tail call ptr @av_exif_clone_ifd(ptr noundef nonnull %2) #11 ; 4 uses
  %.not53 = icmp eq ptr %i.ao, null
  br i1 %.not53, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i16, ptr %i.e, align 8, !tbaa !222
  %i.aq = tail call i32 @av_exif_remove_entry(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, i16 noundef zeroext %i.ap, i32 noundef 0) #11 ; 0 uses
  br label %.thread62

.thread62:                                        ; preds = %bb.d, %bb.a, %bb.j, %bb.l
  %.047 = phi ptr [ %2, %bb.j ], [ %i.ao, %bb.l ], [ %2, %bb.a ], [ %2, %bb.d ] ; 2 uses
  %.044 = phi ptr [ null, %bb.j ], [ %i.ao, %bb.l ], [ null, %bb.a ], [ null, %bb.d ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.as = call i32 @av_exif_ifd_to_dict(ptr noundef %0, ptr noundef nonnull %.047, ptr noundef nonnull %i.ar) #11 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.t, label %bb.m

bb.m:                                             ; preds = %.thread62
  %.not54 = icmp eq ptr %.044, null
  br i1 %.not54, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %3, align 8, !tbaa !55
  %.not55 = icmp eq ptr %i.au, null
  br i1 %.not55, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @av_buffer_unref(ptr noundef %3) #11
  %i.av = call i32 @av_exif_write(ptr noundef %0, ptr noundef nonnull %.047, ptr noundef %3, i32 noundef 0) #11 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.az = getelementptr i8, ptr %0, i64 40
  %.val.i.i56 = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !278
  %i.bb = load i32, ptr %i.ay, align 8, !tbaa !68
  %i.bc = call ptr @av_frame_side_data_get_c(ptr noundef %i.ba, i32 noundef %i.bb, i32 noundef 31) #11
  %.not.i.i.i57 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i57, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i56, i64 200
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !269
  %i.bf = and i64 %i.be, 2147483648
  %.not9.i.i.i58 = icmp eq i64 %i.bf, 0
end_hunk_1
