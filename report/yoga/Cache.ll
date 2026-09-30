Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/Cache?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook4yoga23canUseCachedMeasurementENS0_10SizingModeEfS1_fS1_fS1_fffffPKNS0_6ConfigE(i32 noundef %0, float noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, float noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp ord float %9, 0.000000e+00          ; 3 uses
  %i.b = fcmp olt float %9, 0.000000e+00
  br i1 %i.b, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ord float %8, 0.000000e+00          ; 3 uses
  %i.d = fcmp olt float %8, 0.000000e+00
  br i1 %i.d, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106, label %bb.c

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
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = fsub float %i.p, %i.q
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp olt float %i.v, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit

bb.h:                                             ; preds = %bb.f
  %i.x = fcmp uno float %i.p, 0.000000e+00
  %i.y = fcmp uno float %i.q, 0.000000e+00
  %spec.select.i = and i1 %i.x, %i.y
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit

_ZN8facebook4yoga13inexactEqualsEff.exit:         ; preds = %bb.h, %bb.g, %bb.e
  %i.z = phi i1 [ false, %bb.e ], [ %i.w, %bb.g ], [ %spec.select.i, %bb.h ]
  %i.aa = icmp eq i32 %6, %2
  br i1 %i.aa, label %bb.i, label %_ZN8facebook4yoga13inexactEqualsEff.exit72

bb.i:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit
  %or.cond.i69 = fcmp ord float %i.s, %i.r
  br i1 %or.cond.i69, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = fsub float %i.s, %i.r
  %i.ac = tail call noundef float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp olt float %i.ac, f0x38D1B717
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit72

bb.k:                                             ; preds = %bb.i
  %i.ae = fcmp uno float %i.s, 0.000000e+00
  %i.af = fcmp uno float %i.r, 0.000000e+00
  %spec.select.i70 = and i1 %i.af, %i.ae
  br label %_ZN8facebook4yoga13inexactEqualsEff.exit72

_ZN8facebook4yoga13inexactEqualsEff.exit72:       ; preds = %bb.k, %bb.j, %_ZN8facebook4yoga13inexactEqualsEff.exit
  %i.ag = phi i1 [ false, %_ZN8facebook4yoga13inexactEqualsEff.exit ], [ %i.ad, %bb.j ], [ %spec.select.i70, %bb.k ]
  br i1 %i.z, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEff.exit72
  %i.ah = fsub float %1, %10                      ; 11 uses
  %i.ai = icmp eq i32 %0, 0
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %or.cond.i.i = fcmp ord float %i.ah, %8
  br i1 %or.cond.i.i, label %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit, label %.split

.split:                                           ; preds = %bb.m
  %13 = fcmp ord float %i.ah, 0.000000e+00
  %spec.select.i.i.not = or i1 %13, %i.c
  br i1 %spec.select.i.i.not, label %.thread92.thread, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit: ; preds = %bb.m
  %i.aj = fsub float %i.ah, %8
  %i.ak = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.al = fcmp olt float %i.ak, f0x38D1B717
  br i1 %i.al, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %.thread92.thread

bb.n:                                             ; preds = %bb.l
  %i.am = icmp eq i32 %0, 2                       ; 2 uses
  %i.an = icmp eq i32 %4, 1
  %or.cond.i73 = and i1 %i.am, %i.an
  br i1 %or.cond.i73, label %bb.o, label %.thread92

bb.o:                                             ; preds = %bb.n
  %i.ao = fcmp ult float %i.ah, %8
  br i1 %i.ao, label %bb.p, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.p:                                             ; preds = %bb.o
  %or.cond.i.i74 = fcmp ord float %i.ah, %8
  br i1 %or.cond.i.i74, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit, label %.split95

.split95:                                         ; preds = %bb.p
  %14 = fcmp ord float %i.ah, 0.000000e+00
  %spec.select.i.i75.not = or i1 %14, %i.c
  br i1 %spec.select.i.i75.not, label %.thread92.thread, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit: ; preds = %bb.p
  %i.ap = fsub float %i.ah, %8
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp olt float %i.aq, f0x38D1B717
  br i1 %i.ar, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, label %.thread92.thread

.thread92.thread:                                 ; preds = %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit, %.split95, %.split, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit
  br label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

.thread92:                                        ; preds = %bb.n
  %i.as = icmp eq i32 %4, 2
  %15 = fcmp ogt float %5, %i.ah
  %16 = and i1 %i.as, %15
  %or.cond12.i = and i1 %16, %i.am
  %or.cond = and i1 %or.cond12.i, %i.c
  br i1 %or.cond, label %bb.q, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.q:                                             ; preds = %.thread92
  %i.at = fcmp ugt float %8, %i.ah
  br i1 %i.at, label %bb.r, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.r:                                             ; preds = %bb.q
  %or.cond.i.i77 = fcmp ord float %i.ah, 0.000000e+00
  br i1 %or.cond.i.i77, label %bb.s, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

bb.s:                                             ; preds = %bb.r
  %i.au = fsub float %i.ah, %8
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp olt float %i.av, f0x38D1B717
  br label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit

_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit: ; preds = %.thread92.thread, %bb.o, %bb.s, %bb.r, %bb.q, %.thread92, %.split95, %.split, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit, %_ZN8facebook4yoga13inexactEqualsEff.exit72
  %i.ax = phi i1 [ true, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit ], [ true, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit ], [ true, %_ZN8facebook4yoga13inexactEqualsEff.exit72 ], [ true, %.split95 ], [ true, %.split ], [ false, %.thread92.thread ], [ true, %bb.q ], [ true, %bb.o ], [ %i.aw, %bb.s ], [ false, %.thread92 ], [ false, %bb.r ] ; 8 uses
  br i1 %i.ag, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106, label %bb.t

bb.t:                                             ; preds = %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit
  %i.ay = fsub float %3, %11                      ; 11 uses
  %i.az = icmp eq i32 %2, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %or.cond.i.i78 = fcmp ord float %i.ay, %9
  br i1 %or.cond.i.i78, label %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit80, label %.split101

.split101:                                        ; preds = %bb.u
  %17 = fcmp ord float %i.ay, 0.000000e+00
  %spec.select.i.i79.not = or i1 %17, %i.a
  br i1 %spec.select.i.i79.not, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106

_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit80: ; preds = %bb.u
  %i.ba = fsub float %i.ay, %9
  %i.bb = tail call noundef float @llvm.fabs.f32(float %i.ba)
  %i.bc = fcmp olt float %i.bb, f0x38D1B717
  br i1 %i.bc, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89

bb.v:                                             ; preds = %bb.t
  %i.bd = icmp eq i32 %2, 2                       ; 2 uses
  %i.be = icmp eq i32 %6, 1
  %or.cond.i81 = and i1 %i.bd, %i.be
  br i1 %or.cond.i81, label %bb.w, label %.thread103

bb.w:                                             ; preds = %bb.v
  %i.bf = fcmp ult float %i.ay, %9
  br i1 %i.bf, label %bb.x, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106

bb.x:                                             ; preds = %bb.w
  %or.cond.i.i82 = fcmp ord float %i.ay, %9
  br i1 %or.cond.i.i82, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84, label %.split107

.split107:                                        ; preds = %bb.x
  %18 = fcmp ord float %i.ay, 0.000000e+00
  %spec.select.i.i83.not = or i1 %18, %i.a
  br i1 %spec.select.i.i83.not, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106

_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84: ; preds = %bb.x
  %i.bg = fsub float %i.ay, %9
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %i.bi = fcmp olt float %i.bh, f0x38D1B717
  br i1 %i.bi, label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89

.thread103:                                       ; preds = %bb.v
  %i.bj = icmp eq i32 %6, 2
  %19 = fcmp ogt float %7, %i.ay
  %20 = and i1 %i.bj, %19
  %or.cond12.i87 = and i1 %20, %i.bd
  %or.cond113 = and i1 %or.cond12.i87, %i.a
  br i1 %or.cond113, label %bb.y, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89

bb.y:                                             ; preds = %.thread103
  %i.bk = fcmp ugt float %9, %i.ay
  br i1 %i.bk, label %bb.z, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89

bb.z:                                             ; preds = %bb.y
  %or.cond.i.i88 = fcmp ord float %i.ay, 0.000000e+00
  br i1 %or.cond.i.i88, label %bb.aa, label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89

bb.aa:                                            ; preds = %bb.z
  %i.bl = fsub float %i.ay, %9
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bl)
  %i.bn = fcmp olt float %i.bm, f0x38D1B717
  %i.bo = and i1 %i.bn, %i.ax
  br label %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89

_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89: ; preds = %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit80, %.split101, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84, %.split107, %.thread103, %bb.y, %bb.z, %bb.aa
  %i.bp = phi i1 [ %i.ax, %bb.y ], [ false, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84 ], [ %i.bo, %bb.aa ], [ false, %.thread103 ], [ false, %bb.z ], [ false, %.split107 ], [ false, %.split101 ], [ false, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit80 ]
  br label %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106

_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84.thread106: ; preds = %bb.w, %.split107, %.split101, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit80, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.ax, %_ZN8facebook4yogaL31oldSizeIsMaxContentAndStillFitsENS0_10SizingModeEfS1_f.exit84 ], [ %i.ax, %_ZN8facebook4yogaL36sizeIsExactAndMatchesOldMeasuredSizeENS0_10SizingModeEff.exit80 ], [ %i.ax, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit ], [ %i.bp, %_ZN8facebook4yogaL30newSizeIsStricterAndStillValidENS0_10SizingModeEfS1_ff.exit89 ], [ %i.ax, %.split101 ], [ %i.ax, %.split107 ], [ %i.ax, %bb.w ]
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
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
end_hunk_0
