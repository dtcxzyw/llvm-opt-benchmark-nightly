Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_line?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lv_area_t = type { i32, i32, i32, i32 }
%struct.lv_draw_line_dsc_t = type { %struct.lv_draw_dsc_base_t, %struct.lv_point_precise_t, %struct.lv_point_precise_t, ptr, i32, %struct.lv_color_t, i32, i32, i32, i8, i8 }
%struct.lv_draw_dsc_base_t = type { ptr, i32, i32, i32, ptr, i16, i16, %struct.lv_color_t, i8, i32, i64, ptr }
%struct.lv_point_precise_t = type { i32, i32 }
%struct.lv_color_t = type { i8, i8, i8 }

; Function Attrs: nounwind uwtable
define void @lv_draw_line_dsc_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_memset(ptr noundef %0, i8 noundef zeroext 0, i64 noundef 112) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 -1, ptr %i.b, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.d = tail call i24 @lv_color_black() #5
  store i24 %i.d, ptr %i.c, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 112, ptr %i.e, align 8, !tbaa !37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i24 @lv_color_black() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @lv_draw_task_get_line_dsc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define void @lv_draw_line(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_area_t, align 16         ; 11 uses
  %3 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.e = load i8, ptr %i.d, align 4, !tbaa !18
  %i.f = icmp ult i8 %i.e, 3
  br i1 %i.f, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !26 ; 2 uses
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %i.n = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.l, <2 x i32> %i.m)
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.l, <2 x i32> %i.m)
  %i.p = shufflevector <2 x i32> %i.n, <2 x i32> %i.o, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.q = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.r = shufflevector <4 x i32> %i.q, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.s = sub nsw <4 x i32> %i.p, %i.r
  %i.t = add nsw <4 x i32> %i.p, %i.r
  %i.u = shufflevector <4 x i32> %i.s, <4 x i32> %i.t, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.u, ptr %2, align 16, !tbaa !26
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <4 x i32> <i32 536870911, i32 536870911, i32 -536870911, i32 -536870911>, ptr %2, align 16, !tbaa !26
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call ptr @lv_malloc(i64 noundef %i.aa) #5 ; 4 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.preheader102, label %.preheader103

.preheader103:                                    ; preds = %bb.f
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !27
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader103
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !25
  br label %bb.g

.preheader102:                                    ; preds = %bb.f, %.preheader102
  br label %.preheader102

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 4, !tbaa !26
  store i64 %i.ah, ptr %i.af, align 4, !tbaa !26
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.aj = icmp eq i32 %i.ai, 2147483647
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !29
  %i.am = icmp eq i32 %i.al, 2147483647
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %4 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.an = load i32, ptr %i.a, align 8, !tbaa !17
  %5 = load <2 x i32>, ptr %2, align 16, !tbaa !26
  %6 = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %5, <2 x i32> %4)
  %7 = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = sub nsw <2 x i32> %6, %8
  store <2 x i32> %9, ptr %2, align 16, !tbaa !26
  %10 = load <2 x i32>, ptr %i.y, align 8, !tbaa !26
  %11 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %10, <2 x i32> %4)
  %12 = add nsw <2 x i32> %11, %8
  store <2 x i32> %12, ptr %i.y, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !27
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.g, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %2, align 16, !tbaa !40
  %i.ar = icmp eq i32 %.pre, 536870911
  br i1 %i.ar, label %.thread, label %bb.k

.thread:                                          ; preds = %.preheader103, %._crit_edge
  tail call void @lv_free(ptr noundef nonnull %i.ab) #5
  br label %bb.p

