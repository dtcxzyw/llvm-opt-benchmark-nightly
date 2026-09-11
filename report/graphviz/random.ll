Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/random?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @gv_permutation(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64                  ; 6 uses
  %i.c = tail call noalias ptr @calloc(i64 noundef range(i64 1, 2147483648) %i.b, i64 noundef 4) #6 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %gv_calloc.exit.preheader

gv_calloc.exit.preheader:                         ; preds = %bb.b
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %gv_calloc.exit.preheader36, label %vector.ph

vector.ph:                                        ; preds = %gv_calloc.exit.preheader
  %n.vec = and i64 %i.b, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %vec.ind, ptr %i.e, align 4, !tbaa !13
  store <4 x i32> %step.add, ptr %i.f, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %.preheader, label %gv_calloc.exit.preheader36

gv_calloc.exit.preheader36:                       ; preds = %gv_calloc.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %gv_calloc.exit.preheader ], [ %n.vec, %middle.block ]
  br label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.i = shl nuw nsw i64 %i.b, 2
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef %i.i) #7 ; 0 uses
  tail call fastcc void @graphviz_exit() #8
  unreachable

.preheader:                                       ; preds = %gv_calloc.exit, %middle.block
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %.loopexit, label %.lr.ph27

gv_calloc.exit:                                   ; preds = %gv_calloc.exit.preheader36, %gv_calloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %gv_calloc.exit ], [ %indvars.iv.ph, %gv_calloc.exit.preheader36 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.l, ptr %i.k, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.preheader, label %gv_calloc.exit, !llvm.loop !11

.lr.ph27:                                         ; preds = %.preheader, %gv_random.exit
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %gv_random.exit ], [ %i.b, %.preheader ] ; 2 uses
  %i.m = trunc nuw i64 %indvars.iv30 to i32       ; 3 uses
  %i.n = urem i32 -2147483648, %i.m
  %i.o = sub nuw nsw i32 2147483647, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph27
  %i.p = tail call i32 @rand() #9                 ; 2 uses
  %i.q = icmp sgt i32 %i.p, %i.o
  br i1 %i.q, label %bb.d, label %gv_random.exit, !llvm.loop !0

gv_random.exit:                                   ; preds = %bb.d
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1 ; 2 uses
  %i.r = srem i32 %i.p, %i.m
  %1 = and i64 %indvars.iv.next31, 4294967295
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.s, align 4
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  store i32 %i.v, ptr %i.s, align 4, !tbaa !13
  store i32 %.sroa.0.0.copyload, ptr %i.u, align 4
  %i.w = icmp sgt i32 %i.m, 2
  br i1 %i.w, label %.lr.ph27, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %gv_random.exit, %.preheader, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.c, %.preheader ], [ %i.c, %gv_random.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483647, -2147483648) i32 @gv_random(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = urem i32 -2147483648, %0
  %i.b = sub nsw i32 2147483647, %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call i32 @rand() #9                 ; 2 uses
  %i.d = icmp sgt i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %random_small.exit, !llvm.loop !0

random_small.exit:                                ; preds = %bb.b
  %i.e = srem i32 %i.c, %0
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -1) i64 @gv_random_u64(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %0
  %i.b = urem i64 %i.a, %0
  %i.c = xor i64 %i.b, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @rand() #9
  %i.e = tail call i32 @rand() #9
  %i.f = tail call i32 @rand() #9
  %i.g = tail call i32 @rand() #9
  %i.h = tail call i32 @rand() #9
  %i.i = tail call i32 @rand() #9
  %i.j = tail call i32 @rand() #9
  %i.k = tail call i32 @rand() #9
  %i.l = and i32 %i.k, 255
  %.sroa.11.0.insert.ext = zext nneg i32 %i.l to i64
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.0.insert.ext, 56
  %i.m = and i32 %i.j, 255
  %.sroa.10.0.insert.ext = zext nneg i32 %i.m to i64
  %.sroa.10.0.insert.shift = shl nuw nsw i64 %.sroa.10.0.insert.ext, 48
  %.sroa.10.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.10.0.insert.shift
  %i.n = and i32 %i.i, 255
  %.sroa.9.0.insert.ext = zext nneg i32 %i.n to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 40
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.insert, %.sroa.9.0.insert.shift
  %i.o = and i32 %i.h, 255
  %.sroa.8.0.insert.ext = zext nneg i32 %i.o to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.8.0.insert.shift
  %i.p = shl i32 %i.g, 24
  %.sroa.7.0.insert.shift = zext i32 %i.p to i64
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.7.0.insert.shift
  %i.q = shl i32 %i.f, 16
  %i.r = shl i32 %i.e, 8
  %i.s = and i32 %i.q, 16711680
  %.sroa.6.0.insert.shift.masked = zext nneg i32 %i.s to i64
  %.sroa.5.0.insert.mask = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.6.0.insert.shift.masked
  %i.t = and i32 %i.d, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %i.t to i64
  %i.u = and i32 %i.r, 65280
  %.sroa.5.0.insert.shift.masked = zext nneg i32 %i.u to i64
  %.sroa.0.0.insert.mask = or i64 %.sroa.5.0.insert.mask, %.sroa.5.0.insert.shift.masked
  %.sroa.0.0.insert.insert = or i64 %.sroa.0.0.insert.mask, %.sroa.0.0.insert.ext ; 2 uses
  %i.v = icmp ugt i64 %.sroa.0.0.insert.insert, %i.c
  br i1 %i.v, label %bb.b, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  %i.w = urem i64 %.sroa.0.0.insert.insert, %0
  ret i64 %i.w
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #2 {
bb.a:
  tail call void @exit(i32 noundef 1) #10
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !14, !15}
!11 = distinct !{!11, !9, !15, !14}
!12 = distinct !{!12, !9}
!13 = !{!6, !6, i64 0}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = distinct !{!19, !9}
end_hunk_0
