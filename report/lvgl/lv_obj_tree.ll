Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_tree?download=true
inline.NumInlined: 35
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
%struct._lv_anim_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union._lv_anim_path_para_t, i32, i32, i32, i8 }
%union._lv_anim_path_para_t = type { %struct.lv_anim_bezier3_para_t }
%struct.lv_anim_bezier3_para_t = type { i16, i16, i16, i16 }

@lv_global = external global %struct._lv_global_t, align 8

; Function Attrs: nounwind uwtable
define void @lv_obj_delete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.b = load i32, ptr %i.a, align 2
  %i.c = and i32 %i.b, 16384
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %lv_obj_get_parent.exit, label %lv_obj_get_display.exit.thread

lv_obj_get_parent.exit:                           ; preds = %bb.a
  %i.d = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %lv_obj_get_screen.exit.i, label %.thread

.thread:                                          ; preds = %lv_obj_get_parent.exit
  tail call fastcc void @obj_delete_core(ptr noundef %0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 62
  %i.i = load i32, ptr %i.h, align 2
  %i.j = and i32 %i.i, 16384
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %.split, label %lv_obj_get_display.exit.thread

lv_obj_get_screen.exit.i:                         ; preds = %lv_obj_get_parent.exit
  %i.k = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 16)) #7 ; 2 uses
  %.not2130.i = icmp eq ptr %i.k, null
  br i1 %.not2130.i, label %lv_obj_get_display.exit.thread, label %.preheader24.i

.preheader24.i:                                   ; preds = %lv_obj_get_screen.exit.i, %._crit_edge.i
  %.01731.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.k, %lv_obj_get_screen.exit.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01731.i, i64 840
  %i.m = load i32, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %.not2228.not.i = icmp eq i32 %i.m, 0
  br i1 %.not2228.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader24.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01731.i, i64 784
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %wide.trip.count.i = zext i32 %i.m to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.d, label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %.preheader24.i
  %i.s = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 16), ptr noundef nonnull %.01731.i) #7 ; 2 uses
  %.not21.i = icmp eq ptr %i.s, null
  br i1 %.not21.i, label %lv_obj_get_display.exit.thread, label %.preheader24.i, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i, i64 808 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp eq ptr %i.u, %0
  tail call fastcc void @obj_delete_core(ptr noundef %0)
  br i1 %i.v, label %bb.e, label %lv_obj_get_display.exit.thread

.split:                                           ; preds = %.thread
  tail call void @lv_obj_scrollbar_invalidate(ptr noundef nonnull %i.f) #7
  %i.w = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 43, ptr noundef null) #7 ; 0 uses
  %i.x = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 45, ptr noundef null) #7 ; 0 uses
  br label %lv_obj_get_display.exit.thread

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.t, align 8, !tbaa !49
  br label %lv_obj_get_display.exit.thread

lv_obj_get_display.exit.thread:                   ; preds = %._crit_edge.i, %.thread, %.split, %lv_obj_get_screen.exit.i, %bb.d, %bb.e, %bb.a
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @lv_obj_get_parent(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @lv_obj_get_display(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %lv_obj_get_screen.exit, label %.preheader8.i

.preheader8.i:                                    ; preds = %bb.b, %.preheader8.i
  %.0.i = phi ptr [ %i.e, %.preheader8.i ], [ %0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  br i1 %.not7.i, label %lv_obj_get_screen.exit, label %.preheader8.i, !llvm.loop !2

lv_obj_get_screen.exit:                           ; preds = %.preheader8.i, %bb.b
  %.018 = phi ptr [ %0, %bb.b ], [ %.0.i, %.preheader8.i ]
  %i.f = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 16)) #7 ; 2 uses
  %.not2130 = icmp eq ptr %i.f, null
  br i1 %.not2130, label %.thread, label %.preheader24

.preheader24:                                     ; preds = %lv_obj_get_screen.exit, %._crit_edge
  %.01731 = phi ptr [ %i.n, %._crit_edge ], [ %i.f, %lv_obj_get_screen.exit ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01731, i64 840
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38   ; 2 uses
  %.not2228.not = icmp eq i32 %i.h, 0
  br i1 %.not2228.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %.01731, i64 784
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %wide.trip.count = zext i32 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = icmp eq ptr %i.l, %.018
  br i1 %i.m, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader24
  %i.n = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 16), ptr noundef nonnull %.01731) #7 ; 2 uses
  %.not21 = icmp eq ptr %i.n, null
  br i1 %.not21, label %.thread, label %.preheader24, !llvm.loop !1

.thread:                                          ; preds = %._crit_edge, %bb.d, %lv_obj_get_screen.exit
  %.01727 = phi ptr [ %.01731, %bb.d ], [ null, %lv_obj_get_screen.exit ], [ null, %._crit_edge ]
  ret ptr %.01727
}

; Function Attrs: nounwind uwtable
define internal fastcc void @obj_delete_core(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 4 uses
  %i.b = load i32, ptr %i.a, align 2              ; 2 uses
  %i.c = and i32 %i.b, 16384
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 16384
  store i32 %i.d, ptr %i.a, align 2
  %i.e = tail call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 42, ptr noundef null) #7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 2
  %i.h = and i32 %i.g, -16385
  store i32 %i.h, ptr %i.a, align 2
  br label %bb.ac

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %.not80 = icmp eq ptr %i.j, null
  br i1 %.not80, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @lv_event_remove_all(ptr noundef nonnull %i.k) #7
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.pr, i64 64
  %i.n = load i16, ptr %i.m, align 8, !tbaa !46
  %.not19.i.not = icmp eq i16 %i.n, 0
  br i1 %.not19.i.not, label %._crit_edge, label %lv_obj_get_child.exit

lv_obj_get_child.exit:                            ; preds = %bb.f
  %i.o = load ptr, ptr %.pr, align 8, !tbaa !47
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %.not81103 = icmp eq ptr %i.p, null
  br i1 %.not81103, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %lv_obj_get_child.exit, %lv_obj_get_child.exit85
  %.075104 = phi ptr [ %i.v, %lv_obj_get_child.exit85 ], [ %i.p, %lv_obj_get_child.exit ]
  tail call fastcc void @obj_delete_core(ptr noundef %.075104)
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !42   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.t = load i16, ptr %i.s, align 8, !tbaa !46
  %.not19.i83.not = icmp eq i16 %i.t, 0
  br i1 %.not19.i83.not, label %._crit_edge, label %lv_obj_get_child.exit85

