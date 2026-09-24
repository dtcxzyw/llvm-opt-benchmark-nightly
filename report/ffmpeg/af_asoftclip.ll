Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_asoftclip?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.ThreadData = type { ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"asoftclip\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Audio Soft Clipper.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@.compoundliteral = internal constant [3 x i32] [i32 8, i32 9, i32 -1], align 4
@ff_af_asoftclip = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_audio_default_filterpad, ptr @asoftclip_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 4, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @.compoundliteral }, i32 4680, i32 0, ptr @ff_filter_process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"libavfilter/af_asoftclip.c\00", align 1
@asoftclip_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @asoftclip_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"set softclip type\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"cubic\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"alg\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"quintic\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"erf\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"set softclip threshold\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"set softclip output gain\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"set softclip parameter\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"oversample\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"set oversample factor\00", align 1
@asoftclip_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 8, i32 2, %union.anon.2 zeroinitializer, double -1.000000e+00, double 7.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr null, i32 0, i32 11, %union.anon.2 { i64 -1 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr null, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr null, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr null, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr null, i32 0, i32 11, %union.anon.2 { i64 5 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr null, i32 0, i32 11, %union.anon.2 { i64 6 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr null, i32 0, i32 11, %union.anon.2 { i64 7 }, double 0.000000e+00, double 0.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr @.str.9 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 24, i32 4, { double } { double 1.000000e+00 }, double f0x3EB0C6F7A0B5ED8D, double 1.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 32, i32 4, { double } { double 1.000000e+00 }, double f0x3EB0C6F7A0B5ED8D, double 1.600000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 40, i32 4, { double } { double 1.000000e+00 }, double 1.000000e-02, double 3.000000e+00, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 12, i32 2, %union.anon.2 { i64 1 }, double 1.000000e+00, double 6.400000e+01, i32 98312, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4656
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4664
  tail call void @av_frame_free(ptr noundef nonnull %i.d) #11
  ret void
}

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.ThreadData, align 8         ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.i = tail call i32 @av_frame_is_writable(ptr noundef %1) #11
  %.not = icmp ne i32 %i.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !34 ; 2 uses
  %i.j = icmp eq i32 %.pre, 1
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.l = load i32, ptr %i.k, align 8, !tbaa !71
  %i.m = mul nsw i32 %.pre, %i.l
  %i.n = tail call ptr @ff_get_audio_buffer(ptr noundef %i.h, i32 noundef %i.m) #11 ; 3 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge
  %i.o = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.n, ptr noundef nonnull %1) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ %1, %bb.a ]    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = load i32, ptr %i.p, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.s = load i32, ptr %i.r, align 4, !tbaa !72   ; 2 uses
  store ptr %1, ptr %2, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.q, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.s, ptr %i.v, align 4, !tbaa !43
  %i.w = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #12
  %. = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.w)
  %i.x = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_channels, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #11 ; 0 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not26 = icmp eq ptr %.0, %i.y
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !71
  %i.ad = sdiv i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !71
  %i.ae = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.0) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.021 = phi i32 [ %i.ae, %bb.f ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74
  switch i32 %i.f, label %bb.c [
    i32 8, label %bb.d
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 384) #11
  tail call void @abort() #13
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %filter_dbl.sink = phi ptr [ @filter_dbl, %bb.b ], [ @filter_flt, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4672
  store ptr %filter_dbl.sink, ptr %i.g, align 8, !tbaa !44
  %i.h = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef 128) #11
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4656 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  %i.j = tail call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef 128) #11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4664
  store ptr %i.j, ptr %i.k, align 8, !tbaa !21
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !21
  %.not = icmp eq ptr %i.l, null
  %.not19 = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not, i1 true, i1 %.not19
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %i.p = sdiv i32 %i.o, 2
  %i.q = sitofp nsz i32 %i.p to double
  %i.r = fmul nnan nsz double %i.q, f0x401921FB54442D18
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <2 x double> poison, double %i.r, i64 0
  %broadcast.splat23 = shufflevector <2 x double> %broadcast.splatinsert22, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader
  %index = phi i64 [ 0, %.preheader ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %.preheader ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %index ; 12 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %index ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = mul <2 x i32> %broadcast.splat, %vec.ind
  %i.w = sitofp nsz <2 x i32> %i.v to <2 x double>
  %i.x = fdiv nsz <2 x double> %broadcast.splat23, %i.w
  %i.y = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.x) ; 2 uses
  %i.z = extractvalue { <2 x double>, <2 x double> } %i.y, 0
  %i.aa = extractvalue { <2 x double>, <2 x double> } %i.y, 1 ; 2 uses
  %i.ab = fdiv nsz <2 x double> %i.z, splat (double 1.600000e+00) ; 2 uses
  %i.ac = fadd nsz <2 x double> %i.ab, splat (double 1.000000e+00) ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ae = fmul nsz <2 x double> %i.aa, splat (double -2.000000e+00)
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ah = fsub nsz <2 x double> splat (double 1.000000e+00), %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.aj = fsub nsz <2 x double> splat (double 1.000000e+00), %i.aa ; 2 uses
  %i.ak = fmul nsz <2 x double> %i.aj, splat (double 5.000000e-01)
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.aq = fdiv nsz <2 x double> %i.ae, %i.ac      ; 5 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  store double %i.ar, ptr %i.af, align 8, !tbaa !47
  %i.as = fdiv nsz <2 x double> %i.ah, %i.ac      ; 5 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  store double %i.at, ptr %i.ai, align 8, !tbaa !48
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.au, ptr %i.ag, align 8, !tbaa !49
  %i.av = fdiv nsz <2 x double> %i.ak, %i.ac      ; 3 uses
  %i.aw = fdiv nsz <2 x double> %i.aj, %i.ac      ; 2 uses
  %i.ax = fdiv nsz <2 x double> %i.ac, %i.ac      ; 4 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  store double %i.ay, ptr %i.ad, align 8, !tbaa !76
  %i.az = fadd nsz <2 x double> %i.ax, %i.aq
  %i.ba = fadd nsz <2 x double> %i.as, %i.az
  %i.bb = fadd nsz <2 x double> %i.av, %i.aw
  %i.bc = fadd nsz <2 x double> %i.av, %i.bb
  %i.bd = fdiv nsz <2 x double> %i.ba, %i.bc      ; 2 uses
  %i.be = fmul nsz <2 x double> %i.av, %i.bd      ; 4 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  store double %i.bf, ptr %i.al, align 8, !tbaa !77
  %i.bg = fmul nsz <2 x double> %i.aw, %i.bd      ; 3 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  store double %i.bh, ptr %i.an, align 8, !tbaa !78
  %i.bi = shufflevector <2 x double> %i.be, <2 x double> %i.bg, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bi, ptr %i.am, align 8, !tbaa !49
  store double %i.bf, ptr %i.ao, align 8, !tbaa !50
  %i.bj = shufflevector <2 x double> %i.be, <2 x double> %i.ax, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bj, ptr %i.ap, align 8, !tbaa !49
  %i.bk = fptrunc nsz <2 x double> %i.ax to <2 x float> ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.bm = extractelement <2 x float> %i.bk, i64 0
  store float %i.bm, ptr %i.bl, align 4, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.bp = extractelement <2 x double> %i.aq, i64 0
  %i.bq = fptrunc double %i.bp to float
  store float %i.bq, ptr %i.bn, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.bs = extractelement <2 x double> %i.as, i64 0
  %i.bt = fptrunc double %i.bs to float
  store float %i.bt, ptr %i.br, align 4, !tbaa !52
  %i.bu = shufflevector <2 x double> %i.aq, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  %i.bv = fptrunc nsz <2 x double> %i.bu to <2 x float>
  store <2 x float> %i.bv, ptr %i.bo, align 8, !tbaa !53
  %i.bw = fptrunc nsz <2 x double> %i.be to <2 x float> ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  store float %i.bx, ptr %i.s, align 8, !tbaa !54
  %i.by = fptrunc nsz <2 x double> %i.bg to <2 x float> ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ca = extractelement <2 x float> %i.by, i64 0
  store float %i.ca, ptr %i.bz, align 4, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store float %i.bx, ptr %i.cb, align 8, !tbaa !56
  %i.cc = shufflevector <2 x float> %i.bw, <2 x float> %i.by, <4 x i32> <i32 1, i32 3, i32 1, i32 poison>
  %i.cd = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.ce, ptr %i.u, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.cf = icmp eq i64 %index.next, 64
  br i1 %i.cf, label %.loopexit, label %vector.body, !llvm.loop !73

