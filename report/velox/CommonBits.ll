inline.NumInlined: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN4geos9precision10CommonBitsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos9precision10CommonBitsC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 -2048, 2048) i64 @_ZN4geos9precision10CommonBits11signExpBitsEl(i64 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ashr i64 %0, 52
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
vector.ph:
  %i.a = xor i64 %1, %0                           ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.a, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.b = and <16 x i64> %broadcast.splat, <i64 4503599627370496, i64 2251799813685248, i64 1125899906842624, i64 562949953421312, i64 281474976710656, i64 140737488355328, i64 70368744177664, i64 35184372088832, i64 17592186044416, i64 8796093022208, i64 4398046511104, i64 2199023255552, i64 1099511627776, i64 549755813888, i64 274877906944, i64 137438953472>
  %i.c = icmp ne <16 x i64> %i.b, zeroinitializer ; 2 uses
  %i.d = bitcast <16 x i1> %i.c to i16
  %.not16 = icmp eq i16 %i.d, 0
  br i1 %.not16, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.e = and <16 x i64> %broadcast.splat, <i64 68719476736, i64 34359738368, i64 17179869184, i64 8589934592, i64 4294967296, i64 2147483648, i64 1073741824, i64 536870912, i64 268435456, i64 134217728, i64 67108864, i64 33554432, i64 16777216, i64 8388608, i64 4194304, i64 2097152>
  %i.f = icmp ne <16 x i64> %i.e, zeroinitializer ; 2 uses
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not16.1 = icmp eq i16 %i.g, 0
  br i1 %.not16.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.h = and <16 x i64> %broadcast.splat, <i64 1048576, i64 524288, i64 262144, i64 131072, i64 65536, i64 32768, i64 16384, i64 8192, i64 4096, i64 2048, i64 1024, i64 512, i64 256, i64 128, i64 64, i64 32>
  %i.i = icmp ne <16 x i64> %i.h, zeroinitializer ; 2 uses
  %i.j = bitcast <16 x i1> %i.i to i16
  %.not16.2 = icmp eq i16 %i.j, 0
  br i1 %.not16.2, label %scalar.ph, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.interim.1, %vector.body.interim, %vector.ph
  %index.lcssa = phi i32 [ 0, %vector.ph ], [ 16, %vector.body.interim ], [ 32, %vector.body.interim.1 ]
  %.lcssa = phi <16 x i1> [ %i.c, %vector.ph ], [ %i.f, %vector.body.interim ], [ %i.i, %vector.body.interim.1 ]
  %i.k = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.l = trunc i64 %i.k to i32
  %i.m = add i32 %index.lcssa, %i.l
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.body.interim.1
  %i.n = and i64 %i.a, 16
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %scalar.ph.1, label %.loopexit

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.o = and i64 %i.a, 8
  %.not.1 = icmp eq i64 %i.o, 0
  br i1 %.not.1, label %scalar.ph.2, label %.loopexit

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.p = and i64 %i.a, 4
  %.not.2 = icmp eq i64 %i.p, 0
  br i1 %.not.2, label %scalar.ph.3, label %.loopexit

scalar.ph.3:                                      ; preds = %scalar.ph.2
  %i.q = and i64 %i.a, 2
  %.not.3 = icmp eq i64 %i.q, 0
  %spec.select = select i1 %.not.3, i32 52, i32 51
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.3, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %vector.early.exit
  %.01113.lcssa = phi i32 [ %i.m, %vector.early.exit ], [ %spec.select, %scalar.ph.3 ], [ 48, %scalar.ph ], [ 49, %scalar.ph.1 ], [ 50, %scalar.ph.2 ]
  ret i32 %.01113.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @_ZN4geos9precision10CommonBits6getBitEli(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  %i.b = lshr i64 %0, %i.a
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 1
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN4geos9precision10CommonBits13zeroLowerBitsEli(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 63
  %i.a = zext nneg i32 %1 to i64
  %notmask = shl nsw i64 -1, %i.a
  %i.b = and i64 %notmask, %0
  %.0 = select i1 %or.cond, i64 0, i64 %i.b
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos9precision10CommonBitsC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 1), (4, 16)) %0) unnamed_addr #1 align 2 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 53, ptr %i.a, align 4, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN4geos9precision10CommonBits3addEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = fptosi double %1 to i64                  ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !7, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.d, align 8, !tbaa !12
  %i.e = ashr i64 %i.a, 52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !15
  store i8 0, ptr %0, align 8, !tbaa !7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = ashr i64 %i.a, 52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  %.not = icmp eq i64 %i.g, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.j, align 8, !tbaa !12
  br label %bb.e

