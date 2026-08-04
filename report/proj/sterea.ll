begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.PJ_COORD = type { [4 x double] }

@_ZL10des_sterea = internal constant [54 x i8] c"Oblique Stereographic Alternative\0A\09Azimuthal, Sph&Ell\00", align 16
@pj_s_sterea = hidden local_unnamed_addr constant ptr @_ZL10des_sterea, align 8
@.str = private unnamed_addr constant [7 x i8] c"sterea\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_sterea(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #8 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_Z35pj_projection_specific_setup_stereaP8PJconsts.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.b, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load double, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  %i.j = call noundef ptr @_Z12pj_gauss_iniddPdS_(double noundef %i.g, double noundef %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !40
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_Z35pj_projection_specific_setup_stereaP8PJconsts.exit

bb.f:                                             ; preds = %bb.d
  %i.n = load double, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %i.o = call double @sin(double noundef %i.n) #7
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = call double @cos(double noundef %i.n) #7
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.q, ptr %i.r, align 8, !tbaa !44
  %i.s = load double, ptr %i.a, align 8, !tbaa !45
  %i.t = fmul double %i.s, 2.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.t, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL16sterea_e_inverse5PJ_XYP8PJconsts, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL16sterea_e_forward5PJ_LPP8PJconsts, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL10destructorP8PJconstsi, ptr %i.x, align 8, !tbaa !49
  br label %_Z35pj_projection_specific_setup_stereaP8PJconsts.exit

