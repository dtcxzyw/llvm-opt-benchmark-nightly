Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/vectorscope?download=true
inline.NumInlined: 103
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 31
begin_hunk_0
@__FUNCTION__._lib_histogram_vectorscope_bkgd = private unnamed_addr constant [32 x i8] c"_lib_histogram_vectorscope_bkgd\00", align 1
@dt_color_ryb_x_vtx = internal constant [7 x float] [float 0.000000e+00, float f0x3E2AAAAB, float f0x3EAAAAAB, float 5.000000e-01, float f0x3F2AAAAB, float f0x3F555555, float 1.000000e+00], align 16
@rgb_y_vtx = internal constant [7 x float] [float 0.000000e+00, float 8.333300e-02, float 1.666670e-01, float 3.838380e-01, float 5.865750e-01, float 8.333330e-01, float 1.000000e+00], align 16
@.str.26 = private unnamed_addr constant [104 x i8] c"[dt_unreachable_codepath] {%s} %s:%d (%s) - we should not be here. please report this to the developers\00", align 1
@__FUNCTION__._get_chromaticity = private unnamed_addr constant [18 x i8] c"_get_chromaticity\00", align 1
@dt_color_ryb_y_vtx = internal constant [7 x float] [float 0.000000e+00, float f0x3EAAAAAB, float 4.722170e-01, float 6.111050e-01, float f0x3F371C00, float f0x3F555555, float 1.000000e+00], align 16
@.str.27 = private unnamed_addr constant [51 x i8] c"plugins/darkroom/histogram/vectorscope/harmony/dim\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%d\C2\B0\0A%s\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"\0A%s\0A%s\0A%s\0A%s\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"scroll to coarse-rotate\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"ctrl+scroll to fine rotate\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"shift+scroll to change width\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"alt+scroll to cycle\00", align 1
@dt_modifier_shortcuts = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [20 x i8] c"set scale to linear\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"set scale to logarithmic\00", align 1
@__FUNCTION__._vec_update_buttons = private unnamed_addr constant [20 x i8] c"_vec_update_buttons\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"set view to AzBz\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"set view to RYB\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"set view to u*v*\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"plugins/darkroom/histogram/vectorscope/scale\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"plugins/darkroom/histogram/vectorscope/angle\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"plugins/darkroom/histogram/vectorscope/harmony_type\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"cycle vectorscope types\00", align 1
@dt_action_def_button = external constant %struct.dt_action_def_t, align 8
@.str.43 = private unnamed_addr constant [25 x i8] c"switch vectorscope scale\00", align 1
@__FUNCTION__._vec_add_options = private unnamed_addr constant [17 x i8] c"_vec_add_options\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"color harmonies\00", align 1
@dt_action_def_toggle = external constant %struct.dt_action_def_t, align 8
@.str.45 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"state_flags_changed\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"cycle color harmonies\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"size-allocate\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"[signal] connect    %s to %s; %s:%d, function: %s()\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"_vec_signal_image_changed\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"DT_SIGNAL_DEVELOP_IMAGE_CHANGED\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"histogram color_harmony_changed_record\00", align 1
@dt_color_harmony_get_sector_angles.table = internal unnamed_addr constant [10 x %struct.anon.21] [%struct.anon.21 zeroinitializer, %struct.anon.21 { i32 1, [4 x float] zeroinitializer }, %struct.anon.21 { i32 3, [4 x float] [float f0xBDAAAAAB, float 0.000000e+00, float f0x3DAAAAAB, float 0.000000e+00] }, %struct.anon.21 { i32 4, [4 x float] [float f0xBDAAAAAB, float 0.000000e+00, float f0x3DAAAAAB, float 5.000000e-01] }, %struct.anon.21 { i32 2, [4 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.21 { i32 3, [4 x float] [float 0.000000e+00, float f0x3ED55555, float f0x3F155555, float 0.000000e+00] }, %struct.anon.21 { i32 2, [4 x float] [float f0xBDAAAAAB, float f0x3DAAAAAB, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.21 { i32 3, [4 x float] [float 0.000000e+00, float f0x3EAAAAAB, float f0x3F2AAAAB, float 0.000000e+00] }, %struct.anon.21 { i32 4, [4 x float] [float f0xBDAAAAAB, float f0x3DAAAAAB, float f0x3ED55555, float f0x3F155555] }, %struct.anon.21 { i32 4, [4 x float] [float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01] }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_vec_name(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  ret ptr @.str.19
}

; Function Attrs: nounwind uwtable
define hidden void @_vec_signal_image_changed(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %2 = alloca %struct._color_harmony_t, align 4   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1552
  %i.e = load i32, ptr %i.d, align 16, !tbaa !90
  %i.f = tail call ptr @dt_image_cache_get(i32 noundef %i.e, i8 noundef signext 114) #18 ; 3 uses
  call void @dt_color_harmony_init(ptr noundef nonnull %2) #18
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.f) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr %2, align 4, !tbaa !91     ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2632
  %i.k = load i32, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2424
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  call void @gtk_toggle_button_set_active(ptr noundef %i.o, i32 noundef 0) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.20) #18
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2636
  store i32 %i.p, ptr %i.q, align 4, !tbaa !98
  %i.r = call i32 @dt_conf_get_int(ptr noundef nonnull @.str.21) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2424
  %i.t = zext i32 %i.h to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  call void @gtk_toggle_button_set_active(ptr noundef %i.v, i32 noundef 1) #18
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !161
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2636
  store i32 %i.x, ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !162
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.aa, %bb.g ], [ %i.r, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 2640
  store i32 %.sink, ptr %i.ab, align 8, !tbaa !99
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.ae = getelementptr i8, ptr %i.ad, i64 400
  %.val = load ptr, ptr %i.ae, align 8, !tbaa !103
  call void @gtk_widget_queue_draw(ptr noundef %.val) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @dt_image_cache_get(i32 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @dt_color_harmony_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @dt_image_cache_read_release(ptr noundef) local_unnamed_addr #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal void @_vec_process(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  %4 = alloca %struct._cairo_matrix, align 8      ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [4 x float], align 16             ; 6 uses
  %i.f = alloca [4 x float], align 16             ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104  ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2584 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !105  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2588 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 2368 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 64, !tbaa !107
  %i.q = icmp eq ptr %3, %i.p
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2376
  %i.s = load i32, ptr %i.r, align 8, !tbaa !108
  %i.t = icmp eq i32 %i.n, %i.s
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 2380
  %i.v = load i32, ptr %i.u, align 4, !tbaa !109
  %i.w = icmp eq i32 %i.l, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 2384
  %i.y = load double, ptr %i.x, align 16, !tbaa !110 ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn une double %i.y, 0.000000e+00
  br i1 %i.z, label %_lib_histogram_vectorscope_bkgd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.aa = tail call ptr @cairo_pattern_create_mesh() #18 ; 21 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 2624
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 896 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 712 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 768 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 704 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 852 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  br label %.preheader169.i

bb.f:                                             ; preds = %bb.g
  tail call void @cairo_mesh_pattern_begin_patch(ptr noundef %i.aa) #18
  tail call void @cairo_mesh_pattern_move_to(ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %i.ak = extractelement <2 x double> %i.ke, i64 0
  %i.al = extractelement <2 x double> %i.ke, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.ak, double noundef %i.al) #18
  %i.am = load <2 x float>, ptr %i.aj, align 64, !tbaa !111
  %i.an = fpext reassoc nsz arcp contract afn <2 x float> %i.am to <2 x double> ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = extractelement <2 x double> %i.an, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.ao, double noundef %i.ap) #18
  %i.aq = fpext reassoc nsz arcp contract afn float %i.jf to double ; 2 uses
  %i.ar = fpext reassoc nsz arcp contract afn float %i.jg to double ; 2 uses
  %i.as = fpext reassoc nsz arcp contract afn float %i.jh to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.aq, double noundef %i.ar, double noundef %i.as) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.aq, double noundef %i.ar, double noundef %i.as) #18
  %i.at = fpext reassoc nsz arcp contract afn float %.sroa.0218.2.i to double ; 2 uses
  %i.au = fpext reassoc nsz arcp contract afn float %.sroa.5.2235.i to double ; 2 uses
  %i.av = fpext reassoc nsz arcp contract afn float %.sroa.6219.2.i to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.at, double noundef %i.au, double noundef %i.av) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.at, double noundef %i.au, double noundef %i.av) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  %i.aw = load i32, ptr %i.i, align 4, !tbaa !104 ; 5 uses
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aw to float ; 2 uses
  %i.ay = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ax, float noundef %i.ax) #19
  %i.az = fpext reassoc nsz arcp contract afn float %i.ay to double
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ba = fpext reassoc nsz arcp contract afn float %i.jk to double ; 3 uses
  %i.bb = fdiv reassoc nsz arcp contract afn double %i.ba, %i.az ; 2 uses
  call void @cairo_matrix_init_scale(ptr noundef nonnull %4, double noundef %i.bb, double noundef %i.bb) #18
  %i.bc = sitofp reassoc nsz arcp contract afn i32 %i.aw to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn double %i.bc, -5.000000e-01 ; 2 uses
  call void @cairo_matrix_translate(ptr noundef nonnull %4, double noundef %i.bd, double noundef %i.bd) #18
  call void @cairo_pattern_set_matrix(ptr noundef %i.aa, ptr noundef nonnull %4) #18
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !112
  %i.bg = call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.aw) #18
  %i.bh = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bf, i32 noundef 1, i32 noundef %i.aw, i32 noundef %i.aw, i32 noundef %i.bg) #18 ; 2 uses
  %i.bi = call ptr @cairo_create(ptr noundef %i.bh) #18 ; 4 uses
  call void @cairo_set_operator(ptr noundef %i.bi, i32 noundef 1) #18
  call void @cairo_set_source(ptr noundef %i.bi, ptr noundef %i.aa) #18
  call void @cairo_paint(ptr noundef %i.bi) #18
  call void @cairo_surface_destroy(ptr noundef %i.bh) #18
  call void @cairo_pattern_destroy(ptr noundef %i.aa) #18
  call void @cairo_destroy(ptr noundef %i.bi) #18
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !106 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader166.i, label %.loopexit.i

.preheader166.i:                                  ; preds = %bb.f
  %i.bl = fmul reassoc nsz arcp contract afn float %i.jk, f0x3E968904 ; 6 uses
  %i.bm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  br label %bb.ak

.preheader169.i:                                  ; preds = %bb.g, %bb.e
  %.sroa.0226.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.jf, %bb.g ]
  %.sroa.12.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.jg, %bb.g ]
  %.sroa.21.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %i.jh, %bb.g ]
  %.sroa.0218.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.0218.2.i, %bb.g ]
  %.sroa.5.0233.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.5.2235.i, %bb.g ]
  %.sroa.6219.0.i = phi nsz float [ 0.000000e+00, %bb.e ], [ %.sroa.6219.2.i, %bb.g ]
  %indvars.iv206.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next207.i, %bb.g ] ; 4 uses
  %.0142199.i = phi float [ 0.000000e+00, %bb.e ], [ %i.jk, %bb.g ]
  %i.bn = phi <2 x double> [ zeroinitializer, %bb.e ], [ %i.ke, %bb.g ]
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv.next207.i, 6  ; 2 uses
  %i.bo = select i1 %.not.i, i64 0, i64 %indvars.iv.next207.i
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr @__const._lib_histogram_vectorscope_bkgd.vertex_rgb, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr @__const._lib_histogram_vectorscope_bkgd.vertex_rgb, i64 %indvars.iv206.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load float, ptr %i.br, align 8, !tbaa !111
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !111 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bp, align 16, !tbaa !111
  %i.bw = load <2 x float>, ptr %i.bq, align 16, !tbaa !111
  %i.bx = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bs, i64 2
  %i.by = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ca = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bu, i64 2
  %i.cb = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cd = fsub reassoc nsz arcp contract afn <4 x float> %i.bz, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, <float f0x3CAAAAAB, float f0x3CAAAAAB, float f0x3CAAAAAB, float 1.000000e+00>
  %i.cf = trunc nuw nsw i64 %indvars.iv206.i to i32 ; 2 uses
  %i.cg = uitofp nsz nneg i32 %i.cf to float
  %i.ch = getelementptr inbounds nuw [384 x i8], ptr %i.aj, i64 %indvars.iv206.i
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.bu, i64 2
  %i.cj = shufflevector <4 x float> %i.cb, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.h

bb.g:                                             ; preds = %.loopexit168.i
  br i1 %.not.i, label %bb.f, label %.preheader169.i

