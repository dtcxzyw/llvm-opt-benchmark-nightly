Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dtcairo?download=true
inline.NumInlined: 14
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._cairo_user_data_key = type { i32 }
%struct.box_t = type { %struct.point_t, float, float, i32, [12 x i8], [4 x float], [4 x float] }
%struct.point_t = type { float, float }
%struct._GHashTableIter = type { ptr, ptr, ptr, i32, i32, ptr }
%struct._cairo_matrix = type { double, double, double, double, double, double }

@source_data_buffer_key = internal global %struct._cairo_user_data_key zeroinitializer, align 4

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
  %i.a = load <2 x float>, ptr %1, align 16, !tbaa !13 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !31
  %.sroa.7.8.vec.extract = extractelement <2 x float> %i.a, i64 0
  %i.d = fadd reassoc nsz arcp contract afn float %.sroa.7.8.vec.extract, %i.c
  %.sroa.7.8.vec.insert = insertelement <2 x float> %i.a, float %i.d, i64 0 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load <1 x float>, ptr %i.e, align 4
  %i.g = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.h = shufflevector <1 x float> %i.f, <1 x float> poison, <2 x i32> zeroinitializer
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
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !14
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
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
  %.012 = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %.not13 = icmp eq ptr %.012, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %.0, %.lr.ph ], [ %.012, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.014, align 8, !tbaa !34  ; 4 uses
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
  %.0 = load ptr, ptr %i.aw, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define dso_local void @draw_d_boxes(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
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
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
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
  %i.d = load float, ptr %i.c, align 8, !tbaa !36
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, %3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load <2 x float>, ptr %i.f, align 8, !tbaa !13
  %i.h = insertelement <2 x float> poison, float %i.e, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fdiv reassoc nsz arcp contract afn <2 x float> %i.i, %i.g ; 2 uses
  %i.k = fpext reassoc nsz arcp contract afn float %4 to double
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.k) #8
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  call void @g_hash_table_iter_init(ptr noundef nonnull %6, ptr noundef %i.m) #8
  %i.n = call i32 @g_hash_table_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not33 = icmp eq i32 %i.n, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = fpext <2 x float> %i.j to <2 x double>
  %i.p = fmul reassoc nsz arcp contract afn <2 x double> %i.o, splat (double 2.000000e+00)
  %.not22 = icmp eq i32 %5, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 16, !tbaa !13
  %i.s = fadd reassoc nsz arcp contract afn <2 x float> %i.r, %i.j ; 5 uses
  %i.t = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !13
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = fsub reassoc nsz arcp contract afn <2 x double> %i.u, %i.p
  %i.w = fptrunc <2 x double> %i.v to <2 x float> ; 2 uses
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.w ; 2 uses
  %.sroa.7.8.vec.insert.i = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop35 = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.w ; 2 uses
  %.sroa.14.20.vec.insert.i = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop35, <2 x i32> <i32 0, i32 3>
  %.sroa.23.28.vec.insert.i = shufflevector <2 x float> %i.s, <2 x float> %foldExtExtBinop35, <2 x i32> <i32 0, i32 3>
  %i.x = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %i.s, ptr noundef %1) #8 ; 2 uses
  %i.y = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.7.8.vec.insert.i, ptr noundef %1) #8 ; 2 uses
  %i.z = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.14.20.vec.insert.i, ptr noundef %1) #8 ; 2 uses
  %i.aa = call reassoc nsz arcp contract afn <2 x float> @apply_homography(<2 x float> %.sroa.23.28.vec.insert.i, ptr noundef %1) #8 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.x, i64 0
  %i.ab = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i to double
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.x, i64 1
  %i.ac = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i to double
  call void @cairo_move_to(ptr noundef %0, double noundef %i.ab, double noundef %i.ac) #8
  %.sroa.7.8.vec.extract22.i = extractelement <2 x float> %i.y, i64 0
  %.sroa.7.12.vec.extract.i = extractelement <2 x float> %i.y, i64 1
  %i.ad = fpext reassoc nsz arcp contract afn float %.sroa.7.8.vec.extract22.i to double
  %i.ae = fpext reassoc nsz arcp contract afn float %.sroa.7.12.vec.extract.i to double
  call void @cairo_line_to(ptr noundef %0, double noundef %i.ad, double noundef %i.ae) #8
  %.sroa.14.16.vec.extract27.i = extractelement <2 x float> %i.z, i64 0
  %.sroa.14.20.vec.extract30.i = extractelement <2 x float> %i.z, i64 1
  %i.af = fpext reassoc nsz arcp contract afn float %.sroa.14.16.vec.extract27.i to double
  %i.ag = fpext reassoc nsz arcp contract afn float %.sroa.14.20.vec.extract30.i to double
  call void @cairo_line_to(ptr noundef %0, double noundef %i.af, double noundef %i.ag) #8
  %.sroa.23.24.vec.extract.i = extractelement <2 x float> %i.aa, i64 0
  %.sroa.23.28.vec.extract35.i = extractelement <2 x float> %i.aa, i64 1
  %i.ah = fpext reassoc nsz arcp contract afn float %.sroa.23.24.vec.extract.i to double
  %i.ai = fpext reassoc nsz arcp contract afn float %.sroa.23.28.vec.extract35.i to double
  call void @cairo_line_to(ptr noundef %0, double noundef %i.ah, double noundef %i.ai) #8
  call void @cairo_close_path(ptr noundef %0) #8
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ak = load float, ptr %i.aj, align 16, !tbaa !13
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !13
  %i.ao = fpext <2 x float> %i.an to <2 x double> ; 2 uses
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  %i.aq = extractelement <2 x double> %i.ao, i64 1
  call void @cairo_set_source_rgb(ptr noundef %0, double noundef %i.al, double noundef %i.ap, double noundef %i.aq) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @cairo_stroke(ptr noundef %0) #8
  %i.ar = call i32 @g_hash_table_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

