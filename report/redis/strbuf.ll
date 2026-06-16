inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0
@.str.2 = private unnamed_addr constant [32 x i8] c"strbuf(%lx) resize: %zd => %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Out of memory, len: %zu\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"strbuf(%lx) reallocs: %d, length: %zd, size: %zd\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"BUG: Invalid strbuf length requested\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @strbuf_init(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %i.a = add i64 %1, 1
  %.0 = select i1 %.not, i64 1023, i64 %i.a       ; 3 uses
  %i.b = icmp ult i64 %.0, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, i64 noundef %1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  %i.e = tail call noalias ptr @malloc(i64 noundef %.0) #12 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !13
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1)
  unreachable

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 1, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal void @die(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #14 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = call i32 @fputc(i32 10, ptr %i.c)      ; 0 uses
  call void @abort() #15
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @strbuf_new(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.split5, label %.split

.split:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %0, 0
  %i.b = add i64 %0, 1
  %.0.i = select i1 %.not.i, i64 1023, i64 %i.b   ; 3 uses
  %i.c = icmp ult i64 %.0.i, %0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, i64 noundef %0)
  unreachable

bb.c:                                             ; preds = %.split
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.0.i, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.f = tail call noalias ptr @malloc(i64 noundef %.0.i) #12 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !13
  %.not16.i = icmp eq ptr %i.f, null
  br i1 %.not16.i, label %bb.d, label %strbuf_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1)
  unreachable

strbuf_init.exit:                                 ; preds = %bb.c
  store i8 0, ptr %i.f, align 1, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.g, align 8, !tbaa !17
  ret ptr %i.a

.split5:                                          ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1)
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_free(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %debug_stats.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.5, i64 noundef %i.d, i32 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j) #14 ; 0 uses
  br label %debug_stats.exit

debug_stats.exit:                                 ; preds = %bb.a, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %debug_stats.exit
  tail call void @free(ptr noundef nonnull %i.l) #13
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %debug_stats.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @strbuf_free_to_string(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %debug_stats.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.5, i64 noundef %i.d, i32 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j) #14 ; 0 uses
  br label %debug_stats.exit

debug_stats.exit:                                 ; preds = %bb.a, %bb.b
  %.val = load ptr, ptr %0, align 8, !tbaa !13
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val10 = load i64, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %.val10
  store i8 0, ptr %i.m, align 1, !tbaa !14
  %i.n = load ptr, ptr %0, align 8, !tbaa !13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %debug_stats.exit
  %i.o = load i64, ptr %i.l, align 8, !tbaa !20
  store i64 %i.o, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %debug_stats.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !17
  %.not9 = icmp eq i32 %i.q, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_resize(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %.thread.i
    i64 -1, label %bb.b
  ]

.thread.i:                                        ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.6)
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, i64 noundef -1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = add nuw i64 %1, 1                          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = icmp ugt i64 %i.b, %2
  %i.d = icmp ugt i64 %1, 9223372036854775805
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %calculate_new_size.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi i64 [ %i.e, %.preheader.i ], [ %i.b, %bb.c ] ; 3 uses
  %.not.i = icmp ugt i64 %.0.i, %1
  %i.e = shl i64 %.0.i, 1
  br i1 %.not.i, label %calculate_new_size.exit, label %.preheader.i, !llvm.loop !22

calculate_new_size.exit:                          ; preds = %.preheader.i, %bb.c
  %.018.i = phi i64 [ %2, %bb.c ], [ %.0.i, %.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %calculate_new_size.exit
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.j = ptrtoint ptr %0 to i64
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.2, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %.018.i) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %calculate_new_size.exit
  store i64 %.018.i, ptr %i.a, align 8, !tbaa !8
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = tail call ptr @realloc(ptr noundef %i.l, i64 noundef %.018.i) #16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %1)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_append_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %.not17 = icmp eq i8 %i.c, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val15 = load i64, ptr %i.a, align 8, !tbaa !8
  %.val16 = load i64, ptr %i.b, align 8, !tbaa !20 ; 2 uses
  %i.d = xor i64 %.val16, -1
  %i.e = add i64 %.val15, %i.d
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.f = phi i8 [ %i.v, %bb.c ], [ %i.c, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.r, %bb.c ], [ %.val16, %.lr.ph.preheader ] ; 2 uses
  %.019 = phi i64 [ %i.s, %bb.c ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.01318 = phi i64 [ %i.t, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = icmp eq i64 %.019, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.01318
  %i.j = add i64 %i.g, 1
  tail call void @strbuf_resize(ptr noundef nonnull %0, i64 noundef %i.j)
  %.val = load i64, ptr %i.a, align 8, !tbaa !8
  %.val14 = load i64, ptr %i.b, align 8, !tbaa !20 ; 2 uses
  %i.k = xor i64 %.val14, -1
  %i.l = add i64 %.val, %i.k
  %.pre = load i8, ptr %i.i, align 1, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.m = phi i64 [ %.val14, %bb.b ], [ %i.g, %.lr.ph ]
  %i.n = phi i8 [ %.pre, %bb.b ], [ %i.f, %.lr.ph ]
  %.1 = phi i64 [ %i.l, %bb.b ], [ %.019, %.lr.ph ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 %i.n, ptr %i.p, align 1, !tbaa !14
  %i.q = load i64, ptr %i.b, align 8, !tbaa !20
  %i.r = add i64 %i.q, 1                          ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !20
  %i.s = add i64 %.1, -1
  %i.t = add i64 %.01318, 1                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!17 = !{!9, !5, i64 24}
!18 = !{!9, !5, i64 32}
!19 = !{!9, !5, i64 28}
!20 = !{!9, !12, i64 16}
!21 = !{!12, !12, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
end_hunk_0