bb.h:                                             ; preds = %.loopexit168.i, %.preheader169.i
  %.sroa.0226.1.i = phi nsz float [ %.sroa.0226.0.i, %.preheader169.i ], [ %i.jf, %.loopexit168.i ] ; 2 uses
  %.sroa.12.1.i = phi nsz float [ %.sroa.12.0.i, %.preheader169.i ], [ %i.jg, %.loopexit168.i ] ; 2 uses
  %.sroa.21.1.i = phi nsz float [ %.sroa.21.0.i, %.preheader169.i ], [ %i.jh, %.loopexit168.i ] ; 2 uses
  %.sroa.0218.1.i = phi nsz float [ %.sroa.0218.0.i, %.preheader169.i ], [ %.sroa.0218.2.i, %.loopexit168.i ]
  %.sroa.5.1234.i = phi nsz float [ %.sroa.5.0233.i, %.preheader169.i ], [ %.sroa.5.2235.i, %.loopexit168.i ]
  %.sroa.6219.1.i = phi nsz float [ %.sroa.6219.0.i, %.preheader169.i ], [ %.sroa.6219.2.i, %.loopexit168.i ]
  %indvars.iv.i = phi i64 [ 0, %.preheader169.i ], [ %indvars.iv.next.i, %.loopexit168.i ] ; 3 uses
  %.1195.i = phi float [ %.0142199.i, %.preheader169.i ], [ %i.jk, %.loopexit168.i ] ; 2 uses
  %i.ck = phi <2 x double> [ %i.bn, %.preheader169.i ], [ %i.ke, %.loopexit168.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.cl = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cm = uitofp nsz nneg i32 %i.cl to float      ; 2 uses
  %i.cn = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cm, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ce
  %i.cq = fadd reassoc nsz arcp contract afn <4 x float> %i.cp, %i.cj ; 4 uses
  store <4 x float> %i.cq, ptr %i.a, align 16, !tbaa !111
  switch i32 %i.l, label %bb.y [
    i32 0, label %bb.i
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %i.af, align 64, !tbaa !114
  %i.cs = load i32, ptr %i.ag, align 4, !tbaa !115
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %i.cr, i32 noundef %i.cs)
  %.val.i = load <4 x float>, ptr %i.b, align 16  ; 4 uses
  %i.ct = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.ct, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.ct, i64 1 ; 5 uses
  %i.cu = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.ct, i64 2
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ogt float %i.cv, 0.000000e+00 ; 2 uses
  %i.cx = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.cv
  %i.cy = select i1 %i.cw, float %i.cx, float 3.456700e-01 ; 2 uses
  %i.cz = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.cv
  %i.da = select i1 %i.cw, float %i.cz, float 3.585000e-01 ; 2 uses
  %i.db = fcmp reassoc nsz arcp contract afn ugt float %.sroa.0.4.vec.extract4.i.i, f0x3C111AA7
  %i.dc = extractelement <4 x float> %.val.i, i64 0 ; 3 uses
  %i.dd = extractelement <4 x float> %.val.i, i64 1 ; 3 uses
  %i.de = extractelement <4 x float> %.val.i, i64 2 ; 3 uses
  br i1 %i.db, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = fmul reassoc nnan nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, f0x4461D2F8
  br label %dt_xyY_to_Luv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.dg = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %.sroa.0.4.vec.extract4.i.i) #19
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, 1.160000e+02
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, -1.600000e+01
  br label %dt_xyY_to_Luv.exit.i

dt_xyY_to_Luv.exit.i:                             ; preds = %bb.k, %bb.j
  %i.dj = phi reassoc nsz arcp contract afn float [ %i.df, %bb.j ], [ %i.di, %bb.k ]
  %i.dk = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.da, i64 1
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, <float 4.000000e+00, float 9.000000e+00>
  %i.dn = fmul reassoc nsz arcp contract afn float %i.da, 1.200000e+01
  %i.do = fmul reassoc nsz arcp contract afn float %i.cy, 2.000000e+00
  %i.dp = fsub reassoc nsz arcp contract afn float %i.dn, %i.do
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, 3.000000e+00
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fdiv reassoc nsz arcp contract afn <2 x float> %i.dm, %i.ds
  %i.du = fmul reassoc nsz arcp contract afn float %i.dj, 1.300000e+01
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.dt, <float f0xBE562DD1, float f0xBEF9E502>
  %i.dw = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul reassoc nsz arcp contract afn <2 x float> %i.dx, %i.dv
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dc, f0x40489119
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dd, f0xBFCEF57D
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dz
  %i.ec = fmul reassoc nsz arcp contract afn float %i.de, f0xBEFB31D6
  %i.ed = fadd reassoc nsz arcp contract afn float %i.eb, %i.ec
  %i.ee = fmul reassoc nsz arcp contract afn float %i.dc, f0xBF7A9091
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dd, f0x3FF54420
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, %i.ee
  %i.eh = fmul reassoc nsz arcp contract afn float %i.de, 3.345400e-02
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eg, %i.eh
  %i.ej = fmul reassoc nsz arcp contract afn float %i.dc, 7.194530e-02
  %i.ek = fmul reassoc nsz arcp contract afn float %i.dd, f0xBE6A7CB9
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ej
  %i.em = fmul reassoc nsz arcp contract afn float %i.de, f0x3FB3DEFE
  %i.en = fadd reassoc nsz arcp contract afn float %i.el, %i.em
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.eo = load i32, ptr %i.af, align 64, !tbaa !114
  %i.ep = load i32, ptr %i.ag, align 4, !tbaa !115
  call fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i32 noundef %i.eo, i32 noundef %i.ep)
  %i.eq = load float, ptr %i.b, align 16, !tbaa !111 ; 6 uses
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, f0x3F74A0AB
  %i.es = load float, ptr %i.ah, align 4, !tbaa !111 ; 6 uses
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, 2.303930e-02
  %i.eu = fsub reassoc nsz arcp contract afn float %i.er, %i.et
  %i.ev = load float, ptr %i.ai, align 8, !tbaa !111 ; 6 uses
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, 6.316360e-02
  %i.ex = fadd reassoc nsz arcp contract afn float %i.eu, %i.ew ; 2 uses
  %.reass181.i = fmul reassoc nsz arcp contract afn float %i.eq, f0xBC98F413
  %.reass182.i = fmul reassoc nsz arcp contract afn float %i.es, f0x3F2AA3C6
  %i.ey = fadd reassoc nsz arcp contract afn float %.reass182.i, %.reass181.i
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.ev, f0x3C632A5F
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %.reass.i
  %i.fa = fmul reassoc nsz arcp contract afn float %i.eq, 1.229820e-02
  %i.fb = fmul reassoc nsz arcp contract afn float %i.es, 2.048300e-02
  %i.fc = fsub reassoc nsz arcp contract afn float %i.fa, %i.fb
  %i.fd = fmul reassoc nsz arcp contract afn float %i.ev, f0x3FAA3A7C
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fc, %i.fd ; 4 uses
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ex, 1.150000e+00
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fe, f0x3E199998
  %i.fh = fsub reassoc nsz arcp contract afn float %i.ff, %i.fg ; 3 uses
  %i.fi = fmul reassoc nsz arcp contract afn float %i.ex, f0x3EAE147A
  %i.fj = fadd reassoc nsz arcp contract afn float %i.ez, %i.fi ; 3 uses
  %.reass185.i = fmul reassoc nsz arcp contract afn float %i.fh, f0x382DF9B4
  %.reass183.i = fmul reassoc nsz arcp contract afn float %i.fj, f0x387344EC
  %.reass184.i = fmul reassoc nsz arcp contract afn float %i.fe, 1.464800e-06
  %i.fk = fadd reassoc nsz arcp contract afn float %.reass185.i, %.reass184.i
  %.reass188.i = fmul reassoc nsz arcp contract afn float %i.fh, -2.015100e-05
  %.reass186.i = fmul reassoc nsz arcp contract afn float %i.fj, f0x38EB0462
  %.reass187.i = fmul reassoc nsz arcp contract afn float %i.fe, 5.310080e-06
  %i.fl = fadd reassoc nsz arcp contract afn float %.reass188.i, %.reass187.i
  %.reass191.i = fmul reassoc nsz arcp contract afn float %i.fh, -1.660080e-06
  %.reass189.i = fmul reassoc nsz arcp contract afn float %i.fj, 2.648000e-05
  %.reass190.i = fmul reassoc nsz arcp contract afn float %i.fe, f0x388C30BE
  %i.fm = fadd reassoc nsz arcp contract afn float %.reass191.i, %.reass190.i
  %i.fn = fadd reassoc nsz arcp contract afn float %i.fm, %.reass189.i
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fn, float 0.000000e+00)
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fo, float f0x3E232000) ; 2 uses
  %i.fq = fmul reassoc nnan nsz arcp contract afn float %i.fp, f0x4196D000
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fq, f0x3F560000
  %i.fs = fmul reassoc nnan nsz arcp contract afn float %i.fp, 1.868750e+01
  %i.ft = fadd reassoc nsz arcp contract afn float %i.fs, 1.000000e+00
  %i.fu = fdiv reassoc nsz arcp contract afn float %i.fr, %i.ft
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.fu, float f0x430608CD)
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fk, %.reass183.i
  %i.fx = fadd reassoc nsz arcp contract afn float %i.fl, %.reass186.i
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fw, i64 1
  %i.ga = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fz, <2 x float> zeroinitializer)
  %i.gb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ga, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.gc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gb, splat (float f0x4196D000)
  %i.gd = fadd reassoc nsz arcp contract afn <2 x float> %i.gc, splat (float f0x3F560000)
  %i.ge = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.gb, splat (float 1.868750e+01)
  %i.gf = fadd reassoc nsz arcp contract afn <2 x float> %i.ge, splat (float 1.000000e+00)
  %i.gg = fdiv reassoc nsz arcp contract afn <2 x float> %i.gd, %i.gf
  %i.gh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.gg, <2 x float> splat (float f0x430608CD)) ; 2 uses
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, <float f0xC0822279, float 1.990760e-01>
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, <float f0x3F8C63E9, float 3.524000e+00>
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gl = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gk
  %i.gm = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.gn, <float 5.427080e-01, float f0xBFA5DF3B>
  %i.gp = fadd reassoc nsz arcp contract afn <2 x float> %i.gl, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn float %i.eq, f0x40489119
  %i.gr = fmul reassoc nsz arcp contract afn float %i.es, f0xBFCEF57D
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, %i.gq
  %i.gt = fmul reassoc nsz arcp contract afn float %i.ev, f0xBEFB31D6
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gs, %i.gt
  %i.gv = fmul reassoc nsz arcp contract afn float %i.eq, f0xBF7A9091
  %i.gw = fmul reassoc nsz arcp contract afn float %i.es, f0x3FF54420
  %i.gx = fadd reassoc nsz arcp contract afn float %i.gw, %i.gv
  %i.gy = fmul reassoc nsz arcp contract afn float %i.ev, 3.345400e-02
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gx, %i.gy
  %i.ha = fmul reassoc nsz arcp contract afn float %i.eq, 7.194530e-02
  %i.hb = fmul reassoc nsz arcp contract afn float %i.es, f0xBE6A7CB9
  %i.hc = fadd reassoc nsz arcp contract afn float %i.hb, %i.ha
  %i.hd = fmul reassoc nsz arcp contract afn float %i.ev, f0x3FB3DEFE
  %i.he = fadd reassoc nsz arcp contract afn float %i.hc, %i.hd
  br label %bb.y

bb.m:                                             ; preds = %bb.h
  %i.hf = load ptr, ptr %i.ab, align 64, !tbaa !116
  %i.hg = extractelement <4 x float> %i.cq, i64 0 ; 5 uses
  %i.hh = extractelement <4 x float> %i.cq, i64 1 ; 5 uses
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hg, float %i.hh)
  %i.hj = extractelement <4 x float> %i.cq, i64 2 ; 4 uses
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hi, float %i.hj)
  %i.hl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hg, float %i.hh)
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hl, float %i.hj) ; 14 uses
  %i.hn = fsub reassoc nsz arcp contract afn float %i.hm, %i.hk ; 5 uses
  %i.ho = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hm)
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %i.ho, f0x358637BD
  %i.hq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hn)
  %i.hr = fcmp reassoc nsz arcp contract afn ogt float %i.hq, f0x358637BD
  %or.cond.i.i.i = select i1 %i.hp, i1 %i.hr, i1 false
  br i1 %or.cond.i.i.i, label %bb.n, label %dt_RGB_2_HSV.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.hs = fdiv reassoc nsz arcp contract afn float %i.hn, %i.hm
  %i.ht = fcmp reassoc nsz arcp contract afn oeq float %i.hg, %i.hm
  br i1 %i.ht, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hu = fsub reassoc nsz arcp contract afn float %i.hh, %i.hj
  %i.hv = fdiv reassoc nsz arcp contract afn float %i.hu, %i.hn
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.hw = fcmp reassoc nsz arcp contract afn oeq float %i.hh, %i.hm
  br i1 %i.hw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hj, %i.hg
  %i.hy = fdiv reassoc nsz arcp contract afn float %i.hx, %i.hn
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ia = fsub reassoc nsz arcp contract afn float %i.hg, %i.hh
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.hn
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i.i

_dt_RGB_2_Hue.exit.i.i.i:                         ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i = phi nsz float [ %i.hv, %bb.o ], [ %i.hz, %bb.q ], [ %i.ic, %bb.r ]
  %i.id = fmul reassoc nsz arcp contract afn float %.0.i.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.id)
  %i.if = fsub reassoc nsz arcp contract afn float %i.id, %i.ie
  br label %dt_RGB_2_HSV.exit.i.i

dt_RGB_2_HSV.exit.i.i:                            ; preds = %_dt_RGB_2_Hue.exit.i.i.i, %bb.m
  %.018.i.i.i = phi nsz float [ %i.hs, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %.0.i.i.i = phi nsz float [ %i.if, %_dt_RGB_2_Hue.exit.i.i.i ], [ 0.000000e+00, %bb.m ]
  %i.ig = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i.i, ptr noundef nonnull @rgb_y_vtx, ptr noundef %i.hf, i32 noundef 0) #18
  %i.ih = fmul reassoc nsz arcp contract afn float %.018.i.i.i, %i.hm ; 2 uses
  %i.ii = fsub reassoc nsz arcp contract afn float %i.hm, %i.ih ; 7 uses
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ig, 6.000000e+00 ; 2 uses
  %i.ik = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ij) ; 2 uses
  %i.il = fsub reassoc nsz arcp contract afn float %i.ij, %i.ik
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.ih ; 2 uses
  %i.in = fadd reassoc nsz arcp contract afn float %i.im, %i.ii ; 3 uses
  %i.io = fsub reassoc nsz arcp contract afn float %i.hm, %i.im ; 3 uses
  %i.ip = fptoui float %i.ik to i64
  switch i64 %i.ip, label %bb.w [
    i64 0, label %_ryb2rgb.exit.i
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.u
    i64 4, label %bb.v
  ]

