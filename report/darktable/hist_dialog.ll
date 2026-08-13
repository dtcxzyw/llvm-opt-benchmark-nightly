inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0
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
%struct._GtkTreeIter = type { i32, ptr, ptr, ptr }
%struct._GdkRGBA = type { double, double, double, double }

@.str = private unnamed_addr constant [9 x i8] c"response\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"select parts to copy\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"select _all\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"select _none\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"_cancel\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"_ok\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"select parts to paste\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"_overwrite\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"appen_d\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"copy_history\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/darktable/darktable/src/gui/hist_dialog.c\00", align 1
@__FUNCTION__.dt_gui_hist_dialog_new = private unnamed_addr constant [23 x i8] c"dt_gui_hist_dialog_new\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pixbuf\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"xalign\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"markup\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"module order\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"can't copy history out of unaltered image\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1

; Function Attrs: nounwind uwtable
define void @tree_on_row_activated(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct._GtkTreeIter, align 8       ; 7 uses
  %i.a = tail call ptr @gtk_tree_view_get_model(ptr noundef %0) #8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.b = call i32 @gtk_tree_model_get_iter_first(ptr noundef %i.a, ptr noundef nonnull %4) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  call void (ptr, ptr, ...) @gtk_list_store_set(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #8
  %i.c = call i32 @gtk_tree_model_iter_next(ptr noundef %i.a, ptr noundef nonnull %4) #8
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.d = call i32 @gtk_tree_model_get_iter(ptr noundef %i.a, ptr noundef nonnull %4, ptr noundef %1) #8
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.loopexit
  call void (ptr, ptr, ...) @gtk_list_store_set(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, i32 noundef -1) #8
  call void (ptr, ptr, ...) @g_signal_emit_by_name(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef -5, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @gtk_tree_view_get_model(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_tree_model_get_iter_first(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_list_store_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @gtk_tree_model_iter_next(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gtk_tree_model_get_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_signal_emit_by_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -10, -3) i32 @dt_gui_hist_dialog_new(ptr noundef initializes((8, 16)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._GdkRGBA, align 8           ; 4 uses
  %4 = alloca %struct._GdkRGBA, align 8           ; 4 uses
  %5 = alloca %struct._GdkRGBA, align 8           ; 4 uses
  %i.a = alloca [2 x ptr], align 8                ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !11
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = tail call ptr @dt_ui_main_window(ptr noundef %i.c) #8 ; 2 uses
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #8
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #8
  %i.g = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #8
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #8
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #8
  %i.j = tail call ptr (ptr, ptr, i32, ptr, ...) @gtk_dialog_new_with_buttons(ptr noundef %i.e, ptr noundef %i.d, i32 noundef 3, ptr noundef %i.f, i32 noundef -8, ptr noundef %i.g, i32 noundef -1, ptr noundef %i.h, i32 noundef -6, ptr noundef %i.i, i32 noundef -5, ptr noundef null) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #8
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #8
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #8
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #8
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #8
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #8
  %i.q = tail call ptr (ptr, ptr, i32, ptr, ...) @gtk_dialog_new_with_buttons(ptr noundef %i.k, ptr noundef %i.d, i32 noundef 3, ptr noundef %i.l, i32 noundef -8, ptr noundef %i.m, i32 noundef -1, ptr noundef %i.n, i32 noundef -6, ptr noundef %i.o, i32 noundef -10, ptr noundef %i.p, i32 noundef -5, ptr noundef null) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.095 = phi ptr [ %i.j, %bb.b ], [ %i.q, %bb.c ] ; 14 uses
  tail call void @dt_gui_dialog_add_help(ptr noundef %.095, ptr noundef nonnull @.str.9) #8
  tail call void @dt_gui_dialog_restore_size(ptr noundef %.095, ptr noundef nonnull @.str.9) #8
  %i.r = tail call ptr @gtk_tree_view_new() #8    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = tail call ptr @gtk_scrolled_window_new(ptr noundef null, ptr noundef null) #8 ; 4 uses
  tail call void @gtk_widget_set_vexpand(ptr noundef %i.t, i32 noundef 1) #8
  tail call void @gtk_container_add(ptr noundef %i.t, ptr noundef %i.r) #8
  tail call void @gtk_scrolled_window_set_policy(ptr noundef %i.t, i32 noundef 2, i32 noundef 1) #8
  %i.u = tail call ptr @gtk_dialog_get_content_area(ptr noundef %.095) #8
  store ptr %i.t, ptr %i.a, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.v, align 8, !tbaa !67
  %i.w = call ptr @dt_gui_box_add(ptr noundef nonnull @.str.10, i32 noundef 266, ptr noundef nonnull @__FUNCTION__.dt_gui_hist_dialog_new, ptr noundef %i.u, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.x = tail call i64 @gdk_pixbuf_get_type() #9  ; 2 uses
  %i.y = call ptr (i32, ...) @gtk_list_store_new(i32 noundef 6, i64 noundef 20, i64 noundef %i.x, i64 noundef 20, i64 noundef 64, i64 noundef %i.x, i64 noundef 28) #8 ; 5 uses
  %i.z = call ptr @gtk_cell_renderer_toggle_new() #8 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.z, i32 noundef 1) #8
  call void @g_object_set_data(ptr noundef %i.z, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %i.aa = call i64 @g_signal_connect_data(ptr noundef %i.z, ptr noundef nonnull @.str.12, ptr noundef nonnull @_gui_hist_item_toggled, ptr noundef %0, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ac = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #8
  %i.ad = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.ab, i32 noundef -1, ptr noundef %i.ac, ptr noundef %i.z, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null) #8 ; 0 uses
  %i.ae = call ptr @gtk_cell_renderer_toggle_new() #8 ; 4 uses
  call void @gtk_cell_renderer_toggle_set_activatable(ptr noundef %i.ae, i32 noundef 1) #8
  call void @g_object_set_data(ptr noundef %i.ae, ptr noundef nonnull @.str.11, ptr noundef nonnull inttoptr (i64 2 to ptr)) #8
  %i.af = call i64 @g_signal_connect_data(ptr noundef %i.ae, ptr noundef nonnull @.str.12, ptr noundef nonnull @_gui_hist_item_toggled, ptr noundef %0, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ah = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #8
  %i.ai = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.ag, i32 noundef -1, ptr noundef %i.ah, ptr noundef %i.ae, ptr noundef nonnull @.str.14, i32 noundef 2, ptr noundef null) #8 ; 0 uses
  %i.aj = call ptr @gtk_cell_renderer_pixbuf_new() #8
  %i.ak = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef nonnull @.str.16, ptr noundef %i.aj, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef null) #8 ; 4 uses
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.am = call i32 @gtk_tree_view_append_column(ptr noundef %i.al, ptr noundef %i.ak) #8 ; 0 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.ak, float noundef 5.000000e-01) #8
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.ak, i32 noundef 0) #8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1432
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !68
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, 3.000000e+01
  %i.ar = fptosi double %i.aq to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.ak, i32 noundef %i.ar) #8
  %i.as = call ptr @gtk_cell_renderer_text_new() #8 ; 3 uses
  call void @g_object_set_data(ptr noundef %i.as, ptr noundef nonnull @.str.11, ptr noundef nonnull inttoptr (i64 3 to ptr)) #8
  call void (ptr, ptr, ...) @g_object_set(ptr noundef %i.as, ptr noundef nonnull @.str.18, double noundef 0.000000e+00, ptr noundef null) #8
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.au = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #8
  %i.av = call i32 (ptr, i32, ptr, ptr, ...) @gtk_tree_view_insert_column_with_attributes(ptr noundef %i.at, i32 noundef -1, ptr noundef %i.au, ptr noundef %i.as, ptr noundef nonnull @.str.20, i32 noundef 3, ptr noundef null) #8 ; 0 uses
  %i.aw = call ptr @gtk_cell_renderer_pixbuf_new() #8
  %i.ax = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #8
  %i.ay = call ptr (ptr, ptr, ...) @gtk_tree_view_column_new_with_attributes(ptr noundef %i.ax, ptr noundef %i.aw, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef null) #8 ; 4 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ba = call i32 @gtk_tree_view_append_column(ptr noundef %i.az, ptr noundef %i.ay) #8 ; 0 uses
  call void @gtk_tree_view_column_set_alignment(ptr noundef %i.ay, float noundef 5.000000e-01) #8
  call void @gtk_tree_view_column_set_clickable(ptr noundef %i.ay, i32 noundef 0) #8
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1432
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !68
  %i.be = fmul reassoc nsz arcp contract afn double %i.bd, 3.000000e+01
  %i.bf = fptosi double %i.be to i32
  call void @gtk_tree_view_column_set_min_width(ptr noundef %i.ay, i32 noundef %i.bf) #8
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.bh = call ptr @gtk_tree_view_get_selection(ptr noundef %i.bg) #8
  call void @gtk_tree_selection_set_mode(ptr noundef %i.bh, i32 noundef 1) #8
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !64
  call void @gtk_tree_view_set_model(ptr noundef %i.bi, ptr noundef %i.y) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.bj = call ptr @gtk_widget_get_style_context(ptr noundef %.095) #8
  %i.bk = call i32 @gtk_widget_get_state_flags(ptr noundef %.095) #8
  call void @gtk_style_context_get_color(ptr noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull %5) #8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1432
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !68
  %i.bo = fmul reassoc nsz arcp contract afn double %i.bn, 1.000000e+01
  %i.bp = fptosi double %i.bo to i32              ; 10 uses
  %i.bq = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bp, i32 noundef %i.bp) #8 ; 3 uses
  %i.br = call ptr @cairo_create(ptr noundef %i.bq) #8 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.br, ptr noundef nonnull %5) #8
  call void @dtgtk_cairo_paint_switch(ptr noundef %i.br, i32 noundef 0, i32 noundef 0, i32 noundef %i.bp, i32 noundef %i.bp, i32 noundef 0, ptr noundef null) #8, !callees !69, !inline_history !70
  call void @cairo_destroy(ptr noundef %i.br) #8
  %i.bs = call ptr @cairo_image_surface_get_data(ptr noundef %i.bq) #8 ; 5 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %dt_draw_paint_to_pixbuf.exit, label %.preheader.i.i.a

.preheader.i.i.a:                                 ; preds = %bb.d
  %6 = zext i32 %i.bp to i64                      ; 2 uses
  %flatten.tripcount.i.i = mul nuw i64 %6, %6
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i.a
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i.a ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.bt = trunc i64 %indvars.iv.i.i to i32
  %i.bu = shl i32 %i.bt, 2                        ; 4 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv ; 3 uses
  %i.bx = or disjoint i32 %i.bu, 2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by ; 3 uses
  %i.ca = or disjoint i32 %i.bu, 3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cb
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !71  ; 2 uses
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !71  ; 2 uses
  store i8 %i.ce, ptr %i.bw, align 1, !tbaa !71
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !71
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !71  ; 2 uses
  %.not.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = or disjoint i32 %i.bu, 1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ch ; 2 uses
  %i.cj = uitofp i8 %i.cf to float
  %i.ck = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.cj ; 3 uses
  %i.cl = uitofp reassoc nsz arcp contract afn i8 %i.ce to float
  %i.cm = fmul reassoc nsz arcp contract afn float %i.ck, %i.cl
  %i.cn = fptoui float %i.cm to i8
  store i8 %i.cn, ptr %i.bw, align 1, !tbaa !71
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !71
  %i.cp = uitofp reassoc nsz arcp contract afn i8 %i.co to float
  %i.cq = fmul reassoc nsz arcp contract afn float %i.ck, %i.cp
  %i.cr = fptoui float %i.cq to i8
  store i8 %i.cr, ptr %i.ci, align 1, !tbaa !71
  %i.cs = uitofp reassoc nsz arcp contract afn i8 %i.cd to float
  %i.ct = fmul reassoc nsz arcp contract afn float %i.ck, %i.cs
  %i.cu = fptoui float %i.ct to i8
  store i8 %i.cu, ptr %i.bz, align 1, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.i = add nuw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %flatten.tripcount.i.i
  br i1 %exitcond.not.i.i, label %dt_draw_paint_to_pixbuf.exit, label %bb.e

dt_draw_paint_to_pixbuf.exit:                     ; preds = %bb.g, %bb.d
  %i.cv = sext i32 %i.bp to i64                   ; 2 uses
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = mul i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = call noalias ptr @malloc(i64 noundef %i.cx) #10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr align 1 %i.bs, i64 %i.cx, i1 false)
  %i.cz = shl nsw i32 %i.bp, 2
  %i.da = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.cy, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.bp, i32 noundef %i.bp, i32 noundef %i.cz, ptr noundef nonnull @free, ptr noundef null) #8 ; 4 uses
  call void @cairo_surface_destroy(ptr noundef %i.bq) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.db = call ptr @gtk_widget_get_style_context(ptr noundef %.095) #8
  %i.dc = call i32 @gtk_widget_get_state_flags(ptr noundef %.095) #8
  call void @gtk_style_context_get_color(ptr noundef %i.db, i32 noundef %i.dc, ptr noundef nonnull %4) #8
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1432
  %i.df = load double, ptr %i.de, align 8, !tbaa !68
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, 1.000000e+01
  %i.dh = fptosi double %i.dg to i32              ; 10 uses
  %i.di = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.dh, i32 noundef %i.dh) #8 ; 3 uses
  %i.dj = call ptr @cairo_create(ptr noundef %i.di) #8 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.dj, ptr noundef nonnull %4) #8
  call void @dtgtk_cairo_paint_switch_inactive(ptr noundef %i.dj, i32 noundef 0, i32 noundef 0, i32 noundef %i.dh, i32 noundef %i.dh, i32 noundef 0, ptr noundef null) #8, !callees !69, !inline_history !70
  call void @cairo_destroy(ptr noundef %i.dj) #8
  %i.dk = call ptr @cairo_image_surface_get_data(ptr noundef %i.di) #8 ; 5 uses
  %.not.i104 = icmp eq i32 %i.dh, 0
  br i1 %.not.i104, label %dt_draw_paint_to_pixbuf.exit115, label %.preheader.i.i107.a

.preheader.i.i107.a:                              ; preds = %dt_draw_paint_to_pixbuf.exit
  %7 = zext i32 %i.dh to i64                      ; 2 uses
  %flatten.tripcount.i.i106 = mul nuw i64 %7, %7
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.preheader.i.i107.a
  %indvars.iv.i.i109 = phi i64 [ 0, %.preheader.i.i107.a ], [ %indvars.iv.next.i.i111, %bb.j ] ; 2 uses
  %i.dl = trunc i64 %indvars.iv.i.i109 to i32
  %i.dm = shl i32 %i.dl, 2                        ; 4 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn ; 3 uses
  %i.dp = or disjoint i32 %i.dm, 2
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dq ; 3 uses
  %i.ds = or disjoint i32 %i.dm, 3
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dt
  %i.dv = load i8, ptr %i.do, align 1, !tbaa !71  ; 2 uses
  %i.dw = load i8, ptr %i.dr, align 1, !tbaa !71  ; 2 uses
  store i8 %i.dw, ptr %i.do, align 1, !tbaa !71
  store i8 %i.dv, ptr %i.dr, align 1, !tbaa !71
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !71  ; 2 uses
  %.not.i.i110 = icmp eq i8 %i.dx, 0
  br i1 %.not.i.i110, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dy = or disjoint i32 %i.dm, 1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dz ; 2 uses
  %i.eb = uitofp i8 %i.dx to float
  %i.ec = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.eb ; 3 uses
  %i.ed = uitofp reassoc nsz arcp contract afn i8 %i.dw to float
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ec, %i.ed
  %i.ef = fptoui float %i.ee to i8
  store i8 %i.ef, ptr %i.do, align 1, !tbaa !71
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !71
  %i.eh = uitofp reassoc nsz arcp contract afn i8 %i.eg to float
  %i.ei = fmul reassoc nsz arcp contract afn float %i.ec, %i.eh
  %i.ej = fptoui float %i.ei to i8
  store i8 %i.ej, ptr %i.ea, align 1, !tbaa !71
  %i.ek = uitofp reassoc nsz arcp contract afn i8 %i.dv to float
  %i.el = fmul reassoc nsz arcp contract afn float %i.ec, %i.ek
  %i.em = fptoui float %i.el to i8
  store i8 %i.em, ptr %i.dr, align 1, !tbaa !71
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.i.i111 = add nuw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %exitcond.not.i.i112 = icmp eq i64 %indvars.iv.next.i.i111, %flatten.tripcount.i.i106
  br i1 %exitcond.not.i.i112, label %dt_draw_paint_to_pixbuf.exit115, label %bb.h

dt_draw_paint_to_pixbuf.exit115:                  ; preds = %bb.j, %dt_draw_paint_to_pixbuf.exit
  %i.en = sext i32 %i.dh to i64                   ; 2 uses
  %i.eo = shl nsw i64 %i.en, 2
  %i.ep = mul i64 %i.eo, %i.en                    ; 2 uses
  %i.eq = call noalias ptr @malloc(i64 noundef %i.ep) #10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.dk, i64 %i.ep, i1 false)
  %i.er = shl nsw i32 %i.dh, 2
  %i.es = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.eq, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.dh, i32 noundef %i.dh, i32 noundef %i.er, ptr noundef nonnull @free, ptr noundef null) #8 ; 3 uses
  call void @cairo_surface_destroy(ptr noundef %i.di) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.et = call ptr @gtk_widget_get_style_context(ptr noundef %.095) #8
  %i.eu = call i32 @gtk_widget_get_state_flags(ptr noundef %.095) #8
  call void @gtk_style_context_get_color(ptr noundef %i.et, i32 noundef %i.eu, ptr noundef nonnull %3) #8
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1432
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !68
  %i.ey = fmul reassoc nsz arcp contract afn double %i.ex, 1.000000e+01
  %i.ez = fptosi double %i.ey to i32              ; 10 uses
  %i.fa = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.ez, i32 noundef %i.ez) #8 ; 3 uses
  %i.fb = call ptr @cairo_create(ptr noundef %i.fa) #8 ; 3 uses
  call void @gdk_cairo_set_source_rgba(ptr noundef %i.fb, ptr noundef nonnull %3) #8
  call void @dtgtk_cairo_paint_showmask(ptr noundef %i.fb, i32 noundef 0, i32 noundef 0, i32 noundef %i.ez, i32 noundef %i.ez, i32 noundef 0, ptr noundef null) #8, !callees !69, !inline_history !70
  call void @cairo_destroy(ptr noundef %i.fb) #8
  %i.fc = call ptr @cairo_image_surface_get_data(ptr noundef %i.fa) #8 ; 5 uses
  %.not.i116 = icmp eq i32 %i.ez, 0
  br i1 %.not.i116, label %dt_draw_paint_to_pixbuf.exit127, label %.preheader.i.i119

