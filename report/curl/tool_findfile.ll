Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_findfile?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"CURL_HOME\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"XDG_CONFIG_HOME\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/.config\00", align 1
@conf_list = internal unnamed_addr constant [6 x { ptr, ptr, i8, [7 x i8] }] [{ ptr, ptr, i8, [7 x i8] } { ptr @.str.1, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.2, ptr null, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.3, ptr null, i8 0, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.1, ptr @.str.4, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } { ptr @.str.3, ptr @.str.4, i8 1, [7 x i8] zeroinitializer }, { ptr, ptr, i8, [7 x i8] } zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"%s/%c%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define ptr @findfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !9
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %checkhome.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.thread83
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.thread83 ] ; 3 uses
  %.043102 = phi i32 [ %1, %.preheader ], [ %.44788, %.thread83 ] ; 4 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr @conf_list, i64 %indvars.iv ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call ptr @curl_getenv(ptr noundef %i.d) #5 ; 6 uses
  %.not64 = icmp eq ptr %i.e, null
  br i1 %.not64, label %.thread83, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %.not65 = icmp eq i8 %i.f, 0
  br i1 %.not65, label %.thread83.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not66 = icmp samesign ult i64 %indvars.iv, 3
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str, ptr noundef nonnull %i.e, ptr noundef %i.h) #5 ; 2 uses
  tail call void @curl_free(ptr noundef nonnull %i.e) #5
  %.not67.not = icmp eq ptr %i.i, null
  br i1 %.not67.not, label %checkhome.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi ptr [ %i.i, %bb.e ], [ %i.e, %bb.d ]  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !16, !range !17, !noundef !18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not68 = icmp eq i32 %.043102, 0
  br i1 %.not68, label %.thread83.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.144 = phi i32 [ %.043102, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %0, %bb.f ], [ %i.b, %bb.g ]
  %i.m = icmp ugt i32 %.144, 1
  %i.n = tail call fastcc ptr @checkhome(ptr noundef %.1, ptr noundef nonnull %.0, i1 noundef zeroext %i.m)
  %.fr = freeze ptr %i.n                          ; 2 uses
  tail call void @curl_free(ptr noundef nonnull %.1) #5
  %.not70 = icmp eq ptr %.fr, null
  br i1 %.not70, label %.thread83, label %checkhome.exit

.thread83.sink.split:                             ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.e, %bb.c ], [ %.1, %bb.g ]
  %.44788.ph = phi i32 [ %.043102, %bb.c ], [ 0, %bb.g ]
  tail call void @curl_free(ptr noundef nonnull %.sink) #5
  br label %.thread83

.thread83:                                        ; preds = %.thread83.sink.split, %bb.h, %bb.b
  %.44788 = phi i32 [ %.043102, %bb.b ], [ %.144, %bb.h ], [ %.44788.ph, %.thread83.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not60 = icmp eq i64 %indvars.iv.next, 5
  br i1 %.not60, label %bb.i, label %bb.b, !llvm.loop !8

bb.i:                                             ; preds = %.thread83
  %i.o = tail call i32 @geteuid() #5
  %i.p = tail call ptr @getpwuid(i32 noundef %i.o) #5 ; 2 uses
  %.not61 = icmp eq ptr %i.p, null
  br i1 %.not61, label %checkhome.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 3 uses
  %.not62 = icmp eq ptr %i.r, null
  br i1 %.not62, label %checkhome.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %.not63 = icmp eq i8 %i.s, 0
  br i1 %.not63, label %checkhome.exit, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.k
  %i.t = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.r, ptr noundef nonnull %0) #5 ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %checkhome.exit, label %bb.l

bb.l:                                             ; preds = %.split.i.preheader
  %i.u = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.t, i32 noundef 0) #5 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %checkhome.exit.sink.split, label %.split30.us.i