_Z35pj_projection_specific_setup_stereaP8PJconsts.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.m, %bb.e ], [ %0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.y = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @.str, ptr %i.aa, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @_ZL10des_sterea, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 360
  store i32 1, ptr %i.ac, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 380
  store i32 4, ptr %i.ad, align 4, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 384
  store i32 1, ptr %i.ae, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_Z35pj_projection_specific_setup_stereaP8PJconsts.exit
  %.0 = phi ptr [ %.0.i, %_Z35pj_projection_specific_setup_stereaP8PJconsts.exit ], [ %i.y, %bb.h ], [ null, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z35pj_projection_specific_setup_stereaP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #8 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.b, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load double, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.i = load double, ptr %i.h, align 8, !tbaa !39
  %i.j = call noundef ptr @_Z12pj_gauss_iniddPdS_(double noundef %i.g, double noundef %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !40
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = load double, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %i.o = call double @sin(double noundef %i.n) #7
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %i.o, ptr %i.p, align 8, !tbaa !43
  %i.q = call double @cos(double noundef %i.n) #7
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.q, ptr %i.r, align 8, !tbaa !44
  %i.s = load double, ptr %i.a, align 8, !tbaa !45
  %i.t = fmul double %i.s, 2.000000e+00
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.t, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL16sterea_e_inverse5PJ_XYP8PJconsts, ptr %i.v, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL16sterea_e_forward5PJ_LPP8PJconsts, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL10destructorP8PJconstsi, ptr %i.x, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.m, %bb.d ], [ %0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z12pj_gauss_iniddPdS_(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16sterea_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.d = load double, ptr %i.c, align 8, !tbaa !55 ; 2 uses
  %3 = fdiv double %0, %i.d                       ; 2 uses
  %4 = fdiv double %1, %i.d                       ; 3 uses
  %i.e = tail call double @hypot(double noundef %3, double noundef %4) #7 ; 4 uses
  %i.f = fcmp une double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !46
  %i.i = tail call double @atan2(double noundef %i.e, double noundef %i.h) #7
  %i.j = fmul double %i.i, 2.000000e+00           ; 2 uses
  %i.k = tail call double @sin(double noundef %i.j) #7 ; 3 uses
  %i.l = tail call double @cos(double noundef %i.j) #7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !43 ; 2 uses
  %5 = fmul double %4, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !44 ; 2 uses
  %i.q = fmul double %5, %i.p
  %i.r = fdiv double %i.q, %i.e
  %i.s = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.r)
  %i.t = tail call double @asin(double noundef %i.s) #7
  %6 = fmul double %3, %i.k
  %i.u = fmul double %i.e, %i.p
  %i.v = fmul double %4, %i.n
  %i.w = fneg double %i.k
  %i.x = fmul double %i.v, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.u, double %i.l, double %i.x)
  %i.z = tail call double @atan2(double noundef %6, double noundef %i.y) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = load double, ptr %i.b, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0 = phi double [ %i.t, %bb.b ], [ %i.aa, %bb.c ]
  %.sroa.017.0 = phi double [ %i.z, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.ab = load ptr, ptr %2, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = tail call { double, double } @_Z12pj_inv_gaussP6pj_ctx5PJ_LPPKv(ptr noundef %i.ab, double %.sroa.017.0, double %.sroa.6.0, ptr noundef %i.ad)
  ret { double, double } %i.ae
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL16sterea_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call { double, double } @_Z8pj_gaussP6pj_ctx5PJ_LPPKv(ptr noundef %i.c, double %0, double %1, ptr noundef %i.e) ; 2 uses
  %i.g = extractvalue { double, double } %i.f, 0  ; 2 uses
  %i.h = extractvalue { double, double } %i.f, 1  ; 2 uses
  %i.i = tail call double @sin(double noundef %i.h) #7 ; 2 uses
  %i.j = tail call double @cos(double noundef %i.h) #7 ; 3 uses
  %i.k = tail call double @cos(double noundef %i.g) #7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !43 ; 2 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.i, double 1.000000e+00)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !44 ; 2 uses
  %i.q = fmul double %i.j, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.k, double %i.n) ; 2 uses
  %i.s = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.027.0.copyload = load double, ptr %3, align 8, !tbaa !45
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0.copyload = load double, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.v = load double, ptr %i.u, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !46
  %i.y = fmul double %i.v, %i.x
  %i.z = fdiv double %i.y, %i.r                   ; 2 uses
  %i.aa = fmul double %i.j, %i.z
  %i.ab = tail call double @sin(double noundef %i.g) #7
  %i.ac = fmul double %i.ab, %i.aa
  %i.ad = fmul double %i.j, %i.m
  %i.ae = fneg double %i.k
  %i.af = fmul double %i.ad, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.p, double %i.i, double %i.af)
  %i.ah = fmul double %i.ag, %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.027.0 = phi double [ %.sroa.027.0.copyload, %bb.b ], [ %i.ac, %bb.c ]
  %.sroa.3.0 = phi double [ %.sroa.3.0.copyload, %bb.b ], [ %i.ah, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL10destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.f) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %i.g = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare { double, double } @_Z12pj_inv_gaussP6pj_ctx5PJ_LPPKv(ptr noundef, double, double, ptr noundef) local_unnamed_addr #1

declare { double, double } @_Z8pj_gaussP6pj_ctx5PJ_LPPKv(ptr noundef, double, double, ptr noundef) local_unnamed_addr #1

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 88}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !16, i64 208}
!39 = !{!9, !16, i64 448}
!40 = !{!41, !11, i64 32}
!41 = !{!"_ZTSN12_GLOBAL__N_19pj_opaqueE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !11, i64 32}
!42 = !{!41, !16, i64 0}
!43 = !{!41, !16, i64 16}
!44 = !{!41, !16, i64 8}
!45 = !{!16, !16, i64 0}
!46 = !{!41, !16, i64 24}
!47 = !{!9, !11, i64 112}
!48 = !{!9, !11, i64 104}
!49 = !{!9, !11, i64 152}
!50 = !{!9, !12, i64 8}
!51 = !{!9, !12, i64 16}
!52 = !{!9, !5, i64 360}
!53 = !{!9, !17, i64 380}
!54 = !{!9, !17, i64 384}
!55 = !{!9, !16, i64 488}
!56 = !{!9, !10, i64 0}
end_hunk_0
