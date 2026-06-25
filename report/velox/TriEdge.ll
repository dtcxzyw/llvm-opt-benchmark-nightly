inline.NumInlined: 17
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [13 x i8] c"LINESTRING (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos11triangulate3tri7TriEdge9normalizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load double, ptr %0, align 8, !tbaa !7   ; 2 uses
  %i.c = load double, ptr %i.a, align 8, !tbaa !7 ; 2 uses
  %i.d = fcmp olt double %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ogt double %i.b, %i.c
  br i1 %i.e, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !10
  %i.j = fcmp olt double %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.copyload = load <3 x double>, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !11
  store <3 x double> %.sroa.0.0.copyload, ptr %i.a, align 8
  br label %_ZNK4geos4geom10Coordinate9compareToERKS1_.exit

_ZNK4geos4geom10Coordinate9compareToERKS1_.exit:  ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK4geos11triangulate3tri7TriEdge8HashCodeclERKS2_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = load double, ptr %1, align 8, !tbaa !7   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.e, ptr %i.d, align 8, !tbaa !12
  %i.f = fcmp une double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %_ZNKSt4hashIdEclEd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #8
  unreachable

_ZNKSt4hashIdEclEd.exit.i:                        ; preds = %bb.b, %bb.a
  %i.j = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.l, ptr %i.c, align 8, !tbaa !12
  %i.m = fcmp une double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit

bb.d:                                             ; preds = %_ZNKSt4hashIdEclEd.exit.i
  %i.n = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #8
  unreachable

_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit: ; preds = %_ZNKSt4hashIdEclEd.exit.i, %bb.d
  %i.q = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit.i ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.s, ptr %i.b, align 8, !tbaa !12
  %i.t = fcmp une double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.f, label %_ZNKSt4hashIdEclEd.exit.i4

bb.f:                                             ; preds = %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit
  %i.u = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit.i4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #8
  unreachable

_ZNKSt4hashIdEclEd.exit.i4:                       ; preds = %bb.f, %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit
  %i.x = phi i64 [ 0, %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load double, ptr %i.y, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.z, ptr %i.a, align 8, !tbaa !12
  %i.aa = fcmp une double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit5

bb.h:                                             ; preds = %_ZNKSt4hashIdEclEd.exit.i4
  %i.ab = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #8
  unreachable

_ZNK4geos4geom10Coordinate8HashCodeclERKS1_.exit5: ; preds = %_ZNKSt4hashIdEclEd.exit.i4, %bb.h
  %i.ae = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit.i4 ], [ %i.ab, %bb.h ]
  %i.af = shl i64 %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = shl i64 %i.ae, 1
  %i.ah = xor i64 %i.j, %i.af
  %i.ai = xor i64 %i.ah, %i.x
  %i.aj = xor i64 %i.ai, %i.ag
  %i.ak = xor i64 %i.aj, 17
  ret i64 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos11triangulate3trieqERKNS1_7TriEdgeES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8
  %i.b = load <2 x double>, ptr %1, align 8
  %i.c = fcmp oeq <2 x double> %i.a, %i.b         ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %.0.i.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %.0.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load <2 x double>, ptr %i.f, align 8
  %i.i = load <2 x double>, ptr %i.g, align 8
  %i.j = fcmp oeq <2 x double> %i.h, %i.i         ; 2 uses
  %i.k = extractelement <2 x i1> %i.j, i64 0
  %i.l = extractelement <2 x i1> %i.j, i64 1
  %.0.i.i4 = select i1 %i.k, i1 %i.l, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ false, %bb.a ], [ %.0.i.i4, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos11triangulate3trilsERSoRKNS1_7TriEdgeE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 12) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4geos4geomlsERSoRKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos4geom10CoordinateE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 8}
end_hunk_0
