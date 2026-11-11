Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_a3dscope?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"a3dscope\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Convert input audio to 3d scope video output.\00", align 1
@audio3dscope_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }], align 16
@audio3dscope_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@ff_avf_a3dscope = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @audio3dscope_inputs, ptr @audio3dscope_outputs, ptr @a3dscope_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 680, i32 0, ptr @ff_filter_process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@a3dscope_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @a3dscope_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"set video rate\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"set video size\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"hd720\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"fov\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"set camera FoV\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"roll\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"set camera roll\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"set camera pitch\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"yaw\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"set camera yaw\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"xzoom\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"set camera zoom\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"yzoom\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"zzoom\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"xpos\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"set camera position\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ypos\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"zpos\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"set length\00", align 1
@a3dscope_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 60, i32 15, { ptr } { ptr @.str.6 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.5, i32 60, i32 15, { ptr } { ptr @.str.6 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 8, i32 12, { ptr } { ptr @.str.10 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.9, i32 8, i32 12, { ptr } { ptr @.str.10 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 20, i32 5, { double } { double 9.000000e+01 }, double 4.000000e+01, double 1.500000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 24, i32 5, { double } zeroinitializer, double -1.800000e+02, double 1.800000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 28, i32 5, { double } zeroinitializer, double -1.800000e+02, double 1.800000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 32, i32 5, { double } zeroinitializer, double -1.800000e+02, double 1.800000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 36, i32 5, { double } { double 1.000000e+00 }, double 1.000000e-02, double 1.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.21, i32 40, i32 5, { double } { double 1.000000e+00 }, double 1.000000e-02, double 1.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.21, i32 44, i32 5, { double } { double 1.000000e+00 }, double 1.000000e-02, double 1.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 48, i32 5, { double } zeroinitializer, double -6.000000e+01, double 6.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.25, i32 52, i32 5, { double } zeroinitializer, double -6.000000e+01, double 6.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.25, i32 56, i32 5, { double } zeroinitializer, double -6.000000e+01, double 6.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 16, i32 2, %union.anon.2 { i64 15 }, double 1.000000e+00, double 6.000000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@query_formats.sample_fmts = internal constant [2 x i32] [i32 8, i32 -1], align 4
@query_formats.pix_fmts = internal constant [2 x i32] [i32 26, i32 -1], align 4

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !34
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = tail call ptr @ff_make_sample_format_list(ptr noundef nonnull @query_formats.sample_fmts) #10
  %i.b = load ptr, ptr %1, align 8, !tbaa !36
  %i.c = tail call i32 @ff_formats_ref(ptr noundef %i.a, ptr noundef %i.b) #10 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ff_make_pixel_format_list(ptr noundef nonnull @query_formats.pix_fmts) #10
  %i.f = load ptr, ptr %2, align 8, !tbaa !36
  %i.g = tail call i32 @ff_formats_ref(ptr noundef %i.e, ptr noundef %i.f) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.g, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.m = tail call i32 @ff_outlink_get_status(ptr noundef %i.j) #10 ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.g, i32 noundef %i.m) #10
  br label %bb.s

.critedge:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 68 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !24   ; 2 uses
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.g, i32 noundef %i.o, i32 noundef %i.o, ptr noundef nonnull %i.b) #10 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.s, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 43 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47  ; 2 uses
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = sitofp nsz i32 %i.ab to float
  %i.ad = fmul nnan nsz float %i.ac, 5.000000e-01 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !48 ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = sitofp nsz i32 %i.ag to float
  %i.ai = fmul nnan nsz float %i.ah, 5.000000e-01 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 44 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !50
  %i.an = call ptr @ff_get_video_buffer(ptr noundef %i.w, i32 noundef %i.ak, i32 noundef %i.am) #10 ; 10 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.a) #10
  br label %filter_frame.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 200 ; 4 uses
  store ptr %i.r, ptr %i.ao, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 124
  store i32 1, ptr %i.ap, align 4, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !33
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !50
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  br label %bb.g

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.au = load i64, ptr %i.at, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = call i64 @av_rescale_q(i64 noundef %i.au, i64 %i.ax, i64 %i.ay) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 408
  store i64 1, ptr %i.bb, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.bd = fdiv nsz float %i.ai, %i.ad
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i8 0, i64 12, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  store <2 x float> <float f0xBF800002, float -1.000000e+00>, ptr %i.bh, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  store float f0xBDCCCCCE, ptr %i.bi, align 8, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.bn = load <2 x float>, ptr %i.bc, align 4, !tbaa !58
  %i.bo = fmul <2 x float> %i.bn, <float 5.000000e-01, float 1.000000e+00>
  %i.bp = fpext nsz <2 x float> %i.bo to <2 x double>
  %i.bq = fmul nsz <2 x double> %i.bp, splat (double f0x400921FB54442D18)
  %i.br = fdiv nsz <2 x double> %i.bq, splat (double 1.800000e+02)
  %i.bs = fptrunc nsz <2 x double> %i.br to <2 x float> ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = call nsz float @llvm.tan.f32(float %i.bt)
  %i.bv = fdiv nsz float 1.000000e+00, %i.bu      ; 4 uses
  %i.bw = fmul nsz float %i.bd, %i.bv             ; 3 uses
  store float %i.bw, ptr %i.be, align 8, !tbaa !58
  store float %i.bv, ptr %i.bg, align 4, !tbaa !58
  %1 = extractelement <2 x float> %i.bs, i64 1
  %sincos.i.i = call nsz { float, float } @llvm.sincos.f32(float %1) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 4 uses
  %2 = fneg nsz float %sin.i.i                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %3 = load float, ptr %i.bx, align 4, !tbaa !58  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %4 = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %5 = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %6 = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %7 = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %8 = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %9 = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 132
  %10 = load float, ptr %i.bj, align 8, !tbaa !58 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %11 = load float, ptr %i.cf, align 4, !tbaa !58 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %12 = load float, ptr %i.cg, align 8, !tbaa !58 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !58 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 148
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !58 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !58 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.co = load float, ptr %i.cn, align 8, !tbaa !58 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !58 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 172
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !58 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %13 = getelementptr inbounds nuw i8, ptr %i.y, i64 188
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %14 = load <2 x float>, ptr %i.bk, align 4, !tbaa !58 ; 6 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cy = extractelement <2 x float> %14, i64 0
  %16 = fmul nsz float %i.cy, 0.000000e+00        ; 3 uses
  %17 = load <2 x float>, ptr %i.bl, align 4, !tbaa !58
  %18 = fpext nsz <2 x float> %17 to <2 x double>
  %i.cz = fmul nsz <2 x double> %18, splat (double f0x400921FB54442D18)
  %i.da = fdiv nsz <2 x double> %i.cz, splat (double 1.800000e+02)
  %i.db = fptrunc nsz <2 x double> %i.da to <2 x float>
  %i.dc = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.db) ; 2 uses
  %i.dd = extractvalue { <2 x float>, <2 x float> } %i.dc, 0 ; 7 uses
  %19 = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.de = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.df = extractvalue { <2 x float>, <2 x float> } %i.dc, 1 ; 7 uses
  %20 = extractelement <2 x float> %i.dd, i64 1   ; 2 uses
  %21 = fneg nsz float %20                        ; 3 uses
  %i.dg = fneg nsz float %i.de                    ; 2 uses
  %22 = insertelement <2 x float> %i.df, float 0.000000e+00, i64 1
  %23 = fmul nsz <2 x float> %14, %22             ; 3 uses
  %24 = insertelement <2 x float> %15, float %i.dg, i64 0 ; 2 uses
  %25 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> zeroinitializer, <2 x float> %23) ; 3 uses
  %26 = extractelement <2 x float> %i.df, i64 0   ; 3 uses
  %27 = extractelement <2 x float> %i.df, i64 1
  %28 = insertelement <2 x float> %14, float 0.000000e+00, i64 0
  %29 = insertelement <2 x float> poison, float %20, i64 0
  %30 = insertelement <2 x float> %29, float %21, i64 1
  %31 = insertelement <2 x float> %i.dd, float 0.000000e+00, i64 1
  %32 = shufflevector <2 x float> %14, <2 x float> %i.df, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %33 = shufflevector <4 x float> %32, <4 x float> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %34 = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <4 x float> %34, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %36 = fmul nsz <4 x float> %33, %35             ; 3 uses
  %37 = shufflevector <4 x float> %36, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <2 x i32> <i32 1, i32 5>
  %38 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %i.df, <2 x float> %37)
  %i.dh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %38) ; 3 uses
  %39 = shufflevector <2 x float> %i.df, <2 x float> %i.dd, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 2 uses
  %40 = insertelement <4 x float> %39, float %21, i64 2
  %41 = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> zeroinitializer, <4 x float> %36) ; 5 uses
  %foldExtExtBinop = fmul nsz <2 x float> %14, %i.dd
  %42 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %43 = insertelement <2 x float> %24, float 0.000000e+00, i64 1
  %44 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %45 = shufflevector <2 x float> %44, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.di = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %43, <2 x float> %45) ; 3 uses
  %i.dj = fmul nsz float %26, 0.000000e+00
  %46 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %21, i64 0
  %47 = insertelement <4 x float> %39, float %i.dg, i64 3
  %48 = shufflevector <4 x float> %41, <4 x float> %36, <4 x i32> <i32 1, i32 7, i32 7, i32 poison>
  %49 = insertelement <4 x float> %48, float %i.dj, i64 3
  %50 = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %46, <4 x float> %47, <4 x float> %49) ; 5 uses
  %51 = extractelement <4 x float> %50, i64 1
  %52 = call nsz float @llvm.fmuladd.f32(float %27, float %26, float %51) ; 2 uses
  %53 = fmul nsz float %i.de, 0.000000e+00
  %54 = call nsz float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %53) ; 2 uses
  %55 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x float> poison, float %2, i64 0
  %57 = insertelement <2 x float> %56, float %cos.i.i, i64 1 ; 3 uses
  %58 = fmul nsz <2 x float> %55, %57
  %59 = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %60 = insertelement <2 x float> %59, float %sin.i.i, i64 1 ; 3 uses
  %61 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %61, <2 x float> %58)
  %63 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %63, <2 x float> zeroinitializer, <2 x float> %62)
  %65 = shufflevector <4 x float> %50, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %66 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> zeroinitializer, <2 x float> %64) ; 5 uses
  %i.dk = extractelement <2 x float> %66, i64 0
  store float %i.dk, ptr %i.bm, align 8, !tbaa !58
  %67 = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %68 = fmul nsz <2 x float> %67, %57
  %69 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %70 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %69, <2 x float> %68)
  %71 = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %72 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> zeroinitializer, <2 x float> %70)
  %73 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> zeroinitializer, <2 x float> %72) ; 5 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  store float %i.dm, ptr %i.by, align 4, !tbaa !58
  %74 = shufflevector <4 x float> %50, <4 x float> poison, <2 x i32> zeroinitializer
  %75 = fmul nsz <2 x float> %74, %57
  %i.dn = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> zeroinitializer
  %76 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %i.dn, <2 x float> %75)
  %i.do = insertelement <2 x float> poison, float %52, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> zeroinitializer, <2 x float> %76)
  %77 = insertelement <2 x float> poison, float %54, i64 0
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %78, <2 x float> zeroinitializer, <2 x float> %i.dq) ; 3 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  store float %i.ds, ptr %4, align 8, !tbaa !58
  %79 = extractelement <4 x float> %41, i64 2     ; 3 uses
  %i.dt = fmul nsz float %79, %2
  %80 = call nsz float @llvm.fmuladd.f32(float %cos.i.i, float %16, float %i.dt)
  %81 = extractelement <4 x float> %50, i64 2     ; 4 uses
  %82 = call nsz float @llvm.fmuladd.f32(float %81, float 0.000000e+00, float %80) ; 5 uses
  store float %82, ptr %i.bz, align 4, !tbaa !58
  %83 = extractelement <2 x float> %66, i64 1
  store float %83, ptr %i.ca, align 8, !tbaa !58
  %84 = extractelement <2 x float> %i.dl, i64 1
  store float %84, ptr %5, align 4, !tbaa !58
  %85 = extractelement <2 x float> %i.dr, i64 1
  store float %85, ptr %6, align 8, !tbaa !58
  %86 = fmul nsz float %cos.i.i, %79
  %87 = call nsz float @llvm.fmuladd.f32(float %sin.i.i, float %16, float %86)
  %88 = call nsz float @llvm.fmuladd.f32(float %81, float 0.000000e+00, float %87) ; 5 uses
  store float %88, ptr %7, align 4, !tbaa !58
  %89 = fmul nsz <2 x float> %i.dh, zeroinitializer
  %90 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> zeroinitializer, <2 x float> %89)
  %i.du = insertelement <2 x float> poison, float %3, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.di, <2 x float> %90)
  %91 = shufflevector <2 x float> %65, <2 x float> %23, <2 x i32> <i32 0, i32 3>
  %i.dx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %91, <2 x float> zeroinitializer, <2 x float> %i.dw) ; 7 uses
  %92 = extractelement <2 x float> %i.dx, i64 0
  %i.dy = extractelement <2 x float> %i.dx, i64 1
  store <2 x float> %i.dx, ptr %i.cb, align 8, !tbaa !58
  %93 = extractelement <4 x float> %50, i64 0
  %94 = fmul nsz float %93, 0.000000e+00
  %95 = extractelement <4 x float> %41, i64 0
  %96 = call nsz float @llvm.fmuladd.f32(float %95, float 0.000000e+00, float %94)
  %97 = call nsz float @llvm.fmuladd.f32(float %3, float %52, float %96)
  %98 = call nsz float @llvm.fmuladd.f32(float %54, float 0.000000e+00, float %97) ; 2 uses
  store float %98, ptr %8, align 8, !tbaa !58
  %99 = fmul nsz float %79, 0.000000e+00
  %100 = call nsz float @llvm.fmuladd.f32(float %16, float 0.000000e+00, float %99) ; 2 uses
  %101 = call nsz float @llvm.fmuladd.f32(float %3, float %81, float %100) ; 5 uses
  store float %101, ptr %9, align 4, !tbaa !58
  %102 = call nsz float @llvm.fmuladd.f32(float %81, float 0.000000e+00, float %100)
  %103 = fadd nsz float %102, 1.000000e+00        ; 5 uses
  store float %103, ptr %i.ce, align 4, !tbaa !58
  %104 = insertelement <2 x float> poison, float %11, i64 0
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> zeroinitializer
  %106 = fmul nsz <2 x float> %i.dl, %105
  %i.dz = insertelement <2 x float> poison, float %10, i64 0
  %107 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %107, <2 x float> %106)
  %108 = insertelement <2 x float> poison, float %12, i64 0
  %109 = shufflevector <2 x float> %108, <2 x float> poison, <2 x i32> zeroinitializer
  %110 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %109, <2 x float> %i.ea) ; 2 uses
  %111 = fneg nsz <2 x float> %110                ; 4 uses
  store <2 x float> %111, ptr %i.cc, align 8, !tbaa !58
  %112 = fmul nsz float %i.dy, %11
  %113 = call nsz float @llvm.fmuladd.f32(float %92, float %10, float %112)
  %114 = call nsz float @llvm.fmuladd.f32(float %98, float %12, float %113)
  %115 = fneg nsz float %114
  store float %115, ptr %i.cd, align 8, !tbaa !58
  %116 = shufflevector <2 x float> %66, <2 x float> %i.dl, <2 x i32> <i32 1, i32 3> ; 4 uses
  %117 = fmul nsz <2 x float> %116, zeroinitializer
  %i.eb = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %118 = shufflevector <2 x float> %66, <2 x float> %i.dl, <2 x i32> <i32 0, i32 2> ; 4 uses
  %119 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %118, <2 x float> %117)
  %i.ed = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.dx, <2 x float> %119)
  %i.eg = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %111, <2 x float> %i.ef)
  %i.ej = fmul nsz float %88, 0.000000e+00
  %i.ek = call nsz float @llvm.fmuladd.f32(float %i.bw, float %82, float %i.ej)
  %i.el = call nsz float @llvm.fmuladd.f32(float %i.ci, float %101, float %i.ek)
  %i.em = call nsz float @llvm.fmuladd.f32(float %i.ck, float %103, float %i.el)
  %i.en = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %120 = fmul nsz <2 x float> %i.eo, %116
  %i.ep = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %121 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %118, <2 x float> %120)
  %i.er = insertelement <2 x float> poison, float %i.co, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.dx, <2 x float> %121)
  %i.eu = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %111, <2 x float> %i.et)
  %i.ex = fmul nsz float %i.bv, %88
  %i.ey = call nsz float @llvm.fmuladd.f32(float %i.cm, float %82, float %i.ex)
  %i.ez = call nsz float @llvm.fmuladd.f32(float %i.co, float %101, float %i.ey)
  %i.fa = call nsz float @llvm.fmuladd.f32(float %i.cq, float %103, float %i.ez)
  %i.fb = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul nsz <2 x float> %116, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %118, <2 x float> %i.fd)
  %i.fh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> splat (float f0xBF800002), <2 x float> %i.fg)
  %122 = fadd nsz <2 x float> %110, %i.fh
  %123 = fmul nsz float %88, %i.cu
  %i.fi = call nsz float @llvm.fmuladd.f32(float %i.cs, float %82, float %123)
  %124 = call nsz float @llvm.fmuladd.f32(float %101, float f0xBF800002, float %i.fi)
  %125 = fsub nsz float %124, %103
  %126 = load float, ptr %i.cv, align 8, !tbaa !58 ; 2 uses
  %127 = load float, ptr %13, align 4, !tbaa !58  ; 2 uses
  %i.fj = insertelement <2 x float> poison, float %127, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul nsz <2 x float> %116, %i.fk
  %i.fm = insertelement <2 x float> poison, float %126, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %118, <2 x float> %i.fl)
  %i.fp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> splat (float f0xBDCCCCCE), <2 x float> %i.fo)
  %128 = insertelement <2 x float> poison, float %i.cx, i64 0
  %129 = shufflevector <2 x float> %128, <2 x float> poison, <2 x i32> zeroinitializer
  %130 = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %129, <2 x float> %111, <2 x float> %i.fp)
  %131 = fmul nsz float %88, %127
  %132 = call nsz float @llvm.fmuladd.f32(float %126, float %82, float %131)
  %133 = call nsz float @llvm.fmuladd.f32(float %101, float f0xBDCCCCCE, float %132)
  %134 = call nsz float @llvm.fmuladd.f32(float %i.cx, float %103, float %133)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !59 ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, 0
  br i1 %i.fs, label %.lr.ph136.i, label %._crit_edge137.i

