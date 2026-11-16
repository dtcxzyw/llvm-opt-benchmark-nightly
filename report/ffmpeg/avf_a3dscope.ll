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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 38 uses
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
  %i.bn = load <2 x float>, ptr %i.bc, align 4, !tbaa !58 ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, <float 5.000000e-01, float poison>
  %1 = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bp = fpext nsz <2 x float> %1 to <2 x double>
  %i.bq = fmul nsz <2 x double> %i.bp, splat (double f0x400921FB54442D18)
  %i.br = fdiv nsz <2 x double> %i.bq, splat (double 1.800000e+02)
  %i.bs = fptrunc nsz <2 x double> %i.br to <2 x float> ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = call nsz float @llvm.tan.f32(float %i.bt)
  %i.bv = fdiv nsz float 1.000000e+00, %i.bu      ; 4 uses
  %i.bw = fmul nsz float %i.bd, %i.bv             ; 3 uses
  store float %i.bw, ptr %i.be, align 8, !tbaa !58
  store float %i.bv, ptr %i.bg, align 4, !tbaa !58
  %i.bx = load <2 x float>, ptr %i.bl, align 4, !tbaa !58
  %i.by = fpext nsz <2 x float> %i.bx to <2 x double>
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 132
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !58 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 148
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !58 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.cp = load float, ptr %i.co, align 8, !tbaa !58 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !58 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 164
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !58 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.cv = load float, ptr %i.cu, align 8, !tbaa !58 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 172
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !58 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !58 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 188
  %i.db = load float, ptr %i.da, align 4, !tbaa !58 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !58 ; 2 uses
  %i.de = extractelement <2 x float> %i.bs, i64 1
  %sincos.i.i = call nsz { float, float } @llvm.sincos.f32(float %i.de) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0 ; 4 uses
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1 ; 6 uses
  %i.df = fmul nsz <2 x double> %i.by, splat (double f0x400921FB54442D18)
  %i.dg = fdiv nsz <2 x double> %i.df, splat (double 1.800000e+02)
  %i.dh = fptrunc nsz <2 x double> %i.dg to <2 x float>
  %i.di = call nsz { <2 x float>, <2 x float> } @llvm.sincos.v2f32(<2 x float> %i.dh) ; 2 uses
  %i.dj = extractvalue { <2 x float>, <2 x float> } %i.di, 0 ; 6 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 1 ; 2 uses
  %i.dl = extractvalue { <2 x float>, <2 x float> } %i.di, 1 ; 9 uses
  %i.dm = fneg nsz float %i.dk                    ; 2 uses
  %i.dn = fneg nsz <2 x float> %i.dj              ; 3 uses
  %i.do = fneg nsz float %sin.i.i                 ; 3 uses
  %i.dp = load <2 x float>, ptr %i.ca, align 4, !tbaa !58 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.bk, align 4, !tbaa !58 ; 4 uses
  %i.dr = load float, ptr %i.bz, align 8, !tbaa !58
  %foldExtExtBinop = fmul nsz <2 x float> %i.dq, %i.dl
  %i.ds = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.dt = fmul <2 x float> %i.ds, <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.dv = insertelement <4 x float> %i.du, float 0.000000e+00, i64 2
  %i.dw = shufflevector <2 x float> %i.dj, <2 x float> %i.dl, <4 x i32> <i32 poison, i32 0, i32 3, i32 3>
  %i.dx = insertelement <4 x float> %i.dw, float 0.000000e+00, i64 0
  %i.dy = fmul nsz <4 x float> %i.dv, %i.dx       ; 5 uses
  %i.dz = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.ea = shufflevector <2 x float> %i.dl, <2 x float> %i.dq, <4 x i32> <i32 2, i32 0, i32 0, i32 poison>
  %i.eb = insertelement <4 x float> %i.ea, float %i.dm, i64 3
  %i.ec = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> zeroinitializer, <4 x float> %i.dy) ; 6 uses
  %i.ed = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ee = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ed, <2 x i32> <i32 0, i32 3>
  %i.ef = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> zeroinitializer, <2 x float> %i.ee) ; 4 uses
  %i.eg = shufflevector <2 x float> %i.dl, <2 x float> %i.dj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eh = fmul nsz <2 x float> %i.eg, zeroinitializer ; 3 uses
  %i.ei = insertelement <2 x float> %i.eg, float -0.000000e+00, i64 1
  %i.ej = shufflevector <2 x float> %i.eh, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ek = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> zeroinitializer, <2 x float> %i.ej)
  %i.el = shufflevector <2 x float> %i.dl, <2 x float> <float poison, float -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.em = insertelement <2 x float> %i.dn, float 0.000000e+00, i64 1
  %i.en = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.ek) ; 3 uses
  %i.eo = fmul nsz float %i.dr, %i.dk
  %i.ep = shufflevector <2 x float> %i.dj, <2 x float> %i.dl, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.eq = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.es = shufflevector <4 x float> %i.ec, <4 x float> %i.dy, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.et = insertelement <4 x float> %i.es, float %i.eo, i64 2
  %i.eu = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x float> %i.et, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ew = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.er, <4 x float> %i.ev) ; 4 uses
  %i.ex = shufflevector <2 x float> %i.dn, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.ey = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> zeroinitializer, <2 x float> %i.eh) ; 4 uses
  %i.ez = extractelement <4 x float> %i.ew, i64 0 ; 2 uses
  %i.fa = extractelement <2 x float> %i.ef, i64 0
  %i.fb = shufflevector <4 x float> %i.ew, <4 x float> %i.eq, <4 x i32> <i32 1, i32 3, i32 4, i32 0>
  %i.fc = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float poison>, float %i.do, i64 3
  %i.fd = fmul <4 x float> %i.fb, %i.fc
  %i.fe = insertelement <4 x float> %i.dz, float %i.dm, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %cos.i.i, i64 3
  %i.fg = shufflevector <2 x float> %i.dl, <2 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.fh = insertelement <4 x float> %i.fg, float 0.000000e+00, i64 2
  %i.fi = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.fh, <4 x float> %i.fd) ; 7 uses
  %i.fj = extractelement <2 x float> %i.en, i64 0
  %i.fk = extractelement <4 x float> %i.fi, i64 3
  %i.fl = call nsz float @llvm.fmuladd.f32(float %i.fj, float 0.000000e+00, float %i.fk)
  %i.fm = extractelement <2 x float> %i.ef, i64 1 ; 2 uses
  %i.fn = fmul nsz float %i.fm, %i.do
  %i.fo = extractelement <2 x float> %i.dt, i64 1
  %i.fp = call nsz float @llvm.fmuladd.f32(float %cos.i.i, float %i.fo, float %i.fn)
  %i.fq = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fr = insertelement <2 x float> %i.fq, float %i.fp, i64 1
  %i.fs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> zeroinitializer, <2 x float> %i.fr) ; 6 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  store float %i.ft, ptr %i.bm, align 8, !tbaa !58
  %i.fu = shufflevector <4 x float> %i.ec, <4 x float> %i.fi, <2 x i32> <i32 3, i32 4>
  %i.fv = insertelement <2 x float> poison, float %i.do, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul nsz <2 x float> %i.fu, %i.fw
  %i.fy = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gb = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.ga, <2 x float> %i.fx)
  %i.gc = shufflevector <4 x float> %i.ew, <4 x float> %i.fi, <2 x i32> <i32 2, i32 5>
  %i.gd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> zeroinitializer, <2 x float> %i.gb)
  %i.ge = shufflevector <4 x float> %i.dy, <4 x float> %i.fi, <2 x i32> <i32 0, i32 6>
  %i.gf = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> zeroinitializer, <2 x float> %i.gd) ; 3 uses
  store <2 x float> %i.gf, ptr %i.cb, align 4, !tbaa !58
  %i.gg = extractelement <2 x float> %i.fs, i64 1
  store float %i.gg, ptr %i.cc, align 4, !tbaa !58
  %i.gh = fmul nsz float %cos.i.i, %i.ez
  %i.gi = call nsz float @llvm.fmuladd.f32(float %sin.i.i, float %i.fa, float %i.gh)
  %i.gj = fmul nsz float %cos.i.i, %i.fm
  %i.gk = insertelement <2 x float> %i.en, float %sin.i.i, i64 1
  %i.gl = insertelement <2 x float> %i.dt, float 0.000000e+00, i64 0
  %i.gm = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gj, i64 1
  %i.go = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gl, <2 x float> %i.gn)
  %i.gp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> zeroinitializer, <2 x float> %i.go) ; 6 uses
  %i.gq = fmul nsz float %i.ez, 0.000000e+00
  %i.gr = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.gq, i64 0
  %i.gs = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> zeroinitializer, <2 x float> %i.gr)
  %i.gt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.en, <2 x float> %i.gs) ; 2 uses
  %i.gu = shufflevector <2 x float> %i.dp, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.gv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.ey, <2 x float> %i.gt) ; 6 uses
  %i.gw = shufflevector <2 x float> %i.ey, <2 x float> %i.gf, <2 x i32> <i32 3, i32 1>
  %i.gx = load float, ptr %i.bj, align 8, !tbaa !58 ; 2 uses
  %i.gy = insertelement <2 x float> <float poison, float 0.000000e+00>, float %cos.i.i, i64 0 ; 2 uses
  %i.gz = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ha = fmul nsz <2 x float> %i.gy, %i.gz
  %i.hb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %sin.i.i, i64 0 ; 2 uses
  %i.hc = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hd = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hc, <2 x float> %i.ha)
  %i.he = shufflevector <4 x float> %i.ew, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hf = shufflevector <2 x float> %i.dt, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.hg = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.hf, <2 x float> %i.hd)
  %i.hh = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hi = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> zeroinitializer, <2 x float> %i.hg) ; 5 uses
  %i.hj = extractelement <2 x float> %i.hi, i64 0 ; 4 uses
  %i.hk = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul nsz <2 x float> %i.gy, %i.hk
  %i.hm = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hm, <2 x float> %i.hl)
  %i.ho = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hp = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hf, <2 x float> %i.hn)
  %i.hq = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hr = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> zeroinitializer, <2 x float> %i.hp) ; 2 uses
  %i.hs = shufflevector <2 x float> %i.gp, <2 x float> %i.hi, <4 x i32> <i32 0, i32 2, i32 poison, i32 1>
  %i.ht = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hu = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  store <4 x float> %i.hu, ptr %i.cd, align 8, !tbaa !58
  %i.hv = extractelement <2 x float> %i.hi, i64 1 ; 4 uses
  %i.hw = shufflevector <2 x float> %i.gv, <2 x float> %i.hi, <4 x i32> <i32 0, i32 3, i32 poison, i32 1>
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> %i.ht, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  store <4 x float> %i.hx, ptr %i.ce, align 8, !tbaa !58
  %i.hy = load float, ptr %i.ci, align 4, !tbaa !58 ; 2 uses
  %i.hz = extractelement <2 x float> %i.gf, i64 0 ; 5 uses
  %i.ia = fmul nsz float %i.hz, %i.hy
  %i.ib = call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.gx, float %i.ia)
  %i.ic = load float, ptr %i.cj, align 8, !tbaa !58 ; 2 uses
  %i.id = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ic, i64 0
  %i.ie = insertelement <2 x float> %i.gt, float %i.ib, i64 0
  %i.if = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.id, <2 x float> %i.ie) ; 2 uses
  %i.ig = fadd nsz <2 x float> %i.if, <float -0.000000e+00, float 1.000000e+00> ; 4 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 1
  store float %i.ih, ptr %i.ch, align 4, !tbaa !58
  %i.ii = extractelement <2 x float> %i.if, i64 0
  %i.ij = fneg nsz float %i.ii                    ; 2 uses
  store float %i.ij, ptr %i.cf, align 8, !tbaa !58
  %i.ik = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul nsz <2 x float> %i.hi, %i.il
  %i.in = shufflevector <2 x float> %i.gp, <2 x float> %i.gv, <2 x i32> <i32 0, i32 2>
  %i.io = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.ip, <2 x float> %i.im)
  %i.ir = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.is, <2 x float> %i.iq) ; 2 uses
  %i.iu = fneg nsz <2 x float> %i.it              ; 2 uses
end_hunk_0
