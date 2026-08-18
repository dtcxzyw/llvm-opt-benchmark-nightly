inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef float @_ZN6Assimp13GeometryUtils5heronEfff(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fadd float %0, %1
  %i.b = fadd float %i.a, %2
  %i.c = fmul float %i.b, 5.000000e-01            ; 4 uses
  %i.d = fsub float %i.c, %0
  %i.e = fmul float %i.c, %i.d
  %i.f = fsub float %i.c, %1
  %i.g = fmul float %i.f, %i.e
  %i.h = fsub float %i.c, %2
  %i.i = fmul float %i.h, %i.g
  %i.j = fpext float %i.i to double
  %i.k = tail call double @pow(double noundef %i.j, double noundef 5.000000e-01) #8
  %i.l = fptrunc double %i.k to float
  ret float %i.l
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef float @_ZN6Assimp13GeometryUtils10distance3DERK10aiVector3tIfES4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4
  %i.b = load float, ptr %0, align 4
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4
  %i.h = fsub float %i.e, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = fmul float %i.h, %i.h
  %i.o = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.n)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.o)
  %i.q = fpext float %i.p to double
  %i.r = tail call double @pow(double noundef %i.q, double noundef 5.000000e-01) #8
  %i.s = fptrunc double %i.r to float
  ret float %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef float @_ZN6Assimp13GeometryUtils23calculateAreaOfTriangleERK6aiFaceP6aiMesh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.g ; 3 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.727.0.copyload = load float, ptr %.sroa.727.0..sroa_idx, align 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.k ; 3 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.721.0.copyload = load float, ptr %.sroa.721.0..sroa_idx, align 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.o ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.q = fsub float %.sroa.721.0.copyload, %.sroa.727.0.copyload ; 2 uses
  %i.r = load <2 x float>, ptr %i.h, align 4      ; 3 uses
  %.sroa.525.0.copyload = load float, ptr %.sroa.525.0..sroa_idx, align 4
  %i.s = load <2 x float>, ptr %i.l, align 4      ; 3 uses
  %.sroa.519.0.copyload = load float, ptr %.sroa.519.0..sroa_idx, align 4
  %i.t = load <2 x float>, ptr %i.p, align 4      ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.s, %i.r
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.v = fsub float %.sroa.519.0.copyload, %.sroa.525.0.copyload ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.w)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.x)
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @pow(double noundef %i.z, double noundef 5.000000e-01) #8
  %i.ab = fptrunc double %i.aa to float           ; 2 uses
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ad = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.ae = fsub <2 x float> %i.ac, %i.ad           ; 2 uses
  %i.af = shufflevector <2 x float> %i.t, <2 x float> %i.r, <2 x i32> <i32 1, i32 3>
  %i.ag = shufflevector <2 x float> %i.s, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.ah = fsub <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %.sroa.727.0.copyload, i64 1
  %i.ak = insertelement <2 x float> poison, float %.sroa.721.0.copyload, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %.sroa.7.0.copyload, i64 1
  %i.am = fsub <2 x float> %i.aj, %i.al           ; 2 uses
  %i.an = fmul <2 x float> %i.ah, %i.ah
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ae, <2 x float> %i.an)
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.am, <2 x float> %i.ao)
  %i.aq = fpext <2 x float> %i.ap to <2 x double> ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = tail call double @pow(double noundef %i.ar, double noundef 5.000000e-01) #8
  %i.at = fptrunc double %i.as to float           ; 2 uses
  %i.au = extractelement <2 x double> %i.aq, i64 1
  %i.av = tail call double @pow(double noundef %i.au, double noundef 5.000000e-01) #8
  %i.aw = fptrunc double %i.av to float           ; 2 uses
  %i.ax = fadd float %i.ab, %i.at
  %i.ay = fadd float %i.ax, %i.aw
  %i.az = fmul float %i.ay, 5.000000e-01          ; 4 uses
  %i.ba = fsub float %i.az, %i.ab
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = fsub float %i.az, %i.at
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = fsub float %i.az, %i.aw
  %i.bf = fmul float %i.be, %i.bd
  %i.bg = fpext float %i.bf to double
  %i.bh = tail call double @pow(double noundef %i.bg, double noundef 5.000000e-01) #8
  %i.bi = fptrunc double %i.bh to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.bi, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6Assimp13GeometryUtils14PlaneIntersectERK5aiRayRK10aiVector3tIfES7_RS5_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = load float, ptr %0, align 4                ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load float, ptr %5, align 4                ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = load float, ptr %2, align 4              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load float, ptr %i.h, align 4              ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load float, ptr %8, align 4                ; 2 uses
  %i.i = fmul float %i.e, %9
  %i.j = tail call float @llvm.fmuladd.f32(float %7, float %i.c, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4            ; 2 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.l, float %i.g, float %i.j) ; 2 uses
  %i.n = tail call float @llvm.fabs.f32(float %i.m)
  %i.o = fpext float %i.n to double
  %or.cond = fcmp olt double %i.o, 1.000000e-04
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4
  %i.r = fsub float %i.q, %i.b
  %10 = load float, ptr %1, align 4
  %11 = fsub float %10, %4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %13 = load float, ptr %12, align 4
  %14 = fsub float %13, %6
  %15 = fmul float %i.e, %14
  %i.s = tail call float @llvm.fmuladd.f32(float %i.c, float %11, float %15)
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.r, float %i.s)
  %i.u = fdiv float %i.t, %i.m                    ; 4 uses
  %i.v = fcmp olt float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %16 = fmul float %7, %i.u
  %17 = fmul float %9, %i.u
  %18 = fmul float %i.l, %i.u
  %19 = fadd float %4, %16
  %20 = fadd float %6, %17
  %i.w = fadd float %i.b, %18
  %.sroa.0.0.vec.insert.i29 = insertelement <2 x float> poison, float %19, i64 0
  %.sroa.0.4.vec.insert.i30 = insertelement <2 x float> %.sroa.0.0.vec.insert.i29, float %20, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i30, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.w, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6Assimp13GeometryUtils20normalizeVectorArrayEP10aiVector3tIfES3_m(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not14 = and i1 %i.a, %i.b
  %i.c = icmp ne i64 %2, 0
  %or.cond12 = and i1 %or.cond.not14, %i.c
  br i1 %or.cond12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %.011 = phi i64 [ %i.s, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.011 ; 4 uses
  %i.e = load <2 x float>, ptr %i.d, align 4      ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.j = load float, ptr %i.i, align 4            ; 3 uses
  %i.k = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.h) ; 2 uses
  %i.l = fcmp oeq float %i.k, 0.000000e+00
  br i1 %i.l, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.k)
  %i.m = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.e, %i.o
  store <2 x float> %i.p, ptr %i.d, align 4
  %i.q = fmul float %i.j, %i.m
  store float %i.q, ptr %i.i, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %.lr.ph, %_ZN10aiVector3tIfEdVEf.exit.i
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.s = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
end_hunk_0