declare void @g_hash_table_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @g_hash_table_iter_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @stroke_boxes(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fpext reassoc nsz arcp contract afn float %1 to double ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn double %i.a, 2.500000e+00
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.b) #8
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #8
  tail call void @cairo_stroke_preserve(ptr noundef %0) #8
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %i.a) #8
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #8
  tail call void @cairo_stroke(ptr noundef %0) #8
  ret void
}

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @set_offset_and_scale(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._cairo_matrix, align 8      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load <2 x i32>, ptr %i.c, align 8, !tbaa !14
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = insertelement <2 x float> poison, float %1, i64 0
  %i.g = insertelement <2 x float> %i.f, float %2, i64 1 ; 2 uses
  %i.h = fdiv reassoc nsz arcp contract afn <2 x float> %i.e, %i.g ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 2 uses
  %i.j = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.i, %i.j
  %i.l = select reassoc nsz arcp contract afn i1 %i.k, float %i.i, float %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store float %i.l, ptr %i.m, align 8, !tbaa !37
  %i.n = fpext reassoc nsz arcp contract afn float %i.l to double ; 2 uses
  call void @cairo_matrix_init_scale(ptr noundef nonnull %3, double noundef %i.n, double noundef %i.n) #8
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23
  call void @cairo_pattern_set_matrix(ptr noundef %i.o, ptr noundef nonnull %3) #8
  %i.p = load float, ptr %i.m, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load <2 x i32>, ptr %i.c, align 8, !tbaa !14
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = insertelement <2 x float> poison, float %i.p, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fdiv reassoc nsz arcp contract afn <2 x float> %i.s, %i.u
  %i.w = fsub reassoc nsz arcp contract afn <2 x float> %i.g, %i.v
  %i.x = fpext <2 x float> %i.w to <2 x double>
  %i.y = fmul reassoc nsz arcp contract afn <2 x double> %i.x, splat (double 5.000000e-01)
  %i.z = fadd reassoc nsz arcp contract afn <2 x double> %i.y, splat (double 5.000000e-01)
  %i.aa = fptosi <2 x double> %i.z to <2 x i32>
  store <2 x i32> %i.aa, ptr %i.q, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @cairo_matrix_init_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_pattern_set_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cairo_surface_create_from_xyz_data(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = shl nsw i64 %i.b, 2
  %i.d = mul i64 %i.c, %i.a
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #9 ; 3 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph43, label %._crit_edge44.split

.lr.ph43:                                         ; preds = %bb.a
  %i.g = mul i32 %1, 3
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge44.split

.lr.ph.preheader:                                 ; preds = %.lr.ph43
  %wide.trip.count50 = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge44.split:                              ; preds = %._crit_edge, %.lr.ph43, %bb.a
  %i.i = tail call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %1) #8
  %i.j = tail call ptr @cairo_image_surface_create_for_data(ptr noundef %i.e, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %i.i) #8 ; 2 uses
  %i.k = tail call i32 @cairo_surface_set_user_data(ptr noundef %i.j, ptr noundef nonnull @source_data_buffer_key, ptr noundef %i.e, ptr noundef nonnull @free) #8 ; 0 uses
  ret ptr %i.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv47 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next48, %._crit_edge ] ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.m = mul i32 %i.g, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n
  %i.p = mul nuw nsw i64 %indvars.iv47, %i.b
  br label %bb.b