lv_obj_get_child.exit85:                          ; preds = %bb.g
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %.not81 = icmp eq ptr %i.v, null
  br i1 %.not81, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %lv_obj_get_child.exit85, %bb.d, %bb.f, %bb.e, %lv_obj_get_child.exit
  %i.w = tail call ptr @lv_obj_get_group(ptr noundef nonnull %0) #7
  %i.x = tail call ptr @lv_indev_get_next(ptr noundef null) #7 ; 2 uses
  %.not82105 = icmp eq ptr %i.x, null
  br i1 %.not82105, label %.preheader.preheader, label %.lr.ph108

.lr.ph108:                                        ; preds = %._crit_edge, %bb.t
  %.074106 = phi ptr [ %i.at, %bb.t ], [ %i.x, %._crit_edge ] ; 13 uses
  %i.y = tail call i32 @lv_indev_get_type(ptr noundef nonnull %.074106) #7
  %i.z = and i32 %i.y, -3
  %or.cond = icmp eq i32 %i.z, 1
  br i1 %or.cond, label %bb.h, label %bb.p

bb.h:                                             ; preds = %.lr.ph108
  %i.aa = getelementptr inbounds nuw i8, ptr %.074106, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.074106, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = tail call i32 @lv_indev_get_state(ptr noundef nonnull %.074106) #7
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %obj_indev_reset.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lv_indev_wait_release(ptr noundef nonnull %.074106) #7
  br label %obj_indev_reset.exit

obj_indev_reset.exit:                             ; preds = %bb.j, %bb.k
  tail call void @lv_indev_reset(ptr noundef nonnull %.074106, ptr noundef nonnull %0) #7
  br label %bb.l

bb.l:                                             ; preds = %obj_indev_reset.exit, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.074106, i64 272 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ah, align 8, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.074106, i64 280 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.am = icmp eq ptr %i.al, %0
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.ak, align 8, !tbaa !62
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.lr.ph108
  %i.an = getelementptr inbounds nuw i8, ptr %.074106, i64 352
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call ptr @lv_indev_get_active_obj() #7
  %i.ar = icmp eq ptr %0, %i.aq
  br i1 %i.ar, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.as = tail call i32 @lv_indev_get_state(ptr noundef nonnull %.074106) #7
  %.not.i86 = icmp eq i32 %i.as, 0
  br i1 %.not.i86, label %obj_indev_reset.exit87, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lv_indev_wait_release(ptr noundef nonnull %.074106) #7
  br label %obj_indev_reset.exit87

obj_indev_reset.exit87:                           ; preds = %bb.r, %bb.s
  tail call void @lv_indev_reset(ptr noundef nonnull %.074106, ptr noundef nonnull %0) #7
  br label %bb.t

bb.t:                                             ; preds = %obj_indev_reset.exit87, %bb.q, %bb.p
  %i.at = tail call ptr @lv_indev_get_next(ptr noundef nonnull %.074106) #7 ; 2 uses
  %.not82 = icmp eq ptr %i.at, null
  br i1 %.not82, label %.preheader.preheader, label %.lr.ph108, !llvm.loop !51

.preheader.preheader:                             ; preds = %bb.t, %._crit_edge
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.au = tail call i32 @lv_async_call_cancel(ptr noundef nonnull @lv_obj_delete_async_cb, ptr noundef nonnull %0) #7
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.preheader, label %bb.u, !llvm.loop !52

bb.u:                                             ; preds = %.preheader
  tail call void @lv_obj_destruct(ptr noundef nonnull %0) #7
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %lv_obj_get_screen.exit.i, label %.preheader14.i

lv_obj_get_screen.exit.i:                         ; preds = %bb.u
  %i.az = tail call ptr @lv_ll_get_head(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 16)) #7
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %._crit_edge.i, %lv_obj_get_screen.exit.i
  %.sink = phi ptr [ %i.bh, %._crit_edge.i ], [ %i.az, %lv_obj_get_screen.exit.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink, i64 840
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !38 ; 5 uses
  %.not2228.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not2228.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader24.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink, i64 784
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39 ; 5 uses
  %wide.trip.count.i = zext i32 %i.bb to i64      ; 2 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.w, !llvm.loop !0

bb.w:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41
  %i.bg = icmp eq ptr %i.bf, %0
  br i1 %i.bg, label %.lr.ph116, label %bb.v

._crit_edge.i:                                    ; preds = %bb.v, %.preheader24.i
  %i.bh = tail call ptr @lv_ll_get_next(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @lv_global, i64 16), ptr noundef nonnull %.sink) #7
  br label %.preheader24.i

.lr.ph116:                                        ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink, i64 840
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink, i64 784
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph116, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41
  %i.bm = icmp eq ptr %i.bl, %0
  br i1 %i.bm, label %._crit_edge117.split.loop.exit154, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %._crit_edge117, label %bb.x, !llvm.loop !53

._crit_edge117.split.loop.exit154:                ; preds = %bb.x
  %i.bn = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge117

._crit_edge117:                                   ; preds = %bb.y, %._crit_edge117.split.loop.exit154
  %.072.lcssa.ph = phi i32 [ %i.bn, %._crit_edge117.split.loop.exit154 ], [ %i.bb, %bb.y ] ; 3 uses
  %i.bo = add i32 %i.bb, -1                       ; 3 uses
  %i.bp = icmp ult i32 %.072.lcssa.ph, %i.bo
  br i1 %i.bp, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %._crit_edge117
  %i.bq = zext i32 %.072.lcssa.ph to i64
  %i.br = shl nuw nsw i64 %i.bq, 3                ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.bd, i64 %i.br
  %i.bs = getelementptr nuw i8, ptr %i.bd, i64 %i.br
  %scevgep132 = getelementptr nuw i8, ptr %i.bs, i64 8
  %i.bt = add i32 %i.bb, -2
  %i.bu = sub i32 %i.bt, %.072.lcssa.ph
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep132, i64 %i.bx, i1 false), !tbaa !41
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %.lr.ph125, %._crit_edge117
  store i32 %i.bo, ptr %i.bi, align 8, !tbaa !38
  %i.by = zext i32 %i.bo to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call ptr @lv_realloc(ptr noundef nonnull %i.bd, i64 noundef %i.bz) #7
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !39
  br label %bb.ab

