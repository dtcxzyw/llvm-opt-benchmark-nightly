Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_pseudocolor?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.26 = private unnamed_addr constant [3 x i8] c"c3\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"set component #3 expression\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"set component as base\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"set preset\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"magma\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"inferno\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"plasma\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"viridis\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"cividis\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"range1\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"range2\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"shadows\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"highlights\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"solar\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"nominal\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"preferred\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"spectral\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"cool\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"heat\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"fiery\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"blues\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"helix\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"opacity\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"set pseudocolor opacity\00", align 1
@pseudocolor_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 168, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.22, ptr @.str.23, i32 176, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.24, ptr @.str.25, i32 184, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.26, ptr @.str.27, i32 192, i32 6, { ptr } { ptr @.str.8 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.28, ptr @.str.29, i32 20, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.30, ptr @.str.29, i32 20, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 3.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.31, ptr @.str.32, i32 8, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double 2.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.33, ptr @.str.32, i32 8, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double 2.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.34, ptr null, i32 0, i32 11, %union.anon.2 { i64 -1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.35, ptr null, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.36, ptr null, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.37, ptr null, i32 0, i32 11, %union.anon.2 { i64 2 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.38, ptr null, i32 0, i32 11, %union.anon.2 { i64 3 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.39, ptr null, i32 0, i32 11, %union.anon.2 { i64 4 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.40, ptr null, i32 0, i32 11, %union.anon.2 { i64 5 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr null, i32 0, i32 11, %union.anon.2 { i64 6 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.42, ptr null, i32 0, i32 11, %union.anon.2 { i64 7 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.43, ptr null, i32 0, i32 11, %union.anon.2 { i64 8 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.44, ptr null, i32 0, i32 11, %union.anon.2 { i64 9 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr null, i32 0, i32 11, %union.anon.2 { i64 10 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr null, i32 0, i32 11, %union.anon.2 { i64 11 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.47, ptr null, i32 0, i32 11, %union.anon.2 { i64 12 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr null, i32 0, i32 11, %union.anon.2 { i64 13 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.49, ptr null, i32 0, i32 11, %union.anon.2 { i64 14 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.50, ptr null, i32 0, i32 11, %union.anon.2 { i64 15 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr null, i32 0, i32 11, %union.anon.2 { i64 16 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.52, ptr null, i32 0, i32 11, %union.anon.2 { i64 17 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.53, ptr null, i32 0, i32 11, %union.anon.2 { i64 18 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.54, ptr null, i32 0, i32 11, %union.anon.2 { i64 19 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.55, ptr null, i32 0, i32 11, %union.anon.2 { i64 20 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.31 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.56, ptr @.str.57, i32 12, i32 5, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  tail call void @av_expr_free(ptr noundef %i.e) #9
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !52

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = tail call i32 @ff_filter_process_command(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #9 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call i32 @config_input(ptr noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.ThreadData, align 8         ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = tail call ptr @ff_get_video_buffer(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.l) #9 ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.m, ptr noundef %1) #9 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !38
  store ptr %1, ptr %2, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.c) #10
  %. = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.r)
  %i.s = call i32 @ff_filter_execute(ptr noundef nonnull %i.c, ptr noundef nonnull @filter_slice, ptr noundef nonnull %2, ptr noundef null, i32 noundef %.) #9 ; 0 uses
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  %i.t = call i32 @ff_filter_frame(ptr noundef nonnull %i.h, ptr noundef nonnull %i.m) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.t, %bb.c ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 66 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #9 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 32                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %notmask = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !43
  %i.p = load i32, ptr %i.e, align 4, !tbaa !61
  %i.q = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.p) #9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %.not = icmp slt i32 %i.t, %i.q
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.3) #9
  br label %.critedge293

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.v = load i32, ptr %i.e, align 4, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = tail call i32 @av_image_fill_linesizes(ptr noundef nonnull %i.u, i32 noundef %i.v, i32 noundef %i.x) #9 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.critedge293, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !67
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !68
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = ashr i32 %i.af, %i.ai
  %i.ak = sub nsw i32 0, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.ak, ptr %i.am, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !40
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !40
  %i.ar = load i32, ptr %i.w, align 8, !tbaa !35
  %i.as = sub nsw i32 0, %i.ar
  %i.at = ashr i32 %i.as, %i.ac
  %i.au = sub nsw i32 0, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %i.au, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  store i32 %i.au, ptr %i.ax, align 4, !tbaa !40
  %i.ay = load i32, ptr %i.w, align 8, !tbaa !35  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !40
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.w, align 8, !tbaa !40
  %i.bc = sitofp nsz <2 x i32> %i.bb to <2 x double>
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !70
  %i.bd = add nsw i32 %i.m, -8                    ; 3 uses
  %i.be = shl i32 16, %i.bd
  %i.bf = sitofp nsz i32 %i.be to double          ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store double %i.bf, ptr %i.bg, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store double %i.bf, ptr %i.bh, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store double %i.bf, ptr %i.bi, align 8, !tbaa !70
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !70
  %i.bk = shl i32 235, %i.bd
  %i.bl = sitofp nsz i32 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store double %i.bl, ptr %i.bm, align 8, !tbaa !70
  %i.bn = shl i32 240, %i.bd
  %i.bo = sitofp nsz i32 %i.bn to double          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store double %i.bo, ptr %i.bp, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store double %i.bo, ptr %i.bq, align 8, !tbaa !70
  %i.br = load i32, ptr %i.o, align 8, !tbaa !43
  %i.bs = sitofp nsz i32 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store double %i.bs, ptr %i.bt, align 8, !tbaa !70
  %i.bu = load i32, ptr %i.r, align 8, !tbaa !44
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv336 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next337, %bb.k ] ; 8 uses
  %i.cb = load i32, ptr %i.bw, align 8, !tbaa !71
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv336 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !21
  tail call void @av_expr_free(ptr noundef %i.ce) #9
  store ptr null, ptr %i.cd, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv336
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !46
  %i.ch = tail call i32 @av_expr_parse(ptr noundef nonnull %i.cd, ptr noundef %i.cg, ptr noundef nonnull @var_names, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.b) #9
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw [262144 x i8], ptr %i.ca, i64 %indvars.iv336
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv336
  %i.cl = trunc nuw nsw i64 %indvars.iv336 to i32 ; 2 uses
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %i.cm, i32 noundef %i.cl, i32 noundef %i.cl) #9
  br label %.critedge293

bb.h:                                             ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.co = uitofp nsz nneg i32 %i.cn to double
  store double %i.co, ptr %i.bz, align 8, !tbaa !70
  %i.cp = load ptr, ptr %i.cd, align 8, !tbaa !21
  %i.cq = tail call nsz double @av_expr_eval(ptr noundef %i.cp, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.cr = fcmp uno double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv336
  %i.ct = trunc nuw nsw i64 %indvars.iv336 to i32
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.b, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %i.cu, i32 noundef %i.cn, i32 noundef %i.ct) #9
  br label %.critedge293

bb.j:                                             ; preds = %bb.h
  %i.cv = fptrunc nsz double %i.cq to float
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  store float %i.cv, ptr %i.cw, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %bb.k, label %bb.h, !llvm.loop !56

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %i.cx = load i32, ptr %i.r, align 8, !tbaa !44
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next337, %i.cy
  br i1 %i.cz, label %bb.e, label %.critedge, !llvm.loop !57

.critedge:                                        ; preds = %bb.e, %bb.k, %bb.d
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !71 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1
  br i1 %i.dc, label %.lr.ph328, label %.loopexit

.lr.ph328:                                        ; preds = %.critedge
  %i.dd = zext nneg i32 %i.db to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr @presets, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 16, !tbaa !76
  %i.dg = icmp ne i32 %i.k, 0                     ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 262376 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 524520 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 786664
  %smax = tail call i32 @llvm.smax.i32(i32 %i.df, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %.pre = load i32, ptr %i.o, align 8, !tbaa !43  ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph328, %._crit_edge
  %i.dl = phi i32 [ %.pre, %.lr.ph328 ], [ %i.eg, %._crit_edge ] ; 2 uses
  %i.dm = phi i32 [ %.pre, %.lr.ph328 ], [ %i.eh, %._crit_edge ] ; 3 uses
  %indvars.iv343 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next344, %._crit_edge ] ; 4 uses
  %i.dn = load i32, ptr %i.da, align 8, !tbaa !71
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [32 x i8], ptr @presets, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !77
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %indvars.iv343 ; 4 uses
  %.sroa.078.0.copyload = load i32, ptr %i.ds, align 4, !tbaa !40
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.sroa.479.0.copyload = load i32, ptr %.sroa.479.0..sroa_idx, align 4, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.076.0.copyload = load i32, ptr %i.dt, align 4, !tbaa !40
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %.sroa.477.0.copyload = load i32, ptr %.sroa.477.0..sroa_idx, align 4, !tbaa !40
  %i.du = add nsw i32 %i.dm, 1
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = sext i32 %.sroa.078.0.copyload to i64
  %i.dx = sext i32 %.sroa.479.0.copyload to i64
  %i.dy = tail call i64 @av_rescale_rnd(i64 noundef %i.dv, i64 noundef %i.dw, i64 noundef %i.dx, i32 noundef 3) #11 ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = sext i32 %.sroa.076.0.copyload to i64
  %i.eb = sext i32 %.sroa.477.0.copyload to i64
  %i.ec = tail call i64 @av_rescale_rnd(i64 noundef %i.dv, i64 noundef %i.ea, i64 noundef %i.eb, i32 noundef 3) #11
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = icmp slt i32 %i.dz, %i.ed
  br i1 %i.ee, label %.lr.ph325.preheader, label %._crit_edge

.lr.ph325.preheader:                              ; preds = %bb.l
  %sext = shl i64 %i.dy, 32
  %i.ef = ashr exact i64 %sext, 32
  br label %.lr.ph325

._crit_edge:                                      ; preds = %bb.v, %bb.l
  %i.eg = phi i32 [ %i.dl, %bb.l ], [ %i.kw, %bb.v ]
  %i.eh = phi i32 [ %i.dm, %bb.l ], [ %i.kw, %bb.v ]
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count
  br i1 %exitcond346.not, label %.loopexit, label %bb.l, !llvm.loop !58

.lr.ph325:                                        ; preds = %.lr.ph325.preheader, %bb.v
  %i.ei = phi i32 [ %i.dl, %.lr.ph325.preheader ], [ %i.kw, %bb.v ] ; 2 uses
  %i.ej = phi i32 [ %i.dm, %.lr.ph325.preheader ], [ %i.kw, %bb.v ] ; 2 uses
  %indvars.iv339 = phi i64 [ %i.ef, %.lr.ph325.preheader ], [ %indvars.iv.next340, %bb.v ] ; 9 uses
  %i.ek = load i32, ptr %i.da, align 8, !tbaa !71
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [32 x i8], ptr @presets, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !78 ; 2 uses
  %.not290 = icmp eq ptr %i.eo, null
  br i1 %.not290, label %bb.m, label %bb.q

bb.m:                                             ; preds = %.lr.ph325
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !79
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv343 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %.sroa.0.0.copyload = load float, ptr %i.er, align 4 ; 2 uses
  %i.es = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !48
  %i.et = fpext nsz <2 x float> %i.es to <2 x double> ; 2 uses
  %i.eu = fpext nsz float %.sroa.0.0.copyload to double ; 2 uses
  %i.ev = fpext nsz float %.sroa.6.0.copyload to double
  %i.ew = extractelement <2 x float> %i.es, i64 0
  %i.ex = fcmp nsz oge float %i.ew, 0.000000e+00
  %i.ey = extractelement <2 x float> %i.es, i64 1
  %i.ez = fcmp nsz oge float %i.ey, 0.000000e+00
  %or.cond = select i1 %i.ex, i1 %i.ez, i1 false
  %i.fa = fcmp nsz oge float %.sroa.0.0.copyload, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 %i.fa, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fb = sitofp nsz i32 %i.ej to double          ; 3 uses
  %i.fc = insertelement <2 x double> poison, double %i.fb, i64 0 ; 2 uses
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fmul nsz <2 x double> %i.fd, %i.et      ; 6 uses
  %i.ff = fmul nsz double %i.eu, %i.fb            ; 3 uses
  br i1 %i.dg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fg = extractelement <2 x double> %i.fe, i64 0
  %i.fh = fmul nsz double %i.fg, f0x3FE3A7C6E8158CBE
  %i.fi = insertelement <2 x double> %i.fe, double %i.ff, i64 0
  %i.fj = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fk = shufflevector <2 x double> %i.fe, <2 x double> %i.fc, <2 x i32> <i32 1, i32 2>
  %i.fl = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul nsz <2 x double> %i.fl, <double f0xBFD5AB3175C8076F, double f0xBFD98839FE30FB53>
  %i.fn = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> <double f0xBFB9C3AA995052B3, double f0x3FDC1C1C1C1C1C1C>, <2 x double> %i.fm) ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fj, <2 x double> %i.fp, <2 x i32> <i32 0, i32 2>
  %i.fr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> <double f0x3FC75EF964B56659, double f0x3FDC1C1C1C1C1C1C>, <2 x double> %i.fq)
  %i.fs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> <double f0x3FAFBF63A389526F, double 5.000000e-01>, <2 x double> %i.fr)
  %i.ft = extractelement <2 x double> %i.fe, i64 1
  %i.fu = extractelement <2 x double> %i.fp, i64 1
  %i.fv = tail call nsz double @llvm.fmuladd.f64(double %i.ft, double f0xBFA49F10EF590649, double %i.fu)
  %i.fw = tail call nsz double @llvm.fmuladd.f64(double %i.fb, double 5.000000e-01, double %i.fv)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.0279 = phi nsz double [ %i.ff, %bb.n ], [ %i.fw, %bb.o ], [ %i.eu, %bb.m ]
  %i.fx = phi <2 x double> [ %i.fe, %bb.n ], [ %i.fs, %bb.o ], [ %i.et, %bb.m ]
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv339
  %i.fz = fptrunc nsz <2 x double> %i.fx to <2 x float> ; 2 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0
  store float %i.ga, ptr %i.fy, align 4, !tbaa !47
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv339
  %i.gc = extractelement <2 x float> %i.fz, i64 1
  store float %i.gc, ptr %i.gb, align 4, !tbaa !47
  %i.gd = fptrunc nsz double %.0279 to float
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv339
  store float %i.gd, ptr %i.ge, align 4, !tbaa !47
  %i.gf = sitofp nsz i32 %i.ei to double
  %i.gg = fmul nsz double %i.ev, %i.gf
  %i.gh = fptrunc nsz double %i.gg to float
  br label %bb.v

bb.q:                                             ; preds = %.lr.ph325
  %i.gi = getelementptr inbounds nuw [248 x i8], ptr %i.eo, i64 %indvars.iv343 ; 15 uses
  %.sroa.0.0.copyload298 = load double, ptr %i.gi, align 8
  %.sroa.4.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.4.0.copyload300 = load double, ptr %.sroa.4.0..sroa_idx299, align 8
  %.sroa.5.0..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %.sroa.5.0.copyload302 = load double, ptr %.sroa.5.0..sroa_idx301, align 8
  %.sroa.6.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %.sroa.6.0.copyload304 = load double, ptr %.sroa.6.0..sroa_idx303, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 64
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 192
  %.sroa.27.0.copyload = load double, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 200
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 216
  %.sroa.30.0.copyload = load ptr, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 224
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 232
  %.sroa.32.0.copyload = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !48
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 240
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !40 ; 2 uses
  %i.gj = trunc nsw i64 %indvars.iv339 to i32
  %i.gk = sitofp nsz i32 %i.gj to double
  %i.gl = sitofp nsz i32 %i.ej to double
  %i.gm = fdiv nsz double %i.gk, %i.gl
  %i.gn = fmul nsz double %i.gm, 2.560000e+02     ; 2 uses
  %i.go = load <16 x double>, ptr %.sroa.11.0..sroa_idx, align 8 ; 8 uses
  %i.gp = load <2 x double>, ptr %.sroa.28.0..sroa_idx, align 8
  %i.gq = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fadd nsz <2 x double> %i.gp, %i.gr      ; 8 uses
  %i.gt = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 6, i32 14>
  %i.gu = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 7, i32 15>
  %i.gv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gt, <2 x double> %i.gu)
  %i.gw = fmul nsz <2 x double> %i.gs, %i.gs
  %i.gx = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 5, i32 13>
  %i.gy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gx, <2 x double> %i.gv)
  %i.gz = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.gs, <2 x double> splat (double 3.000000e+00))
  %i.ha = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 4, i32 12>
  %i.hb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.ha, <2 x double> %i.gy)
  %i.hc = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.gs, <2 x double> splat (double 4.000000e+00))
  %i.hd = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 3, i32 11>
  %i.he = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> %i.hd, <2 x double> %i.hb)
  %i.hf = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.gs, <2 x double> splat (double 5.000000e+00))
  %i.hg = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 2, i32 10>
  %i.hh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hg, <2 x double> %i.he)
  %i.hi = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.gs, <2 x double> splat (double 6.000000e+00))
  %i.hj = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 1, i32 9>
  %i.hk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hj, <2 x double> %i.hh)
  %i.hl = tail call nsz <2 x double> @llvm.pow.v2f64(<2 x double> %i.gs, <2 x double> splat (double 7.000000e+00))
  %i.hm = shufflevector <16 x double> %i.go, <16 x double> poison, <2 x i32> <i32 0, i32 8>
  %i.hn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.hm, <2 x double> %i.hk) ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 0
  %i.hp = tail call nsz double %.sroa.31.0.copyload(double noundef %i.ho) #9, !inline_history !59 ; 2 uses
  %i.hq = extractelement <2 x double> %i.hn, i64 1
  %i.hr = tail call nsz double %.sroa.32.0.copyload(double noundef %i.hq) #9, !inline_history !59 ; 2 uses
  %i.hs = fadd nsz double %.sroa.27.0.copyload, %i.gn ; 8 uses
  %i.ht = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %.sroa.9.0.copyload, double %.sroa.10.0.copyload)
  %square.i297 = fmul nsz double %i.hs, %i.hs
  %i.hu = tail call nsz double @llvm.fmuladd.f64(double %square.i297, double %.sroa.8.0.copyload, double %i.ht)
  %i.hv = tail call nsz double @llvm.pow.f64(double %i.hs, double 3.000000e+00)
  %i.hw = tail call nsz double @llvm.fmuladd.f64(double %i.hv, double %.sroa.7.0.copyload, double %i.hu)
  %i.hx = tail call nsz double @llvm.pow.f64(double %i.hs, double 4.000000e+00)
  %i.hy = tail call nsz double @llvm.fmuladd.f64(double %i.hx, double %.sroa.6.0.copyload304, double %i.hw)
  %i.hz = tail call nsz double @llvm.pow.f64(double %i.hs, double 5.000000e+00)
  %i.ia = tail call nsz double @llvm.fmuladd.f64(double %i.hz, double %.sroa.5.0.copyload302, double %i.hy)
  %i.ib = tail call nsz double @llvm.pow.f64(double %i.hs, double 6.000000e+00)
  %i.ic = tail call nsz double @llvm.fmuladd.f64(double %i.ib, double %.sroa.4.0.copyload300, double %i.ia)
  %i.id = tail call nsz double @llvm.pow.f64(double %i.hs, double 7.000000e+00)
  %i.ie = tail call nsz double @llvm.fmuladd.f64(double %i.id, double %.sroa.0.0.copyload298, double %i.ic)
  %i.if = tail call nsz double %.sroa.30.0.copyload(double noundef %i.ie) #9, !inline_history !59
  %i.ig = icmp ne i32 %.sroa.33.0.copyload, 0     ; 2 uses
  %or.cond5 = select i1 %i.ig, i1 %i.dg, i1 false
  %.pre348.pre = load i32, ptr %i.o, align 8, !tbaa !43 ; 4 uses
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.hr, i64 1 ; 2 uses
  br i1 %or.cond5, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ij = sitofp nsz i32 %.pre348.pre to double   ; 4 uses
  %i.ik = fmul nsz double %i.hp, %i.ij            ; 4 uses
  %i.il = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.in = fmul nsz <2 x double> %i.ii, %i.im      ; 7 uses
  %i.io = extractelement <2 x double> %i.in, i64 1 ; 2 uses
  %i.ip = or i32 %.sroa.33.0.copyload, %i.k
  %or.cond8.not = icmp eq i32 %i.ip, 0
  br i1 %or.cond8.not, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.iq = fmul nsz double %i.ik, f0xBFD5AB3175C8076F
  %i.ir = extractelement <2 x double> %i.in, i64 0
  %i.is = fmul nsz double %i.ik, f0x3FE3A7C6E8158CBE
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.ir, double f0xBFB9C3AA995052B3, double %i.iq)
  %i.iu = tail call nsz double @llvm.fmuladd.f64(double %i.io, double f0x3FDC1C1C1C1C1C1C, double %i.it)
  %i.iv = fmul nsz double %i.ik, f0xBFD98839FE30FB53
  %i.iw = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ix = insertelement <2 x double> %i.iw, double %i.ij, i64 0
  %i.iy = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.iz = insertelement <2 x double> %i.iy, double %i.iv, i64 1
  %i.ja = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> <double 5.000000e-01, double f0x3FDC1C1C1C1C1C1C>, <2 x double> %i.iz) ; 2 uses
  %i.jb = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> %i.in, <2 x i32> <i32 0, i32 2>
  %i.jd = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.je = insertelement <2 x double> %i.jd, double %i.is, i64 1
  %i.jf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> <double f0xBFA49F10EF590649, double f0x3FC75EF964B56659>, <2 x double> %i.je)
  %i.jg = insertelement <2 x double> %i.in, double %i.ij, i64 0
  %i.jh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> <double 5.000000e-01, double f0x3FAFBF63A389526F>, <2 x double> %i.jf)
  %i.ji = extractelement <2 x double> %i.ja, i64 0
  br label %bb.u

