Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/info?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"invalid samples per pixel\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid bits per pixel\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid dimensions\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"invalid planar configuration\00", align 1

@_ZN3rle10pixel_infoC1Ehh = dso_local unnamed_addr alias void (ptr, i8, i8), ptr @_ZN3rle10pixel_infoC2Ehh
@_ZN3rle10pixel_infoC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN3rle10pixel_infoC2Ei
@_ZN3rle10image_infoC1EiiRKNS_10pixel_infoEbb = dso_local unnamed_addr alias void (ptr, i32, i32, ptr, i1, i1), ptr @_ZN3rle10image_infoC2EiiRKNS_10pixel_infoEbb

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3rle10pixel_infoC2Ehh(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(2) initializes((0, 2)) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !11
  %i.b = and i8 %1, -3
  %or.cond.not = icmp eq i8 %i.b, 1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #7 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  switch i8 %2, label %bb.f [
    i8 32, label %bb.i
    i8 16, label %bb.i
    i8 8, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #7 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.e, %bb.e
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.e, %bb.h ], [ %i.c, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.f, %bb.h ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #7
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN3rle10pixel_info18check_num_segmentsEi(i32 noundef %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  %switch.cast = trunc i32 %0 to i13
  %switch.downshift = lshr i13 -4002, %switch.cast
  %switch.masked = trunc i13 %switch.downshift to i1
  %.0 = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3rle10pixel_infoC2Ei(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(2) initializes((0, 2)) %0, i32 noundef %1) unnamed_addr #5 align 2 {
_ZN3rleL32compute_nc_bpp_from_num_segmentsEiRiS0_.exit:
  %i.a = srem i32 %1, 3
  %i.b = sdiv i32 %1, 3
  %i.c = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.d = shl nsw i32 %i.b, 3
  %.sink.i = select i1 %i.c, i8 3, i8 1
  %storemerge.i = select i1 %i.c, i32 %i.d, i32 %1
  store i8 %.sink.i, ptr %0, align 1, !tbaa !10
  %i.e = trunc i32 %storemerge.i to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 256) i32 @_ZNK3rle10pixel_info28get_number_of_bits_per_pixelEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 256) i32 @_ZNK3rle10pixel_info24get_number_of_componentsEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 7906) i32 @_ZNK3rle10pixel_info20compute_num_segmentsEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = zext i8 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11
  %i.e = lshr i8 %i.d, 3
  %i.f = zext nneg i8 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, %i.b
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3rle10image_infoC2EiiRKNS_10pixel_infoEbb(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = zext i1 %5 to i8
  store i32 %1, ptr %0, align 4, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %3, align 1, !tbaa !16     ; 2 uses
  store i16 %i.e, ptr %i.d, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.a, ptr %i.f, align 2, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.b, ptr %i.g, align 1, !tbaa !18
  %i.h = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.h, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #7 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.k = and i16 %i.e, 255
  %.not = icmp ne i16 %i.k, 3
  %or.cond13.not = select i1 %4, i1 %.not, i1 false
  br i1 %or.cond13.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #7 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.l, %bb.h ], [ %i.i, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.j, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #7
  resume { ptr, i32 } %.pn
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN3rle10pixel_infoE", !5, i64 0, !5, i64 1}
!10 = !{!9, !5, i64 0}
!11 = !{!9, !5, i64 1}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN3rle10image_infoE", !6, i64 0, !6, i64 4, !9, i64 8, !12, i64 10, !12, i64 11}
!14 = !{!13, !6, i64 0}
!15 = !{!13, !6, i64 4}
!16 = !{!5, !5, i64 0}
!17 = !{!13, !12, i64 10}
!18 = !{!13, !12, i64 11}
end_hunk_0