bb.s:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.t:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.u:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.v:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

bb.w:                                             ; preds = %dt_RGB_2_HSV.exit.i.i
  br label %_ryb2rgb.exit.i

_ryb2rgb.exit.i:                                  ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %dt_RGB_2_HSV.exit.i.i
  %.sink54.i.i.i.i = phi float [ %i.io, %bb.s ], [ %i.ii, %bb.u ], [ %i.hm, %bb.w ], [ %i.in, %bb.v ], [ %i.ii, %bb.t ], [ %i.hm, %dt_RGB_2_HSV.exit.i.i ]
  %.sink53.i.i.i.i = phi float [ %i.hm, %bb.s ], [ %i.io, %bb.u ], [ %i.ii, %bb.w ], [ %i.ii, %bb.v ], [ %i.hm, %bb.t ], [ %i.in, %dt_RGB_2_HSV.exit.i.i ]
  %.sink.i.i.i.i = phi float [ %i.ii, %bb.s ], [ %i.hm, %bb.u ], [ %i.io, %bb.w ], [ %i.hm, %bb.v ], [ %i.in, %bb.t ], [ %i.ii, %dt_RGB_2_HSV.exit.i.i ]
  %i.iq = fmul reassoc nnan nsz arcp contract afn float %i.cm, f0x3CAAAAAB
  %i.ir = fadd reassoc nnan nsz arcp contract afn float %i.iq, %i.cg
  %i.is = fmul reassoc nnan nsz arcp contract afn float %i.ir, f0x3F860A3A
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.is) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.it = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %sin.i, i64 1
  %i.iv = fpext reassoc nsz arcp contract afn <2 x float> %i.iu to <2 x double>
  %i.iw = fmul reassoc nsz arcp contract afn <2 x double> %i.iv, splat (double 1.000000e-02)
  %i.ix = fptrunc reassoc nsz arcp contract afn <2 x double> %i.iw to <2 x float>
  br label %bb.y

bb.x:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 292, ptr noundef nonnull @__FUNCTION__._lib_histogram_vectorscope_bkgd) #18
  unreachable

bb.y:                                             ; preds = %_ryb2rgb.exit.i, %bb.l, %dt_xyY_to_Luv.exit.i, %bb.h
  %.sroa.0226.2.i = phi nsz float [ %.sroa.0226.1.i, %bb.h ], [ %i.ed, %dt_xyY_to_Luv.exit.i ], [ %i.gu, %bb.l ], [ %.sink54.i.i.i.i, %_ryb2rgb.exit.i ] ; 3 uses
  %.sroa.12.2.i = phi nsz float [ %.sroa.12.1.i, %bb.h ], [ %i.ei, %dt_xyY_to_Luv.exit.i ], [ %i.gz, %bb.l ], [ %.sink53.i.i.i.i, %_ryb2rgb.exit.i ] ; 3 uses
  %.sroa.21.2.i = phi nsz float [ %.sroa.21.1.i, %bb.h ], [ %i.en, %dt_xyY_to_Luv.exit.i ], [ %i.he, %bb.l ], [ %.sink.i.i.i.i, %_ryb2rgb.exit.i ] ; 3 uses
  %i.iy = phi <2 x float> [ zeroinitializer, %bb.h ], [ %i.dy, %dt_xyY_to_Luv.exit.i ], [ %i.gp, %bb.l ], [ %i.ix, %_ryb2rgb.exit.i ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i
  %i.ja = extractelement <2 x float> %i.iy, i64 0 ; 3 uses
  %i.jb = extractelement <2 x float> %i.iy, i64 1 ; 3 uses
  store <2 x float> %i.iy, ptr %i.iz, align 8, !tbaa !111
  %i.jc = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0226.2.i, %.sroa.12.2.i
  %i.jd = select reassoc nsz arcp contract afn i1 %i.jc, float %.sroa.0226.2.i, float %.sroa.12.2.i ; 2 uses
  %i.je = fcmp reassoc nsz arcp contract afn ogt float %i.jd, %.sroa.21.2.i
  %..i = select reassoc nsz arcp contract afn i1 %i.je, float %i.jd, float %.sroa.21.2.i ; 3 uses
  %i.jf = fdiv reassoc nsz arcp contract afn float %.sroa.0226.2.i, %..i ; 5 uses
  %i.jg = fdiv reassoc nsz arcp contract afn float %.sroa.12.2.i, %..i ; 5 uses
  %i.jh = fdiv reassoc nsz arcp contract afn float %.sroa.21.2.i, %..i ; 5 uses
  %i.ji = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ja, float noundef %i.jb) #19 ; 4 uses
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %.1195.i, %i.ji
  %i.jk = select reassoc nsz arcp contract afn i1 %i.jj, float %.1195.i, float %i.ji ; 11 uses
  %i.jl = or i32 %i.cl, %i.cf
  %or.cond.i = icmp eq i32 %i.jl, 0
  br i1 %or.cond.i, label %.preheader167.preheader.i, label %bb.z

.preheader167.preheader.i:                        ; preds = %bb.y
  %i.jm = fpext reassoc nsz arcp contract afn <2 x float> %i.iy to <2 x double>
  br label %.loopexit168.i

bb.z:                                             ; preds = %bb.y
  %i.jn = fcmp reassoc nsz arcp contract afn ult float %i.ji, f0x00800000 ; 2 uses
  %i.jo = fdiv reassoc nsz arcp contract afn float %i.jk, %i.ji ; 2 uses
  tail call void @cairo_mesh_pattern_begin_patch(ptr noundef %i.aa) #18
  tail call void @cairo_mesh_pattern_move_to(ptr noundef %i.aa, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %i.jp = extractelement <2 x double> %i.ck, i64 0
  %i.jq = extractelement <2 x double> %i.ck, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.jp, double noundef %i.jq) #18
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jo, %i.ja
  %i.js = fmul reassoc nsz arcp contract afn float %i.jo, %i.jb
  %.sroa.14.1.i = select nsz i1 %i.jn, float %i.jb, float %i.js
  %.sroa.5.1.i = select nsz i1 %i.jn, float %i.ja, float %i.jr
  %i.jt = insertelement <2 x float> poison, float %.sroa.5.1.i, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %.sroa.14.1.i, i64 1
  %i.jv = fpext reassoc nsz arcp contract afn <2 x float> %i.ju to <2 x double> ; 3 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0
  %i.jx = extractelement <2 x double> %i.jv, i64 1
  tail call void @cairo_mesh_pattern_line_to(ptr noundef %i.aa, double noundef %i.jw, double noundef %i.jx) #18
  %i.jy = fpext reassoc nsz arcp contract afn float %.sroa.0226.1.i to double ; 2 uses
  %i.jz = fpext reassoc nsz arcp contract afn float %.sroa.12.1.i to double ; 2 uses
  %i.ka = fpext reassoc nsz arcp contract afn float %.sroa.21.1.i to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 0, double noundef %i.jy, double noundef %i.jz, double noundef %i.ka) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 1, double noundef %i.jy, double noundef %i.jz, double noundef %i.ka) #18
  %i.kb = fpext reassoc nsz arcp contract afn float %i.jf to double ; 2 uses
  %i.kc = fpext reassoc nsz arcp contract afn float %i.jg to double ; 2 uses
  %i.kd = fpext reassoc nsz arcp contract afn float %i.jh to double ; 2 uses
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 2, double noundef %i.kb, double noundef %i.kc, double noundef %i.kd) #18
  tail call void @cairo_mesh_pattern_set_corner_color_rgb(ptr noundef %i.aa, i32 noundef 3, double noundef %i.kb, double noundef %i.kc, double noundef %i.kd) #18
  tail call void @cairo_mesh_pattern_end_patch(ptr noundef %i.aa) #18
  br label %.loopexit168.i

.loopexit168.i:                                   ; preds = %bb.z, %.preheader167.preheader.i
  %.sroa.0218.2.i = phi nsz float [ %i.jf, %.preheader167.preheader.i ], [ %.sroa.0218.1.i, %bb.z ] ; 3 uses
  %.sroa.5.2235.i = phi nsz float [ %i.jg, %.preheader167.preheader.i ], [ %.sroa.5.1234.i, %bb.z ] ; 3 uses
  %.sroa.6219.2.i = phi nsz float [ %i.jh, %.preheader167.preheader.i ], [ %.sroa.6219.1.i, %bb.z ] ; 3 uses
  %i.ke = phi <2 x double> [ %i.jm, %.preheader167.preheader.i ], [ %i.jv, %bb.z ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 48
  br i1 %exitcond.not.i, label %bb.g, label %bb.h

.preheader.1.i:                                   ; preds = %log_scale.exit.i
  %i.kf = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.kg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  br label %bb.aa

bb.aa:                                            ; preds = %log_scale.exit.1.i, %.preheader.1.i
  %indvars.iv210.1.i = phi i64 [ 0, %.preheader.1.i ], [ %indvars.iv.next211.1.i, %log_scale.exit.1.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv210.1.i ; 2 uses
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !111 ; 3 uses
  %i.kj = extractelement <2 x float> %i.ki, i64 0
  %i.kk = extractelement <2 x float> %i.ki, i64 1
  %i.kl = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.kj, float noundef %i.kk) #19 ; 3 uses
  %i.km = fcmp reassoc nsz arcp contract afn ult float %i.kl, f0x00800000
  br i1 %i.km, label %log_scale.exit.1.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.kn = fmul reassoc nnan nsz arcp contract afn float %i.kl, 2.900000e+01
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, %i.kg
  %i.kp = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.ko) #19
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %i.bl
  %i.kr = fdiv reassoc nsz arcp contract afn float %i.kq, %i.kl
  %i.ks = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul reassoc nsz arcp contract afn <2 x float> %i.kt, %i.ki
  store <2 x float> %i.ku, ptr %i.kh, align 4, !tbaa !111
  br label %log_scale.exit.1.i

log_scale.exit.1.i:                               ; preds = %bb.ab, %bb.aa
  %indvars.iv.next211.1.i = add nuw nsw i64 %indvars.iv210.1.i, 1 ; 2 uses
  %exitcond213.1.not.i = icmp eq i64 %indvars.iv.next211.1.i, 48
  br i1 %exitcond213.1.not.i, label %.preheader.2.i, label %bb.aa

.preheader.2.i:                                   ; preds = %log_scale.exit.1.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.h, i64 832
  %i.kw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  br label %bb.ac

bb.ac:                                            ; preds = %log_scale.exit.2.i, %.preheader.2.i
  %indvars.iv210.2.i = phi i64 [ 0, %.preheader.2.i ], [ %indvars.iv.next211.2.i, %log_scale.exit.2.i ] ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %indvars.iv210.2.i ; 2 uses
  %i.ky = load <2 x float>, ptr %i.kx, align 4, !tbaa !111 ; 3 uses
  %i.kz = extractelement <2 x float> %i.ky, i64 0
  %i.la = extractelement <2 x float> %i.ky, i64 1
  %i.lb = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.kz, float noundef %i.la) #19 ; 3 uses
  %i.lc = fcmp reassoc nsz arcp contract afn ult float %i.lb, f0x00800000
  br i1 %i.lc, label %log_scale.exit.2.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ld = fmul reassoc nnan nsz arcp contract afn float %i.lb, 2.900000e+01
  %i.le = fmul reassoc nsz arcp contract afn float %i.ld, %i.kw
  %i.lf = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.le) #19
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.bl
  %i.lh = fdiv reassoc nsz arcp contract afn float %i.lg, %i.lb
  %i.li = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul reassoc nsz arcp contract afn <2 x float> %i.lj, %i.ky
  store <2 x float> %i.lk, ptr %i.kx, align 4, !tbaa !111
  br label %log_scale.exit.2.i

log_scale.exit.2.i:                               ; preds = %bb.ad, %bb.ac
  %indvars.iv.next211.2.i = add nuw nsw i64 %indvars.iv210.2.i, 1 ; 2 uses
  %exitcond213.2.not.i = icmp eq i64 %indvars.iv.next211.2.i, 48
  br i1 %exitcond213.2.not.i, label %.preheader.3.i, label %bb.ac

.preheader.3.i:                                   ; preds = %log_scale.exit.2.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.h, i64 1216
  %i.lm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  br label %bb.ae

bb.ae:                                            ; preds = %log_scale.exit.3.i, %.preheader.3.i
  %indvars.iv210.3.i = phi i64 [ 0, %.preheader.3.i ], [ %indvars.iv.next211.3.i, %log_scale.exit.3.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv210.3.i ; 2 uses
  %i.lo = load <2 x float>, ptr %i.ln, align 4, !tbaa !111 ; 3 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 0
  %i.lq = extractelement <2 x float> %i.lo, i64 1
  %i.lr = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.lp, float noundef %i.lq) #19 ; 3 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ult float %i.lr, f0x00800000
  br i1 %i.ls, label %log_scale.exit.3.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lt = fmul reassoc nnan nsz arcp contract afn float %i.lr, 2.900000e+01
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, %i.lm
  %i.lv = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.lu) #19
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, %i.bl
  %i.lx = fdiv reassoc nsz arcp contract afn float %i.lw, %i.lr
  %i.ly = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul reassoc nsz arcp contract afn <2 x float> %i.lz, %i.lo
  store <2 x float> %i.ma, ptr %i.ln, align 4, !tbaa !111
  br label %log_scale.exit.3.i

