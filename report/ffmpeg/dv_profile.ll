Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dv_profile?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVRational = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Frame size: %dx%d; pixel format: %s, framerate: %d/%d\0A\00", align 1
@block_sizes_dv2550 = internal constant [8 x i8] c"ppppPP\00\00", align 1
@dv_audio_shuffle525 = internal constant [10 x [9 x i8]] [[9 x i8] c"\00\1E<\142P\0A(F", [9 x i8] c"\06$B\1A8V\10.L", [9 x i8] c"\0C*H\02 >\164R", [9 x i8] c"\120N\08&D\1C:X", [9 x i8] c"\186T\0E,J\04\22@", [9 x i8] c"\01\1F=\153Q\0B)G", [9 x i8] c"\07%C\1B9W\11/M", [9 x i8] c"\0D+I\03!?\175S", [9 x i8] c"\131O\09'E\1D;Y", [9 x i8] c"\197U\0F-K\05#A"], align 16
@dv_audio_shuffle625 = internal constant [12 x [9 x i8]] [[9 x i8] c"\00$H\1A>b\104X", [9 x i8] c"\06*N Dh\16:^", [9 x i8] c"\0C0T\02&J\1C@d", [9 x i8] c"\126Z\08,P\22Fj", [9 x i8] c"\18<`\0E2V\04(L", [9 x i8] c"\1EBf\148\\\0A.R", [9 x i8] c"\01%I\1B?c\115Y", [9 x i8] c"\07+O!Ei\17;_", [9 x i8] c"\0D1U\03'K\1DAe", [9 x i8] c"\137[\09-Q#Gk", [9 x i8] c"\19=a\0F3W\05)M", [9 x i8] c"\1FCg\159]\0B/S"], align 16
@block_sizes_dv100 = internal constant [8 x i8] c"PPPPPP@@", align 1
@dv_profiles = internal constant [10 x { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr }] [{ i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 0, i32 0, i32 120000, i32 10, i32 1, %struct.AVRational { i32 1001, i32 30000 }, i32 30, i32 480, i32 720, [2 x %struct.AVRational] [%struct.AVRational { i32 8, i32 9 }, %struct.AVRational { i32 32, i32 27 }], i32 7, i32 6, ptr @block_sizes_dv2550, i32 90, [3 x i32] [i32 1580, i32 1452, i32 1053], [5 x i32] [i32 1600, i32 1602, i32 1602, i32 1602, i32 1602], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle525 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 1, i32 0, i32 144000, i32 12, i32 1, %struct.AVRational { i32 1, i32 25 }, i32 25, i32 576, i32 720, [2 x %struct.AVRational] [%struct.AVRational { i32 16, i32 15 }, %struct.AVRational { i32 64, i32 45 }], i32 0, i32 6, ptr @block_sizes_dv2550, i32 108, [3 x i32] [i32 1896, i32 1742, i32 1264], [5 x i32] [i32 1920, i32 1920, i32 1920, i32 1920, i32 1920], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle625 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 1, i32 0, i32 144000, i32 12, i32 1, %struct.AVRational { i32 1, i32 25 }, i32 25, i32 576, i32 720, [2 x %struct.AVRational] [%struct.AVRational { i32 16, i32 15 }, %struct.AVRational { i32 64, i32 45 }], i32 7, i32 6, ptr @block_sizes_dv2550, i32 108, [3 x i32] [i32 1896, i32 1742, i32 1264], [5 x i32] [i32 1920, i32 1920, i32 1920, i32 1920, i32 1920], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle625 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 0, i32 4, i32 240000, i32 10, i32 2, %struct.AVRational { i32 1001, i32 30000 }, i32 30, i32 480, i32 720, [2 x %struct.AVRational] [%struct.AVRational { i32 8, i32 9 }, %struct.AVRational { i32 32, i32 27 }], i32 4, i32 6, ptr @block_sizes_dv2550, i32 90, [3 x i32] [i32 1580, i32 1452, i32 1053], [5 x i32] [i32 1600, i32 1602, i32 1602, i32 1602, i32 1602], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle525 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 1, i32 4, i32 288000, i32 12, i32 2, %struct.AVRational { i32 1, i32 25 }, i32 25, i32 576, i32 720, [2 x %struct.AVRational] [%struct.AVRational { i32 16, i32 15 }, %struct.AVRational { i32 64, i32 45 }], i32 4, i32 6, ptr @block_sizes_dv2550, i32 108, [3 x i32] [i32 1896, i32 1742, i32 1264], [5 x i32] [i32 1920, i32 1920, i32 1920, i32 1920, i32 1920], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle625 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 0, i32 20, i32 480000, i32 10, i32 4, %struct.AVRational { i32 1001, i32 30000 }, i32 30, i32 1080, i32 1280, [2 x %struct.AVRational] [%struct.AVRational { i32 1, i32 1 }, %struct.AVRational { i32 3, i32 2 }], i32 4, i32 8, ptr @block_sizes_dv100, i32 90, [3 x i32] [i32 1580, i32 1452, i32 1053], [5 x i32] [i32 1600, i32 1602, i32 1602, i32 1602, i32 1602], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle525 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 1, i32 20, i32 576000, i32 12, i32 4, %struct.AVRational { i32 1, i32 25 }, i32 25, i32 1080, i32 1440, [2 x %struct.AVRational] [%struct.AVRational { i32 1, i32 1 }, %struct.AVRational { i32 4, i32 3 }], i32 4, i32 8, ptr @block_sizes_dv100, i32 108, [3 x i32] [i32 1896, i32 1742, i32 1264], [5 x i32] [i32 1920, i32 1920, i32 1920, i32 1920, i32 1920], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle625 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 0, i32 24, i32 240000, i32 10, i32 2, %struct.AVRational { i32 1001, i32 60000 }, i32 60, i32 720, i32 960, [2 x %struct.AVRational] [%struct.AVRational { i32 1, i32 1 }, %struct.AVRational { i32 4, i32 3 }], i32 4, i32 8, ptr @block_sizes_dv100, i32 90, [3 x i32] [i32 1580, i32 1452, i32 1053], [5 x i32] [i32 1600, i32 1602, i32 1602, i32 1602, i32 1602], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle525 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 1, i32 24, i32 288000, i32 12, i32 2, %struct.AVRational { i32 1, i32 50 }, i32 50, i32 720, i32 960, [2 x %struct.AVRational] [%struct.AVRational { i32 1, i32 1 }, %struct.AVRational { i32 4, i32 3 }], i32 4, i32 8, ptr @block_sizes_dv100, i32 90, [3 x i32] [i32 1896, i32 1742, i32 1264], [5 x i32] [i32 1920, i32 1920, i32 1920, i32 1920, i32 1920], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle625 }, { i32, i32, i32, i32, i32, %struct.AVRational, i32, i32, i32, [2 x %struct.AVRational], i32, i32, ptr, i32, [3 x i32], [5 x i32], [4 x i8], ptr } { i32 1, i32 1, i32 144000, i32 12, i32 1, %struct.AVRational { i32 1, i32 25 }, i32 25, i32 576, i32 720, [2 x %struct.AVRational] [%struct.AVRational { i32 16, i32 15 }, %struct.AVRational { i32 64, i32 45 }], i32 0, i32 6, ptr @block_sizes_dv2550, i32 108, [3 x i32] [i32 1896, i32 1742, i32 1264], [5 x i32] [i32 1920, i32 1920, i32 1920, i32 1920, i32 1920], [4 x i8] zeroinitializer, ptr @dv_audio_shuffle625 }], align 16
@switch.table.ff_dv_frame_profile = private unnamed_addr constant [24 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 1080), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 480), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 720), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 960)], align 8

