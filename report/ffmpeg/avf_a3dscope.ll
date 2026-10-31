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
  %i.bp = fpext <2 x float> %i.bo to <2 x double>
  %i.bq = fmul nsz <2 x double> %i.bp, splat (double f0x400921FB54442D18)
  %i.br = fdiv nsz <2 x double> %i.bq, splat (double 1.800000e+02)
  %i.bs = fptrunc <2 x double> %i.br to <2 x float> ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = call nsz float @llvm.tan.f32(float %i.bt)
  %i.bv = fdiv nsz float 1.000000e+00, %i.bu      ; 4 uses
  %i.bw = fmul nsz float %i.bd, %i.bv             ; 3 uses
  store float %i.bw, ptr %i.be, align 8, !tbaa !58
  store float %i.bv, ptr %i.bg, align 4, !tbaa !58
  %i.bx = extractelement <2 x float> %i.bs, i64 1
  %sincos.i.i = call nsz { float, float } @llvm.sincos.f32(float %i.bx) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 4 uses
  %i.by = fneg nsz float %sin.i.i                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !58 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 116
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 132
  %i.co = load float, ptr %i.bj, align 8, !tbaa !58 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !58 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !58 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !58 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 148
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !58 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !58 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.da = load float, ptr %i.cz, align 8, !tbaa !58 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %i.dc = load float, ptr %i.db, align 4, !tbaa !58 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.de = load float, ptr %i.dd, align 8, !tbaa !58 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.y, i64 172
  %i.dg = load float, ptr %i.df, align 4, !tbaa !58 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.di = getelementptr inbounds nuw i8, ptr %i.y, i64 188
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !58 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.bk, align 4, !tbaa !58 ; 6 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dn = extractelement <2 x float> %i.dl, i64 0
  %i.do = fmul nsz float %i.dn, 0.000000e+00      ; 3 uses
  %i.dp = load <2 x float>, ptr %i.bl, align 4, !tbaa !58
  %i.dq = fpext <2 x float> %i.dp to <2 x double>
  %i.dr = fmul nsz <2 x double> %i.dq, splat (double f0x400921FB54442D18)
  %i.ds = fdiv nsz <2 x double> %i.dr, splat (double 1.800000e+02)
  %i.dt = fptrunc <2 x double> %i.ds to <2 x float>
  %i.du = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.dt) ; 2 uses
  %i.dv = extractvalue { <2 x float>, <2 x float> } %i.du, 0 ; 7 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dx = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.dy = extractvalue { <2 x float>, <2 x float> } %i.du, 1 ; 7 uses
  %i.dz = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.ea = fneg nsz float %i.dz                    ; 3 uses
  %i.eb = fneg nsz float %i.dx                    ; 2 uses
  %i.ec = insertelement <2 x float> %i.dy, float 0.000000e+00, i64 1
  %i.ed = fmul nsz <2 x float> %i.dl, %i.ec       ; 3 uses
  %i.ee = insertelement <2 x float> %i.dm, float %i.eb, i64 0 ; 2 uses
  %i.ef = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.ed) ; 3 uses
  %i.eg = extractelement <2 x float> %i.dy, i64 0 ; 3 uses
  %i.eh = extractelement <2 x float> %i.dy, i64 1
  %i.ei = insertelement <2 x float> %i.dl, float 0.000000e+00, i64 0
  %i.ej = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ea, i64 1
  %i.el = insertelement <2 x float> %i.dv, float 0.000000e+00, i64 1
  %i.em = shufflevector <2 x float> %i.dl, <2 x float> %i.dy, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eo = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eq = fmul nsz <4 x float> %i.en, %i.ep       ; 3 uses
  %i.er = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.eq, <2 x i32> <i32 5, i32 1>
  %i.es = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.dy, <2 x float> %i.er)
  %i.et = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.es) ; 3 uses
  %i.eu = shufflevector <2 x float> %i.dy, <2 x float> %i.dv, <4 x i32> <i32 0, i32 2, i32 1, i32 0> ; 2 uses
  %i.ev = insertelement <4 x float> %i.eu, float %i.ea, i64 2
  %i.ew = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> zeroinitializer, <4 x float> %i.eq) ; 5 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.dl, %i.dv
  %i.ex = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = insertelement <2 x float> %i.ee, float 0.000000e+00, i64 1
  %i.ez = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.fb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ey, <2 x float> %i.fa) ; 3 uses
  %i.fc = fmul nsz float %i.eg, 0.000000e+00
  %i.fd = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ea, i64 0
  %i.fe = insertelement <4 x float> %i.eu, float %i.eb, i64 3
  %i.ff = shufflevector <4 x float> %i.ew, <4 x float> %i.eq, <4 x i32> <i32 1, i32 7, i32 7, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 3
  %i.fh = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.fe, <4 x float> %i.fg) ; 5 uses
  %i.fi = extractelement <4 x float> %i.fh, i64 1
  %i.fj = call nsz float @llvm.fmuladd.f32(float %i.eh, float %i.eg, float %i.fi) ; 2 uses
  %i.fk = fmul nsz float %i.dx, 0.000000e+00
  %i.fl = call nsz float @llvm.fmuladd.f32(float %i.eg, float 0.000000e+00, float %i.fk) ; 2 uses
  %i.fm = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x float> poison, float %i.by, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %cos.i.i, i64 1 ; 3 uses
  %i.fp = fmul nsz <2 x float> %i.fm, %i.fo
  %i.fq = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %sin.i.i, i64 1 ; 3 uses
  %i.fs = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fs, <2 x float> %i.fp)
  %i.fu = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> zeroinitializer, <2 x float> %i.ft)
  %i.fw = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.fx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> zeroinitializer, <2 x float> %i.fv) ; 5 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  store float %i.fy, ptr %i.bm, align 8, !tbaa !58
  %i.fz = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = fmul nsz <2 x float> %i.fz, %i.fo
  %i.gb = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.gb, <2 x float> %i.ga)
  %i.gd = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ge = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> zeroinitializer, <2 x float> %i.gc)
  %i.gf = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> zeroinitializer, <2 x float> %i.ge) ; 5 uses
  %i.gh = extractelement <2 x float> %i.gg, i64 0
  store float %i.gh, ptr %i.cb, align 4, !tbaa !58
  %i.gi = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fmul nsz <2 x float> %i.gi, %i.fo
  %i.gk = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> zeroinitializer
  %i.gl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.gk, <2 x float> %i.gj)
  %i.gm = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> zeroinitializer, <2 x float> %i.gl)
  %i.gp = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> zeroinitializer, <2 x float> %i.go) ; 3 uses
  %i.gs = extractelement <2 x float> %i.gr, i64 0
  store float %i.gs, ptr %i.cc, align 8, !tbaa !58
  %i.gt = extractelement <4 x float> %i.ew, i64 2 ; 3 uses
  %i.gu = fmul nsz float %i.gt, %i.by
  %i.gv = call nsz float @llvm.fmuladd.f32(float %cos.i.i, float %i.do, float %i.gu)
  %i.gw = extractelement <4 x float> %i.fh, i64 2 ; 4 uses
  %i.gx = call nsz float @llvm.fmuladd.f32(float %i.gw, float 0.000000e+00, float %i.gv) ; 5 uses
  store float %i.gx, ptr %i.cd, align 4, !tbaa !58
  %i.gy = extractelement <2 x float> %i.fx, i64 1
  store float %i.gy, ptr %i.ce, align 8, !tbaa !58
  %i.gz = extractelement <2 x float> %i.gg, i64 1
  store float %i.gz, ptr %i.cf, align 4, !tbaa !58
  %i.ha = extractelement <2 x float> %i.gr, i64 1
  store float %i.ha, ptr %i.cg, align 8, !tbaa !58
  %i.hb = fmul nsz float %cos.i.i, %i.gt
  %i.hc = call nsz float @llvm.fmuladd.f32(float %sin.i.i, float %i.do, float %i.hb)
  %i.hd = call nsz float @llvm.fmuladd.f32(float %i.gw, float 0.000000e+00, float %i.hc) ; 5 uses
  store float %i.hd, ptr %i.ch, align 4, !tbaa !58
  %i.he = fmul nsz <2 x float> %i.et, zeroinitializer
  %i.hf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> zeroinitializer, <2 x float> %i.he)
  %i.hg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.fb, <2 x float> %i.hf)
  %i.hj = shufflevector <2 x float> %i.fw, <2 x float> %i.ed, <2 x i32> <i32 0, i32 3>
  %i.hk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> zeroinitializer, <2 x float> %i.hi) ; 7 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 0
  %i.hm = extractelement <2 x float> %i.hk, i64 1
  store <2 x float> %i.hk, ptr %i.ci, align 8, !tbaa !58
  %i.hn = extractelement <4 x float> %i.fh, i64 0
  %i.ho = fmul nsz float %i.hn, 0.000000e+00
  %i.hp = extractelement <4 x float> %i.ew, i64 0
  %i.hq = call nsz float @llvm.fmuladd.f32(float %i.hp, float 0.000000e+00, float %i.ho)
  %i.hr = call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.fj, float %i.hq)
  %i.hs = call nsz float @llvm.fmuladd.f32(float %i.fl, float 0.000000e+00, float %i.hr) ; 2 uses
  store float %i.hs, ptr %i.cj, align 8, !tbaa !58
  %i.ht = fmul nsz float %i.gt, 0.000000e+00
  %i.hu = call nsz float @llvm.fmuladd.f32(float %i.do, float 0.000000e+00, float %i.ht) ; 2 uses
  %i.hv = call nsz float @llvm.fmuladd.f32(float %i.ca, float %i.gw, float %i.hu) ; 5 uses
  store float %i.hv, ptr %i.ck, align 4, !tbaa !58
  %i.hw = call nsz float @llvm.fmuladd.f32(float %i.gw, float 0.000000e+00, float %i.hu)
  %i.hx = fadd nsz float %i.hw, 1.000000e+00      ; 5 uses
  store float %i.hx, ptr %i.cn, align 4, !tbaa !58
  %i.hy = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fmul nsz <2 x float> %i.gg, %i.hz
  %i.ib = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.ic, <2 x float> %i.ia)
  %i.ie = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.if, <2 x float> %i.id) ; 2 uses
  %i.ih = fneg nsz <2 x float> %i.ig              ; 4 uses
  store <2 x float> %i.ih, ptr %i.cl, align 8, !tbaa !58
  %i.ii = fmul nsz float %i.hm, %i.cq
  %i.ij = call nsz float @llvm.fmuladd.f32(float %i.hl, float %i.co, float %i.ii)
  %i.ik = call nsz float @llvm.fmuladd.f32(float %i.hs, float %i.cs, float %i.ij)
  %i.il = fneg nsz float %i.ik
  store float %i.il, ptr %i.cm, align 8, !tbaa !58
  %i.im = shufflevector <2 x float> %i.fx, <2 x float> %i.gg, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.in = fmul nsz <2 x float> %i.im, zeroinitializer
  %i.io = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = shufflevector <2 x float> %i.fx, <2 x float> %i.gg, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ir = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.iq, <2 x float> %i.in)
  %i.is = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.hk, <2 x float> %i.ir)
  %i.iv = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.ih, <2 x float> %i.iu)
  %i.iy = fmul nsz float %i.hd, 0.000000e+00
  %i.iz = call nsz float @llvm.fmuladd.f32(float %i.bw, float %i.gx, float %i.iy)
  %i.ja = call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.hv, float %i.iz)
  %i.jb = call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.hx, float %i.ja)
  %i.jc = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul nsz <2 x float> %i.jd, %i.im
  %i.jf = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jg, <2 x float> %i.iq, <2 x float> %i.je)
  %i.ji = insertelement <2 x float> poison, float %i.da, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jj, <2 x float> %i.hk, <2 x float> %i.jh)
  %i.jl = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.ih, <2 x float> %i.jk)
  %i.jo = fmul nsz float %i.bv, %i.hd
  %i.jp = call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.gx, float %i.jo)
  %i.jq = call nsz float @llvm.fmuladd.f32(float %i.da, float %i.hv, float %i.jp)
  %i.jr = call nsz float @llvm.fmuladd.f32(float %i.dc, float %i.hx, float %i.jq)
  %i.js = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ju = fmul nsz <2 x float> %i.im, %i.jt
  %i.jv = insertelement <2 x float> poison, float %i.de, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.iq, <2 x float> %i.ju)
  %i.jy = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> splat (float f0xBF800002), <2 x float> %i.jx)
  %i.jz = fadd nsz <2 x float> %i.ig, %i.jy
  %i.ka = fmul nsz float %i.hd, %i.dg
  %i.kb = call nsz float @llvm.fmuladd.f32(float %i.de, float %i.gx, float %i.ka)
  %i.kc = call nsz float @llvm.fmuladd.f32(float %i.hv, float f0xBF800002, float %i.kb)
  %i.kd = fsub nsz float %i.kc, %i.hx
  %i.ke = load float, ptr %i.dh, align 8, !tbaa !58 ; 2 uses
  %i.kf = load float, ptr %i.di, align 4, !tbaa !58 ; 2 uses
  %i.kg = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = fmul nsz <2 x float> %i.im, %i.kh
  %i.kj = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.iq, <2 x float> %i.ki)
  %i.km = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> splat (float f0xBDCCCCCE), <2 x float> %i.kl)
  %i.kn = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.ih, <2 x float> %i.km)
  %i.kq = fmul nsz float %i.hd, %i.kf
  %i.kr = call nsz float @llvm.fmuladd.f32(float %i.ke, float %i.gx, float %i.kq)
  %i.ks = call nsz float @llvm.fmuladd.f32(float %i.hv, float f0xBDCCCCCE, float %i.kr)
  %i.kt = call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.hx, float %i.ks)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !59 ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph136.i, label %._crit_edge137.i