log_scale.exit.3.i:                               ; preds = %bb.af, %bb.ae
  %indvars.iv.next211.3.i = add nuw nsw i64 %indvars.iv210.3.i, 1 ; 2 uses
  %exitcond213.3.not.i = icmp eq i64 %indvars.iv.next211.3.i, 48
  br i1 %exitcond213.3.not.i, label %.preheader.4.i, label %bb.ae

.preheader.4.i:                                   ; preds = %log_scale.exit.3.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.h, i64 1600
  %i.mc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  br label %bb.ag

bb.ag:                                            ; preds = %log_scale.exit.4.i, %.preheader.4.i
  %indvars.iv210.4.i = phi i64 [ 0, %.preheader.4.i ], [ %indvars.iv.next211.4.i, %log_scale.exit.4.i ] ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv210.4.i ; 2 uses
  %i.me = load <2 x float>, ptr %i.md, align 4, !tbaa !111 ; 3 uses
  %i.mf = extractelement <2 x float> %i.me, i64 0
  %i.mg = extractelement <2 x float> %i.me, i64 1
  %i.mh = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.mf, float noundef %i.mg) #19 ; 3 uses
  %i.mi = fcmp reassoc nsz arcp contract afn ult float %i.mh, f0x00800000
  br i1 %i.mi, label %log_scale.exit.4.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mj = fmul reassoc nnan nsz arcp contract afn float %i.mh, 2.900000e+01
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, %i.mc
  %i.ml = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.mk) #19
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.bl
  %i.mn = fdiv reassoc nsz arcp contract afn float %i.mm, %i.mh
  %i.mo = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fmul reassoc nsz arcp contract afn <2 x float> %i.mp, %i.me
  store <2 x float> %i.mq, ptr %i.md, align 4, !tbaa !111
  br label %log_scale.exit.4.i

log_scale.exit.4.i:                               ; preds = %bb.ah, %bb.ag
  %indvars.iv.next211.4.i = add nuw nsw i64 %indvars.iv210.4.i, 1 ; 2 uses
  %exitcond213.4.not.i = icmp eq i64 %indvars.iv.next211.4.i, 48
  br i1 %exitcond213.4.not.i, label %.preheader.5.i, label %bb.ag

.preheader.5.i:                                   ; preds = %log_scale.exit.4.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.h, i64 1984
  %i.ms = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jk
  br label %bb.ai

bb.ai:                                            ; preds = %log_scale.exit.5.i, %.preheader.5.i
  %indvars.iv210.5.i = phi i64 [ 0, %.preheader.5.i ], [ %indvars.iv.next211.5.i, %log_scale.exit.5.i ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv210.5.i ; 2 uses
  %i.mu = load <2 x float>, ptr %i.mt, align 4, !tbaa !111 ; 3 uses
  %i.mv = extractelement <2 x float> %i.mu, i64 0
  %i.mw = extractelement <2 x float> %i.mu, i64 1
  %i.mx = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.mv, float noundef %i.mw) #19 ; 3 uses
  %i.my = fcmp reassoc nsz arcp contract afn ult float %i.mx, f0x00800000
  br i1 %i.my, label %log_scale.exit.5.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mz = fmul reassoc nnan nsz arcp contract afn float %i.mx, 2.900000e+01
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, %i.ms
  %i.nb = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.na) #19
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, %i.bl
  %i.nd = fdiv reassoc nsz arcp contract afn float %i.nc, %i.mx
  %i.ne = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fmul reassoc nsz arcp contract afn <2 x float> %i.nf, %i.mu
  store <2 x float> %i.ng, ptr %i.mt, align 4, !tbaa !111
  br label %log_scale.exit.5.i

log_scale.exit.5.i:                               ; preds = %bb.aj, %bb.ai
  %indvars.iv.next211.5.i = add nuw nsw i64 %indvars.iv210.5.i, 1 ; 2 uses
  %exitcond213.5.not.i = icmp eq i64 %indvars.iv.next211.5.i, 48
  br i1 %exitcond213.5.not.i, label %.loopexit.i, label %bb.ai

