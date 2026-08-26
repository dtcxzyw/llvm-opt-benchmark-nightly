Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/region?download=true
inline.NumInlined: 20
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [18 x i8] c"num. pages:      \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

@_ZN6regionC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6regionC2Ev
@_ZN6regionD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6regionD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6regionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 40)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.d = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !8
  store ptr %i.d, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8184
  store ptr %i.e, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6regionD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  invoke void @_Z9del_pagesPc(ptr noundef %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  invoke void @_Z9del_pagesPc(ptr noundef %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #6
  unreachable
}

declare void @_Z9del_pagesPc(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = add i64 %i.g, 7
  %i.i = and i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 8184
  %i.l = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 4 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8184
  store ptr %i.o, ptr %i.d, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %1
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 7
  %i.s = and i64 %i.r, -8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_Z13allocate_pagePcm(ptr noundef %i.l, i64 noundef %1) ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v) ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !8
  store ptr %i.w, ptr %i.a, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8184
  store ptr %i.x, ptr %i.d, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.n, %bb.d ], [ %i.u, %bb.e ]
  ret ptr %.0
}

declare noundef ptr @_Z13allocate_pagePcm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6region5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.pr = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not1 = icmp eq ptr %.pr, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.b = phi ptr [ %.pr, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  tail call void @_Z12recycle_pagePcRS_(ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.f, ptr %0, align 8, !tbaa !8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.f, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %.lcssa, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8184
  store ptr %i.l, ptr %i.h, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6region10push_scopeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %_ZnwmR6region.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = tail call noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8184
  store ptr %i.j, ptr %i.e, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %_ZnwmR6region.exit

_ZnwmR6region.exit:                               ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.k, %bb.b ], [ %i.d, %bb.a ]
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.l = ptrtoint ptr %.sink to i64
  %i.m = add i64 %i.l, 7
  %storemerge.in = and i64 %i.m, -8
  %storemerge = inttoptr i64 %storemerge.in to ptr
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  store ptr %i.a, ptr %.0.i.i, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %i.c, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !24
  store ptr %.0.i.i, ptr %i.n, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6region9pop_scopeEv(ptr noundef nonnull align 8 dereferenceable(40) initializes((8, 16)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  store ptr %i.h, ptr %i.a, align 8, !tbaa !20
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not2 = icmp eq ptr %i.i, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16
  %i.n = and i64 %i.m, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  tail call void @_Z12recycle_pagePcRS_(ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  store ptr %i.o, ptr %0, align 8, !tbaa !8
  %.not = icmp eq ptr %i.c, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi ptr [ %i.i, %bb.a ], [ %i.o, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6region17display_mem_statsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.f, %.lr.ph ], [ %i.a, %bb.a ]
  %.057 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = add i32 %.057, 1                         ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.08, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = and i64 %i.d, -2                         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = zext i32 %i.b to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.05.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 17) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.05.lcssa)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  ret void
}

declare noundef ptr @_Z21allocate_default_pagePcRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_Z12recycle_pagePcRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS6region", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !12, i64 32}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN6region4markE", !11, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{!9, !10, i64 16}
!15 = !{!9, !10, i64 24}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!9, !12, i64 32}
!21 = !{!22, !10, i64 0}
!22 = !{!"_ZTSN6region4markE", !10, i64 0, !10, i64 8, !12, i64 16}
!23 = !{!22, !10, i64 8}
!24 = !{!22, !12, i64 16}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
end_hunk_0