.lr.ph136.i:                                      ; preds = %._crit_edge.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.y, i64 68 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.an, i64 64
  %i.kz = zext nneg i32 %i.kv to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.095123.i = phi i32 [ 0, %.lr.ph.i ], [ %i.li, %bb.g ] ; 2 uses
  %i.la = load ptr, ptr %i.an, align 8, !tbaa !60
  %i.lb = load i32, ptr %i.as, align 8, !tbaa !33
  %i.lc = mul nsw i32 %i.lb, %.095123.i
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %i.la, i64 %i.ld
  %i.lf = load i32, ptr %i.aj, align 8, !tbaa !49
  %i.lg = shl nsw i32 %i.lf, 2
  %i.lh = sext i32 %i.lg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.le, i8 0, i64 %i.lh, i1 false)
  %i.li = add nuw nsw i32 %.095123.i, 1           ; 2 uses
  %i.lj = load i32, ptr %i.al, align 4, !tbaa !50
  %i.lk = icmp slt i32 %i.li, %i.lj
  br i1 %i.lk, label %bb.g, label %._crit_edge.i, !llvm.loop !37

._crit_edge137.i:                                 ; preds = %.loopexit.i, %._crit_edge.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.y, i64 672
  call void @av_frame_free(ptr noundef nonnull %i.ll) #10
  %i.lm = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.lm, ptr noundef nonnull align 8 dereferenceable(472) %i.ao, i64 472, i1 false)
  store ptr null, ptr %i.ao, align 8, !tbaa !46
  %i.ln = call i32 @ff_filter_frame(ptr noundef %i.w, ptr noundef nonnull %i.an) #10
  br label %filter_frame.exit