bb.ak:                                            ; preds = %log_scale.exit.i, %.preheader166.i
  %indvars.iv210.i = phi i64 [ 0, %.preheader166.i ], [ %indvars.iv.next211.i, %log_scale.exit.i ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv210.i ; 2 uses
  %i.ni = load <2 x float>, ptr %i.nh, align 4, !tbaa !111 ; 3 uses
  %i.nj = extractelement <2 x float> %i.ni, i64 0
  %i.nk = extractelement <2 x float> %i.ni, i64 1
  %i.nl = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.nj, float noundef %i.nk) #19 ; 3 uses
  %i.nm = fcmp reassoc nsz arcp contract afn ult float %i.nl, f0x00800000
  br i1 %i.nm, label %log_scale.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nn = fmul reassoc nnan nsz arcp contract afn float %i.nl, 2.900000e+01
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %i.bm
end_hunk_0
begin_hunk_1_@_vec_process:bb.a
  %i.wt = fmul reassoc nsz arcp contract afn float %i.ws, 2.550000e+02
  %i.wu = fptoui float %i.wt to i8
  %i.wv = getelementptr i8, ptr %i.vl, i64 %.0205
  store i8 %i.wu, ptr %i.wv, align 1, !tbaa !136
  %i.ww = or disjoint i64 %.0205, 1               ; 2 uses
  %i.wx = getelementptr [4 x i8], ptr %i.vj, i64 %i.ww
  %i.wy = load atomic i32, ptr %i.wx seq_cst, align 4, !tbaa !136
  %i.wz = sitofp reassoc nsz arcp contract afn i32 %i.wy to float
  %i.xa = fmul reassoc nnan nsz arcp contract afn float %i.uy, %i.wz
  %i.xb = fmul reassoc nsz arcp contract afn float %i.xa, %i.vf ; 2 uses
  %i.xc = fcmp reassoc nsz arcp contract afn ogt float %i.xb, 1.000000e+00
  %i.xd = select reassoc nsz arcp contract afn i1 %i.xc, float 1.000000e+00, float %i.xb
  %i.xe = fmul reassoc nsz arcp contract afn float %i.xd, %i.ut
  %i.xf = fptosi float %i.xe to i32
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.xg
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !111
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, 2.550000e+02
  %i.xk = fptoui float %i.xj to i8
  %i.xl = getelementptr i8, ptr %i.vl, i64 %i.ww
  store i8 %i.xk, ptr %i.xl, align 1, !tbaa !136
  %i.xm = add nuw i64 %.0205, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.new
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_vec_clear(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2384
  store double 0.000000e+00, ptr %i.c, align 16, !tbaa !110
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_vec_draw(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %4 = alloca %struct._cairo_matrix, align 8      ; 6 uses
  %5 = alloca %struct.dt_scopes_vec_color_harmony_t, align 8 ; 7 uses
  %6 = alloca %struct._PangoRectangle, align 4    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2384
  %i.d = load double, ptr %i.c, align 16, !tbaa !110
  %i.e = fptrunc reassoc nsz arcp contract afn double %i.d to float ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !104  ; 7 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1432
  %i.j = load double, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, 2.000000e+00 ; 6 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %2, i32 %3)
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.l to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.j, 4.000000e+00
  %i.o = fsub reassoc nsz arcp contract afn double %i.m, %i.n
  %i.p = fptosi double %i.o to i32
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to double ; 5 uses
  %i.r = fpext reassoc nsz arcp contract afn float %i.e to double
  %i.s = fmul reassoc nsz arcp contract afn double %i.r, 2.000000e+00
  %i.t = fdiv reassoc nsz arcp contract afn double %i.q, %i.s ; 19 uses
  %i.u = fcmp reassoc nsz arcp contract afn oeq float %i.e, 0.000000e+00
  br i1 %i.u, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cairo_save(ptr noundef %1) #18
  %i.v = sitofp reassoc nsz arcp contract afn i32 %2 to double ; 3 uses
  %i.w = fmul reassoc nnan nsz arcp contract afn double %i.v, 5.000000e-01 ; 3 uses
  %i.x = sitofp reassoc nsz arcp contract afn i32 %3 to double ; 3 uses
  %i.y = fmul reassoc nnan nsz arcp contract afn double %i.x, 5.000000e-01 ; 3 uses
  %i.z = fmul reassoc nnan nsz arcp contract afn double %i.q, 5.000000e-01
  %i.aa = tail call reassoc nsz arcp contract afn double @hypot(double noundef %i.q, double noundef %i.q) #19
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, 5.000000e-01
  %i.ac = tail call ptr @cairo_pattern_create_radial(double noundef %i.w, double noundef %i.y, double noundef %i.z, double noundef %i.w, double noundef %i.y, double noundef %i.ab) #18 ; 4 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 584
  %i.af = load double, ptr %i.ae, align 8, !tbaa !182
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 592
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !183
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 600
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !184
  tail call void @cairo_pattern_add_color_stop_rgb(ptr noundef %i.ac, double noundef 0.000000e+00, double noundef %i.af, double noundef %i.ah, double noundef %i.aj) #18
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 616
  %i.am = load double, ptr %i.al, align 8, !tbaa !185
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.ao = load double, ptr %i.an, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 632
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !187
  tail call void @cairo_pattern_add_color_stop_rgb(ptr noundef %i.ac, double noundef 1.000000e+00, double noundef %i.am, double noundef %i.ao, double noundef %i.aq) #18
  tail call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.v, double noundef %i.x) #18
  tail call void @cairo_set_source(ptr noundef %1, ptr noundef %i.ac) #18
  tail call void @cairo_fill(ptr noundef %1) #18
  tail call void @cairo_pattern_destroy(ptr noundef %i.ac) #18
  tail call void @cairo_translate(ptr noundef %1, double noundef %i.w, double noundef %i.y) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 2592 ; 2 uses
  %i.as = load double, ptr %i.ar, align 32, !tbaa !145
  tail call void @cairo_rotate(ptr noundef %1, double noundef %i.as) #18
  tail call void @cairo_scale(ptr noundef %1, double noundef 1.000000e+00, double noundef -1.000000e+00) #18
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 712
  %.sroa.0.0.copyload311 = load double, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 720
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 728
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 736
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0.0.copyload311, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %.sroa.6.0.copyload) #18
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1432
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !143
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ax) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 2380
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !109
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ba, float 1.000000e+02, float f0x3C23D70A ; 3 uses
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.e, %i.bb
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.bc)
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, 1.000000e+00 ; 2 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 1.000000e+00
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %invariant.op = fmul reassoc nnan nsz arcp contract afn float %i.bb, 2.900000e+01
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 2588
  %i.bh = fmul reassoc nsz arcp contract afn float %i.e, f0x3E968904
  %i.bi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !112
  %i.bl = tail call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.g) #18
  %i.bm = tail call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bk, i32 noundef 1, i32 noundef %i.g, i32 noundef %i.g, i32 noundef %i.bl) #18 ; 4 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1440
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !188 ; 2 uses
  tail call void @cairo_surface_set_device_scale(ptr noundef %i.bm, double noundef %i.bp, double noundef %i.bp) #18
  %i.bq = tail call ptr @cairo_pattern_create_for_surface(ptr noundef %i.bm) #18 ; 14 uses
  tail call void @cairo_pattern_set_extend(ptr noundef %i.bq, i32 noundef 3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.g to double ; 2 uses
  %i.bs = fmul reassoc nnan nsz arcp contract afn double %i.br, 5.000000e-01
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1440
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !188
  %i.bw = fdiv reassoc nsz arcp contract afn double %i.bs, %i.bv ; 2 uses
  call void @cairo_matrix_init_translate(ptr noundef nonnull %4, double noundef %i.bw, double noundef %i.bw) #18
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1440
  %i.bz = load double, ptr %i.by, align 8, !tbaa !188
  %i.ca = fmul reassoc nsz arcp contract afn double %i.bz, %i.q
  %i.cb = fdiv reassoc nsz arcp contract afn double %i.br, %i.ca ; 2 uses
  call void @cairo_matrix_scale(ptr noundef nonnull %4, double noundef %i.cb, double noundef %i.cb) #18
  call void @cairo_pattern_set_matrix(ptr noundef %i.bq, ptr noundef nonnull %4) #18
  call void @cairo_set_operator(ptr noundef %1, i32 noundef 12) #18
  call void @cairo_push_group(ptr noundef %1) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.cf = phi float [ 1.000000e+00, %.lr.ph ], [ %i.cq, %bb.e ] ; 2 uses
  %.0294346 = phi i32 [ 1, %.lr.ph ], [ %i.cp, %bb.e ]
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.cf, %i.bb
  %i.ch = load i32, ptr %i.bg, align 4, !tbaa !106
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cj = fmul reassoc nsz arcp contract afn float %invariant.op, %i.cf
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.bi
  %i.cl = tail call reassoc nsz arcp contract afn float @log1pf(float noundef %i.ck) #19
  %i.cm = fmul reassoc nsz arcp contract afn float %i.bh, %i.cl
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0295 = phi nsz float [ %i.cm, %bb.d ], [ %i.cg, %bb.c ]
  %i.cn = fpext reassoc nsz arcp contract afn float %.0295 to double
  %i.co = fmul reassoc nsz arcp contract afn double %i.t, %i.cn
  tail call void @cairo_arc(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.co, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  tail call void @cairo_stroke(ptr noundef %1) #18
  %i.cp = add nuw nsw i32 %.0294346, 1            ; 2 uses
  %i.cq = uitofp nsz nneg i32 %i.cp to float      ; 2 uses
  %i.cr = fcmp reassoc nsz arcp contract afn ogt float %i.be, %i.cq
  br i1 %i.cr, label %bb.c, label %._crit_edge

.preheader345.1:                                  ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader345.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader345.1 ], [ %indvars.iv.next.1, %bb.f ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.1
  %i.cu = load <2 x float>, ptr %i.ct, align 8, !tbaa !111
  %i.cv = fpext reassoc nsz arcp contract afn <2 x float> %i.cu to <2 x double>
  %i.cw = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.cv ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = extractelement <2 x double> %i.cw, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.cx, double noundef %i.cy) #18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 48
  br i1 %exitcond.1.not, label %.preheader345.2, label %bb.f

.preheader345.2:                                  ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader345.2
  %indvars.iv.2 = phi i64 [ 0, %.preheader345.2 ], [ %indvars.iv.next.2, %bb.g ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.2
  %i.db = load <2 x float>, ptr %i.da, align 8, !tbaa !111
  %i.dc = fpext reassoc nsz arcp contract afn <2 x float> %i.db to <2 x double>
  %i.dd = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.dc ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = extractelement <2 x double> %i.dd, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.de, double noundef %i.df) #18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 48
  br i1 %exitcond.2.not, label %.preheader345.3, label %bb.g

.preheader345.3:                                  ; preds = %bb.g
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1216 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader345.3
  %indvars.iv.3 = phi i64 [ 0, %.preheader345.3 ], [ %indvars.iv.next.3, %bb.h ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv.3
  %i.di = load <2 x float>, ptr %i.dh, align 8, !tbaa !111
  %i.dj = fpext reassoc nsz arcp contract afn <2 x float> %i.di to <2 x double>
  %i.dk = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.dj ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.dl, double noundef %i.dm) #18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 48
  br i1 %exitcond.3.not, label %.preheader345.4, label %bb.h

.preheader345.4:                                  ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader345.4
  %indvars.iv.4 = phi i64 [ 0, %.preheader345.4 ], [ %indvars.iv.next.4, %bb.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.4
  %i.dp = load <2 x float>, ptr %i.do, align 8, !tbaa !111
  %i.dq = fpext reassoc nsz arcp contract afn <2 x float> %i.dp to <2 x double>
  %i.dr = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.dq ; 2 uses
  %i.ds = extractelement <2 x double> %i.dr, i64 0
  %i.dt = extractelement <2 x double> %i.dr, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ds, double noundef %i.dt) #18
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 2 uses
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, 48
  br i1 %exitcond.4.not, label %.preheader345.5, label %bb.i

.preheader345.5:                                  ; preds = %bb.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 1984 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader345.5
  %indvars.iv.5 = phi i64 [ 0, %.preheader345.5 ], [ %indvars.iv.next.5, %bb.j ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.5
  %i.dw = load <2 x float>, ptr %i.dv, align 8, !tbaa !111
  %i.dx = fpext reassoc nsz arcp contract afn <2 x float> %i.dw to <2 x double>
  %i.dy = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.dx ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = extractelement <2 x double> %i.dy, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.dz, double noundef %i.ea) #18
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1 ; 2 uses
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, 48
  br i1 %exitcond.5.not, label %bb.k, label %bb.j

bb.k:                                             ; preds = %bb.j
  call void @cairo_close_path(ptr noundef %1) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_pop_group_to_source(ptr noundef %1) #18
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef 4.000000e-01) #18
  %i.eb = load float, ptr %i.cc, align 64, !tbaa !111
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !111
  %i.ee = fpext reassoc nsz arcp contract afn float %i.eb to double
  %i.ef = fmul reassoc nsz arcp contract afn double %i.t, %i.ee
  %i.eg = fpext reassoc nsz arcp contract afn float %i.ed to double
  %i.eh = fmul reassoc nsz arcp contract afn double %i.t, %i.eg
  call void @cairo_arc(ptr noundef %1, double noundef %i.ef, double noundef %i.eh, double noundef %i.k, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_fill_preserve(ptr noundef %1) #18
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 712
  %.sroa.0312.0.copyload = load double, ptr %i.ej, align 8
  %.sroa.4313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 720
  %.sroa.4313.0.copyload = load double, ptr %.sroa.4313.0..sroa_idx, align 8
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 728
  %.sroa.5314.0.copyload = load double, ptr %.sroa.5314.0..sroa_idx, align 8
  %.sroa.6315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 736
  %.sroa.6315.0.copyload = load double, ptr %.sroa.6315.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0312.0.copyload, double noundef %.sroa.4313.0.copyload, double noundef %.sroa.5314.0.copyload, double noundef %.sroa.6315.0.copyload) #18
  call void @cairo_stroke(ptr noundef %1) #18
  %i.ek = load float, ptr %i.cs, align 64, !tbaa !111
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.em = load float, ptr %i.el, align 4, !tbaa !111
  %i.en = fpext reassoc nsz arcp contract afn float %i.ek to double
  %i.eo = fmul reassoc nsz arcp contract afn double %i.t, %i.en
  %i.ep = fpext reassoc nsz arcp contract afn float %i.em to double
  %i.eq = fmul reassoc nsz arcp contract afn double %i.t, %i.ep
  call void @cairo_arc(ptr noundef %1, double noundef %i.eo, double noundef %i.eq, double noundef %i.k, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_fill_preserve(ptr noundef %1) #18
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 712
  %.sroa.0312.0.copyload.1 = load double, ptr %i.es, align 8
  %.sroa.4313.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.er, i64 720
  %.sroa.4313.0.copyload.1 = load double, ptr %.sroa.4313.0..sroa_idx.1, align 8
  %.sroa.5314.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.er, i64 728
  %.sroa.5314.0.copyload.1 = load double, ptr %.sroa.5314.0..sroa_idx.1, align 8
  %.sroa.6315.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.er, i64 736
  %.sroa.6315.0.copyload.1 = load double, ptr %.sroa.6315.0..sroa_idx.1, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0312.0.copyload.1, double noundef %.sroa.4313.0.copyload.1, double noundef %.sroa.5314.0.copyload.1, double noundef %.sroa.6315.0.copyload.1) #18
  call void @cairo_stroke(ptr noundef %1) #18
  %i.et = load float, ptr %i.cz, align 64, !tbaa !111
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 836
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !111
  %i.ew = fpext reassoc nsz arcp contract afn float %i.et to double
  %i.ex = fmul reassoc nsz arcp contract afn double %i.t, %i.ew
  %i.ey = fpext reassoc nsz arcp contract afn float %i.ev to double
  %i.ez = fmul reassoc nsz arcp contract afn double %i.t, %i.ey
  call void @cairo_arc(ptr noundef %1, double noundef %i.ex, double noundef %i.ez, double noundef %i.k, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_fill_preserve(ptr noundef %1) #18
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 712
  %.sroa.0312.0.copyload.2 = load double, ptr %i.fb, align 8
  %.sroa.4313.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.fa, i64 720
  %.sroa.4313.0.copyload.2 = load double, ptr %.sroa.4313.0..sroa_idx.2, align 8
  %.sroa.5314.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.fa, i64 728
  %.sroa.5314.0.copyload.2 = load double, ptr %.sroa.5314.0..sroa_idx.2, align 8
  %.sroa.6315.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.fa, i64 736
  %.sroa.6315.0.copyload.2 = load double, ptr %.sroa.6315.0..sroa_idx.2, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0312.0.copyload.2, double noundef %.sroa.4313.0.copyload.2, double noundef %.sroa.5314.0.copyload.2, double noundef %.sroa.6315.0.copyload.2) #18
  call void @cairo_stroke(ptr noundef %1) #18
  %i.fc = load float, ptr %i.dg, align 64, !tbaa !111
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 1220
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !111
  %i.ff = fpext reassoc nsz arcp contract afn float %i.fc to double
  %i.fg = fmul reassoc nsz arcp contract afn double %i.t, %i.ff
  %i.fh = fpext reassoc nsz arcp contract afn float %i.fe to double
  %i.fi = fmul reassoc nsz arcp contract afn double %i.t, %i.fh
  call void @cairo_arc(ptr noundef %1, double noundef %i.fg, double noundef %i.fi, double noundef %i.k, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_fill_preserve(ptr noundef %1) #18
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 712
  %.sroa.0312.0.copyload.3 = load double, ptr %i.fk, align 8
  %.sroa.4313.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.fj, i64 720
  %.sroa.4313.0.copyload.3 = load double, ptr %.sroa.4313.0..sroa_idx.3, align 8
  %.sroa.5314.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.fj, i64 728
  %.sroa.5314.0.copyload.3 = load double, ptr %.sroa.5314.0..sroa_idx.3, align 8
  %.sroa.6315.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.fj, i64 736
  %.sroa.6315.0.copyload.3 = load double, ptr %.sroa.6315.0..sroa_idx.3, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0312.0.copyload.3, double noundef %.sroa.4313.0.copyload.3, double noundef %.sroa.5314.0.copyload.3, double noundef %.sroa.6315.0.copyload.3) #18
  call void @cairo_stroke(ptr noundef %1) #18
  %i.fl = load float, ptr %i.dn, align 64, !tbaa !111
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 1604
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !111
  %i.fo = fpext reassoc nsz arcp contract afn float %i.fl to double
  %i.fp = fmul reassoc nsz arcp contract afn double %i.t, %i.fo
  %i.fq = fpext reassoc nsz arcp contract afn float %i.fn to double
  %i.fr = fmul reassoc nsz arcp contract afn double %i.t, %i.fq
  call void @cairo_arc(ptr noundef %1, double noundef %i.fp, double noundef %i.fr, double noundef %i.k, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_fill_preserve(ptr noundef %1) #18
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 712
  %.sroa.0312.0.copyload.4 = load double, ptr %i.ft, align 8
  %.sroa.4313.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.fs, i64 720
  %.sroa.4313.0.copyload.4 = load double, ptr %.sroa.4313.0..sroa_idx.4, align 8
  %.sroa.5314.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.fs, i64 728
  %.sroa.5314.0.copyload.4 = load double, ptr %.sroa.5314.0..sroa_idx.4, align 8
  %.sroa.6315.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %i.fs, i64 736
  %.sroa.6315.0.copyload.4 = load double, ptr %.sroa.6315.0..sroa_idx.4, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0312.0.copyload.4, double noundef %.sroa.4313.0.copyload.4, double noundef %.sroa.5314.0.copyload.4, double noundef %.sroa.6315.0.copyload.4) #18
  call void @cairo_stroke(ptr noundef %1) #18
  %i.fu = load float, ptr %i.du, align 64, !tbaa !111
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 1988
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !111
  %i.fx = fpext reassoc nsz arcp contract afn float %i.fu to double
  %i.fy = fmul reassoc nsz arcp contract afn double %i.t, %i.fx
  %i.fz = fpext reassoc nsz arcp contract afn float %i.fw to double
  %i.ga = fmul reassoc nsz arcp contract afn double %i.t, %i.fz
  call void @cairo_arc(ptr noundef %1, double noundef %i.fy, double noundef %i.ga, double noundef %i.k, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_fill_preserve(ptr noundef %1) #18
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 712
  %.sroa.0312.0.copyload.5 = load double, ptr %i.gc, align 8
  %.sroa.4313.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.gb, i64 720
  %.sroa.4313.0.copyload.5 = load double, ptr %.sroa.4313.0..sroa_idx.5, align 8
  %.sroa.5314.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.gb, i64 728
  %.sroa.5314.0.copyload.5 = load double, ptr %.sroa.5314.0..sroa_idx.5, align 8
  %.sroa.6315.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %i.gb, i64 736
  %.sroa.6315.0.copyload.5 = load double, ptr %.sroa.6315.0..sroa_idx.5, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0312.0.copyload.5, double noundef %.sroa.4313.0.copyload.5, double noundef %.sroa.5314.0.copyload.5, double noundef %.sroa.6315.0.copyload.5) #18
  call void @cairo_stroke(ptr noundef %1) #18
  %i.gd = load ptr, ptr %i.b, align 64, !tbaa !135
  %i.ge = call i32 @cairo_format_stride_for_width(i32 noundef 2, i32 noundef %i.g) #18
  %i.gf = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.gd, i32 noundef 2, i32 noundef %i.g, i32 noundef %i.g, i32 noundef %i.ge) #18 ; 4 uses
  %i.gg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1440
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !188 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.gf, double noundef %i.gi, double noundef %i.gi) #18
  %i.gj = call ptr @cairo_pattern_create_for_surface(ptr noundef %i.gf) #18 ; 5 uses
  call void @cairo_pattern_set_matrix(ptr noundef %i.gj, ptr noundef nonnull %4) #18
  call void @cairo_set_operator(ptr noundef %1, i32 noundef 12) #18
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !119 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 60
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !189
  %.not = icmp eq i32 %i.gm, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.l:                                             ; preds = %._crit_edge, %bb.l
  %indvars.iv = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.go = load <2 x float>, ptr %i.gn, align 8, !tbaa !111
  %i.gp = fpext reassoc nsz arcp contract afn <2 x float> %i.go to <2 x double>
  %i.gq = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.gp ; 2 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = extractelement <2 x double> %i.gq, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %i.gr, double noundef %i.gs) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 48
  br i1 %exitcond.not, label %.preheader345.1, label %bb.l

