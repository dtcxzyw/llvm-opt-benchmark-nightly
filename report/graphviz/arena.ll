Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/arena?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define hidden ptr @gv_arena_alloc(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %alloc.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = add i64 %i.f, 8                          ; 2 uses
  %i.h = sub nuw i64 %i.c, %2
  %i.i = add i64 %i.h, %i.g
  %i.j = sub i64 0, %1
  %i.k = and i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.g
  br i1 %i.l, label %alloc.exit, label %alloc.exit.a

alloc.exit.a:                                     ; preds = %bb.c
  %reass.sub = sub i64 %i.k, %i.f
  %i.m = add i64 %reass.sub, -8
  store i64 %i.m, ptr %i.b, align 8, !tbaa !15
  %i.n = inttoptr i64 %i.k to ptr
  br label %alloc.exit

alloc.exit:                                       ; preds = %bb.b, %bb.c, %alloc.exit.a
  %.1.i = phi ptr [ null, %bb.b ], [ %i.n, %alloc.exit.a ], [ null, %bb.c ] ; 2 uses
  %3 = icmp eq ptr %.1.i, null
  br i1 %3, label %alloc.exit.thread, label %alloc.exit17

alloc.exit.thread:                                ; preds = %alloc.exit
  %i.o = add i64 %1, -1
  %i.p = add i64 %i.o, %2
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 16376) ; 4 uses
  %i.q = add i64 %spec.select.i, 8                ; 3 uses
  %i.r = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 16384, 8) %i.q) #12 ; 4 uses
  %i.s = icmp ne i64 %i.q, 0
  %i.t = icmp eq ptr %i.r, null
  %or.cond3.i.i.i = and i1 %i.s, %i.t
  br i1 %or.cond3.i.i.i, label %bb.d, label %more_core.exit

bb.d:                                             ; preds = %alloc.exit.thread
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.1, i64 noundef range(i64 16384, 8) %i.q) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

more_core.exit:                                   ; preds = %alloc.exit.thread
  %i.w = load ptr, ptr %0, align 8, !tbaa !12
  store ptr %i.w, ptr %i.r, align 8, !tbaa !14
  store ptr %i.r, ptr %0, align 8, !tbaa !12
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !15
  %i.x = icmp ult i64 %spec.select.i, %2
  br i1 %i.x, label %alloc.exit17, label %bb.e

bb.e:                                             ; preds = %more_core.exit
  %i.y = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %i.aa = sub nuw i64 %spec.select.i, %2
  %i.ab = add i64 %i.aa, %i.z
  %i.ac = sub i64 0, %1
  %i.ad = and i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.z
  br i1 %i.ae, label %alloc.exit17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %reass.sub21 = sub i64 %i.ad, %i.y
  %i.af = add i64 %reass.sub21, -8
  store i64 %i.af, ptr %i.b, align 8, !tbaa !15
  %i.ag = inttoptr i64 %i.ad to ptr
  br label %alloc.exit17

alloc.exit17:                                     ; preds = %bb.f, %bb.e, %more_core.exit, %alloc.exit, %bb.a
  %.012 = phi ptr [ null, %bb.a ], [ %.1.i, %alloc.exit ], [ null, %more_core.exit ], [ %i.ag, %bb.f ], [ null, %bb.e ]
  ret ptr %.012
}

; Function Attrs: nofree nounwind uwtable
define hidden ptr @gv_arena_strdup(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15 ; 3 uses
  %i.b = add i64 %i.a, 1
  %i.c = tail call ptr @gv_arena_alloc(ptr noundef %0, i64 noundef 1, i64 noundef %i.b) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  store i8 0, ptr %i.d, align 1, !tbaa !18
  ret ptr %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @gv_arena_free(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @gv_arena_reset(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %.pr = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %.not6 = icmp eq ptr %.pr, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi ptr [ %i.b, %.lr.ph ], [ %.pr, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  tail call void @free(ptr noundef nonnull %i.a) #16
  store ptr %i.b, ptr %0, align 8, !tbaa !12
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #7 {
bb.a:
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { cold nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11arena_chunk", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !9, i64 0, !10, i64 8}
!12 = !{!11, !9, i64 0}
!13 = !{!"arena_chunk", !9, i64 0}
!14 = !{!13, !9, i64 0}
!15 = !{!11, !10, i64 8}
!16 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!4, !4, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
end_hunk_0