.preheader14.i:                                   ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !46 ; 4 uses
  %.not17.i = icmp eq i16 %i.ce, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.preheader14.i
  %i.cf = load ptr, ptr %i.cc, align 8, !tbaa !47 ; 2 uses
  %wide.trip.count.i91 = zext i16 %i.ce to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.lr.ph.i90
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.i90 ], [ %indvars.iv.next.i93, %bb.aa ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i92
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !41
  %i.ci = icmp eq ptr %i.ch, %0
  br i1 %i.ci, label %lv_obj_get_index.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i91
  br i1 %exitcond.not.i94, label %.preheader13.i.preheader, label %bb.z, !llvm.loop !3

.preheader13.i.preheader:                         ; preds = %bb.aa, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

lv_obj_get_index.exit:                            ; preds = %bb.z
  %i.cj = trunc i64 %indvars.iv.i92 to i32
  %i.ck = and i32 %i.cj, 65535
  %i.cl = zext i16 %i.ce to i32
  %i.cm = add nsw i32 %i.cl, -1
  %i.cn = icmp sgt i32 %i.cm, %i.ck
  br i1 %i.cn, label %.lr.ph111.preheader, label %._crit_edge112

.lr.ph111.preheader:                              ; preds = %lv_obj_get_index.exit
  %i.co = trunc i64 %indvars.iv.i92 to i16
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %.lr.ph111
  %i.cp = phi ptr [ %i.cz, %.lr.ph111 ], [ %i.cc, %.lr.ph111.preheader ]
  %.0110 = phi i16 [ %i.cv, %.lr.ph111 ], [ %i.co, %.lr.ph111.preheader ] ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  %i.cr = zext i16 %.0110 to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !41
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !41
  %i.cv = add nuw i16 %.0110, 1                   ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.db = load i16, ptr %i.da, align 8, !tbaa !46 ; 2 uses
  %i.dc = zext i16 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -1
  %i.de = icmp sgt i32 %i.dd, %i.cw
  br i1 %i.de, label %.lr.ph111, label %._crit_edge112.loopexit, !llvm.loop !54

._crit_edge112.loopexit:                          ; preds = %.lr.ph111
  %.pre = load ptr, ptr %i.cz, align 8, !tbaa !47
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit, %lv_obj_get_index.exit
  %i.df = phi ptr [ %i.cf, %lv_obj_get_index.exit ], [ %.pre, %._crit_edge112.loopexit ]
  %.lcssa109 = phi ptr [ %i.cc, %lv_obj_get_index.exit ], [ %i.cz, %._crit_edge112.loopexit ]
  %.lcssa99 = phi i16 [ %i.ce, %lv_obj_get_index.exit ], [ %i.db, %._crit_edge112.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.lcssa109, i64 64
  %i.dh = add i16 %.lcssa99, -1                   ; 2 uses
  store i16 %i.dh, ptr %i.dg, align 8, !tbaa !46
  %i.di = zext i16 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = tail call ptr @lv_realloc(ptr noundef %i.df, i64 noundef %i.dj) #7
  %i.dl = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !47
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge112, %._crit_edge126
  tail call void @lv_free(ptr noundef nonnull %0) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.c, %bb.ab, %bb.a
  ret void
}

declare void @lv_obj_scrollbar_invalidate(ptr noundef) local_unnamed_addr #1

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define void @lv_obj_clean(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i16, ptr %i.e, align 8, !tbaa !46   ; 7 uses
  %.not4.i = icmp eq i16 %i.f, 0
  br i1 %.not4.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !47
  %wide.trip.count.i = zext i16 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge, label %bb.e, !llvm.loop !64

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 62
  %i.k = load i32, ptr %i.j, align 2
  %i.l = and i32 %i.k, 16384
  %.not.i19 = icmp eq i32 %i.l, 0
  br i1 %.not.i19, label %.lr.ph.preheader, label %bb.d

.lr.ph.preheader:                                 ; preds = %bb.e
  tail call fastcc void @obj_delete_core(ptr noundef %i.i)
  %.val58 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 2 uses
  %i.m = icmp eq ptr %.val58, null
  br i1 %i.m, label %._crit_edge, label %.lr.ph60

.lr.ph.loopexit:                                  ; preds = %bb.g
  tail call fastcc void @obj_delete_core(ptr noundef %i.s)
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.n = icmp eq ptr %.val, null
  br i1 %i.n, label %._crit_edge, label %.lr.ph60, !llvm.loop !65

.lr.ph60:                                         ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %.val59 = phi ptr [ %.val, %.lr.ph.loopexit ], [ %.val58, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val59, i64 64
  %i.p = load i16, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %.not4.i20 = icmp eq i16 %i.p, 0
  br i1 %.not4.i20, label %._crit_edge, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph60
  %i.q = load ptr, ptr %.val59, align 8, !tbaa !47
  %wide.trip.count.i22 = zext i16 %i.p to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i22
  br i1 %exitcond.not.i26, label %._crit_edge, label %bb.g, !llvm.loop !64

bb.g:                                             ; preds = %bb.f, %.lr.ph.i21
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i25, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i23
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 62
  %i.u = load i32, ptr %i.t, align 2
  %i.v = and i32 %i.u, 16384
  %.not.i24 = icmp eq i32 %i.v, 0
  br i1 %.not.i24, label %.lr.ph.loopexit, label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.loopexit, %.lr.ph60, %bb.f, %.lr.ph.preheader, %bb.c, %bb.b
  %.0.i34.shrunk44.shrunk = phi i16 [ 0, %bb.c ], [ %i.f, %.lr.ph.preheader ], [ 0, %bb.b ], [ %i.f, %bb.f ], [ %i.f, %.lr.ph.loopexit ], [ %i.f, %.lr.ph60 ], [ %i.f, %bb.d ]
  %.0.i34.shrunk44 = zext i16 %.0.i34.shrunk44.shrunk to i32
  tail call void @lv_obj_scroll_to(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #7
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !42   ; 4 uses
  %.not17 = icmp eq ptr %i.w, null
  br i1 %.not17, label %lv_obj_get_child_count.exit32, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 0, ptr %i.x, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  store i32 0, ptr %i.y, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !46
  %i.ab = zext i16 %i.aa to i32
  br label %lv_obj_get_child_count.exit32

lv_obj_get_child_count.exit32:                    ; preds = %._crit_edge, %bb.h
  %.0.i30 = phi i32 [ %i.ab, %bb.h ], [ 0, %._crit_edge ]
  %i.ac = icmp samesign ult i32 %.0.i30, %.0.i34.shrunk44
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %lv_obj_get_child_count.exit32
  %i.ad = tail call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 43, ptr noundef null) #7 ; 0 uses
  %i.ae = tail call i32 @lv_obj_send_event(ptr noundef nonnull %0, i32 noundef 45, ptr noundef null) #7 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %lv_obj_get_child_count.exit32, %bb.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @lv_obj_get_child_count(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load i16, ptr %i.d, align 8, !tbaa !46
  %i.f = zext i16 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @lv_obj_scroll_to(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_obj_delete_delayed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._lv_anim_t, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @lv_anim_init(ptr noundef nonnull %2) #7
  call void @lv_anim_set_var(ptr noundef nonnull %2, ptr noundef %0) #7
  call void @lv_anim_set_exec_cb(ptr noundef nonnull %2, ptr noundef null) #7
  call void @lv_anim_set_duration(ptr noundef nonnull %2, i32 noundef 1) #7
  call void @lv_anim_set_delay(ptr noundef nonnull %2, i32 noundef %1) #7
  call void @lv_anim_set_completed_cb(ptr noundef nonnull %2, ptr noundef nonnull @lv_obj_delete_anim_completed_cb) #7
  %i.a = call ptr @lv_anim_start(ptr noundef nonnull %2) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lv_anim_set_completed_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_obj_delete_anim_completed_cb(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  tail call void @lv_obj_delete(ptr noundef %i.a)
  ret void
}

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_obj_delete_async(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lv_async_call(ptr noundef nonnull @lv_obj_delete_async_cb, ptr noundef nonnull %0) #7 ; 0 uses
  ret void
}

declare i32 @lv_async_call(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @lv_obj_delete_async_cb(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @lv_obj_delete(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_set_parent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %.preheader55, label %bb.c

.preheader55:                                     ; preds = %bb.b, %.preheader55
  br label %.preheader55

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, %i.b
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.h, label %lv_obj_get_parent.exit.i

lv_obj_get_parent.exit.i:                         ; preds = %bb.c
  %i.e = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  tail call void @lv_obj_allocate_spec_attr(ptr noundef nonnull %1) #7
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.preheader.i50, label %.preheader14.i

.preheader14.i:                                   ; preds = %lv_obj_get_parent.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %.not17.i = icmp eq i16 %i.k, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader14.i
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !47   ; 5 uses
  %wide.trip.count.i = zext i16 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = icmp eq ptr %i.n, %0
  br i1 %i.o, label %.lr.ph.split.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader13.i.preheader, label %bb.d, !llvm.loop !3

.preheader13.i.preheader:                         ; preds = %bb.e, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

.lr.ph.split.split:                               ; preds = %bb.d
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = zext i16 %i.k to i32                     ; 2 uses
  %i.r = add nsw i32 %i.q, -2
  %.not4765 = icmp slt i32 %i.r, %i.p
  br i1 %.not4765, label %.split, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph.split.split
  %i.s = shl nuw nsw i64 %indvars.iv.i, 3         ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.l, i64 %i.s
  %i.t = getelementptr nuw i8, ptr %i.l, i64 %i.s
  %scevgep76 = getelementptr nuw i8, ptr %i.t, i64 8
  %i.u = trunc i64 %indvars.iv.i to i32
  %reass.sub = sub i32 %i.q, %i.u
  %i.v = add i32 %reass.sub, -2
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep76, i64 %i.y, i1 false), !tbaa !41
  br label %.split

.preheader.i50:                                   ; preds = %lv_obj_get_parent.exit.i, %.preheader.i50
  br label %.preheader.i50

.split:                                           ; preds = %.lr.ph67, %.lr.ph.split.split
  %i.z = add i16 %i.k, -1                         ; 3 uses
  store i16 %i.z, ptr %i.j, align 8, !tbaa !46
  %.not48 = icmp eq i16 %i.z, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call ptr @lv_realloc(ptr noundef nonnull %i.l, i64 noundef %i.ab) #7
  br label %lv_obj_get_child_count.exit54

bb.g:                                             ; preds = %.split
  tail call void @lv_free(ptr noundef nonnull %i.l) #7
  br label %lv_obj_get_child_count.exit54

lv_obj_get_child_count.exit54:                    ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.ac, %bb.f ], [ null, %bb.g ]
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !42
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !46
  %i.ai = add i16 %i.ah, 1                        ; 2 uses
  store i16 %i.ai, ptr %i.ag, align 8, !tbaa !46
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ak = zext i16 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call ptr @lv_realloc(ptr noundef %i.aj, i64 noundef %i.al) #7 ; 2 uses
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !42 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !46
  %i.aq = zext i16 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.as
  store ptr %0, ptr %i.at, align 8, !tbaa !41
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  tail call void @lv_obj_scrollbar_invalidate(ptr noundef nonnull %i.f) #7
  %i.au = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 43, ptr noundef nonnull %0) #7 ; 0 uses
  %i.av = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.f, i32 noundef 45, ptr noundef null) #7 ; 0 uses
  %i.aw = tail call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 43, ptr noundef nonnull %0) #7 ; 0 uses
  %i.ax = tail call i32 @lv_obj_send_event(ptr noundef nonnull %1, i32 noundef 44, ptr noundef null) #7 ; 0 uses
  tail call void @lv_obj_mark_layout_as_dirty(ptr noundef nonnull %0) #7
  %i.ay = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %lv_obj_get_child_count.exit54
  ret void
}

declare void @lv_obj_allocate_spec_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 65535) i32 @lv_obj_get_index(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %lv_obj_get_parent.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

lv_obj_get_parent.exit:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader14

.preheader14:                                     ; preds = %lv_obj_get_parent.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i16, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not17 = icmp eq i16 %i.g, 0
  br i1 %.not17, label %.preheader13.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader14
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47
  %wide.trip.count = zext i16 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %.loopexit.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader13.preheader, label %bb.b, !llvm.loop !3

.preheader13.preheader:                           ; preds = %bb.c, %.preheader14
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.preheader, %.preheader13
  br label %.preheader13

.loopexit.loopexit:                               ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %lv_obj_get_parent.exit
  %.010 = phi i32 [ -1, %lv_obj_get_parent.exit ], [ %i.l, %.loopexit.loopexit ]
  ret i32 %.010
}