bb.m:                                             ; preds = %bb.k
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !128
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !191
  %i.gx = icmp eq i32 %i.gw, 0
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.gy = phi i1 [ false, %bb.k ], [ %i.gx, %bb.m ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !129
  %.not305 = icmp eq ptr %i.ha, null
  br i1 %.not305, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !130
  %i.hd = icmp ne i32 %i.hc, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.he = phi i1 [ false, %bb.n ], [ %i.hd, %bb.o ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 2584
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !105
  %i.hh = icmp eq i32 %i.hg, 2
  br i1 %i.hh, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 2644
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !146
  %i.hk = icmp sgt i32 %i.hj, 0                   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 2664
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !147 ; 2 uses
  %.not306 = icmp eq i32 %i.hm, 0
  br i1 %.not306, label %bb.r, label %.thread340

bb.r:                                             ; preds = %bb.q
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 2632
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !96
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %i.hp = phi i1 [ %i.hk, %bb.r ], [ false, %bb.p ] ; 2 uses
  %i.hq = phi i32 [ %i.ho, %bb.r ], [ 0, %bb.p ]  ; 2 uses
  %i.hr = icmp ne i32 %i.hq, 0
  %or.cond = select i1 %i.hr, i1 true, i1 %i.hp
  br i1 %or.cond, label %.thread340, label %bb.am

.thread340:                                       ; preds = %bb.q, %bb.s
  %i.hs = phi i32 [ %i.hq, %bb.s ], [ %i.hm, %bb.q ] ; 2 uses
  %i.ht = phi i1 [ %i.hp, %bb.s ], [ %i.hk, %bb.q ] ; 2 uses
  call void @cairo_save(ptr noundef %1) #18
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 2640 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 16, !tbaa !99
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @dt_scopes_vec_color_harmony_width, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !111 ; 10 uses
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1432
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !143
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ib) #18
  br i1 %i.ht, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.thread340
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 2644
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !146 ; 2 uses
  %i.ie = icmp sgt i32 %i.id, 0
  br i1 %i.ie, label %.lr.ph359, label %.loopexit344

.lr.ph359:                                        ; preds = %bb.t
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 2648
  %i.ig = fmul reassoc nsz arcp contract afn float %i.hy, f0x40C90FDB ; 2 uses
  %i.ih = fmul reassoc nsz arcp contract afn float %i.e, 8.000000e-01
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 2588
  %i.ij = fmul reassoc nsz arcp contract afn float %i.e, 2.320000e+01
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ij, %i.e
  %i.il = fmul reassoc nsz arcp contract afn float %i.e, f0x3E968904
  %wide.trip.count382 = zext nneg i32 %i.id to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph359, %bb.w
  %indvars.iv379 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next380, %bb.w ] ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv379
  %i.in = load float, ptr %i.im, align 4, !tbaa !111
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, f0x40C90FDB ; 2 uses
  %i.ip = load i32, ptr %i.ii, align 4, !tbaa !106
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ir = call reassoc nsz arcp contract afn float @log1pf(float noundef %i.ik) #19
  %i.is = fmul reassoc nsz arcp contract afn float %i.il, %i.ir
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0290 = phi nsz float [ %i.is, %bb.v ], [ %i.ih, %bb.u ]
  %i.it = fpext reassoc nsz arcp contract afn float %.0290 to double
  %i.iu = fmul reassoc nsz arcp contract afn double %i.t, %i.it
  %i.iv = fsub reassoc nsz arcp contract afn float %i.io, %i.ig
  %i.iw = fpext reassoc nsz arcp contract afn float %i.iv to double
  %i.ix = fadd reassoc nsz arcp contract afn float %i.io, %i.ig
  %i.iy = fpext reassoc nsz arcp contract afn float %i.ix to double
  call void @cairo_arc(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.iu, double noundef %i.iw, double noundef %i.iy) #18
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %.loopexit344, label %bb.u

bb.x:                                             ; preds = %.thread340
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.iz = zext i32 %i.hs to i64
  %i.ja = getelementptr inbounds nuw [48 x i8], ptr @_vec_color_harmonies, i64 %i.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 16 dereferenceable(48) %i.ja, i64 48, i1 false), !tbaa.struct !192
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !193 ; 4 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %bb.x
  %invariant.op350 = fmul reassoc nsz arcp contract afn float %i.e, 2.900000e+01 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 2588 ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.e, f0x3E968904 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.ji = add nsw i32 %i.jc, -1                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 2636 ; 2 uses
  %i.jk = zext nneg i32 %i.ji to i64
  %wide.trip.count = zext nneg i32 %i.jc to i64
  %i.jl = load float, ptr %i.je, align 4, !tbaa !111 ; 2 uses
  %i.jm = fmul reassoc nsz arcp contract afn float %i.jl, %i.e
  %i.jn = load i32, ptr %i.jf, align 4, !tbaa !106
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph353
  %i.jp = fmul reassoc nsz arcp contract afn float %invariant.op350, %i.jl
  %.reass.reass356.peel = fdiv reassoc nsz arcp contract afn float %i.jp, %i.e
  %i.jq = call reassoc nsz arcp contract afn float @log1pf(float noundef %.reass.reass356.peel) #19
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jg, %i.jq
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph353
  %.0288.peel = phi nsz float [ %i.jr, %bb.y ], [ %i.jm, %.lr.ph353 ]
  %.pre.pre = load float, ptr %i.jh, align 4, !tbaa !111 ; 3 uses
  %.not394 = icmp eq i32 %i.ji, 0
  br i1 %.not394, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jt = load float, ptr %i.js, align 8, !tbaa !111
  %i.ju = fsub reassoc nsz arcp contract afn float %i.jt, %.pre.pre
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, 5.000000e-01 ; 2 uses
  %i.jw = fcmp reassoc nsz arcp contract afn olt float %i.hy, %i.jv
  %.310.peel = select reassoc nsz arcp contract afn i1 %i.jw, float %i.hy, float %i.jv
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.jx = phi reassoc nsz arcp contract afn float [ %.310.peel, %bb.aa ], [ %i.hy, %bb.z ]
  %i.jy = fsub reassoc nsz arcp contract afn float %.pre.pre, %i.hy
  %i.jz = fmul reassoc nsz arcp contract afn float %i.jy, f0x40C90FDB
  %i.ka = load i32, ptr %i.jj, align 4, !tbaa !98
  %i.kb = sitofp reassoc nsz arcp contract afn i32 %i.ka to float
  %i.kc = fmul reassoc nnan nsz arcp contract afn float %i.kb, f0x3C8EFA36 ; 2 uses
  %i.kd = fadd reassoc nsz arcp contract afn float %i.kc, %i.jz
  %i.ke = fadd reassoc nsz arcp contract afn float %.pre.pre, %i.jx
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, f0x40C90FDB
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kc, %i.kf
  %i.kh = fpext reassoc nsz arcp contract afn float %.0288.peel to double
  %i.ki = fmul reassoc nsz arcp contract afn double %i.t, %i.kh
  %i.kj = fpext reassoc nsz arcp contract afn float %i.kd to double
  %i.kk = fpext reassoc nsz arcp contract afn float %i.kg to double
  call void @cairo_arc(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ki, double noundef %i.kj, double noundef %i.kk) #18
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %exitcond377.peel.not = icmp eq i32 %i.jc, 1
  br i1 %exitcond377.peel.not, label %._crit_edge354, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.ab
  %i.kl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  br label %.peel.next

._crit_edge354:                                   ; preds = %bb.af, %bb.ab, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.loopexit344

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.af
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %bb.af ], [ 1, %.peel.next.preheader ] ; 5 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv374
  %i.kn = load float, ptr %i.km, align 4, !tbaa !111 ; 2 uses
  %i.ko = fmul reassoc nsz arcp contract afn float %i.kn, %i.e
  %i.kp = load i32, ptr %i.jf, align 4, !tbaa !106
  %i.kq = icmp eq i32 %i.kp, 0
end_hunk_1
begin_hunk_2_@_vec_draw:bb.a
  %i.lr = fadd reassoc nsz arcp contract afn float %i.lq, %i.ln
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lk, %i.ll
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, f0x40C90FDB
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lq, %i.lt
  %i.lv = fpext reassoc nsz arcp contract afn float %.0288 to double
  %i.lw = fmul reassoc nsz arcp contract afn double %i.t, %i.lv
  %i.lx = fpext reassoc nsz arcp contract afn float %i.lr to double
  %i.ly = fpext reassoc nsz arcp contract afn float %i.lu to double
  call void @cairo_arc(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.lw, double noundef %i.lx, double noundef %i.ly) #18
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #18
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count
  br i1 %exitcond377.not, label %._crit_edge354, label %.peel.next, !llvm.loop !173

.loopexit344:                                     ; preds = %bb.w, %bb.t, %._crit_edge354
  call void @cairo_close_path(ptr noundef %1) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  %i.lz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 680
  %.sroa.0316.0.copyload = load double, ptr %i.ma, align 8
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 688
  %.sroa.4317.0.copyload = load double, ptr %.sroa.4317.0..sroa_idx, align 8
  %.sroa.5318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 696
  %.sroa.5318.0.copyload = load double, ptr %.sroa.5318.0..sroa_idx, align 8
  %.sroa.6319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 704
  %.sroa.6319.0.copyload = load double, ptr %.sroa.6319.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0316.0.copyload, double noundef %.sroa.4317.0.copyload, double noundef %.sroa.5318.0.copyload, double noundef %.sroa.6319.0.copyload) #18
  %i.mb = load i32, ptr %i.hu, align 16, !tbaa !99
  %i.mc = icmp eq i32 %i.mb, 3
  br i1 %i.mc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit344
  call void @cairo_stroke(ptr noundef %1) #18
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit344
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_push_group(ptr noundef %1) #18
  %i.md = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.27) #18
  %i.me = fpext reassoc nsz arcp contract afn float %i.md to double
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef %i.me) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #18
  call void @cairo_fill(ptr noundef %1) #18
  %i.mf = call ptr @cairo_pop_group(ptr noundef %1) #18 ; 2 uses
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.gj) #18
  call void @cairo_push_group(ptr noundef %1) #18
  call void @cairo_mask(ptr noundef %1, ptr noundef %i.mf) #18
  call void @cairo_pattern_destroy(ptr noundef %i.mf) #18
  call void @cairo_pattern_destroy(ptr noundef %i.gj) #18
  %i.mg = call ptr @cairo_pop_group(ptr noundef %1) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0292 = phi ptr [ %i.gj, %bb.ag ], [ %i.mg, %bb.ah ]
  br i1 %i.ht, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !100
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 360
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !195
  %i.ml = call i32 @gtk_widget_get_visible(ptr noundef %i.mk) #18
  %.not308 = icmp eq i32 %i.ml, 0
  br i1 %.not308, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mm = zext i32 %i.hs to i64
  %i.mn = getelementptr inbounds nuw [48 x i8], ptr @_vec_color_harmonies, i64 %i.mm
  %.sroa.0.0.copyload = load ptr, ptr %i.mn, align 16, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 336
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !196
  %i.mr = call ptr @pango_font_description_copy_static(ptr noundef %i.mq) #18 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.mr, i32 noundef 400) #18
  %i.ms = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 1432
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !143
  %i.mv = fmul reassoc nsz arcp contract afn double %i.mu, 1.638400e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.mr, double noundef %i.mv) #18
  %i.mw = call ptr @pango_cairo_create_layout(ptr noundef %1) #18 ; 6 uses
  call void @pango_layout_set_font_description(ptr noundef %i.mw, ptr noundef %i.mr) #18
  call void @pango_layout_set_alignment(ptr noundef %i.mw, i32 noundef 0) #18
  %i.mx = getelementptr inbounds nuw i8, ptr %i.b, i64 2636
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !98
  %i.mz = call ptr @dcgettext(ptr noundef null, ptr noundef %.sroa.0.0.copyload, i32 noundef 5) #18
  %i.na = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.28, i32 noundef %i.my, ptr noundef %i.mz) #18 ; 2 uses
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 680
  %.sroa.0320.0.copyload = load double, ptr %i.nc, align 8
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 688
  %.sroa.4321.0.copyload = load double, ptr %.sroa.4321.0..sroa_idx, align 8
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 696
  %.sroa.5322.0.copyload = load double, ptr %.sroa.5322.0..sroa_idx, align 8
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nb, i64 704
  %.sroa.6323.0.copyload = load double, ptr %.sroa.6323.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0320.0.copyload, double noundef %.sroa.4321.0.copyload, double noundef %.sroa.5322.0.copyload, double noundef %.sroa.6323.0.copyload) #18
  call void @pango_layout_set_text(ptr noundef %i.mw, ptr noundef %i.na, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.mw, ptr noundef null, ptr noundef nonnull %6) #18
  call void @cairo_scale(ptr noundef %1, double noundef 1.000000e+00, double noundef -1.000000e+00) #18
  %i.nd = load double, ptr %i.ar, align 32, !tbaa !145
  %i.ne = fneg reassoc nsz arcp contract afn double %i.nd
  call void @cairo_rotate(ptr noundef %1, double noundef %i.ne) #18
  %i.nf = fmul reassoc nnan nsz arcp contract afn double %i.v, -4.800000e-01
  %i.ng = load i32, ptr %6, align 4, !tbaa !198
  %i.nh = sitofp reassoc nsz arcp contract afn i32 %i.ng to double
  %i.ni = fsub reassoc nsz arcp contract afn double %i.nf, %i.nh
  %i.nj = fmul reassoc nnan nsz arcp contract afn double %i.x, 4.800000e-01
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !199
  %i.nm = sitofp reassoc nsz arcp contract afn i32 %i.nl to double
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !200
  %i.np = sitofp reassoc nsz arcp contract afn i32 %i.no to double
  %i.nq = fadd reassoc nsz arcp contract afn double %i.nm, %i.np
  %i.nr = fsub reassoc nsz arcp contract afn double %i.nj, %i.nq
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ni, double noundef %i.nr) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.mw) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @pango_font_description_free(ptr noundef %i.mr) #18
  call void @g_object_unref(ptr noundef %i.mw) #18
  call void @g_free(ptr noundef %i.na) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  call void @cairo_restore(ptr noundef %1) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.s, %bb.al
  %.1 = phi ptr [ %.0292, %bb.al ], [ %i.gj, %bb.s ] ; 6 uses
  %or.cond3 = select i1 %i.gy, i1 true, i1 %i.he
  br i1 %or.cond3, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  call void @cairo_push_group(ptr noundef %1) #18
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_mask(ptr noundef %1, ptr noundef %.1) #18
  call void @cairo_set_operator(ptr noundef %1, i32 noundef 21) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 5.500000e-01) #18
  call void @cairo_mask(ptr noundef %1, ptr noundef %.1) #18
  call void @cairo_pattern_destroy(ptr noundef %i.bq) #18
  call void @cairo_surface_destroy(ptr noundef %i.bm) #18
  call void @cairo_pattern_destroy(ptr noundef %.1) #18
  call void @cairo_surface_destroy(ptr noundef %i.gf) #18
  call void @cairo_pop_group_to_source(ptr noundef %1) #18
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef 5.000000e-01) #18
  br label %bb.ao

