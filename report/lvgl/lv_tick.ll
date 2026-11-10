Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_tick?download=true
inline.NumInlined: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._lv_global_t = type { ptr, i8, i8, %struct.lv_ll_t, ptr, ptr, %struct.lv_ll_t, i8, i32, i32, ptr, %struct.lv_ll_t, ptr, %struct.lv_ll_t, ptr, ptr, i32, ptr, i8, i32, i32, ptr, i32, %struct.lv_timer_state_t, %struct.lv_anim_state_t, %struct.lv_tick_state_t, %struct._lv_draw_buf_handlers_t, %struct._lv_draw_buf_handlers_t, %struct._lv_draw_buf_handlers_t, %struct.lv_ll_t, ptr, ptr, %struct.lv_draw_global_info_t, %struct.lv_ll_t, [4 x %struct.lv_draw_sw_mask_radius_circle_dsc_t], ptr, ptr, ptr, %struct.lv_tlsf_state_t, %struct.lv_ll_t, ptr, ptr, i32, %union.lv_linux_proc_stat_t }
%struct.lv_timer_state_t = type { %struct.lv_ll_t, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, ptr, ptr }
%struct.lv_anim_state_t = type { i8, i8, i8, ptr, %struct.lv_ll_t }
%struct.lv_tick_state_t = type { i32, i8, ptr, ptr }
%struct._lv_draw_buf_handlers_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lv_draw_global_info_t = type { ptr, i32, i32, i32, i32, i8 }
%struct.lv_draw_sw_mask_radius_circle_dsc_t = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.lv_tlsf_state_t = type { ptr, i64, i64, %struct.lv_ll_t }
%struct.lv_ll_t = type { i32, ptr, ptr }
%union.lv_linux_proc_stat_t = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32 }

