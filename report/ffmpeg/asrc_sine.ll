Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/asrc_sine?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }
%struct.AVChannelLayout = type { i32, i32, %union.anon.1, ptr }
%union.anon.1 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"sine\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Generate sine wave audio signal.\00", align 1
@sine_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_props }], align 16
@ff_asrc_sine = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr null, ptr @sine_outputs, ptr @sine_class, i32 0, [4 x i8] zeroinitializer }, i8 0, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 128, i32 0, ptr null, ptr @activate }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@sine_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @sine_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"set the sine frequency\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"beep_factor\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"set the beep frequency factor\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sample_rate\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"set the sample rate\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"set the audio duration\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"samples_per_frame\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"set the number of samples per frame\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@sine_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 4, { double } { double 4.400000e+02 }, double 0.000000e+00, double f0x7FEFFFFFFFFFFFFF, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.5, i32 8, i32 4, { double } { double 4.400000e+02 }, double 0.000000e+00, double f0x7FEFFFFFFFFFFFFF, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 16, i32 4, { double } zeroinitializer, double 0.000000e+00, double f0x7FEFFFFFFFFFFFFF, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.8, i32 16, i32 4, { double } zeroinitializer, double 0.000000e+00, double f0x7FEFFFFFFFFFFFFF, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 40, i32 2, %union.anon.2 { i64 44100 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.11, i32 40, i32 2, %union.anon.2 { i64 44100 }, double 1.000000e+00, double f0x41DFFFFFFFC00000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 48, i32 16, { ptr } zeroinitializer, double 0.000000e+00, double f0x43E0000000000000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.14, i32 48, i32 16, { ptr } zeroinitializer, double 0.000000e+00, double f0x43E0000000000000, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.16, ptr @.str.17, i32 24, i32 6, { ptr } { ptr @.str.18 }, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@var_names = internal constant [5 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@query_formats.chlayouts = internal constant [2 x %struct.AVChannelLayout] [%struct.AVChannelLayout { i32 1, i32 1, %union.anon.1 { i64 4 }, ptr null }, %struct.AVChannelLayout zeroinitializer], align 16
@query_formats.sample_fmts = internal constant [2 x i32] [i32 1, i32 -1], align 4
@.str.24 = private unnamed_addr constant [59 x i8] c"nb samples expression evaluated to %d, defaulting to 1024\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 11 uses
  %i.c = tail call noalias ptr @av_malloc(i64 noundef 65536) #9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !26
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !27
  tail call fastcc void @sampling_init(ptr noundef nonnull %i.e, double noundef %i.g, i32 noundef %i.i)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !26   ; 12 uses
  store i16 0, ptr %i.j, align 2, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16384
  store i16 32760, ptr %i.k, align 2, !tbaa !29
  br label %.preheader75.i