.lr.ph136.i:                                      ; preds = %._crit_edge.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.an, i64 64
  %i.fv = zext nneg i32 %i.fr to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.095123.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ge, %bb.g ] ; 2 uses
  %i.fw = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.fx = load i32, ptr %i.as, align 8, !tbaa !33
  %i.fy = mul nsw i32 %i.fx, %.095123.i
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fw, i64 %i.fz
  %i.gb = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.gc = shl nsw i32 %i.gb, 2
  %i.gd = sext i32 %i.gc to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ga, i8 0, i64 %i.gd, i1 false)
  %i.ge = add nuw nsw i32 %.095123.i, 1           ; 2 uses
  %i.gf = load i32, ptr %i.al, align 4, !tbaa !50
  %i.gg = icmp slt i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.g, label %._crit_edge.i, !llvm.loop !37

._crit_edge137.i:                                 ; preds = %.loopexit.i, %._crit_edge.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.y, i64 672
  call void @av_frame_free(ptr noundef nonnull %i.gh) #10
  %i.gi = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.gi, ptr noundef nonnull align 8 dereferenceable(472) %i.ao, i64 472, i1 false)
  store ptr null, ptr %i.ao, align 8, !tbaa !46
  %i.gj = call i32 @ff_filter_frame(ptr noundef %i.w, ptr noundef nonnull %i.an) #10
  br label %filter_frame.exit

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph136.i
  %indvars.iv143.i = phi i64 [ %i.fv, %.lr.ph136.i ], [ %indvars.iv.next144.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, -1 ; 3 uses
  %i.gk = load i32, ptr %i.ft, align 4, !tbaa !24
  %i.gl = sitofp nsz i32 %i.gk to float
  %i.gm = fdiv nsz float 1.000000e+00, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !46 ; 4 uses
  %.not103.i = icmp eq ptr %i.go, null
  br i1 %.not103.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 388
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !61 ; 2 uses
  %i.gr = sitofp nsz i32 %i.gq to float           ; 2 uses
  %i.gs = icmp sgt i32 %i.gq, 0
  br i1 %i.gs, label %.lr.ph132.i, label %.loopexit.i

.lr.ph132.i:                                      ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  %i.gu = fadd nsz float %i.gr, -1.000000e+00     ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 112 ; 2 uses
  %i.gw = fneg nsz float %i.gu
  %i.gx = load i32, ptr %i.gv, align 8, !tbaa !62 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph132.split.preheader.i, label %.loopexit.i

.lr.ph132.split.preheader.i:                      ; preds = %.lr.ph132.i
  %i.gz = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.ha = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph132.split.i

.lr.ph132.splitthread-pre-split.i:                ; preds = %._crit_edge129.i
  %.pr.i = load i32, ptr %i.gv, align 8, !tbaa !62
  br label %.lr.ph132.split.i

.lr.ph132.split.i:                                ; preds = %.lr.ph132.splitthread-pre-split.i, %.lr.ph132.split.preheader.i
  %i.hc = phi i32 [ %.pr.i, %.lr.ph132.splitthread-pre-split.i ], [ %i.gx, %.lr.ph132.split.preheader.i ] ; 2 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %.lr.ph132.splitthread-pre-split.i ], [ 0, %.lr.ph132.split.preheader.i ] ; 2 uses
  %i.hd = phi float [ %i.ik, %.lr.ph132.splitthread-pre-split.i ], [ 0.000000e+00, %.lr.ph132.split.preheader.i ] ; 2 uses
  %i.he = load ptr, ptr %i.gt, align 8, !tbaa !63
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv140.i
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !60
  %i.hh = icmp sgt i32 %i.hc, 0
  br i1 %i.hh, label %.lr.ph128.i, label %._crit_edge129.i

