begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.AVChannelLayout = type { i32, i32, %union.anon.1, ptr }
%union.anon.1 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"haas\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Apply Haas Stereo Enhancer.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_haas = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_audio_default_filterpad, ptr @haas_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr null, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 184, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@haas_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @haas_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"level_in\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"set level in\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"level_out\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"set level out\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"side_gain\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"set side gain\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"middle_source\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"set middle source\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"mid\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"L+R\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"side\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"L-R\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"middle_phase\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"set middle phase\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"left_delay\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"set left delay\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"left_balance\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"set left balance\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"left_gain\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"set left gain\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"left_phase\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"set left phase\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"right_delay\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"set right delay\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"right_balance\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"set right balance\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"right_gain\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"set right gain\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"right_phase\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"set right phase\00", align 1
@haas_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 88, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 96, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 48, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 8, i32 2, %union.anon.2 { i64 2 }, double 0.000000e+00, double 3.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr null, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr @.str.12 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 40, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 16, i32 4, { double } { double 2.050000e+00 }, double 0.000000e+00, double 4.000000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 72, i32 4, { double } { double -1.000000e+00 }, double -1.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 56, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.28, i32 32, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.29, ptr @.str.30, i32 24, i32 4, { double } { double 2.120000e+00 }, double 0.000000e+00, double 4.000000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 80, i32 4, { double } { double 1.000000e+00 }, double -1.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.34, i32 64, i32 4, { double } { double 1.000000e+00 }, double 1.562500e-02, double 6.400000e+01, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr @.str.36, i32 36, i32 18, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@query_formats.formats = internal constant [2 x i32] [i32 4, i32 -1], align 4
@query_formats.layouts = internal constant [2 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 2, %union.anon.1 { i64 3 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.c) #4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 0, ptr %i.d, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.formats) #4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.layouts) #4
  %. = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9    ; 13 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.k = load double, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = load double, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = trunc i64 %i.o to i32
  %i.q = add i32 %i.p, -1                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 3 uses
  %i.t = tail call i32 @av_frame_is_writable(ptr noundef nonnull %1) #4
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !43
  %i.w = tail call ptr @ff_get_audio_buffer(ptr noundef %i.f, i32 noundef %i.v) #4 ; 3 uses
  %.not69 = icmp eq ptr %i.w, null
  br i1 %.not69, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #4
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.x = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.w, ptr noundef nonnull %1) #4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.064 = phi ptr [ %i.w, %bb.d ], [ %1, %bb.a ]  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load i32, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.e
  %i.ab = load ptr, ptr %.064, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.af = load i64, ptr %i.n, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.ah = trunc i64 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !49
  %.not71 = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %.promoted = load i32, ptr %i.ae, align 8, !tbaa !50
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.ar = insertelement <2 x double> poison, double %i.m, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %i.at = phi i32 [ %.promoted, %.lr.ph ], [ %i.cq, %bb.k ] ; 3 uses
  %.06375 = phi ptr [ %i.i, %.lr.ph ], [ %i.cs, %bb.k ] ; 7 uses
  %.06574 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ct, %bb.k ] ; 2 uses
  %.06673 = phi i32 [ 0, %.lr.ph ], [ %i.cr, %bb.k ]
  %.06772 = phi double [ undef, %.lr.ph ], [ %.2, %bb.k ]
  switch i32 %i.ad, label %bb.k [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load double, ptr %.06375, align 8, !tbaa !52
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.06375, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !52
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ax = load double, ptr %.06375, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %.06375, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !52
  %i.ba = fadd nsz double %i.ax, %i.az
  %i.bb = fmul nsz double %i.ba, 5.000000e-01
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bc = load double, ptr %.06375, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %.06375, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !52
  %i.bf = fsub nsz double %i.bc, %i.be
  %i.bg = fmul nsz double %i.bf, 5.000000e-01
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1.a = phi nsz double [ %.06772, %bb.f ], [ %i.au, %bb.g ], [ %i.aw, %bb.h ], [ %i.bb, %bb.i ], [ %i.bg, %bb.j ]
  %i.bh = fmul nsz double %i.k, %.1.a             ; 3 uses
  %i.bi = zext i32 %i.at to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bi
  store double %i.bh, ptr %i.bj, align 8, !tbaa !52
  %i.bk = add i32 %i.at, %i.ah                    ; 2 uses
  %i.bl = sub i32 %i.bk, %i.ap
  %i.bm = and i32 %i.bl, %i.q
  %i.bn = sub i32 %i.bk, %i.aq
  %i.bo = and i32 %i.bn, %i.q
  %i.bp = fneg nsz double %i.bh
  %.2 = select nsz i1 %.not71, double %i.bh, double %i.bp ; 2 uses
  %i.bq = zext i32 %i.bm to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !52
  %i.bt = load double, ptr %i.al, align 8, !tbaa !53
  %i.bu = zext i32 %i.bo to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !52
  %i.bx = load double, ptr %i.am, align 8, !tbaa !52
  %i.by = load double, ptr %i.ao, align 8, !tbaa !52
  %i.bz = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bw, i64 1
  %i.cd = fmul nsz <2 x double> %i.ca, %i.cc      ; 2 uses
  %i.ce = load <2 x double>, ptr %i.an, align 8, !tbaa !52
  %i.cf = fneg nsz <2 x double> %i.ce
  %i.cg = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = fmul nsz <2 x double> %i.cg, %i.cf
  %i.ci = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.by, i64 1
  %i.ck = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cj, <2 x double> %i.ch)
  %i.cl = insertelement <2 x double> poison, double %.2, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fadd nsz <2 x double> %i.cm, %i.ck
  %i.co = fmul nsz <2 x double> %i.as, %i.cn
  store <2 x double> %i.co, ptr %.06574, align 8, !tbaa !52
  %i.cp = add i32 %i.at, 1
  %i.cq = and i32 %i.cp, %i.q                     ; 2 uses
  %i.cr = add nuw nsw i32 %.06673, 1              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.06375, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.06574, i64 16
  %exitcond.not = icmp eq i32 %i.cr, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.k
  store i32 %i.cq, ptr %i.ae, align 8, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.e
  %.not70 = icmp eq ptr %.064, %1
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @av_frame_free(ptr noundef nonnull %i.a) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cu = call i32 @ff_filter_frame(ptr noundef %i.f, ptr noundef nonnull %.064) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.0 = phi i32 [ %i.cu, %bb.n ], [ -12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = mul nsw i32 %i.f, 40
  %i.h = sitofp nsz i32 %i.g to double
  %i.i = fmul nnan nsz double %i.h, 1.000000e-03
  %i.j = fptoui double %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.a ], [ %i.l, %bb.b ]     ; 4 uses
  %i.k = icmp ult i64 %.0, %i.j
  %i.l = shl i64 %.0, 1
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !57

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.m) #4
  %i.n = tail call noalias ptr @av_calloc(i64 noundef %.0, i64 noundef 8) #4 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !42
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %.0, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load i32, ptr %i.e, align 8, !tbaa !56
  %i.s = sitofp nsz i32 %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.u = load <2 x double>, ptr %i.q, align 8, !tbaa !52
  %i.v = fmul nsz <2 x double> %i.u, splat (double 1.000000e-03) ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = fmul nsz double %i.w, %i.s
  %i.y = fptoui double %i.x to i32
  store i32 %i.y, ptr %i.t, align 4, !tbaa !51
  %i.z = load i32, ptr %i.e, align 8, !tbaa !56
  %i.aa = sitofp nsz i32 %i.z to double
  %i.ab = extractelement <2 x double> %i.v, i64 1
  %i.ac = fmul nsz double %i.ab, %i.aa
  %i.ad = fptoui double %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.al = load <2 x i32>, ptr %i.af, align 8, !tbaa !51
  %i.am = icmp eq <2 x i32> %i.al, zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> splat (double -1.000000e+00), <2 x double> splat (double 1.000000e+00) ; 3 uses
  store <2 x double> %i.an, ptr %i.ag, align 8, !tbaa !52
  %i.ao = load <2 x double>, ptr %i.ah, align 8, !tbaa !52
  %i.ap = fadd nsz <2 x double> %i.ao, splat (double 1.000000e+00)
  %i.aq = fmul nsz <2 x double> %i.ap, splat (double 5.000000e-01) ; 2 uses
  %i.ar = load <2 x double>, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.as = fmul nsz <2 x double> %i.ar, %i.aq
  %i.at = fmul nsz <2 x double> %i.an, %i.as
  store <2 x double> %i.at, ptr %i.aj, align 8, !tbaa !52
  %i.au = fsub nsz <2 x double> splat (double 1.000000e+00), %i.aq
  %i.av = fmul nsz <2 x double> %i.ar, %i.au
  %i.aw = fmul nsz <2 x double> %i.an, %i.av
  store <2 x double> %i.aw, ptr %i.ak, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.039 = phi i32 [ 0, %bb.d ], [ -12, %bb.c ]
  ret i32 %.039
}

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!21, !24, i64 112}
!21 = !{!"HaasContext", !11, i64 0, !6, i64 8, !22, i64 16, !22, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !23, i64 104, !24, i64 112, !6, i64 120, !7, i64 124, !7, i64 136, !7, i64 152, !22, i64 168, !22, i64 176}
!22 = !{!"double", !7, i64 0}
!23 = !{!"p1 double", !12, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!27 = !{!28, !29, i64 16}
!28 = !{!"AVFilterLink", !29, i64 0, !15, i64 8, !29, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!29 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!33 = !{!"AVFilterFormatsConfig", !34, i64 0, !34, i64 8, !35, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!34 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!35 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!36 = !{!10, !16, i64 56}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!39 = !{!14, !14, i64 0}
!40 = !{!21, !22, i64 88}
!41 = !{!21, !22, i64 96}
!42 = !{!21, !23, i64 104}
!43 = !{!44, !6, i64 112}
!44 = !{!"AVFrame", !7, i64 0, !7, i64 64, !45, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !30, i64 124, !24, i64 136, !24, i64 144, !30, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !46, i64 248, !6, i64 256, !32, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !24, i64 304, !47, i64 312, !6, i64 320, !19, i64 328, !19, i64 336, !24, i64 344, !24, i64 352, !24, i64 360, !24, i64 368, !12, i64 376, !31, i64 384, !24, i64 408, !6, i64 416}
!45 = !{!"p2 omnipotent char", !17, i64 0}
!46 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!47 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!48 = !{!21, !6, i64 8}
!49 = !{!21, !6, i64 40}
!50 = !{!21, !6, i64 120}
!51 = !{!6, !6, i64 0}
!52 = !{!22, !22, i64 0}
!53 = !{!21, !22, i64 48}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!28, !6, i64 64}
!57 = distinct !{!57, !55}
end_hunk_0