declare ptr @lv_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lv_free(ptr noundef) local_unnamed_addr #1

declare void @lv_obj_mark_layout_as_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_obj_move_to_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %lv_obj_get_parent.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

lv_obj_get_parent.exit:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %.not41 = icmp eq ptr %i.b, null
  br i1 %.not41, label %bb.h, label %bb.b

bb.b:                                             ; preds = %lv_obj_get_parent.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.preheader14.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.g = load i16, ptr %i.f, align 8, !tbaa !46
  %i.h = zext i16 %i.g to i32
  br label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.b, %bb.c
  %.0.i44 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.j = load i16, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %.not17.i = icmp eq i16 %i.j, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader14.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !47
  %wide.trip.count.i = zext i16 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 8 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader13.i.preheader, label %bb.d, !llvm.loop !3

.preheader13.i.preheader:                         ; preds = %bb.e, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

bb.f:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32   ; 4 uses
  %i.p = icmp slt i32 %1, 0
  %i.q = select i1 %i.p, i32 %.0.i44, i32 0
  %spec.select = add i32 %i.q, %1                 ; 8 uses
  %i.r = icmp slt i32 %spec.select, 0
  %.not42 = icmp sge i32 %spec.select, %.0.i44
  %or.cond.not48 = select i1 %i.r, i1 true, i1 %.not42
  %i.s = icmp eq i32 %spec.select, %i.o
  %or.cond43 = or i1 %or.cond.not48, %i.s
  br i1 %or.cond43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %2 = icmp samesign ult i32 %spec.select, %i.o
  br i1 %2, label %.preheader49, label %.preheader50

