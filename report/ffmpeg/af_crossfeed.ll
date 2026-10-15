Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_crossfeed?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_crossfeed = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_audio_default_filterpad, ptr @crossfeed_class, i32 131072, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 168, i32 0, ptr @process_command, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@crossfeed_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @crossfeed_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"set crossfeed strength\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"set soundstage wideness\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"slope\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"set curve slope\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"level_in\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"set level in\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"level_out\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"set level out\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"set the block size\00", align 1
@crossfeed_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 16, i32 4, { double } { double 2.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 8, i32 4, { double } { double 5.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 24, i32 4, { double } { double 5.000000e-01 }, double 1.000000e-02, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 32, i32 4, { double } { double 9.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 40, i32 4, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 52, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.276800e+04, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@query_formats.formats = internal constant [2 x i32] [i32 4, i32 -1], align 4
@query_formats.layouts = internal constant [2 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 2, %union.anon.1 { i64 3 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !45
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.formats) #7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.layouts) #7
  %. = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = tail call i32 @config_input(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.l = tail call i32 @ff_outlink_get_status(ptr noundef %i.i) #7 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ff_inlink_set_status(ptr noundef %i.f, i32 noundef %i.l) #7
  br label %.thread

.critedge:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.p = call i32 @ff_inlink_consume_samples(ptr noundef %i.f, i32 noundef %i.n, i32 noundef %i.n, ptr noundef nonnull %i.a) #7
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.q = call i32 @ff_inlink_consume_frame(ptr noundef %i.f, ptr noundef nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.034 = phi i32 [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = icmp slt i32 %.034, 0
  br i1 %i.r, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43 = icmp eq i32 %.034, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.t = getelementptr i8, ptr %i.f, i64 16
  %.val48 = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.u = call fastcc i32 @filter_frame(ptr %.val48, ptr noundef %i.s, i32 noundef 0)
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.m, align 8, !tbaa !31
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @ff_inlink_queued_samples(ptr noundef %i.f) #7
  %i.y = load i32, ptr %i.m, align 8, !tbaa !31
  %.not44 = icmp slt i32 %i.x, %i.y
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #7
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.z = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #7
  %.not45 = icmp eq i32 %i.z, 0
  br i1 %.not45, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = call ptr @ff_get_audio_buffer(ptr noundef %i.i, i32 noundef %i.aa) #7 ; 2 uses
  %.not47.not = icmp eq ptr %i.ac, null
  br i1 %.not47.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.ae = call fastcc i32 @filter_frame(ptr %.val, ptr noundef nonnull %i.ac, i32 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.2 = phi i32 [ %i.ae, %bb.n ], [ 0, %bb.l ]
  %i.af = load i32, ptr %i.c, align 4, !tbaa !46
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !47
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.i, i32 noundef %i.af, i64 noundef %i.ag) #7
  br label %.thread

bb.p:                                             ; preds = %bb.k
  %i.ah = call i32 @ff_outlink_frame_wanted(ptr noundef %i.i) #7
  %.not46 = icmp eq i32 %i.ah, 0
  br i1 %.not46, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @ff_inlink_request_frame(ptr noundef %i.f) #7
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.b, %bb.p, %bb.e, %bb.q, %bb.o, %bb.j, %bb.g
  %.238 = phi i32 [ 0, %bb.b ], [ %i.u, %bb.g ], [ 0, %bb.j ], [ %.2, %bb.o ], [ -1497649742, %bb.p ], [ 0, %bb.q ], [ %.034, %bb.e ], [ -12, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.238
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !49
  %i.i = fsub nsz double 1.000000e+00, %i.h
  %i.j = fmul nsz double %i.i, f0x401921FB54442D18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50
  %i.m = sitofp nsz i32 %i.l to double
  %i.n = insertelement <2 x double> poison, double %i.f, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.j, i64 1
  %i.p = fmul nsz <2 x double> %i.o, <double -3.000000e+01, double 2.100000e+03>
  %i.q = insertelement <2 x double> <double 4.000000e+01, double poison>, double %i.m, i64 1
  %i.r = fdiv nsz <2 x double> %i.p, %i.q         ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fmul nsz double %i.s, f0x400A934F0979A371
  %i.u = extractelement <2 x double> %i.r, i64 1
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.u) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1 ; 2 uses
  %i.v = fmul nsz double %sin, 5.000000e-01
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load double, ptr %i.w, align 8, !tbaa !51
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ab = tail call nsz double @llvm.exp2.f64(double %i.t) ; 7 uses
  %i.ac = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.ab, i64 1
  %i.ae = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ad ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 1
  %i.ag = fadd nsz double %i.ab, %i.af
  %i.ah = insertelement <2 x double> %i.ae, double %i.ab, i64 1
  %i.ai = fadd nsz <2 x double> %i.ah, splat (double -1.000000e+00) ; 4 uses
  %i.aj = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %cos, i64 1
  %i.al = fadd nsz double %i.ab, 1.000000e+00     ; 4 uses
  %i.am = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.al, i64 1
  %i.an = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ak, <2 x double> %i.am) ; 3 uses
  %i.ao = insertelement <2 x double> %i.an, double %i.ab, i64 1
  %i.ap = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ao) ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fmul nsz double %i.v, %i.aq             ; 2 uses
  %i.as = extractelement <2 x double> %i.ap, i64 1
  %i.at = fmul nsz double %i.as, 2.000000e+00     ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0 ; 2 uses
  %i.av = insertelement <2 x double> %i.au, double %i.al, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %cos, i64 1 ; 3 uses
  %i.ay = shufflevector <2 x double> %i.an, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.az = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.ax, <2 x double> %i.ay) ; 3 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  store double %i.ba, ptr %1, align 8, !tbaa !52
  %i.bb = insertelement <2 x double> %i.ai, double %i.at, i64 0
  %i.bc = fneg nsz <2 x double> %i.bb             ; 2 uses
  %2 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x double> %2, double %i.al, i64 1
  %i.be = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.ax, <2 x double> %i.bd) ; 3 uses
  %i.bf = shufflevector <2 x double> %i.az, <2 x double> %i.be, <2 x i32> <i32 1, i32 2>
  %i.bg = fmul nsz <2 x double> %i.bf, <double -2.000000e+00, double 1.000000e+00>
  %3 = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.bh = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul nsz <2 x double> %i.bh, <double 1.000000e+00, double 2.000000e+00>
  %i.bj = fneg nsz double %i.al
  %i.bk = insertelement <2 x double> %i.au, double %i.bj, i64 1
  %i.bl = shufflevector <2 x double> %i.be, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.bm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.ax, <2 x double> %i.bl)
  %i.bn = fmul nsz <2 x double> %i.bi, %i.bm
  %i.bo = extractelement <2 x double> %i.be, i64 1
  %i.bp = extractelement <2 x double> %i.bc, i64 0
  %i.bq = tail call nsz double @llvm.fmuladd.f64(double %i.bp, double %i.ar, double %i.bo)
  %i.br = fmul nsz double %i.ab, %i.bq
  %i.bs = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fdiv nsz <2 x double> %i.bg, %i.bs
  store <2 x double> %i.bt, ptr %i.y, align 8, !tbaa !41
  %4 = fdiv nsz <2 x double> %i.bn, %i.bs
  store <2 x double> %4, ptr %i.z, align 8, !tbaa !41
  %i.bu = fdiv nsz double %i.br, %i.ba
  store double %i.bu, ptr %i.aa, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !31
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !53 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store i32 %i.bz, ptr %i.bv, align 8, !tbaa !31
  %i.cb = shl nuw nsw i32 %i.bz, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = tail call noalias ptr @av_calloc(i64 noundef %i.cc, i64 noundef 8) #7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.cg = load i32, ptr %i.bv, align 8, !tbaa !31
  %i.ch = shl nsw i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = tail call noalias ptr @av_calloc(i64 noundef %i.ci, i64 noundef 8) #7 ; 2 uses
  store ptr %i.cj, ptr %i.cf, align 8, !tbaa !44
  %.not = icmp eq ptr %i.cj, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ck = load i32, ptr %i.bv, align 8, !tbaa !31
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = tail call noalias ptr @av_calloc(i64 noundef %i.cm, i64 noundef 8) #7 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !44
  %.not.1 = icmp eq ptr %i.cn, null
  br i1 %.not.1, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cp = load i32, ptr %i.bv, align 8, !tbaa !31
  %i.cq = shl nsw i32 %i.cp, 1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = tail call noalias ptr @av_calloc(i64 noundef %i.cr, i64 noundef 8) #7 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !44
  %.not.2 = icmp eq ptr %i.cs, null
  %spec.select = select i1 %.not.2, i32 -12, i32 0
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.d, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ -12, %bb.c ], [ %spec.select, %bb.e ], [ -12, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #3

declare ptr @av_default_item_name(ptr noundef) #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @filter_frame(ptr %.16.val, ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 21 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !98     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !99 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !100 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !41 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.p = load double, ptr %i.o, align 8, !tbaa !42 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.r = load double, ptr %i.q, align 8, !tbaa !101
  %i.s = fneg nsz double %i.r                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !102
  %i.v = fneg nsz double %i.u                     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.w = tail call i32 @av_frame_is_writable(ptr noundef nonnull %0) #7
  %.not = icmp ne i32 %i.w, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 3 uses
  %i.x = icmp eq i32 %.pre, 0
  %or.cond = select i1 %.not, i1 %i.x, i1 false
  br i1 %or.cond, label %.thread72, label %._crit_edge58

.thread72:                                        ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8, !tbaa !26
  %i.y = load ptr, ptr %0, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.g

._crit_edge58:                                    ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = icmp sgt i32 %.pre, 0
  br i1 %i.ab, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge58
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge58, %bb.b
  %i.ae = phi i32 [ %i.ad, %bb.b ], [ %.pre, %._crit_edge58 ]
  %i.af = tail call ptr @ff_get_audio_buffer(ptr noundef %i.e, i32 noundef %i.ae) #7 ; 15 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !26
  %.not196 = icmp eq ptr %i.af, null
  br i1 %.not196, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.ag = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.af, ptr noundef nonnull %0) #7 ; 0 uses
  %.pre60 = load i32, ptr %i.aa, align 8, !tbaa !31 ; 9 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !98 ; 29 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 10 uses
  %i.aj = icmp sgt i32 %.pre60, 0                 ; 2 uses
  br i1 %i.aj, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !108
  %i.am = icmp ne i64 %i.al, -9223372036854775808
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %.pre60, 0
  br i1 %i.an, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.thread72, %bb.f
  %i.ao = phi ptr [ %0, %.thread72 ], [ %i.af, %bb.f ] ; 2 uses
  %i.ap = phi ptr [ %i.y, %.thread72 ], [ %i.ah, %bb.f ]
  %i.aq = phi ptr [ %i.z, %.thread72 ], [ %i.ai, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !107 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.16.val, i64 104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !109
  %.not202 = icmp eq i32 %i.ax, 0
  %i.ay = insertelement <2 x double> poison, double %i.s, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.p, i64 1
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k, %bb.g
  %i.ba = phi <2 x double> [ %i.as, %bb.g ], [ %i.bq, %bb.k ]
  store <2 x double> %i.ba, ptr %i.ar, align 8, !tbaa !41
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.018521 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %bb.k ]
  %.018818 = phi ptr [ %i.ap, %.lr.ph ], [ %i.cc, %bb.k ] ; 4 uses
  %.019017 = phi ptr [ %i.h, %.lr.ph ], [ %i.cb, %bb.k ] ; 3 uses
  %i.bb = phi <2 x double> [ %i.as, %.lr.ph ], [ %i.bq, %bb.k ]
  %i.bc = load double, ptr %.019017, align 8, !tbaa !41 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.019017, i64 8 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !41 ; 2 uses
  %i.bf = fsub nsz double %i.bc, %i.be
end_hunk_0
begin_hunk_1_@filter_frame:bb.a

.lr.ph37.split:                                   ; preds = %.lr.ph37.split.prol.loopexit, %.lr.ph37.split
  %.018136 = phi i32 [ %i.sx, %.lr.ph37.split ], [ %.018136.unr, %.lr.ph37.split.prol.loopexit ]
  %.235 = phi ptr [ %i.sz, %.lr.ph37.split ], [ %.235.unr, %.lr.ph37.split.prol.loopexit ] ; 9 uses
  %.219234 = phi ptr [ %i.sy, %.lr.ph37.split ], [ %.219234.unr, %.lr.ph37.split.prol.loopexit ] ; 9 uses
  %i.sb = load double, ptr %.219234, align 8, !tbaa !41
  store double %i.sb, ptr %.235, align 8, !tbaa !41
  %i.sc = getelementptr inbounds nuw i8, ptr %.219234, i64 8
  %i.sd = load double, ptr %i.sc, align 8, !tbaa !41
  %i.se = getelementptr inbounds nuw i8, ptr %.235, i64 8
  store double %i.sd, ptr %i.se, align 8, !tbaa !41
  %i.sf = getelementptr inbounds nuw i8, ptr %.219234, i64 16
  %i.sg = getelementptr inbounds nuw i8, ptr %.235, i64 16
  %i.sh = load double, ptr %i.sf, align 8, !tbaa !41
  store double %i.sh, ptr %i.sg, align 8, !tbaa !41
  %i.si = getelementptr inbounds nuw i8, ptr %.219234, i64 24
  %i.sj = load double, ptr %i.si, align 8, !tbaa !41
  %i.sk = getelementptr inbounds nuw i8, ptr %.235, i64 24
  store double %i.sj, ptr %i.sk, align 8, !tbaa !41
  %i.sl = getelementptr inbounds nuw i8, ptr %.219234, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %.235, i64 32
  %i.sn = load double, ptr %i.sl, align 8, !tbaa !41
  store double %i.sn, ptr %i.sm, align 8, !tbaa !41
  %i.so = getelementptr inbounds nuw i8, ptr %.219234, i64 40
  %i.sp = load double, ptr %i.so, align 8, !tbaa !41
  %i.sq = getelementptr inbounds nuw i8, ptr %.235, i64 40
  store double %i.sp, ptr %i.sq, align 8, !tbaa !41
  %i.sr = getelementptr inbounds nuw i8, ptr %.219234, i64 48
  %i.ss = getelementptr inbounds nuw i8, ptr %.235, i64 48
  %i.st = load double, ptr %i.sr, align 8, !tbaa !41
  store double %i.st, ptr %i.ss, align 8, !tbaa !41
  %i.su = getelementptr inbounds nuw i8, ptr %.219234, i64 56
  %i.sv = load double, ptr %i.su, align 8, !tbaa !41
  %i.sw = getelementptr inbounds nuw i8, ptr %.235, i64 56
  store double %i.sv, ptr %i.sw, align 8, !tbaa !41
  %i.sx = add nuw nsw i32 %.018136, 4             ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.219234, i64 64
  %i.sz = getelementptr inbounds nuw i8, ptr %.235, i64 64
  %exitcond52.not.3 = icmp eq i32 %i.sx, %i.gy
  br i1 %exitcond52.not.3, label %._crit_edge38, label %.lr.ph37.split, !llvm.loop !97

.loopexit:                                        ; preds = %.lr.ph27.split.prol.loopexit, %.lr.ph27.split, %.lr.ph27.split.us.prol.loopexit, %.lr.ph27.split.us, %middle.block, %middle.block116, %bb.m, %._crit_edge38, %._crit_edge
  %i.ta = phi ptr [ %i.aq, %._crit_edge ], [ %i.ai, %._crit_edge38 ], [ %i.ai, %bb.m ], [ %i.ai, %middle.block116 ], [ %i.ai, %middle.block ], [ %i.ai, %.lr.ph27.split.us.prol.loopexit ], [ %i.ai, %.lr.ph27.split.us ], [ %i.ai, %.lr.ph27.split ], [ %i.ai, %.lr.ph27.split.prol.loopexit ]
  %i.tb = phi ptr [ %i.ao, %._crit_edge ], [ %i.af, %._crit_edge38 ], [ %i.af, %bb.m ], [ %i.af, %middle.block116 ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph27.split.us.prol.loopexit ], [ %i.af, %.lr.ph27.split.us ], [ %i.af, %.lr.ph27.split ], [ %i.af, %.lr.ph27.split.prol.loopexit ] ; 4 uses
  %.not2019 = phi i1 [ true, %._crit_edge ], [ %.not20110, %._crit_edge38 ], [ %.not20110, %bb.m ], [ %.not20110, %middle.block116 ], [ %.not20110, %middle.block ], [ %.not20110, %.lr.ph27.split.us.prol.loopexit ], [ %.not20110, %.lr.ph27.split.us ], [ %.not20110, %.lr.ph27.split ], [ %.not20110, %.lr.ph27.split.prol.loopexit ]
  %i.tc = load i32, ptr %i.ta, align 8, !tbaa !31
  %i.td = icmp sgt i32 %i.tc, 0
  br i1 %i.td, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !107
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !133
  %i.ti = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !108
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 136
  store i64 %i.tj, ptr %i.tk, align 8, !tbaa !133
  %i.tl = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !134
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tb, i64 112
  store i32 %i.tm, ptr %i.tn, align 8, !tbaa !107
  store i64 %i.th, ptr %i.ti, align 8, !tbaa !108
  store i32 %i.tf, ptr %i.tl, align 8, !tbaa !134
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  %.not200 = icmp eq ptr %i.tb, %0
  br i1 %.not200, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @av_frame_free(ptr noundef nonnull %i.a) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not2019, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.to = call i32 @ff_filter_frame(ptr noundef %i.e, ptr noundef nonnull %i.tb) #7
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @av_frame_free(ptr noundef nonnull %i.b) #7
  call void @ff_filter_set_ready(ptr noundef %.16.val, i32 noundef 10) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.d
  %.0 = phi i32 [ 0, %bb.t ], [ %i.to, %bb.s ], [ -12, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.0
}

declare i32 @ff_inlink_queued_samples(ptr noundef) local_unnamed_addr #4

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #4

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #4

declare void @av_frame_free(ptr noundef) local_unnamed_addr #4

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !15, i64 32}
!22 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!18, !15, i64 56}
!25 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"double", !5, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = !{!"p1 double", !9, i64 0}
!30 = !{!"CrossfeedContext", !10, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !6, i64 48, !6, i64 52, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !28, i64 120, !6, i64 128, !29, i64 136, !5, i64 144}
!31 = !{!30, !6, i64 48}
!32 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!33 = !{!"AVRational", !6, i64 0, !6, i64 4}
!34 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!35 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!36 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!37 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!38 = !{!"AVFilterFormatsConfig", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!39 = !{!"AVFilterLink", !32, i64 0, !13, i64 8, !32, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !33, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !34, i64 72, !33, i64 96, !35, i64 104, !6, i64 112, !6, i64 116, !38, i64 120, !38, i64 168}
!40 = !{!39, !32, i64 16}
!41 = !{!27, !27, i64 0}
!42 = !{!30, !27, i64 96}
!43 = !{!30, !29, i64 136}
!44 = !{!29, !29, i64 0}
!45 = distinct !{!45, !20}
!46 = !{!6, !6, i64 0}
!47 = !{!28, !28, i64 0}
!48 = !{!30, !27, i64 16}
!49 = !{!30, !27, i64 8}
!50 = !{!39, !6, i64 64}
!51 = !{!30, !27, i64 24}
!52 = !{!30, !27, i64 56}
!53 = !{!30, !6, i64 52}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, i1 false, !"LVerDomain"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !20, !112, !113}
!59 = distinct !{!59, !114}
!60 = distinct !{!60, i1 false, !"LVerDomain"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !20, !112, !113}
!65 = distinct !{!65, !20, !112}
!66 = distinct !{!66, !20, !112}
!67 = distinct !{!67, i1 false, !"LVerDomain"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !20, !112, !113}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !20, !112, !113}
!77 = distinct !{!77, !114}
!78 = distinct !{!78, !20, !112}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !20, !112, !113}
!83 = distinct !{!83, !114}
!84 = distinct !{!84, !20, !112}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !20, !112, !113}
!89 = distinct !{!89, !114}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !20, !112, !113}
!95 = distinct !{!95, !20, !112}
!96 = distinct !{!96, !20, !112}
!97 = distinct !{!97, !20, !112}
!98 = !{!12, !12, i64 0}
!99 = !{!30, !27, i64 32}
!100 = !{!30, !27, i64 40}
!101 = !{!30, !27, i64 64}
!102 = !{!30, !27, i64 72}
!103 = !{!"p2 omnipotent char", !14, i64 0}
!104 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!105 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!106 = !{!"AVFrame", !5, i64 0, !5, i64 64, !103, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !33, i64 124, !28, i64 136, !28, i64 144, !33, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !104, i64 248, !6, i64 256, !35, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !28, i64 304, !105, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !28, i64 344, !28, i64 352, !28, i64 360, !28, i64 368, !9, i64 376, !34, i64 384, !28, i64 408, !6, i64 416}
!107 = !{!106, !6, i64 112}
!108 = !{!30, !28, i64 120}
!109 = !{!18, !6, i64 104}
!110 = !{!56}
!111 = !{!57}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !{!61}
!116 = !{!62}
!117 = !{!63}
!118 = !{!61, !62}
!119 = !{!68}
!120 = !{!69}
!121 = !{!70, !68}
!122 = !{!70}
!123 = !{!74}
!124 = !{!75}
!125 = !{!80}
!126 = !{!81}
!127 = !{!86}
!128 = !{!87}
!129 = !{!91}
!130 = !{!92}
!131 = !{!93}
!132 = !{!91, !92}
!133 = !{!106, !28, i64 136}
!134 = !{!30, !6, i64 128}
end_hunk_1
