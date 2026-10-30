Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/InteriorPointPoint?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom5PointE = external constant ptr
@_ZTIN4geos4geom18GeometryCollectionE = external constant ptr

@_ZN4geos9algorithm18InteriorPointPointC1EPKNS_4geom8GeometryE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos9algorithm18InteriorPointPointC2EPKNS_4geom8GeometryE

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm18InteriorPointPointC2EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) initializes((8, 64)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.d, align 8, !tbaa !18
  store <2 x double> <double +qnan, double +inf>, ptr %i.b, align 8, !tbaa !10
  %i.e = load ptr, ptr %1, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !tbaa !15
  tail call void @_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom8GeometryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom5PointE, i64 0) #6 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(82) %i.b) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !10
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !10
  %i.j = fsub <2 x double> %i.h, %i.i             ; 2 uses
  %i.k = fmul <2 x double> %i.j, %i.j             ; 2 uses
  %shift = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.k, %shift
  %i.l = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.m = tail call noundef double @llvm.sqrt.f64(double %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !16
  %i.p = fcmp olt double %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !17
  store double %i.m, ptr %i.n, align 8, !tbaa !16
  br label %_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit

bb.e:                                             ; preds = %bb.b
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #6 ; 5 uses
  %.not14 = icmp eq ptr %i.r, null
  br i1 %.not14, label %_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.r) ; 2 uses
  %.not20 = icmp eq i64 %i.v, 0
  br i1 %.not20, label %_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.019 = phi i64 [ %i.aa, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef %.019)
  tail call void @_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.z)
  %i.aa = add nuw i64 %.019, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.v
  br i1 %exitcond.not, label %_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit, label %.lr.ph, !llvm.loop !19

_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE.exit: ; preds = %.lr.ph, %bb.f, %bb.a, %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos9algorithm18InteriorPointPoint3addEPKNS_4geom10CoordinateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !10
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !10
  %i.d = fsub <2 x double> %i.b, %i.c             ; 2 uses
  %i.e = fmul <2 x double> %i.d, %i.d             ; 2 uses
  %shift = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.e, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.g = tail call noundef double @llvm.sqrt.f64(double %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !16
  %i.j = fcmp olt double %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !17
  store double %i.g, ptr %i.h, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos9algorithm18InteriorPointPoint16getInteriorPointERNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"_ZTSN4geos4geom10CoordinateE", !8, i64 0, !8, i64 8, !8, i64 16}
!10 = !{!8, !8, i64 0}
!11 = !{!"vtable pointer", !3, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"bool", !4, i64 0}
!14 = !{!"_ZTSN4geos9algorithm18InteriorPointPointE", !13, i64 0, !9, i64 8, !8, i64 32, !9, i64 40}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !8, i64 32}
!17 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!18 = !{!9, !8, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{i8 0, i8 2}
!22 = !{}
end_hunk_0