.preheader50:                                     ; preds = %bb.g
  %3 = icmp samesign ugt i32 %spec.select, %i.o
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !47  ; 4 uses
  br i1 %3, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader50
  %i.t = shl nuw nsw i64 %indvars.iv.i, 3         ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.pre, i64 %i.t
  %i.u = getelementptr nuw i8, ptr %.pre, i64 %i.t
  %scevgep58 = getelementptr nuw i8, ptr %i.u, i64 8
  %i.v = xor i32 %i.o, -1
  %i.w = add nsw i32 %spec.select, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep58, i64 %i.z, i1 false), !tbaa !41
  br label %.loopexit

.preheader49:                                     ; preds = %bb.g
  %4 = load ptr, ptr %i.d, align 8, !tbaa !47     ; 4 uses
  %5 = zext nneg i32 %spec.select to i64          ; 2 uses
  %i.aa = sub nsw i64 %indvars.iv.i, %5           ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader49
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = sub i64 %indvars.iv.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = sub i64 %indvars.iv.i, %index
  %i.ad = getelementptr [8 x i8], ptr %4, i64 %i.ac ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -16
  %i.af = getelementptr i8, ptr %i.ad, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !41
  %wide.load66 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr i8, ptr %i.ad, i64 -8
  %i.ah = getelementptr i8, ptr %i.ad, i64 -24
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !41
  store <2 x ptr> %wide.load66, ptr %i.ah, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader49, %middle.block
  %indvars.iv.ph = phi i64 [ %indvars.iv.i, %.preheader49 ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !41
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.am = icmp sgt i64 %indvars.iv.next, %5
  br i1 %i.am, label %scalar.ph, label %.loopexit, !llvm.loop !71

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.lr.ph, %.preheader50
  %6 = phi ptr [ %.pre, %.lr.ph ], [ %.pre, %.preheader50 ], [ %4, %middle.block ], [ %4, %scalar.ph ]
  %i.an = zext nneg i32 %spec.select to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.an
  store ptr %0, ptr %i.ao, align 8, !tbaa !41
  %i.ap = tail call i32 @lv_obj_send_event(ptr noundef nonnull %i.b, i32 noundef 43, ptr noundef null) #7 ; 0 uses
  %i.aq = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.f, %lv_obj_get_parent.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @lv_obj_swap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %.preheader53, label %lv_obj_get_parent.exit.i

.preheader53:                                     ; preds = %bb.b, %.preheader53
  br label %.preheader53

lv_obj_get_parent.exit.i:                         ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 9 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %lv_obj_get_parent.exit.i40, label %.preheader14.i

.preheader14.i:                                   ; preds = %lv_obj_get_parent.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i16, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %.not17.i = icmp eq i16 %i.i, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader14.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !47
  %wide.trip.count.i = zext i16 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %lv_obj_get_parent.exit.i40, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader13.i.preheader, label %bb.c, !llvm.loop !3

.preheader13.i.preheader:                         ; preds = %bb.d, %.preheader14.i
  br label %.preheader13.i

.preheader13.i:                                   ; preds = %.preheader13.i.preheader, %.preheader13.i
  br label %.preheader13.i

lv_obj_get_parent.exit.i40:                       ; preds = %bb.c, %lv_obj_get_parent.exit.i
  %.010.i = phi i64 [ -1, %lv_obj_get_parent.exit.i ], [ %indvars.iv.i, %bb.c ]
  %i.n = icmp eq ptr %i.d, null
  br i1 %i.n, label %lv_obj_get_index.exit52, label %.preheader14.i41

.preheader14.i41:                                 ; preds = %lv_obj_get_parent.exit.i40
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i16, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not17.i42 = icmp eq i16 %i.r, 0
  br i1 %.not17.i42, label %.preheader13.i48.preheader, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %.preheader14.i41
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !47
  %wide.trip.count.i44 = zext i16 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i43
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i46, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i45
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %lv_obj_get_index.exit52, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i44
  br i1 %exitcond.not.i47, label %.preheader13.i48.preheader, label %bb.e, !llvm.loop !3

.preheader13.i48.preheader:                       ; preds = %bb.f, %.preheader14.i41
  br label %.preheader13.i48

.preheader13.i48:                                 ; preds = %.preheader13.i48.preheader, %.preheader13.i48
  br label %.preheader13.i48

lv_obj_get_index.exit52:                          ; preds = %bb.e, %lv_obj_get_parent.exit.i40
  %.010.i50 = phi i64 [ -1, %lv_obj_get_parent.exit.i40 ], [ %indvars.iv.i45, %bb.e ]
  %i.w = tail call i32 @lv_obj_send_event(ptr noundef %i.d, i32 noundef 45, ptr noundef nonnull %1) #7 ; 0 uses
  %i.x = tail call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 45, ptr noundef nonnull %0) #7 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.010.i
  store ptr %1, ptr %i.ab, align 8, !tbaa !41
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.010.i50
  store ptr %0, ptr %i.af, align 8, !tbaa !41
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  %i.ag = tail call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 43, ptr noundef nonnull %1) #7 ; 0 uses
  %i.ah = tail call i32 @lv_obj_send_event(ptr noundef %i.b, i32 noundef 44, ptr noundef nonnull %1) #7 ; 0 uses
  %i.ai = tail call i32 @lv_obj_send_event(ptr noundef %i.d, i32 noundef 43, ptr noundef nonnull %0) #7 ; 0 uses
  %i.aj = tail call i32 @lv_obj_send_event(ptr noundef %i.d, i32 noundef 44, ptr noundef nonnull %0) #7 ; 0 uses
  %i.ak = tail call i32 @lv_obj_invalidate(ptr noundef %i.b) #7 ; 0 uses
  %.not36 = icmp eq ptr %i.b, %i.d
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %lv_obj_get_index.exit52
  %i.al = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %i.d) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %lv_obj_get_index.exit52
  tail call void @lv_group_swap_obj(ptr noundef nonnull %0, ptr noundef nonnull %1) #7
  ret void
}

