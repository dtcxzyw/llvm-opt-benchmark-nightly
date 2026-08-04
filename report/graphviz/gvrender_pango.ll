begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gvrender_engine_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pointf_s = type { double, double }
%struct.agxbuf = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }
%struct._cairo_matrix = type { double, double, double, double, double, double }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"cairo\00", align 1
@cairogen_engine = internal global %struct.gvrender_engine_s { ptr @cairogen_begin_job, ptr @cairogen_end_job, ptr null, ptr null, ptr null, ptr null, ptr @cairogen_begin_page, ptr @cairogen_end_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cairogen_begin_anchor, ptr null, ptr null, ptr null, ptr @cairogen_textspan, ptr null, ptr @cairogen_ellipse, ptr @cairogen_polygon, ptr @cairogen_bezier, ptr @cairogen_polyline, ptr null, ptr null }, align 8
@gvrender_pango_types = local_unnamed_addr global [2 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str, i32 10, [4 x i8] zeroinitializer, ptr @cairogen_engine, ptr @render_features_cairo }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"png:cairo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ps:cairo\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"eps:cairo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pdf:cairo\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"svg:cairo\00", align 1
@gvdevice_pango_types = local_unnamed_addr global [6 x { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr }] [{ i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1, i32 10, [4 x i8] zeroinitializer, ptr null, ptr @device_features_png }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2, i32 -10, [4 x i8] zeroinitializer, ptr null, ptr @device_features_ps }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.3, i32 -10, [4 x i8] zeroinitializer, ptr null, ptr @device_features_eps }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.4, i32 10, [4 x i8] zeroinitializer, ptr null, ptr @device_features_pdf }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.5, i32 -10, [4 x i8] zeroinitializer, ptr null, ptr @device_features_svg }, { i32, [4 x i8], ptr, i32, [4 x i8], ptr, ptr } zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [18 x i8] c"SOURCE_DATE_EPOCH\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"malformed value %s for $SOURCE_DATE_EPOCH\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%Y-%m-%dT%H:%M:%SZ\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"%s: graph is too large for cairo-renderer bitmaps. Scaling by %g to fit\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"%s: allocating a %.0fK cairo image surface (%d x %d pixels)\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: failure to create cairo surface: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"cairo: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"rect=[%f %f %f %f] uri='%s'\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@dashed = internal global [1 x double] [double 6.000000e+00], align 8
@dotted = internal global [2 x double] [double 2.000000e+00, double 6.000000e+00], align 16
@render_features_cairo = internal global { i32, [4 x i8], double, ptr, i32, i32 } { i32 12288, [4 x i8] zeroinitializer, double 4.000000e+00, ptr null, i32 0, i32 3 }, align 8
@device_features_png = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 768, [4 x i8] zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 9.600000e+01, double 9.600000e+01 } }, align 8
@device_features_ps = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 33554688, [4 x i8] zeroinitializer, %struct.pointf_s { double 3.600000e+01, double 3.600000e+01 }, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 7.200000e+01, double 7.200000e+01 } }, align 8
@device_features_eps = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 33554688, [4 x i8] zeroinitializer, %struct.pointf_s { double 3.600000e+01, double 3.600000e+01 }, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 7.200000e+01, double 7.200000e+01 } }, align 8
@device_features_pdf = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 33751808, [4 x i8] zeroinitializer, %struct.pointf_s { double 3.600000e+01, double 3.600000e+01 }, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 7.200000e+01, double 7.200000e+01 } }, align 8
@device_features_svg = internal global { i32, [4 x i8], %struct.pointf_s, %struct.pointf_s, %struct.pointf_s } { i32 33554688, [4 x i8] zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s zeroinitializer, %struct.pointf_s { double 7.200000e+01, double 7.200000e+01 } }, align 8

