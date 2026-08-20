begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_status_public_t = type { i32, i32, i32, i32, i64 }

@ADIOI_GEN_Prealloc.myname = internal global [19 x i8] c"ADIOI_GEN_PREALLOC\00", align 16
@.str = private unnamed_addr constant [26 x i8] c"adio/common/ad_prealloc.c\00", align 1
@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"**iopreallocrdwr\00", align 1

; Function Attrs: nounwind uwtable
define void @ADIOI_GEN_Prealloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ompi_status_public_t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = tail call ptr @ADIOI_Malloc_fn(i64 noundef 56, i32 noundef 33, ptr noundef nonnull @.str) #5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  tail call void %i.e(ptr noundef %0, i32 noundef 200, ptr noundef %i.a, ptr noundef %2) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28   ; 3 uses
  %i.h = icmp slt i64 %i.g, %1
  %i.i = tail call i64 @llvm.smin.i64(i64 %i.g, i64 %1) ; 3 uses
  %i.j = tail call ptr @ADIOI_Malloc_fn(i64 noundef 16777216, i32 noundef 43, ptr noundef nonnull @.str) #5 ; 5 uses
  %i.k = icmp sgt i64 %i.i, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = add nuw nsw i64 %i.i, 16777215
  %5 = lshr i64 %4, 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ]
  %.05969 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.x, %bb.d ] ; 4 uses
  %i.l = sub nsw i64 %i.i, %.05969
  %i.m = call i64 @llvm.smin.i64(i64 %i.l, i64 16777216) ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = trunc i64 %i.m to i32                    ; 2 uses
  call void %i.p(ptr noundef nonnull %0, ptr noundef %i.j, i32 noundef %i.q, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %.05969, ptr noundef nonnull %3, ptr noundef %2) #5
  %i.r = load i32, ptr %2, align 4, !tbaa !31
  %.not63 = icmp eq i32 %i.r, 0
  br i1 %.not63, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = call i32 (i32, i32, ptr, i32, i32, ptr, ptr, ...) @MPIO_Err_create_code(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ADIOI_GEN_Prealloc.myname, i32 noundef 54, i32 noundef 35, ptr noundef nonnull @.str.1, ptr noundef null) #5
  br label %.loopexit65.sink.split

bb.c:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  call void %i.v(ptr noundef nonnull %0, ptr noundef %i.j, i32 noundef %i.q, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %.05969, ptr noundef nonnull %3, ptr noundef nonnull %2) #5
  %i.w = load i32, ptr %2, align 4, !tbaa !31
  %.not64 = icmp eq i32 %i.w, 0
  br i1 %.not64, label %bb.d, label %.loopexit65

bb.d:                                             ; preds = %bb.c
  %i.x = add nsw i64 %i.m, %.05969                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.059.lcssa = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16777216) %i.j, i8 0, i64 16777216, i1 false)
  %i.y = add i64 %1, 16777215
  %i.z = sub i64 %i.y, %i.g
  %i.aa = lshr i64 %i.z, 24                       ; 2 uses
  %.not75 = icmp eq i64 %i.aa, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.e, %bb.f
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.f ], [ 0, %bb.e ]
  %.16071 = phi i64 [ %i.ai, %bb.f ], [ %.059.lcssa, %bb.e ] ; 3 uses
  %i.ab = sub nsw i64 %1, %.16071
  %i.ac = call i64 @llvm.smin.i64(i64 %i.ab, i64 16777216) ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = trunc i64 %i.ac to i32
  call void %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef %i.ag, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %.16071, ptr noundef nonnull %3, ptr noundef %2) #5
  %i.ah = load i32, ptr %2, align 4, !tbaa !31
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.f, label %.loopexit65

bb.f:                                             ; preds = %.lr.ph74
  %i.ai = add nsw i64 %i.ac, %.16071
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %i.aa
  br i1 %exitcond81.not, label %.loopexit, label %.lr.ph74, !llvm.loop !35

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge
  call void @ADIOI_Free_fn(ptr noundef %i.a, i32 noundef 79, ptr noundef nonnull @.str) #5
  call void @ADIOI_Free_fn(ptr noundef %i.j, i32 noundef 80, ptr noundef nonnull @.str) #5
  br label %.loopexit65.sink.split

.loopexit65.sink.split:                           ; preds = %bb.b, %.loopexit
  %.sink = phi i32 [ 0, %.loopexit ], [ %i.s, %bb.b ]
  store i32 %.sink, ptr %2, align 4, !tbaa !31
  br label %.loopexit65

.loopexit65:                                      ; preds = %bb.c, %.lr.ph74, %.loopexit65.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ADIOI_Malloc_fn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPIO_Err_create_code(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @ADIOI_Free_fn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 56}
!9 = !{!"ADIOI_FileD", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !10, i64 32, !11, i64 40, !11, i64 48, !12, i64 56, !14, i64 64, !5, i64 72, !5, i64 76, !15, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !11, i64 104, !16, i64 112, !16, i64 120, !11, i64 128, !17, i64 136, !18, i64 144, !5, i64 152, !19, i64 160, !16, i64 184, !15, i64 192, !20, i64 200, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !21, i64 224, !13, i64 232, !22, i64 240, !23, i64 248, !5, i64 256, !15, i64 264, !25, i64 272, !5, i64 280, !25, i64 288, !5, i64 296}
!10 = !{!"long", !6, i64 0}
!11 = !{!"long long", !6, i64 0}
!12 = !{!"p1 _ZTS16ADIOI_Fns_struct", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS15ompi_datatype_t", !13, i64 0}
!17 = !{!"p1 _ZTS18ADIOI_Hints_struct", !13, i64 0}
!18 = !{!"p1 _ZTS11ompi_info_t", !13, i64 0}
!19 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16}
!20 = !{!"p1 _ZTS11ADIOI_FileD", !13, i64 0}
!21 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!22 = !{!"p1 long long", !13, i64 0}
!23 = !{!"p2 _ZTS15ompi_datatype_t", !24, i64 0}
!24 = !{!"any p2 pointer", !13, i64 0}
!25 = !{!"p1 _ZTS10ompi_win_t", !13, i64 0}
!26 = !{!27, !13, i64 56}
!27 = !{!"ADIOI_Fns_struct", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !15, i64 192, !13, i64 200, !13, i64 208, !13, i64 216}
!28 = !{!29, !11, i64 40}
!29 = !{!"", !11, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !5, i64 32, !11, i64 40, !11, i64 48}
!30 = !{!27, !13, i64 16}
!31 = !{!5, !5, i64 0}
!32 = !{!27, !13, i64 24}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
end_hunk_0
