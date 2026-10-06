Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.timeval = type { i64, i64 }

@dt_masks_functions_path = local_unnamed_addr constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 36, [4 x i8] zeroinitializer, ptr @_path_sanitize_config, ptr @_path_setup_mouse_actions, ptr @_path_set_form_name, ptr @_path_set_hint_message, ptr @_path_modify_property, ptr @_path_duplicate_points, ptr @_path_initial_source_pos, ptr @_path_get_distance, ptr null, ptr @_path_get_points_border, ptr @_path_get_mask, ptr @_path_get_mask_roi, ptr @_path_get_area, ptr @_path_get_source_area, ptr @_path_events_mouse_moved, ptr @_path_events_mouse_scrolled, ptr @_path_events_button_pressed, ptr @_path_events_button_released, ptr @_path_events_post_expose }, align 8
@.str = private unnamed_addr constant [34 x i8] c"[PATH creation] add a smooth node\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"[PATH creation] add a sharp node\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[PATH creation] terminate path creation\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[PATH on node] switch between smooth/sharp node\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"[PATH on node] remove the node\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"[PATH on feather] reset curvature\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"[PATH on segment] add node\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"[PATH] change size\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"[PATH] change feather size\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"[PATH] change opacity\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"path #%d\00", align 1
@.str.11 = private unnamed_addr constant [85 x i8] c"<b>add node</b>: click, <b>add sharp node</b>: ctrl+click\0A<b>cancel</b>: right-click\00", align 1
@.str.12 = private unnamed_addr constant [90 x i8] c"<b>add node</b>: click, <b>add sharp node</b>: ctrl+click\0A<b>finish path</b>: right-click\00", align 1
@.str.13 = private unnamed_addr constant [100 x i8] c"<b>move node</b>: drag, <b>remove node</b>: right-click\0A<b>switch smooth/sharp mode</b>: ctrl+click\00", align 1
@.str.14 = private unnamed_addr constant [138 x i8] c"<b>node curvature</b>: drag, <b>force symmetry</b>: ctrl+drag,\0A<b>move single handle</b>: shift+drag, <b>reset curvature</b>: right-click\00", align 1
@.str.15 = private unnamed_addr constant [87 x i8] c"<b>move segment</b>: drag, <b>add node</b>: ctrl+click\0A<b>remove path</b>: right-click\00", align 1
@.str.16 = private unnamed_addr constant [90 x i8] c"<b>size</b>: scroll, <b>feather size</b>: shift+scroll\0A<b>opacity</b>: ctrl+scroll (%d%%)\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"path dpoints\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"path dborder\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"path intersections\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"path gap_fill_segs\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.21 = private unnamed_addr constant [44 x i8] c"[masks %s] path_points init took %0.04f sec\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"[masks %s] path_points point recurs %0.04f sec\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"[masks %s] path_points self-intersect took %0.04f sec\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"[masks %s] path_points end took %0.04f sec\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"[masks %s] path_points transform took %0.04f sec\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"[masks dynbuf '%s'] with initial size %lu (is %p)\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"critical: out of memory for dynbuf '%s' with size request %zu!\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"[masks dynbuf '%s'] grows to size %lu (is %p, was %p)\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"[masks dynbuf '%s'] freed (was %p)\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"[masks intbuf '%s'] with initial size %lu (is %p)\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"critical: out of memory for intbuf '%s' with size request %zu!\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"[masks intbuf '%s'] grows to size %lu (is %p, was %p)\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"[masks intbuf '%s'] freed (was %p)\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"path extra\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"[masks %s] path points took %0.04f sec\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"[masks %s] path_fill min max took %0.04f sec\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"[masks %s] path_fill draw path took %0.04f sec\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"[masks %s] path_fill fill plain took %0.04f sec\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"[masks %s] path_fill fill falloff took %0.04f sec\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"[masks %s] path fill buffer took %0.04f sec\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"[masks %s] path_fill clear mask took %0.04f sec\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"[masks %s] path_fill crop to roi took %0.04f sec\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"plugins/darkroom/spots/path_border\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"plugins/darkroom/masks/path/border\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"feather size: %3.2f%%\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"size: %3.2f%%\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"spots\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"retouch\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_update_bezier_ctrl_points(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not.not.not = icmp eq i32 %3, 1               ; 8 uses
  %. = select i1 %.not.not.not, i64 8, i64 16
  %.62 = select i1 %.not.not.not, i64 12, i64 20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.
  store float %1, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.62
  store float %2, ptr %i.b, align 4, !tbaa !12
  switch i32 %4, label %bb.i [
    i32 0, label %bb.b
    i32 3, label %bb.f
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !12 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.j = load float, ptr %i.f, align 4, !tbaa !12
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %7 ; 2 uses
  %i.l = load float, ptr %i.h, align 4, !tbaa !12
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %7 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.c, %7 ; 9 uses
  br i1 %.not.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fsub reassoc nsz arcp contract afn float %i.m, %i.n ; 2 uses
  %i.p = load float, ptr %i.i, align 4, !tbaa !12
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %i.e ; 2 uses
  %i.r = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.o, float noundef %i.q) #24
  %i.s = load float, ptr %i.g, align 4, !tbaa !12
  %i.t = fsub reassoc nsz arcp contract afn float %i.s, %i.e
  %i.u = fsub reassoc nsz arcp contract afn float %i.k, %i.n
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.t, float %i.u)
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.v) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.w = fmul reassoc nsz arcp contract afn float %i.r, %6 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %cos.i, %i.w
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.n
  %8 = fdiv reassoc nsz arcp contract afn float %i.y, %7 ; 2 uses
  store float %8, ptr %i.f, align 4, !tbaa !12
  %i.z = fmul reassoc nsz arcp contract afn float %sin.i, %i.w ; 2 uses
  %9 = fadd reassoc nsz arcp contract afn float %i.z, %i.e
  store float %9, ptr %i.g, align 4, !tbaa !12
  %10 = fmul reassoc nsz arcp contract afn float %8, %7
  %i.aa = fsub reassoc nsz arcp contract afn float %10, %i.n
  %i.ab = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aa, float noundef %i.z) #24
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.q, float %i.o)
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %5
  br label %_set_ctrl_angle.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = fsub reassoc nsz arcp contract afn float %i.k, %i.n ; 2 uses
  %i.af = load float, ptr %i.g, align 4, !tbaa !12
  %i.ag = fsub reassoc nsz arcp contract afn float %i.af, %i.e ; 2 uses
  %i.ah = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ae, float noundef %i.ag) #24
  %i.ai = load float, ptr %i.i, align 4, !tbaa !12
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.e
  %i.ak = fsub reassoc nsz arcp contract afn float %i.m, %i.n
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aj, float %i.ak)
  %sincos44.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.al) ; 2 uses
  %sin45.i = extractvalue { float, float } %sincos44.i, 0
  %cos46.i = extractvalue { float, float } %sincos44.i, 1
  %i.am = fdiv reassoc nsz arcp contract afn float %i.ah, %6 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %cos46.i, %i.am
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.n
  %11 = fdiv reassoc nsz arcp contract afn float %i.ao, %7 ; 2 uses
  store float %11, ptr %i.h, align 4, !tbaa !12
  %i.ap = fmul reassoc nsz arcp contract afn float %sin45.i, %i.am ; 2 uses
  %12 = fadd reassoc nsz arcp contract afn float %i.ap, %i.e
  store float %12, ptr %i.i, align 4, !tbaa !12
  %13 = fmul reassoc nsz arcp contract afn float %11, %7
  %i.aq = fsub reassoc nsz arcp contract afn float %13, %i.n
  %i.ar = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aq, float noundef %i.ap) #24
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ag, float %i.ae)
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %5
  br label %_set_ctrl_angle.exit