.preheader75.i:                                   ; preds = %bb.f, %bb.b
  %.07178.i = phi i32 [ 8192, %bb.b ], [ %i.l, %bb.f ] ; 4 uses
  %i.l = lshr i32 %.07178.i, 1                    ; 3 uses
  %i.m = zext nneg i32 %.07178.i to i64
  %i.n = zext nneg i32 %i.l to i64
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader75.i
  %indvars.iv.i = phi i64 [ 0, %.preheader75.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %.077.i = phi i32 [ 65536, %.preheader75.i ], [ %.1.i, %bb.e ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2, !tbaa !29
  %i.q = sext i16 %i.p to i32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.m ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29
  %i.t = sext i16 %i.s to i32
  %i.u = add nsw i32 %i.t, %i.q                   ; 3 uses
  %i.v = sub nuw nsw i64 8192, %indvars.iv.i      ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !29
  %i.y = sext i16 %i.x to i32
  %i.z = trunc nuw nsw i64 %i.v to i32            ; 2 uses
  %i.aa = sub nsw i32 %i.z, %.07178.i
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !29
  %i.ae = sext i16 %i.ad to i32
  %i.af = add nsw i32 %i.ae, %i.y                 ; 3 uses
  %i.ag = mul i32 %i.u, %i.u
  %i.ah = mul i32 %i.af, %i.af
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = zext i32 %i.ai to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %.077.i, %bb.c ], [ %i.aq, %bb.d ] ; 5 uses
  %i.ak = zext i32 %.1.i to i64                   ; 2 uses
  %i.al = mul nuw i64 %i.ak, %i.aj
  %i.am = udiv i64 4609434493491609600, %i.al
  %i.an = add nuw nsw i64 %i.ak, 1
  %i.ao = add nuw nsw i64 %i.an, %i.am
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = icmp eq i32 %.1.i, %i.aq
  br i1 %i.ar, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.as = mul i32 %.1.i, %i.u
  %i.at = add i32 %i.as, 32767
  %i.au = lshr i32 %i.at, 16
  %i.av = trunc nuw i32 %i.au to i16
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i16 %i.av, ptr %gep.i, align 2, !tbaa !29
  %i.aw = mul i32 %.1.i, %i.af
  %i.ax = add i32 %i.aw, 32768
  %i.ay = lshr i32 %i.ax, 16
  %i.az = trunc nuw i32 %i.ay to i16
  %i.ba = sub nsw i32 %i.z, %i.l
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bb
  store i16 %i.az, ptr %i.bc, align 2, !tbaa !29
  %i.bd = icmp samesign ult i64 %indvars.iv.next.i, 4096
  br i1 %i.bd, label %bb.c, label %bb.f, !llvm.loop !47

bb.f:                                             ; preds = %bb.e
  %i.be = icmp samesign ugt i32 %.07178.i, 3
  br i1 %i.be, label %.preheader75.i, label %.preheader74.i, !llvm.loop !48

.preheader74.i:                                   ; preds = %bb.f, %.preheader74.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %.preheader74.i ], [ 0, %bb.f ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv83.i ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !29
  %i.bh = sext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, 4
  %i.bj = lshr i32 %i.bi, 3
  %i.bk = trunc i32 %i.bj to i16
  store i16 %i.bk, ptr %i.bf, align 2, !tbaa !29
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next84.i, 8193
  br i1 %exitcond.not.i, label %.preheader73.i, label %.preheader74.i, !llvm.loop !49

.preheader73.i:                                   ; preds = %.preheader74.i, %.preheader73.i
  %indvars.iv86.i = phi i64 [ %indvars.iv.next87.i, %.preheader73.i ], [ 0, %.preheader74.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv86.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29
  %i.bn = sub nuw nsw i64 16384, %indvars.iv86.i
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bn
  store i16 %i.bm, ptr %i.bo, align 2, !tbaa !29
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next87.i, 8192
  br i1 %exitcond89.not.i, label %vector.body, label %.preheader73.i, !llvm.loop !50

vector.body:                                      ; preds = %.preheader73.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader73.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bp, align 2, !tbaa !29
  %i.bq = sub <8 x i16> zeroinitializer, %wide.load
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32768
  store <8 x i16> %i.bq, ptr %i.br, align 2, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, 16384
  br i1 %i.bs, label %make_sin_table.exit, label %vector.body, !llvm.loop !51

make_sin_table.exit:                              ; preds = %vector.body
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !55 ; 2 uses
  %i.bv = fcmp nsz une double %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %make_sin_table.exit
  %i.bw = load i32, ptr %i.h, align 8, !tbaa !27  ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !31
  %i.by = udiv i32 %i.bw, 25
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.cb = load double, ptr %i.f, align 8, !tbaa !52
  %i.cc = fmul nsz double %i.bu, %i.cb
  tail call fastcc void @sampling_init(ptr noundef nonnull %i.ca, double noundef %i.cc, i32 noundef %i.bw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %make_sin_table.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !56
  %i.cg = tail call i32 @av_expr_parse(ptr noundef nonnull %i.cd, ptr noundef %i.cf, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.b) #9
  %. = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %.0 = phi i32 [ %., %bb.h ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  tail call void @av_expr_free(ptr noundef %i.d) #9
  store ptr null, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  store i32 %i.e, ptr %i.a, align 4, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -1, ptr %i.f, align 4, !tbaa !57
  %i.g = tail call i32 @ff_set_sample_formats_from_list2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.sample_fmts) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @ff_set_common_channel_layouts_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @query_formats.chlayouts) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @ff_set_common_samplerates_from_list2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @activate(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.h = load i64, ptr %i.g, align 8, !tbaa !63
  %i.i = sitofp nsz i64 %i.h to double
  store double %i.i, ptr %i.a, align 16, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65
  %i.m = sitofp nsz i64 %i.l to double            ; 2 uses
  store double %i.m, ptr %i.j, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.p to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.p, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.q = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.r = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.s = fdiv nsz double %i.q, %i.r               ; 2 uses
  %i.t = fmul nsz double %i.s, %i.m
  store double %i.t, ptr %i.n, align 16, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.s, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = call nsz double @av_expr_eval(ptr noundef %i.w, ptr noundef nonnull %i.a, ptr noundef %i.f) #9
  %i.y = call i64 @llvm.lrint.i64.f64(double %i.x)
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = call i32 @ff_outlink_frame_wanted(ptr noundef %i.d) #9
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp slt i32 %i.z, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.24, i32 noundef %i.z) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 1024, %bb.c ], [ %i.z, %bb.b ]  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not60 = icmp eq i64 %i.ad, 0
  br i1 %.not60, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = zext nneg i32 %.0 to i64
  %i.af = load i64, ptr %i.k, align 8, !tbaa !65  ; 2 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.ae)
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ff_avfilter_link_set_in_status(ptr noundef nonnull %i.d, i32 noundef -541478725, i64 noundef %i.af) #9
  br label %bb.n

