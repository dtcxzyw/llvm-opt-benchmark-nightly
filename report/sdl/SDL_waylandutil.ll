Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandutil?download=true
inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xdg_activation_token_v1_listener = type { ptr }
%struct.wl_interface = type { ptr, i32, i32, ptr, i32, ptr }
%struct.Wayland_ActivationParams = type { ptr, i8 }

@.str = private unnamed_addr constant [21 x i8] c"XDG_ACTIVATION_TOKEN\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"SDL Activation Token Generation Queue\00", align 1
@WAYLAND_wl_proxy_create_wrapper = external local_unnamed_addr global ptr, align 8
@WAYLAND_wl_proxy_set_queue = external local_unnamed_addr global ptr, align 8
@xdg_activation_listener = internal constant %struct.xdg_activation_token_v1_listener { ptr @handle_xdg_activation_done }, align 8
@WAYLAND_wl_display_dispatch_queue = external local_unnamed_addr global ptr, align 8
@WAYLAND_wl_proxy_wrapper_destroy = external local_unnamed_addr global ptr, align 8
@WAYLAND_wl_event_queue_destroy = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"SDL.window.wayland.xdg_toplevel_export_handle\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"wayland:\00", align 1
@WAYLAND_wl_proxy_marshal_flags = external local_unnamed_addr global ptr, align 8
@xdg_activation_token_v1_interface = external constant %struct.wl_interface, align 8
@WAYLAND_wl_proxy_get_version = external local_unnamed_addr global ptr, align 8
@WAYLAND_wl_proxy_add_listener = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @Wayland_GetActivationTokenForExport(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Wayland_ActivationParams, align 8 ; 5 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not79 = icmp eq ptr %i.h, null
  br i1 %.not79, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.063 = phi ptr [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ null, %bb.b ] ; 5 uses
  %i.k = tail call ptr @SDL_getenv_REAL(ptr noundef nonnull @.str) #3 ; 2 uses
  %.not80 = icmp eq ptr %i.k, null
  br i1 %.not80, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noalias ptr @SDL_strdup_REAL(ptr noundef nonnull %i.k) #3 ; 2 uses
  store ptr %i.l, ptr %1, align 8
  %.not87 = icmp eq ptr %i.l, null
  br i1 %.not87, label %.critedge.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @SDL_unsetenv_unsafe_REAL(ptr noundef nonnull @.str) #3 ; 0 uses
  br label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not81 = icmp eq ptr %i.o, null
  br i1 %.not81, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not82 = icmp eq ptr %.063, null               ; 2 uses
  br i1 %.not82, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = phi ptr [ %i.q, %bb.j ], [ null, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  store ptr %1, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = tail call ptr @Wayland_DisplayCreateQueue(ptr noundef %i.t, ptr noundef nonnull @.str.1) #3 ; 3 uses
  %i.v = load ptr, ptr @WAYLAND_wl_proxy_create_wrapper, align 8
  %i.w = load ptr, ptr %i.n, align 8
  %i.x = tail call ptr %i.v(ptr noundef %i.w) #3  ; 4 uses
  %i.y = load ptr, ptr @WAYLAND_wl_proxy_set_queue, align 8
  tail call void %i.y(ptr noundef %i.x, ptr noundef %i.u) #3
  %i.z = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.aa = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %i.x) #3, !inline_history !3
  %i.ac = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.z(ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull @xdg_activation_token_v1_interface, i32 noundef %i.ab, i32 noundef 0, ptr noundef null) #3, !inline_history !3 ; 9 uses
  %i.ad = load ptr, ptr @WAYLAND_wl_proxy_add_listener, align 8
  %i.ae = call i32 %i.ad(ptr noundef %i.ac, ptr noundef nonnull @xdg_activation_listener, ptr noundef nonnull %3) #3, !inline_history !4 ; 0 uses
  %.not83 = icmp eq ptr %i.r, null
  br i1 %.not83, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ag = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ah = call i32 %i.ag(ptr noundef %i.ac) #3, !inline_history !5
  %i.ai = call ptr (ptr, i32, ptr, i32, i32, ...) %i.af(ptr noundef %i.ac, i32 noundef 2, ptr noundef null, i32 noundef %i.ah, i32 noundef 0, ptr noundef nonnull %i.r) #3, !inline_history !5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not84 = icmp eq ptr %i.ak, null
  br i1 %.not84, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.am = load i32, ptr %i.al, align 8
  %i.an = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ao = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.ap = call i32 %i.ao(ptr noundef %i.ac) #3, !inline_history !6
  %i.aq = call ptr (ptr, i32, ptr, i32, i32, ...) %i.an(ptr noundef %i.ac, i32 noundef 0, ptr noundef null, i32 noundef %i.ap, i32 noundef 0, i32 noundef %i.am, ptr noundef nonnull %i.ak) #3, !inline_history !6 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not82, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.063, i64 240
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not85 = icmp eq ptr %i.as, null
  br i1 %.not85, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.au = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.av = call i32 %i.au(ptr noundef %i.ac) #3, !inline_history !7
  %i.aw = call ptr (ptr, i32, ptr, i32, i32, ...) %i.at(ptr noundef %i.ac, i32 noundef 1, ptr noundef null, i32 noundef %i.av, i32 noundef 0, ptr noundef nonnull %i.as) #3, !inline_history !7 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.ax = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.ay = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.az = call i32 %i.ay(ptr noundef %i.ac) #3, !inline_history !8
  %i.ba = call ptr (ptr, i32, ptr, i32, i32, ...) %i.ax(ptr noundef %i.ac, i32 noundef 3, ptr noundef null, i32 noundef %i.az, i32 noundef 0) #3, !inline_history !8 ; 0 uses
  %i.bb = load i8, ptr %i.s, align 8, !range !10, !noundef !11
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.lr.ph
  %i.bd = load ptr, ptr @WAYLAND_wl_display_dispatch_queue, align 8
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = call i32 %i.bd(ptr noundef %i.be, ptr noundef %i.u) #3 ; 0 uses
  %i.bg = load i8, ptr %i.s, align 8, !range !10, !noundef !11
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.s
  %i.bi = load ptr, ptr @WAYLAND_wl_proxy_wrapper_destroy, align 8
  call void %i.bi(ptr noundef %i.x) #3
  %i.bj = load ptr, ptr @WAYLAND_wl_event_queue_destroy, align 8
  call void %i.bj(ptr noundef %i.u) #3
  %i.bk = load ptr, ptr %1, align 8
  %.not86.not = icmp eq ptr %i.bk, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br i1 %.not86.not, label %.critedge.a, label %bb.t

bb.t:                                             ; preds = %bb.h, %._crit_edge, %bb.g
  %i.bl = icmp ne ptr %.063, null
  %i.bm = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.bm, %i.bl
  br i1 %or.cond5, label %bb.u, label %.critedge.a

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %.063, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 376
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = call ptr @SDL_GetStringProperty_REAL(i32 noundef %i.bp, ptr noundef nonnull @.str.2, ptr noundef null) #3 ; 3 uses
  %.not88 = icmp eq ptr %i.bq, null
  br i1 %.not88, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.bq) #3
  %i.bs = add i64 %i.br, 10                       ; 3 uses
  %i.bt = call noalias ptr @SDL_malloc_REAL(i64 noundef %i.bs) #3 ; 3 uses
  store ptr %i.bt, ptr %2, align 8
  %.not89.not = icmp eq ptr %i.bt, null           ; 2 uses
  br i1 %.not89.not, label %.thread, label %bb.w