bb.h:                                             ; preds = %.loopexit.i, %.lr.ph136.i
  %indvars.iv143.i = phi i64 [ %i.kz, %.lr.ph136.i ], [ %indvars.iv.next144.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, -1 ; 3 uses
  %i.lo = load i32, ptr %i.kx, align 4, !tbaa !24
  %i.lp = sitofp nsz i32 %i.lo to float
  %i.lq = fdiv nsz float 1.000000e+00, %i.lp
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next144.i
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !46 ; 4 uses
  %.not103.i = icmp eq ptr %i.ls, null
  br i1 %.not103.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 388
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !61 ; 2 uses
  %i.lv = sitofp nsz i32 %i.lu to float           ; 2 uses
  %i.lw = icmp sgt i32 %i.lu, 0
  br i1 %i.lw, label %.lr.ph132.i, label %.loopexit.i

.lr.ph132.i:                                      ; preds = %bb.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 96
  %i.ly = fadd nsz float %i.lv, -1.000000e+00     ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 112 ; 2 uses
  %i.ma = fneg nsz float %i.ly
  %i.mb = load i32, ptr %i.lz, align 8, !tbaa !62 ; 2 uses
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %.lr.ph132.split.preheader.i, label %.loopexit.i

.lr.ph132.split.preheader.i:                      ; preds = %.lr.ph132.i
  %i.md = trunc nuw nsw i64 %indvars.iv.next144.i to i32
  %i.me = insertelement <2 x float> poison, float %i.ly, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph132.split.i

.lr.ph132.splitthread-pre-split.i:                ; preds = %._crit_edge129.i
  %.pr.i = load i32, ptr %i.lz, align 8, !tbaa !62
  br label %.lr.ph132.split.i

.lr.ph132.split.i:                                ; preds = %.lr.ph132.splitthread-pre-split.i, %.lr.ph132.split.preheader.i
  %i.mg = phi i32 [ %.pr.i, %.lr.ph132.splitthread-pre-split.i ], [ %i.mb, %.lr.ph132.split.preheader.i ] ; 2 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %.lr.ph132.splitthread-pre-split.i ], [ 0, %.lr.ph132.split.preheader.i ] ; 2 uses
  %i.mh = phi float [ %i.np, %.lr.ph132.splitthread-pre-split.i ], [ 0.000000e+00, %.lr.ph132.split.preheader.i ] ; 2 uses
  %i.mi = load ptr, ptr %i.lx, align 8, !tbaa !63
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv140.i
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !60
  %i.ml = icmp sgt i32 %i.mg, 0
  br i1 %i.ml, label %.lr.ph128.i, label %._crit_edge129.i