.split30.us.i:                                    ; preds = %bb.l
  %i.w = tail call noalias ptr @strdup(ptr noundef nonnull %i.t) #5
  %i.x = tail call i32 @close(i32 noundef %i.u) #5 ; 0 uses
  br label %checkhome.exit.sink.split

checkhome.exit.sink.split:                        ; preds = %.split30.us.i, %bb.l
  %.9.ph = phi ptr [ %i.w, %.split30.us.i ], [ null, %bb.l ]
  tail call void @curl_free(ptr noundef nonnull %i.t) #5
  br label %checkhome.exit

checkhome.exit:                                   ; preds = %bb.h, %bb.e, %.split.i.preheader, %checkhome.exit.sink.split, %bb.i, %bb.j, %bb.k, %bb.a
  %.9 = phi ptr [ null, %bb.k ], [ null, %bb.a ], [ %.9.ph, %checkhome.exit.sink.split ], [ null, %.split.i.preheader ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.e ], [ %.fr, %bb.h ]
  ret ptr %.9
}

declare ptr @curl_getenv(ptr noundef) local_unnamed_addr #1

declare void @curl_free(ptr noundef) local_unnamed_addr #1

declare ptr @curl_maprintf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @checkhome(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %2, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.b = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.6, ptr noundef nonnull %0, i32 noundef 46, ptr noundef nonnull %i.a) #5 ; 4 uses
  %.not.us = icmp eq ptr %i.b, null
  br i1 %.not.us, label %.split.us.1, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.c = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 0) #5 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.split30.us

bb.c:                                             ; preds = %bb.b
  tail call void @curl_free(ptr noundef nonnull %i.b) #5
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.c, %.split.us
  %i.e = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.6, ptr noundef nonnull %0, i32 noundef 95, ptr noundef nonnull %i.a) #5 ; 4 uses
  %.not.us.1 = icmp eq ptr %i.e, null
  br i1 %.not.us.1, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.split.us.1
  %i.f = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.e, i32 noundef 0) #5 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %.split30.us

bb.e:                                             ; preds = %bb.d
  tail call void @curl_free(ptr noundef nonnull %i.e) #5
  br label %.loopexit

.split:                                           ; preds = %bb.a
  %i.h = tail call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.7, ptr noundef nonnull %0, ptr noundef %1) #5 ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.h, i32 noundef 0) #5 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %.split30.us

.split30.us:                                      ; preds = %bb.b, %bb.d, %bb.f
  %.us-phi = phi i32 [ %i.i, %bb.f ], [ %i.c, %bb.b ], [ %i.f, %bb.d ]
  %.us-phi31 = phi ptr [ %i.h, %bb.f ], [ %i.b, %bb.b ], [ %i.e, %bb.d ] ; 2 uses
  %i.k = tail call noalias ptr @strdup(ptr noundef nonnull %.us-phi31) #5
  %i.l = tail call i32 @close(i32 noundef %.us-phi) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split30.us
  %.sink = phi ptr [ %.us-phi31, %.split30.us ], [ %i.h, %bb.f ]
  %.4.ph = phi ptr [ %i.k, %.split30.us ], [ null, %bb.f ]
  tail call void @curl_free(ptr noundef nonnull %.sink) #5
  br label %.loopexit

.loopexit:                                        ; preds = %.split.us.1, %bb.e, %bb.g, %.split
  %.4 = phi ptr [ %.4.ph, %bb.g ], [ null, %.split ], [ null, %bb.e ], [ null, %.split.us.1 ]
  ret ptr %.4
}

declare ptr @getpwuid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = distinct !{!8, !19}
!9 = !{!4, !4, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!"finder", !11, i64 0, !11, i64 8, !12, i64 16}
!14 = !{!13, !11, i64 0}
!15 = !{!13, !11, i64 8}
!16 = !{!13, !12, i64 16}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"passwd", !11, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !11, i64 32, !11, i64 40}
!21 = !{!20, !11, i64 32}
end_hunk_0
