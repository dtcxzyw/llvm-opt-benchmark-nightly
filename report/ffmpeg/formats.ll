Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/formats?download=true
inline.NumInlined: 77
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 24
begin_hunk_0_@ff_formats_unref:bb.a
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30
  tail call void @av_free(ptr noundef %i.aa) #9
  br label %.loopexit.thread33

.loopexit.thread33:                               ; preds = %bb.c, %.loopexit.thread, %.loopexit
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit.thread33
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_add_channel_layout(ptr nofree noundef captures(address) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !45
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @av_realloc_array(ptr noundef %i.d, i64 noundef %i.h, i64 noundef 24) #9 ; 3 uses
  %.not22 = icmp eq ptr %i.i, null
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ff_channel_layouts_unref(ptr noundef nonnull %0)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !45
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [24 x i8], ptr %i.p, i64 %i.s
  %i.u = tail call i32 @av_channel_layout_copy(ptr noundef %i.t, ptr noundef %1) #9 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !45
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.b, %bb.f
  %i.aa = phi i32 [ 0, %bb.f ], [ %i.u, %bb.e ], [ -12, %bb.d ], [ -12, %bb.b ]
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define void @ff_channel_layouts_unref(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %.preheader30

.preheader30:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %.not37 = icmp eq i32 %i.c, 0
  br i1 %.not37, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.thread47, label %bb.b, !llvm.loop !91

.loopexit:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = xor i32 %i.j, -1
  %i.m = add i32 %i.c, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.k, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !51
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !51
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader, label %.loopexit.thread47

.preheader:                                       ; preds = %.preheader30, %.loopexit
  %i.u = phi ptr [ %i.p, %.loopexit ], [ %i.a, %.preheader30 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !45
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph36, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph36, %.preheader
  %.lcssa = phi ptr [ %i.u, %.preheader ], [ %i.ag, %.lr.ph36 ]
  %i.y = load ptr, ptr %.lcssa, align 8, !tbaa !46
  tail call void @av_free(ptr noundef %i.y) #9
  %i.z = load ptr, ptr %0, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  tail call void @av_free(ptr noundef %i.ab) #9
  %i.ac = load ptr, ptr %0, align 8, !tbaa !41
  tail call void @av_free(ptr noundef %i.ac) #9
  br label %.loopexit.thread47

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph36 ], [ 0, %.preheader ] ; 2 uses
  %i.ad = phi ptr [ %i.ag, %.lr.ph36 ], [ %i.u, %.preheader ]
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv41
  tail call void @av_channel_layout_uninit(ptr noundef %i.af) #9
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !45
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next42, %i.aj
  br i1 %i.ak, label %.lr.ph36, label %._crit_edge, !llvm.loop !92

.loopexit.thread47:                               ; preds = %bb.c, %._crit_edge, %.loopexit
  store ptr null, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit.thread47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define ptr @ff_make_formats_list_singleton(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %0, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %.not14.i = icmp eq i32 %i.e, -1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not14.i, label %.loopexit.loopexit.i, label %.preheader.i, !llvm.loop !0

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %i.f = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 6 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !30
  %.not15.i = icmp eq ptr %i.f, null
  br i1 %.not15.i, label %ff_make_format_list.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.loopexit.i
  %i.g = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !35
  %cond.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cond.i, label %ff_make_format_list.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @av_malloc_array(i64 noundef %indvars.iv.i, i64 noundef 4) #9 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !36
  %.not17.i = icmp eq ptr %i.h, null
  br i1 %.not17.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  call void @av_freep(ptr noundef nonnull %i.a) #9
  br label %ff_make_format_list.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next24.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %1 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next24.i
  %2 = load i32, ptr %1, align 4, !tbaa !28
  %3 = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv.next24.i
  store i32 %2, ptr %3, align 4, !tbaa !28
  br label %ff_make_format_list.exit

ff_make_format_list.exit:                         ; preds = %bb.d, %.loopexit.loopexit.i, %bb.b, %.lr.ph.i.preheader
  %.011.i = phi ptr [ null, %.loopexit.loopexit.i ], [ null, %.lr.ph.i.preheader ], [ %i.f, %bb.b ], [ %i.f, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret ptr %.011.i
}

; Function Attrs: nounwind uwtable
define ptr @ff_all_formats(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !30
  switch i32 %0, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.b = tail call ptr @av_get_sample_fmt_name(i32 noundef 0) #9
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @ff_formats_pixdesc_filter(i32 noundef 0, i32 noundef 0)
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = trunc nuw i64 %indvars.iv.next to i32
  %i.e = call ptr @av_get_sample_fmt_name(i32 noundef %i.d) #9
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !4

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.f = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %indvars.iv)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %.preheader, %.critedge.loopexit, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ], [ %.pre, %.critedge.loopexit ], [ null, %.preheader ], [ null, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define noundef ptr @ff_formats_pixdesc_filter(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = or i32 %1, %0                            ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.c = phi ptr [ null, %bb.a ], [ %i.am, %.backedge ]
  %.fr = freeze ptr %i.c                          ; 5 uses
  %i.d = tail call ptr @av_pix_fmt_desc_get(i32 noundef 0) #9 ; 3 uses
  %.not46 = icmp eq ptr %i.d, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.not34 = icmp eq ptr %.fr, null
  %i.e = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  br i1 %.not34, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.f = phi ptr [ %i.s, %bb.f ], [ %i.d, %.lr.ph ] ; 3 uses
  %.02248.us = phi i32 [ %i.r, %bb.f ], [ 0, %.lr.ph ]
  %.02347.us = phi i32 [ %spec.select, %bb.f ], [ 0, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !58   ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = and i64 %i.h, 24
  %or.cond.us = icmp eq i64 %i.j, 0
  br i1 %or.cond.us, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !93
  %.not31.us = icmp eq i8 %i.l, 0
  br i1 %.not31.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !94
  %.not32.us = icmp eq i8 %i.n, 0
  br i1 %.not32.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = or i32 %i.i, 16777216
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.split.us
  %.021.us = phi i32 [ %i.i, %.lr.ph.split.us ], [ %i.i, %bb.d ], [ %i.o, %bb.e ]
  %i.p = and i32 %.021.us, %i.b
  %.not33.us = icmp eq i32 %i.p, %0
  %i.q = zext i1 %.not33.us to i32
  %spec.select = add i32 %.02347.us, %i.q         ; 2 uses
  %i.r = add i32 %.02248.us, 1                    ; 2 uses
  %i.s = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.r) #9 ; 2 uses
  %.not.us = icmp eq ptr %i.s, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %i.t = phi ptr [ %i.aj, %bb.l ], [ %i.d, %.lr.ph ] ; 3 uses
  %.02248 = phi i32 [ %i.ai, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.02347 = phi i32 [ %.1.ph, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = and i64 %i.v, 24
  %or.cond = icmp eq i64 %i.x, 0
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !93
  %.not31 = icmp eq i8 %i.z, 0
  br i1 %.not31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !94
  %.not32 = icmp eq i8 %i.ab, 0
  br i1 %.not32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = or i32 %i.w, 16777216
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.split
  %.021 = phi i32 [ %i.w, %.lr.ph.split ], [ %i.w, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = and i32 %.021, %i.b
  %.not33 = icmp eq i32 %i.ad, %0
  br i1 %.not33, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.af = zext i32 %.02347 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  store i32 %.02248, ptr %i.ag, align 4, !tbaa !28
  %i.ah = add i32 %.02347, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.ph = phi i32 [ %.02347, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  %i.ai = add i32 %.02248, 1                      ; 2 uses
  %i.aj = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.ai) #9 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.l, %bb.f, %bb.b
  %.023.lcssa = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.f ], [ %.1.ph, %bb.l ] ; 4 uses
  %.not35 = icmp eq ptr %.fr, null
  br i1 %.not35, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ak = load i32, ptr %.fr, align 8, !tbaa !35
  %i.al = icmp eq i32 %i.ak, %.023.lcssa
  br i1 %i.al, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 644) #9
  tail call void @abort() #10
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.am = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 5 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !30
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.023.lcssa, ptr %i.am, align 8, !tbaa !35
  %.not37 = icmp eq i32 %.023.lcssa, 0
  br i1 %.not37, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = zext i32 %.023.lcssa to i64
  %i.ao = tail call ptr @av_malloc_array(i64 noundef %i.an, i64 noundef 4) #9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !36
  %.not38 = icmp eq ptr %i.ao, null
  br i1 %.not38, label %bb.r, label %.backedge

.backedge:                                        ; preds = %bb.q, %bb.p
  br label %bb.b

bb.r:                                             ; preds = %bb.q
  call void @av_freep(ptr noundef nonnull %i.a) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.fr
}

end_hunk_0
begin_hunk_1_@ff_default_query_formats:bb.a
  br label %ff_make_pixel_format_list.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %.lr.ph.i ], [ %indvars.iv23.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, -1 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next24.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.next24.i
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !28
  %indvars.iv.next24.i.1 = add nsw i64 %indvars.iv23.i, -2 ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next24.i.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.at = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.next24.i.1
  store i32 %i.as, ptr %i.at, align 4, !tbaa !28
  %indvars.iv.next24.i.2 = add nsw i64 %indvars.iv23.i, -3 ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next24.i.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.next24.i.2
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !28
  %indvars.iv.next24.i.3 = add nsw i64 %indvars.iv23.i, -4 ; 4 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.next24.i.3
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !28
  %i.az = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.next24.i.3
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !28
  %i.ba = icmp eq i64 %indvars.iv.next24.i.3, 0
  br i1 %i.ba, label %ff_make_pixel_format_list.exit, label %.lr.ph.i, !llvm.loop !184

ff_make_pixel_format_list.exit:                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block104, %.loopexit.i, %bb.c, %bb.e
  %.011.i = phi ptr [ null, %.loopexit.i ], [ null, %bb.e ], [ %i.t, %bb.c ], [ %i.t, %middle.block104 ], [ %i.t, %.lr.ph.i ], [ %i.t, %.lr.ph.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75 ; 9 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %.not.i42 = icmp eq ptr %i.bc, null
  br i1 %.not.i42, label %.loopexit.i48, label %.preheader.i43

.preheader.i43:                                   ; preds = %bb.f, %.preheader.i43
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i46, %.preheader.i43 ], [ 0, %bb.f ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !28
  %.not14.i45 = icmp eq i32 %i.bf, -1
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i44, 1
  br i1 %.not14.i45, label %.loopexit.loopexit.i47, label %.preheader.i43, !llvm.loop !1

.loopexit.loopexit.i47:                           ; preds = %.preheader.i43
  %i.bg = trunc nuw nsw i64 %indvars.iv.i44 to i32
  br label %.loopexit.i48

.loopexit.i48:                                    ; preds = %.loopexit.loopexit.i47, %bb.f
  %.1.i49 = phi i32 [ 0, %bb.f ], [ %i.bg, %.loopexit.loopexit.i47 ] ; 4 uses
  %i.bh = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 8 uses
  store ptr %i.bh, ptr %i.h, align 8, !tbaa !30
  %.not15.i50 = icmp eq ptr %i.bh, null
  br i1 %.not15.i50, label %ff_make_sample_format_list.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit.i48
  store i32 %.1.i49, ptr %i.bh, align 8, !tbaa !35
  %cond.i51 = icmp eq i32 %.1.i49, 0
  br i1 %cond.i51, label %ff_make_sample_format_list.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = zext nneg i32 %.1.i49 to i64            ; 6 uses
  %i.bj = tail call ptr @av_malloc_array(i64 noundef %i.bi, i64 noundef 4) #9 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !36
  %.not17.i52 = icmp eq ptr %i.bj, null
  br i1 %.not17.i52, label %bb.i, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %bb.h
  %i.bl = ptrtoaddr ptr %i.bj to i64
  %min.iters.check = icmp ult i32 %.1.i49, 8
  %i.bm = sub i64 %i.bl, %i.bd
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond107 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond107, label %.lr.ph.i53.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i53.preheader
  %n.vec = and i64 %i.bi, 2147483640              ; 2 uses
  %i.bn = and i64 %i.bi, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = xor i64 %index, -1
  %i.bp = add i64 %i.bo, %i.bi                    ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -12
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !28
  %wide.load92 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !28
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bp ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -12
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -28
  store <4 x i32> %wide.load, ptr %i.bu, align 4, !tbaa !28
  store <4 x i32> %wide.load92, ptr %i.bv, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bi
  br i1 %cmp.n, label %ff_make_sample_format_list.exit, label %.lr.ph.i53.preheader109

.lr.ph.i53.preheader109:                          ; preds = %.lr.ph.i53.preheader, %middle.block
  %indvars.iv23.i54.ph = phi i64 [ %i.bi, %.lr.ph.i53.preheader ], [ %i.bn, %middle.block ] ; 4 uses
  %i.bx = add nsw i64 %indvars.iv23.i54.ph, -1
  %xtraiter = and i64 %indvars.iv23.i54.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.i53.preheader109, %.lr.ph.i53.prol
  %indvars.iv23.i54.prol = phi i64 [ %indvars.iv.next24.i55.prol, %.lr.ph.i53.prol ], [ %indvars.iv23.i54.ph, %.lr.ph.i53.preheader109 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i53.prol ], [ 0, %.lr.ph.i53.preheader109 ]
  %indvars.iv.next24.i55.prol = add nsw i64 %indvars.iv23.i54.prol, -1 ; 4 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next24.i55.prol
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv.next24.i55.prol
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !28
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !186

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader109
  %indvars.iv23.i54.unr = phi i64 [ %indvars.iv23.i54.ph, %.lr.ph.i53.preheader109 ], [ %indvars.iv.next24.i55.prol, %.lr.ph.i53.prol ]
  %i.cb = icmp ult i64 %i.bx, 3
  br i1 %i.cb, label %ff_make_sample_format_list.exit, label %.lr.ph.i53

bb.i:                                             ; preds = %bb.h
  call void @av_freep(ptr noundef nonnull %i.h) #9
  br label %ff_make_sample_format_list.exit

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv23.i54 = phi i64 [ %indvars.iv.next24.i55.3, %.lr.ph.i53 ], [ %indvars.iv23.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 4 uses
  %indvars.iv.next24.i55 = add nsw i64 %indvars.iv23.i54, -1 ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next24.i55
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv.next24.i55
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !28
  %indvars.iv.next24.i55.1 = add nsw i64 %indvars.iv23.i54, -2 ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next24.i55.1
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv.next24.i55.1
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !28
  %indvars.iv.next24.i55.2 = add nsw i64 %indvars.iv23.i54, -3 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next24.i55.2
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !28
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv.next24.i55.2
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !28
  %indvars.iv.next24.i55.3 = add nsw i64 %indvars.iv23.i54, -4 ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv.next24.i55.3
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !28
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv.next24.i55.3
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !28
  %i.co = icmp eq i64 %indvars.iv.next24.i55.3, 0
  br i1 %i.co, label %ff_make_sample_format_list.exit, label %.lr.ph.i53, !llvm.loop !187

ff_make_sample_format_list.exit:                  ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %middle.block, %.loopexit.i48, %bb.g, %bb.i
  %.011.i56 = phi ptr [ null, %.loopexit.i48 ], [ null, %bb.i ], [ %i.bh, %bb.g ], [ %i.bh, %middle.block ], [ %i.bh, %.lr.ph.i53 ], [ %i.bh, %.lr.ph.i53.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i32 %i.cq, ptr %i.g, align 4, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 -1, ptr %i.cr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %bb.j
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %bb.j ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !28
  %.not14.i.i = icmp eq i32 %i.ct, -1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %.not14.i.i, label %.loopexit.loopexit.i.i, label %.preheader.i.i, !llvm.loop !0

.loopexit.loopexit.i.i:                           ; preds = %.preheader.i.i
  %i.cu = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 6 uses
  store ptr %i.cu, ptr %i.f, align 8, !tbaa !30
  %.not15.i.i = icmp eq ptr %i.cu, null
  br i1 %.not15.i.i, label %ff_make_formats_list_singleton.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.loopexit.i.i
  %i.cv = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.cv, ptr %i.cu, align 8, !tbaa !35
  %cond.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %cond.i.i, label %ff_make_formats_list_singleton.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = tail call ptr @av_malloc_array(i64 noundef %indvars.iv.i.i, i64 noundef 4) #9 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !36
  %.not17.i.i = icmp eq ptr %i.cw, null
  br i1 %.not17.i.i, label %.lr.ph.i.preheader.i, label %bb.m

.lr.ph.i.preheader.i:                             ; preds = %bb.l
  call void @av_freep(ptr noundef nonnull %i.f) #9
  br label %ff_make_formats_list_singleton.exit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next24.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %1 = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next24.i.i
  %2 = load i32, ptr %1, align 4, !tbaa !28
  %3 = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %indvars.iv.next24.i.i
  store i32 %2, ptr %3, align 4, !tbaa !28
  br label %ff_make_formats_list_singleton.exit

ff_make_formats_list_singleton.exit:              ; preds = %.loopexit.loopexit.i.i, %bb.k, %.lr.ph.i.preheader.i, %bb.m
  %.011.i.i = phi ptr [ null, %.loopexit.loopexit.i.i ], [ null, %.lr.ph.i.preheader.i ], [ %i.cu, %bb.k ], [ %i.cu, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %bb.w

bb.n:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 %i.cz, ptr %i.e, align 4, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 -1, ptr %i.da, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  br label %.preheader.i.i57

.preheader.i.i57:                                 ; preds = %.preheader.i.i57, %bb.n
  %indvars.iv.i.i58 = phi i64 [ %indvars.iv.next.i.i60, %.preheader.i.i57 ], [ 0, %bb.n ] ; 6 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i58
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !28
  %.not14.i.i59 = icmp eq i32 %i.dc, -1
  %indvars.iv.next.i.i60 = add nuw nsw i64 %indvars.iv.i.i58, 1
  br i1 %.not14.i.i59, label %.loopexit.loopexit.i.i61, label %.preheader.i.i57, !llvm.loop !0

.loopexit.loopexit.i.i61:                         ; preds = %.preheader.i.i57
  %i.dd = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 6 uses
  store ptr %i.dd, ptr %i.d, align 8, !tbaa !30
  %.not15.i.i62 = icmp eq ptr %i.dd, null
  br i1 %.not15.i.i62, label %ff_make_formats_list_singleton.exit67, label %bb.o

bb.o:                                             ; preds = %.loopexit.loopexit.i.i61
  %i.de = trunc nuw nsw i64 %indvars.iv.i.i58 to i32
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !35
  %cond.i.i63 = icmp eq i64 %indvars.iv.i.i58, 0
  br i1 %cond.i.i63, label %ff_make_formats_list_singleton.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = tail call ptr @av_malloc_array(i64 noundef %indvars.iv.i.i58, i64 noundef 4) #9 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !36
  %.not17.i.i64 = icmp eq ptr %i.df, null
  br i1 %.not17.i.i64, label %.lr.ph.i.preheader.i65, label %bb.q

.lr.ph.i.preheader.i65:                           ; preds = %bb.p
  call void @av_freep(ptr noundef nonnull %i.d) #9
  br label %ff_make_formats_list_singleton.exit67

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next24.i.i66 = add nsw i64 %indvars.iv.i.i58, -1 ; 2 uses
  %4 = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next24.i.i66
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv.next24.i.i66
  store i32 %5, ptr %6, align 4, !tbaa !28
  br label %ff_make_formats_list_singleton.exit67

ff_make_formats_list_singleton.exit67:            ; preds = %.loopexit.loopexit.i.i61, %bb.o, %.lr.ph.i.preheader.i65, %bb.q
  %.011.i.i66 = phi ptr [ null, %.loopexit.loopexit.i.i61 ], [ null, %.lr.ph.i.preheader.i65 ], [ %i.dd, %bb.o ], [ %i.dd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.w

bb.r:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !67
  %.not = icmp eq i32 %i.di, 0
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !68
  %.not39 = icmp eq i32 %i.dk, 0
  br i1 %.not39, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink = phi i64 [ 32, %bb.r ], [ 56, %bb.s ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.pn.in = load ptr, ptr %i.dl, align 8, !tbaa !192
  %.pn = load ptr, ptr %.pn.in, align 8, !tbaa !71
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  %i.dm = load i32, ptr %.in, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8, !tbaa !30
  switch i32 %i.dm, label %ff_all_formats.exit [
    i32 0, label %bb.u
    i32 1, label %.preheader.i68
  ]

.preheader.i68:                                   ; preds = %bb.t
  %i.dn = tail call ptr @av_get_sample_fmt_name(i32 noundef 0) #9
  %.not9.i = icmp eq ptr %i.dn, null
  br i1 %.not9.i, label %ff_all_formats.exit, label %.lr.ph.i69

bb.u:                                             ; preds = %.thread, %bb.t
  %i.do = tail call ptr @ff_formats_pixdesc_filter(i32 noundef 0, i32 noundef 0)
  br label %ff_all_formats.exit

bb.v:                                             ; preds = %.lr.ph.i69
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv.next.i71 to i32
  %i.dq = call ptr @av_get_sample_fmt_name(i32 noundef %i.dp) #9
  %.not.i72 = icmp eq ptr %i.dq, null
  br i1 %.not.i72, label %.critedge.loopexit.i, label %.lr.ph.i69, !llvm.loop !4

.lr.ph.i69:                                       ; preds = %.preheader.i68, %bb.v
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i71, %bb.v ], [ 0, %.preheader.i68 ] ; 2 uses
  %i.dr = call i32 @ff_add_format(ptr noundef nonnull %i.c, i64 noundef %indvars.iv.i70)
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %ff_all_formats.exit, label %bb.v

.critedge.loopexit.i:                             ; preds = %bb.v
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %ff_all_formats.exit

ff_all_formats.exit:                              ; preds = %.lr.ph.i69, %bb.t, %.preheader.i68, %bb.u, %.critedge.loopexit.i
  %.1.i74 = phi ptr [ %i.do, %bb.u ], [ null, %bb.t ], [ %.pre.i, %.critedge.loopexit.i ], [ null, %.preheader.i68 ], [ null, %.lr.ph.i69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.w

bb.w:                                             ; preds = %ff_all_formats.exit, %ff_make_formats_list_singleton.exit67, %ff_make_formats_list_singleton.exit, %ff_make_sample_format_list.exit, %ff_make_pixel_format_list.exit
  %.031 = phi ptr [ %.1.i74, %ff_all_formats.exit ], [ %.011.i, %ff_make_pixel_format_list.exit ], [ %.011.i56, %ff_make_sample_format_list.exit ], [ %.011.i.i, %ff_make_formats_list_singleton.exit ], [ %.011.i.i66, %ff_make_formats_list_singleton.exit67 ]
  %.not40 = phi i1 [ false, %ff_all_formats.exit ], [ false, %ff_make_pixel_format_list.exit ], [ true, %ff_make_sample_format_list.exit ], [ false, %ff_make_formats_list_singleton.exit ], [ true, %ff_make_formats_list_singleton.exit67 ]
  %.not41 = phi i1 [ false, %ff_all_formats.exit ], [ true, %ff_make_pixel_format_list.exit ], [ false, %ff_make_sample_format_list.exit ], [ true, %ff_make_formats_list_singleton.exit ], [ false, %ff_make_formats_list_singleton.exit67 ]
  %i.dt = call i32 @ff_set_common_formats(ptr noundef %0, ptr noundef %.031) ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.ak, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not40, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = call ptr @ff_all_color_spaces()
  %i.dw = call range(i32 -12, 1) i32 @ff_set_common_color_spaces(ptr noundef readonly %0, ptr noundef %i.dv) ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.dy = call i32 @ff_add_format(ptr noundef nonnull %i.b, i64 noundef 0)
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %bb.aa, label %ff_set_common_all_color_ranges.exit

bb.aa:                                            ; preds = %bb.z
  %i.ea = call i32 @ff_add_format(ptr noundef nonnull %i.b, i64 noundef 1)
  %i.eb = icmp sgt i32 %i.ea, -1
  br i1 %i.eb, label %bb.ab, label %ff_set_common_all_color_ranges.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ec = call i32 @ff_add_format(ptr noundef nonnull %i.b, i64 noundef 2)
  %i.ed = icmp sgt i32 %i.ec, -1
  %i.ee = load ptr, ptr %i.b, align 8
  %spec.select.i.i = select i1 %i.ed, ptr %i.ee, ptr null
  br label %ff_set_common_all_color_ranges.exit

ff_set_common_all_color_ranges.exit:              ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ef = phi ptr [ %spec.select.i.i, %bb.ab ], [ null, %bb.z ], [ null, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.eg = call range(i32 -12, 1) i32 @ff_set_common_color_ranges(ptr noundef readonly %0, ptr noundef %i.ef) ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %ff_set_common_all_color_ranges.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !30
  %i.ei = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 0)
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.ad, label %ff_set_common_all_alpha_modes.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ek = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 1)
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.ae, label %ff_set_common_all_alpha_modes.exit

bb.ae:                                            ; preds = %bb.ad
  %i.em = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 2)
  %i.en = icmp sgt i32 %i.em, -1
  %i.eo = load ptr, ptr %i.a, align 8
  %spec.select.i.i75 = select i1 %i.en, ptr %i.eo, ptr null
  br label %ff_set_common_all_alpha_modes.exit

ff_set_common_all_alpha_modes.exit:               ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ep = phi ptr [ %spec.select.i.i75, %bb.ae ], [ null, %bb.ac ], [ null, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.eq = call range(i32 -12, 1) i32 @ff_set_common_alpha_modes(ptr noundef readonly %0, ptr noundef %i.ep) ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %ff_set_common_all_alpha_modes.exit, %bb.x
  br i1 %.not41, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 4 uses
  %.not.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i, label %ff_set_common_all_channel_counts.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 13
  store i8 1, ptr %i.et, align 1, !tbaa !60
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i8 1, ptr %i.eu, align 4, !tbaa !59
  br label %ff_set_common_all_channel_counts.exit

ff_set_common_all_channel_counts.exit:            ; preds = %bb.ag, %bb.ah
  %i.ev = call range(i32 -12, 1) i32 @ff_set_common_channel_layouts(ptr noundef readonly %0, ptr noundef %i.es) ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %ff_set_common_all_channel_counts.exit
  %i.ex = call noalias ptr @av_mallocz(i64 noundef 32) #9
  %i.ey = call range(i32 -12, 1) i32 @ff_set_common_samplerates(ptr noundef readonly %0, ptr noundef %i.ex) ; 2 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %ff_set_common_all_channel_counts.exit, %ff_set_common_all_alpha_modes.exit, %ff_set_common_all_color_ranges.exit, %bb.y, %bb.w, %bb.aj
  %.032 = phi i32 [ 0, %bb.aj ], [ %i.dt, %bb.w ], [ %i.dw, %bb.y ], [ %i.eg, %ff_set_common_all_color_ranges.exit ], [ %i.eq, %ff_set_common_all_alpha_modes.exit ], [ %i.ev, %ff_set_common_all_channel_counts.exit ], [ %i.ey, %bb.ai ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @ff_formats_check_pixel_formats(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %check_list.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !35     ; 3 uses
  %.not20.i = icmp eq i32 %i.a, 0
  br i1 %.not20.i, label %.loopexit21.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = zext i32 %i.a to i64                     ; 2 uses
  br label %bb.c

.loopexit.i:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, %i.c
  br i1 %exitcond30.not.i, label %check_list.exit, label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %.loopexit.i, %.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next28.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 3 uses
  %i.d = icmp samesign ult i64 %indvars.iv.next28.i, %i.c
  br i1 %i.d, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv27.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
end_hunk_1
begin_hunk_2_@merge_channel_layouts_internal:bb.a
.lr.ph254:                                        ; preds = %bb.az
  %.promoted257 = load i32, ptr %i.jm, align 8, !tbaa !51
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph254, %bb.ba
  %indvars.iv308 = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next309, %bb.ba ] ; 2 uses
  %i.jt = phi i32 [ %.promoted257, %.lr.ph254 ], [ %i.kb, %bb.ba ] ; 2 uses
  %i.ju = phi ptr [ %i.jq, %.lr.ph254 ], [ %i.kc, %bb.ba ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !52
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv308
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !54 ; 2 uses
  %i.jz = zext i32 %i.jt to i64
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jz
  store ptr %i.jy, ptr %i.ka, align 8, !tbaa !54
  %i.kb = add i32 %i.jt, 1                        ; 2 uses
  store i32 %i.kb, ptr %i.jm, align 8, !tbaa !51
  store ptr %.2127, ptr %i.jy, align 8, !tbaa !41
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !51
  %i.kf = zext i32 %i.ke to i64
  %i.kg = icmp samesign ult i64 %indvars.iv.next309, %i.kf
  br i1 %i.kg, label %bb.ba, label %._crit_edge255, !llvm.loop !220

._crit_edge255:                                   ; preds = %bb.ba, %bb.az
  %.lcssa = phi ptr [ %i.jq, %bb.az ], [ %i.kc, %bb.ba ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  call void @av_freep(ptr noundef nonnull %i.kh) #9
  %i.ki = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @av_freep(ptr noundef %i.ki) #9
  call void @av_freep(ptr noundef nonnull %i.a) #9
  call void @av_freep(ptr noundef nonnull %.2127) #9
  store ptr %.0128376, ptr %.2127, align 8, !tbaa !46
  %i.kj = getelementptr inbounds nuw i8, ptr %.2127, i64 8
  store i32 %.7.lcssa, ptr %i.kj, align 8, !tbaa !45
  br label %.loopexit181

.loopexit181:                                     ; preds = %bb.l, %bb.ai, %.lr.ph243.split, %.preheader188, %._crit_edge211, %bb.o, %.thread179, %.loopexit291, %bb.s, %._crit_edge, %bb.a, %._crit_edge255, %bb.av
  %.5 = phi i32 [ 1, %._crit_edge211 ], [ 0, %._crit_edge ], [ 0, %bb.av ], [ 1, %bb.a ], [ 0, %.preheader188 ], [ -12, %bb.s ], [ 1, %.loopexit291 ], [ 1, %.lr.ph243.split ], [ 1, %._crit_edge255 ], [ -12, %.thread179 ], [ -12, %bb.o ], [ 1, %bb.ai ], [ 1, %bb.l ]
  ret i32 %.5
}

declare i32 @av_channel_layout_compare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_check(ptr noundef) local_unnamed_addr #4

declare i32 @av_channel_layout_describe_bprint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 2) i32 @merge_samplerates_internal(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !30
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %.thread65, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !35     ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !35
  %.not51 = icmp eq i32 %i.d, 0
  br i1 %.not51, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not56 = icmp eq i32 %2, 0
  br label %.preheader

bb.d:                                             ; preds = %bb.b
  %.not52 = icmp eq i32 %2, 0
  br i1 %.not52, label %bb.e, label %.thread65

.thread:                                          ; preds = %bb.c
  %.not5258 = icmp eq i32 %2, 0
  br i1 %.not5258, label %.thread60, label %.thread65

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %i.a, align 8, !tbaa !30
  br label %.thread60

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %i.g = phi i32 [ %i.c, %.preheader.preheader ], [ %i.s, %.loopexit ] ; 2 uses
  %indvars.iv88 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next89, %.loopexit ] ; 2 uses
  %.04175 = phi i32 [ 0, %.preheader.preheader ], [ %.142, %.loopexit ] ; 4 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !35     ; 2 uses
  %.not83 = icmp eq i32 %i.h, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv88
  %i.k = load i32, ptr %i.j, align 4, !tbaa !28   ; 2 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !36
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !222

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp eq i32 %i.k, %i.n
  br i1 %i.o, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  br i1 %.not56, label %bb.i, label %.thread65

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i32 %.04175, 1
  %i.q = sext i32 %.04175 to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.q
  store i32 %i.k, ptr %i.r, align 4, !tbaa !28
  %.pre = load i32, ptr %0, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.i
  %i.s = phi i32 [ %.pre, %bb.i ], [ %i.g, %.preheader ], [ %i.g, %bb.f ] ; 2 uses
  %.142 = phi i32 [ %i.p, %bb.i ], [ %.04175, %.preheader ], [ %.04175, %bb.f ] ; 3 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next89, %i.t
  br i1 %i.u, label %.preheader, label %._crit_edge, !llvm.loop !223

._crit_edge:                                      ; preds = %.loopexit
  %.not55 = icmp eq i32 %.142, 0
  br i1 %.not55, label %.thread65, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store i32 %.142, ptr %0, align 8, !tbaa !35
  br label %.thread60

.thread60:                                        ; preds = %.thread, %bb.e, %bb.j
  %i.v = phi ptr [ %1, %bb.j ], [ %0, %bb.e ], [ %1, %.thread ] ; 4 uses
  %.14663 = phi ptr [ %0, %bb.j ], [ %1, %bb.e ], [ %0, %.thread ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.14663, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %.14663, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.ac = add i32 %i.ab, %i.z
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call ptr @av_realloc_array(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 8) #9 ; 3 uses
  %.not57 = icmp eq ptr %i.ae, null
  br i1 %.not57, label %.thread65, label %bb.k

bb.k:                                             ; preds = %.thread60
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !48
  %i.af = load i32, ptr %i.aa, align 8, !tbaa !47
  %.not84 = icmp eq i32 %i.af, 0
  br i1 %.not84, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.k
  %.promoted = load i32, ptr %i.y, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.pre94 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph78, %bb.l
  %indvars.iv91 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next92, %bb.l ] ; 2 uses
  %i.ag = phi i32 [ %.promoted, %.lr.ph78 ], [ %i.al, %bb.l ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre94, i64 %indvars.iv91
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aj
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !50
  %i.al = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.al, ptr %i.y, align 8, !tbaa !47
  store ptr %.14663, ptr %i.ai, align 8, !tbaa !30
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.am = load i32, ptr %i.aa, align 8, !tbaa !47
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next92, %i.an
  br i1 %i.ao, label %bb.l, label %._crit_edge79, !llvm.loop !224

._crit_edge79:                                    ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.ap) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.aq) #9
  call void @av_freep(ptr noundef nonnull %i.a) #9
  br label %.thread65

.thread65:                                        ; preds = %bb.h, %.thread, %.thread60, %bb.d, %._crit_edge, %._crit_edge79, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ 1, %._crit_edge79 ], [ 1, %.thread ], [ -12, %.thread60 ], [ 0, %._crit_edge ], [ 1, %bb.d ], [ 1, %bb.h ]
  ret i32 %.2
}

declare void @av_bprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = distinct !{!4, !29}
!5 = distinct !{!5, !29}
!6 = distinct !{!6, !29}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 16}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS15AVFilterContext", !16, i64 0}
!18 = !{!"p1 _ZTS11AVFilterPad", !16, i64 0}
!19 = !{!"AVRational", !13, i64 0, !13, i64 4}
!20 = !{!"AVChannelLayout", !13, i64 0, !13, i64 4, !12, i64 8, !16, i64 16}
!21 = !{!"any p2 pointer", !16, i64 0}
!22 = !{!"p2 _ZTS15AVFrameSideData", !21, i64 0}
!23 = !{!"p1 _ZTS15AVFilterFormats", !16, i64 0}
!24 = !{!"p1 _ZTS22AVFilterChannelLayouts", !16, i64 0}
!25 = !{!"AVFilterFormatsConfig", !23, i64 0, !23, i64 8, !24, i64 16, !23, i64 24, !23, i64 32, !23, i64 40}
!26 = !{!"AVFilterLink", !17, i64 0, !18, i64 8, !17, i64 16, !18, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !19, i64 48, !13, i64 56, !13, i64 60, !13, i64 64, !20, i64 72, !19, i64 96, !22, i64 104, !13, i64 112, !13, i64 116, !25, i64 120, !25, i64 168}
!27 = !{!26, !13, i64 32}
!28 = !{!13, !13, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!23, !23, i64 0}
!31 = !{!"p1 int", !16, i64 0}
!32 = !{!"any p3 pointer", !21, i64 0}
!33 = !{!"p3 _ZTS15AVFilterFormats", !32, i64 0}
!34 = !{!"AVFilterFormats", !13, i64 0, !31, i64 8, !13, i64 16, !33, i64 24}
!35 = !{!34, !13, i64 0}
!36 = !{!34, !31, i64 8}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!20, !13, i64 4}
!41 = !{!24, !24, i64 0}
!42 = !{!"p1 _ZTS15AVChannelLayout", !16, i64 0}
!43 = !{!"p3 _ZTS22AVFilterChannelLayouts", !32, i64 0}
!44 = !{!"AVFilterChannelLayouts", !42, i64 0, !13, i64 8, !12, i64 12, !12, i64 13, !13, i64 16, !43, i64 24}
!45 = !{!44, !13, i64 8}
!46 = !{!44, !42, i64 0}
!47 = !{!34, !13, i64 16}
!48 = !{!34, !33, i64 24}
!49 = !{!"p2 _ZTS15AVFilterFormats", !21, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!44, !13, i64 16}
!52 = !{!44, !43, i64 24}
!53 = !{!"p2 _ZTS22AVFilterChannelLayouts", !21, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 omnipotent char", !16, i64 0}
!56 = !{!"long", !12, i64 0}
!57 = !{!"AVPixFmtDescriptor", !55, i64 0, !12, i64 8, !12, i64 9, !12, i64 10, !56, i64 16, !12, i64 24, !55, i64 104}
!58 = !{!57, !56, i64 16}
!59 = !{!44, !12, i64 12}
!60 = !{!44, !12, i64 13}
!61 = !{!"p1 _ZTS7AVClass", !16, i64 0}
!62 = !{!"p1 _ZTS8AVFilter", !16, i64 0}
!63 = !{!"p2 _ZTS12AVFilterLink", !21, i64 0}
!64 = !{!"p1 _ZTS13AVFilterGraph", !16, i64 0}
!65 = !{!"p1 _ZTS11AVBufferRef", !16, i64 0}
!66 = !{!"AVFilterContext", !61, i64 0, !62, i64 8, !55, i64 16, !18, i64 24, !63, i64 32, !13, i64 40, !18, i64 48, !63, i64 56, !13, i64 64, !16, i64 72, !64, i64 80, !13, i64 88, !13, i64 92, !55, i64 96, !13, i64 104, !65, i64 112, !13, i64 120}
!67 = !{!66, !13, i64 40}
!68 = !{!66, !13, i64 64}
!69 = !{!66, !63, i64 32}
!70 = !{!"p1 _ZTS12AVFilterLink", !16, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!66, !63, i64 56}
!73 = !{!"p1 _ZTS21AVFilterFormatsConfig", !16, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!12, !12, i64 0}
!76 = !{!20, !13, i64 0}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29, !37, !38}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !29, !37}
!82 = distinct !{!82, !29, !37, !38}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !29, !37}
!85 = distinct !{!85, !29, !37, !38}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !29, !37}
!88 = distinct !{!88, !29}
!89 = distinct !{!89, !29}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, !29}
!92 = distinct !{!92, !29}
!93 = !{!57, !12, i64 9}
!94 = !{!57, !12, i64 10}
!95 = distinct !{!95, !29}
!96 = distinct !{!96, !29}
!97 = distinct !{!97, !29}
!98 = distinct !{!98, !29}
!99 = distinct !{!99, !29}
!100 = !{!26, !24, i64 184}
!101 = !{!26, !24, i64 136}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = !{!26, !23, i64 176}
!105 = !{!26, !23, i64 128}
!106 = distinct !{!106, !29, !37, !38}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !29, !37}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = !{!26, !23, i64 192}
!112 = !{!26, !23, i64 144}
!113 = distinct !{!113, !29, !37, !38}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !29, !37}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = !{!26, !23, i64 200}
!119 = !{!26, !23, i64 152}
!120 = distinct !{!120, !29, !37, !38}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !29, !37}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !29}
!125 = !{!26, !23, i64 208}
!126 = !{!26, !23, i64 160}
!127 = distinct !{!127, !29, !37, !38}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !29, !37}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = !{!26, !23, i64 168}
!133 = !{!26, !23, i64 120}
!134 = distinct !{!134, !29, !37, !38}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !29, !37}
!137 = distinct !{!137, !29, !37, !38}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !29, !37}
!140 = distinct !{!140, !29, !37, !38}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !29, !37}
!143 = distinct !{!143, !29}
!144 = distinct !{!144, !29}
!145 = !{!25, !24, i64 16}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = !{!25, !23, i64 8}
!149 = distinct !{!149, !29, !37, !38}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, !29, !37}
!152 = distinct !{!152, !29}
!153 = distinct !{!153, !29}
!154 = !{!25, !23, i64 24}
!155 = distinct !{!155, !29, !37, !38}
!156 = distinct !{!156, !39}
!157 = distinct !{!157, !29, !37}
!158 = distinct !{!158, !29}
!159 = distinct !{!159, !29}
!160 = !{!25, !23, i64 32}
!161 = distinct !{!161, !29, !37, !38}
!162 = distinct !{!162, !39}
!163 = distinct !{!163, !29, !37}
!164 = distinct !{!164, !29}
!165 = distinct !{!165, !29}
!166 = !{!25, !23, i64 40}
!167 = distinct !{!167, !29, !37, !38}
!168 = distinct !{!168, !39}
!169 = distinct !{!169, !29, !37}
!170 = distinct !{!170, !29}
!171 = distinct !{!171, !29}
!172 = !{!25, !23, i64 0}
!173 = distinct !{!173, !29, !37, !38}
!174 = distinct !{!174, !39}
!175 = distinct !{!175, !29, !37}
!176 = distinct !{!176, !29, !37, !38}
!177 = distinct !{!177, !39}
!178 = distinct !{!178, !29, !37}
!179 = distinct !{!179, !29, !37, !38}
!180 = distinct !{!180, !39}
!181 = distinct !{!181, !29, !37}
!182 = distinct !{!182, !29, !37, !38}
end_hunk_2