.preheader.i.i119:                                ; preds = %dt_draw_paint_to_pixbuf.exit115
  %8 = zext i32 %i.ez to i64                      ; 2 uses
  %flatten.tripcount.i.i117 = mul nuw i64 %8, %8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader.i.i119
  %indvars.iv.i.i121 = phi i64 [ 0, %.preheader.i.i119 ], [ %indvars.iv.next.i.i123, %bb.m ] ; 2 uses
  %i.fd = trunc i64 %indvars.iv.i.i121 to i32
  %i.fe = shl i32 %i.fd, 2                        ; 4 uses
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff ; 3 uses
  %i.fh = or disjoint i32 %i.fe, 2
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fi ; 3 uses
  %i.fk = or disjoint i32 %i.fe, 3
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fl
  %i.fn = load i8, ptr %i.fg, align 1, !tbaa !71  ; 2 uses
  %i.fo = load i8, ptr %i.fj, align 1, !tbaa !71  ; 2 uses
  store i8 %i.fo, ptr %i.fg, align 1, !tbaa !71
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !71
  %i.fp = load i8, ptr %i.fm, align 1, !tbaa !71  ; 2 uses
  %.not.i.i122 = icmp eq i8 %i.fp, 0
  br i1 %.not.i.i122, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fq = or disjoint i32 %i.fe, 1
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fr ; 2 uses
  %i.ft = uitofp i8 %i.fp to float
  %i.fu = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.ft ; 3 uses
  %i.fv = uitofp reassoc nsz arcp contract afn i8 %i.fo to float
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.fx = fptoui float %i.fw to i8
  store i8 %i.fx, ptr %i.fg, align 1, !tbaa !71
  %i.fy = load i8, ptr %i.fs, align 1, !tbaa !71
  %i.fz = uitofp reassoc nsz arcp contract afn i8 %i.fy to float
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fu, %i.fz
  %i.gb = fptoui float %i.ga to i8
  store i8 %i.gb, ptr %i.fs, align 1, !tbaa !71
  %i.gc = uitofp reassoc nsz arcp contract afn i8 %i.fn to float
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fu, %i.gc
  %i.ge = fptoui float %i.gd to i8
  store i8 %i.ge, ptr %i.fj, align 1, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i.i123 = add nuw i64 %indvars.iv.i.i121, 1 ; 2 uses
  %exitcond.not.i.i124 = icmp eq i64 %indvars.iv.next.i.i123, %flatten.tripcount.i.i117
  br i1 %exitcond.not.i.i124, label %dt_draw_paint_to_pixbuf.exit127, label %bb.k

