Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_select?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"aselect\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Select audio frames to pass in output.\00", align 1
@avfilter_af_aselect_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.4, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }], align 16
@ff_af_aselect = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @avfilter_af_aselect_inputs, ptr null, ptr @aselect_class, i32 2, [4 x i8] zeroinitializer }, i8 1, i8 0, i8 0, [5 x i8] zeroinitializer, ptr null, ptr @aselect_init, ptr @uninit, %union.anon.0 zeroinitializer, i32 464, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Select video frames to pass in output.\00", align 1
@avfilter_vf_select_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.4, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_input }], align 16
@ff_vf_select = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @avfilter_vf_select_inputs, ptr null, ptr @select_class, i32 10, [4 x i8] zeroinitializer }, i8 1, i8 0, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @select_init, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 464, i32 0, ptr null, ptr @activate }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@aselect_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @aselect_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"set an expression to use for selecting frames\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"outputs\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"set the number of outputs\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@aselect_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 8, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.7, i32 8, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 460, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.11, i32 460, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.14 = private unnamed_addr constant [46 x i8] c"Scene detection is ignored in aselect filter\0A\00", align 1
@var_names = internal constant [41 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.12, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.16, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null], align 16
@.str.15 = private unnamed_addr constant [37 x i8] c"Error while parsing expression '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"output%d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"start_pts\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"prev_pts\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"prev_selected_pts\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"start_t\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"prev_t\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"prev_selected_t\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"pict_type\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"BI\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"PICT_TYPE_I\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"PICT_TYPE_P\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"PICT_TYPE_B\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"PICT_TYPE_S\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"PICT_TYPE_SI\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"PICT_TYPE_SP\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"PICT_TYPE_BI\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"interlace_type\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"PROGRESSIVE\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"TOPFIRST\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"BOTTOMFIRST\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"consumed_samples_n\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"samples_n\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"sample_rate\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"selected_n\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"prev_selected_n\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"concatdec_select\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ih\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"iw\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"lavfi.scene_score\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"n:%f pts:%f t:%f key:%d\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c" interlace_type:%c pict_type:%c scene:%f\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c" samples_n:%d consumed_samples_n:%f\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c" -> select:%f select_out:%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"lavf.concatdec.start_time\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"lavf.concatdec.duration\00", align 1
@select_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @select_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@select_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 8, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.7, i32 8, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 460, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.11, i32 460, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@query_formats.pix_fmts = internal constant [12 x i32] [i32 2, i32 3, i32 26, i32 27, i32 28, i32 8, i32 0, i32 12, i32 4, i32 13, i32 62, i32 -1], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @aselect_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call fastcc i32 @init(ptr noundef %0) #10 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.14) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.c, %bb.a ], [ -22, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @av_expr_free(ptr noundef %i.d) #11
  store ptr null, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  tail call void @av_frame_free(ptr noundef nonnull %i.g) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !53
  %.not69 = icmp eq i32 %i.m, 0
  br i1 %.not69, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.o = icmp eq i32 %i.z, %i.aa
  br i1 %i.o, label %._crit_edge.thread, label %.preheader47