@lv_global = external global %struct._lv_global_t, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable
define void @lv_tick_inc(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  store volatile i8 0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %i.a = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  %i.b = add i32 %i.a, %0
  store volatile i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @lv_tick_get() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %i.a() #6
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %i.c = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  %i.d = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %.not7 = icmp eq i8 %i.d, 0
  br i1 %.not7, label %.preheader, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @lv_tick_elaps(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %i.a() #6, !inline_history !15
  br label %lv_tick_get.exit

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %i.c = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  %i.d = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %.not7.i = icmp eq i8 %i.d, 0
  br i1 %.not7.i, label %.preheader.i, label %lv_tick_get.exit, !llvm.loop !0

lv_tick_get.exit:                                 ; preds = %.preheader.i, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %i.c, %.preheader.i ]
  %i.e = sub i32 %.0.i, %0
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @lv_tick_diff(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = sub i32 %0, %1
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define void @lv_delay_ms(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 352), align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.c(i32 noundef %0) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader.i, label %lv_tick_get.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  %i.f = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %.not7.i = icmp eq i8 %i.f, 0
  br i1 %.not7.i, label %.preheader.i, label %.preheader.i.i.preheader.us.preheader, !llvm.loop !0

lv_tick_get.exit:                                 ; preds = %bb.c
  %i.g = tail call i32 %i.d() #6, !inline_history !15 ; 2 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !13 ; 2 uses
  %i.h = icmp eq ptr %.pre, null
  br i1 %i.h, label %.preheader.i.i.preheader.us.preheader, label %lv_tick_get.exit.split

.preheader.i.i.preheader.us.preheader:            ; preds = %.preheader.i, %lv_tick_get.exit
  %.0.i20 = phi i32 [ %i.g, %lv_tick_get.exit ], [ %i.e, %.preheader.i ]
  br label %.preheader.i.i.us

.preheader.i.i.us:                                ; preds = %.preheader.i.i.us.backedge, %.preheader.i.i.preheader.us.preheader
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %i.i = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  %i.j = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %.not7.i.i.us = icmp eq i8 %i.j, 0
  br i1 %.not7.i.i.us, label %.preheader.i.i.us.backedge, label %lv_tick_elaps.exit.loopexit.us

.preheader.i.i.us.backedge:                       ; preds = %.preheader.i.i.us, %._crit_edge.us
  br label %.preheader.i.i.us, !llvm.loop !37

bb.d:                                             ; preds = %lv_tick_elaps.exit.loopexit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %0, ptr %i.b, align 4, !tbaa !40
  store volatile i32 0, ptr %i.a, align 4, !tbaa !40
  %.0..0..0..0.18.us = load volatile i32, ptr %i.a, align 4, !tbaa !40
  %i.k = icmp ult i32 %.0..0..0..0.18.us, 100
  br i1 %i.k, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.d, %.lr.ph.us
  %.0..0..0..0..us = load volatile i32, ptr %i.b, align 4, !tbaa !40
  %i.l = mul i32 %.0..0..0..0..us, 3
  store volatile i32 %i.l, ptr %i.b, align 4, !tbaa !40
  %.0..0..0..0.2.us = load volatile i32, ptr %i.a, align 4, !tbaa !40
  %i.m = add i32 %.0..0..0..0.2.us, 1
  store volatile i32 %i.m, ptr %i.a, align 4, !tbaa !40
  %.0..0..0..0.1.us = load volatile i32, ptr %i.a, align 4, !tbaa !40
  %i.n = icmp ult i32 %.0..0..0..0.1.us, 100
  br i1 %i.n, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !38

._crit_edge.us:                                   ; preds = %.lr.ph.us, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.preheader.i.i.us.backedge

lv_tick_elaps.exit.loopexit.us:                   ; preds = %.preheader.i.i.us
  %i.o = sub i32 %i.i, %.0.i20
  %i.p = icmp ult i32 %i.o, %0
  br i1 %i.p, label %bb.d, label %.loopexit

lv_tick_get.exit.split:                           ; preds = %lv_tick_get.exit, %._crit_edge
  %i.q = phi ptr [ %i.u, %._crit_edge ], [ %.pre, %lv_tick_get.exit ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %lv_tick_get.exit.split
  %i.r = tail call i32 %i.q() #6, !inline_history !41
  %.pre12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !13
  br label %lv_tick_elaps.exit

.preheader.i.i:                                   ; preds = %lv_tick_get.exit.split, %.preheader.i.i
  store volatile i8 1, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %i.s = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 336), align 8, !tbaa !12
  %i.t = load volatile i8, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 340), align 4, !tbaa !11
  %.not7.i.i = icmp eq i8 %i.t, 0
  br i1 %.not7.i.i, label %.preheader.i.i, label %lv_tick_elaps.exit, !llvm.loop !0

lv_tick_elaps.exit:                               ; preds = %.preheader.i.i, %bb.e
  %i.u = phi ptr [ %.pre12, %bb.e ], [ null, %.preheader.i.i ]
  %.0.i.i = phi i32 [ %i.r, %bb.e ], [ %i.s, %.preheader.i.i ]
  %i.v = sub i32 %.0.i.i, %i.g
  %i.w = icmp ult i32 %i.v, %0
  br i1 %i.w, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %lv_tick_elaps.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %0, ptr %i.b, align 4, !tbaa !40
  store volatile i32 0, ptr %i.a, align 4, !tbaa !40
  %.0..0..0..0.18 = load volatile i32, ptr %i.a, align 4, !tbaa !40
  %i.x = icmp ult i32 %.0..0..0..0.18, 100
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0..0..0..0. = load volatile i32, ptr %i.b, align 4, !tbaa !40
  %i.y = mul i32 %.0..0..0..0., 3
  store volatile i32 %i.y, ptr %i.b, align 4, !tbaa !40
  %.0..0..0..0.2 = load volatile i32, ptr %i.a, align 4, !tbaa !40
  %i.z = add i32 %.0..0..0..0.2, 1
  store volatile i32 %i.z, ptr %i.a, align 4, !tbaa !40
  %.0..0..0..0.1 = load volatile i32, ptr %i.a, align 4, !tbaa !40
  %i.aa = icmp ult i32 %.0..0..0..0.1, 100
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %lv_tick_get.exit.split, !llvm.loop !39

.loopexit:                                        ; preds = %lv_tick_elaps.exit, %lv_tick_elaps.exit.loopexit.us, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_tick_set_cb(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_tick_get_cb() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 344), align 8, !tbaa !36
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @lv_delay_set_cb(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @lv_global, i64 352), align 8, !tbaa !35
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"", !6, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!11 = !{!10, !5, i64 4}
!12 = !{!10, !6, i64 0}
!13 = !{!10, !9, i64 8}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{ptr @lv_tick_get}
!16 = !{!"_Bool", !5, i64 0}
!17 = !{!"p1 omnipotent char", !9, i64 0}
!18 = !{!"", !6, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"p1 _ZTS13_lv_display_t", !9, i64 0}
!20 = !{!"p1 _ZTS11_lv_group_t", !9, i64 0}
!21 = !{!"p1 _ZTS11_lv_indev_t", !9, i64 0}
!22 = !{!"p1 _ZTS9_lv_obj_t", !9, i64 0}
!23 = !{!"p1 _ZTS11_lv_event_t", !9, i64 0}
!24 = !{!"", !18, i64 0, !16, i64 24, !5, i64 25, !16, i64 26, !16, i64 27, !6, i64 28, !16, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !9, i64 56, !9, i64 64}
!25 = !{!"p1 _ZTS11_lv_timer_t", !9, i64 0}
!26 = !{!"", !16, i64 0, !16, i64 1, !16, i64 2, !25, i64 8, !18, i64 16}
!27 = !{!"_lv_draw_buf_handlers_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!28 = !{!"p1 _ZTS11_lv_cache_t", !9, i64 0}
!29 = !{!"p1 _ZTS15_lv_draw_unit_t", !9, i64 0}
!30 = !{!"", !29, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !16, i64 24}
!31 = !{!"long", !5, i64 0}
!32 = !{!"", !9, i64 0, !31, i64 8, !31, i64 16, !18, i64 24}
!33 = !{!"p1 _ZTS14_snippet_stack", !9, i64 0}
!34 = !{!"_lv_global_t", !9, i64 0, !16, i64 8, !16, i64 9, !18, i64 16, !19, i64 40, !19, i64 48, !18, i64 56, !16, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !18, i64 104, !20, i64 128, !18, i64 136, !21, i64 160, !22, i64 168, !6, i64 176, !9, i64 184, !16, i64 192, !6, i64 196, !6, i64 200, !23, i64 208, !6, i64 216, !24, i64 224, !26, i64 296, !10, i64 336, !27, i64 360, !27, i64 416, !27, i64 472, !18, i64 528, !28, i64 552, !28, i64 560, !30, i64 568, !18, i64 600, !5, i64 624, !9, i64 816, !9, i64 824, !9, i64 832, !32, i64 840, !18, i64 888, !33, i64 912, !9, i64 920, !6, i64 928, !5, i64 932}
!35 = !{!34, !9, i64 352}
!36 = !{!34, !9, i64 344}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14, !42}
!40 = !{!6, !6, i64 0}
!41 = !{ptr @lv_tick_elaps, ptr @lv_tick_get}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