dt_draw_paint_to_pixbuf.exit127:                  ; preds = %bb.m, %dt_draw_paint_to_pixbuf.exit115
  %i.gf = sext i32 %i.ez to i64                   ; 2 uses
  %i.gg = shl nsw i64 %i.gf, 2
  %i.gh = mul i64 %i.gg, %i.gf                    ; 2 uses
  %i.gi = call noalias ptr @malloc(i64 noundef %i.gh) #10 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.fc, i64 %i.gh, i1 false)
  %i.gj = shl nsw i32 %i.ez, 2
  %i.gk = call ptr @gdk_pixbuf_new_from_data(ptr noundef %i.gi, i32 noundef 0, i32 noundef 1, i32 noundef 8, i32 noundef %i.ez, i32 noundef %i.ez, i32 noundef %i.gj, ptr noundef nonnull @free, ptr noundef null) #8 ; 3 uses
  call void @cairo_surface_destroy(ptr noundef %i.fa) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.gl = call ptr @dt_history_get_items(i32 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1) #8 ; 4 uses
  %.not98 = icmp eq ptr %i.gl, null
  br i1 %.not98, label %bb.t, label %.preheader

.preheader:                                       ; preds = %dt_draw_paint_to_pixbuf.exit127
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.p
  %.096129.us = phi ptr [ %i.hi, %bb.p ], [ %i.gl, %.preheader ] ; 2 uses
  %i.gm = load ptr, ptr %.096129.us, align 8, !tbaa !72 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !74
  %i.gp = call i32 @dt_iop_get_module_flags(ptr noundef %i.go) #8
  %i.gq = and i32 %i.gp, 32
  %.not101.us = icmp eq i32 %i.gq, 0
  br i1 %.not101.us, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.preheader.split.us
  %i.gr = load ptr, ptr %0, align 8, !tbaa !76    ; 2 uses
  %i.gs = load i32, ptr %i.gm, align 8, !tbaa !77 ; 2 uses
  %.not.i128.us = icmp eq ptr %i.gr, null
  br i1 %.not.i128.us, label %_gui_is_set.exit.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.n, %bb.o
  %.01321.i.us = phi ptr [ %i.gx, %bb.o ], [ %i.gr, %bb.n ] ; 2 uses
  %i.gt = load ptr, ptr %.01321.i.us, align 8, !tbaa !72 ; 2 uses
  %.not17.i.us = icmp ne ptr %i.gt, null
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = trunc i64 %i.gu to i32
  %.not18.i.us = icmp eq i32 %i.gs, %i.gv
  %or.cond.i.us = and i1 %.not17.i.us, %.not18.i.us
  br i1 %or.cond.i.us, label %_gui_is_set.exit.us, label %bb.o

