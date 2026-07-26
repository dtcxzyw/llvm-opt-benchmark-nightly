inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos11triangulate8quadedge17TrianglePredicate19isInCircleNonRobustERKNS_4geom10CoordinateES6_S6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8   ; 5 uses
  %i.b = fmul double %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !11 ; 5 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = fadd double %i.b, %i.e
  %i.g = load double, ptr %2, align 8, !tbaa !8   ; 4 uses
  %i.h = load double, ptr %1, align 8, !tbaa !8   ; 5 uses
  %i.i = fsub double %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !11 ; 5 uses
  %i.n = fsub double %i.k, %i.m
  %i.o = fmul double %i.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !11 ; 4 uses
  %i.r = fsub double %i.q, %i.m
  %i.s = load double, ptr %3, align 8, !tbaa !8   ; 4 uses
  %i.t = fsub double %i.s, %i.h
  %i.u = fmul double %i.r, %i.t
  %i.v = fsub double %i.o, %i.u
  %i.w = fmul double %i.f, %i.v
  %i.x = fmul double %i.h, %i.h
  %i.y = fmul double %i.m, %i.m
  %i.z = fadd double %i.x, %i.y
  %i.aa = fsub double %i.g, %i.a                  ; 2 uses
  %i.ab = fsub double %i.k, %i.d                  ; 2 uses
  %i.ac = fmul double %i.aa, %i.ab
  %i.ad = fsub double %i.q, %i.d                  ; 2 uses
  %i.ae = fsub double %i.s, %i.a                  ; 2 uses
  %i.af = fmul double %i.ad, %i.ae
  %i.ag = fsub double %i.ac, %i.af
  %i.ah = fmul double %i.z, %i.ag
  %i.ai = fsub double %i.w, %i.ah
  %i.aj = fmul double %i.g, %i.g
  %i.ak = fmul double %i.q, %i.q
  %i.al = fadd double %i.aj, %i.ak
  %i.am = fsub double %i.h, %i.a                  ; 2 uses
  %i.an = fmul double %i.am, %i.ab
  %i.ao = fsub double %i.m, %i.d                  ; 2 uses
  %i.ap = fmul double %i.ao, %i.ae
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = fmul double %i.al, %i.aq
  %i.as = fadd double %i.ar, %i.ai
  %i.at = fmul double %i.s, %i.s
  %i.au = fmul double %i.k, %i.k
  %i.av = fadd double %i.au, %i.at
  %i.aw = fmul double %i.am, %i.ad
  %i.ax = fmul double %i.aa, %i.ao
  %i.ay = fsub double %i.aw, %i.ax
  %i.az = fmul double %i.av, %i.ay
  %i.ba = fcmp ogt double %i.as, %i.az
  ret i1 %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos11triangulate8quadedge17TrianglePredicate7triAreaERKNS_4geom10CoordinateES6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !12
  %i.c = fsub <2 x double> %i.b, %i.a
  %i.d = load <2 x double>, ptr %2, align 8, !tbaa !12
  %i.e = fsub <2 x double> %i.d, %i.a
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = fmul <2 x double> %i.c, %i.f             ; 2 uses
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.g, %shift
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos11triangulate8quadedge17TrianglePredicate20isInCircleNormalizedERKNS_4geom10CoordinateES6_S6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = fpext double %i.a to x86_fp80
  %i.c = load double, ptr %3, align 8, !tbaa !8
  %i.d = fpext double %i.c to x86_fp80            ; 3 uses
  %i.e = fsub x86_fp80 %i.b, %i.d                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !11
  %i.h = fpext double %i.g to x86_fp80
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !11
  %i.k = fpext double %i.j to x86_fp80            ; 3 uses
  %i.l = fsub x86_fp80 %i.h, %i.k                 ; 4 uses
  %i.m = load double, ptr %1, align 8, !tbaa !8
  %i.n = fpext double %i.m to x86_fp80
  %i.o = fsub x86_fp80 %i.n, %i.d                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = fpext double %i.q to x86_fp80
  %i.s = fsub x86_fp80 %i.r, %i.k                 ; 4 uses
  %i.t = load double, ptr %2, align 8, !tbaa !8
  %i.u = fpext double %i.t to x86_fp80
  %i.v = fsub x86_fp80 %i.u, %i.d                 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = fpext double %i.x to x86_fp80
  %i.z = fsub x86_fp80 %i.y, %i.k                 ; 4 uses
  %i.aa = fmul x86_fp80 %i.o, %i.z
  %i.ab = fmul x86_fp80 %i.s, %i.v
  %i.ac = fmul x86_fp80 %i.e, %i.e
  %i.ad = fmul x86_fp80 %i.l, %i.l
  %i.ae = fadd x86_fp80 %i.ac, %i.ad              ; 2 uses
  %i.af = fmul x86_fp80 %i.l, %i.v
  %i.ag = fmul x86_fp80 %i.e, %i.z
  %i.ah = fmul x86_fp80 %i.o, %i.o
  %i.ai = fmul x86_fp80 %i.s, %i.s
  %i.aj = fadd x86_fp80 %i.ah, %i.ai              ; 2 uses
  %i.ak = fmul x86_fp80 %i.e, %i.s
  %i.al = fmul x86_fp80 %i.l, %i.o
  %i.am = fmul x86_fp80 %i.v, %i.v
  %i.an = fmul x86_fp80 %i.z, %i.z
  %i.ao = fadd x86_fp80 %i.am, %i.an              ; 2 uses
  %i.ap = fmul x86_fp80 %i.ae, %i.aa
  %i.aq = fmul x86_fp80 %i.aj, %i.af
  %i.ar = fadd x86_fp80 %i.aq, %i.ap
  %i.as = fmul x86_fp80 %i.ak, %i.ao
  %i.at = fadd x86_fp80 %i.ar, %i.as
  %i.au = fmul x86_fp80 %i.ae, %i.ab
  %i.av = fmul x86_fp80 %i.aj, %i.ag
  %i.aw = fadd x86_fp80 %i.au, %i.av
  %i.ax = fmul x86_fp80 %i.al, %i.ao
  %i.ay = fadd x86_fp80 %i.aw, %i.ax
  %i.az = fcmp ogt x86_fp80 %i.at, %i.ay
  ret i1 %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos11triangulate8quadedge17TrianglePredicate16isInCircleRobustERKNS_4geom10CoordinateES6_S6_S6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !8
  %i.b = fpext double %i.a to x86_fp80
  %i.c = load double, ptr %3, align 8, !tbaa !8
  %i.d = fpext double %i.c to x86_fp80            ; 3 uses
  %i.e = fsub x86_fp80 %i.b, %i.d                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !11
  %i.h = fpext double %i.g to x86_fp80
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !11
  %i.k = fpext double %i.j to x86_fp80            ; 3 uses
  %i.l = fsub x86_fp80 %i.h, %i.k                 ; 4 uses
  %i.m = load double, ptr %1, align 8, !tbaa !8
  %i.n = fpext double %i.m to x86_fp80
  %i.o = fsub x86_fp80 %i.n, %i.d                 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = fpext double %i.q to x86_fp80
  %i.s = fsub x86_fp80 %i.r, %i.k                 ; 4 uses
  %i.t = load double, ptr %2, align 8, !tbaa !8
  %i.u = fpext double %i.t to x86_fp80
  %i.v = fsub x86_fp80 %i.u, %i.d                 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = fpext double %i.x to x86_fp80
  %i.z = fsub x86_fp80 %i.y, %i.k                 ; 4 uses
  %i.aa = fmul x86_fp80 %i.o, %i.z
  %i.ab = fmul x86_fp80 %i.s, %i.v
  %i.ac = fmul x86_fp80 %i.e, %i.e
  %i.ad = fmul x86_fp80 %i.l, %i.l
  %i.ae = fadd x86_fp80 %i.ac, %i.ad              ; 2 uses
  %i.af = fmul x86_fp80 %i.l, %i.v
  %i.ag = fmul x86_fp80 %i.e, %i.z
  %i.ah = fmul x86_fp80 %i.o, %i.o
  %i.ai = fmul x86_fp80 %i.s, %i.s
  %i.aj = fadd x86_fp80 %i.ah, %i.ai              ; 2 uses
  %i.ak = fmul x86_fp80 %i.e, %i.s
  %i.al = fmul x86_fp80 %i.l, %i.o
  %i.am = fmul x86_fp80 %i.v, %i.v
  %i.an = fmul x86_fp80 %i.z, %i.z
  %i.ao = fadd x86_fp80 %i.am, %i.an              ; 2 uses
  %i.ap = fmul x86_fp80 %i.ae, %i.aa
  %i.aq = fmul x86_fp80 %i.aj, %i.af
  %i.ar = fadd x86_fp80 %i.aq, %i.ap
  %i.as = fmul x86_fp80 %i.ak, %i.ao
  %i.at = fadd x86_fp80 %i.ar, %i.as
  %i.au = fmul x86_fp80 %i.ae, %i.ab
  %i.av = fmul x86_fp80 %i.aj, %i.ag
  %i.aw = fadd x86_fp80 %i.au, %i.av
  %i.ax = fmul x86_fp80 %i.al, %i.ao
  %i.ay = fadd x86_fp80 %i.aw, %i.ax
  %i.az = fcmp ogt x86_fp80 %i.at, %i.ay
  ret i1 %i.az
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4geos4geom10CoordinateE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!10, !10, i64 0}
end_hunk_0