_set_ctrl_angle.exit:                             ; preds = %bb.c, %bb.d
  %.sink55.i = phi float [ %i.at, %bb.d ], [ %i.ad, %bb.c ]
  %.sink53.i = phi float [ %i.ar, %bb.d ], [ %i.ab, %bb.c ] ; 2 uses
  %.sink50.i = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.c ]
  %.sink47.i44 = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  %sincos44.i45 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.sink55.i) ; 2 uses
  %sin45.i46 = extractvalue { float, float } %sincos44.i45, 0
  %cos46.i47 = extractvalue { float, float } %sincos44.i45, 1
  %i.au = fmul reassoc nsz arcp contract afn float %cos46.i47, %.sink53.i
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.n
  %i.aw = fdiv reassoc nsz arcp contract afn float %i.av, %7
  store float %i.aw, ptr %.sink50.i, align 4, !tbaa !12
  %i.ax = fmul reassoc nsz arcp contract afn float %sin45.i46, %.sink53.i
  %i.ay = fadd reassoc nsz arcp contract afn float %i.ax, %i.e
  store float %i.ay, ptr %.sink47.i44, align 4, !tbaa !12
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.az = load float, ptr %0, align 4, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %factor19.i = fmul reassoc nsz arcp contract afn float %i.az, 2.000000e+00
  %factor21.i = fmul reassoc nsz arcp contract afn float %i.bb, 2.000000e+00
  %..i = select i1 %.not.not.not, ptr %i.bc, ptr %i.be
  %.28.i = select i1 %.not.not.not, ptr %i.be, ptr %i.bc
  %.29.i = select i1 %.not.not.not, ptr %i.bd, ptr %i.bf
  %.30.i = select i1 %.not.not.not, ptr %i.bf, ptr %i.bd
  %i.bg = load float, ptr %..i, align 4, !tbaa !12
  %i.bh = fsub reassoc nsz arcp contract afn float %factor19.i, %i.bg
  store float %i.bh, ptr %.28.i, align 4, !tbaa !12
  %i.bi = load float, ptr %.29.i, align 4, !tbaa !12
  %i.bj = fsub reassoc nsz arcp contract afn float %factor21.i, %i.bi
  store float %i.bj, ptr %.30.i, align 4, !tbaa !12
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.bk = load float, ptr %0, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.br = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %7 ; 2 uses
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !12
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %7 ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bk, %7 ; 5 uses
  br i1 %.not.not.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bs, %i.bv
  %i.bx = load float, ptr %i.bo, align 4, !tbaa !12
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %i.bm
  %i.bz = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.bw, float noundef %i.by) #24
  %i.ca = load float, ptr %i.bq, align 4, !tbaa !12
  %i.cb = fsub reassoc nsz arcp contract afn float %i.ca, %i.bm
  %i.cc = fsub reassoc nsz arcp contract afn float %i.bu, %i.bv
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.cb, float %i.cc)
  %i.ce = fsub reassoc nsz arcp contract afn float %i.cd, %5
  br label %_set_ctrl_angle.exit57