bb.o:                                             ; preds = %.preheader.i.us
  %i.gw = getelementptr inbounds nuw i8, ptr %.01321.i.us, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !78 ; 2 uses
  %.not16.i.us = icmp eq ptr %i.gx, null
  br i1 %.not16.i.us, label %_gui_is_set.exit.us, label %.preheader.i.us

_gui_is_set.exit.us:                              ; preds = %.preheader.i.us, %bb.o, %bb.n
  %i.gy = phi i32 [ 1, %bb.n ], [ 1, %.preheader.i.us ], [ 0, %bb.o ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !79
  %.not102.us = icmp eq i32 %i.ha, 0
  %i.hb = select i1 %.not102.us, ptr %i.es, ptr %i.da
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !80
  %i.he = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !81
  %.not103.us = icmp eq i32 %i.hf, 0
  %i.hg = select i1 %.not103.us, ptr null, ptr %i.gk
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.y, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef %i.gy, i32 noundef 2, i32 noundef 0, i32 noundef 1, ptr noundef %i.hb, i32 noundef 3, ptr noundef %i.hd, i32 noundef 4, ptr noundef %i.hg, i32 noundef 5, i32 noundef %i.gs, i32 noundef -1) #8
  br label %bb.p

bb.p:                                             ; preds = %_gui_is_set.exit.us, %.preheader.split.us
  %i.hh = getelementptr inbounds nuw i8, ptr %.096129.us, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !78 ; 2 uses
  %.not99.us = icmp eq ptr %i.hi, null
  br i1 %.not99.us, label %.split.us, label %.preheader.split.us

