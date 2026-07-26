inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [62 x i32] }

@_ZN5follyL12crc32_powersE = internal unnamed_addr constant %"struct.std::array" { [62 x i32] [i32 -306674912, i32 -1310281582, i32 -1603656425, i32 -312312402, i32 -1999551385, i32 -675545494, i32 -331055343, i32 -1904303760, i32 1680310286, i32 1296546528, i32 167662735, i32 -2088424177, i32 808857370, i32 2069535939, i32 838779241, i32 -1611922902, i32 1821240772, i32 366380877, i32 1608415822, i32 -1160180169, i32 776888047, i32 1319870996, i32 -1465617728, i32 1117427358, i32 344797226, i32 -1005869360, i32 -991810500, i32 1073741824, i32 536870912, i32 134217728, i32 8388608, i32 32768, i32 -306674912, i32 -1310281582, i32 -1603656425, i32 -312312402, i32 -1999551385, i32 -675545494, i32 -331055343, i32 -1904303760, i32 1680310286, i32 1296546528, i32 167662735, i32 -2088424177, i32 808857370, i32 2069535939, i32 838779241, i32 -1611922902, i32 1821240772, i32 366380877, i32 1608415822, i32 -1160180169, i32 776888047, i32 1319870996, i32 -1465617728, i32 1117427358, i32 344797226, i32 -1005869360, i32 -991810500, i32 1073741824, i32 536870912, i32 134217728] }, align 4
@_ZN5follyL13crc32c_powersE = internal unnamed_addr constant %"struct.std::array" { [62 x i32] [i32 -2097792136, i32 1856165212, i32 414771736, i32 1359660442, i32 -1205081771, i32 -1191333401, i32 -1998229646, i32 1958961316, i32 -468243690, i32 224753194, i32 903297634, i32 675681636, i32 -1085975959, i32 -487968036, i32 -25739034, i32 -112828149, i32 1008750479, i32 1401259747, i32 1500670229, i32 1934447369, i32 -1139095709, i32 2097619660, i32 -762721602, i32 -380851780, i32 95899455, i32 -1524752574, i32 1073741824, i32 536870912, i32 134217728, i32 8388608, i32 32768, i32 -2097792136, i32 1856165212, i32 414771736, i32 1359660442, i32 -1205081771, i32 -1191333401, i32 -1998229646, i32 1958961316, i32 -468243690, i32 224753194, i32 903297634, i32 675681636, i32 -1085975959, i32 -487968036, i32 -25739034, i32 -112828149, i32 1008750479, i32 1401259747, i32 1500670229, i32 1934447369, i32 -1139095709, i32 2097619660, i32 -762721602, i32 -380851780, i32 95899455, i32 -1524752574, i32 1073741824, i32 536870912, i32 134217728, i32 8388608, i32 32768] }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN5folly6detail16crc32_combine_swEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 2 uses
  %.not1.i = icmp eq i64 %i.a, 0
  br i1 %.not1.i, label %_ZN5follyL19crc32_append_zeroesIPFjjjjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5follyL14gf_multiply_swEjjj.exit.i
  %.04.i = phi i32 [ %i.n, %_ZN5follyL14gf_multiply_swEjjj.exit.i ], [ %0, %bb.a ]
  %.0143.i = phi ptr [ %i.x, %_ZN5follyL14gf_multiply_swEjjj.exit.i ], [ @_ZN5follyL12crc32_powersE, %bb.a ]
  %.0152.i = phi i64 [ %i.w, %_ZN5follyL14gf_multiply_swEjjj.exit.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0152.i, i1 true) ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.0143.i, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %.lr.ph.i
  %.tr1318.i.i.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.t, %tailrecurse.i.i.i ] ; 3 uses
  %.tr1217.i.i.i = phi i32 [ %.04.i, %.lr.ph.i ], [ %i.s, %tailrecurse.i.i.i ] ; 4 uses
  %.tr1116.i.i.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %tailrecurse.i.i.i ]
  %.tr15.i.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %tailrecurse.i.i.i ]
  %isneg.i.i.i = icmp slt i32 %.tr1318.i.i.i, 0
  %i.e = select i1 %isneg.i.i.i, i32 %.tr1217.i.i.i, i32 0
  %i.f = xor i32 %i.e, %.tr1116.i.i.i
  %i.g = lshr i32 %.tr1217.i.i.i, 1
  %i.h = and i32 %.tr1217.i.i.i, 1
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 0, i32 -306674912
  %i.k = xor i32 %i.j, %i.g                       ; 2 uses
  %i.l = add nuw nsw i64 %.tr15.i.i.i, 2          ; 2 uses
  %.mask = and i32 %.tr1318.i.i.i, 1073741824
  %isneg.i.i.i.1.not = icmp eq i32 %.mask, 0
  %i.m = select i1 %isneg.i.i.i.1.not, i32 0, i32 %i.k
  %i.n = xor i32 %i.m, %i.f                       ; 3 uses
  %i.o = lshr i32 %i.k, 1
  %i.p = and i32 %.tr1217.i.i.i, 2
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i32 0, i32 -306674912
  %i.s = xor i32 %i.r, %i.o
  %i.t = shl i32 %.tr1318.i.i.i, 2
  %i.u = icmp eq i64 %i.l, 32
  br i1 %i.u, label %_ZN5follyL14gf_multiply_swEjjj.exit.i, label %tailrecurse.i.i.i

