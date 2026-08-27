Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/kbdwin?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"n <= 1024\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"libavcodec/kbdwin.c\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define void @ff_kbd_window_init(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @kbd_window_init(ptr noundef %0, ptr noundef null, float noundef %1, i32 noundef %2) #5
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @kbd_window_init(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [513 x double], align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = fpext nsz float %2 to double
  %i.c = fmul nsz double %i.b, f0x400921FB54442D18
  %i.d = sitofp nsz i32 %3 to double
  %i.e = fdiv nsz double %i.c, %i.d               ; 2 uses
  %i.f = fmul nsz double %i.e, 4.000000e+00
  %i.g = fmul nsz double %i.e, %i.f
  %i.h = icmp slt i32 %3, 1025
  br i1 %i.h, label %.preheader60, label %bb.b

.preheader60:                                     ; preds = %bb.a
  %i.i = sdiv i32 %3, 2                           ; 3 uses
  %.not61 = icmp slt i32 %3, -1
  br i1 %.not61, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader60
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i32 %i.i, 1
  %wide.trip.count = zext i32 %i.k to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 33) #6
  tail call void @abort() #7
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %.063 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %indvars78 = trunc i64 %indvars.iv to i32
  %i.l = sub nsw i32 %3, %indvars78
  %i.m = trunc i64 %indvars.iv to i32
  %i.n = mul i32 %i.l, %i.m
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = fmul nsz double %i.g, %i.o
  %i.q = tail call nsz double @llvm.sqrt.f64(double %i.p)
  %i.r = tail call nsz double @av_bessel_i0(double noundef %i.q) #6 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double %i.r, ptr %i.s, align 8, !tbaa !9
  %.not59 = icmp eq i64 %indvars.iv, 0
  %i.t = icmp sge i64 %indvars.iv, %i.j
  %i.u = or i1 %.not59, %i.t
  %i.v = select i1 %i.u, double 1.000000e+00, double 2.000000e+00
  %i.w = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.v, double %.063) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph69, label %.lr.ph, !llvm.loop !11

.lr.ph69:                                         ; preds = %.lr.ph
  %i.x = fadd nsz double %i.w, 1.000000e+00
  %i.y = fdiv nsz double 1.000000e+00, %i.x       ; 2 uses
  %.not58 = icmp eq ptr %0, null
  %i.z = add nsw i32 %i.i, 1                      ; 2 uses
  %wide.trip.count82 = zext i32 %i.z to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.f, %.preheader60
  %i.aa = phi double [ 1.000000e+00, %.preheader60 ], [ %i.y, %bb.f ]
  %.150.lcssa = phi i32 [ 0, %.preheader60 ], [ %i.z, %bb.f ] ; 2 uses
  %.048.lcssa = phi double [ 0.000000e+00, %.preheader60 ], [ %i.af, %bb.f ]
  %i.ab = icmp slt i32 %.150.lcssa, %3
  br i1 %i.ab, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %.preheader
  %.not57 = icmp eq ptr %0, null
  %i.ac = zext nneg i32 %.150.lcssa to i64
  %wide.trip.count87 = zext i32 %3 to i64         ; 2 uses
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph69, %bb.f
  %indvars.iv79 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next80, %bb.f ] ; 4 uses
  %.04867 = phi double [ 0.000000e+00, %.lr.ph69 ], [ %i.af, %bb.f ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv79
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9
  %i.af = fadd nsz double %.04867, %i.ae          ; 3 uses
  %i.ag = fmul nsz double %i.y, %i.af
  %i.ah = tail call nsz double @llvm.sqrt.f64(double %i.ag) ; 2 uses
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = fptrunc nsz double %i.ah to float
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv79
  store float %i.ai, ptr %i.aj, align 4, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ak = fmul nsz double %i.ah, f0x41DFFFFFFFC00000
  %i.al = tail call i64 @llvm.lrint.i64.f64(double %i.ak)
  %i.am = trunc i64 %i.al to i32
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79
  store i32 %i.am, ptr %i.an, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.preheader, label %bb.c, !llvm.loop !16

bb.g:                                             ; preds = %.lr.ph74, %bb.j
  %indvars.iv84 = phi i64 [ %i.ac, %.lr.ph74 ], [ %indvars.iv.next85, %bb.j ] ; 4 uses
  %.173 = phi double [ %.048.lcssa, %.lr.ph74 ], [ %i.ar, %bb.j ]
  %i.ao = sub nuw nsw i64 %wide.trip.count87, %indvars.iv84
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ar = fadd nsz double %.173, %i.aq            ; 2 uses
  %i.as = fmul nsz double %i.aa, %i.ar
  %i.at = tail call nsz double @llvm.sqrt.f64(double %i.as) ; 2 uses
  br i1 %.not57, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = fptrunc nsz double %i.at to float
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv84
  store float %i.au, ptr %i.av, align 4, !tbaa !13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aw = fmul nsz double %i.at, f0x41DFFFFFFFC00000
  %i.ax = tail call i64 @llvm.lrint.i64.f64(double %i.aw)
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv84
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %._crit_edge75, label %bb.g, !llvm.loop !17

._crit_edge75:                                    ; preds = %bb.j, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define void @ff_kbd_window_init_fixed(ptr nofree noundef writeonly captures(none) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @kbd_window_init(ptr noundef null, ptr noundef %0, float noundef %1, i32 noundef %2) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare double @av_bessel_i0(double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
end_hunk_0
