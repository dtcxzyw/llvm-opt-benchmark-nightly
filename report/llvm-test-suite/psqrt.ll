begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pzero = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"psqrt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @psqrt(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 2, !tbaa !11
  %i.d = add i16 %i.c, 1
  store i16 %i.d, ptr %0, align 2, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i32 @pcmpz(ptr noundef %0) #3  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @pzero, align 8, !tbaa !8
  %1 = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.g) #3 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @errorp(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  %2 = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.i) #3 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.j = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %0) #3 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.l = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.k) #3 ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.n = call ptr @pdivmod(ptr noundef %0, ptr noundef %i.m, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #3
  %i.o = call ptr @padd(ptr noundef %i.m, ptr noundef %i.n) #3
  %i.p = call ptr @phalf(ptr noundef %i.o) #3
  %i.q = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.p) #3 ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.t = call i32 @pcmp(ptr noundef %i.r, ptr noundef %i.s) #3
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.d
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %.not11 = icmp eq ptr %i.v, null
  br i1 %.not11, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.w = load i16, ptr %i.v, align 2, !tbaa !11
  %i.x = add i16 %i.w, -1                         ; 2 uses
  store i16 %i.x, ptr %i.v, align 2, !tbaa !11
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.v) #3 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.loopexit
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i16, ptr %0, align 2, !tbaa !11
  %i.ab = add i16 %i.aa, -1                       ; 2 uses
  store i16 %i.ab, ptr %0, align 2, !tbaa !11
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = call i32 (ptr, ...) @pfree(ptr noundef nonnull %0) #3 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.af = call ptr @presult(ptr noundef %i.ae) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @pcmpz(ptr noundef) local_unnamed_addr #2

declare ptr @psetq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @errorp(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @phalf(ptr noundef) local_unnamed_addr #2

declare ptr @padd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @pdivmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pfree(...) local_unnamed_addr #2

declare ptr @presult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 short", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