.critedge:                                        ; preds = %bb.am
  call void @cairo_set_source(ptr noundef %1, ptr noundef %i.bq) #18
  call void @cairo_mask(ptr noundef %1, ptr noundef %.1) #18
  call void @cairo_set_operator(ptr noundef %1, i32 noundef 21) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 5.500000e-01) #18
  call void @cairo_mask(ptr noundef %1, ptr noundef %.1) #18
  call void @cairo_pattern_destroy(ptr noundef %i.bq) #18
  call void @cairo_surface_destroy(ptr noundef %i.bm) #18
  call void @cairo_pattern_destroy(ptr noundef %.1) #18
  call void @cairo_surface_destroy(ptr noundef %i.gf) #18
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge, %bb.an
  call void @cairo_set_operator(ptr noundef %1, i32 noundef 2) #18
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 712
  %.sroa.0324.0.copyload = load double, ptr %i.nt, align 8
  %.sroa.4325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 720
  %.sroa.4325.0.copyload = load double, ptr %.sroa.4325.0..sroa_idx, align 8
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 728
  %.sroa.5326.0.copyload = load double, ptr %.sroa.5326.0..sroa_idx, align 8
  %.sroa.6327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ns, i64 736
  %.sroa.6327.0.copyload = load double, ptr %.sroa.6327.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0324.0.copyload, double noundef %.sroa.4325.0.copyload, double noundef %.sroa.5326.0.copyload, double noundef %.sroa.6327.0.copyload) #18
  %i.nu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 1432
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !143
  %i.nx = fmul reassoc nsz arcp contract afn double %i.nw, 1.500000e+00
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.nx) #18
  call void @cairo_new_sub_path(ptr noundef %1) #18
  %i.ny = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1432
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !143
  %i.ob = fmul reassoc nsz arcp contract afn double %i.oa, 3.000000e+00
  call void @cairo_arc(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ob, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_fill(ptr noundef %1) #18
  br i1 %i.gy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 680
  %.sroa.0328.0.copyload = load double, ptr %i.od, align 8
  %.sroa.4329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oc, i64 688
  %.sroa.4329.0.copyload = load double, ptr %.sroa.4329.0..sroa_idx, align 8
  %.sroa.5330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oc, i64 696
  %.sroa.5330.0.copyload = load double, ptr %.sroa.5330.0..sroa_idx, align 8
  %.sroa.6331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oc, i64 704
  %.sroa.6331.0.copyload = load double, ptr %.sroa.6331.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0328.0.copyload, double noundef %.sroa.4329.0.copyload, double noundef %.sroa.5330.0.copyload, double noundef %.sroa.6331.0.copyload) #18
  %i.oe = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.of = load <2 x float>, ptr %i.oe, align 16, !tbaa !111
  %i.og = fpext reassoc nsz arcp contract afn <2 x float> %i.of to <2 x double> ; 2 uses
  %i.oh = extractelement <2 x double> %i.og, i64 0
  %i.oi = fmul reassoc nsz arcp contract afn double %i.t, %i.oh
  %i.oj = extractelement <2 x double> %i.og, i64 1
  %i.ok = fmul reassoc nsz arcp contract afn double %i.t, %i.oj
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1432
  %i.on = load double, ptr %i.om, align 8, !tbaa !143
  %i.oo = fmul reassoc nsz arcp contract afn double %i.on, 3.000000e+00
  call void @cairo_arc(ptr noundef %1, double noundef %i.oi, double noundef %i.ok, double noundef %i.oo, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_fill(ptr noundef %1) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %i.he, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.aq
  %.0287360 = load ptr, ptr %i.gz, align 8, !tbaa !201 ; 2 uses
  %.not309361 = icmp eq ptr %.0287360, null
  br i1 %.not309361, label %.loopexit, label %.lr.ph364

.lr.ph364:                                        ; preds = %.preheader
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph364, %bb.au
  %.0287363 = phi ptr [ %.0287360, %.lr.ph364 ], [ %.0287, %bb.au ] ; 2 uses
  %.0362 = phi i32 [ 0, %.lr.ph364 ], [ %i.po, %bb.au ] ; 2 uses
  %i.oq = load ptr, ptr %.0287363, align 8, !tbaa !133 ; 2 uses
  %i.or = load i32, ptr %i.op, align 32, !tbaa !131
  %i.os = icmp eq i32 %.0362, %i.or
  %i.ot = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !174 ; 8 uses
  br i1 %i.os, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 744
  %.sroa.0332.0.copyload = load double, ptr %i.ou, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 752
  %.sroa.4333.0.copyload = load double, ptr %.sroa.4333.0..sroa_idx, align 8
  %.sroa.5334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 760
  %.sroa.5334.0.copyload = load double, ptr %.sroa.5334.0..sroa_idx, align 8
  %.sroa.6335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 768
  %.sroa.6335.0.copyload = load double, ptr %.sroa.6335.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0332.0.copyload, double noundef %.sroa.4333.0.copyload, double noundef %.sroa.5334.0.copyload, double noundef %.sroa.6335.0.copyload) #18
  %i.ov = load <2 x float>, ptr %i.oq, align 4, !tbaa !111
  %i.ow = fpext reassoc nsz arcp contract afn <2 x float> %i.ov to <2 x double>
  %i.ox = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.ow ; 2 uses
  %i.oy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1432
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !143
  %i.pb = fmul reassoc nsz arcp contract afn double %i.pa, 6.000000e+00
  %i.pc = extractelement <2 x double> %i.ox, i64 0
  %i.pd = extractelement <2 x double> %i.ox, i64 1
  call void @cairo_arc(ptr noundef %1, double noundef %i.pc, double noundef %i.pd, double noundef %i.pb, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_fill(ptr noundef %1) #18
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ot, i64 680
  %.sroa.0336.0.copyload = load double, ptr %i.pe, align 8
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 688
  %.sroa.4337.0.copyload = load double, ptr %.sroa.4337.0..sroa_idx, align 8
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 696
  %.sroa.5338.0.copyload = load double, ptr %.sroa.5338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ot, i64 704
  %.sroa.6339.0.copyload = load double, ptr %.sroa.6339.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %.sroa.0336.0.copyload, double noundef %.sroa.4337.0.copyload, double noundef %.sroa.5338.0.copyload, double noundef %.sroa.6339.0.copyload) #18
  %i.pf = load <2 x float>, ptr %i.oq, align 4, !tbaa !111
  %i.pg = fpext reassoc nsz arcp contract afn <2 x float> %i.pf to <2 x double>
  %i.ph = fmul reassoc nsz arcp contract afn <2 x double> %i.ce, %i.pg ; 2 uses
  %i.pi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !137
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 1432
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !143
  %i.pl = fmul reassoc nsz arcp contract afn double %i.pk, 4.000000e+00
  %i.pm = extractelement <2 x double> %i.ph, i64 0
  %i.pn = extractelement <2 x double> %i.ph, i64 1
  call void @cairo_arc(ptr noundef %1, double noundef %i.pm, double noundef %i.pn, double noundef %i.pl, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #18
  call void @cairo_stroke(ptr noundef %1) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.po = add nuw nsw i32 %.0362, 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.0287363, i64 8
  %.0287 = load ptr, ptr %i.pp, align 8, !tbaa !201 ; 2 uses
  %.not309 = icmp eq ptr %.0287, null
  br i1 %.not309, label %.loopexit, label %bb.ar

.loopexit:                                        ; preds = %bb.au, %.preheader, %bb.aq
  call void @cairo_restore(ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.av

bb.av:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_vec_append_to_tooltip(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2584
  %i.d = load i32, ptr %i.c, align 8, !tbaa !105
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2632
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2644
  %i.i = load i32, ptr %i.h, align 4, !tbaa !146
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #18
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #18
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #18
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #18
  tail call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_vec_eventbox_scroll(ptr nofree noundef readonly captures(none) %0, double %1, double %2, double %3, double noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 10 uses
  %i.c = fcmp reassoc nsz arcp contract afn ogt double %4, 1.000000e+00
  %i.d = fcmp reassoc nsz arcp contract afn olt double %4, -1.000000e+00
  %i.e = select reassoc nsz arcp contract afn i1 %i.d, double -1.000000e+00, double %4
  %i.f = select reassoc nsz arcp contract afn i1 %i.c, double 1.000000e+00, double %i.e
  %i.g = fptosi double %i.f to i32                ; 5 uses
  %i.h = tail call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.i = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !117
  %i.j = or i32 %i.i, %5
  %i.k = and i32 %i.j, %i.h
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2640 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !99
  %i.n = add i32 %i.m, %i.g
  %i.o = and i32 %i.n, 3
  store i32 %i.o, ptr %i.l, align 8, !tbaa !99
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call i32 @gtk_accelerator_get_default_mod_mask() #18
  %i.q = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !117
  %i.r = or i32 %i.q, %5
  %i.s = and i32 %i.r, %i.p
  %.not47 = icmp eq i32 %i.s, 8
  br i1 %.not47, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2632
  %i.u = load i32, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %i.v = add i32 %i.g, 10
  %i.w = add i32 %i.v, %i.u
  %i.x = urem i32 %i.w, 10                        ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 2424 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ac, i32 noundef 0) #18
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ad = zext nneg i32 %i.x to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.af, i32 noundef 1) #18
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 2644 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !146
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = tail call i32 @gtk_accelerator_get_default_mod_mask() #18 ; 2 uses
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !146 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.am = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !117
  %i.an = or i32 %i.am, %5
  %i.ao = and i32 %i.an, %i.aj
  %.not49 = icmp eq i32 %i.ao, 4
  %i.ap = select reassoc nsz arcp contract afn i1 %.not49, float f0x3B360B61, float f0x3D2AAAAB
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 2648 ; 2 uses
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.as = fmul reassoc nnan nsz arcp contract afn float %i.ap, %i.ar
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.as, 1.000000e+00 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ak to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.ak, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %wide.load = load <8 x float>, ptr %i.at, align 4, !tbaa !111
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %wide.load, %broadcast.splat
  %i.av = frem reassoc nsz arcp contract afn <8 x float> %i.au, splat (float 1.000000e+00)
  store <8 x float> %i.av, ptr %i.at, align 4, !tbaa !111
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !111
  %.reass = fadd reassoc nsz arcp contract afn float %i.ay, %invariant.op
  %i.az = frem reassoc nsz arcp contract afn float %.reass, 1.000000e+00
  store float %i.az, ptr %i.ax, align 4, !tbaa !111
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !203

bb.i:                                             ; preds = %bb.g
  %i.ba = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !117
  %i.bb = or i32 %i.ba, %5
  %i.bc = and i32 %i.bb, %i.aj
  %.not48 = icmp eq i32 %i.bc, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2636
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !98
  %.fr44 = freeze i32 %i.be                       ; 2 uses
  br i1 %.not48, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = add nsw i32 %.fr44, %i.g
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bg = add i32 %.fr44, 7                       ; 2 uses
  %i.bh = srem i32 %i.bg, 15
  %i.bi = mul nsw i32 %i.g, 15
  %i.bj = add i32 %i.bg, %i.bi
  %i.bk = sub i32 %i.bj, %i.bh
end_hunk_2
begin_hunk_3_@_get_chromaticity:bb.a
  %i.et = sitofp <4 x i32> %i.es to <4 x float>
  %i.eu = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ep, splat (float f0x3D74552F)
  %i.ev = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.eu, splat (float f0xBEEE7397)
  %i.ew = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ev, %i.ep
  %i.ex = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ew, splat (float f0x3FBD96DD)
  %i.ey = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ex, %i.ep
  %i.ez = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ey, splat (float f0xC02153F6)
  %i.fa = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ez, %i.ep
  %i.fb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.fa, splat (float f0x4038D96C)
  %i.fc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ep, splat (float -1.000000e+00)
  %i.fd = fmul reassoc nsz arcp contract afn <4 x float> %i.fb, %i.fc
  %i.fe = fadd reassoc nsz arcp contract afn <4 x float> %i.fd, %i.et
  %i.ff = fmul reassoc nsz arcp contract afn <4 x float> %i.fe, splat (float 2.400000e+00)
  %i.fg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ff, <4 x float> splat (float 1.290000e+02))
  %i.fh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fg, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.fi = fadd reassoc nsz arcp contract afn <4 x float> %i.fh, splat (float -5.000000e-01)
  %i.fj = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.fi)
  %i.fk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.fj to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.fk, i64 0
  %foldExtExtBinop39 = fsub reassoc nsz arcp contract afn <4 x float> %i.fh, %i.fk
  %i.fl = extractelement <4 x float> %foldExtExtBinop39, i64 0 ; 4 uses
  %i.fm = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.fn = shl i32 %i.fm, 23
  %i.fo = add i32 %i.fn, 1065353216
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fl, f0x3C5DBE69
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, f0x3D5509F9
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fq, %i.fl
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, f0x3E773CC5
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, %i.fl
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, f0x3F3168B3
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.fl
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, f0x3F800016
  %i.fx = bitcast i32 %i.fo to float
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fw, %i.fx
  %i.fz = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ga = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn <2 x float> %i.fz, %i.ga ; 4 uses
  %i.gc = fptosi <2 x float> %i.ga to <2 x i32>
  %i.gd = shl <2 x i32> %i.gc, splat (i32 23)
  %i.ge = add <2 x i32> %i.gd, splat (i32 1065353216)
  %i.gf = fmul reassoc nsz arcp contract afn <2 x float> %i.gb, splat (float f0x3C5DBE69)
  %i.gg = fadd reassoc nsz arcp contract afn <2 x float> %i.gf, splat (float f0x3D5509F9)
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gb
  %i.gi = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, splat (float f0x3E773CC5)
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gb
  %i.gk = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, splat (float f0x3F3168B3)
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %i.gk, %i.gb
  %i.gm = fadd reassoc nsz arcp contract afn <2 x float> %i.gl, splat (float f0x3F800016)
  %i.gn = bitcast <2 x i32> %i.ge to <2 x float>
  %i.go = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, %i.gn ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn ugt float %i.ef, 4.045000e-02
  %.sroa.speculated33.i = select i1 %i.gp, float %i.fy, float %i.eg ; 5 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ugt float %i.ee, 4.045000e-02
  %i.gr = extractelement <2 x float> %i.go, i64 0
  %.sroa.speculated30.i = select i1 %i.gq, float %i.gr, float %i.eh ; 5 uses
  %i.gs = fcmp reassoc nsz arcp contract afn ugt float %i.ei, 4.045000e-02
  %i.gt = extractelement <2 x float> %i.go, i64 1
  %.sroa.speculated27.i = select i1 %i.gs, float %i.gt, float %i.ej ; 4 uses
  %i.gu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gu, float %.sroa.speculated27.i)
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.speculated33.i, float %.sroa.speculated30.i)
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gw, float %.sroa.speculated27.i) ; 14 uses
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gx, %i.gv ; 5 uses
  %i.gz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gx)
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gz, f0x358637BD
  %i.hb = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gy)
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %i.hb, f0x358637BD
  %or.cond.i.i = select i1 %i.ha, i1 %i.hc, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %dt_RGB_2_HSV.exit.i

