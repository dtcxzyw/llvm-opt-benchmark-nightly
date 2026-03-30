begin_hunk_0
define void @_ZN22photos_editing_formats8image_io28DataRangeTrackingDestination13StartTransferEv(ptr noundef nonnull align 8 captures(none) dereferenceable(41) initializes((16, 41)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i8 0, i64 25, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
end_hunk_0
begin_hunk_1
define noundef i32 @_ZN22photos_editing_formats8image_io28DataRangeTrackingDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 captures(none) dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) ; 2 uses
end_hunk_1
begin_hunk_2

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]
  %i.h = load i64, ptr %1, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.h)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.o = phi i32 [ %i.g, %.thread ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !20, !range !21, !noundef !22
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

end_hunk_2
begin_hunk_3
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.x = load i64, ptr %1, align 8, !tbaa !17
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !18
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr %i.p, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.g, %bb.e
end_hunk_3
begin_hunk_4
define void @_ZN22photos_editing_formats8image_io28DataRangeTrackingDestination14FinishTransferEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
end_hunk_4
begin_hunk_5
define linkonce_odr noundef i64 @_ZNK22photos_editing_formats8image_io28DataRangeTrackingDestination19GetBytesTransferredEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  ret i64 %i.b
}

end_hunk_5
begin_hunk_6
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 8}
!8 = !{!"_ZTSN22photos_editing_formats8image_io28DataRangeTrackingDestinationE", !9, i64 0, !10, i64 8, !12, i64 16, !13, i64 32, !14, i64 40}
!9 = !{!"_ZTSN22photos_editing_formats8image_io15DataDestinationE"}
!10 = !{!"p1 _ZTSN22photos_editing_formats8image_io15DataDestinationE", !11, i64 0}
end_hunk_6
begin_hunk_7
!12 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !13, i64 0, !13, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !6, i64 0}
!17 = !{!12, !13, i64 0}
!18 = !{!12, !13, i64 8}
!19 = !{!8, !13, i64 32}
!20 = !{!8, !14, i64 40}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
end_hunk_7
