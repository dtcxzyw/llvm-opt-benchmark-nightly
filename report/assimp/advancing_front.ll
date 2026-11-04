Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/advancing_front?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN3p2t14AdvancingFrontC1ERNS_4NodeES2_ = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3p2t14AdvancingFrontC2ERNS_4NodeES2_
@_ZN3p2t14AdvancingFrontD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN3p2t14AdvancingFrontD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN3p2t14AdvancingFrontC2ERNS_4NodeES2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN3p2t14AdvancingFront10LocateNodeEd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, double noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8
  %i.e = fcmp olt double %1, %i.d
  br i1 %i.e, label %.preheader, label %.preheader18

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load double, ptr %i.h, align 8
  %i.j = fcmp ult double %1, %i.i
  br i1 %i.j, label %.preheader, label %.loopexit.sink.split, !llvm.loop !4

.preheader18:                                     ; preds = %bb.a, %bb.c
  %.1 = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load double, ptr %i.m, align 8
  %i.o = fcmp olt double %1, %i.n
  br i1 %i.o, label %bb.d, label %.preheader18, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.b, %bb.d
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader18, %.preheader, %.loopexit.sink.split
  %.014 = phi ptr [ %.sink, %.loopexit.sink.split ], [ null, %.preheader ], [ null, %.preheader18 ]
  ret ptr %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN3p2t14AdvancingFront14FindSearchNodeEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN3p2t14AdvancingFront11LocatePointEPKNS_5PointE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = fcmp oeq double %i.a, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, %i.d
  br i1 %.not33, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %.thread, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = fcmp olt double %i.a, %i.e
  br i1 %i.k, label %.preheader, label %.preheader43

.preheader:                                       ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.m, %bb.e ], [ %i.c, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %.not32 = icmp eq ptr %i.m, null
  br i1 %.not32, label %.thread40, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %.thread, label %.preheader, !llvm.loop !6

.preheader43:                                     ; preds = %bb.d, %bb.f
  %.1 = phi ptr [ %i.q, %bb.f ], [ %i.c, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.thread40, label %bb.f

bb.f:                                             ; preds = %.preheader43
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %.thread, label %.preheader43, !llvm.loop !7

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %1, %i.v
  %spec.select = select i1 %i.w, ptr %i.u, ptr %i.c
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.g, %bb.b, %bb.c
  %.237 = phi ptr [ %spec.select, %bb.g ], [ %i.m, %bb.e ], [ %i.h, %bb.c ], [ %i.c, %bb.b ], [ %i.q, %bb.f ] ; 2 uses
  store ptr %.237, ptr %i.b, align 8
  br label %.thread40

.thread40:                                        ; preds = %.preheader43, %.preheader, %.thread
  %.238 = phi ptr [ %.237, %.thread ], [ null, %.preheader ], [ null, %.preheader43 ]
  ret ptr %.238
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN3p2t14AdvancingFrontD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(24) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
end_hunk_0
