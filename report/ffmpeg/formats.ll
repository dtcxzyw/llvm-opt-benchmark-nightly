Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/formats?download=true
inline.NumInlined: 77
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 24
begin_hunk_0_@ff_add_channel_layout:bb.a
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.b, %bb.f
  %i.aa = phi i32 [ 0, %bb.f ], [ %i.u, %bb.e ], [ -12, %bb.d ], [ -12, %bb.b ]
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define void @ff_channel_layouts_unref(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %.preheader30

.preheader30:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %.not37 = icmp eq i32 %i.c, 0
  br i1 %.not37, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader30
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.thread47, label %bb.b, !llvm.loop !65

.loopexit:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = xor i32 %i.j, -1
  %i.m = add i32 %i.c, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr nonnull align 8 %i.k, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !61
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !61
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader, label %.loopexit.thread47

.preheader:                                       ; preds = %.preheader30, %.loopexit
  %i.u = phi ptr [ %i.p, %.loopexit ], [ %i.a, %.preheader30 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !49
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph36, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph36, %.preheader
  %.lcssa = phi ptr [ %i.u, %.preheader ], [ %i.ag, %.lr.ph36 ]
  %i.y = load ptr, ptr %.lcssa, align 8, !tbaa !53
  tail call void @av_free(ptr noundef %i.y) #9
  %i.z = load ptr, ptr %0, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62
  tail call void @av_free(ptr noundef %i.ab) #9
  %i.ac = load ptr, ptr %0, align 8, !tbaa !48
  tail call void @av_free(ptr noundef %i.ac) #9
  br label %.loopexit.thread47

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.lr.ph36 ], [ 0, %.preheader ] ; 2 uses
  %i.ad = phi ptr [ %i.ag, %.lr.ph36 ], [ %i.u, %.preheader ]
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv41
  tail call void @av_channel_layout_uninit(ptr noundef %i.af) #9
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !49
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next42, %i.aj
  br i1 %i.ak, label %.lr.ph36, label %._crit_edge, !llvm.loop !66

.loopexit.thread47:                               ; preds = %bb.c, %._crit_edge, %.loopexit
  store ptr null, ptr %0, align 8, !tbaa !48
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
  store i32 %0, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %.not14.i = icmp eq i32 %i.e, -1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not14.i, label %.loopexit.loopexit.i, label %.preheader.i, !llvm.loop !24

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %i.f = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 6 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !25
  %.not15.i = icmp eq ptr %i.f, null
  br i1 %.not15.i, label %ff_make_format_list.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.loopexit.i
  %i.g = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.g, ptr %i.f, align 8, !tbaa !26
  %cond.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cond.i, label %ff_make_format_list.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @av_malloc_array(i64 noundef %indvars.iv.i, i64 noundef 4) #9 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  %.not17.i = icmp eq ptr %i.h, null
  br i1 %.not17.i, label %bb.d, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = shl i64 %indvars.iv.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.b, i64 %i.j, i1 false), !tbaa !21
  br label %ff_make_format_list.exit

bb.d:                                             ; preds = %bb.c
  call void @av_freep(ptr noundef nonnull %i.a) #9
  br label %ff_make_format_list.exit

ff_make_format_list.exit:                         ; preds = %.lr.ph.i.preheader, %.loopexit.loopexit.i, %bb.b, %bb.d
  %.011.i = phi ptr [ null, %.loopexit.loopexit.i ], [ null, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %.lr.ph.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret ptr %.011.i
}

; Function Attrs: nounwind uwtable
define ptr @ff_all_formats(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !25
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
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !67

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.f = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %indvars.iv)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

.critedge.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = and i64 %i.h, 24
  %or.cond.us = icmp eq i64 %i.j, 0
  br i1 %or.cond.us, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !72
  %.not31.us = icmp eq i8 %i.l, 0
  br i1 %.not31.us, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !73
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
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = and i64 %i.v, 24
  %or.cond = icmp eq i64 %i.x, 0
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !72
  %.not31 = icmp eq i8 %i.z, 0
  br i1 %.not31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !73
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
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.af = zext i32 %.02347 to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  store i32 %.02248, ptr %i.ag, align 4, !tbaa !21
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
  %i.ak = load i32, ptr %.fr, align 8, !tbaa !26
  %i.al = icmp eq i32 %i.ak, %.023.lcssa
  br i1 %i.al, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 644) #9
  tail call void @abort() #10
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.am = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 5 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !25
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.023.lcssa, ptr %i.am, align 8, !tbaa !26
  %.not37 = icmp eq i32 %.023.lcssa, 0
  br i1 %.not37, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = zext i32 %.023.lcssa to i64
  %i.ao = tail call ptr @av_malloc_array(i64 noundef %i.an, i64 noundef 4) #9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !31
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

declare ptr @av_get_sample_fmt_name(i32 noundef) local_unnamed_addr #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @ff_planar_sample_fmts() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = tail call i32 @av_get_bytes_per_sample(i32 noundef 0) #9
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.d = trunc nuw nsw i64 %indvars.iv to i32
  %i.e = call i32 @av_sample_fmt_is_planar(i32 noundef %i.d) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %indvars.iv)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = trunc nuw i64 %indvars.iv.next to i32
  %i.i = call i32 @av_get_bytes_per_sample(i32 noundef %i.h) #9
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %._crit_edge.loopexit
  %.04 = phi ptr [ null, %bb.a ], [ %.pre, %._crit_edge.loopexit ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.04
}

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #4

declare i32 @av_sample_fmt_is_planar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noalias ptr @ff_all_samplerates() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 32) #9
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ff_all_channel_layouts() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ff_all_channel_counts() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 32) #9 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 1, ptr %i.b, align 1, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @ff_all_color_spaces() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 2)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 0)
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.f = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 1)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %.thread, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.1
  %i.h = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 4)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.thread, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.j = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 5)
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.l = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 6)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.n = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 7)
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.p = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 8)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.r = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 9)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9
  %i.t = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 10)
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10
  %i.v = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 11)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11
  %i.x = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 12)
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12
  %i.z = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 13)
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %.preheader.14

.preheader.14:                                    ; preds = %.preheader.13
  %i.ab = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 14)
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.thread, label %.preheader.15

.preheader.15:                                    ; preds = %.preheader.14
  %i.ad = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 15)
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %.preheader.16

.preheader.16:                                    ; preds = %.preheader.15
  %i.af = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 16)
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread, label %.preheader.17

.preheader.17:                                    ; preds = %.preheader.16
  %i.ah = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef 17)
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = load ptr, ptr %i.a, align 8
  %spec.select = select i1 %i.ai, ptr null, ptr %i.aj
  br label %.thread

.thread:                                          ; preds = %.preheader.17, %.preheader.8, %.preheader.14, %.preheader.7, %.preheader.12, %.preheader.6, %.preheader.15, %.preheader.5, %.preheader.10, %.preheader.4, %.preheader.16, %.preheader.11, %.preheader.13, %.preheader.9, %.preheader.1, %.preheader.preheader, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %.preheader.8 ], [ null, %.preheader.preheader ], [ null, %.preheader.1 ], [ %spec.select, %.preheader.17 ], [ null, %.preheader.9 ], [ null, %.preheader.13 ], [ null, %.preheader.11 ], [ null, %.preheader.16 ], [ null, %.preheader.4 ], [ null, %.preheader.10 ], [ null, %.preheader.5 ], [ null, %.preheader.15 ], [ null, %.preheader.6 ], [ null, %.preheader.12 ], [ null, %.preheader.7 ], [ null, %.preheader.14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @ff_all_color_ranges() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
end_hunk_0