.thread:                                          ; preds = %bb.v
  %i.bu = load ptr, ptr %1, align 8
  call void @SDL_free_REAL(ptr noundef %i.bu) #3
  store ptr null, ptr %1, align 8
  br label %4

bb.w:                                             ; preds = %bb.v
  %i.bv = call i64 @SDL_strlcpy_REAL(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.3, i64 noundef %i.bs) #3 ; 0 uses
  %i.bw = load ptr, ptr %2, align 8
  %i.bx = call i64 @SDL_strlcat_REAL(ptr noundef %i.bw, ptr noundef nonnull %i.bq, i64 noundef %i.bs) #3 ; 0 uses
  br label %4

4:                                                ; preds = %bb.w, %.thread
  br i1 %.not89.not, label %.critedge.a, label %.critedge

.critedge:                                        ; preds = %4, %bb.u
  br label %.critedge.a

.critedge.a:                                      ; preds = %._crit_edge, %bb.f, %4, %.critedge, %bb.t, %bb.a
  %.6 = phi i1 [ false, %bb.a ], [ false, %4 ], [ false, %bb.f ], [ false, %._crit_edge ], [ true, %.critedge ], [ true, %bb.t ]
  ret i1 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @SDL_getenv_REAL(ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_strdup_REAL(ptr noundef) local_unnamed_addr #2

declare i32 @SDL_unsetenv_unsafe_REAL(ptr noundef) local_unnamed_addr #2

declare ptr @Wayland_DisplayCreateQueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @SDL_GetStringProperty_REAL(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @SDL_strlen_REAL(ptr noundef) local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #2

declare i64 @SDL_strlcpy_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SDL_strlcat_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @handle_xdg_activation_done(ptr nofree noundef captures(none) initializes((8, 9)) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call noalias ptr @SDL_strdup_REAL(ptr noundef %2) #3
  %i.b = load ptr, ptr %0, align 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8
  %i.d = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.e = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.f = tail call i32 %i.e(ptr noundef %1) #3, !inline_history !13
  %i.g = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.d(ptr noundef %1, i32 noundef 4, ptr noundef null, i32 noundef %i.f, i32 noundef 1) #3, !inline_history !13 ; 0 uses
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{!9, !12}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{null}
end_hunk_0