; Function Attrs: nounwind uwtable
define void @ff_dv_print_profiles(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @av_get_pix_fmt_name(i32 noundef 7) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 480, ptr noundef %i.a, i32 noundef 30000, i32 noundef 1001) #6
  %i.b = tail call ptr @av_get_pix_fmt_name(i32 noundef 0) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 576, ptr noundef %i.b, i32 noundef 25, i32 noundef 1) #6
  %i.c = tail call ptr @av_get_pix_fmt_name(i32 noundef 7) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 576, ptr noundef %i.c, i32 noundef 25, i32 noundef 1) #6
  %i.d = tail call ptr @av_get_pix_fmt_name(i32 noundef 4) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 480, ptr noundef %i.d, i32 noundef 30000, i32 noundef 1001) #6
  %i.e = tail call ptr @av_get_pix_fmt_name(i32 noundef 4) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 576, ptr noundef %i.e, i32 noundef 25, i32 noundef 1) #6
  %i.f = tail call ptr @av_get_pix_fmt_name(i32 noundef 4) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 1280, i32 noundef 1080, ptr noundef %i.f, i32 noundef 30000, i32 noundef 1001) #6
  %i.g = tail call ptr @av_get_pix_fmt_name(i32 noundef 4) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 1080, ptr noundef %i.g, i32 noundef 25, i32 noundef 1) #6
  %i.h = tail call ptr @av_get_pix_fmt_name(i32 noundef 4) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 960, i32 noundef 720, ptr noundef %i.h, i32 noundef 60000, i32 noundef 1001) #6
  %i.i = tail call ptr @av_get_pix_fmt_name(i32 noundef 4) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 960, i32 noundef 720, ptr noundef %i.i, i32 noundef 50, i32 noundef 1) #6
  %i.j = tail call ptr @av_get_pix_fmt_name(i32 noundef 0) #6
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef 720, i32 noundef 576, ptr noundef %i.j, i32 noundef 25, i32 noundef 1) #6
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ff_dv_frame_profile(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %3, 480
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9     ; 5 uses
  %i.d = lshr i8 %i.c, 7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 451
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9     ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 31                         ; 5 uses
  %i.i = icmp slt i8 %i.c, 0
  %i.j = icmp eq i32 %i.h, 0                      ; 3 uses
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = and i8 %i.l, 7
  %.not = icmp eq i8 %i.m, 0
  %spec.select = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 120), ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 240)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.h, 31
  %i.o = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.o, %i.n
  br i1 %or.cond3, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = icmp eq i32 %i.q, 892488787
  br i1 %i.r, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i32, ptr %i.s, align 8, !tbaa !30
  %i.u = icmp eq i32 %i.t, 720
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = icmp eq i32 %i.w, 576
  br i1 %i.x, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.y = icmp sgt i8 %i.c, -1
  %i.z = and i32 %i.g, 63
  %i.aa = icmp eq i32 %i.z, 32
  %or.cond7 = select i1 %i.y, i1 %i.aa, i1 false
  %i.ab = icmp eq i32 %3, 144000
  %or.cond9 = and i1 %i.ab, %or.cond7
  br i1 %or.cond9, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread
  %i.ac = icmp sgt i8 %i.c, -1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.preheader
  br i1 %i.j, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %.preheader.preheader
  br i1 %i.j, label %.loopexit, label %.preheader.4

