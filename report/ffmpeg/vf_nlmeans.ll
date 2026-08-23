Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_nlmeans?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.thread_data = type { ptr, i64, i32, i32, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [8 x i8] c"nlmeans\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Non-local means denoiser.\00", align 1
@nlmeans_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [14 x i32] [i32 6, i32 7, i32 0, i32 4, i32 31, i32 5, i32 14, i32 32, i32 13, i32 12, i32 138, i32 8, i32 71, i32 -1], align 16
@ff_vf_nlmeans = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @nlmeans_inputs, ptr @ff_video_default_filterpad, ptr @nlmeans_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 160, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@nlmeans_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @nlmeans_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"denoising strength\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"patch size\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"patch size for chroma planes\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"research window\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"research window for chroma planes\00", align 1
@nlmeans_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 32, i32 4, { double } { double 1.000000e+00 }, double 1.000000e+00, double 3.000000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 40, i32 2, %union.anon.2 { i64 7 }, double 0.000000e+00, double 9.900000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 48, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 9.900000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 56, i32 2, %union.anon.2 { i64 15 }, double 0.000000e+00, double 9.900000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 64, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 9.900000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.15 = private unnamed_addr constant [57 x i8] c"Luma research window size must be odd, setting it to %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Luma patch size must be odd, setting it to %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Chroma research window size must be odd, setting it to %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"Chroma patch size must be odd, setting it to %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"Research window: %dx%d / %dx%d, patch size: %dx%d / %dx%d\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
  %i.e = fmul nsz double %i.d, 1.000000e+01       ; 2 uses
  %i.f = fmul nsz double %i.e, %i.e
  %i.g = fdiv nsz double 1.000000e+00, %i.f       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store double %i.g, ptr %i.h, align 8, !tbaa !27
  %i.i = fdiv nsz double f0x40162A40FDA3E3CC, %i.g
  %i.j = fptoui double %i.i to i32                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !28
  %i.l = add i32 %i.j, 1
  %i.m = zext i32 %i.l to i64
  %i.n = tail call noalias ptr @av_calloc(i64 noundef %i.m, i64 noundef 4) #8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.p = load i32, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %.not65 = icmp eq i32 %i.p, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = load double, ptr %i.h, align 8, !tbaa !27
  %wide.trip.count = zext i32 %i.p to i64
  %1 = fmul nsz double %i.q, 0.000000e+00
  %2 = tail call nsz double @llvm.exp.f64(double %1)
  %3 = fptrunc nsz double %2 to float
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.t = and i32 %i.s, 1
  %.not58 = icmp eq i32 %i.t, 0
  br i1 %.not58, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float %3, ptr %i.u, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !33

bb.c:                                             ; preds = %._crit_edge
  %i.v = or disjoint i32 %i.s, 1                  ; 2 uses
  store i32 %i.v, ptr %i.r, align 8, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15, i32 noundef %i.v) #8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35   ; 2 uses
  %i.y = and i32 %i.x, 1
  %.not59 = icmp eq i32 %i.y, 0
  br i1 %.not59, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = or disjoint i32 %i.x, 1                  ; 2 uses
  store i32 %i.z, ptr %i.w, align 8, !tbaa !35
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.16, i32 noundef %i.z) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %.not60 = icmp eq i32 %i.ab, 0
  br i1 %.not60, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi i32 [ %i.ac, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !37 ; 2 uses
  %.not61 = icmp eq i32 %i.af, 0
  br i1 %.not61, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !35  ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi i32 [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  %i.ai = and i32 %i.ad, 1
  %.not62 = icmp eq i32 %i.ai, 0
  br i1 %.not62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = or disjoint i32 %i.ad, 1                ; 2 uses
  store i32 %i.aj, ptr %i.aa, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.17, i32 noundef %i.aj) #8
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ak = phi i32 [ %i.ah, %bb.j ], [ %.pre, %bb.k ] ; 3 uses
  %i.al = and i32 %i.ak, 1
  %.not63 = icmp eq i32 %i.al, 0
  br i1 %.not63, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = or disjoint i32 %i.ak, 1                ; 2 uses
  store i32 %i.am, ptr %i.ae, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.18, i32 noundef %i.am) #8
  %.pre67 = load i32, ptr %i.ae, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = phi i32 [ %.pre67, %bb.m ], [ %i.ak, %bb.l ] ; 3 uses
  %i.ao = load i32, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  %i.ap = sdiv i32 %i.ao, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !38
  %i.ar = load i32, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.as = sdiv i32 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i32 %i.as, ptr %i.at, align 4, !tbaa !39
  %i.au = load i32, ptr %i.w, align 8, !tbaa !35  ; 3 uses
  %i.av = sdiv i32 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !40
  %i.ax = sdiv i32 %i.an, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.19, i32 noundef %i.ao, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef %i.ar, i32 noundef %i.au, i32 noundef %i.au, i32 noundef %i.an, i32 noundef %i.an) #8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr @compute_safe_ssd_integral_image_c, ptr %i.az, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @compute_weights_line_c, ptr %i.ba, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.057 = phi i32 [ 0, %bb.n ], [ -12, %bb.a ]
  ret i32 %.057
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.f) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.thread_data, align 8        ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.l) #8 ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #8 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !60
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %nlmeans_plane.exit, %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  %i.ad = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %i.m) #8
  br label %bb.n

bb.d:                                             ; preds = %.lr.ph, %nlmeans_plane.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %nlmeans_plane.exit ] ; 6 uses
  %.not38 = icmp eq i64 %indvars.iv, 0            ; 4 uses
  %.in = select i1 %.not38, ptr %i.s, ptr %i.r
  %i.ae = load i32, ptr %.in, align 4, !tbaa !61  ; 8 uses
  %.in39 = select i1 %.not38, ptr %i.u, ptr %i.t
  %i.af = load i32, ptr %.in39, align 4, !tbaa !61 ; 10 uses
  %.in40.v = select i1 %.not38, i64 44, i64 52
  %.in40 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in40.v
  %i.ag = load i32, ptr %.in40, align 4, !tbaa !61 ; 2 uses
  %.in41.v = select i1 %.not38, i64 60, i64 68
  %.in41 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.in41.v
  %i.ah = load i32, ptr %.in41, align 4, !tbaa !61 ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !62 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61 ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !62 ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !61 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 16 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !9   ; 6 uses
  %i.av = add nsw i32 %i.ah, %i.ag                ; 11 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63
  %i.ay = sext i32 %i.av to i64                   ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
end_hunk_0