.lr.ph128.i:                                      ; preds = %.lr.ph132.split.i
  %i.mm = load i32, ptr %i.kx, align 4, !tbaa !24
  %i.mn = mul nsw i32 %i.mm, %i.md
  %i.mo = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x float> %i.mp, <float 1.000000e+00, float 1.270000e+02>
  %i.mr = fdiv nsz <2 x float> %i.mq, %i.mf       ; 2 uses
  %i.ms = extractelement <2 x float> %i.mr, i64 0
  %i.mt = fpext nsz float %i.ms to double
  %i.mu = fmul nsz double %i.mt, f0x400921FB54442D18
  %i.mv = fptrunc nsz double %i.mu to float
  %sincos.i = call nsz { float, float } @llvm.sincos.f32(float %i.mv) ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.mw = call nsz float @llvm.fmuladd.f32(float %cos.i, float 1.270000e+02, float 1.280000e+02)
  %i.mx = extractelement <2 x float> %i.mr, i64 1
  %i.my = fadd nsz float %i.mx, 1.280000e+02
  %i.mz = insertelement <4 x float> poison, float %i.my, i64 0
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 1
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %i.nb = call nsz float @llvm.fmuladd.f32(float %sin.i, float 1.270000e+02, float 1.280000e+02)
  %i.nc = fptosi float %i.nb to i32
  %i.nd = call nsz float @llvm.fmuladd.f32(float %i.ma, float 5.000000e-01, float %i.mh) ; 2 uses
  %i.ne = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fmul nsz <2 x float> %i.jn, %i.nf
  %i.nh = fmul nsz float %i.jr, %i.nd
  %i.ni = sitofp nsz i32 %i.nc to float
  %i.nj = zext nneg i32 %i.mg to i64
  %i.nk = insertelement <4 x float> <float poison, float poison, float poison, float 2.550000e+02>, float %i.ni, i64 0
  %i.nl = fptosi <4 x float> %i.na to <4 x i32>
  %i.nm = sitofp <4 x i32> %i.nl to <4 x float>
  %i.nn = shufflevector <4 x float> %i.nk, <4 x float> %i.nm, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.j