._crit_edge:                                      ; preds = %dt_XYZ_to_sRGB_clipped.exit
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge44.split, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph, %dt_XYZ_to_sRGB_clipped.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %dt_XYZ_to_sRGB_clipped.exit ] ; 2 uses
  %.03539 = phi ptr [ %i.o, %.lr.ph ], [ %i.dw, %dt_XYZ_to_sRGB_clipped.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03539, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !13 ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, f0xBEFB31D6
  %i.t = load <2 x float>, ptr %.03539, align 4, !tbaa !13 ; 4 uses
  %i.u = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, f0x40489119
  %i.w = extractelement <2 x float> %i.t, i64 1   ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, f0x3FCEF57D
  %i.y = fsub reassoc nsz arcp contract afn float %i.v, %i.x
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.s ; 3 uses
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.t, <float 7.194530e-02, float f0x3FF54420>
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.t, <float f0x3F7A9091, float f0x3E6A7CB9>
  %i.ad = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ac
  %i.ae = insertelement <2 x float> poison, float %i.r, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.af, <float 3.345400e-02, float f0x3FB3DEFE>
  %i.ah = fadd reassoc nsz arcp contract afn <2 x float> %i.ad, %i.ag ; 3 uses
  %i.ai = fadd reassoc nsz arcp contract afn float %i.w, %i.u
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.r
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 0.000000e+00
  %i.al = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.am = insertelement <4 x float> %i.al, float %i.z, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.ak, i64 3
  %i.ao = bitcast <4 x float> %i.an to <4 x i32>  ; 2 uses
  %i.ap = and <4 x i32> %i.ao, splat (i32 8388607)
  %i.aq = or disjoint <4 x i32> %i.ap, splat (i32 1065353216)
  %i.ar = bitcast <4 x i32> %i.aq to <4 x float>  ; 5 uses
  %i.as = lshr <4 x i32> %i.ao, splat (i32 23)
  %i.at = and <4 x i32> %i.as, splat (i32 255)
  %i.au = add nsw <4 x i32> %i.at, splat (i32 -127)
  %i.av = sitofp <4 x i32> %i.au to <4 x float>
  %i.aw = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ar, splat (float f0x3D74552F)
  %i.ax = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aw, splat (float f0xBEEE7397)
  %i.ay = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ax, %i.ar
  %i.az = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ay, splat (float f0x3FBD96DD)
  %i.ba = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.az, %i.ar
  %i.bb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ba, splat (float f0xC02153F6)
  %i.bc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bb, %i.ar
  %i.bd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bc, splat (float f0x4038D96C)
  %i.be = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ar, splat (float -1.000000e+00)
  %i.bf = fmul reassoc nsz arcp contract afn <4 x float> %i.bd, %i.be
  %i.bg = fadd reassoc nsz arcp contract afn <4 x float> %i.bf, %i.av
  %i.bh = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, splat (float f0x3ED55555)
  %i.bi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bh, <4 x float> splat (float 1.290000e+02))
  %i.bj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bi, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.bk = fadd reassoc nsz arcp contract afn <4 x float> %i.bj, splat (float -5.000000e-01)
  %i.bl = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bk)
  %i.bm = sitofp reassoc nsz arcp contract afn <4 x i32> %i.bl to <4 x float> ; 3 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ugt float %i.z, 3.130800e-03
  br i1 %i.bn, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bo = fmul reassoc nnan nsz arcp contract afn float %i.z, 1.292000e+01
  br label %dt_XYZ_to_sRGB_clipped.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.014.0.vec.extract.i.i.i.i = extractelement <4 x float> %i.bm, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.bj, %i.bm
  %i.bp = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, f0x3C5DBE69
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, f0x3D5509F9
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bp
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, f0x3E773CC5
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bp
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, f0x3F3168B3
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.bp
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, f0x3F800016
  %i.by = fptosi float %.sroa.014.0.vec.extract.i.i.i.i to i32
  %i.bz = shl i32 %i.by, 23
  %i.ca = add i32 %i.bz, 1065353216
  %i.cb = bitcast i32 %i.ca to float
  %i.cc = fmul reassoc nnan nsz arcp contract afn float %i.cb, 1.055000e+00
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bx
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, -5.500000e-02
  br label %dt_XYZ_to_sRGB_clipped.exit