.lr.ph128.i:                                      ; preds = %.lr.ph132.split.i
  %i.hi = load i32, ptr %i.ft, align 4, !tbaa !24
  %i.hj = mul nsw i32 %i.hi, %i.gz
  %i.hk = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x float> %i.hl, <float 1.000000e+00, float 1.270000e+02>
  %i.hn = fdiv nsz <2 x float> %i.hm, %i.hb       ; 2 uses
  %i.ho = extractelement <2 x float> %i.hn, i64 0
  %i.hp = fpext nsz float %i.ho to double
  %i.hq = fmul nsz double %i.hp, f0x400921FB54442D18
  %i.hr = fptrunc nsz double %i.hq to float
  %sincos.i = call nsz { float, float } @llvm.sincos.f32(float %i.hr) ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.hs = call nsz float @llvm.fmuladd.f32(float %cos.i, float 1.270000e+02, float 1.280000e+02)
  %i.ht = extractelement <2 x float> %i.hn, i64 1
  %i.hu = fadd nsz float %i.ht, 1.280000e+02
  %i.hv = insertelement <4 x float> poison, float %i.hu, i64 0
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 1
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %i.hx = call nsz float @llvm.fmuladd.f32(float %sin.i, float 1.270000e+02, float 1.280000e+02)
  %i.hy = fptosi float %i.hx to i32
  %i.hz = call nsz float @llvm.fmuladd.f32(float %i.gw, float 5.000000e-01, float %i.hd) ; 2 uses
  %i.ia = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x float> %i.ew, %i.ib
  %135 = fmul nsz float %i.fa, %i.hz
  %i.id = sitofp nsz i32 %i.hy to float
  %i.ie = zext nneg i32 %i.hc to i64
  %i.if = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.id, i64 0
  %i.ig = fptosi <4 x float> %i.hw to <4 x i32>
  %i.ih = sitofp nsz <4 x i32> %i.ig to <4 x float>
  %i.ii = shufflevector <4 x float> %i.if, <4 x float> %i.ih, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.j

