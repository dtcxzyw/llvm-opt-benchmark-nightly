inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local void @draw_no_image(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @gtk_widget_get_allocated_width(ptr noundef %1) #8
  %i.b = tail call i32 @gtk_widget_get_allocated_height(ptr noundef %1) #8
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef 5.000000e+00) #8
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  tail call void @cairo_move_to(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  %i.c = uitofp reassoc nsz arcp contract afn i32 %i.a to double ; 2 uses
  %i.d = uitofp reassoc nsz arcp contract afn i32 %i.b to double ; 2 uses
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.c, double noundef %i.d) #8
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.c, double noundef 0.000000e+00) #8
  tail call void @cairo_line_to(ptr noundef %0, double noundef 0.000000e+00, double noundef %i.d) #8
  tail call void @cairo_stroke(ptr noundef %0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @gtk_widget_get_allocated_width(ptr noundef) local_unnamed_addr #2

declare i32 @gtk_widget_get_allocated_height(ptr noundef) local_unnamed_addr #2

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #2

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @draw_line(ptr noundef %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #3 {
bb.a:
  %.sroa.02.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fpext reassoc nsz arcp contract afn float %.sroa.02.0.vec.extract to double
  %.sroa.02.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fpext reassoc nsz arcp contract afn float %.sroa.02.4.vec.extract to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.a, double noundef %i.b) #8
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.c = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract to double
  %.sroa.0.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.d = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.c, double noundef %i.d) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_cross(ptr noundef %0, <2 x float> %1) local_unnamed_addr #3 {
bb.a:
  %i.a = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract to double ; 2 uses
  %i.c = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract to double ; 2 uses
  %i.d = fadd reassoc nsz arcp contract afn <4 x float> %i.a, <float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01>
  %i.e = fpext <4 x float> %i.d to <4 x double>   ; 4 uses
  %i.f = extractelement <4 x double> %i.e, i64 0
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.f, double noundef %i.b) #8
  %i.g = extractelement <4 x double> %i.e, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.g, double noundef %i.b) #8
  %i.h = extractelement <4 x double> %i.e, i64 2
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.c, double noundef %i.h) #8
  %i.i = extractelement <4 x double> %i.e, i64 3
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.c, double noundef %i.i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_box(ptr noundef %0, ptr nofree noundef readonly byval(%struct.box_t) align 16 captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 16       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !12
  %.sroa.7.8.vec.extract = extractelement <2 x float> %i.a, i64 0
  %i.d = fadd reassoc nsz arcp contract afn float %.sroa.7.8.vec.extract, %i.c
  %.sroa.7.8.vec.insert = insertelement <2 x float> %i.a, float %i.d, i64 0 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load <4 x float>, ptr %i.e, align 4
  %i.g = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.h = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> zeroinitializer
  %i.i = fadd reassoc nsz arcp contract afn <2 x float> %i.g, %i.h ; 2 uses
  %i.j = shufflevector <2 x float> %.sroa.7.8.vec.insert, <2 x float> %i.i, <2 x i32> <i32 0, i32 2>
  %i.k = shufflevector <2 x float> %i.a, <2 x float> %i.i, <2 x i32> <i32 0, i32 3>
  %i.l = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.a, ptr noundef %2) #8 ; 2 uses
  %i.m = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.7.8.vec.insert, ptr noundef %2) #8 ; 2 uses
  %i.n = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.j, ptr noundef %2) #8 ; 2 uses
  %i.o = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.k, ptr noundef %2) #8 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.l, i64 0
  %i.p = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract to double
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.l, i64 1
  %i.q = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.p, double noundef %i.q) #8
  %.sroa.7.8.vec.extract22 = extractelement <2 x float> %i.m, i64 0
  %.sroa.7.12.vec.extract = extractelement <2 x float> %i.m, i64 1
  %i.r = fpext reassoc nsz arcp contract afn float %.sroa.7.8.vec.extract22 to double
  %i.s = fpext reassoc nsz arcp contract afn float %.sroa.7.12.vec.extract to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.r, double noundef %i.s) #8
  %.sroa.14.16.vec.extract27 = extractelement <2 x float> %i.n, i64 0
  %.sroa.14.20.vec.extract30 = extractelement <2 x float> %i.n, i64 1
  %i.t = fpext reassoc nsz arcp contract afn float %.sroa.14.16.vec.extract27 to double
  %i.u = fpext reassoc nsz arcp contract afn float %.sroa.14.20.vec.extract30 to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.t, double noundef %i.u) #8
  %.sroa.23.24.vec.extract = extractelement <2 x float> %i.o, i64 0
  %.sroa.23.28.vec.extract35 = extractelement <2 x float> %i.o, i64 1
  %i.v = fpext reassoc nsz arcp contract afn float %.sroa.23.24.vec.extract to double
  %i.w = fpext reassoc nsz arcp contract afn float %.sroa.23.28.vec.extract35 to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.v, double noundef %i.w) #8
  tail call void @cairo_close_path(ptr noundef %0) #8
  ret void
}

