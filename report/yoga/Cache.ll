Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/Cache?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook4yoga23canUseCachedMeasurementENS0_10SizingModeEfS1_fS1_fS1_fffffPKNS0_6ConfigE(i32 noundef %0, float noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ord float %9, 0.000000e+00
  %i.b = fcmp olt float %9, 0.000000e+00
  br i1 %i.b, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ord float %8, 0.000000e+00
  %i.d = fcmp olt float %8, 0.000000e+00
  br i1 %i.d, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef float @_ZNK8facebook4yoga6Config19getPointScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(48) %12) ; 2 uses
  %i.f = fcmp une float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = fpext float %1 to double
  %i.h = fpext float %i.e to double               ; 4 uses
  %i.i = tail call noundef float @_ZN8facebook4yoga21roundValueToPixelGridEddbb(double noundef %i.g, double noundef %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.j = fpext float %3 to double
  %i.k = tail call noundef float @_ZN8facebook4yoga21roundValueToPixelGridEddbb(double noundef %i.j, double noundef %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.l = fpext float %5 to double
  %i.m = tail call noundef float @_ZN8facebook4yoga21roundValueToPixelGridEddbb(double noundef %i.l, double noundef %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.n = fpext float %7 to double
  %i.o = tail call noundef float @_ZN8facebook4yoga21roundValueToPixelGridEddbb(double noundef %i.n, double noundef %i.h, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi float [ %i.m, %bb.d ], [ %5, %bb.c ] ; 3 uses
  %i.q = phi float [ %i.i, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %i.r = phi float [ %i.k, %bb.d ], [ %3, %bb.c ] ; 3 uses
  %i.s = phi float [ %i.o, %bb.d ], [ %7, %bb.c ] ; 3 uses
  %i.t = icmp eq i32 %4, %0
  br i1 %i.t, label %bb.f, label %_ZN8facebook4yoga13inexactEqualsEff.exit

bb.f:                                             ; preds = %bb.e
  %or.cond.i = fcmp ord float %i.p, %i.q
  br i1 %or.cond.i, label %bb.g, label %13

bb.g:                                             ; preds = %bb.f
  %i.u = fsub float %i.p, %i.q
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp olt float %i.v, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit

13:                                               ; preds = %bb.f
  %14 = fcmp uno float %i.p, 0.000000e+00
  br i1 %14, label %bb.h, label %_ZN8facebook4yoga13inexactEqualsEff.exit

bb.h:                                             ; preds = %13
  %i.x = fcmp uno float %i.q, 0.000000e+00
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit

_ZN8facebook4yoga13inexactEqualsEff.exit:         ; preds = %bb.h, %13, %bb.g, %bb.e
  %15 = phi i1 [ false, %bb.e ], [ %i.w, %bb.g ], [ false, %13 ], [ %i.x, %bb.h ]
  %i.y = icmp eq i32 %6, %2
  br i1 %i.y, label %bb.i, label %_ZN8facebook4yoga13inexactEqualsEff.exit71

bb.i:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit
  %or.cond.i69 = fcmp ord float %i.s, %i.r
  br i1 %or.cond.i69, label %bb.j, label %16

bb.j:                                             ; preds = %bb.i
  %i.z = fsub float %i.s, %i.r
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ab = fcmp olt float %i.aa, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit71

16:                                               ; preds = %bb.i
  %17 = fcmp uno float %i.s, 0.000000e+00
  br i1 %17, label %bb.k, label %_ZN8facebook4yoga13inexactEqualsEff.exit71

bb.k:                                             ; preds = %16
  %i.ac = fcmp uno float %i.r, 0.000000e+00
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit71

_ZN8facebook4yoga13inexactEqualsEff.exit71:       ; preds = %bb.k, %16, %bb.j, %_ZN8facebook4yoga13inexactEqualsEff.exit
  %18 = phi i1 [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit ], [ %i.ab, %bb.j ], [ false, %16 ], [ %i.ac, %bb.k ]
  br i1 %15, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit71
  %i.ad = fsub float %1, %10                      ; 11 uses
  %i.ae = icmp eq i32 %0, 0
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %or.cond.i.i = fcmp ord float %i.ad, %8
  br i1 %or.cond.i.i, label %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = fcmp uno float %i.ad, 0.000000e+00
  %i.ag = fcmp uno float %8, 0.000000e+00
  %or.cond123 = and i1 %i.ag, %i.af
  br i1 %or.cond123, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %.thread90.thread

_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit: ; preds = %bb.m
  %i.ah = fsub float %i.ad, %8
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp olt float %i.ai, f0x38D1B717
  br i1 %i.aj, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %.thread90.thread

bb.o:                                             ; preds = %bb.l
  %i.ak = icmp eq i32 %0, 2                       ; 2 uses
  %i.al = icmp eq i32 %4, 1
  %or.cond.i72 = and i1 %i.ak, %i.al
  br i1 %or.cond.i72, label %bb.p, label %.thread90

bb.p:                                             ; preds = %bb.o
  %i.am = fcmp ult float %i.ad, %8
  br i1 %i.am, label %bb.q, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.q:                                             ; preds = %bb.p
  %or.cond.i.i73 = fcmp ord float %i.ad, %8
  br i1 %or.cond.i.i73, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit, label %19

19:                                               ; preds = %bb.q
  %20 = fcmp uno float %i.ad, 0.000000e+00
  br i1 %20, label %.split93, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

.split93:                                         ; preds = %19
  %i.an = fcmp uno float %8, 0.000000e+00
  br i1 %i.an, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %.thread90.thread

_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit: ; preds = %bb.q
  %i.ao = fsub float %i.ad, %8
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = fcmp olt float %i.ap, f0x38D1B717
  br i1 %i.aq, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %.thread90.thread

.thread90.thread:                                 ; preds = %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit, %.split93, %bb.n, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit
  br label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

.thread90:                                        ; preds = %bb.o
  %i.ar = icmp eq i32 %4, 2
  %or.cond.i74 = and i1 %i.ar, %i.ak
  %i.as = fcmp ogt float %5, %i.ad
  %or.cond12.i = and i1 %i.c, %i.as
  %or.cond = and i1 %or.cond12.i, %or.cond.i74
  br i1 %or.cond, label %bb.r, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.r:                                             ; preds = %.thread90
  %i.at = fcmp ugt float %8, %i.ad
  br i1 %i.at, label %bb.s, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.s:                                             ; preds = %bb.r
  %or.cond.i.i75 = fcmp ord float %i.ad, 0.000000e+00
  br i1 %or.cond.i.i75, label %bb.t, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.t:                                             ; preds = %bb.s
  %i.au = fsub float %i.ad, %8
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp olt float %i.av, f0x38D1B717
  br label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit: ; preds = %.thread90.thread, %bb.n, %19, %bb.p, %bb.t, %bb.s, %bb.r, %.thread90, %.split93, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit, %_ZN8facebook4yoga13inexactEqualsEff.exit71
  %21 = phi i1 [ true, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit ], [ true, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit ], [ true, %_ZN8facebook4yoga13inexactEqualsEff.exit71 ], [ true, %.split93 ], [ true, %bb.n ], [ true, %bb.p ], [ true, %bb.r ], [ false, %19 ], [ %i.aw, %bb.t ], [ false, %.thread90 ], [ false, %bb.s ], [ false, %.thread90.thread ] ; 8 uses
  br i1 %18, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit
  %i.ax = fsub float %3, %11                      ; 11 uses
  %i.ay = icmp eq i32 %2, 0
  br i1 %i.ay, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i76 = fcmp ord float %i.ax, %9
  br i1 %or.cond.i.i76, label %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit77, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = fcmp uno float %i.ax, 0.000000e+00
  %i.ba = fcmp uno float %9, 0.000000e+00
  %or.cond124 = and i1 %i.ba, %i.az
  br i1 %or.cond124, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit77: ; preds = %bb.v
  %i.bb = fsub float %i.ax, %9
  %i.bc = tail call noundef float @llvm.fabs.f32(float %i.bb)
  %i.bd = fcmp olt float %i.bc, f0x38D1B717
  br i1 %i.bd, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

bb.x:                                             ; preds = %bb.u
  %i.be = icmp eq i32 %2, 2                       ; 2 uses
  %i.bf = icmp eq i32 %6, 1
  %or.cond.i78 = and i1 %i.be, %i.bf
  br i1 %or.cond.i78, label %bb.y, label %.thread107

bb.y:                                             ; preds = %bb.x
  %i.bg = fcmp ult float %i.ax, %9
  br i1 %i.bg, label %bb.z, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110

bb.z:                                             ; preds = %bb.y
  %or.cond.i.i79 = fcmp ord float %i.ax, %9
  br i1 %or.cond.i.i79, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = fcmp uno float %i.ax, 0.000000e+00
  %i.bi = fcmp uno float %9, 0.000000e+00
  %or.cond121 = and i1 %i.bi, %i.bh
  br i1 %or.cond121, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80: ; preds = %bb.z
  %i.bj = fsub float %i.ax, %9
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bl = fcmp olt float %i.bk, f0x38D1B717
  br i1 %i.bl, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

.thread107:                                       ; preds = %bb.x
  %i.bm = icmp eq i32 %6, 2
  %or.cond.i81 = and i1 %i.bm, %i.be
  %i.bn = fcmp ogt float %7, %i.ax
  %or.cond12.i83 = and i1 %i.a, %i.bn
  %or.cond122 = and i1 %or.cond12.i83, %or.cond.i81
  br i1 %or.cond122, label %bb.ab, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

bb.ab:                                            ; preds = %.thread107
  %i.bo = fcmp ugt float %9, %i.ax
  br i1 %i.bo, label %bb.ac, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

bb.ac:                                            ; preds = %bb.ab
  %or.cond.i.i84 = fcmp ord float %i.ax, 0.000000e+00
  br i1 %or.cond.i.i84, label %bb.ad, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

bb.ad:                                            ; preds = %bb.ac
  %i.bp = fsub float %i.ax, %9
  %i.bq = tail call noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fcmp olt float %i.bq, f0x38D1B717
  %i.bs = and i1 %i.br, %21
  br label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85

_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85: ; preds = %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit77, %bb.w, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80, %bb.aa, %.thread107, %bb.ab, %bb.ac, %bb.ad
  %i.bt = phi i1 [ %21, %bb.ab ], [ false, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80 ], [ %i.bs, %bb.ad ], [ false, %.thread107 ], [ false, %bb.ac ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit77 ]
  br label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110

_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80.thread110: ; preds = %bb.w, %bb.aa, %bb.y, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit77, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %21, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit80 ], [ %21, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit77 ], [ %21, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit ], [ %i.bt, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit85 ], [ %21, %bb.w ], [ %21, %bb.aa ], [ %21, %bb.y ]
  ret i1 %.0
}

declare noundef float @_ZNK8facebook4yoga6Config19getPointScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef float @_ZN8facebook4yoga21roundValueToPixelGridEddbb(double noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
end_hunk_0