dt_XYZ_to_sRGB_clipped.exit:                      ; preds = %bb.c, %bb.d
  %i.cf = phi reassoc nsz arcp contract afn float [ %i.bo, %bb.c ], [ %i.ce, %bb.d ] ; 3 uses
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.ah, splat (float 1.292000e+01)
  %i.ch = fcmp reassoc nsz arcp contract afn ugt <2 x float> %i.ah, splat (float 3.130800e-03)
  %i.ci = fcmp reassoc nsz arcp contract afn ult float %i.cf, 0.000000e+00
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.cf, 1.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.cf, float 1.000000e+00
  %i.cj = fmul reassoc nsz arcp contract afn float %spec.select.i, 2.550000e+02
  %i.ck = select i1 %i.ci, float 0.000000e+00, float %i.cj
  %i.cl = fptosi float %i.ck to i32
  %i.cm = shl i32 %i.cl, 16
  %i.cn = and i32 %i.cm, 16711680
  %i.co = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cp = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cq = fsub reassoc nsz arcp contract afn <2 x float> %i.co, %i.cp ; 4 uses
  %i.cr = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, splat (float f0x3C5DBE69)
  %i.cs = fadd reassoc nsz arcp contract afn <2 x float> %i.cr, splat (float f0x3D5509F9)
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cq
  %i.cu = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, splat (float f0x3E773CC5)
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cq
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cv, splat (float f0x3F3168B3)
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, %i.cq
  %i.cy = fadd reassoc nsz arcp contract afn <2 x float> %i.cx, splat (float f0x3F800016)
  %i.cz = fptosi <2 x float> %i.cp to <2 x i32>
  %i.da = shl <2 x i32> %i.cz, splat (i32 23)
  %i.db = add <2 x i32> %i.da, splat (i32 1065353216)
  %i.dc = bitcast <2 x i32> %i.db to <2 x float>
  %i.dd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.dc, splat (float 1.055000e+00)
  %i.de = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.cy
  %i.df = fadd reassoc nsz arcp contract afn <2 x float> %i.de, splat (float -5.500000e-02)
  %i.dg = select <2 x i1> %i.ch, <2 x float> %i.df, <2 x float> %i.cg ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.dg, zeroinitializer
  %i.di = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.dg, splat (float 1.000000e+00)
  %i.dj = select <2 x i1> %i.di, <2 x float> %i.dg, <2 x float> splat (float 1.000000e+00)
  %i.dk = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, splat (float 2.550000e+02)
  %i.dl = select <2 x i1> %i.dh, <2 x float> zeroinitializer, <2 x float> %i.dk
  %i.dm = fptosi <2 x float> %i.dl to <2 x i32>
  %i.dn = shl <2 x i32> %i.dm, <i32 8, i32 0>
  %i.do = and <2 x i32> %i.dn, <i32 65280, i32 255> ; 2 uses
  %i.dp = extractelement <2 x i32> %i.do, i64 0
  %i.dq = or disjoint i32 %i.dp, %i.cn
  %i.dr = extractelement <2 x i32> %i.do, i64 1
  %i.ds = or disjoint i32 %i.dr, %i.dq
  %i.dt = add nuw nsw i64 %i.p, %indvars.iv
  %i.du = shl i64 %i.dt, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.du
  store i32 %i.ds, ptr %i.dv, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.03539, i64 12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cairo_surface_set_user_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #6
end_hunk_0