.split.us:                                        ; preds = %bb.q, %bb.p
  call void @g_list_free_full(ptr noundef nonnull %i.gl, ptr noundef nonnull @dt_history_item_free) #8
  br i1 %.not, label %bb.r, label %bb.s

.preheader.split:                                 ; preds = %.preheader, %bb.q
  %.096129 = phi ptr [ %i.hy, %bb.q ], [ %i.gl, %.preheader ] ; 2 uses
  %i.hj = load ptr, ptr %.096129, align 8, !tbaa !72 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !74
  %i.hm = call i32 @dt_iop_get_module_flags(ptr noundef %i.hl) #8
  %i.hn = and i32 %i.hm, 32
  %.not101 = icmp eq i32 %i.hn, 0
  br i1 %.not101, label %_gui_is_set.exit, label %bb.q

_gui_is_set.exit:                                 ; preds = %.preheader.split
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !79
  %.not102 = icmp eq i32 %i.hp, 0
  %i.hq = select i1 %.not102, ptr %i.es, ptr %i.da
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !80
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 28
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !81
  %.not103 = icmp eq i32 %i.hu, 0
  %i.hv = select i1 %.not103, ptr null, ptr %i.gk
  %i.hw = load i32, ptr %i.hj, align 8, !tbaa !77
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.y, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 1, ptr noundef %i.hq, i32 noundef 3, ptr noundef %i.hs, i32 noundef 4, ptr noundef %i.hv, i32 noundef 5, i32 noundef %i.hw, i32 noundef -1) #8
  br label %bb.q