bb.g:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.ai, %bb.e ], [ %.0, %bb.d ]  ; 4 uses
  %i.aj = call ptr @ff_get_audio_buffer(ptr noundef nonnull %i.d, i32 noundef %.1) #9 ; 4 uses
  %.not62 = icmp eq ptr %i.aj, null
  br i1 %.not62, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = icmp sgt i32 %.1, 0
  br i1 %i.al, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 116 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %.promoted = load i32, ptr %i.ao, align 8, !tbaa !67
  %.promoted68 = load i32, ptr %i.at, align 8, !tbaa !45
  %.promoted70 = load i32, ptr %i.av, align 4, !tbaa !68
  %wide.trip.count = zext nneg i32 %.1 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %sampling_advance.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sampling_advance.exit ] ; 2 uses
  %i.bf = phi i32 [ %.promoted70, %.lr.ph ], [ %spec.store.select, %sampling_advance.exit ] ; 2 uses
  %i.bg = phi i32 [ %.promoted68, %.lr.ph ], [ %i.bt, %sampling_advance.exit ]
  %i.bh = phi i32 [ %.promoted, %.lr.ph ], [ %i.bu, %sampling_advance.exit ] ; 2 uses
  %i.bi = lshr i32 %i.bh, 17
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !29 ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !29
  %i.bn = add i32 %i.aq, %i.bh                    ; 2 uses
  %i.bo = add nsw i32 %i.bg, %i.as                ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.j, label %sampling_advance.exit63

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.au, align 8, !tbaa !46
  %i.br = sub nsw i32 %i.bo, %i.bq
  %i.bs = add i32 %i.bn, 1
  br label %sampling_advance.exit63

sampling_advance.exit63:                          ; preds = %bb.i, %bb.j
  %i.bt = phi i32 [ %i.bo, %bb.i ], [ %i.br, %bb.j ] ; 2 uses
  %i.bu = phi i32 [ %i.bn, %bb.i ], [ %i.bs, %bb.j ] ; 2 uses
  %i.bv = icmp ult i32 %i.bf, %i.ax
  br i1 %i.bv, label %bb.k, label %sampling_advance.exit

