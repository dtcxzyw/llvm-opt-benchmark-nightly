Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorreconstruction?download=true
inline.NumInlined: 49
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gtk_widget_set_no_show_all
declare void @gtk_widget_set_no_show_all(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_stack_new() local_unnamed_addr #3

declare void @gtk_stack_set_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_stack_add_named(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %dt_iop_colorreconstruct_bilateral_dump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.f) #23
  tail call void @free(ptr noundef nonnull %i.d) #23
  br label %dt_iop_colorreconstruct_bilateral_dump.exit

dt_iop_colorreconstruct_bilateral_dump.exit:      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !148
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !149
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !149
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !149
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !149
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !149
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !149
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !149
  store ptr @introspection_init.f4, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 424), align 8, !tbaa !149
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !149
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.15) #27
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.16) #27
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.17) #27
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.19) #27
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.18) #27
  %.not15 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select = select i1 %.not15, ptr %i.i, ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.15) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.16) #23
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.17) #23
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.19) #23
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #23
  %.not9 = icmp eq i32 %i.e, 0
  %. = select i1 %.not9, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ %., %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @blur_line(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #22 {
bb.a:
  %.not = icmp ne ptr %0, null
  %i.a = icmp sgt i32 %4, 0
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %.lr.ph262, label %.loopexit

.lr.ph262:                                        ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = icmp sgt i32 %5, 0
  %i.d = sext i32 %3 to i64                       ; 7 uses
  %i.e = shl nsw i32 %3, 1
  %i.f = sext i32 %i.e to i64                     ; 6 uses
  %i.g = icmp sgt i32 %6, 4
  %i.h = mul nsw i32 %6, %3
  %i.i = sub nsw i32 %2, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, %i.d
  br i1 %i.c, label %.lr.ph259.preheader, label %.loopexit

.lr.ph259.preheader:                              ; preds = %.lr.ph262
  %wide.trip.count = zext nneg i32 %4 to i64
  %7 = add i32 %6, -5
  %scevgep = getelementptr i8, ptr %0, i64 64
  %8 = add i32 %6, -3
  %i.l = add nsw i32 %6, -4                       ; 2 uses
  %9 = zext i32 %i.l to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %ident.check = icmp ne i32 %3, 1
  %10 = zext i32 %7 to i64
  %mul = shl nuw nsw i64 %10, 4
  %n.vec = and i64 %9, 4294967288                 ; 4 uses
  %11 = trunc nuw i64 %n.vec to i32
  %12 = or disjoint i32 %11, 2
  %cmp.n = icmp eq i64 %n.vec, %9
  %13 = add nsw i32 %6, -4
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %._crit_edge260
  %indvars.iv = phi i64 [ 0, %.lr.ph259.preheader ], [ %indvars.iv.next, %._crit_edge260 ] ; 2 uses
  %i.m = mul nsw i64 %indvars.iv, %i.b
  br label %bb.b

._crit_edge260:                                   ; preds = %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond265.not, label %.loopexit, label %.lr.ph259

bb.b:                                             ; preds = %.lr.ph259, %._crit_edge
  %.0235257 = phi i64 [ %i.m, %.lr.ph259 ], [ %i.bq, %._crit_edge ] ; 3 uses
  %.0236256 = phi i32 [ 0, %.lr.ph259 ], [ %i.br, %._crit_edge ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0235257 ; 3 uses
  %i.o = load <4 x float>, ptr %i.n, align 4, !tbaa !12 ; 9 uses
  %i.p = add i64 %.0235257, %i.d                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = getelementptr [16 x i8], ptr %i.n, i64 %i.f
  %i.s = fmul reassoc nsz arcp contract afn <4 x float> %i.o, splat (float 3.750000e-01)
  %i.t = load <4 x float>, ptr %i.q, align 4, !tbaa !12
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.t, splat (float 2.500000e-01)
  %i.v = fadd reassoc nsz arcp contract afn <4 x float> %i.u, %i.s
  %i.w = load <4 x float>, ptr %i.r, align 4, !tbaa !12
  %i.x = fmul reassoc nsz arcp contract afn <4 x float> %i.w, splat (float 6.250000e-02)
  %i.y = fadd reassoc nsz arcp contract afn <4 x float> %i.v, %i.x
  store <4 x float> %i.y, ptr %i.n, align 4, !tbaa !12
  %i.z = load <4 x float>, ptr %i.q, align 4, !tbaa !12 ; 8 uses
  %i.aa = add i64 %i.p, %i.d                      ; 6 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr [16 x i8], ptr %i.q, i64 %i.f
  %i.ad = fmul reassoc nsz arcp contract afn <4 x float> %i.z, splat (float 3.750000e-01)
  %i.ae = load <4 x float>, ptr %i.ab, align 4, !tbaa !12
  %i.af = fadd reassoc nsz arcp contract afn <4 x float> %i.ae, %i.o
  %i.ag = fmul reassoc nsz arcp contract afn <4 x float> %i.af, splat (float 2.500000e-01)
  %i.ah = fadd reassoc nsz arcp contract afn <4 x float> %i.ag, %i.ad
  %i.ai = load <4 x float>, ptr %i.ac, align 4, !tbaa !12
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ai, splat (float 6.250000e-02)
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.ah, %i.aj
  store <4 x float> %i.ak, ptr %i.q, align 4, !tbaa !12
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader315, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %14 = shl i64 %.0235257, 4
  %scevgep269 = getelementptr i8, ptr %scevgep, i64 %14 ; 2 uses
  %15 = getelementptr i8, ptr %scevgep269, i64 %mul
  %16 = icmp ult ptr %15, %scevgep269
  %17 = or i1 %ident.check, %16
  br i1 %17, label %.lr.ph.preheader315, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %18 = add i64 %i.aa, %n.vec                     ; 2 uses
  %19 = shufflevector <4 x float> %i.z, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %20 = shufflevector <4 x float> %i.z, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %21 = shufflevector <4 x float> %i.z, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2>
  %22 = shufflevector <4 x float> %i.z, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %23 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %24 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %25 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %26 = shufflevector <4 x float> %i.o, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %19, %vector.ph ], [ %strided.vec, %vector.body ]
  %vector.recur271 = phi <8 x float> [ %20, %vector.ph ], [ %strided.vec284, %vector.body ]
  %vector.recur273 = phi <8 x float> [ %21, %vector.ph ], [ %strided.vec285, %vector.body ]
  %vector.recur275 = phi <8 x float> [ %22, %vector.ph ], [ %strided.vec286, %vector.body ]
  %vector.recur277 = phi <8 x float> [ %23, %vector.ph ], [ %35, %vector.body ]
  %vector.recur279 = phi <8 x float> [ %24, %vector.ph ], [ %29, %vector.body ]
  %vector.recur281 = phi <8 x float> [ %25, %vector.ph ], [ %31, %vector.body ]
  %vector.recur283 = phi <8 x float> [ %26, %vector.ph ], [ %33, %vector.body ]
  %27 = add i64 %i.aa, %index                     ; 2 uses
  %28 = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %27 ; 3 uses
  %wide.vec = load <32 x float>, ptr %28, align 4, !tbaa !12 ; 6 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec284 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec285 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec286 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 3 uses
  %29 = shufflevector <8 x float> %vector.recur, <8 x float> %strided.vec, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %30 = shufflevector <8 x float> %vector.recur279, <8 x float> %29, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %31 = shufflevector <8 x float> %vector.recur271, <8 x float> %strided.vec284, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %32 = shufflevector <8 x float> %vector.recur281, <8 x float> %31, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %33 = shufflevector <8 x float> %vector.recur273, <8 x float> %strided.vec285, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %34 = shufflevector <8 x float> %vector.recur283, <8 x float> %33, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %35 = shufflevector <8 x float> %vector.recur275, <8 x float> %strided.vec286, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %36 = shufflevector <8 x float> %vector.recur277, <8 x float> %35, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %37 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 3.750000e-01)
  %38 = getelementptr [16 x i8], ptr %0, i64 %27
  %39 = getelementptr i8, ptr %38, i64 16
  %wide.vec287 = load <32 x float>, ptr %39, align 4, !tbaa !12 ; 4 uses
  %strided.vec288 = shufflevector <32 x float> %wide.vec287, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec289 = shufflevector <32 x float> %wide.vec287, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec290 = shufflevector <32 x float> %wide.vec287, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec291 = shufflevector <32 x float> %wide.vec287, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %40 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec288, %29
  %41 = fmul reassoc nsz arcp contract afn <8 x float> %40, splat (float 2.500000e-01)
  %42 = fadd reassoc nsz arcp contract afn <8 x float> %41, %37
  %43 = getelementptr [16 x i8], ptr %28, i64 %i.f
  %wide.vec292 = load <32 x float>, ptr %43, align 4, !tbaa !12 ; 4 uses
  %strided.vec293 = shufflevector <32 x float> %wide.vec292, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec294 = shufflevector <32 x float> %wide.vec292, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec295 = shufflevector <32 x float> %wide.vec292, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec296 = shufflevector <32 x float> %wide.vec292, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %44 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec293, %30
  %45 = fmul reassoc nsz arcp contract afn <8 x float> %44, splat (float 6.250000e-02)
  %46 = fadd reassoc nsz arcp contract afn <8 x float> %42, %45
  %47 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec284, splat (float 3.750000e-01)
  %48 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec289, %31
  %49 = fmul reassoc nsz arcp contract afn <8 x float> %48, splat (float 2.500000e-01)
  %50 = fadd reassoc nsz arcp contract afn <8 x float> %49, %47
  %51 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec294, %32
  %52 = fmul reassoc nsz arcp contract afn <8 x float> %51, splat (float 6.250000e-02)
  %53 = fadd reassoc nsz arcp contract afn <8 x float> %50, %52
  %54 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec285, splat (float 3.750000e-01)
  %55 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec290, %33
  %56 = fmul reassoc nsz arcp contract afn <8 x float> %55, splat (float 2.500000e-01)
  %57 = fadd reassoc nsz arcp contract afn <8 x float> %56, %54
  %58 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec295, %34
  %59 = fmul reassoc nsz arcp contract afn <8 x float> %58, splat (float 6.250000e-02)
  %60 = fadd reassoc nsz arcp contract afn <8 x float> %57, %59
  %61 = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec286, splat (float 3.750000e-01)
  %62 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec291, %35
  %63 = fmul reassoc nsz arcp contract afn <8 x float> %62, splat (float 2.500000e-01)
  %64 = fadd reassoc nsz arcp contract afn <8 x float> %63, %61
  %65 = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec296, %36
  %66 = fmul reassoc nsz arcp contract afn <8 x float> %65, splat (float 6.250000e-02)
  %67 = fadd reassoc nsz arcp contract afn <8 x float> %64, %66
  %68 = shufflevector <8 x float> %46, <8 x float> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %69 = shufflevector <8 x float> %60, <8 x float> %67, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %68, <16 x float> %69, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %28, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %70 = icmp eq i64 %index.next, %n.vec
  br i1 %70, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %71 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %72 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <4 x i32> <i32 24, i32 25, i32 26, i32 27> ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader315

