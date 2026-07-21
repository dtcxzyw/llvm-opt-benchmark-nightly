inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0_@_ZN6Assimp13GeometryUtils5heronEfff:bb.a
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
  %.sroa.023.0.copyload = load float, ptr %i.h, align 4 ; 2 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.525.0.copyload = load float, ptr %.sroa.525.0..sroa_idx, align 4 ; 2 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.727.0.copyload = load float, ptr %.sroa.727.0..sroa_idx, align 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.k ; 3 uses
  %.sroa.017.0.copyload = load float, ptr %i.l, align 4 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.519.0.copyload = load float, ptr %.sroa.519.0..sroa_idx, align 4 ; 2 uses
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.721.0.copyload = load float, ptr %.sroa.721.0..sroa_idx, align 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.o ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.p, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.q = fsub float %.sroa.017.0.copyload, %.sroa.023.0.copyload ; 2 uses
  %i.r = fsub float %.sroa.519.0.copyload, %.sroa.525.0.copyload ; 2 uses
  %i.s = fsub float %.sroa.721.0.copyload, %.sroa.727.0.copyload ; 2 uses
  %i.t = fmul float %i.r, %i.r
  %i.u = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.u)
  %i.w = fpext float %i.v to double
  %i.x = tail call double @pow(double noundef %i.w, double noundef 5.000000e-01) #8
  %i.y = fptrunc double %i.x to float             ; 2 uses
  %i.z = fsub float %.sroa.0.0.copyload, %.sroa.017.0.copyload ; 2 uses
  %i.aa = fsub float %.sroa.5.0.copyload, %.sroa.519.0.copyload ; 2 uses
  %i.ab = fsub float %.sroa.7.0.copyload, %.sroa.721.0.copyload ; 2 uses
  %i.ac = fmul float %i.aa, %i.aa
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ac)
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ad)
  %i.af = fpext float %i.ae to double
  %i.ag = tail call double @pow(double noundef %i.af, double noundef 5.000000e-01) #8
  %i.ah = fptrunc double %i.ag to float           ; 2 uses
  %i.ai = fsub float %.sroa.023.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.aj = fsub float %.sroa.525.0.copyload, %.sroa.5.0.copyload ; 2 uses
  %i.ak = fsub float %.sroa.727.0.copyload, %.sroa.7.0.copyload ; 2 uses
  %i.al = fmul float %i.aj, %i.aj
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.al)
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.am)
  %i.ao = fpext float %i.an to double
  %i.ap = tail call double @pow(double noundef %i.ao, double noundef 5.000000e-01) #8
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = fadd float %i.y, %i.ah
  %i.as = fadd float %i.ar, %i.aq
  %i.at = fmul float %i.as, 5.000000e-01          ; 4 uses
  %i.au = fsub float %i.at, %i.y
  %i.av = fmul float %i.at, %i.au
  %i.aw = fsub float %i.at, %i.ah
  %i.ax = fmul float %i.aw, %i.av
  %i.ay = fsub float %i.at, %i.aq
  %i.az = fmul float %i.ay, %i.ax
  %i.ba = fpext float %i.az to double
  %i.bb = tail call double @pow(double noundef %i.ba, double noundef 5.000000e-01) #8
  %i.bc = fptrunc double %i.bb to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.bc, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6Assimp13GeometryUtils14PlaneIntersectERK5aiRayRK10aiVector3tIfES7_RS5_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = load float, ptr %2, align 4              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load float, ptr %i.k, align 4            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = fmul float %i.h, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float %i.f, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load float, ptr %i.q, align 4            ; 2 uses
  %i.s = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.j, float %i.p) ; 2 uses
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fpext float %i.t to double
  %or.cond = fcmp olt double %i.u, 1.000000e-04
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load float, ptr %i.v, align 4
  %i.x = fsub float %i.w, %i.e
  %i.y = load float, ptr %1, align 4
  %i.z = fsub float %i.y, %i.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fsub float %i.ab, %i.c
  %i.ad = fmul float %i.h, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.x, float %i.ae)
  %i.ag = fdiv float %i.af, %i.s                  ; 4 uses
  %i.ah = fcmp olt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = fmul float %i.l, %i.ag
  %i.aj = fmul float %i.n, %i.ag
  %i.ak = fmul float %i.r, %i.ag
  %i.al = fadd float %i.a, %i.ai
  %i.am = fadd float %i.c, %i.aj
  %i.an = fadd float %i.e, %i.ak
  %.sroa.0.0.vec.insert.i29 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert.i30 = insertelement <2 x float> %.sroa.0.0.vec.insert.i29, float %i.am, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i30, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.an, ptr %.sroa.4.0..sroa_idx, align 4
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
  %.011 = phi i64 [ %i.m, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.011 ; 5 uses
  %3 = load float, ptr %i.d, align 4              ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %5 = load float, ptr %4, align 4                ; 3 uses
  %6 = fmul float %5, %5
  %i.e = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  br i1 %i.i, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %7 = fmul float %3, %i.j
  store float %7, ptr %i.d, align 4
  %8 = fmul float %5, %i.j
  store float %8, ptr %4, align 4
  %i.k = fmul float %i.g, %i.j
  store float %i.k, ptr %i.f, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %.lr.ph, %_ZN10aiVector3tIfEdVEf.exit.i
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %.011
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.m = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3

.loopexit:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

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