.preheader47:                                     ; preds = %._crit_edge
  %i.p = call i32 @ff_inlink_consume_frame(ptr noundef %i.k, ptr noundef nonnull %i.d) #11 ; 2 uses
  %.not60 = icmp eq i32 %i.p, 0
  br i1 %.not60, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.preheader47
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 456 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.03857 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.b ]
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = tail call i32 @ff_outlink_get_status(ptr noundef %i.v) #11
  %i.x = icmp eq i32 %i.w, -541478725
  %i.y = zext i1 %i.x to i32
  %i.z = add nuw nsw i32 %.03857, %i.y            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !53  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = icmp samesign ult i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !44

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @ff_inlink_set_status(ptr noundef %i.k, i32 noundef -541478725) #11
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph61, %bb.ad
  %i.ad = phi i32 [ %i.p, %.lr.ph61 ], [ %i.jd, %bb.ad ] ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !55  ; 15 uses
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !19  ; 27 uses
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !27
  %i.am = fcmp uno double %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !60 ; 7 uses
  br i1 %i.am, label %bb.e, label %._crit_edge85

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808
  %i.aq = sitofp nsz i64 %i.ao to double
  %i.ar = select nsz i1 %i.ap, double +qnan, double %i.aq
  store double %i.ar, ptr %i.ak, align 8, !tbaa !27
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.d, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !27
  %i.au = fcmp uno double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge85
  %.pre119.i = sitofp nsz i64 %i.ao to double
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge85
  %i.av = icmp eq i64 %i.ao, -9223372036854775808
  %i.aw = sitofp nsz i64 %i.ao to double          ; 2 uses
  %i.ax = select nsz i1 %i.av, double +qnan, double %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.az to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %i.az, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.ba = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i to double
  %i.bb = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i to double
  %i.bc = fdiv nsz double %i.ba, %i.bb
  %i.bd = fmul nsz double %i.ax, %i.bc
  store double %i.bd, ptr %i.as, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pre-phi.i = phi double [ %.pre119.i, %._crit_edge.i ], [ %i.aw, %bb.f ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !62
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = sitofp nsz i64 %i.bg to double
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 272 ; 3 uses
  store double %i.bh, ptr %i.bi, align 8, !tbaa !27
  %i.bj = icmp eq i64 %i.ao, -9223372036854775808
  %i.bk = select nsz i1 %i.bj, double +qnan, double %.pre-phi.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store double %i.bk, ptr %i.bl, align 8, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %.sroa.0.0.extract.trunc.i110.i = trunc i64 %i.bn to i32
  %.sroa.2.0.extract.shift.i111.i = lshr i64 %i.bn, 32
  %.sroa.2.0.extract.trunc.i112.i = trunc nuw i64 %.sroa.2.0.extract.shift.i111.i to i32
  %i.bo = sitofp nsz i32 %.sroa.0.0.extract.trunc.i110.i to double
  %i.bp = sitofp nsz i32 %.sroa.2.0.extract.trunc.i112.i to double
  %i.bq = fdiv nsz double %i.bo, %i.bp
  %i.br = fmul nsz double %i.bk, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 3 uses
  store double %i.br, ptr %i.bs, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 276 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.bv = lshr i32 %i.bu, 1
  %.lobit.i = and i32 %i.bv, 1
  %i.bw = uitofp nneg i32 %.lobit.i to double
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 296
  store double %i.bw, ptr %i.bx, align 8, !tbaa !27
  %i.by = load i64, ptr %i.bm, align 8
  %i.bz = call i64 @av_rescale_q(i64 noundef %i.ao, i64 %i.by, i64 4294967296000001) #12 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.af, i64 312    ; 2 uses
  %.val.i = load ptr, ptr %i.ca, align 8, !tbaa !64 ; 2 uses
  %i.cb = call ptr @av_dict_get(ptr noundef %.val.i, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #11 ; 2 uses
  %i.cc = call ptr @av_dict_get(ptr noundef %.val.i, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %get_concatdec_select.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !66
  %i.cf = call i64 @strtoll(ptr noundef captures(none) %i.ce, ptr noundef null, i32 noundef 10) #11 ; 2 uses
  %.not16.i.i = icmp slt i64 %i.bz, %i.cf
  br i1 %.not16.i.i, label %get_concatdec_select.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not17.i.i = icmp eq ptr %i.cc, null
  br i1 %.not17.i.i, label %get_concatdec_select.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66
  %i.ci = call i64 @strtoll(ptr noundef captures(none) %i.ch, ptr noundef null, i32 noundef 10) #11
  %i.cj = add nsw i64 %i.ci, %i.cf
  %i.ck = icmp slt i64 %i.bz, %i.cj
  %..i.i = select nsz i1 %i.ck, double -1.000000e+00, double 0.000000e+00
  br label %get_concatdec_select.exit.i

get_concatdec_select.exit.i:                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.2.i.i = phi nsz double [ 0.000000e+00, %bb.h ], [ %..i.i, %bb.j ], [ -1.000000e+00, %bb.i ], [ +qnan, %bb.g ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 312
  store double %.2.i.i, ptr %i.cl, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !37
  switch i32 %i.cn, label %bb.s [
    i32 1, label %bb.k
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %get_concatdec_select.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !67
  %i.cq = sitofp nsz i32 %i.cp to double
  br label %.sink.split.i

bb.l:                                             ; preds = %get_concatdec_select.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 108
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !68 ; 2 uses
  %i.ct = sitofp nsz i32 %i.cs to double
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ag, i64 320
  store double %i.ct, ptr %i.cu, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %i.cx = sitofp nsz i32 %i.cw to double
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 328
  store double %i.cx, ptr %i.cy, align 8, !tbaa !27
  %i.cz = load i32, ptr %i.bt, align 4, !tbaa !63 ; 2 uses
  %i.da = and i32 %i.cz, 8
  %.not.i = icmp eq i32 %i.da, 0
  %i.db = and i32 %i.cz, 16
  %.not103.i = icmp eq i32 %i.db, 0
  %i.dc = select i1 %.not103.i, i32 2, i32 1
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = select i1 %.not.i, double 0.000000e+00, double %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  store double %i.de, ptr %i.df, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !70
  %i.di = uitofp nsz i32 %i.dh to double
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store double %i.di, ptr %i.dj, align 8, !tbaa !27
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 416
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !24
  %.not104.i = icmp eq i32 %i.dl, 0
  br i1 %.not104.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %.val109.i = load ptr, ptr %i.g, align 8, !tbaa !19 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dm = getelementptr inbounds nuw i8, ptr %.val109.i, i64 440 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !71 ; 6 uses
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !55
  %.not.i113.i = icmp eq ptr %i.dn, null
  br i1 %.not.i113.i, label %get_scene_score.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 108
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !68
  %i.dq = icmp eq i32 %i.cs, %i.dp
  br i1 %i.dq, label %bb.o, label %get_scene_score.exit.i

bb.o:                                             ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !69
  %i.dt = icmp eq i32 %i.cw, %i.ds
  br i1 %i.dt, label %.preheader.i.i, label %get_scene_score.exit.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %.val109.i, i64 348 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !38
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.val109.i, i64 424
  %i.dy = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %.val109.i, i64 352
  %i.ea = getelementptr inbounds nuw i8, ptr %.val109.i, i64 384
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  br label %bb.p

._crit_edge.loopexit.i.i:                         ; preds = %bb.p
  %i.ec = uitofp nsz i64 %i.fp to double
  %i.ed = uitofp nsz i64 %i.ft to double
  %i.ee = fdiv nsz double %i.ec, %i.ed
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %i.ef = phi double [ +qnan, %.preheader.i.i ], [ %i.ee, %._crit_edge.loopexit.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.val109.i, i64 344
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !39
  %i.ei = add nsw i32 %i.eh, -8
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = uitofp nsz i64 %i.ek to double
  %i.em = fdiv nsz double %i.ef, %i.el            ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val109.i, i64 432 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !72
  %i.ep = fsub nsz double %i.em, %i.eo
  %i.eq = call nsz double @llvm.fabs.f64(double %i.ep) ; 2 uses
  %i.er = fcmp nsz ogt double %i.em, %i.eq
  %i.es = select nsz i1 %i.er, double %i.eq, double %i.em
  %i.et = fdiv nsz double %i.es, 1.000000e+02
  %i.eu = fptrunc nsz double %i.et to float       ; 2 uses
  %i.ev = fcmp nsz ogt float %i.eu, 0.000000e+00
  %i.ew = select nsz i1 %i.ev, float %i.eu, float 0.000000e+00 ; 2 uses
  %i.ex = fcmp nsz ogt float %i.ew, 1.000000e+00
  %..i.i.i = select nsz i1 %i.ex, float 1.000000e+00, float %i.ew
  %i.ey = fpext nsz float %..i.i.i to double
  store double %i.em, ptr %i.en, align 8, !tbaa !72
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  br label %get_scene_score.exit.i

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.p ] ; 7 uses
  %.0372.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ft, %bb.p ]
  %.0381.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.fp, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ez = load ptr, ptr %i.dx, align 8, !tbaa !40
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !73
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !74
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i.i
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !73
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !74
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.i.i ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !41
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i.i ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !41
  call void %i.ez(ptr noundef %i.fb, i64 noundef %i.fe, ptr noundef %i.fg, i64 noundef %i.fj, i64 noundef %i.fl, i64 noundef %i.fn, ptr noundef nonnull %i.b) #11, !inline_history !45
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !41
  %i.fp = add i64 %i.fo, %.0381.i.i               ; 2 uses
  %i.fq = load i64, ptr %i.fk, align 8, !tbaa !41
  %i.fr = load i64, ptr %i.fm, align 8, !tbaa !41
  %i.fs = mul nsw i64 %i.fr, %i.fq
  %i.ft = add i64 %i.fs, %.0372.i.i               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fu = load i32, ptr %i.du, align 4, !tbaa !38
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp slt i64 %indvars.iv.next.i.i, %i.fv
  br i1 %i.fw, label %bb.p, label %._crit_edge.loopexit.i.i, !llvm.loop !46

get_scene_score.exit.i:                           ; preds = %._crit_edge.i.i, %bb.o, %bb.n, %bb.m
  %.039.i.i = phi nsz double [ %i.ey, %._crit_edge.i.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %i.fx = call ptr @av_frame_clone(ptr noundef nonnull %i.af) #11
  store ptr %i.fx, ptr %i.dm, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  store double %.039.i.i, ptr %i.fy, align 8, !tbaa !27
  %i.fz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.56, double noundef %.039.i.i) #11 ; 0 uses
  %i.ga = call i32 @av_dict_set(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.c, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.q

bb.q:                                             ; preds = %get_scene_score.exit.i, %bb.l
  %i.gb = getelementptr inbounds nuw i8, ptr %i.af, i64 264
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !75
  %i.gd = getelementptr inbounds nuw i8, ptr %i.af, i64 272
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !76
  %i.gf = call ptr @av_frame_side_data_get_c(ptr noundef %i.gc, i32 noundef %i.ge, i32 noundef 29) #11 ; 2 uses
  %.not105.i = icmp eq ptr %i.gf, null
  br i1 %.not105.i, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !78
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !74
  %i.gj = sitofp nsz i32 %i.gi to float
  %i.gk = fpext nsz float %i.gj to double
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.q, %bb.k
  %.sink128.i = phi i64 [ 256, %bb.k ], [ 336, %bb.q ], [ 336, %bb.r ]
  %.sink.i = phi double [ %i.cq, %bb.k ], [ +qnan, %bb.q ], [ %i.gk, %bb.r ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink128.i
  store double %.sink.i, ptr %i.gl, align 8, !tbaa !27
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %get_concatdec_select.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !25
  %i.go = call nsz double @av_expr_eval(ptr noundef %i.gn, ptr noundef nonnull %i.aj, ptr noundef null) #11 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ag, i64 448
  store double %i.go, ptr %i.gp, align 8, !tbaa !79
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !42
  %i.gs = load double, ptr %i.bi, align 8, !tbaa !27
  %i.gt = load double, ptr %i.bl, align 8, !tbaa !27
  %i.gu = load double, ptr %i.bs, align 8, !tbaa !27
  %i.gv = load i32, ptr %i.bt, align 4, !tbaa !63
  %i.gw = lshr i32 %i.gv, 1
  %.lobit106.i = and i32 %i.gw, 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gr, i32 noundef 48, ptr noundef nonnull @.str.58, double noundef %i.gs, double noundef %i.gt, double noundef %i.gu, i32 noundef %.lobit106.i) #11
  %i.gx = load i32, ptr %i.cm, align 8, !tbaa !37
  switch i32 %i.gx, label %bb.v [
    i32 0, label %bb.t
    i32 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.gy = load ptr, ptr %i.gq, align 8, !tbaa !42
  %i.gz = load i32, ptr %i.bt, align 4, !tbaa !63 ; 2 uses
  %i.ha = and i32 %i.gz, 8
  %.not107.i = icmp eq i32 %i.ha, 0
  %i.hb = and i32 %i.gz, 16
  %.not108.i = icmp eq i32 %i.hb, 0
  %i.hc = select i1 %.not108.i, i32 66, i32 84
  %i.hd = select i1 %.not107.i, i32 80, i32 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !70
  %i.hg = call signext i8 @av_get_picture_type_char(i32 noundef %i.hf) #11
  %i.hh = sext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ag, i64 304
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !27
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gy, i32 noundef 48, ptr noundef nonnull @.str.59, i32 noundef %i.hd, i32 noundef %i.hh, double noundef %i.hj) #11
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.hk = load ptr, ptr %i.gq, align 8, !tbaa !42
  %i.hl = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !67
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !27
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hk, i32 noundef 48, ptr noundef nonnull @.str.60, i32 noundef %i.hm, double noundef %i.ho) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.hp = fcmp nsz une double %i.go, 0.000000e+00 ; 2 uses
  br i1 %i.hp, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %or.cond.i = fcmp ult double %i.go, 0.000000e+00
  br i1 %or.cond.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = fptrunc nsz double %i.go to float
  %i.hr = call nsz float @llvm.ceil.f32(float %i.hq)
  %i.hs = fadd nsz float %i.hr, -1.000000e+00     ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ag, i64 460
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !43
  %i.hv = add nsw i32 %i.hu, -1
  %i.hw = sitofp nsz i32 %i.hv to float           ; 2 uses
  %i.hx = fcmp nsz ogt float %i.hs, %i.hw
  %..i = select nsz i1 %i.hx, float %i.hw, float %i.hs
  %i.hy = fptosi float %..i to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.sink129.i = phi i32 [ -1, %bb.v ], [ %i.hy, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ag, i64 456
  store i32 %.sink129.i, ptr %i.hz, align 8, !tbaa !80
  %i.ia = load ptr, ptr %i.gq, align 8, !tbaa !42
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ia, i32 noundef 48, ptr noundef nonnull @.str.61, double noundef %i.go, i32 noundef %.sink129.i) #11
  %.pre117.i = load double, ptr %i.bl, align 8, !tbaa !27 ; 2 uses
  %.pre118.i = load double, ptr %i.bs, align 8, !tbaa !27 ; 2 uses
  br i1 %i.hp, label %bb.z, label %select_frame.exit

bb.z:                                             ; preds = %bb.y
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  store double %.pre117.i, ptr %i.ib, align 8, !tbaa !27
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store double %.pre118.i, ptr %i.ic, align 8, !tbaa !27
  %i.id = getelementptr inbounds nuw i8, ptr %i.ag, i64 280
  %1 = load <2 x double>, ptr %i.bi, align 8, !tbaa !27
  %2 = fadd <2 x double> %1, <double -0.000000e+00, double 1.000000e+00>
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %3, ptr %i.id, align 8, !tbaa !27
  %i.ie = load i32, ptr %i.cm, align 8, !tbaa !37
  %i.if = icmp eq i32 %i.ie, 1
  br i1 %i.if, label %bb.aa, label %select_frame.exit

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !67
  %i.ii = sitofp nsz i32 %i.ih to double
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ag, i64 248 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !27
  %i.il = fadd nsz double %i.ik, %i.ii
  store double %i.il, ptr %i.ij, align 8, !tbaa !27
  br label %select_frame.exit

select_frame.exit:                                ; preds = %bb.y, %bb.z, %bb.aa
  %i.im = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store double %.pre117.i, ptr %i.im, align 8, !tbaa !27
  %i.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store double %.pre118.i, ptr %i.in, align 8, !tbaa !27
  %i.io = load double, ptr %i.q, align 8, !tbaa !79
  %i.ip = fcmp nsz une double %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %select_frame.exit
  %i.iq = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.ir = load i32, ptr %i.s, align 8, !tbaa !80
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.is
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !52
  %i.iv = call i32 @ff_outlink_get_status(ptr noundef %i.iu) #11
  %.not46 = icmp eq i32 %i.iv, 0
  br i1 %.not46, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iw = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.ix = load i32, ptr %i.s, align 8, !tbaa !80
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !52
  %i.jb = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.jc = call i32 @ff_filter_frame(ptr noundef %i.ja, ptr noundef %i.jb) #11
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab, %select_frame.exit
  call void @av_frame_free(ptr noundef nonnull %i.d) #11
  %i.jd = call i32 @ff_inlink_consume_frame(ptr noundef %i.k, ptr noundef nonnull %i.d) #11 ; 2 uses
  %.not = icmp eq i32 %i.jd, 0
  br i1 %.not, label %._crit_edge62, label %bb.c, !llvm.loop !47

._crit_edge62:                                    ; preds = %bb.ad, %.preheader47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.je = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %.not43 = icmp eq i32 %i.je, 0
  br i1 %.not43, label %.critedge, label %.preheader

.preheader:                                       ; preds = %._crit_edge62
  %i.jf = load i32, ptr %i.l, align 8, !tbaa !53
  %.not70 = icmp eq i32 %i.jf, 0
  br i1 %.not70, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph64, %bb.ae
  %indvars.iv79 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next80, %bb.ae ] ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !54
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv79
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !52
  %i.jk = load i32, ptr %i.e, align 4, !tbaa !74
  %i.jl = load i64, ptr %i.f, align 8, !tbaa !41
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.jj, i32 noundef %i.jk, i64 noundef %i.jl) #11
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.jm = load i32, ptr %i.l, align 8, !tbaa !53
  %i.jn = zext i32 %i.jm to i64
  %i.jo = icmp samesign ult i64 %indvars.iv.next80, %i.jn
  br i1 %i.jo, label %bb.ae, label %._crit_edge65, !llvm.loop !48

._crit_edge65:                                    ; preds = %bb.ae, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.loopexit

.critedge:                                        ; preds = %._crit_edge62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.jp = load i32, ptr %i.l, align 8, !tbaa !53
  %.not4566.not = icmp eq i32 %i.jp, 0
  br i1 %.not4566.not, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %.critedge
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.jr = load i32, ptr %i.l, align 8, !tbaa !53
  %i.js = zext i32 %i.jr to i64
  %.not45 = icmp samesign ult i64 %indvars.iv.next83, %i.js
  br i1 %.not45, label %bb.ag, label %.loopexit, !llvm.loop !49

bb.ag:                                            ; preds = %.lr.ph68, %bb.af
  %indvars.iv82 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next83, %bb.af ] ; 2 uses
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !54
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv82
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !52
  %i.jw = call i32 @ff_outlink_frame_wanted(ptr noundef %i.jv) #11
  %.not44 = icmp eq i32 %i.jw, 0
  br i1 %.not44, label %bb.af, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @ff_inlink_request_frame(ptr noundef %i.k) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.af, %.critedge, %bb.ah, %._crit_edge65, %bb.ac, %._crit_edge.thread
  %.2 = phi i32 [ 0, %._crit_edge.thread ], [ 0, %._crit_edge65 ], [ %i.jc, %bb.ac ], [ -1497649742, %.critedge ], [ 0, %bb.ah ], [ -1497649742, %bb.af ], [ %i.ad, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret i32 %.2
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @select_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @init(ptr noundef %0) #10
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @ff_set_pixel_formats_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.pix_fmts) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !82
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !84
  %i.j = and i64 %i.i, 48
  %or.cond77.not = icmp eq i64 %i.j, 16
  br i1 %or.cond77.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 2 uses
  store i32 %i.l, ptr %i.m, align 8, !tbaa !39
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !87
  %i.p = icmp ugt i8 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 344 ; 3 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !39
  br i1 %i.p, label %.thread80, label %bb.c

.thread80:                                        ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 348 ; 2 uses
  store i32 1, ptr %i.t, align 4, !tbaa !38
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b, %.thread
  %i.u = phi ptr [ %i.m, %.thread ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %i.e, align 4, !tbaa !82
  %i.w = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.v) #11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 348 ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !38
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread80, %bb.c
  %i.z = phi ptr [ %i.t, %.thread80 ], [ %i.x, %bb.c ]
  %i.aa = phi ptr [ %i.s, %.thread80 ], [ %i.u, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 352
end_hunk_0