._crit_edge129.i:                                 ; preds = %bb.m, %.lr.ph132.split.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.ij = trunc nuw nsw i64 %indvars.iv.next141.i to i32
  %i.ik = uitofp nsz nneg i32 %i.ij to float      ; 2 uses
  %i.il = fcmp nsz olt float %i.ik, %i.gr
  br i1 %i.il, label %.lr.ph132.splitthread-pre-split.i, label %.loopexit.i, !llvm.loop !38

bb.j:                                             ; preds = %bb.m, %.lr.ph128.i
  %indvars.iv.i = phi i64 [ %i.ie, %.lr.ph128.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.0125.i = phi i32 [ %i.hj, %.lr.ph128.i ], [ %i.kb, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next.i
  %i.in = load float, ptr %i.im, align 4, !tbaa !58 ; 2 uses
  %i.io = sub nsw i32 0, %.0125.i
  %i.ip = sitofp nsz i32 %i.io to float
  %i.iq = call nsz float @llvm.fmuladd.f32(float %i.ip, float %i.gm, float -1.000000e-01) ; 2 uses
  %i.ir = call nsz float @llvm.fmuladd.f32(float %i.in, float %i.em, float %135)
  %i.is = call nsz float @llvm.fmuladd.f32(float %i.iq, float %125, float %i.ir)
  %i.it = fadd nsz float %134, %i.is              ; 2 uses
  %i.iu = insertelement <2 x float> poison, float %i.in, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.ei, <2 x float> %i.ic)
  %i.ix = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %122, <2 x float> %i.iw)
  %i.ja = fadd nsz <2 x float> %130, %i.iz
  %i.jb = insertelement <2 x float> poison, float %i.it, i64 0
  %136 = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jc = fdiv nsz <2 x float> %i.ja, %136        ; 2 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %i.je = call nsz float @llvm.fmuladd.f32(float %i.jd, float %i.ai, float %i.ai)
  %i.jf = fptosi float %i.je to i32               ; 3 uses
  %i.jg = extractelement <2 x float> %i.jc, i64 1
  %i.jh = call nsz float @llvm.fmuladd.f32(float %i.jg, float %i.ad, float %i.ad)
  %i.ji = fptosi float %i.jh to i32               ; 3 uses
  %.not104.i = icmp sgt i32 %i.af, %i.jf
  br i1 %.not104.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.jj = icmp sle i32 %i.aa, %i.ji
  %i.jk = or i32 %i.ji, %i.jf
  %i.jl = icmp slt i32 %i.jk, 0
  %or.cond3.i = or i1 %i.jj, %i.jl
  br i1 %or.cond3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jm = fdiv nsz float 1.000000e+00, %i.it      ; 2 uses
  %i.jn = fcmp nsz ogt float %i.jm, 0.000000e+00
  %i.jo = select nsz i1 %i.jn, float %i.jm, float 0.000000e+00 ; 2 uses
  %i.jp = fcmp nsz ogt float %i.jo, 1.000000e+00
  %..i.i = select nsz i1 %i.jp, float 1.000000e+00, float %i.jo
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !60
  %.val105.i = load i32, ptr %i.fu, align 8, !tbaa !33
  %i.jq = sext i32 %.val105.i to i64
  %i.jr = zext nneg i32 %i.ji to i64
  %i.js = mul nsw i64 %i.jq, %i.jr
  %i.jt = getelementptr inbounds i8, ptr %.val.i, i64 %i.js
  %i.ju = shl i32 %i.jf, 2
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jv
  %i.jx = insertelement <4 x float> poison, float %..i.i, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = fmul nsz <4 x float> %i.jy, %i.ii
  %i.ka = fptoui <4 x float> %i.jz to <4 x i8>
  store <4 x i8> %i.ka, ptr %i.jw, align 1, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.kb = add nsw i32 %.0125.i, 1
  %i.kc = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.kc, label %bb.j, label %._crit_edge129.i, !llvm.loop !39