._crit_edge129.i:                                 ; preds = %bb.m, %.lr.ph132.split.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %i.no = trunc nuw nsw i64 %indvars.iv.next141.i to i32
  %i.np = uitofp nsz nneg i32 %i.no to float      ; 2 uses
  %i.nq = fcmp nsz olt float %i.np, %i.lv
  br i1 %i.nq, label %.lr.ph132.splitthread-pre-split.i, label %.loopexit.i, !llvm.loop !38

bb.j:                                             ; preds = %bb.m, %.lr.ph128.i
  %indvars.iv.i = phi i64 [ %i.nj, %.lr.ph128.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.0125.i = phi i32 [ %i.mn, %.lr.ph128.i ], [ %i.ph, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !58 ; 2 uses
  %i.nt = sub nsw i32 0, %.0125.i
  %i.nu = sitofp nsz i32 %i.nt to float
  %i.nv = call nsz float @llvm.fmuladd.f32(float %i.nu, float %i.lq, float -1.000000e-01) ; 2 uses
  %i.nw = call nsz float @llvm.fmuladd.f32(float %i.ns, float %i.jb, float %i.nh)
  %i.nx = call nsz float @llvm.fmuladd.f32(float %i.nv, float %i.kd, float %i.nw)
  %i.ny = fadd nsz float %i.kt, %i.nx             ; 2 uses
  %i.nz = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.ix, <2 x float> %i.ng)
  %i.oc = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oe = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.od, <2 x float> %i.jz, <2 x float> %i.ob)
  %i.of = fadd nsz <2 x float> %i.kp, %i.oe
  %i.og = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oi = fdiv nsz <2 x float> %i.of, %i.oh       ; 2 uses
  %i.oj = extractelement <2 x float> %i.oi, i64 0
  %i.ok = call nsz float @llvm.fmuladd.f32(float %i.oj, float %i.ai, float %i.ai)
  %i.ol = fptosi float %i.ok to i32               ; 3 uses
  %i.om = extractelement <2 x float> %i.oi, i64 1
  %i.on = call nsz float @llvm.fmuladd.f32(float %i.om, float %i.ad, float %i.ad)
  %i.oo = fptosi float %i.on to i32               ; 3 uses
  %.not104.i = icmp sgt i32 %i.af, %i.ol
  br i1 %.not104.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.op = icmp sle i32 %i.aa, %i.oo
  %i.oq = or i32 %i.oo, %i.ol
  %i.or = icmp slt i32 %i.oq, 0
  %or.cond3.i = or i1 %i.op, %i.or
  br i1 %or.cond3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.os = fdiv nsz float 1.000000e+00, %i.ny      ; 2 uses
  %i.ot = fcmp nsz ogt float %i.os, 0.000000e+00
  %i.ou = select nsz i1 %i.ot, float %i.os, float 0.000000e+00 ; 2 uses
  %i.ov = fcmp nsz ogt float %i.ou, 1.000000e+00
  %..i.i = select nsz i1 %i.ov, float 1.000000e+00, float %i.ou
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !60
  %.val105.i = load i32, ptr %i.ky, align 8, !tbaa !33
  %i.ow = sext i32 %.val105.i to i64
  %i.ox = zext nneg i32 %i.oo to i64
  %i.oy = mul nsw i64 %i.ow, %i.ox
  %i.oz = getelementptr inbounds i8, ptr %.val.i, i64 %i.oy
  %i.pa = shl i32 %i.ol, 2
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pb
  %i.pd = insertelement <4 x float> poison, float %..i.i, i64 0
  %i.pe = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pf = fmul nsz <4 x float> %i.pe, %i.nn
  %i.pg = fptoui <4 x float> %i.pf to <4 x i8>
  store <4 x i8> %i.pg, ptr %i.pc, align 1, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ph = add nsw i32 %.0125.i, 1
  %i.pi = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.pi, label %bb.j, label %._crit_edge129.i, !llvm.loop !39

