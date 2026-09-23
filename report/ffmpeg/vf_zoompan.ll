Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_zoompan?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"zoompan\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Apply Zoom & Pan effect.\00", align 1
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pix_fmts = internal constant [18 x i32] [i32 5, i32 4, i32 0, i32 7, i32 6, i32 31, i32 79, i32 78, i32 33, i32 14, i32 32, i32 13, i32 12, i32 138, i32 71, i32 111, i32 8, i32 -1], align 16
@ff_vf_zoompan = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @ff_video_default_filterpad, ptr @outputs, ptr @zoompan_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @pix_fmts }, i32 392, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@var_names = internal constant [30 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr null], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"in_w\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"iw\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"in_h\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ih\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"out_w\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"out_h\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"oh\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"pduration\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"in_time\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"out_time\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ot\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pzoom\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"dar\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"hsub\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"vsub\00", align 1
@zoompan_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @zoompan_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.33 = private unnamed_addr constant [24 x i8] c"set the zoom expression\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"set the x expression\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"set the y expression\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"set the duration expression\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"set the output image size\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"hd720\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"set the output framerate\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@zoompan_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.33, i32 8, i32 6, { ptr } { ptr @.str.34 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr @.str.33, i32 8, i32 6, { ptr } { ptr @.str.34 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.36, i32 16, i32 6, { ptr } { ptr @.str.37 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.38, i32 24, i32 6, { ptr } { ptr @.str.37 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.39, ptr @.str.40, i32 32, i32 6, { ptr } { ptr @.str.41 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr @.str.43, i32 64, i32 12, { ptr } { ptr @.str.44 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.46, i32 380, i32 15, { ptr } { ptr @.str.47 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"srcw\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"srch\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"src_format\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"dstw\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"dsth\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"dst_format\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"sws_flags\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  tail call void @sws_freeContext(ptr noundef %i.d) #6
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  tail call void @av_expr_free(ptr noundef %i.f) #6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  tail call void @av_expr_free(ptr noundef %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  tail call void @av_expr_free(ptr noundef %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  tail call void @av_frame_free(ptr noundef nonnull %i.k) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @activate(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %i.e = alloca double, align 8                   ; 3 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 35 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.r = tail call i32 @ff_outlink_get_status(ptr noundef %i.q) #6 ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.n, i32 noundef %i.r) #6
  br label %bb.p

.critedge:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %.not101 = icmp eq ptr %i.t, null
  br i1 %.not101, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.u = tail call i32 @ff_outlink_frame_wanted(ptr noundef %i.q) #6
  %.not102 = icmp eq i32 %i.u, 0
  br i1 %.not102, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 372
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37
  %i.z = call fastcc i32 @output_single_frame(ptr noundef nonnull %0, ptr noundef %i.v, ptr noundef nonnull %i.w, i32 noundef %i.y, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e) ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br i1 %i.aa, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !59
  %.not103 = icmp eq ptr %.pr, null
  br i1 %.not103, label %.thread, label %.thread118

