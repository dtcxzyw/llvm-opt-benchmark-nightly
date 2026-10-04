Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aexciter?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"aexciter\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Enhance high frequency part of audio.\00", align 1
@avfilter_af_aexciter_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_aexciter = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, { i32, [4 x i8] }, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @avfilter_af_aexciter_inputs, ptr @ff_audio_default_filterpad, ptr @aexciter_class, i32 131072, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 6, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, { i32, [4 x i8] } { i32 4, [4 x i8] zeroinitializer }, i32 80, i32 0, ptr @process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@aexciter_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @aexciter_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"level_in\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"set level in\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"level_out\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"set level out\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"amount\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"set amount\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"set harmonics\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"blend\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"set blend harmonics\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"set scope\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"set ceiling\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"enable listen mode\00", align 1
@aexciter_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 6.400000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 16, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 6.400000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 24, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 6.400000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 32, i32 4, { double } { double 8.500000e+00 }, double 1.000000e-01, double 1.000000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 40, i32 4, { double } zeroinitializer, double -1.000000e+01, double 1.000000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 48, i32 4, { double } { double 7.500000e+03 }, double 2.000000e+03, double 1.200000e+04, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 56, i32 4, { double } { double 9.999000e+03 }, double 9.999000e+03, double 2.000000e+04, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 64, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.c) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #5 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @config_input(ptr noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = load ptr, ptr %1, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55
  %i.r = sitofp nsz i32 %i.q to double
  %i.s = fsub nnan nsz double 1.000000e+00, %i.r
  %i.t = tail call i32 @av_frame_is_writable(ptr noundef nonnull %1) #5
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !61
  %i.w = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.v) #5 ; 3 uses
  %.not52 = icmp eq ptr %i.w, null
  br i1 %.not52, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.x = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.w, ptr noundef nonnull %1) #5 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.048 = phi ptr [ %i.w, %bb.d ], [ %1, %bb.a ]  ; 3 uses
  %i.y = load ptr, ptr %.048, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !61  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.lr.ph, label %._crit_edge60.split

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !34 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ag = sext i32 %i.ad to i64                   ; 2 uses
  br i1 %i.ae, label %.preheader.lr.ph.split, label %._crit_edge60.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !62
  %.not54 = icmp eq i32 %i.ak, 0
  %wide.trip.count = zext nneg i32 %i.ad to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.04559 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.an, %._crit_edge ]
  %.04658 = phi ptr [ %i.y, %.preheader.lr.ph.split ], [ %i.am, %._crit_edge ] ; 2 uses
  %.04757 = phi ptr [ %i.i, %.preheader.lr.ph.split ], [ %i.al, %._crit_edge ] ; 2 uses
  br label %bb.f

._crit_edge60.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.e
  %.not53 = icmp eq ptr %1, %.048
  br i1 %.not53, label %bb.l, label %bb.k

._crit_edge:                                      ; preds = %distortion_process.exit
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.04757, i64 %i.ag
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.04658, i64 %i.ag
  %i.an = add nuw nsw i32 %.04559, 1              ; 2 uses
  %exitcond62.not = icmp eq i32 %i.an, %i.aa
  br i1 %exitcond62.not, label %._crit_edge60.split, label %.preheader, !llvm.loop !46