vector.ph:                                        ; preds = %bb.c
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = xor i64 %i.k, %i.a                       ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splat.fr = freeze <16 x i64> %broadcast.splat ; 3 uses
  %i.m = and <16 x i64> %broadcast.splat.fr, <i64 4503599627370496, i64 2251799813685248, i64 1125899906842624, i64 562949953421312, i64 281474976710656, i64 140737488355328, i64 70368744177664, i64 35184372088832, i64 17592186044416, i64 8796093022208, i64 4398046511104, i64 2199023255552, i64 1099511627776, i64 549755813888, i64 274877906944, i64 137438953472>
  %i.n = icmp ne <16 x i64> %i.m, zeroinitializer ; 2 uses
  %i.o = bitcast <16 x i1> %i.n to i16
  %.not5 = icmp eq i16 %i.o, 0
  br i1 %.not5, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.ph
  %i.p = and <16 x i64> %broadcast.splat.fr, <i64 68719476736, i64 34359738368, i64 17179869184, i64 8589934592, i64 4294967296, i64 2147483648, i64 1073741824, i64 536870912, i64 268435456, i64 134217728, i64 67108864, i64 33554432, i64 16777216, i64 8388608, i64 4194304, i64 2097152>
  %i.q = icmp ne <16 x i64> %i.p, zeroinitializer ; 2 uses
  %i.r = bitcast <16 x i1> %i.q to i16
  %.not5.1 = icmp eq i16 %i.r, 0
  br i1 %.not5.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %i.s = and <16 x i64> %broadcast.splat.fr, <i64 1048576, i64 524288, i64 262144, i64 131072, i64 65536, i64 32768, i64 16384, i64 8192, i64 4096, i64 2048, i64 1024, i64 512, i64 256, i64 128, i64 64, i64 32>
  %i.t = icmp ne <16 x i64> %i.s, zeroinitializer ; 2 uses
  %i.u = bitcast <16 x i1> %i.t to i16
  %.not5.2 = icmp eq i16 %i.u, 0
  br i1 %.not5.2, label %scalar.ph, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.interim.1, %vector.body.interim, %vector.ph
  %index.lcssa = phi i32 [ 0, %vector.ph ], [ 16, %vector.body.interim ], [ 32, %vector.body.interim.1 ]
  %.lcssa = phi <16 x i1> [ %i.n, %vector.ph ], [ %i.q, %vector.body.interim ], [ %i.t, %vector.body.interim.1 ]
  %i.v = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %index.lcssa, %i.w
  br label %_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit

scalar.ph:                                        ; preds = %vector.body.interim.1
  %i.y = and i64 %i.l, 16
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %scalar.ph.1, label %_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.z = and i64 %i.l, 8
  %.not.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.1, label %scalar.ph.2, label %_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.aa = and i64 %i.l, 4
  %.not.i.2 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.2, label %scalar.ph.3, label %_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit

scalar.ph.3:                                      ; preds = %scalar.ph.2
  %i.ab = and i64 %i.l, 2
  %.not.i.3 = icmp eq i64 %i.ab, 0
  %spec.select = select i1 %.not.i.3, i32 52, i32 51
  br label %_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit

_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit: ; preds = %scalar.ph.3, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %vector.early.exit
  %.01113.i.lcssa = phi i32 [ %i.x, %vector.early.exit ], [ %spec.select, %scalar.ph.3 ], [ 48, %scalar.ph ], [ 49, %scalar.ph.1 ], [ 50, %scalar.ph.2 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.01113.i.lcssa, ptr %i.ac, align 4, !tbaa !11
  %i.ad = sub nsw i32 52, %.01113.i.lcssa         ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ad, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i = shl nsw i64 -1, %i.ae
  %i.af = and i64 %notmask.i, %i.k
  %.0.i = select i1 %or.cond.i, i64 0, i64 %i.af
  store i64 %.0.i, ptr %i.j, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4geos9precision10CommonBits28numCommonMostSigMantissaBitsEll.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9precision10CommonBits9getCommonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = sitofp i64 %i.b to double
  ret double %i.c
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!"_ZTSN4geos9precision10CommonBitsE", !9, i64 0, !4, i64 4, !10, i64 8, !10, i64 16}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!8, !4, i64 4}
!12 = !{!8, !10, i64 8}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!8, !10, i64 16}
end_hunk_0