_ZN5follyL14gf_multiply_swEjjj.exit.i:            ; preds = %tailrecurse.i.i.i
  %i.v = lshr exact i64 %.0152.i, %i.b
  %i.w = lshr i64 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN5follyL19crc32_append_zeroesIPFjjjjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i, !llvm.loop !13

_ZN5follyL19crc32_append_zeroesIPFjjjjEEEjT_jmjRKSt5arrayIjLm62EE.exit: ; preds = %_ZN5follyL14gf_multiply_swEjjj.exit.i, %bb.a
  %.0.lcssa.i = phi i32 [ %0, %bb.a ], [ %i.n, %_ZN5follyL14gf_multiply_swEjjj.exit.i ]
  %i.y = xor i32 %.0.lcssa.i, %1
  ret i32 %i.y
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN5folly6detail16crc32_combine_hwEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 2 uses
  %.not16.i = icmp eq i64 %i.a, 0
  br i1 %.not16.i, label %_ZN5follyL19crc32_append_zeroesIPFjmmjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.019.i = phi i32 [ %i.r, %.lr.ph.i ], [ %0, %bb.a ]
  %.01418.i = phi ptr [ %i.t, %.lr.ph.i ], [ @_ZN5follyL12crc32_powersE, %bb.a ]
  %.01517.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01517.i, i1 true) ; 2 uses
  %i.c = lshr exact i64 %.01517.i, %i.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.01418.i, i64 %i.b ; 2 uses
  %i.e = zext i32 %.019.i to i64
  %i.f = load i32, ptr %i.d, align 4, !tbaa !12
  %i.g = zext i32 %i.f to i64
  %i.h = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.i = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.j = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.i, <2 x i64> %i.h, i8 0)
  %i.k = shl <2 x i64> %i.j, splat (i64 1)        ; 2 uses
  %i.l = and <2 x i64> %i.k, <i64 4294967295, i64 poison>
  %i.m = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.l, <2 x i64> <i64 8439010881, i64 poison>, i8 0)
  %i.n = and <2 x i64> %i.m, <i64 4294967295, i64 poison>
  %i.o = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.n, <2 x i64> <i64 poison, i64 7976584769>, i8 16)
  %i.p = xor <2 x i64> %i.o, %i.k
  %i.q = bitcast <2 x i64> %i.p to <4 x i32>
  %i.r = extractelement <4 x i32> %i.q, i64 1     ; 2 uses
  %i.s = lshr i64 %i.c, 1                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZN5follyL19crc32_append_zeroesIPFjmmjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i, !llvm.loop !15