bb.k:                                             ; preds = %sampling_advance.exit63
  %i.bw = load i32, ptr %i.ay, align 4, !tbaa !69 ; 2 uses
  %i.bx = lshr i32 %i.bw, 17
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !29
  %i.cb = shl i16 %i.ca, 1
  %i.cc = add i16 %i.cb, %i.bl
  store i16 %i.cc, ptr %i.bm, align 2, !tbaa !29
  %i.cd = load i32, ptr %i.az, align 8, !tbaa !43
  %i.ce = add i32 %i.cd, %i.bw                    ; 2 uses
  store i32 %i.ce, ptr %i.ay, align 4, !tbaa !67
  %i.cf = load i32, ptr %i.ba, align 8, !tbaa !44
  %i.cg = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.ch = add nsw i32 %i.cg, %i.cf                ; 3 uses
  store i32 %i.ch, ptr %i.bb, align 4, !tbaa !45
  %i.ci = icmp sgt i32 %i.ch, -1
  br i1 %i.ci, label %bb.l, label %sampling_advance.exit

bb.l:                                             ; preds = %bb.k
  %i.cj = load i32, ptr %i.bc, align 4, !tbaa !46
  %i.ck = sub nsw i32 %i.ch, %i.cj
  store i32 %i.ck, ptr %i.bb, align 4, !tbaa !45
  %i.cl = add i32 %i.ce, 1
  store i32 %i.cl, ptr %i.ay, align 4, !tbaa !67
  br label %sampling_advance.exit

sampling_advance.exit:                            ; preds = %bb.l, %bb.k, %sampling_advance.exit63
  %i.cm = add i32 %i.bf, 1                        ; 2 uses
  %i.cn = icmp eq i32 %i.cm, %i.be
  %spec.store.select = select i1 %i.cn, i32 0, i32 %i.cm ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !58

._crit_edge:                                      ; preds = %sampling_advance.exit
  store i32 %i.bu, ptr %i.ao, align 8, !tbaa !67
  store i32 %i.bt, ptr %i.at, align 8, !tbaa !45
  store i32 %spec.store.select, ptr %i.av, align 4, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.h
  %i.co = load i64, ptr %i.k, align 8, !tbaa !65  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 136
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !74
  %i.cq = sext i32 %.1 to i64
  %i.cr = add nsw i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.k, align 8, !tbaa !65
  %i.cs = call i32 @ff_filter_frame(ptr noundef nonnull %i.d, ptr noundef nonnull %i.aj) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.a, %bb.m, %bb.f
  %.052 = phi i32 [ %i.cs, %bb.m ], [ -1497649742, %bb.a ], [ 0, %bb.f ], [ -12, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.052
}

; Function Attrs: cold mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_props(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = sext i32 %i.g to i64
  %i.i = tail call i64 @av_rescale(i64 noundef %i.e, i64 noundef %i.h, i64 noundef 1000000) #10
  store i64 %i.i, ptr %i.d, align 8, !tbaa !42
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @av_default_item_name(ptr noundef) #5

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @sampling_init(ptr nofree noundef writeonly captures(none) initializes((4, 20)) %0, double noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = sdiv i32 2147483647, %2                  ; 2 uses
  %i.b = sitofp nsz i32 %2 to double              ; 2 uses
  %i.c = frem nsz double %1, %i.b                 ; 2 uses
  %i.d = frem nsz double %i.c, 1.000000e+00
  %i.e = tail call i64 @av_d2q(double noundef %i.d, i32 noundef %i.a) #10
  %.sroa.3.0.extract.shift = lshr i64 %i.e, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.f = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %.sroa.3.0.extract.trunc)
  %3 = tail call nsz double @ldexp(double noundef %i.c, i32 noundef 32) #10
  %i.g = fdiv nsz double %3, %i.b                 ; 2 uses
  %i.h = fptoui double %i.g to i32                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !43
  %i.j = mul nsw i32 %i.f, %2                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 4, !tbaa !46
  %i.l = uitofp nsz i32 %i.h to double
  %i.m = fsub nsz double %i.g, %i.l
  %i.n = sitofp nsz i32 %i.j to double
  %i.o = fmul nsz double %i.m, %i.n
  %i.p = tail call nsz double @llvm.round.f64(double %i.o)
  %i.q = fptosi double %i.p to i32                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.q, ptr %i.r, align 4, !tbaa !44
  %.not = icmp sgt i32 %i.j, %i.q
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = add i32 %i.h, 1
  store i32 %i.s, ptr %i.i, align 4, !tbaa !43
  store i32 0, ptr %i.r, align 4, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = xor i32 %i.j, -1
  %i.u = sdiv i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.v, align 4, !tbaa !45
  ret void
}

