begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

@_ZTIN4geos4geom8GeometryE = external constant ptr
@_ZTIN4geos4geom18GeometryCollectionE = external constant ptr

; Function Attrs: mustprogress uwtable
define void @_ZN4geos4geom4util29ShortCircuitedGeometryVisitor7applyToERKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 3 uses
  %.not18 = icmp eq i64 %i.d, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.014 = phi i64 [ 0, %.lr.ph ], [ %.014.be, %.backedge.backedge ] ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.014) ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom18GeometryCollectionE, i64 0) #2
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4geos4geom4util29ShortCircuitedGeometryVisitor7applyToERKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !7
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  %i.n = load ptr, ptr %0, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(9) %0)
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.e, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.r = load i8, ptr %i.e, align 8, !tbaa !9, !range !12, !noundef !13
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = add nuw i64 %.014, 1                     ; 2 uses
  %i.u = icmp uge i64 %i.t, %i.d
  %or.cond.not = select i1 %i.s, i1 true, i1 %i.u
  br i1 %or.cond.not, label %._crit_edge, label %.backedge.backedge

bb.g:                                             ; preds = %.backedge
  %.old = add nuw i64 %.014, 1                    ; 2 uses
  %.old17 = icmp ult i64 %.old, %i.d
  br i1 %.old17, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %bb.g, %bb.f
  %.014.be = phi i64 [ %.old, %bb.g ], [ %i.t, %bb.f ]
  br label %.backedge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #2 = { nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN4geos4geom4util29ShortCircuitedGeometryVisitorE", !11, i64 8}
!11 = !{!"bool", !5, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