bb.j:                                             ; preds = %bb.h
  switch i32 %i.h, label %.preheader.9.thread [
    i32 4, label %.loopexit
    i32 20, label %.loopexit.fold.split
    i32 24, label %.loopexit.fold.split82
  ]

.preheader.4:                                     ; preds = %bb.i
  %switch.tableidx = add nsw i32 %i.h, -1         ; 2 uses
  %i.ad = icmp samesign ult i32 %i.h, 25
  %switch.shifted = lshr i32 8912905, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond85 = select i1 %i.ad, i1 %switch.lobit, i1 false
  br i1 %or.cond85, label %switch.lookup, label %.preheader.9.thread

.preheader.9.thread:                              ; preds = %.preheader.4, %bb.j
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.9.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !33
  %i.ag = icmp eq i32 %3, %i.af
  br i1 %i.ag, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.9.thread
  %i.ah = and i8 %i.c, 127
  %i.ai = icmp eq i8 %i.ah, 63
  %i.aj = icmp eq i8 %i.f, -1
  %or.cond46 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond46, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ak = zext nneg i8 %i.d to i64
  %i.al = getelementptr inbounds nuw [120 x i8], ptr @dv_profiles, i64 %i.ak
  br label %.loopexit

.loopexit.fold.split:                             ; preds = %bb.j
  br label %.loopexit