.loopexit:                                        ; preds = %vector.body, %bb.d
  %.018 = phi i32 [ -12, %bb.d ], [ 0, %vector.body ]
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #1

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @av_frame_free(ptr noundef) local_unnamed_addr #1

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channels(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.e = load ptr, ptr %1, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !42
  %i.j = sext i32 %i.g to i64                     ; 2 uses
  %i.k = sext i32 %2 to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sdiv i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = add nsw i32 %2, 1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.j, %i.q
  %i.s = sdiv i64 %i.r, %i.m
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4672
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  tail call void %i.v(ptr noundef %i.b, ptr noundef %i.x, ptr noundef %i.z, i32 noundef %i.i, i32 noundef %i.g, i32 noundef %i.o, i32 noundef %i.t) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal void @filter_flt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %.fr269 = freeze i32 %i.b                       ; 6 uses
  %i.c = icmp sgt i32 %.fr269, 1                  ; 4 uses
  %i.d = uitofp nneg i32 %.fr269 to float
  %i.e = fmul nnan nsz float %i.d, 5.000000e-01
  %i.f = select nsz i1 %i.c, float %i.e, float 1.000000e+00 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !61
  %i.i = fptrunc nsz double %i.h to float         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load double, ptr %i.j, align 8, !tbaa !62
  %i.l = fpext nsz float %i.i to double
  %i.m = fmul nsz double %i.k, %i.l
  %i.n = fptrunc nsz double %i.m to float         ; 17 uses
  %i.o = fdiv nsz float 1.000000e+00, %i.i        ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !63
  %i.r = fptrunc nsz double %i.q to float         ; 6 uses
  %i.s = icmp slt i32 %5, %6
  br i1 %i.s, label %.lr.ph267, label %._crit_edge268

.lr.ph267:                                        ; preds = %bb.a
  %i.t = mul i32 %.fr269, %3                      ; 20 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4656
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = add i32 %.fr269, -1                      ; 2 uses
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp sgt i32 %3, 0                      ; 2 uses
  %i.ac = icmp sgt i32 %i.t, 0                    ; 10 uses
  %i.ad = and i1 %i.c, %i.ac                      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = zext i32 %i.y to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.ae, i64 %i.af ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4664
  %i.ao = shl nuw nsw i64 %i.af, 2                ; 3 uses
  %i.ap = sext i32 %.fr269 to i64                 ; 9 uses
  %i.aq = sext i32 %5 to i64
  %wide.trip.count = zext i32 %3 to i64           ; 6 uses
  %wide.trip.count283 = zext i32 %i.t to i64      ; 17 uses
  %wide.trip.count288 = zext nneg i32 %i.t to i64
  %wide.trip.count293 = zext nneg i32 %i.t to i64
  %wide.trip.count298 = zext nneg i32 %i.t to i64
  %wide.trip.count303 = zext nneg i32 %i.t to i64
  %wide.trip.count308 = zext nneg i32 %i.t to i64
  %wide.trip.count313 = zext nneg i32 %i.t to i64
  %wide.trip.count318 = zext nneg i32 %i.t to i64
  %wide.trip.count323 = zext nneg i32 %i.t to i64
  %wide.trip.count328 = zext nneg i32 %i.t to i64
  %wide.trip.count333 = zext nneg i32 %i.t to i64
  %wide.trip.count338 = zext nneg i32 %3 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ar = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod511 = trunc i32 %3 to i1
  %min.iters.check479 = icmp ult i32 %i.t, 4
  %n.vec481 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert482 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat483 = shufflevector <4 x float> %broadcast.splatinsert482, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert484 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat485 = shufflevector <4 x float> %broadcast.splatinsert484, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n492 = icmp eq i64 %n.vec481, %wide.trip.count283
  %min.iters.check463 = icmp ult i32 %i.t, 4
  %n.vec465 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert466 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat467 = shufflevector <4 x float> %broadcast.splatinsert466, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert468 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat469 = shufflevector <4 x float> %broadcast.splatinsert468, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n476 = icmp eq i64 %n.vec465, %wide.trip.count283
  %min.iters.check446 = icmp ult i32 %i.t, 4
  %n.vec448 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert449 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat450 = shufflevector <4 x float> %broadcast.splatinsert449, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert451 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat452 = shufflevector <4 x float> %broadcast.splatinsert451, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert453 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat454 = shufflevector <4 x float> %broadcast.splatinsert453, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n460 = icmp eq i64 %n.vec448, %wide.trip.count283
  %min.iters.check431 = icmp ult i32 %i.t, 4
  %n.vec433 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert434 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat435 = shufflevector <4 x float> %broadcast.splatinsert434, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert436 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat437 = shufflevector <4 x float> %broadcast.splatinsert436, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n443 = icmp eq i64 %n.vec433, %wide.trip.count283
  %min.iters.check416 = icmp ult i32 %i.t, 4
  %n.vec418 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert419 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat420 = shufflevector <4 x float> %broadcast.splatinsert419, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert421 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat422 = shufflevector <4 x float> %broadcast.splatinsert421, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n428 = icmp eq i64 %n.vec418, %wide.trip.count283
  %min.iters.check399 = icmp ult i32 %i.t, 4
  %n.vec401 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert402 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat403 = shufflevector <4 x float> %broadcast.splatinsert402, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert404 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat405 = shufflevector <4 x float> %broadcast.splatinsert404, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert406 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat407 = shufflevector <4 x float> %broadcast.splatinsert406, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n413 = icmp eq i64 %n.vec401, %wide.trip.count283
  %min.iters.check382 = icmp ult i32 %i.t, 4
  %n.vec384 = and i64 %wide.trip.count283, 2147483644 ; 3 uses
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert387 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat388 = shufflevector <4 x float> %broadcast.splatinsert387, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat390 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n396 = icmp eq i64 %n.vec384, %wide.trip.count283
  %min.iters.check366 = icmp ult i32 %i.t, 8
  %n.vec368 = and i64 %wide.trip.count283, 2147483640 ; 3 uses
  %broadcast.splatinsert369 = insertelement <4 x float> poison, float %i.o, i64 0
  %broadcast.splat370 = shufflevector <4 x float> %broadcast.splatinsert369, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert371 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat372 = shufflevector <4 x float> %broadcast.splatinsert371, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n379 = icmp eq i64 %n.vec368, %wide.trip.count283
  %min.iters.check = icmp ugt i32 %3, 7
  %ident.check.not = icmp eq i32 %.fr269, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter512 = and i64 %wide.trip.count, 3      ; 2 uses
end_hunk_0