.thread:                                          ; preds = %bb.q, %bb.r
  %.0270312 = phi double [ %i.io, %bb.r ], [ %i.hr, %bb.q ]
  %.0272311 = phi double [ %i.ik, %bb.r ], [ %i.hp, %bb.q ] ; 4 uses
  %i.jj = phi <2 x double> [ %i.in, %bb.r ], [ %i.ii, %bb.q ] ; 2 uses
  %or.cond11 = and i1 %i.dg, %i.ig
  %i.jk = insertelement <2 x double> %i.jj, double %.0272311, i64 1
  br i1 %or.cond11, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread
  %i.jl = fadd nsz <2 x double> %i.jj, splat (double -5.000000e-01) ; 2 uses
  %i.jm = sitofp nsz i32 %.pre348.pre to double   ; 4 uses
  %i.jn = fmul nsz <2 x double> %i.jl, <double 2.126000e-01, double 7.220000e-02>
  %i.jo = fmul nsz <2 x double> %i.jn, <double 7.874000e-01, double f0x3FEDB089A0275254>
  %i.jp = fdiv nsz <2 x double> %i.jo, <double f0x3FDC267839CD8127, double f0x3FD3F4FA12803544> ; 2 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 1
  %i.jr = fsub nsz double %.0272311, %i.jq
  %i.js = extractelement <2 x double> %i.jp, i64 0
  %i.jt = fsub nsz double %i.jr, %i.js
  %i.ju = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jv = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jw = fmul nsz <2 x double> %i.jl, <double 7.874000e-01, double f0x3FEDB089A0275254>
  %i.jx = fdiv nsz <2 x double> %i.jw, <double f0x3FE3AE147AE147AE, double 4.360000e-01> ; 2 uses
  %i.jy = extractelement <2 x double> %i.jx, i64 0
  %i.jz = fadd nsz double %.0272311, %i.jy
  %i.ka = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jt, i64 1
  %i.kc = fmul nsz <2 x double> %i.kb, %i.jv      ; 2 uses
  %i.kd = fcmp nsz ogt <2 x double> %i.kc, zeroinitializer
  %i.ke = select <2 x i1> %i.kd, <2 x double> %i.kc, <2 x double> zeroinitializer ; 2 uses
  %i.kf = fcmp nsz ogt <2 x double> %i.ke, %i.jv
  %i.kg = select <2 x i1> %i.kf, <2 x double> %i.jv, <2 x double> %i.ke
  %i.kh = extractelement <2 x double> %i.jx, i64 1
  %i.ki = fadd nsz double %.0272311, %i.kh
  %i.kj = fmul nsz double %i.ki, %i.jm            ; 2 uses
  %i.kk = fcmp nsz ogt double %i.kj, 0.000000e+00
  %i.kl = select nsz i1 %i.kk, double %i.kj, double 0.000000e+00 ; 2 uses
  %i.km = fcmp nsz ogt double %i.kl, %i.jm
  %..i = select nsz i1 %i.km, double %i.jm, double %i.kl
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.t, %bb.s
  %.1271 = phi nsz double [ %..i, %bb.t ], [ %.0270312, %.thread ], [ %i.ji, %bb.s ]
  %i.kn = phi <2 x double> [ %i.kg, %bb.t ], [ %i.jk, %.thread ], [ %i.jh, %bb.s ]
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv339
  %i.kp = fptrunc nsz double %.1271 to float
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv339
  store float %i.kp, ptr %i.kq, align 4, !tbaa !47
  %i.kr = fptrunc nsz <2 x double> %i.kn to <2 x float> ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 1
  store float %i.ks, ptr %i.ko, align 4, !tbaa !47
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %indvars.iv339
  %i.ku = extractelement <2 x float> %i.kr, i64 0
  store float %i.ku, ptr %i.kt, align 4, !tbaa !47
  %i.kv = sitofp nsz i32 %.pre348.pre to float
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u
  %.sink = phi float [ %i.gh, %bb.p ], [ %i.kv, %bb.u ]
  %i.kw = phi i32 [ %i.ei, %bb.p ], [ %.pre348.pre, %bb.u ] ; 4 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %indvars.iv339
  store float %.sink, ptr %i.kx, align 4, !tbaa !47
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next340 to i32
  %exitcond342.not = icmp eq i32 %lftr.wideiv, %i.ed
  br i1 %exitcond342.not, label %._crit_edge, label %.lr.ph325, !llvm.loop !60