bb.q:                                             ; preds = %_gui_is_set.exit, %.preheader.split
  %i.hx = getelementptr inbounds nuw i8, ptr %.096129, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !78 ; 2 uses
  %.not99 = icmp eq ptr %i.hy, null
  br i1 %.not99, label %.split.us, label %.preheader.split

bb.r:                                             ; preds = %.split.us
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !82
  %.not100 = icmp eq i32 %i.ia, 0
  br i1 %.not100, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.us
  %i.ib = call i32 @dt_ioppr_get_iop_order_version(i32 noundef %1) #8
  %i.ic = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #8
  %i.id = call ptr @dt_iop_order_string(i32 noundef %i.ib) #8
  %i.ie = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.22, ptr noundef %i.ic, ptr noundef %i.id) #8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !82
  call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.y, ptr noundef null, i32 noundef -1, i32 noundef 0, i32 noundef %i.ig, i32 noundef 1, ptr noundef %i.da, i32 noundef 3, ptr noundef %i.ie, i32 noundef 5, i32 noundef -1, i32 noundef -1) #8
  call void @g_free(ptr noundef %i.ie) #8
  br label %bb.u

bb.t:                                             ; preds = %dt_draw_paint_to_pixbuf.exit127
  %i.ih = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #8
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ih) #8
  br label %bb.x

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ii = load ptr, ptr %i.s, align 8, !tbaa !64
  %i.ij = call i64 @g_signal_connect_data(ptr noundef %i.ii, ptr noundef nonnull @.str.25, ptr noundef nonnull @tree_on_row_activated, ptr noundef %.095, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  call void @g_object_unref(ptr noundef %i.y) #8
  %i.ik = call i64 @g_signal_connect_data(ptr noundef %.095, ptr noundef nonnull @.str, ptr noundef nonnull @_gui_hist_copy_response, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  call void @gtk_widget_show_all(ptr noundef %.095) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %i.il = call i32 @gtk_dialog_run(ptr noundef %.095) #8 ; 2 uses
  switch i32 %i.il, label %bb.v [
    i32 -4, label %bb.w
    i32 -5, label %bb.w
    i32 -6, label %bb.w
    i32 -10, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  call void @gtk_widget_destroy(ptr noundef %.095) #8
  call void @g_object_unref(ptr noundef %i.da) #8
  call void @g_object_unref(ptr noundef %i.es) #8
  call void @g_object_unref(ptr noundef %i.gk) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.0 = phi i32 [ %i.il, %bb.w ], [ -6, %bb.t ]
  ret i32 %.0
}

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_dialog_new_with_buttons(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_dialog_add_help(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_gui_dialog_restore_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_tree_view_new() local_unnamed_addr #2

declare void @gtk_scrolled_window_set_policy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gtk_dialog_get_content_area(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_list_store_new(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gdk_pixbuf_get_type() local_unnamed_addr #4

declare ptr @gtk_cell_renderer_toggle_new() local_unnamed_addr #2

declare void @gtk_cell_renderer_toggle_set_activatable(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_object_set_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_gui_hist_item_toggled(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct._GtkTreeIter, align 8       ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.11) #8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.f) #8 ; 3 uses
  %i.h = tail call ptr @gtk_tree_path_new_from_string(ptr noundef %1) #8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
end_hunk_0
