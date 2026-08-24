Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLapack?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13IpLapackPotrsEiiPKdiPdi(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 %5, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i8 76, ptr %i.f, align 1, !tbaa !9
  call void @dpotrs_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @dpotrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13IpLapackPotrfEiPdiRi(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %2, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i8 76, ptr %i.d, align 1, !tbaa !9
  call void @dpotrf_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 1)
  %i.e = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.e, ptr %3, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @dpotrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt12IpLapackSyevEbiPdiS0_Ri(i1 noundef zeroext %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 %1, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %3, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %. = select i1 %0, i8 86, i8 78
  store i8 %., ptr %i.d, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i8 76, ptr %i.e, align 1, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 -1, ptr %i.f, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @dsyev_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1)
  %i.h = load double, ptr %i.g, align 8, !tbaa !10
  %i.i = fptosi double %i.h to i32                ; 3 uses
  store i32 %i.i, ptr %i.f, align 4, !tbaa !8
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i32 %i.i, 0
  %i.l = shl nsw i64 %i.j, 3
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #6 ; 4 uses
  %6 = load i32, ptr %i.f, align 4, !tbaa !8      ; 3 uses
  %i.o = icmp sgt i32 %6, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.p = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.q = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %i.r, align 8, !tbaa !10
  store <2 x double> %i.q, ptr %i.s, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @dsyev_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef %4, ptr noundef nonnull %i.n, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i32 noundef 1, i32 noundef 1)
  %i.u = load i32, ptr %i.c, align 4, !tbaa !8
  store i32 %i.u, ptr %5, align 4, !tbaa !8
  call void @_ZdaPv(ptr noundef nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %i.w, ptr %i.x, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16
}

declare void @dsyev_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13IpLapackGetrfEiPdPiiRi(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %0, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @dgetrf_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef nonnull %i.d)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  store i32 %i.e, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @dgetrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13IpLapackGetrsEiiPKdiPiPdi(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 %6, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i8 78, ptr %i.f, align 1, !tbaa !9
  call void @dgetrs_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @dgetrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt12IpLapackPpsvEiiPKdPdiRi(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 %4, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i8 85, ptr %i.e, align 1, !tbaa !9
  call void @dppsv_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.f = load i32, ptr %i.d, align 4, !tbaa !8
  store i32 %i.f, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare void @dppsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13, !14, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !13, !15, !14}
end_hunk_0