; Function Attrs: nounwind uwtable
define internal void @cairogen_begin_job(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i8, ptr %i.a, align 8, !tbaa !8, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cairo_save(ptr noundef nonnull %i.e) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cairogen_end_job(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i8, ptr %i.c, align 8, !tbaa !8, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @cairo_restore(ptr noundef %i.b) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @cairo_destroy(ptr noundef %i.b) #18
  store ptr null, ptr %i.a, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cairogen_begin_page(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [20 x i8], align 16               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.j = load <2 x i32>, ptr %i.i, align 8, !tbaa !36 ; 9 uses
  switch i32 %i.h, label %bb.o [
    i32 2, label %bb.c
    i32 5, label %bb.c
    i32 3, label %bb.e
    i32 4, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %1 = extractelement <2 x i32> %i.j, i64 0
  %2 = uitofp i32 %1 to double
  %3 = extractelement <2 x i32> %i.j, i64 1
  %4 = uitofp i32 %3 to double
  %i.k = tail call ptr @cairo_ps_surface_create_for_stream(ptr noundef nonnull @writer, ptr noundef nonnull %0, double noundef %2, double noundef %4) #18 ; 3 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !35
  %i.m = icmp eq i32 %i.l, 5
  br i1 %i.m, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  tail call void @cairo_ps_surface_set_eps(ptr noundef %i.k, i32 noundef 1) #18
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %5 = extractelement <2 x i32> %i.j, i64 0
  %6 = uitofp i32 %5 to double
  %7 = extractelement <2 x i32> %i.j, i64 1
  %8 = uitofp i32 %7 to double
  %i.n = tail call ptr @cairo_pdf_surface_create_for_stream(ptr noundef nonnull @writer, ptr noundef nonnull %0, double noundef %6, double noundef %8) #18 ; 4 uses
  %i.o = tail call ptr @getenv(ptr noundef nonnull @.str.6) #18 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !37
  %i.p = tail call ptr @__errno_location() #19    ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !36
  %i.q = call i64 @strtol(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775807
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.p, align 4, !tbaa !36
  %.not81 = icmp eq i32 %i.s, 0
  br i1 %.not81, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %.old1 = icmp slt i64 %i.q, 0
  br i1 %.old1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.u = load i8, ptr %i.t, align 1, !tbaa !38
  %.not82 = icmp eq i8 %i.u, 0
  br i1 %.not82, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.o) #20 ; 0 uses
  tail call void @exit(i32 noundef 1) #21
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.q, ptr %i.b, align 8, !tbaa !40
  %i.x = call ptr @gmtime(ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.o) #20 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.c, i8 0, i64 20, i1 false)
  %i.ab = call i64 @strftime(ptr noundef nonnull %i.c, i64 noundef 20, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.x) #18 ; 0 uses
  call void @cairo_pdf_surface_set_metadata(ptr noundef %i.n, i32 noundef 5, ptr noundef nonnull %i.c) #18
  call void @cairo_pdf_surface_set_metadata(ptr noundef %i.n, i32 noundef 6, ptr noundef nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.r

bb.n:                                             ; preds = %bb.b
  %9 = extractelement <2 x i32> %i.j, i64 0
  %10 = uitofp i32 %9 to double
  %11 = extractelement <2 x i32> %i.j, i64 1
  %12 = uitofp i32 %11 to double
  %i.ac = tail call ptr @cairo_svg_surface_create_for_stream(ptr noundef nonnull @writer, ptr noundef nonnull %0, double noundef %10, double noundef %12) #18
  br label %bb.r

bb.o:                                             ; preds = %bb.b
  %i.ad = extractelement <2 x i32> %i.j, i64 0    ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, 32766
  %i.af = extractelement <2 x i32> %i.j, i64 1    ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 32766
  %or.cond = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.o
  %i.ah = uitofp <2 x i32> %i.j to <2 x double>   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  %i.aj = fdiv nsz <2 x double> splat (double 3.276700e+04), %i.ah ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = extractelement <2 x double> %i.aj, i64 1
  %i.am = tail call nsz double @llvm.minnum.f64(double %i.ak, double %i.al) ; 4 uses
  %i.an = extractelement <2 x double> %i.ah, i64 0
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fptoui double %i.ao to i32
  store i32 %i.ap, ptr %i.i, align 8, !tbaa !41
  %i.aq = extractelement <2 x double> %i.ah, i64 1
  %i.ar = fmul double %i.am, %i.aq
  %i.as = fptoui double %i.ar to i32
  store i32 %i.as, ptr %i.ai, align 4, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.au = load <2 x double>, ptr %i.at, align 8, !tbaa !43
  %i.av = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul <2 x double> %i.au, %i.aw
  store <2 x double> %i.ax, ptr %i.at, align 8, !tbaa !43
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.9, ptr noundef %i.bc, double noundef %i.am) #20 ; 0 uses
  %.pre85 = load i32, ptr %i.i, align 8, !tbaa !41
  %.pre87 = load i32, ptr %i.ai, align 4, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.be = phi i32 [ %.pre87, %._crit_edge ], [ %i.af, %bb.o ]
  %i.bf = phi i32 [ %.pre85, %._crit_edge ], [ %i.ad, %bb.o ]
  %i.bg = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bf, i32 noundef %i.be) #18 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !44 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !49
  %.not83 = icmp eq i32 %i.bk, 0
  br i1 %.not83, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45
  %i.bp = load i32, ptr %i.i, align 8, !tbaa !41  ; 2 uses
  %i.bq = load i32, ptr %i.bl, align 4, !tbaa !42 ; 2 uses
  %i.br = shl i32 %i.bp, 2
  %i.bs = mul i32 %i.br, %i.bq
  %i.bt = uitofp i32 %i.bs to double
  %i.bu = fmul nnan double %i.bt, f0x3F50000000000000
  %i.bv = tail call double @llvm.round.f64(double %i.bu)
  %i.bw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.10, ptr noundef %i.bo, double noundef %i.bv, i32 noundef %i.bp, i32 noundef %i.bq) #20 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %bb.m, %bb.p, %bb.q, %bb.c, %bb.d, %bb.n
  %.075 = phi ptr [ %i.bg, %bb.q ], [ %i.bg, %bb.p ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ %i.ac, %bb.n ], [ %i.n, %bb.m ], [ %i.n, %bb.e ] ; 4 uses
  %i.bx = call i32 @cairo_surface_status(ptr noundef %.075) #18 ; 2 uses
  %.not84 = icmp eq i32 %i.bx, 0
  br i1 %.not84, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !45
  %i.cd = call ptr @cairo_status_to_string(i32 noundef %i.bx) #18
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.11, ptr noundef %i.cc, ptr noundef %i.cd) #20 ; 0 uses
  call void @cairo_surface_destroy(ptr noundef %.075) #18
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cf = call ptr @cairo_create(ptr noundef %.075) #18 ; 2 uses
  call void @cairo_surface_destroy(ptr noundef %.075) #18
  store ptr %i.cf, ptr %i.d, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  %.0 = phi ptr [ %i.cf, %bb.t ], [ %i.e, %bb.a ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !51
  call void @cairo_scale(ptr noundef %.0, double noundef %i.ch, double noundef %i.cj) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !52
  %i.cm = sub nsw i32 0, %i.cl
  %i.cn = sitofp i32 %i.cm to double
  %i.co = fmul nnan double %i.cn, f0x400921FB54442D18
  %i.cp = fdiv double %i.co, 1.800000e+02
  call void @cairo_rotate(ptr noundef %.0, double noundef %i.cp) #18
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !54
  %i.cu = fneg double %i.ct
  call void @cairo_translate(ptr noundef %.0, double noundef %i.cr, double noundef %i.cu) #18
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !55 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !56 ; 2 uses
  %i.cz = fneg double %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.db = load double, ptr %i.da, align 8, !tbaa !57
  %i.dc = fsub double %i.db, %i.cw
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.de = load double, ptr %i.dd, align 8, !tbaa !58
  %i.df = fsub double %i.de, %i.cy
  %i.dg = fneg double %i.df
  call void @cairo_rectangle(ptr noundef %.0, double noundef %i.cw, double noundef %i.cz, double noundef %i.dc, double noundef %i.dg) #18
  call void @cairo_clip(ptr noundef %.0) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cairogen_end_page(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  switch i32 %i.d, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @cairo_get_target(ptr noundef %i.b) #18
  %i.f = tail call i32 @cairo_surface_write_to_png_stream(ptr noundef %i.e, ptr noundef nonnull @writer, ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void @cairo_show_page(ptr noundef %i.b) #18
  %i.g = tail call ptr @cairo_get_target(ptr noundef %i.b) #18
  %i.h = tail call ptr @cairo_surface_reference(ptr noundef %i.g) #18 ; 3 uses
  tail call void @cairo_surface_finish(ptr noundef %i.h) #18
  %i.i = tail call i32 @cairo_surface_status(ptr noundef %i.h) #18 ; 2 uses
  tail call void @cairo_surface_destroy(ptr noundef %i.h) #18
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.k = tail call ptr @cairo_status_to_string(i32 noundef %i.i) #18
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.12, ptr noundef %i.k) #20 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.m = tail call ptr @cairo_get_target(ptr noundef %i.b) #18 ; 3 uses
  %i.n = tail call i32 @cairo_image_surface_get_width(ptr noundef %i.m) #18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @cairo_image_surface_get_height(ptr noundef %i.m) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = tail call ptr @cairo_image_surface_get_data(ptr noundef %i.m) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.q, ptr %i.r, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cairogen_begin_anchor(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %5 = alloca %struct.agxbuf, align 8             ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
end_hunk_0