declare i32 @av_expr_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_d2q(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #8

declare void @av_expr_free(ptr noundef) local_unnamed_addr #5

declare void @av_freep(ptr noundef) local_unnamed_addr #5

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ff_set_common_samplerates_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @av_expr_eval(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #8

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

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
!20 = !{!"double", !5, i64 0}
!21 = !{!"p1 _ZTS6AVExpr", !9, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!"p1 short", !9, i64 0}
!24 = !{!"SamplingContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!25 = !{!"SineContext", !10, i64 0, !20, i64 8, !20, i64 16, !12, i64 24, !21, i64 32, !6, i64 40, !22, i64 48, !23, i64 56, !22, i64 64, !24, i64 72, !24, i64 92, !6, i64 112, !6, i64 116, !6, i64 120}
!26 = !{!25, !23, i64 56}
!27 = !{!25, !6, i64 40}
!28 = !{!"short", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!25, !6, i64 112}
!32 = !{!25, !6, i64 120}
!33 = !{!25, !21, i64 32}
!34 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!35 = !{!"AVRational", !6, i64 0, !6, i64 4}
!36 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!37 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!38 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!39 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!40 = !{!"AVFilterFormatsConfig", !38, i64 0, !38, i64 8, !39, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!41 = !{!"AVFilterLink", !34, i64 0, !13, i64 8, !34, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !35, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !36, i64 72, !35, i64 96, !37, i64 104, !6, i64 112, !6, i64 116, !40, i64 120, !40, i64 168}
!42 = !{!25, !22, i64 48}
!43 = !{!24, !6, i64 4}
!44 = !{!24, !6, i64 12}
!45 = !{!24, !6, i64 8}
!46 = !{!24, !6, i64 16}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30, !53, !54}
!52 = !{!25, !20, i64 8}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!25, !20, i64 16}
!56 = !{!25, !12, i64 24}
!57 = !{!6, !6, i64 0}
!58 = distinct !{!58, !30}
!59 = !{!18, !15, i64 56}
!60 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"FilterLink", !41, i64 0, !16, i64 216, !22, i64 224, !22, i64 232, !6, i64 240, !6, i64 244, !22, i64 248, !22, i64 256, !22, i64 264, !22, i64 272, !35, i64 280, !17, i64 288}
!63 = !{!62, !22, i64 248}
!64 = !{!20, !20, i64 0}
!65 = !{!25, !22, i64 64}
!66 = !{!12, !12, i64 0}
!67 = !{!24, !6, i64 0}
!68 = !{!25, !6, i64 116}
!69 = !{!25, !6, i64 92}
!70 = !{!"p2 omnipotent char", !14, i64 0}
!71 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!72 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!73 = !{!"AVFrame", !5, i64 0, !5, i64 64, !70, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !35, i64 124, !22, i64 136, !22, i64 144, !35, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !71, i64 248, !6, i64 256, !37, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !22, i64 304, !72, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !22, i64 344, !22, i64 352, !22, i64 360, !22, i64 368, !9, i64 376, !36, i64 384, !22, i64 408, !6, i64 416}
!74 = !{!73, !22, i64 136}
!75 = !{!41, !34, i64 0}
end_hunk_0