.loopexit:                                        ; preds = %._crit_edge, %.critedge
  %i.ky = load i32, ptr %i.e, align 4, !tbaa !61
  switch i32 %i.ky, label %.critedge293 [
    i32 5, label %bb.w
    i32 79, label %bb.w
    i32 71, label %bb.w
    i32 111, label %bb.w
    i32 8, label %bb.w
    i32 0, label %bb.x
    i32 33, label %bb.x
    i32 4, label %bb.aa
    i32 78, label %bb.aa
    i32 66, label %bb.ad
    i32 85, label %bb.ad
    i32 68, label %bb.ad
    i32 91, label %bb.ad
    i32 131, label %bb.ad
    i32 187, label %bb.ad
    i32 133, label %bb.ad
    i32 49, label %bb.ad
    i32 97, label %bb.ad
    i32 73, label %bb.ad
    i32 75, label %bb.ad
    i32 135, label %bb.ad
    i32 137, label %bb.ad
    i32 77, label %bb.ad
    i32 163, label %bb.ad
    i32 161, label %bb.ad
    i32 226, label %bb.ad
    i32 113, label %bb.ad
    i32 173, label %bb.ad
    i32 168, label %bb.ad
    i32 166, label %bb.ad
    i32 181, label %bb.ad
    i32 30, label %bb.ad
    i32 70, label %bb.ae
    i32 83, label %bb.ae
    i32 64, label %bb.ae
    i32 89, label %bb.ae
    i32 127, label %bb.ae
    i32 185, label %bb.ae
    i32 129, label %bb.ae
    i32 47, label %bb.ae
    i32 95, label %bb.ae
    i32 60, label %bb.ah
    i32 81, label %bb.ah
    i32 62, label %bb.ah
    i32 87, label %bb.ah
    i32 123, label %bb.ah
    i32 125, label %bb.ah
    i32 45, label %bb.ah
    i32 93, label %bb.ah
  ]