.loopexit.i:                                      ; preds = %._crit_edge129.i, %.lr.ph132.i, %bb.i, %bb.h
  %i.kd = icmp sgt i64 %indvars.iv143.i, 1
  br i1 %i.kd, label %bb.h, label %._crit_edge137.i, !llvm.loop !40

filter_frame.exit:                                ; preds = %bb.e, %._crit_edge137.i
  %.096.i = phi i32 [ %i.gj, %._crit_edge137.i ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  %i.ke = call i32 @ff_inlink_queued_samples(ptr noundef %i.g) #10
  %i.kf = load i32, ptr %i.n, align 4, !tbaa !24
  %.not30 = icmp slt i32 %i.ke, %i.kf
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #10
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.kg = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10
  %.not31 = icmp eq i32 %i.kg, 0
  br i1 %.not31, label %.critedge34, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kh = load i32, ptr %i.c, align 4, !tbaa !33
  %i.ki = load i64, ptr %i.d, align 8, !tbaa !66
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.j, i32 noundef %i.kh, i64 noundef %i.ki) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.s

.critedge34:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.kj = call i32 @ff_outlink_frame_wanted(ptr noundef %i.j) #10
  %.not32 = icmp eq i32 %i.kj, 0
  br i1 %.not32, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge34
  call void @ff_inlink_request_frame(ptr noundef %i.g) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.b, %.critedge34, %.critedge, %bb.r, %bb.o, %filter_frame.exit
  %.2 = phi i32 [ 0, %bb.b ], [ %.096.i, %filter_frame.exit ], [ 0, %bb.o ], [ 0, %bb.r ], [ %i.p, %.critedge ], [ 0, %bb.q ], [ -1497649742, %.critedge34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.j = load i32, ptr %i.i, align 4, !tbaa !68
  %i.k = sext i32 %i.j to i64
  %i.l = load i32, ptr %i.h, align 4, !tbaa !69
  %i.m = sext i32 %i.l to i64
  %i.n = tail call i64 @av_rescale(i64 noundef %i.g, i64 noundef %i.k, i64 noundef %i.m) #11
  %spec.select9 = tail call i64 @llvm.smax.i64(i64 %i.n, i64 1)
  %spec.select = trunc i64 %spec.select9 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %spec.select, ptr %i.o, align 4, !tbaa !24
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_output(ptr nofree noundef captures(none) initializes((40, 56), (96, 104), (280, 288)) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !33
  store <2 x i32> %i.f, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.g, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.j = load i64, ptr %i.i, align 4, !tbaa !33   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 32)
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.k, align 8, !tbaa !33
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #2

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #2

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #2

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #2

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #2

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tan.f32(float) #9

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8
end_hunk_0