.loopexit.fold.split82:                           ; preds = %bb.j
  br label %.loopexit

switch.lookup:                                    ; preds = %.preheader.4
  %i.am = zext nneg i32 %switch.tableidx to i64
  %switch.gep.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ff_dv_frame_profile, i64 %i.am
  %switch.load = load ptr, ptr %switch.gep.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %switch.lookup, %bb.c, %bb.j, %.loopexit.fold.split82, %.loopexit.fold.split, %bb.h, %bb.i, %bb.l, %bb.k, %.thread, %bb.g, %bb.a, %bb.m
  %.039 = phi ptr [ %1, %bb.k ], [ null, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 600), %.loopexit.fold.split ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 120), %.thread ], [ null, %bb.l ], [ %i.al, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 240), %bb.g ], [ @dv_profiles, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 120), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 840), %.loopexit.fold.split82 ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 360), %bb.j ], [ %switch.load, %switch.lookup ], [ %spec.select, %bb.c ]
  ret ptr %.039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @av_dv_frame_profile(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @ff_dv_frame_profile(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define ptr @av_dv_codec_profile(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @av_dv_codec_profile2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define ptr @av_dv_codec_profile2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 %3) local_unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, 4294967295
  %i.b = icmp eq i64 %i.a, 0
  %i.c = icmp ult i64 %3, 4294967296
  %i.d = or i1 %i.c, %i.b
  %.fr = freeze i1 %i.d
  %i.e = icmp eq i32 %1, 480                      ; 2 uses
  br i1 %.fr, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.e, label %bb.l, label %.split.1

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.e, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  switch i32 %2, label %.split.us.9 [
    i32 7, label %bb.c
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %0, 720
  br i1 %i.f, label %.critedge, label %.split.us.9

.split.us.1:                                      ; preds = %.split.us.preheader
  switch i32 %1, label %.split.us.9 [
    i32 576, label %bb.d
    i32 1080, label %bb.i
    i32 720, label %bb.k
  ]

bb.d:                                             ; preds = %.split.us.1
  switch i32 %2, label %.split.us.9 [
    i32 0, label %bb.e
    i32 7, label %bb.f
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i32 %0, 720
  br i1 %i.g, label %.critedge, label %.split.us.9

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %0, 720
  br i1 %i.h, label %.critedge, label %.split.us.9

bb.g:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %0, 720
  br i1 %i.i, label %.critedge, label %.split.us.9

bb.h:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %0, 720
  br i1 %i.j, label %.critedge, label %.split.us.9

bb.i:                                             ; preds = %.split.us.1
  %i.k = icmp eq i32 %2, 4
  br i1 %i.k, label %bb.j, label %.split.us.9

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp = icmp eq i32 %0, 1440
  %switch.select = select i1 %switch.selectcmp, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 720), ptr null
  %switch.selectcmp101 = icmp eq i32 %0, 1280
  %switch.select102 = select i1 %switch.selectcmp101, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 600), ptr %switch.select
  br label %.critedge

bb.k:                                             ; preds = %.split.us.1
  %i.l = icmp eq i32 %2, 4
  %i.m = icmp eq i32 %0, 960
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %.critedge, label %.split.us.9

.split.us.9:                                      ; preds = %.split.us.1, %bb.d, %bb.b, %bb.h, %bb.c, %bb.g, %bb.i, %bb.k, %bb.e, %bb.f
  br label %.critedge

bb.l:                                             ; preds = %.split.preheader
  switch i32 %2, label %.critedge [
    i32 7, label %bb.m
    i32 4, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.n = icmp eq i32 %0, 720
  %spec.select = select i1 %i.n, ptr @dv_profiles, ptr null
  br label %.critedge

.split.1:                                         ; preds = %.split.preheader
  switch i32 %1, label %.critedge [
    i32 576, label %bb.n
    i32 1080, label %bb.t
    i32 720, label %bb.v
  ]

bb.n:                                             ; preds = %.split.1
  switch i32 %2, label %.critedge [
    i32 0, label %bb.o
    i32 7, label %bb.q
    i32 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.o = icmp eq i32 %0, 720
  br i1 %i.o, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i64 @av_div_q(i64 107374182401, i64 %3) #7
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %.critedge, label %bb.y

bb.q:                                             ; preds = %bb.n
  %i.s = icmp eq i32 %0, 720
  %spec.select105 = select i1 %i.s, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 240), ptr null
  br label %.critedge

bb.r:                                             ; preds = %bb.l
  %i.t = icmp eq i32 %0, 720
  %spec.select106 = select i1 %i.t, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 360), ptr null
  br label %.critedge

bb.s:                                             ; preds = %bb.n
  %i.u = icmp eq i32 %0, 720
  %spec.select107 = select i1 %i.u, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 480), ptr null
  br label %.critedge

bb.t:                                             ; preds = %.split.1
  %i.v = icmp eq i32 %2, 4
  br i1 %i.v, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %switch.selectcmp108 = icmp eq i32 %0, 1440
  %switch.select109 = select i1 %switch.selectcmp108, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 720), ptr null
  %switch.selectcmp110 = icmp eq i32 %0, 1280
  %switch.select111 = select i1 %switch.selectcmp110, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 600), ptr %switch.select109
  br label %.critedge