bb.k:                                             ; preds = %._crit_edge
  %i.as = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  call void @lv_area_increase(ptr noundef nonnull %2, i32 noundef %i.as, i32 noundef %i.as) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.ab, %bb.k ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.au = load i8, ptr %i.at, align 1, !tbaa !41
  %.not99 = icmp eq i8 %i.au, 0
  br i1 %.not99, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = call ptr @lv_draw_layer_create_drop_shadow(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #5 ; 3 uses
  %.not100 = icmp eq ptr %i.av, null
  br i1 %.not100, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.m, %.preheader
  br label %.preheader

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false), !tbaa.struct !36
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 39
  store i8 0, ptr %i.aw, align 1, !tbaa !41
  call void @lv_draw_line(ptr noundef nonnull %i.av, ptr noundef nonnull %3)
  call void @lv_draw_layer_finish_drop_shadow(ptr noundef nonnull %i.av, ptr noundef nonnull %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ax = call ptr @lv_draw_add_task(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) #5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %i.ba = call ptr @lv_memcpy(ptr noundef %i.az, ptr noundef nonnull %1, i64 noundef 112) #5 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  store ptr %.0, ptr %i.bb, align 8, !tbaa !25
  call void @lv_draw_finalize_task_creation(ptr noundef %0, ptr noundef %i.ax) #5
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.e, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %bb.p
  ret void
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_draw_layer_create_drop_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_layer_finish_drop_shadow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_add_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lv_draw_finalize_task_creation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_draw_line_iterate(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %2(ptr noundef %0, ptr noundef nonnull %1) #5
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false), !tbaa.struct !36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr null, ptr %i.h, align 8, !tbaa !25
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.i = add nsw i64 %i.g, -1                     ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.j
  %i.l = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.j ]
  %.02428 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.j ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = icmp eq i32 %i.n, 2147483647
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = icmp eq i32 %i.q, 2147483647
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i32 %.02428, 1
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = icmp eq i32 %i.v, 2147483647
  br i1 %i.w, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %i.z = icmp eq i32 %i.y, 2147483647
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.m, align 4, !tbaa !26
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !26
  %i.ab = load i64, ptr %i.u, align 4, !tbaa !26
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !26
  call void %2(ptr noundef %0, ptr noundef nonnull %3) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.i
  %i.ac = add i32 %.02428, 1                      ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = icmp ugt i64 %i.i, %i.ad
  br i1 %i.ae, label %bb.e, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.j, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.k

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.b, %.critedge
  ret void
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!10 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!13 = !{!"long", !4, i64 0}
!14 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !11, i64 32, !11, i64 34, !12, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !13, i64 48, !8, i64 56}
!15 = !{!"", !5, i64 0, !5, i64 4}
!16 = !{!"", !14, i64 0, !15, i64 64, !15, i64 72, !8, i64 80, !5, i64 88, !12, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 108, !4, i64 109, !4, i64 109, !4, i64 109}
!17 = !{!16, !5, i64 96}
!18 = !{!16, !4, i64 108}
!19 = !{!4, !4, i64 0}
!20 = !{!"p1 _ZTS15_lv_draw_task_t", !8, i64 0}
!21 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!22 = !{!"p1 _ZTS15_lv_draw_unit_t", !8, i64 0}
!23 = !{!"_lv_draw_task_t", !20, i64 0, !5, i64 8, !21, i64 12, !21, i64 28, !21, i64 44, !21, i64 60, !10, i64 80, !22, i64 88, !5, i64 96, !8, i64 104, !4, i64 112, !4, i64 113, !4, i64 114}
!24 = !{!23, !8, i64 104}
!25 = !{!16, !8, i64 80}
!26 = !{!5, !5, i64 0}
!27 = !{!16, !5, i64 88}
!28 = !{!15, !5, i64 0}
!29 = !{!15, !5, i64 4}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!9, !9, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!13, !13, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{i64 0, i64 8, !31, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 24, i64 8, !32, i64 32, i64 2, !33, i64 34, i64 2, !33, i64 36, i64 1, !19, i64 37, i64 1, !19, i64 38, i64 1, !19, i64 39, i64 1, !19, i64 40, i64 4, !19, i64 48, i64 8, !34, i64 56, i64 8, !35, i64 64, i64 4, !26, i64 68, i64 4, !26, i64 72, i64 4, !26, i64 76, i64 4, !26, i64 80, i64 8, !35, i64 88, i64 4, !26, i64 92, i64 1, !19, i64 93, i64 1, !19, i64 94, i64 1, !19, i64 96, i64 4, !26, i64 100, i64 4, !26, i64 104, i64 4, !26, i64 108, i64 1, !19, i64 109, i64 1, !19}
!37 = !{!16, !13, i64 48}
!38 = !{!23, !5, i64 8}
!39 = distinct !{!39, !30}
!40 = !{!21, !5, i64 0}
!41 = !{!16, !4, i64 39}
!42 = distinct !{!42, !30}
end_hunk_0