.lr.ph.preheader315:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.0234247.ph = phi i32 [ 2, %vector.scevcheck ], [ 2, %.lr.ph.preheader ], [ %12, %middle.block ] ; 4 uses
  %.1242.ph = phi i64 [ %i.aa, %vector.scevcheck ], [ %i.aa, %.lr.ph.preheader ], [ %18, %middle.block ] ; 3 uses
  %.ph = phi <4 x float> [ %i.z, %vector.scevcheck ], [ %i.z, %.lr.ph.preheader ], [ %71, %middle.block ] ; 4 uses
  %.ph316 = phi <4 x float> [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.preheader ], [ %72, %middle.block ] ; 2 uses
  %73 = sub i32 %6, %.0234247.ph
  %xtraiter = and i32 %73, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader315
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1242.ph ; 3 uses
  %i.am = load <4 x float>, ptr %i.al, align 4, !tbaa !12 ; 3 uses
  %i.an = add i64 %.1242.ph, %i.d                 ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.an
  %i.ap = getelementptr [16 x i8], ptr %i.al, i64 %i.f
  %i.aq = fmul reassoc nsz arcp contract afn <4 x float> %i.am, splat (float 3.750000e-01)
  %i.ar = load <4 x float>, ptr %i.ao, align 4, !tbaa !12
  %i.as = fadd reassoc nsz arcp contract afn <4 x float> %i.ar, %.ph
  %i.at = fmul reassoc nsz arcp contract afn <4 x float> %i.as, splat (float 2.500000e-01)
  %i.au = fadd reassoc nsz arcp contract afn <4 x float> %i.at, %i.aq
  %i.av = load <4 x float>, ptr %i.ap, align 4, !tbaa !12
  %i.aw = fadd reassoc nsz arcp contract afn <4 x float> %i.av, %.ph316
  %i.ax = fmul reassoc nsz arcp contract afn <4 x float> %i.aw, splat (float 6.250000e-02)
  %i.ay = fadd reassoc nsz arcp contract afn <4 x float> %i.au, %i.ax
  store <4 x float> %i.ay, ptr %i.al, align 4, !tbaa !12
  %74 = add nuw nsw i32 %.0234247.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader315
  %.lcssa317.unr = phi <4 x float> [ poison, %.lr.ph.preheader315 ], [ %i.am, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader315 ], [ %i.an, %.lr.ph.prol ]
  %.0234247.unr = phi i32 [ %.0234247.ph, %.lr.ph.preheader315 ], [ %74, %.lr.ph.prol ]
  %.1242.unr = phi i64 [ %.1242.ph, %.lr.ph.preheader315 ], [ %i.an, %.lr.ph.prol ]
  %.unr = phi <4 x float> [ %.ph, %.lr.ph.preheader315 ], [ %i.am, %.lr.ph.prol ]
  %.unr319 = phi <4 x float> [ %.ph316, %.lr.ph.preheader315 ], [ %.ph, %.lr.ph.prol ]
  %75 = icmp eq i32 %8, %.0234247.ph
  br i1 %75, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b
  %.1.lcssa = phi i64 [ %i.aa, %bb.b ], [ %18, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cj, %.lr.ph ] ; 2 uses
  %76 = phi <4 x float> [ %i.o, %bb.b ], [ %72, %middle.block ], [ %.ph, %.lr.ph.prol.loopexit ], [ %i.bu, %.lr.ph ]
  %77 = phi <4 x float> [ %i.z, %bb.b ], [ %71, %middle.block ], [ %.lcssa317.unr, %.lr.ph.prol.loopexit ], [ %i.ci, %.lr.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1.lcssa ; 2 uses
  %i.ba = add i64 %.1.lcssa, %i.d                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ba ; 3 uses
  %i.bc = fmul reassoc nsz arcp contract afn <4 x float> %76, splat (float 6.250000e-02)
  %i.bd = fmul reassoc nsz arcp contract afn <4 x float> %77, splat (float 6.250000e-02)
  %i.be = load <4 x float>, ptr %i.az, align 4, !tbaa !12 ; 2 uses
  %i.bf = load <4 x float>, ptr %i.bb, align 4, !tbaa !12
  %i.bg = fadd reassoc nsz arcp contract afn <4 x float> %i.bf, %77
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, splat (float 2.500000e-01)
  %i.bi = fmul reassoc nsz arcp contract afn <4 x float> %i.be, splat (float 3.750000e-01)
  %i.bj = fadd reassoc nsz arcp contract afn <4 x float> %i.bi, %i.bc
  %i.bk = fadd reassoc nsz arcp contract afn <4 x float> %i.bj, %i.bh
  store <4 x float> %i.bk, ptr %i.az, align 4, !tbaa !12
  %i.bl = load <4 x float>, ptr %i.bb, align 4, !tbaa !12
  %i.bm = fmul reassoc nsz arcp contract afn <4 x float> %i.bl, splat (float 3.750000e-01)
  %i.bn = fmul reassoc nsz arcp contract afn <4 x float> %i.be, splat (float 2.500000e-01)
  %i.bo = fadd reassoc nsz arcp contract afn <4 x float> %i.bn, %i.bd
  %i.bp = fadd reassoc nsz arcp contract afn <4 x float> %i.bo, %i.bm
  store <4 x float> %i.bp, ptr %i.bb, align 4, !tbaa !12
  %i.bq = add i64 %i.k, %i.ba
  %i.br = add nuw nsw i32 %.0236256, 1            ; 2 uses
  %exitcond263.not = icmp eq i32 %i.br, %5
  br i1 %exitcond263.not, label %._crit_edge260, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0234247 = phi i32 [ %i.cv, %.lr.ph ], [ %.0234247.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.1242 = phi i64 [ %i.cj, %.lr.ph ], [ %.1242.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bs = phi <4 x float> [ %i.ci, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %78 = phi <4 x float> [ %i.bu, %.lr.ph ], [ %.unr319, %.lr.ph.prol.loopexit ]
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.1242 ; 3 uses
  %i.bu = load <4 x float>, ptr %i.bt, align 4, !tbaa !12 ; 4 uses
  %i.bv = add i64 %.1242, %i.d                    ; 3 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bv
  %i.bx = getelementptr [16 x i8], ptr %i.bt, i64 %i.f
  %i.by = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, splat (float 3.750000e-01)
  %i.bz = load <4 x float>, ptr %i.bw, align 4, !tbaa !12
  %i.ca = fadd reassoc nsz arcp contract afn <4 x float> %i.bz, %i.bs
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %i.ca, splat (float 2.500000e-01)
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, %i.by
  %i.cd = load <4 x float>, ptr %i.bx, align 4, !tbaa !12
  %i.ce = fadd reassoc nsz arcp contract afn <4 x float> %i.cd, %78
  %i.cf = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, splat (float 6.250000e-02)
  %i.cg = fadd reassoc nsz arcp contract afn <4 x float> %i.cc, %i.cf
  store <4 x float> %i.cg, ptr %i.bt, align 4, !tbaa !12
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bv ; 3 uses
  %i.ci = load <4 x float>, ptr %i.ch, align 4, !tbaa !12 ; 3 uses
  %i.cj = add i64 %i.bv, %i.d                     ; 3 uses
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cj
  %i.cl = getelementptr [16 x i8], ptr %i.ch, i64 %i.f
  %i.cm = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, splat (float 3.750000e-01)
  %i.cn = load <4 x float>, ptr %i.ck, align 4, !tbaa !12
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.bu
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, splat (float 2.500000e-01)
  %i.cq = fadd reassoc nsz arcp contract afn <4 x float> %i.cp, %i.cm
  %i.cr = load <4 x float>, ptr %i.cl, align 4, !tbaa !12
  %i.cs = fadd reassoc nsz arcp contract afn <4 x float> %i.cr, %i.bs
  %i.ct = fmul reassoc nsz arcp contract afn <4 x float> %i.cs, splat (float 6.250000e-02)
  %i.cu = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, %i.ct
  store <4 x float> %i.cu, ptr %i.ch, align 4, !tbaa !12
  %i.cv = add nuw nsw i32 %.0234247, 2
  %exitcond.not.1 = icmp eq i32 %.0234247, %13
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !151

.loopexit:                                        ; preds = %._crit_edge260, %.lr.ph262, %bb.a
  ret void
}

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!18 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!19 = !{!"dt_dev_histogram_collection_params_t", !18, i64 0, !8, i64 8}
!20 = !{!"p1 int", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!29 = !{!"p1 float", !13, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !23, i64 8, !21, i64 32, !21, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !22, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !21, i64 120, !8, i64 128, !8, i64 132, !23, i64 136, !23, i64 156, !23, i64 176, !23, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !13, i64 16}
!33 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!34 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!35 = !{!"dt_pthread_mutex_t", !7, i64 0}
!36 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!37 = !{!"", !28, i64 0, !28, i64 8}
!38 = !{!"", !16, i64 0, !8, i64 8}
!39 = !{!"", !37, i64 0, !38, i64 16}
!40 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!41 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!42 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!43 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !33, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !20, i64 608, !22, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !34, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !35, i64 712, !13, i64 752, !13, i64 760, !36, i64 768, !36, i64 776, !13, i64 784, !39, i64 792, !40, i64 824, !40, i64 832, !40, i64 840, !40, i64 848, !40, i64 856, !40, i64 864, !40, i64 872, !8, i64 880, !40, i64 888, !40, i64 896, !40, i64 904, !41, i64 912, !41, i64 920, !40, i64 928, !40, i64 936, !8, i64 944, !42, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !40, i64 1096, !13, i64 1104, !8, i64 1112}
!44 = !{!43, !13, i64 704}
!45 = !{!31, !11, i64 104}
!46 = !{!23, !11, i64 16}
!47 = !{!"dt_iop_colorreconstruct_data_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!48 = !{!43, !34, i64 664}
!49 = !{!"p1 omnipotent char", !13, i64 0}
!50 = !{!"p1 _ZTS42dt_iop_colorreconstruct_bilateral_frozen_t", !13, i64 0}
!51 = !{!"dt_iop_colorreconstruct_gui_data_t", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !50, i64 40, !21, i64 48}
!52 = !{!51, !50, i64 40}
!53 = !{!"p1 _ZTS29dt_iop_colorreconstruct_Lab_t", !13, i64 0}
!54 = !{!"dt_iop_colorreconstruct_bilateral_frozen_t", !21, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !53, i64 56}
!55 = !{!54, !53, i64 56}
!56 = !{!47, !8, i64 16}
!57 = !{!31, !8, i64 132}
!58 = !{!51, !40, i64 24}
!59 = !{!43, !13, i64 680}
!60 = !{!51, !40, i64 32}
!61 = !{!"dt_iop_colorreconstruct_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!62 = !{!61, !8, i64 16}
!63 = !{!43, !40, i64 824}
!64 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!65 = !{!"dt_action_t", !8, i64 0, !49, i64 8, !49, i64 16, !13, i64 24, !64, i64 32, !64, i64 40}
!66 = !{!"dt_iop_module_so_t", !65, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !33, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!67 = !{!66, !13, i64 520}
!68 = !{!"dt_iop_colorreconstruct_params_v1_t", !11, i64 0, !11, i64 4, !11, i64 8}
!69 = !{!68, !11, i64 8}
!70 = !{!"dt_iop_colorreconstruct_params_v3_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16}
!71 = !{!70, !11, i64 8}
!72 = !{!"dt_iop_colorreconstruct_params_v2_t", !11, i64 0, !11, i64 4, !11, i64 8, !8, i64 12}
!73 = !{!72, !11, i64 8}
!74 = !{!72, !8, i64 12}
!75 = !{!70, !8, i64 16}
!76 = !{!70, !11, i64 12}
!77 = !{!47, !11, i64 12}
!78 = !{!"double", !7, i64 0}
!79 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!80 = !{!"dt_image_geoloc_t", !78, i64 0, !78, i64 8, !78, i64 16}
!81 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!82 = !{!"p1 _ZTS6_GList", !13, i64 0}
!83 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!84 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !21, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !21, i64 1448, !21, i64 1456, !21, i64 1464, !21, i64 1472, !8, i64 1480, !27, i64 1488, !7, i64 1616, !49, i64 1656, !8, i64 1664, !8, i64 1668, !79, i64 1672, !80, i64 1680, !81, i64 1704, !24, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !82, i64 1856, !83, i64 1864, !8, i64 1872, !8, i64 1876}
!85 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!86 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!87 = !{!"dt_dev_proxy_exposure_t", !16, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!88 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!89 = !{!"", !88, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!90 = !{!"", !88, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!91 = !{!"", !87, i64 0, !16, i64 40, !89, i64 48, !90, i64 120}
!92 = !{!"dt_dev_chroma_t", !16, i64 0, !16, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!93 = !{!"", !16, i64 0, !16, i64 8, !13, i64 16}
!94 = !{!"", !40, i64 0, !40, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!95 = !{!"", !40, i64 0, !40, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!96 = !{!"", !40, i64 0, !40, i64 8}
!97 = !{!"", !40, i64 0, !8, i64 8}
!98 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!99 = !{!"dt_dev_viewport_t", !40, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !17, i64 80, !40, i64 88, !34, i64 96}
!100 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !78, i64 24, !78, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !78, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !16, i64 88, !17, i64 96, !84, i64 112, !8, i64 2000, !8, i64 2004, !35, i64 2008, !8, i64 2048, !82, i64 2056, !8, i64 2064, !16, i64 2072, !8, i64 2080, !82, i64 2088, !82, i64 2096, !8, i64 2104, !82, i64 2112, !82, i64 2120, !20, i64 2128, !20, i64 2136, !8, i64 2144, !8, i64 2148, !82, i64 2152, !85, i64 2160, !86, i64 2168, !82, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !16, i64 2208, !8, i64 2216, !91, i64 2224, !92, i64 2384, !93, i64 2496, !94, i64 2520, !95, i64 2560, !96, i64 2592, !97, i64 2608, !98, i64 2624, !40, i64 2664, !40, i64 2672, !99, i64 2680, !99, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !82, i64 2904, !8, i64 2912, !34, i64 2920}
!101 = !{!100, !8, i64 0}
!102 = !{!31, !17, i64 8}
!103 = !{!"any p2 pointer", !13, i64 0}
!104 = !{!"p1 long", !13, i64 0}
!105 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !13, i64 0}
!106 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !21, i64 8, !21, i64 16, !103, i64 24, !104, i64 32, !105, i64 40, !104, i64 48, !20, i64 56, !20, i64 64, !21, i64 72, !8, i64 80, !21, i64 88, !21, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!107 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!108 = !{!"dt_dev_detail_mask_t", !23, i64 0, !21, i64 24, !29, i64 32}
!109 = !{!"dt_dev_pixelpipe_t", !106, i64 0, !8, i64 120, !21, i64 128, !29, i64 136, !8, i64 144, !8, i64 148, !11, i64 152, !8, i64 156, !8, i64 160, !27, i64 176, !107, i64 304, !107, i64 312, !107, i64 320, !107, i64 328, !82, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !49, i64 360, !21, i64 368, !8, i64 376, !8, i64 380, !11, i64 384, !7, i64 388, !21, i64 416, !35, i64 424, !35, i64 464, !35, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !108, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !84, i64 656, !8, i64 2544, !49, i64 2552, !8, i64 2560, !82, i64 2568, !82, i64 2576, !82, i64 2584, !8, i64 2592, !29, i64 2600, !21, i64 2608, !7, i64 2616, !7, i64 2632}
!110 = !{!109, !8, i64 644}
!111 = !{!43, !8, i64 480}
!112 = !{!21, !21, i64 0}
!113 = !{!54, !21, i64 16}
!114 = !{!"dt_iop_colorreconstruct_bilateral_t", !21, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !53, i64 56}
!115 = !{!114, !21, i64 16}
!116 = !{!54, !11, i64 48}
!117 = !{!114, !11, i64 48}
!118 = !{!114, !53, i64 56}
!119 = !{!114, !21, i64 0}
!120 = !{!114, !21, i64 8}
!121 = !{!114, !11, i64 40}
!122 = !{!114, !11, i64 44}
!123 = !{!47, !11, i64 0}
!124 = !{!23, !8, i64 12}
!125 = !{!23, !8, i64 8}
!126 = !{!"dt_iop_colorreconstruct_Lab_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!127 = !{!126, !11, i64 12}
!128 = !{!126, !11, i64 0}
!129 = !{!126, !11, i64 8}
!130 = !{!126, !11, i64 4}
!131 = !{!54, !21, i64 0}
!132 = !{!54, !21, i64 8}
!133 = !{!51, !21, i64 48}
!134 = !{!47, !11, i64 8}
!135 = !{!47, !11, i64 4}
!136 = !{!"dt_develop_tiling_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!137 = !{!136, !11, i64 0}
!138 = !{!136, !11, i64 8}
!139 = !{!136, !8, i64 16}
!140 = !{!136, !8, i64 20}
!141 = !{!136, !8, i64 24}
!142 = !{!43, !8, i64 488}
!143 = !{!51, !40, i64 0}
!144 = !{!51, !40, i64 8}
!145 = !{!51, !40, i64 16}
!146 = !{!"p1 _ZTS24dt_introspection_field_t", !13, i64 0}
!147 = !{!"dt_introspection_t", !8, i64 0, !8, i64 4, !49, i64 8, !21, i64 16, !146, i64 24, !21, i64 32, !21, i64 40}
!148 = !{!147, !8, i64 0}
!149 = !{!7, !7, i64 0}
!150 = distinct !{!150, !152, !153}
!151 = distinct !{!151, !152}
!152 = !{!"llvm.loop.isvectorized", i32 1}
!153 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