_ZN5follyL19crc32_append_zeroesIPFjmmjEEEjT_jmjRKSt5arrayIjLm62EE.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %0, %bb.a ], [ %i.r, %.lr.ph.i ]
  %i.u = xor i32 %.0.lcssa.i, %1
  ret i32 %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN5folly6detail17crc32c_combine_swEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 2 uses
  %.not1.i = icmp eq i64 %i.a, 0
  br i1 %.not1.i, label %_ZN5follyL19crc32_append_zeroesIPFjjjjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5follyL14gf_multiply_swEjjj.exit.i
  %.04.i = phi i32 [ %i.n, %_ZN5follyL14gf_multiply_swEjjj.exit.i ], [ %0, %bb.a ]
  %.0143.i = phi ptr [ %i.x, %_ZN5follyL14gf_multiply_swEjjj.exit.i ], [ @_ZN5follyL13crc32c_powersE, %bb.a ]
  %.0152.i = phi i64 [ %i.w, %_ZN5follyL14gf_multiply_swEjjj.exit.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0152.i, i1 true) ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.0143.i, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %.lr.ph.i
  %.tr1318.i.i.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.t, %tailrecurse.i.i.i ] ; 3 uses
  %.tr1217.i.i.i = phi i32 [ %.04.i, %.lr.ph.i ], [ %i.s, %tailrecurse.i.i.i ] ; 4 uses
  %.tr1116.i.i.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %tailrecurse.i.i.i ]
  %.tr15.i.i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.l, %tailrecurse.i.i.i ]
  %isneg.i.i.i = icmp slt i32 %.tr1318.i.i.i, 0
  %i.e = select i1 %isneg.i.i.i, i32 %.tr1217.i.i.i, i32 0
  %i.f = xor i32 %i.e, %.tr1116.i.i.i
  %i.g = lshr i32 %.tr1217.i.i.i, 1
  %i.h = and i32 %.tr1217.i.i.i, 1
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, i32 0, i32 -2097792136
  %i.k = xor i32 %i.j, %i.g                       ; 2 uses
  %i.l = add nuw nsw i64 %.tr15.i.i.i, 2          ; 2 uses
  %.mask = and i32 %.tr1318.i.i.i, 1073741824
  %isneg.i.i.i.1.not = icmp eq i32 %.mask, 0
  %i.m = select i1 %isneg.i.i.i.1.not, i32 0, i32 %i.k
  %i.n = xor i32 %i.m, %i.f                       ; 3 uses
  %i.o = lshr i32 %i.k, 1
  %i.p = and i32 %.tr1217.i.i.i, 2
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i32 0, i32 -2097792136
  %i.s = xor i32 %i.r, %i.o
  %i.t = shl i32 %.tr1318.i.i.i, 2
  %i.u = icmp eq i64 %i.l, 32
  br i1 %i.u, label %_ZN5follyL14gf_multiply_swEjjj.exit.i, label %tailrecurse.i.i.i

_ZN5follyL14gf_multiply_swEjjj.exit.i:            ; preds = %tailrecurse.i.i.i
  %i.v = lshr exact i64 %.0152.i, %i.b
  %i.w = lshr i64 %i.v, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZN5follyL19crc32_append_zeroesIPFjjjjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i, !llvm.loop !13

_ZN5follyL19crc32_append_zeroesIPFjjjjEEEjT_jmjRKSt5arrayIjLm62EE.exit: ; preds = %_ZN5follyL14gf_multiply_swEjjj.exit.i, %bb.a
  %.0.lcssa.i = phi i32 [ %0, %bb.a ], [ %i.n, %_ZN5follyL14gf_multiply_swEjjj.exit.i ]
  %i.y = xor i32 %.0.lcssa.i, %1
  ret i32 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN5folly6detail17crc32c_combine_hwEjjm(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 2 uses
  %.not16.i = icmp eq i64 %i.a, 0
  br i1 %.not16.i, label %_ZN5follyL19crc32_append_zeroesIPFjmmjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.019.i = phi i32 [ %i.p, %.lr.ph.i ], [ %0, %bb.a ]
  %.01418.i = phi ptr [ %i.r, %.lr.ph.i ], [ @_ZN5follyL13crc32c_powersE, %bb.a ]
  %.01517.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01517.i, i1 true) ; 2 uses
  %i.c = lshr exact i64 %.01517.i, %i.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %.01418.i, i64 %i.b ; 2 uses
  %i.e = zext i32 %.019.i to i64
  %i.f = load i32, ptr %i.d, align 4, !tbaa !12
  %i.g = zext i32 %i.f to i64
  %i.h = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.i = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %i.j = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.i, <2 x i64> %i.h, i8 0)
  %i.k = shl <2 x i64> %i.j, splat (i64 1)
  %i.l = bitcast <2 x i64> %i.k to <4 x i32>      ; 2 uses
  %i.m = extractelement <4 x i32> %i.l, i64 0
  %i.n = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 0, i32 %i.m)
  %i.o = extractelement <4 x i32> %i.l, i64 1
  %i.p = xor i32 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.c, 1                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %_ZN5follyL19crc32_append_zeroesIPFjmmjEEEjT_jmjRKSt5arrayIjLm62EE.exit, label %.lr.ph.i, !llvm.loop !15

_ZN5follyL19crc32_append_zeroesIPFjmmjEEEjT_jmjRKSt5arrayIjLm62EE.exit: ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %0, %bb.a ], [ %i.p, %.lr.ph.i ]
  %i.s = xor i32 %.0.lcssa.i, %1
  ret i32 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
end_hunk_0