bb.g:                                             ; preds = %bb.f
  %i.hd = fdiv reassoc nsz arcp contract afn float %i.gy, %i.gx
  %i.he = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated33.i, %i.gx
  br i1 %i.he, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hf = fsub reassoc nsz arcp contract afn float %.sroa.speculated30.i, %.sroa.speculated27.i
  %i.hg = fdiv reassoc nsz arcp contract afn float %i.hf, %i.gy
  br label %_dt_RGB_2_Hue.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.hh = fcmp reassoc nsz arcp contract afn oeq float %.sroa.speculated30.i, %i.gx
  br i1 %i.hh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hi = fsub reassoc nsz arcp contract afn float %.sroa.speculated27.i, %.sroa.speculated33.i
  %i.hj = fdiv reassoc nsz arcp contract afn float %i.hi, %i.gy
  %i.hk = fadd reassoc nsz arcp contract afn float %i.hj, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.hl = fsub reassoc nsz arcp contract afn float %.sroa.speculated33.i, %.sroa.speculated30.i
  %i.hm = fdiv reassoc nsz arcp contract afn float %i.hl, %i.gy
  %i.hn = fadd reassoc nsz arcp contract afn float %i.hm, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i.i = phi nsz float [ %i.hg, %bb.h ], [ %i.hk, %bb.j ], [ %i.hn, %bb.k ]
  %i.ho = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ho)
  %i.hq = fsub reassoc nsz arcp contract afn float %i.ho, %i.hp
  br label %dt_RGB_2_HSV.exit.i

dt_RGB_2_HSV.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %bb.f
  %.018.i.i = phi nsz float [ %i.hd, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.f ]
  %.0.i.i = phi nsz float [ %i.hq, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.f ]
  %i.hr = tail call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef 7, ptr noundef nonnull @dt_color_ryb_x_vtx, float noundef %.0.i.i, ptr noundef nonnull @dt_color_ryb_y_vtx, ptr noundef %4, i32 noundef 0) #18
  %i.hs = fmul reassoc nsz arcp contract afn float %.018.i.i, %i.gx ; 2 uses
  %i.ht = fsub reassoc nsz arcp contract afn float %i.gx, %i.hs ; 7 uses
  %i.hu = fmul reassoc nsz arcp contract afn float %i.hr, 6.000000e+00 ; 2 uses
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.hu) ; 2 uses
  %i.hw = fsub reassoc nsz arcp contract afn float %i.hu, %i.hv
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %i.hs ; 2 uses
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.ht ; 3 uses
  %i.hz = fsub reassoc nsz arcp contract afn float %i.gx, %i.hx ; 3 uses
  %i.ia = fptoui float %i.hv to i64
  switch i64 %i.ia, label %bb.p [
    i64 0, label %_rgb2ryb.exit
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
  ]

bb.l:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.m:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.n:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.o:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

bb.p:                                             ; preds = %dt_RGB_2_HSV.exit.i
  br label %_rgb2ryb.exit

_rgb2ryb.exit:                                    ; preds = %dt_RGB_2_HSV.exit.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink54.i.i.i = phi float [ %i.hz, %bb.l ], [ %i.ht, %bb.n ], [ %i.gx, %bb.p ], [ %i.hy, %bb.o ], [ %i.ht, %bb.m ], [ %i.gx, %dt_RGB_2_HSV.exit.i ] ; 5 uses
  %.sink53.i.i.i = phi float [ %i.gx, %bb.l ], [ %i.hz, %bb.n ], [ %i.ht, %bb.p ], [ %i.ht, %bb.o ], [ %i.gx, %bb.m ], [ %i.hy, %dt_RGB_2_HSV.exit.i ] ; 5 uses
  %.sink.i.i.i = phi float [ %i.ht, %bb.l ], [ %i.gx, %bb.n ], [ %i.hz, %bb.p ], [ %i.gx, %bb.o ], [ %i.hy, %bb.m ], [ %i.ht, %dt_RGB_2_HSV.exit.i ] ; 4 uses
  %i.ib = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.ic = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ib, float %.sink.i.i.i)
  %i.id = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink54.i.i.i, float %.sink53.i.i.i)
  %i.ie = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.id, float %.sink.i.i.i) ; 4 uses
  %i.if = fsub reassoc nsz arcp contract afn float %i.ie, %i.ic ; 5 uses
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ie)
  %i.ih = fcmp reassoc nsz arcp contract afn ogt float %i.ig, f0x358637BD
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.if)
  %i.ij = fcmp reassoc nsz arcp contract afn ogt float %i.ii, f0x358637BD
  %or.cond.i = select i1 %i.ih, i1 %i.ij, i1 false
  br i1 %or.cond.i, label %bb.q, label %dt_RGB_2_HCV.exit

bb.q:                                             ; preds = %_rgb2ryb.exit
  %i.ik = fcmp reassoc nsz arcp contract afn oeq float %.sink54.i.i.i, %i.ie
  br i1 %i.ik, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.il = fsub reassoc nsz arcp contract afn float %.sink53.i.i.i, %.sink.i.i.i
  %i.im = fdiv reassoc nsz arcp contract afn float %i.il, %i.if
  br label %_dt_RGB_2_Hue.exit.i

bb.s:                                             ; preds = %bb.q
  %i.in = fcmp reassoc nsz arcp contract afn oeq float %.sink53.i.i.i, %i.ie
  br i1 %i.in, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.io = fsub reassoc nsz arcp contract afn float %.sink.i.i.i, %.sink54.i.i.i
  %i.ip = fdiv reassoc nsz arcp contract afn float %i.io, %i.if
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ir = fsub reassoc nsz arcp contract afn float %.sink54.i.i.i, %.sink53.i.i.i
  %i.is = fdiv reassoc nsz arcp contract afn float %i.ir, %i.if
  %i.it = fadd reassoc nsz arcp contract afn float %i.is, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i

_dt_RGB_2_Hue.exit.i:                             ; preds = %bb.u, %bb.t, %bb.r
  %.0.i.i20 = phi nsz float [ %i.im, %bb.r ], [ %i.iq, %bb.t ], [ %i.it, %bb.u ]
  %i.iu = fmul reassoc nsz arcp contract afn float %.0.i.i20, f0x3E2AAAAB ; 2 uses
  %i.iv = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.iu)
  %i.iw = fsub reassoc nsz arcp contract afn float %i.iu, %i.iv
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, f0x40C90FDB
  %i.iy = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ix)
  br label %dt_RGB_2_HCV.exit

dt_RGB_2_HCV.exit:                                ; preds = %_rgb2ryb.exit, %_dt_RGB_2_Hue.exit.i
  %.017.i = phi nsz float [ %i.if, %_dt_RGB_2_Hue.exit.i ], [ 0.000000e+00, %_rgb2ryb.exit ]
  %.0.i = phi { float, float } [ %i.iy, %_dt_RGB_2_Hue.exit.i ], [ { float 0.000000e+00, float 1.000000e+00 }, %_rgb2ryb.exit ] ; 2 uses
  %sin = extractvalue { float, float } %.0.i, 0
  %cos = extractvalue { float, float } %.0.i, 1
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ja = insertelement <2 x float> poison, float %cos, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %sin, i64 1
  %i.jc = insertelement <2 x float> poison, float %.017.i, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jb, %i.jd
  %i.jf = fpext reassoc nsz arcp contract afn <2 x float> %i.je to <2 x double>
  %i.jg = fmul reassoc nsz arcp contract afn <2 x double> %i.jf, splat (double 1.000000e-02)
  %i.jh = fptrunc reassoc nsz arcp contract afn <2 x double> %i.jg to <2 x float>
  store <2 x float> %i.jh, ptr %i.iz, align 4, !tbaa !111
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 490, ptr noundef nonnull @__FUNCTION__._get_chromaticity) #18
  unreachable

bb.w:                                             ; preds = %dt_RGB_2_HCV.exit, %bb.e, %dt_xyY_to_Luv.exit, %bb.a
  ret void
}

declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare ptr @g_slist_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cairo_pattern_create_mesh() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_xyz(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %5, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %5, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !134    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !111
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !111  ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !111 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !111
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !111
  %i.ac = load float, ptr %4, align 4, !tbaa !111
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !111
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.e ], [ %i.z, %bb.d ], [ %i.h, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !134 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !111
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !111 ; 4 uses
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !111
  %i.at = load float, ptr %i.aq, align 4, !tbaa !111
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !111
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1.i, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !111 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !111
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.h ], [ %i.bp, %bb.i ], [ %i.ao, %bb.f ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !134 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !111
  %i.bu = fcmp reassoc nsz arcp contract afn ult float %i.bt, 0.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !111 ; 4 uses
  br i1 %i.bu, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !111
  %i.cb = load float, ptr %i.by, align 4, !tbaa !111
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !111
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cc, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.b ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.b
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ch, float %i.b
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ci, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, %i.d
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float %i.ck, float %i.d
  %i.cn = fptosi float %i.cm to i32               ; 2 uses
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = fsub reassoc nnan nsz arcp contract afn float %i.ck, %i.co
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cq ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !111 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !111
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cp
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cs
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.l ], [ %i.cx, %bb.m ], [ %i.bw, %bb.j ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = load float, ptr %2, align 4, !tbaa !111
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.ai
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !111
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bq
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.dc
  %i.dg = load float, ptr %i.da, align 4, !tbaa !111
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.cy
  %i.di = fadd reassoc nsz arcp contract afn float %i.df, %i.dh
  store float %i.di, ptr %1, align 4, !tbaa !111
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !111
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !111
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.bq
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !111
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.cy
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dp, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.dt, ptr %i.du, align 4, !tbaa !111
end_hunk_3