bb.f:                                             ; preds = %.preheader, %distortion_process.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %distortion_process.exit ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.04757, i64 %indvars.iv ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw [312 x i8], ptr %i.aj, i64 %indvars.iv ; 27 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 216 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 224
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 168
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.ax = load <2 x double>, ptr %i.au, align 8, !tbaa !37 ; 4 uses
  %i.ay = load <2 x double>, ptr %i.ar, align 8, !tbaa !37
  %i.az = load double, ptr %i.av, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.bb = fmul nsz double %i.k, %i.ap             ; 2 uses
  %i.bc = load double, ptr %i.as, align 8, !tbaa !37
  %i.bd = load double, ptr %i.at, align 8, !tbaa !37
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bd, i64 1
  %i.bi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bf, <2 x double> %i.bh) ; 4 uses
  %i.bj = load double, ptr %i.aw, align 8, !tbaa !37 ; 4 uses
  %i.bk = extractelement <2 x double> %i.bi, i64 0
  %i.bl = fmul nsz double %i.bk, %i.bj
  %i.bm = load <2 x double>, ptr %i.ba, align 8, !tbaa !37
  %i.bn = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.bn, <2 x double> %i.bm) ; 3 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bq = extractelement <2 x double> %i.bo, i64 0 ; 6 uses
  %i.br = fmul nsz double %i.bj, %i.bq
  %i.bs = insertelement <2 x double> %i.ay, double %i.az, i64 1
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bv = insertelement <4 x double> %i.bu, double %i.bb, i64 1
  %i.bw = shufflevector <4 x double> %i.bv, <4 x double> %i.bp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bx = shufflevector <4 x double> %i.bw, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.by = shufflevector <2 x double> %i.bi, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bz = insertelement <4 x double> %i.by, double %i.bl, i64 1
  %i.ca = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x double> %i.bz, <4 x double> %i.ca, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cc = insertelement <4 x double> %i.cb, double %i.br, i64 3
  %i.cd = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bt, <4 x double> %i.bx, <4 x double> %i.cc)
  store <4 x double> %i.cd, ptr %i.as, align 8, !tbaa !37
  %i.ce = fcmp nsz ult double %i.bq, 0.000000e+00
  br i1 %i.ce, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !40
  %i.cj = fsub nsz double %i.ci, %i.bq
  %i.ck = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.cj, double %i.cg)
  %i.cl = tail call nsz double @llvm.fabs.f64(double %i.ck) ; 2 uses
  %i.cm = fcmp nsz ogt double %i.cl, 1.000000e-08
  %i.cn = tail call nsz double @llvm.sqrt.f64(double %i.cl)
  %i.co = select nsz i1 %i.cm, double %i.cn, double 0.000000e+00
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !41
  %i.cr = fadd nsz double %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  %i.cu = fmul nsz double %i.ct, %i.cr
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !63
  %i.cz = fadd nsz double %i.bq, %i.cy
  %i.da = fneg nsz double %i.bq
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.cw)
  %i.dc = tail call nsz double @llvm.fabs.f64(double %i.db) ; 2 uses
  %i.dd = fcmp nsz ogt double %i.dc, 1.000000e-08
  %i.de = tail call nsz double @llvm.sqrt.f64(double %i.dc)
  %i.df = select nsz i1 %i.dd, double %i.de, double 0.000000e+00
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !64
  %i.di = fadd nsz double %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = fneg nsz double %i.dk
  %i.dm = fmul nsz double %i.di, %i.dl
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi nsz double [ %i.cu, %bb.g ], [ %i.dm, %bb.h ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.do = load double, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 120 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !65
  %i.dr = fsub nsz double %.0.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !66
  %i.du = fadd nsz double %i.dr, %i.dt
  %i.dv = fmul nsz double %i.do, %i.du            ; 3 uses
  %i.dw = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.dv, i64 1 ; 2 uses
  %i.dy = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dx)
  %i.dz = fcmp nsz ogt <2 x double> %i.dy, splat (double 1.000000e-08)
  %i.ea = select <2 x i1> %i.dz, <2 x double> %i.dx, <2 x double> zeroinitializer
  store <2 x double> %i.ea, ptr %i.dp, align 8, !tbaa !37
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aq, i64 248 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !37
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.eg = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ee, i64 1
  %i.ek = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.eh, <2 x double> %i.ej) ; 4 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fmul nsz double %i.bj, %i.el
  %2 = load <2 x double>, ptr %i.ef, align 8, !tbaa !37
  %3 = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %3, <2 x double> %2) ; 4 uses
  %i.en = extractelement <2 x double> %4, i64 0   ; 2 uses
  %5 = fmul nsz double %i.bj, %i.en
  %i.eo = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ep = insertelement <4 x double> %i.eo, double %i.dv, i64 1
  %6 = shufflevector <2 x double> %4, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %7 = shufflevector <4 x double> %i.ep, <4 x double> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.eq = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.er = insertelement <4 x double> %i.eq, double %i.em, i64 1
  %8 = shufflevector <4 x double> %i.er, <4 x double> %6, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.es = insertelement <4 x double> %8, double %5, i64 3
  %i.et = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bt, <4 x double> %7, <4 x double> %i.es)
  store <4 x double> %i.et, ptr %i.eb, align 8, !tbaa !37
  %i.eu = load double, ptr %i.af, align 8, !tbaa !67
  %i.ev = fcmp nsz ult double %i.eu, 1.000000e+04
  br i1 %i.ev, label %distortion_process.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 280 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.fc = load <2 x double>, ptr %i.ex, align 8, !tbaa !37
  %i.fd = load <2 x double>, ptr %i.ey, align 8, !tbaa !37 ; 2 uses
  %i.fe = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fe, <2 x double> %i.fc) ; 4 uses
  %i.fg = extractelement <2 x double> %i.ff, i64 0
  %9 = load double, ptr %i.ez, align 8, !tbaa !37
  %10 = load <2 x double>, ptr %i.ew, align 8, !tbaa !37
  %i.fh = load double, ptr %i.fa, align 8, !tbaa !37 ; 2 uses
  %11 = fmul nsz double %i.fg, %i.fh
  %12 = load <2 x double>, ptr %i.fb, align 8, !tbaa !37
  %13 = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %13, <2 x double> %12) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0    ; 2 uses
  %i.fi = fmul nsz double %i.fh, %15
  %i.fj = insertelement <2 x double> %10, double %9, i64 1
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %16 = shufflevector <2 x double> %i.ff, <2 x double> %4, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %17 = shufflevector <2 x double> %14, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %18 = shufflevector <4 x double> %16, <4 x double> %17, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.fl = shufflevector <2 x double> %i.ff, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fm = insertelement <4 x double> %i.fl, double %11, i64 1
  %19 = shufflevector <4 x double> %i.fm, <4 x double> %17, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fn = insertelement <4 x double> %19, double %i.fi, i64 3
  %i.fo = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fk, <4 x double> %18, <4 x double> %i.fn)
  store <4 x double> %i.fo, ptr %i.ex, align 8, !tbaa !37
  br label %distortion_process.exit