.thread:                                          ; preds = %.critedge, %bb.e
  %i.ab = tail call i32 @ff_inlink_consume_frame(ptr noundef %i.n, ptr noundef nonnull %i.s) #6 ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store double -1.000000e+00, ptr %i.f, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store double -1.000000e+00, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  store double -1.000000e+00, ptr %i.h, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  store i32 0, ptr %i.ad, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %2 = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.ah = load <2 x i32>, ptr %i.af, align 8, !tbaa !40
  %i.ai = sitofp <2 x i32> %i.ah to <2 x double>  ; 3 uses
  %3 = extractelement <2 x double> %i.ai, i64 0   ; 2 uses
  store double %3, ptr %i.ag, align 8, !tbaa !38
  %4 = extractelement <2 x double> %i.ai, i64 1   ; 2 uses
  store double %4, ptr %2, align 8, !tbaa !38
  store <2 x double> %i.ai, ptr %1, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %6 = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.al = load <2 x i32>, ptr %i.aj, align 8, !tbaa !40
  %i.am = sitofp <2 x i32> %i.al to <2 x double>  ; 3 uses
  %7 = extractelement <2 x double> %i.am, i64 0
  store double %7, ptr %i.ak, align 8, !tbaa !38
  %8 = extractelement <2 x double> %i.am, i64 1
  store double %8, ptr %6, align 8, !tbaa !38
  store <2 x double> %i.am, ptr %5, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !60
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = sitofp nsz i64 %i.ap to double
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store double %i.aq, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = sitofp nsz i64 %i.at to double
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  store double %i.au, ptr %i.av, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  store double %i.ax, ptr %i.ay, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ba = load double, ptr %i.az, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 320
  store double %i.ba, ptr %i.bb, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  store double 0.000000e+00, ptr %i.bc, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.bf = load double, ptr %i.be, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store double %i.bf, ptr %i.bg, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store double 1.000000e+00, ptr %i.bh, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !52
  %i.bk = sitofp nsz i32 %i.bj to double
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  store double %i.bk, ptr %i.bl, align 8, !tbaa !38
  %i.bm = fdiv nsz double %3, %4                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  store double %i.bm, ptr %i.bn, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !61 ; 2 uses
  %.not104 = icmp eq i32 %i.bp, 0
  br i1 %.not104, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = sitofp nsz i32 %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !62
  %i.bt = sitofp nsz i32 %i.bs to double
  %i.bu = fdiv nsz double %i.bq, %i.bt
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bv = phi nsz double [ %i.bu, %bb.g ], [ 1.000000e+00, %bb.f ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  store double %i.bv, ptr %i.bw, align 8, !tbaa !38
  %i.bx = fmul nsz double %i.bm, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 344
  store double %i.bx, ptr %i.by, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !53 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !55
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = sitofp nsz i32 %i.ce to double
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store double %i.cf, ptr %i.cg, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !56
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = sitofp nsz i32 %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  store double %i.cl, ptr %i.cm, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !63
  %i.cp = call i32 @av_expr_parse_and_eval(ptr noundef nonnull %i.i, ptr noundef %i.co, ptr noundef nonnull @var_names, ptr noundef nonnull %i.ag, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %0) #6 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.thread114, label %bb.i

.thread114:                                       ; preds = %bb.h
  call void @av_frame_free(ptr noundef nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.cr = load double, ptr %i.i, align 8, !tbaa !38
  %i.cs = fptosi double %i.cr to i32              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 368
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !57
  %i.cu = sitofp nsz i32 %i.cs to double
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  store double %i.cu, ptr %i.cv, align 8, !tbaa !38
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 372
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !37
  %i.cz = call fastcc i32 @output_single_frame(ptr noundef nonnull %0, ptr noundef %i.cw, ptr noundef nonnull %i.ag, i32 noundef %i.cy, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h) ; 2 uses
  %i.da = icmp sgt i32 %i.cz, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br i1 %i.da, label %.thread118, label %bb.p

bb.j:                                             ; preds = %.thread
  %i.db = icmp slt i32 %i.ab, 0
  br i1 %i.db, label %bb.p, label %.thread118

.thread118:                                       ; preds = %bb.i, %bb.e, %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 376 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !39
  %.not105 = icmp eq i32 %i.dd, 0
  br i1 %.not105, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread118
  %i.de = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %.not106 = icmp eq i32 %i.de, 0
  br i1 %.not106, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = load i32, ptr %i.a, align 4, !tbaa !40
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !64
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.q, i32 noundef %i.df, i64 noundef %i.dg) #6
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %.thread118
  %i.dh = call i32 @ff_outlink_frame_wanted(ptr noundef %i.q) #6
  %.not107 = icmp eq i32 %i.dh, 0
  br i1 %.not107, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = load i32, ptr %i.dc, align 8, !tbaa !39
  %.not108 = icmp eq i32 %i.di, 0
  br i1 %.not108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ff_inlink_request_frame(ptr noundef %i.n) #6
  br label %bb.p

bb.p:                                             ; preds = %.thread114, %bb.b, %bb.m, %bb.n, %bb.o, %bb.j, %bb.d, %bb.i, %bb.l
  %.4 = phi i32 [ 0, %bb.b ], [ 0, %bb.l ], [ %i.ab, %bb.j ], [ %i.cz, %bb.i ], [ %i.z, %bb.d ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.cp, %.thread114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_output(ptr nofree noundef captures(none) initializes((40, 48), (96, 104), (280, 288)) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !40
  store <2 x i32> %i.f, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 380 ; 2 uses
  %i.i = load i64, ptr %i.h, align 4              ; 2 uses
  %.sroa.01.0.insert.insert.i = tail call i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 32)
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i64, ptr %i.h, align 4
  store i64 %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.m) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %i.n, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i32 1, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66
  %i.t = tail call i32 @av_expr_parse(ptr noundef nonnull %i.q, ptr noundef %i.s, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.a) #6 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = tail call i32 @av_expr_parse(ptr noundef nonnull %i.v, ptr noundef %i.x, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68
  %i.ad = tail call i32 @av_expr_parse(ptr noundef nonnull %i.aa, ptr noundef %i.ac, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a) #6
  %. = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.y, %bb.b ], [ %i.t, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #4

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @av_default_item_name(ptr noundef) #4

declare void @sws_freeContext(ptr noundef) local_unnamed_addr #4

declare void @av_expr_free(ptr noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @output_single_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((72, 80), (88, 144), (152, 160), (168, 176), (184, 192)) %2, i32 noundef %3, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %4, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %5, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 4 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 14 uses
end_hunk_0