bb.w:                                             ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.kz = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  store <4 x ptr> <ptr @pseudocolor_filter, ptr @pseudocolor_filter, ptr @pseudocolor_filter, ptr @pseudocolor_filter>, ptr %i.kz, align 8, !tbaa !49
  br label %.critedge293

bb.x:                                             ; preds = %.loopexit, %.loopexit
  %i.la = load i32, ptr %i.s, align 4, !tbaa !45
  switch i32 %i.la, label %.critedge293 [
    i32 0, label %bb.y
    i32 3, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.lb = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.lc = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter, ptr %i.lc, align 8, !tbaa !49
  store ptr @pseudocolor_filter, ptr %i.lb, align 8, !tbaa !49
  %i.ld = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter_11, ptr %i.ld, align 8, !tbaa !49
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter_11, ptr %i.le, align 8, !tbaa !49
  br label %.critedge293

bb.z:                                             ; preds = %bb.x, %bb.x
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.lg = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter_11d, ptr %i.lg, align 8, !tbaa !49
  store ptr @pseudocolor_filter_11d, ptr %i.lf, align 8, !tbaa !49
  %i.lh = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter, ptr %i.lh, align 8, !tbaa !49
  %i.li = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter, ptr %i.li, align 8, !tbaa !49
  br label %.critedge293

bb.aa:                                            ; preds = %.loopexit, %.loopexit
  %i.lj = load i32, ptr %i.s, align 4, !tbaa !45
  switch i32 %i.lj, label %.critedge293 [
    i32 0, label %bb.ab
    i32 3, label %bb.ab
    i32 1, label %bb.ac
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter, ptr %i.ll, align 8, !tbaa !49
  store ptr @pseudocolor_filter, ptr %i.lk, align 8, !tbaa !49
  %i.lm = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter_10, ptr %i.lm, align 8, !tbaa !49
  %i.ln = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter_10, ptr %i.ln, align 8, !tbaa !49
  br label %.critedge293

bb.ac:                                            ; preds = %bb.aa, %bb.aa
  %i.lo = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.lp = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter_10d, ptr %i.lp, align 8, !tbaa !49
  store ptr @pseudocolor_filter_10d, ptr %i.lo, align 8, !tbaa !49
  %i.lq = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter, ptr %i.lq, align 8, !tbaa !49
  %i.lr = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter, ptr %i.lr, align 8, !tbaa !49
  br label %.critedge293

bb.ad:                                            ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  store <4 x ptr> <ptr @pseudocolor_filter_16, ptr @pseudocolor_filter_16, ptr @pseudocolor_filter_16, ptr @pseudocolor_filter_16>, ptr %i.ls, align 8, !tbaa !49
  br label %.critedge293

bb.ae:                                            ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.lt = load i32, ptr %i.s, align 4, !tbaa !45
  switch i32 %i.lt, label %.critedge293 [
    i32 0, label %bb.af
    i32 3, label %bb.af
    i32 1, label %bb.ag
    i32 2, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.lu = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.lv = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter_16, ptr %i.lv, align 8, !tbaa !49
  store ptr @pseudocolor_filter_16, ptr %i.lu, align 8, !tbaa !49
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter_16_10, ptr %i.lw, align 8, !tbaa !49
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter_16_10, ptr %i.lx, align 8, !tbaa !49
  br label %.critedge293

bb.ag:                                            ; preds = %bb.ae, %bb.ae
  %i.ly = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter_16_10d, ptr %i.lz, align 8, !tbaa !49
  store ptr @pseudocolor_filter_16_10d, ptr %i.ly, align 8, !tbaa !49
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter_16, ptr %i.ma, align 8, !tbaa !49
  %i.mb = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter_16, ptr %i.mb, align 8, !tbaa !49
  br label %.critedge293

bb.ah:                                            ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %i.mc = load i32, ptr %i.s, align 4, !tbaa !45
  switch i32 %i.mc, label %.critedge293 [
    i32 0, label %bb.ai
    i32 3, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.md = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.me = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter_16, ptr %i.me, align 8, !tbaa !49
  store ptr @pseudocolor_filter_16, ptr %i.md, align 8, !tbaa !49
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 1048824
  store ptr @pseudocolor_filter_16_11, ptr %i.mf, align 8, !tbaa !49
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 1048816
  store ptr @pseudocolor_filter_16_11, ptr %i.mg, align 8, !tbaa !49
  br label %.critedge293

bb.aj:                                            ; preds = %bb.ah, %bb.ah
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 1048808
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 1048832
  store ptr @pseudocolor_filter_16_11d, ptr %i.mi, align 8, !tbaa !49
  store ptr @pseudocolor_filter_16_11d, ptr %i.mh, align 8, !tbaa !49
end_hunk_0