bb.v:                                             ; preds = %.split.1
  %i.w = icmp eq i32 %2, 4
  %i.x = icmp eq i32 %0, 960
  %or.cond100 = and i1 %i.w, %i.x
  br i1 %or.cond100, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.y = tail call i64 @av_div_q(i64 257698037761001, i64 %3) #7
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = tail call i64 @av_div_q(i64 214748364801, i64 %3) #7
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 1
  %spec.select103 = select i1 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 960), ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 840)
  br label %.critedge

bb.y:                                             ; preds = %bb.p
  %i.ae = tail call i64 @av_div_q(i64 107374182401, i64 %3) #7
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = icmp eq i64 %i.af, 1
  %spec.select104 = select i1 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 1080), ptr getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 120)
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.u, %bb.y, %bb.x, %bb.m, %bb.j, %.split.1, %bb.n, %bb.l, %bb.k, %bb.t, %bb.v, %bb.p, %bb.w, %bb.o, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %.split.us.9
  %.us-phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 480), %bb.h ], [ @dv_profiles, %bb.c ], [ null, %.split.us.9 ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 120), %bb.e ], [ %spec.select, %bb.m ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 240), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 840), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 360), %bb.g ], [ %switch.select102, %bb.j ], [ %spec.select106, %bb.r ], [ null, %bb.t ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 120), %bb.p ], [ %switch.select111, %bb.u ], [ %spec.select104, %bb.y ], [ getelementptr inbounds nuw (i8, ptr @dv_profiles, i64 840), %bb.w ], [ %spec.select105, %bb.q ], [ null, %bb.v ], [ null, %bb.l ], [ %spec.select107, %bb.s ], [ %spec.select103, %bb.x ], [ null, %bb.o ], [ null, %.split.1 ], [ null, %bb.n ]
  ret ptr %.us-phi
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
end_hunk_0