distortion_process.exit:                          ; preds = %bb.i, %bb.j
  %.048.i = phi nsz double [ %15, %bb.j ], [ %i.en, %bb.i ]
  %i.fp = load double, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.fq = fmul nsz double %i.s, %i.fp
  %i.fr = tail call nsz double @llvm.fmuladd.f64(double %.048.i, double %i.o, double %i.fq)
  %i.fs = fmul nsz double %i.m, %i.fr
  %.sink = select i1 %.not54, double %i.fs, double %i.fp
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.04658, i64 %indvars.iv
  store double %.sink, ptr %i.ft, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !47

bb.k:                                             ; preds = %._crit_edge60.split
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge60.split
  %i.fu = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %.048) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.049 = phi i32 [ %i.fu, %bb.l ], [ -12, %bb.c ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 312) #5 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !35
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !69
  %i.s = sitofp nsz i32 %i.r to double            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.u = fmul nnan nsz double %i.s, 1.000000e-01
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.s, double 1.000000e-01, double 1.000000e+00)
  %i.w = fdiv nsz double %i.u, %i.v
  %wide.trip.count = zext nneg i32 %i.m to i64
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [312 x i8], ptr %i.k, i64 %indvars.iv ; 18 uses
  %i.aa = load double, ptr %i.o, align 8, !tbaa !70
  %i.ab = load double, ptr %i.p, align 8, !tbaa !71
  %i.ac = fdiv nsz double 1.200000e+01, %i.ab     ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !72
  %i.ae = fsub nsz double 1.050000e+01, %i.aa
  %i.af = fdiv nsz double %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = fmul nsz double %i.ac, %i.ac
  %i.ai = tail call nsz double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double -1.000000e+00)
  %i.aj = tail call nsz double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp nsz ogt double %i.aj, 1.000000e-08
  %i.al = tail call nsz double @llvm.sqrt.f64(double %i.aj)
  %i.am = select nsz i1 %i.ak, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.aq = fmul nsz double %i.ac, 2.000000e+00
  %i.ar = fneg nsz double %i.ac
  %i.as = fmul nsz double %i.aq, %i.ar
  %i.at = tail call nsz double @llvm.fmuladd.f64(double %i.am, double 2.000000e+00, double %i.as)
  %i.au = tail call nsz double @llvm.fabs.f64(double %i.at) ; 2 uses
  %i.av = fcmp nsz ogt double %i.au, 1.000000e-08
  %i.aw = tail call nsz double @llvm.sqrt.f64(double %i.au)
  %i.ax = select nsz i1 %i.av, double %i.aw, double 0.000000e+00
  %i.ay = fmul nsz double %i.af, 7.800000e+02
  %i.az = fadd nsz double %i.am, 1.000000e+00     ; 4 uses
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = insertelement <2 x double> <double 3.300000e+01, double poison>, double %i.ax, i64 1
  %i.bd = fdiv nsz <2 x double> %i.bb, %i.bc      ; 5 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  store double %i.be, ptr %i.ag, align 8, !tbaa !73
  store double %i.az, ptr %i.an, align 8, !tbaa !40
  %i.bf = fsub nsz double 2.000000e+00, %i.az
  %i.bg = fmul nsz double %i.bf, 5.000000e-01
  store double %i.bg, ptr %i.ao, align 8, !tbaa !41
  %i.bh = fneg nsz double %i.az
  %i.bi = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.bh)
  %i.bj = fadd nsz double %i.bi, 1.000000e+00
  %i.bk = fmul nsz double %i.bj, 5.000000e-01
  store double %i.bk, ptr %i.ap, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.bm = extractelement <2 x double> %i.bd, i64 1 ; 4 uses
  store double %i.bm, ptr %i.bl, align 8, !tbaa !74
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store double %i.w, ptr %i.bn, align 8, !tbaa !44
  %i.bo = tail call nsz double @llvm.fmuladd.f64(double %i.bm, double %i.bm, double 1.000000e+00) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store double %i.bo, ptr %i.bp, align 8, !tbaa !75
  %i.bq = tail call nsz double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.br = fcmp nsz ogt double %i.bq, 1.000000e-08
  %i.bs = tail call nsz double @llvm.sqrt.f64(double %i.bq)
  %i.bt = select nsz i1 %i.br, double %i.bs, double 0.000000e+00
  %i.bu = fmul nsz double %i.bm, 2.000000e+00
  %i.bv = fmul nsz double %i.be, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = fneg nsz <2 x double> %i.bd
  %i.bz = shufflevector <2 x double> %i.bx, <2 x double> %i.by, <2 x i32> <i32 0, i32 2>
  %i.ca = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fdiv nsz <2 x double> %i.bz, %i.cb      ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x double> %i.bd, %i.bd
  %i.cd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ce = fdiv nsz double %i.cd, %i.bo            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store double %i.ce, ptr %i.cf, align 8, !tbaa !43
  %i.cg = fmul nsz double %i.ce, 4.000000e+00
  %i.ch = extractelement <2 x double> %i.cc, i64 0
  %i.ci = tail call nsz double @llvm.fmuladd.f64(double %i.ch, double 2.000000e+00, double %i.cg)
  %i.cj = fadd nsz double %i.ci, -1.000000e+00
  %i.ck = tail call nsz double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp nsz ogt double %i.ck, 1.000000e-08
  %i.cm = tail call nsz double @llvm.sqrt.f64(double %i.ck)
  %i.cn = select nsz i1 %i.cl, double %i.cm, double 0.000000e+00
  %i.co = extractelement <2 x double> %i.cc, i64 1
  %i.cp = tail call nsz double @llvm.fmuladd.f64(double %i.co, double 2.000000e+00, double %i.cn) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store double %i.cp, ptr %i.cq, align 8, !tbaa !76
  %i.cr = fadd nsz double %i.cp, 1.000000e+00
  %i.cs = fdiv nsz double 2.000000e+00, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store double %i.cs, ptr %i.ct, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.cx = load <2 x double>, ptr %i.t, align 8, !tbaa !37
  store <2 x double> %i.cc, ptr %i.bw, align 8, !tbaa !37
  %i.cy = fmul nsz <2 x double> %i.cx, splat (double f0x401921FB54442D18)
  %i.cz = fdiv nsz <2 x double> %i.cy, %i.y
  %i.da = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.cz) ; 2 uses
  %i.db = extractvalue { <2 x double>, <2 x double> } %i.da, 0
  %i.dc = extractvalue { <2 x double>, <2 x double> } %i.da, 1 ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0 ; 2 uses
  %i.de = fadd nsz double %i.dd, 1.000000e+00     ; 2 uses
  %i.df = fmul nsz double %i.de, 5.000000e-01
  %i.dg = fneg nsz double %i.de
  %i.dh = fmul nsz double %i.dd, 2.000000e+00
  %i.di = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dj = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.dg, i64 1
  %i.dl = extractelement <2 x double> %i.dc, i64 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.dn = fmul nsz double %i.dl, 2.000000e+00
  %i.do = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.dp = fsub nsz double 1.000000e+00, %i.dl
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul nsz <2 x double> %i.dr, <double 5.000000e-01, double 1.000000e+00>
  %i.dt = fdiv nsz <2 x double> %i.db, splat (double 1.414000e+00) ; 4 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = fadd nsz double %i.du, 1.000000e+00
  %i.dw = shufflevector <2 x double> %i.di, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.dx = fadd nsz <2 x double> %i.dw, <double -0.000000e+00, double -1.000000e+00>
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = fdiv nsz <2 x double> %i.dx, %i.dz
  store <2 x double> %i.ea, ptr %i.cu, align 8, !tbaa !37
  %i.eb = fdiv nsz <2 x double> %i.dk, %i.dz      ; 2 uses
  store <2 x double> %i.eb, ptr %i.cv, align 8, !tbaa !37
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  store double %i.ec, ptr %i.cw, align 8, !tbaa !37
  %i.ed = extractelement <2 x double> %i.dt, i64 1
  %i.ee = fadd nsz double %i.ed, 1.000000e+00
  %i.ef = insertelement <2 x double> %i.dt, double %i.dn, i64 0
  %i.eg = fadd nsz <2 x double> %i.ef, <double -0.000000e+00, double -1.000000e+00>
  %i.eh = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = fdiv nsz <2 x double> %i.eg, %i.ei
end_hunk_0