bb.h:                                             ; preds = %bb.f
  %i.cf = fsub reassoc nsz arcp contract afn float %i.bu, %i.bv
  %i.cg = load float, ptr %i.bq, align 4, !tbaa !12
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cg, %i.bm
  %i.ci = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.cf, float noundef %i.ch) #24
  %i.cj = load float, ptr %i.bo, align 4, !tbaa !12
  %i.ck = fsub reassoc nsz arcp contract afn float %i.cj, %i.bm
  %i.cl = fsub reassoc nsz arcp contract afn float %i.bs, %i.bv
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ck, float %i.cl)
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, %5
  br label %_set_ctrl_angle.exit57

_set_ctrl_angle.exit57:                           ; preds = %bb.g, %bb.h
  %.sink55.i50 = phi float [ %i.cn, %bb.h ], [ %i.ce, %bb.g ]
  %.sink53.i51 = phi float [ %i.ci, %bb.h ], [ %i.bz, %bb.g ] ; 2 uses
  %.sink50.i52 = phi ptr [ %i.bp, %bb.h ], [ %i.bn, %bb.g ]
  %.sink47.i53 = phi ptr [ %i.bq, %bb.h ], [ %i.bo, %bb.g ]
  %sincos44.i54 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.sink55.i50) ; 2 uses
  %sin45.i55 = extractvalue { float, float } %sincos44.i54, 0
  %cos46.i56 = extractvalue { float, float } %sincos44.i54, 1
  %i.co = fmul reassoc nsz arcp contract afn float %cos46.i56, %.sink53.i51
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, %i.bv
  %i.cq = fdiv reassoc nsz arcp contract afn float %i.cp, %7
  store float %i.cq, ptr %.sink50.i52, align 4, !tbaa !12
  %i.cr = fmul reassoc nsz arcp contract afn float %sin45.i55, %.sink53.i51
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.bm
  store float %i.cs, ptr %.sink47.i53, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_set_ctrl_angle.exit57, %bb.e, %_set_ctrl_angle.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_path_sanitize_config(i32 %0) #2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @_path_setup_mouse_actions(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #25
  %i.b = tail call ptr @dt_mouse_action_create_simple(ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %i.a) #25
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #25
  %i.d = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.b, i32 noundef 0, i32 noundef 4, ptr noundef %i.c) #25
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #25
  %i.f = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.d, i32 noundef 1, i32 noundef 0, ptr noundef %i.e) #25
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #25
  %i.h = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.f, i32 noundef 0, i32 noundef 4, ptr noundef %i.g) #25
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #25
  %i.j = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.h, i32 noundef 1, i32 noundef 0, ptr noundef %i.i) #25
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #25
  %i.l = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.j, i32 noundef 1, i32 noundef 0, ptr noundef %i.k) #25
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #25
  %i.n = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.l, i32 noundef 0, i32 noundef 4, ptr noundef %i.m) #25
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #25
  %i.p = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.n, i32 noundef 3, i32 noundef 0, ptr noundef %i.o) #25
  %i.q = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #25
  %i.r = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.p, i32 noundef 3, i32 noundef 1, ptr noundef %i.q) #25
  %i.s = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #25
  %i.t = tail call ptr @dt_mouse_action_create_simple(ptr noundef %i.r, i32 noundef 3, i32 noundef 4, ptr noundef %i.s) #25
  ret ptr %i.t
}

; Function Attrs: nounwind uwtable
define internal void @_path_set_form_name(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #25
  %i.c = trunc i64 %1 to i32
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef %i.b, i32 noundef %i.c) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_path_set_hint_message(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noalias noundef %3, i64 noundef %4) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !22
  %i.d = tail call i32 @g_list_length(ptr noundef %i.c) #25
  %i.e = icmp ult i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #25
  %i.g = tail call i64 @g_strlcat(ptr noundef %3, ptr noundef %i.f, i64 noundef %4) #25 ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %.pr = load i32, ptr %i.a, align 4, !tbaa !19
  %.not19 = icmp eq i32 %.pr, 0
  br i1 %.not19, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #25
  %i.i = tail call i64 @g_strlcat(ptr noundef %3, ptr noundef %i.h, i64 noundef %4) #25 ; 0 uses
  br label %bb.m

.thread:                                          ; preds = %bb.a, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #25
  %i.n = tail call i64 @g_strlcat(ptr noundef %3, ptr noundef %i.m, i64 noundef %4) #25 ; 0 uses
  br label %bb.m

bb.g:                                             ; preds = %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !24
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #25
end_hunk_0