declare <2 x float> @apply_homography(<2 x float>, ptr noundef) local_unnamed_addr #2

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @clear_background(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  tail call void @cairo_paint(ptr noundef %0) #8
  ret void
}

declare void @cairo_paint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @center_image(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !16
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0
  %i.e = extractelement <2 x double> %i.c, i64 1
  tail call void @cairo_translate(ptr noundef %0, double noundef %i.d, double noundef %i.e) #8
  ret void
}

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_image(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  tail call void @cairo_set_source(ptr noundef %0, ptr noundef %i.b) #8
  tail call void @cairo_paint(ptr noundef %0) #8
  ret void
}

declare void @cairo_set_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @draw_boundingbox(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load <2 x float>, ptr %1, align 4        ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %.sroa.02.0.vec.extract.i = extractelement <2 x float> %i.b, i64 0
  %i.d = fpext reassoc nsz arcp contract afn float %.sroa.02.0.vec.extract.i to double
  %.sroa.02.4.vec.extract.i = extractelement <2 x float> %i.b, i64 1
  %i.e = fpext reassoc nsz arcp contract afn float %.sroa.02.4.vec.extract.i to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.d, double noundef %i.e) #8
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.c, i64 0
  %i.f = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i to double
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.c, i64 1
  %i.g = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.f, double noundef %i.g) #8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %i.j = load <2 x float>, ptr %i.h, align 4      ; 2 uses
  %.sroa.02.0.vec.extract.i.1 = extractelement <2 x float> %i.i, i64 0
  %i.k = fpext reassoc nsz arcp contract afn float %.sroa.02.0.vec.extract.i.1 to double
  %.sroa.02.4.vec.extract.i.1 = extractelement <2 x float> %i.i, i64 1
  %i.l = fpext reassoc nsz arcp contract afn float %.sroa.02.4.vec.extract.i.1 to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.k, double noundef %i.l) #8
  %.sroa.0.0.vec.extract.i.1 = extractelement <2 x float> %i.j, i64 0
  %i.m = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.1 to double
  %.sroa.0.4.vec.extract.i.1 = extractelement <2 x float> %i.j, i64 1
  %i.n = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i.1 to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.m, double noundef %i.n) #8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load <2 x float>, ptr %i.h, align 4      ; 2 uses
  %i.q = load <2 x float>, ptr %i.o, align 4      ; 2 uses
  %.sroa.02.0.vec.extract.i.2 = extractelement <2 x float> %i.p, i64 0
  %i.r = fpext reassoc nsz arcp contract afn float %.sroa.02.0.vec.extract.i.2 to double
  %.sroa.02.4.vec.extract.i.2 = extractelement <2 x float> %i.p, i64 1
  %i.s = fpext reassoc nsz arcp contract afn float %.sroa.02.4.vec.extract.i.2 to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.r, double noundef %i.s) #8
  %.sroa.0.0.vec.extract.i.2 = extractelement <2 x float> %i.q, i64 0
  %i.t = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.2 to double
  %.sroa.0.4.vec.extract.i.2 = extractelement <2 x float> %i.q, i64 1
  %i.u = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i.2 to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.t, double noundef %i.u) #8
  %i.v = load <2 x float>, ptr %i.o, align 4      ; 2 uses
  %i.w = load <2 x float>, ptr %1, align 4        ; 2 uses
  %.sroa.02.0.vec.extract.i.3 = extractelement <2 x float> %i.v, i64 0
  %i.x = fpext reassoc nsz arcp contract afn float %.sroa.02.0.vec.extract.i.3 to double
  %.sroa.02.4.vec.extract.i.3 = extractelement <2 x float> %i.v, i64 1
  %i.y = fpext reassoc nsz arcp contract afn float %.sroa.02.4.vec.extract.i.3 to double
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.x, double noundef %i.y) #8
  %.sroa.0.0.vec.extract.i.3 = extractelement <2 x float> %i.w, i64 0
  %i.z = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.3 to double
  %.sroa.0.4.vec.extract.i.3 = extractelement <2 x float> %i.w, i64 1
  %i.aa = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i.3 to double
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.z, double noundef %i.aa) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_f_boxes(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %.012 = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %.0, %.lr.ph ], [ %.012, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.014, align 8, !tbaa !28  ; 4 uses
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.b, ptr noundef %1) #8 ; 3 uses
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.c, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.c, i64 1
  %i.e = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i to double ; 2 uses
  %i.f = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i to double ; 2 uses
  %i.g = fadd reassoc nsz arcp contract afn <4 x float> %i.d, <float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01>
  %i.h = fpext <4 x float> %i.g to <4 x double>   ; 4 uses
  %i.i = extractelement <4 x double> %i.h, i64 0
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.i, double noundef %i.e) #8
  %i.j = extractelement <4 x double> %i.h, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.j, double noundef %i.e) #8
  %i.k = extractelement <4 x double> %i.h, i64 2
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.f, double noundef %i.k) #8
  %i.l = extractelement <4 x double> %i.h, i64 3
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.f, double noundef %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load <2 x float>, ptr %i.m, align 4
  %i.o = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.n, ptr noundef %1) #8 ; 3 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %.sroa.0.0.vec.extract.i.1 = extractelement <2 x float> %i.o, i64 0
  %.sroa.0.4.vec.extract.i.1 = extractelement <2 x float> %i.o, i64 1
  %i.q = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i.1 to double ; 2 uses
  %i.r = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.1 to double ; 2 uses
  %i.s = fadd reassoc nsz arcp contract afn <4 x float> %i.p, <float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01>
  %i.t = fpext <4 x float> %i.s to <4 x double>   ; 4 uses
  %i.u = extractelement <4 x double> %i.t, i64 0
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.u, double noundef %i.q) #8
  %i.v = extractelement <4 x double> %i.t, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.v, double noundef %i.q) #8
  %i.w = extractelement <4 x double> %i.t, i64 2
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.r, double noundef %i.w) #8
  %i.x = extractelement <4 x double> %i.t, i64 3
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.r, double noundef %i.x) #8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load <2 x float>, ptr %i.y, align 4
  %i.aa = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.z, ptr noundef %1) #8 ; 3 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %.sroa.0.0.vec.extract.i.2 = extractelement <2 x float> %i.aa, i64 0
  %.sroa.0.4.vec.extract.i.2 = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i.2 to double ; 2 uses
  %i.ad = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.2 to double ; 2 uses
  %i.ae = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, <float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01>
  %i.af = fpext <4 x float> %i.ae to <4 x double> ; 4 uses
  %i.ag = extractelement <4 x double> %i.af, i64 0
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.ag, double noundef %i.ac) #8
  %i.ah = extractelement <4 x double> %i.af, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ah, double noundef %i.ac) #8
  %i.ai = extractelement <4 x double> %i.af, i64 2
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.ad, double noundef %i.ai) #8
  %i.aj = extractelement <4 x double> %i.af, i64 3
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ad, double noundef %i.aj) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.al = load <2 x float>, ptr %i.ak, align 4
  %i.am = tail call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.al, ptr noundef %1) #8 ; 3 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %.sroa.0.0.vec.extract.i.3 = extractelement <2 x float> %i.am, i64 0
  %.sroa.0.4.vec.extract.i.3 = extractelement <2 x float> %i.am, i64 1
  %i.ao = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i.3 to double ; 2 uses
  %i.ap = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.3 to double ; 2 uses
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.an, <float -1.000000e+01, float 1.000000e+01, float -1.000000e+01, float 1.000000e+01>
  %i.ar = fpext <4 x float> %i.aq to <4 x double> ; 4 uses
  %i.as = extractelement <4 x double> %i.ar, i64 0
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.as, double noundef %i.ao) #8
  %i.at = extractelement <4 x double> %i.ar, i64 1
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.at, double noundef %i.ao) #8
  %i.au = extractelement <4 x double> %i.ar, i64 2
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.ap, double noundef %i.au) #8
  %i.av = extractelement <4 x double> %i.ar, i64 3
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.ap, double noundef %i.av) #8
  %i.aw = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %.0 = load ptr, ptr %i.aw, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_d_boxes(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @_draw_boxes(ptr noundef %0, ptr noundef %1, ptr noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_draw_boxes(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._GHashTableIter, align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @g_hash_table_iter_init(ptr noundef nonnull %3, ptr noundef %2) #8
  %i.c = call i32 @g_hash_table_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not4 = icmp eq i32 %i.c, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.d, align 16 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.8.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.e = fadd reassoc nsz arcp contract afn float %.sroa.7.8.vec.extract.i, %.sroa.4.0.copyload
  %.sroa.7.8.vec.insert.i = insertelement <2 x float> %.sroa.0.0.copyload, float %i.e, i64 0 ; 2 uses
  %.sroa.14.20.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %i.f = fadd reassoc nsz arcp contract afn float %.sroa.5.0.copyload, %.sroa.14.20.vec.extract.i ; 2 uses
  %.sroa.14.20.vec.insert.i = insertelement <2 x float> %.sroa.7.8.vec.insert.i, float %i.f, i64 1
  %.sroa.23.28.vec.insert.i = insertelement <2 x float> %.sroa.0.0.copyload, float %i.f, i64 1
  %i.g = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.0.0.copyload, ptr noundef %1) #8 ; 2 uses
  %i.h = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.7.8.vec.insert.i, ptr noundef %1) #8 ; 2 uses
  %i.i = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.14.20.vec.insert.i, ptr noundef %1) #8 ; 2 uses
  %i.j = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.23.28.vec.insert.i, ptr noundef %1) #8 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.g, i64 0
  %i.k = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i to double
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.g, i64 1
  %i.l = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i to double
  call void @cairo_move_to(ptr noundef %0, double noundef %i.k, double noundef %i.l) #8
  %.sroa.7.8.vec.extract22.i = extractelement <2 x float> %i.h, i64 0
  %.sroa.7.12.vec.extract.i = extractelement <2 x float> %i.h, i64 1
  %i.m = fpext reassoc nsz arcp contract afn float %.sroa.7.8.vec.extract22.i to double
  %i.n = fpext reassoc nsz arcp contract afn float %.sroa.7.12.vec.extract.i to double
  call void @cairo_line_to(ptr noundef %0, double noundef %i.m, double noundef %i.n) #8
  %.sroa.14.16.vec.extract27.i = extractelement <2 x float> %i.i, i64 0
  %.sroa.14.20.vec.extract30.i = extractelement <2 x float> %i.i, i64 1
  %i.o = fpext reassoc nsz arcp contract afn float %.sroa.14.16.vec.extract27.i to double
  %i.p = fpext reassoc nsz arcp contract afn float %.sroa.14.20.vec.extract30.i to double
  call void @cairo_line_to(ptr noundef %0, double noundef %i.o, double noundef %i.p) #8
  %.sroa.23.24.vec.extract.i = extractelement <2 x float> %i.j, i64 0
  %.sroa.23.28.vec.extract35.i = extractelement <2 x float> %i.j, i64 1
  %i.q = fpext reassoc nsz arcp contract afn float %.sroa.23.24.vec.extract.i to double
  %i.r = fpext reassoc nsz arcp contract afn float %.sroa.23.28.vec.extract35.i to double
  call void @cairo_line_to(ptr noundef %0, double noundef %i.q, double noundef %i.r) #8
  call void @cairo_close_path(ptr noundef %0) #8
  %i.s = call i32 @g_hash_table_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_color_boxes_outline(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  tail call fastcc void @_draw_boxes(ptr noundef %0, ptr noundef %1, ptr noundef %i.b)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_color_boxes_inside(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct._GHashTableIter, align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load float, ptr %i.c, align 8, !tbaa !35
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, %3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load <2 x float>, ptr %i.f, align 8, !tbaa !36
  %i.h = insertelement <2 x float> poison, float %i.e, i64 0
end_hunk_0