.loopexit.i:                                      ; preds = %._crit_edge129.i, %.lr.ph132.i, %bb.i, %bb.h
  %i.pj = icmp sgt i64 %indvars.iv143.i, 1
  br i1 %i.pj, label %bb.h, label %._crit_edge137.i, !llvm.loop !40

filter_frame.exit:                                ; preds = %bb.e, %._crit_edge137.i
  %.096.i = phi i32 [ %i.ln, %._crit_edge137.i ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.n:                                             ; preds = %bb.c
  %i.pk = call i32 @ff_inlink_queued_samples(ptr noundef %i.g) #10
  %i.pl = load i32, ptr %i.n, align 4, !tbaa !24
  %.not30 = icmp slt i32 %i.pk, %i.pl
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #10
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.pm = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #10
  %.not31 = icmp eq i32 %i.pm, 0
  br i1 %.not31, label %.critedge34, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pn = load i32, ptr %i.c, align 4, !tbaa !33
  %i.po = load i64, ptr %i.d, align 8, !tbaa !66
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.j, i32 noundef %i.pn, i64 noundef %i.po) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.s

.critedge34:                                      ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.pp = call i32 @ff_outlink_frame_wanted(ptr noundef %i.j) #10
  %.not32 = icmp eq i32 %i.pp, 0
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
end_hunk_0