declare void @lv_group_swap_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @lv_obj_get_screen(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %.preheader8

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

.preheader8:                                      ; preds = %bb.a, %.preheader8
  %.0 = phi ptr [ %i.b, %.preheader8 ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.b, label %.preheader8, !llvm.loop !2

bb.b:                                             ; preds = %.preheader8
  ret ptr %.0
}

declare ptr @lv_ll_get_head(ptr noundef) local_unnamed_addr #1

declare ptr @lv_ll_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_obj_get_child(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %1, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load i16, ptr %i.e, align 8, !tbaa !46
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  br i1 %i.d, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %1, %i.g                     ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ %1, %bb.c ]    ; 2 uses
  %.not19 = icmp samesign ult i32 %.0, %i.g
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.k = zext nneg i32 %.0 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.m, %bb.e ], [ null, %bb.d ], [ null, %._crit_edge ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @lv_obj_get_child_by_type(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load i16, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  %i.f = icmp sgt i32 %1, -1
  %.not48 = icmp eq i16 %i.e, 0                   ; 2 uses
  br i1 %i.f, label %.preheader33, label %bb.h

.preheader33:                                     ; preds = %bb.c
  br i1 %.not48, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %.preheader33
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !47
  %wide.trip.count = zext i16 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph43, %bb.g
  %indvars.iv52 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next53, %bb.g ] ; 2 uses
  %.02741 = phi i32 [ %1, %.lr.ph43 ], [ %.128, %bb.g ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv52
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq ptr %i.j, %2
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %.02741, 0
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %.02741, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.128 = phi i32 [ %i.m, %bb.f ], [ %.02741, %bb.d ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !4

bb.h:                                             ; preds = %bb.c
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.n = add nsw i32 %1, 1
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.p = zext i16 %i.e to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.237 = phi i32 [ %i.n, %.lr.ph ], [ %.3, %bb.l ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = icmp eq ptr %i.s, %2
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %.237, 0
  br i1 %i.u, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %.237, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.3 = phi i32 [ %i.v, %bb.k ], [ %.237, %bb.i ]
  %i.w = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.w, label %bb.i, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %bb.l, %bb.j, %bb.g, %bb.e, %bb.h, %.preheader33, %bb.b
  %.126 = phi ptr [ null, %bb.b ], [ null, %bb.h ], [ null, %.preheader33 ], [ %i.i, %bb.e ], [ null, %bb.g ], [ %i.r, %bb.j ], [ null, %bb.l ]
  ret ptr %.126
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @lv_obj_get_sibling(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.preheader.i, label %lv_obj_get_parent.exit.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  br label %.preheader.i

lv_obj_get_parent.exit.i:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %lv_obj_get_index.exit.thread, label %.preheader14.i

.preheader14.i:                                   ; preds = %lv_obj_get_parent.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i16, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %.not17.i = icmp eq i16 %i.h, 0
  br i1 %.not17.i, label %.preheader13.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader14.i
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %wide.trip.count.i = zext i16 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %lv_obj_get_index.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@lv_obj_get_sibling_by_type:bb.a
  %wide.trip.count.i16 = zext i16 %i.y to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph43.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next53.i, %bb.i ] ; 2 uses
  %.02741.i = phi i32 [ %i.t, %.lr.ph43.i ], [ %.128.i, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv52.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = icmp eq ptr %i.ac, %2
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %.02741.i, 0
  br i1 %i.ae, label %lv_obj_get_child_by_type.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i32 %.02741.i, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.128.i = phi i32 [ %i.af, %bb.h ], [ %.02741.i, %bb.f ]
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i16
  br i1 %exitcond.not.i17, label %lv_obj_get_child_by_type.exit, label %bb.f, !llvm.loop !4

lv_obj_get_child_by_type.exit:                    ; preds = %bb.i, %bb.g, %lv_obj_get_index_by_type.exit.thread26, %lv_obj_get_index_by_type.exit.thread, %.preheader33.i, %.thread, %lv_obj_get_index_by_type.exit
  %.0 = phi ptr [ null, %lv_obj_get_index_by_type.exit ], [ null, %.thread ], [ null, %.preheader33.i ], [ null, %lv_obj_get_index_by_type.exit.thread26 ], [ null, %lv_obj_get_index_by_type.exit.thread ], [ %i.ab, %bb.g ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @lv_obj_get_index_by_type(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %lv_obj_get_parent.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

lv_obj_get_parent.exit:                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader27

.preheader27:                                     ; preds = %lv_obj_get_parent.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load i16, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %.not32 = icmp eq i16 %i.g, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47
  %wide.trip.count = zext i16 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.029 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.e ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %i.j, %0
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %.029, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.2.ph = phi i32 [ %.029, %bb.b ], [ %i.n, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !5

.loopexit:                                        ; preds = %bb.e, %bb.c, %.preheader27, %lv_obj_get_parent.exit
  %.3 = phi i32 [ -1, %lv_obj_get_parent.exit ], [ -1, %.preheader27 ], [ -1, %bb.e ], [ %.029, %bb.c ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @lv_obj_get_child_count_by_type(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader13

.preheader13:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load i16, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  %.not16 = icmp eq i16 %i.e, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader13
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !47   ; 5 uses
  %wide.trip.count = zext i16 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i16 %i.e, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.015 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp eq ptr %i.j, %1
  %i.l = zext i1 %i.k to i32
  %spec.select = add i32 %.015, %i.l
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq ptr %i.p, %1
  %i.r = zext i1 %i.q to i32
  %spec.select.1 = add i32 %spec.select, %i.r
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48
  %i.w = icmp eq ptr %i.v, %1
  %i.x = zext i1 %i.w to i32
  %spec.select.2 = add i32 %spec.select.1, %i.x
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = icmp eq ptr %i.ab, %1
  %i.ad = zext i1 %i.ac to i32
  %spec.select.3 = add i32 %spec.select.2, %i.ad  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !75

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.015.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.015.epil = phi i32 [ %.015.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48
  %i.ah = icmp eq ptr %i.ag, %1
  %i.ai = zext i1 %i.ah to i32
  %spec.select.epil = add i32 %.015.epil, %i.ai   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.d, !llvm.loop !76

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.d, %.preheader13, %bb.b
  %.011 = phi i32 [ 0, %bb.b ], [ 0, %.preheader13 ], [ %spec.select.3, %.loopexit.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.d ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define void @lv_obj_tree_walk(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @walk_core(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @walk_core(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @lv_display_get_next(ptr noundef null) #7 ; 2 uses
  %.not3141 = icmp eq ptr %i.b, null
  br i1 %.not3141, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.02642 = phi ptr [ %i.m, %._crit_edge ], [ %i.b, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02642, i64 840 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.02642, i64 784
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv45 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next46, %bb.c ] ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv45
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = tail call fastcc i32 @walk_core(ptr noundef %i.h, ptr noundef %1, ptr noundef %2) ; 0 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 8, !tbaa !38
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next46, %i.k
  br i1 %i.l, label %bb.c, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.m = tail call ptr @lv_display_get_next(ptr noundef nonnull %.02642) #7 ; 2 uses
  %.not31 = icmp eq ptr %i.m, null
  br i1 %.not31, label %.loopexit, label %.preheader, !llvm.loop !79

bb.d:                                             ; preds = %bb.a
  %i.n = tail call i32 %1(ptr noundef nonnull %0, ptr noundef %2) #7 ; 2 uses
  switch i32 %i.n, label %.preheader37 [
    i32 2, label %.loopexit
    i32 1, label %.critedge
  ]

.preheader37:                                     ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge, label %lv_obj_get_child_count.exit.thread

bb.e:                                             ; preds = %lv_obj_get_child.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.critedge, label %lv_obj_get_child_count.exit.thread, !llvm.loop !80

lv_obj_get_child_count.exit.thread:               ; preds = %.preheader37, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader37 ] ; 3 uses
  %i.t = phi ptr [ %i.r, %bb.e ], [ %i.p, %.preheader37 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load i16, ptr %i.u, align 8, !tbaa !46
  %i.w = zext i16 %i.v to i64
  %.not3036 = icmp samesign ult i64 %indvars.iv, %i.w
  br i1 %.not3036, label %lv_obj_get_child.exit, label %.critedge

lv_obj_get_child.exit:                            ; preds = %lv_obj_get_child_count.exit.thread
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = tail call fastcc i32 @walk_core(ptr noundef %i.z, ptr noundef %1, ptr noundef %2)
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %.loopexit, label %bb.e

.critedge:                                        ; preds = %lv_obj_get_child_count.exit.thread, %bb.e, %.preheader37, %bb.d
  br label %.loopexit

.loopexit:                                        ; preds = %lv_obj_get_child.exit, %._crit_edge, %bb.b, %bb.d, %.critedge
  %.1 = phi i32 [ %i.n, %bb.d ], [ 2, %bb.b ], [ 0, %.critedge ], [ 2, %._crit_edge ], [ 2, %lv_obj_get_child.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @lv_obj_dump_tree(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @lv_display_get_next(ptr noundef null) #7 ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.0812 = phi ptr [ %i.i, %._crit_edge ], [ %i.b, %bb.b ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0812, i64 840
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.0812, i64 784
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  tail call fastcc void @dump_tree_core(ptr noundef %i.h, i32 noundef 0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = tail call ptr @lv_display_get_next(ptr noundef nonnull %.0812) #7 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !82

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @dump_tree_core(ptr noundef nonnull %0, i32 noundef 0)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.d
  ret void
}

declare ptr @lv_display_get_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dump_tree_core(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i16, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not11 = icmp eq i16 %i.d, 0
  br i1 %.not11, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.f = add nsw i32 %1, 1
  %wide.trip.count = zext i16 %i.d to i64
  br label %lv_obj_get_child.exit

lv_obj_get_child.exit:                            ; preds = %.preheader, %lv_obj_get_child.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lv_obj_get_child.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  tail call fastcc void @dump_tree_core(ptr noundef %i.h, i32 noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %lv_obj_get_child.exit, !llvm.loop !83

.loopexit:                                        ; preds = %lv_obj_get_child.exit, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @lv_event_remove_all(ptr noundef) local_unnamed_addr #1

declare ptr @lv_obj_get_group(ptr noundef) local_unnamed_addr #1

declare ptr @lv_indev_get_next(ptr noundef) local_unnamed_addr #1

declare i32 @lv_indev_get_type(ptr noundef) local_unnamed_addr #1

declare ptr @lv_indev_get_active_obj() local_unnamed_addr #1

declare i32 @lv_async_call_cancel(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lv_obj_destruct(ptr noundef) local_unnamed_addr #1

declare i32 @lv_indev_get_state(ptr noundef) local_unnamed_addr #1

declare void @lv_indev_wait_release(ptr noundef) local_unnamed_addr #1

declare void @lv_indev_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = distinct !{!2, !40}
!3 = distinct !{!3, !40}
!4 = distinct !{!4, !40}
!5 = distinct !{!5, !40}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTS15_lv_obj_class_t", !14, i64 0}
!16 = !{!"p1 _ZTS9_lv_obj_t", !14, i64 0}
!17 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !14, i64 0}
!18 = !{!"p1 _ZTS15_lv_obj_style_t", !14, i64 0}
!19 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!20 = !{!"short", !10, i64 0}
!21 = !{!"_lv_obj_t", !15, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !14, i64 32, !19, i64 40, !11, i64 56, !20, i64 60, !20, i64 62, !20, i64 62, !20, i64 62, !20, i64 62, !20, i64 62, !20, i64 63, !20, i64 63, !20, i64 63, !20, i64 63, !20, i64 63, !20, i64 63, !20, i64 64}
!22 = !{!21, !16, i64 8}
!23 = !{!"p1 _ZTS14_lv_draw_buf_t", !14, i64 0}
!24 = !{!"p1 omnipotent char", !14, i64 0}
!25 = !{!"", !11, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10}
!27 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !14, i64 0}
!28 = !{!"_lv_draw_buf_t", !26, i64 0, !11, i64 12, !24, i64 16, !14, i64 24, !27, i64 32}
!29 = !{!"p1 _ZTS11_lv_layer_t", !14, i64 0}
!30 = !{!"any p2 pointer", !14, i64 0}
!31 = !{!"p2 _ZTS9_lv_obj_t", !30, i64 0}
!32 = !{!"_Bool", !10, i64 0}
!33 = !{!"_lv_array_t", !24, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !32, i64 20}
!34 = !{!"", !33, i64 0, !10, i64 24, !10, i64 24}
!35 = !{!"p1 _ZTS11_lv_theme_t", !14, i64 0}
!36 = !{!"p1 _ZTS11_lv_timer_t", !14, i64 0}
!37 = !{!"_lv_display_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !14, i64 64, !14, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 96, !11, i64 97, !11, i64 97, !11, i64 100, !10, i64 104, !10, i64 616, !11, i64 648, !11, i64 652, !25, i64 656, !28, i64 680, !28, i64 720, !29, i64 760, !14, i64 768, !14, i64 776, !31, i64 784, !16, i64 792, !16, i64 800, !16, i64 808, !16, i64 816, !16, i64 824, !16, i64 832, !11, i64 840, !10, i64 844, !10, i64 844, !14, i64 848, !14, i64 856, !34, i64 864, !11, i64 896, !11, i64 896, !35, i64 904, !36, i64 912, !11, i64 920, !19, i64 924, !11, i64 940}
!38 = !{!37, !11, i64 840}
!39 = !{!37, !31, i64 784}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!16, !16, i64 0}
!42 = !{!21, !17, i64 16}
!43 = !{!"p1 _ZTS11_lv_group_t", !14, i64 0}
!44 = !{!"", !11, i64 0, !11, i64 4}
!45 = !{!"_lv_obj_spec_attr_t", !31, i64 0, !43, i64 8, !34, i64 16, !44, i64 48, !11, i64 56, !11, i64 60, !20, i64 64, !20, i64 66, !20, i64 66, !20, i64 66, !20, i64 66, !20, i64 67, !20, i64 67}
!46 = !{!45, !20, i64 64}
!47 = !{!45, !31, i64 0}
!48 = !{!21, !15, i64 0}
!49 = !{!37, !16, i64 808}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40}
!55 = !{!"p1 _ZTS13_lv_display_t", !14, i64 0}
!56 = !{!"", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24, !10, i64 32, !10, i64 96, !10, i64 128, !44, i64 132, !44, i64 140, !44, i64 148, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !19, i64 192, !44, i64 208, !11, i64 216, !10, i64 220, !44, i64 224, !11, i64 232, !10, i64 236, !10, i64 236, !10, i64 237, !10, i64 237, !10, i64 237}
!57 = !{!"p1 _ZTS10_lv_anim_t", !14, i64 0}
!58 = !{!"_lv_indev_t", !11, i64 0, !14, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !10, i64 28, !10, i64 28, !10, i64 28, !10, i64 28, !10, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !14, i64 48, !14, i64 56, !55, i64 64, !36, i64 72, !10, i64 80, !10, i64 81, !10, i64 82, !10, i64 83, !20, i64 84, !20, i64 86, !11, i64 88, !56, i64 96, !44, i64 336, !16, i64 344, !43, i64 352, !14, i64 360, !34, i64 368, !57, i64 400, !14, i64 408}
!59 = !{!58, !16, i64 256}
!60 = !{!58, !16, i64 264}
!61 = !{!58, !16, i64 272}
!62 = !{!58, !16, i64 280}
!63 = !{!58, !43, i64 352}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = !{!45, !11, i64 48}
!67 = !{!45, !11, i64 52}
!68 = !{!"_lv_anim_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !10, i64 108, !11, i64 116, !11, i64 120, !11, i64 124, !10, i64 128, !10, i64 128, !10, i64 128, !10, i64 128, !10, i64 128}
!69 = !{!68, !14, i64 0}
!70 = distinct !{!70, !40, !72, !73}
!71 = distinct !{!71, !40, !73, !72}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
end_hunk_1
