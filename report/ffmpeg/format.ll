Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/format?download=true
inline.NumInlined: 114
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LegacyFormatEntry = type { i8 }
%struct.AVRational64 = type { i64, i64 }
%struct.SwsFormat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.SwsColor }
%struct.SwsColor = type { i32, i32, %struct.AVPrimaryCoefficients, %struct.AVRational, %struct.AVRational, %struct.AVRational, %struct.AVRational }
%struct.AVPrimaryCoefficients = type { %struct.AVCIExy, %struct.AVCIExy, %struct.AVCIExy }
%struct.AVCIExy = type { %struct.AVRational, %struct.AVRational }
%struct.AVRational = type { i32, i32 }
%struct.SwsReadWriteOp = type { i32, i8, i8, %struct.anon }
%struct.anon = type { i32, ptr, i32 }
%struct.SwsSwizzleOp = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.SwsPackOp = type { [4 x i8] }
%struct.SwsShiftOp = type { i8 }
%struct.SwsOp = type { i32, i32, %union.anon.2, %struct.SwsComps }
%union.anon.2 = type { %struct.SwsLinearOp }
%struct.SwsLinearOp = type { [4 x [5 x %struct.AVRational64]], i32 }
%struct.SwsComps = type { [4 x i32], [4 x %struct.AVRational64], [4 x %struct.AVRational64] }
%struct.comp = type { i32, i32, i32 }
%struct.FmtInfo = type { %struct.SwsReadWriteOp, %struct.SwsSwizzleOp, %struct.SwsPackOp, i32 }
%struct.SwsClampOp = type { [4 x %struct.AVRational64] }
%struct.SwsFilterParams = type { i32, [2 x double], i32, i32, double, double }

@legacy_format_entries = internal unnamed_addr constant [266 x %struct.LegacyFormatEntry] [%struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 2 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 2 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 7 }, %struct.LegacyFormatEntry { i8 7 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 7 }, %struct.LegacyFormatEntry { i8 7 }, %struct.LegacyFormatEntry { i8 7 }, %struct.LegacyFormatEntry { i8 7 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry { i8 1 }, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry zeroinitializer, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }, %struct.LegacyFormatEntry { i8 3 }], align 16
@.str = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"libswscale/format.c\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"src->prim != AVCOL_PRI_UNSPECIFIED\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"dst->prim != AVCOL_PRI_UNSPECIFIED\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"dst->trc != AVCOL_TRC_UNSPECIFIED\00", align 1
@constinit = private unnamed_addr constant [4 x %struct.AVRational64] [%struct.AVRational64 zeroinitializer, %struct.AVRational64 zeroinitializer, %struct.AVRational64 zeroinitializer, %struct.AVRational64 { i64 0, i64 1 }], align 8
@constinit.7 = private unnamed_addr constant [4 x %struct.AVRational64] [%struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }], align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"!(desc->flags & (1 << 1))\00", align 1
@constinit.9 = private unnamed_addr constant [5 x %struct.AVRational64] [%struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 1, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }], align 8
@__const.fmt_encode_range.c = private unnamed_addr constant { [4 x [5 x %struct.AVRational64]], i32, [4 x i8] } { [4 x [5 x %struct.AVRational64]] [[5 x %struct.AVRational64] [%struct.AVRational64 { i64 1, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }], [5 x %struct.AVRational64] [%struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 1, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }], [5 x %struct.AVRational64] [%struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 1, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }], [5 x %struct.AVRational64] [%struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }, %struct.AVRational64 { i64 1, i64 1 }, %struct.AVRational64 { i64 0, i64 1 }]], i32 0, [4 x i8] zeroinitializer }, align 8
@switch.table.sws_test_colorspace = private unnamed_addr constant [10 x i8] c"\01\01\01\00\01\01\01\01\00\01", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @sws_isSupportedInput(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 266
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @legacy_format_entries, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %i.f = zext nneg i8 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @sws_isSupportedOutput(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 266
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @legacy_format_entries, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i8 %i.d, 1
  %i.f = and i8 %i.e, 1
  %i.g = zext nneg i8 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @sws_isSupportedEndiannessConversion(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 266
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @legacy_format_entries, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = lshr i8 %i.d, 2
  %i.f = and i8 %i.e, 1
  %i.g = zext nneg i8 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define void @ff_fmt_from_frame(ptr dead_on_unwind noalias nofree writable sret(%struct.SwsFormat) align 8 captures(none) initializes((0, 136)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0115 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.i = tail call ptr @av_pix_fmt_desc_get(i32 noundef %.0) #15 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = load <2 x i32>, ptr %i.j, align 8, !tbaa !32
  store <2 x i32> %i.n, ptr %0, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0115, ptr %i.r, align 4, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  store i32 %i.u, ptr %i.s, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load <2 x i32>, ptr %i.w, align 4, !tbaa !32
  %i.z = load i32, ptr %i.w, align 4, !tbaa !44
  store <2 x i32> %i.y, ptr %i.v, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i8 0, i64 80, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !46 ; 3 uses
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !48 ; 5 uses
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !49
  %.not124 = icmp eq ptr %i.i, null
  br i1 %.not124, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 381) #15
  tail call void @abort() #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !50 ; 3 uses
  %i.al = and i64 %i.ak, 290
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 4, !tbaa !52
  store i32 2, ptr %i.s, align 8, !tbaa !43
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.am = and i64 %i.ak, 1024
  %.not17.i = icmp eq i64 %i.am, 0
  br i1 %.not17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 2, ptr %i.v, align 4, !tbaa !52
  store i32 1, ptr %i.ac, align 8, !tbaa !32
  store i32 17, ptr %i.ag, align 4, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i, i8 0, i64 80, i1 false)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !53
  %i.ap = icmp ult i8 %i.ao, 3
  br i1 %i.ap, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.ac, align 8, !tbaa !54
  store i32 2, ptr %i.v, align 4, !tbaa !52
  %i.aq = and i64 %i.ak, 512
  %.not18.i = icmp eq i64 %i.aq, 0
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !43
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 2, ptr %i.s, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.f
  %i.ar = phi i32 [ 2, %bb.l ], [ 2, %bb.k ], [ %i.z, %bb.i ], [ 2, %bb.h ], [ 0, %bb.f ]
  %i.as = phi i32 [ 2, %bb.l ], [ 2, %bb.k ], [ %i.af, %bb.i ], [ 1, %bb.h ], [ %i.af, %bb.f ]
  %i.at = phi i32 [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %bb.i ], [ 17, %bb.h ], [ %i.ai, %bb.f ] ; 3 uses
  %i.au = tail call i32 @av_pix_fmt_desc_get_id(ptr noundef nonnull %i.i) #15
  switch i32 %i.au, label %bb.o [
    i32 12, label %bb.n
    i32 138, label %bb.n
    i32 13, label %bb.n
    i32 14, label %bb.n
    i32 32, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  store i32 2, ptr %i.s, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55
  %.not19.i = icmp eq i8 %i.aw, 0
  br i1 %.not19.i, label %bb.p, label %sanitize_fmt.exit

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 10
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !56
  %.not20.i = icmp eq i8 %i.ay, 0
  br i1 %.not20.i, label %bb.q, label %sanitize_fmt.exit

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.x, align 8, !tbaa !57
  br label %sanitize_fmt.exit

sanitize_fmt.exit:                                ; preds = %bb.o, %bb.p, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !58
  %i.bb = and i32 %i.ba, 8
  %.not125 = icmp eq i32 %i.bb, 0
  br i1 %.not125, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sanitize_fmt.exit
  %i.bc = icmp eq i32 %2, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = add nsw i32 %i.m, %i.bd
  %i.bf = ashr i32 %i.be, 1
  store i32 %i.bf, ptr %i.k, align 4, !tbaa !59
  store i32 1, ptr %i.o, align 8, !tbaa !33
  store i32 %2, ptr %i.p, align 4, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %sanitize_fmt.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i64 4294967296, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %switch.selectcmp = icmp eq i32 %i.at, 18
  %switch.select = select i1 %switch.selectcmp, i64 4294968296, i64 4294967499
  %switch.selectcmp177 = icmp eq i32 %i.at, 16
  %switch.select178 = select i1 %switch.selectcmp177, i64 4294977296, i64 %switch.select
  store i64 %switch.select178, ptr %i.bh, align 8
  %i.bi = tail call ptr @av_csp_primaries_desc_from_id(i32 noundef %i.as) #15 ; 2 uses
  %.not126 = icmp eq ptr %i.bi, null
  br i1 %.not126, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef nonnull align 4 dereferenceable(48) %i.bk, i64 48, i1 false), !tbaa.struct !60
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bl = tail call ptr @av_frame_get_side_data(ptr noundef nonnull %1, i32 noundef 11) #15 ; 2 uses
  %.not127 = icmp eq ptr %i.bl, null
  br i1 %.not127, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 84
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63
  %.not128 = icmp eq i32 %i.bp, 0
  br i1 %.not128, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.br = load <2 x i64>, ptr %i.bq, align 4
  store <2 x i64> %i.br, ptr %i.bg, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !65
  %.not129 = icmp eq i32 %i.bt, 0
  br i1 %.not129, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load <2 x i64>, ptr %i.bn, align 4
  store <2 x i64> %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.by = load <2 x i64>, ptr %i.bx, align 4
  store <2 x i64> %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.cb = load <2 x i64>, ptr %i.ca, align 4
  store <2 x i64> %i.cb, ptr %i.bz, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  %i.cc = tail call ptr @av_frame_get_side_data(ptr noundef nonnull %1, i32 noundef 17) #15 ; 2 uses
  %.not130 = icmp eq ptr %i.cc, null
  br i1 %.not130, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !61 ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 52 ; 2 uses
  %.sroa.019.0.copyload = load i32, ptr %i.cf, align 4, !tbaa !32 ; 6 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !32 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !66
  %.not131 = icmp eq i8 %i.ch, 0
  br i1 %.not131, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !68
  %i.ck = icmp ugt i8 %i.cj, 1
  br i1 %i.ck, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 60 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 4            ; 7 uses
  %.sroa.011.0.extract.trunc.i = trunc i64 %i.cm to i32 ; 3 uses
  %sext.i = shl i64 %i.cm, 32
  %i.cn = ashr exact i64 %sext.i, 32
  %i.co = sext i32 %.sroa.12.0.copyload to i64    ; 5 uses
  %i.cp = mul nsw i64 %i.cn, %i.co                ; 2 uses
  %i.cq = sext i32 %.sroa.019.0.copyload to i64   ; 4 uses
  %i.cr = ashr i64 %i.cm, 32                      ; 2 uses
  %i.cs = mul nsw i64 %i.cr, %i.cq                ; 2 uses
  %.not.i133 = icmp eq i64 %i.cp, %i.cs
  %i.ct = lshr i64 %i.cm, 32
  %i.cu = trunc nuw i64 %i.ct to i32
  br i1 %.not.i133, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = sub nsw i64 %i.cp, %i.cs
  %i.cw = xor i64 %i.cv, %i.co
  %i.cx = xor i64 %i.cw, %i.cr
  %i.cy = ashr i64 %i.cx, 63
  %i.cz = trunc nsw i64 %i.cy to i32
  %i.da = or i32 %i.cz, 1
  br label %av_cmp_q.exit

bb.ae:                                            ; preds = %bb.ac
  %i.db = icmp ne i32 %.sroa.12.0.copyload, 0
  %i.dc = icmp ugt i64 %i.cm, 4294967295
  %or.cond.i = and i1 %i.db, %i.dc
  br i1 %or.cond.i, label %av_cmp_q.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = icmp ne i32 %.sroa.011.0.extract.trunc.i, 0
  %i.de = icmp ne i32 %.sroa.019.0.copyload, 0
  %or.cond5.i = and i1 %i.de, %i.dd
  br i1 %or.cond5.i, label %bb.ag, label %av_cmp_q.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.df = ashr i32 %.sroa.011.0.extract.trunc.i, 31
  %.neg.i = lshr i32 %.sroa.019.0.copyload, 31
  %i.dg = add nsw i32 %i.df, %.neg.i
  br label %av_cmp_q.exit

av_cmp_q.exit:                                    ; preds = %bb.ad, %bb.ag
  %.0.i = phi i32 [ %i.da, %bb.ad ], [ %i.dg, %bb.ag ]
  %i.dh = icmp sgt i32 %.0.i, 0
end_hunk_0
begin_hunk_1_@ff_fmt_from_frame:bb.a
  %i.dv = or i32 %i.du, 1
  br label %av_cmp_q.exit143

bb.aj:                                            ; preds = %av_cmp_q.exit.thread
  %i.dw = icmp ne i32 %.sroa.12.0, 0
  %i.dx = icmp ugt i64 %i.dj, 4294967295
  %or.cond.i140 = and i1 %i.dw, %i.dx
  br i1 %or.cond.i140, label %av_cmp_q.exit143.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = icmp ne i32 %.sroa.011.0.extract.trunc.i134, 0
  %i.dz = icmp ne i32 %.sroa.019.0, 0
  %or.cond5.i141 = and i1 %i.dz, %i.dy
  br i1 %or.cond5.i141, label %bb.al, label %av_cmp_q.exit143.thread

bb.al:                                            ; preds = %bb.ak
  %i.ea = ashr i32 %.sroa.011.0.extract.trunc.i134, 31
  %.neg.i142 = lshr i32 %.sroa.019.0, 31
  %i.eb = add nsw i32 %i.ea, %.neg.i142
  br label %av_cmp_q.exit143

av_cmp_q.exit143:                                 ; preds = %bb.ai, %bb.al
  %.0.i139 = phi i32 [ %i.dv, %bb.ai ], [ %i.eb, %bb.al ]
  %i.ec = icmp sgt i32 %.0.i139, 0                ; 2 uses
  %spec.select = select i1 %i.ec, i32 %.sroa.011.0.extract.trunc.i134, i32 %.sroa.019.0
  %spec.select176 = select i1 %i.ec, i32 %i.dp, i32 %.sroa.12.0
  br label %av_cmp_q.exit143.thread

av_cmp_q.exit143.thread:                          ; preds = %av_cmp_q.exit143, %bb.ak, %bb.aj
  %.sroa.019.1 = phi i32 [ %.sroa.019.0, %bb.ak ], [ %spec.select, %av_cmp_q.exit143 ], [ %.sroa.019.0, %bb.aj ] ; 3 uses
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %bb.ak ], [ %spec.select176, %av_cmp_q.exit143 ], [ %.sroa.12.0, %bb.aj ] ; 2 uses
  %i.ed = icmp sgt i32 %.sroa.019.1, 0
  br i1 %i.ed, label %bb.am, label %.preheader

.preheader:                                       ; preds = %av_cmp_q.exit143.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ce, i64 84
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !69  ; 2 uses
  %.not159 = icmp eq i8 %i.ef, 0
  br i1 %.not159, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ce, i64 76
  %i.eh = load i64, ptr %i.eg, align 4
  %wide.trip.count = zext i8 %i.ef to i64
  br label %bb.ao

bb.am:                                            ; preds = %av_cmp_q.exit143.thread
  %i.ei = tail call ptr @av_csp_luma_coeffs_from_avcsp(i32 noundef %i.ar) #15 ; 4 uses
  %.not132.not = icmp eq ptr %i.ei, null
  br i1 %.not132.not, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = load i64, ptr %i.ei, align 4
  %i.ek = load i64, ptr %i.cf, align 4
  %i.el = tail call i64 @av_mul_q(i64 %i.ej, i64 %i.ek) #17
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.en = load i64, ptr %i.em, align 4
  %i.eo = load i64, ptr %i.cl, align 4
  %i.ep = tail call i64 @av_mul_q(i64 %i.en, i64 %i.eo) #17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.er = load i64, ptr %i.eq, align 4
  %i.es = load i64, ptr %i.di, align 4
  %i.et = tail call i64 @av_mul_q(i64 %i.er, i64 %i.es) #17
  %i.eu = tail call i64 @av_add_q(i64 %i.ep, i64 %i.et) #17
  %i.ev = tail call i64 @av_add_q(i64 %i.el, i64 %i.eu) #17 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ce, i64 76
  %.sroa.12.0.insert.ext46 = zext i32 %.sroa.12.1 to i64
  %.sroa.12.0.insert.shift47 = shl nuw i64 %.sroa.12.0.insert.ext46, 32
  %.sroa.019.0.insert.ext28 = zext nneg i32 %.sroa.019.1 to i64
  %.sroa.019.0.insert.insert30 = or disjoint i64 %.sroa.12.0.insert.shift47, %.sroa.019.0.insert.ext28
  %i.ex = tail call i64 @av_div_q(i64 %i.ev, i64 %.sroa.019.0.insert.insert30) #17
  %i.ey = load i64, ptr %i.ew, align 4
  %i.ez = tail call i64 @av_mul_q(i64 %i.ey, i64 %i.ex) #17
  br label %.loopexit

bb.ao:                                            ; preds = %.lr.ph, %av_cmp_q.exit153
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %av_cmp_q.exit153 ] ; 2 uses
  %.sroa.12.2158 = phi i32 [ %.sroa.12.1, %.lr.ph ], [ %.sroa.12.3, %av_cmp_q.exit153 ] ; 3 uses
  %.sroa.019.2156 = phi i32 [ %.sroa.019.1, %.lr.ph ], [ %.sroa.019.3, %av_cmp_q.exit153 ] ; 4 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %indvars.iv
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 92
  %.sroa.03.0.copyload = load i64, ptr %i.fb, align 4 ; 5 uses
  %.sroa.011.0.extract.trunc.i144 = trunc i64 %.sroa.03.0.copyload to i32 ; 3 uses
  %sext.i146 = shl i64 %.sroa.03.0.copyload, 32
  %i.fc = ashr exact i64 %sext.i146, 32
  %i.fd = sext i32 %.sroa.12.2158 to i64          ; 2 uses
  %i.fe = mul nsw i64 %i.fc, %i.fd                ; 2 uses
  %i.ff = sext i32 %.sroa.019.2156 to i64
  %i.fg = ashr i64 %.sroa.03.0.copyload, 32       ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.ff                ; 2 uses
  %.not.i148 = icmp eq i64 %i.fe, %i.fh
  br i1 %.not.i148, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = sub nsw i64 %i.fe, %i.fh
  %i.fj = xor i64 %i.fi, %i.fd
  %i.fk = xor i64 %i.fj, %i.fg
  %i.fl = ashr i64 %i.fk, 63
  %i.fm = trunc nsw i64 %i.fl to i32
  %i.fn = or i32 %i.fm, 1
  br label %av_cmp_q.exit153

bb.aq:                                            ; preds = %bb.ao
  %i.fo = icmp ne i32 %.sroa.12.2158, 0
  %i.fp = icmp ugt i64 %.sroa.03.0.copyload, 4294967295
  %or.cond.i150 = and i1 %i.fo, %i.fp
  br i1 %or.cond.i150, label %av_cmp_q.exit153, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fq = icmp ne i32 %.sroa.011.0.extract.trunc.i144, 0
  %i.fr = icmp ne i32 %.sroa.019.2156, 0
  %or.cond5.i151 = and i1 %i.fr, %i.fq
  br i1 %or.cond5.i151, label %bb.as, label %av_cmp_q.exit153

bb.as:                                            ; preds = %bb.ar
  %i.fs = ashr i32 %.sroa.011.0.extract.trunc.i144, 31
  %.neg.i152 = lshr i32 %.sroa.019.2156, 31
  %i.ft = add nsw i32 %i.fs, %.neg.i152
  br label %av_cmp_q.exit153

av_cmp_q.exit153:                                 ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i149 = phi i32 [ %i.fn, %bb.ap ], [ 0, %bb.aq ], [ %i.ft, %bb.as ], [ -2147483648, %bb.ar ]
  %i.fu = icmp sgt i32 %.0.i149, 0                ; 2 uses
  %.sroa.12.0.extract.shift = lshr i64 %.sroa.03.0.copyload, 32
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32
  %.sroa.019.3 = select i1 %i.fu, i32 %.sroa.011.0.extract.trunc.i144, i32 %.sroa.019.2156 ; 2 uses
  %.sroa.12.3 = select i1 %i.fu, i32 %.sroa.12.0.extract.trunc, i32 %.sroa.12.2158 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.ao, !llvm.loop !72

..loopexit_crit_edge:                             ; preds = %av_cmp_q.exit153
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.12.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.sroa.019.3, ptr %i.fv, align 8, !tbaa !32
  store i32 %.sroa.12.3, ptr %.sroa.12.0..sroa_idx55, align 4, !tbaa !32
  %.pre = load i64, ptr %i.fv, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %bb.an
  %i.fw = phi i64 [ 0, %.preheader ], [ %i.eh, %..loopexit_crit_edge ], [ %i.ez, %bb.an ]
  %i.fx = phi i64 [ 0, %.preheader ], [ %.pre, %..loopexit_crit_edge ], [ %i.ev, %bb.an ]
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fz = tail call i64 @av_mul_q(i64 4294977296, i64 %i.fx) #17
  store i64 %i.fz, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gb = tail call i64 @av_mul_q(i64 4294977296, i64 %i.fw) #17
  store i64 %i.gb, ptr %i.ga, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.am, %.loopexit, %bb.ab, %bb.aa, %bb.z
  %i.gc = icmp eq i32 %i.at, 16
  br i1 %i.gc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge
  store i64 4294967296, ptr %i.bg, align 8
  br label %bb.au

bb.au:                                            ; preds = %.critedge, %bb.at
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @av_csp_primaries_desc_from_id(i32 noundef) local_unnamed_addr #3

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @av_csp_luma_coeffs_from_avcsp(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_add_q(i64, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_mul_q(i64, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_div_q(i64, i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @ff_fmt_from_pixfmt(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 136)) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %.sroa.3.0..sroa_idx.i.a, align 4, !tbaa !32
  %.sroa.31.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store i32 0, ptr %.sroa.31.0..sroa_idx.i.a, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  store i32 2, ptr %.sroa.4.0..sroa_idx.i.a, align 4, !tbaa !32
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.62.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.a, i8 0, i64 16, i1 false)
  store i32 2, ptr %.sroa.62.0..sroa_idx.i.a, align 8, !tbaa !32
  %.sroa.7.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  store i32 2, ptr %.sroa.7.0..sroa_idx.i.a, align 4, !tbaa !32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i, i8 0, i64 80, i1 false)
  store i32 %0, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  %i.a = tail call ptr @av_pix_fmt_desc_get(i32 noundef %0) #15 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.a, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = and i64 %i.d, 290
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.a, align 4, !tbaa !52
  store i32 2, ptr %.sroa.31.0..sroa_idx.i.a, align 8, !tbaa !43
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, 1024
  %.not17.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %.sroa.4.0..sroa_idx.i.a, align 4, !tbaa !52
  store i32 1, ptr %.sroa.62.0..sroa_idx.i.a, align 8, !tbaa !32
  store i32 17, ptr %.sroa.7.0..sroa_idx.i.a, align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.8.0..sroa_idx.i, i8 0, i64 80, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !53
  %i.i = icmp ult i8 %i.h, 3
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %.sroa.62.0..sroa_idx.i.a, align 8, !tbaa !54
  store i32 2, ptr %.sroa.4.0..sroa_idx.i.a, align 4, !tbaa !52
  %i.j = and i64 %i.d, 512
  %.not18.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.31.0..sroa_idx.i.a, align 8, !tbaa !43
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %.sroa.31.0..sroa_idx.i.a, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %i.k = tail call i32 @av_pix_fmt_desc_get_id(ptr noundef nonnull %i.a) #15
  switch i32 %i.k, label %bb.k [
    i32 12, label %bb.j
    i32 138, label %bb.j
    i32 13, label %bb.j
    i32 14, label %bb.j
    i32 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  store i32 2, ptr %.sroa.31.0..sroa_idx.i.a, align 8, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !55
  %.not19.i = icmp eq i8 %i.m, 0
  br i1 %.not19.i, label %bb.l, label %sanitize_fmt.exit

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.o = load i8, ptr %i.n, align 2, !tbaa !56
  %.not20.i = icmp eq i8 %i.o, 0
  br i1 %.not20.i, label %bb.m, label %sanitize_fmt.exit

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.a, align 8, !tbaa !57
  br label %sanitize_fmt.exit

sanitize_fmt.exit:                                ; preds = %bb.k, %bb.l, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ff_infer_colors(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !47     ; 2 uses
  %.not.i = icmp eq i32 %i.a, 2
  br i1 %.not.i, label %bb.b, label %infer_prim_ref.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !47     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store i32 %i.b, ptr %1, align 4, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 4, !tbaa !47
  %i.e = tail call ptr @av_csp_primaries_desc_from_id(i32 noundef 1) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre36.pre.pre = load i32, ptr %1, align 4, !tbaa !47
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.pre36.pre = phi i32 [ %i.b, %bb.c ], [ %.pre36.pre.pre, %bb.d ]
  %.sink.i = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.c, ptr noundef nonnull align 4 dereferenceable(48) %.sink.i, i64 48, i1 false)
  br label %infer_prim_ref.exit

infer_prim_ref.exit:                              ; preds = %bb.a, %.sink.split.i
  %.pre36 = phi i32 [ %i.a, %bb.a ], [ %.pre36.pre, %.sink.split.i ] ; 4 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %.sink.split.i ]
  %i.g = load i32, ptr %0, align 4, !tbaa !47
  %.not.i19 = icmp eq i32 %i.g, 2
  br i1 %.not.i19, label %bb.e, label %infer_prim_ref.exit23.thread

bb.e:                                             ; preds = %infer_prim_ref.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  switch i32 %.pre36, label %bb.g [
    i32 1, label %bb.f
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store i32 %.pre36, ptr %0, align 4, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %infer_prim_ref.exit23

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %0, align 4, !tbaa !47
  %i.j = tail call ptr @av_csp_primaries_desc_from_id(i32 noundef 1) #15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pr.pr = load i32, ptr %0, align 4, !tbaa !47
  br label %infer_prim_ref.exit23

infer_prim_ref.exit23:                            ; preds = %bb.f, %bb.g
  %.pr = phi i32 [ %.pre36, %bb.f ], [ %.pr.pr, %bb.g ]
  %.sink.i22 = phi ptr [ %i.i, %bb.f ], [ %i.k, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(48) %.sink.i22, i64 48, i1 false)
  %.not = icmp eq i32 %.pr, 2
  br i1 %.not, label %bb.h, label %infer_prim_ref.exit23.infer_prim_ref.exit23.thread_crit_edge

infer_prim_ref.exit23.infer_prim_ref.exit23.thread_crit_edge: ; preds = %infer_prim_ref.exit23
  %.pre = load i32, ptr %1, align 4, !tbaa !47
  br label %infer_prim_ref.exit23.thread

bb.h:                                             ; preds = %infer_prim_ref.exit23
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 543) #15
  tail call void @abort() #16
  unreachable

infer_prim_ref.exit23.thread:                     ; preds = %infer_prim_ref.exit23.infer_prim_ref.exit23.thread_crit_edge, %infer_prim_ref.exit
  %i.l = phi i32 [ %.pre, %infer_prim_ref.exit23.infer_prim_ref.exit23.thread_crit_edge ], [ %.pre36, %infer_prim_ref.exit ]
  %.0.i2031 = phi i32 [ 1, %infer_prim_ref.exit23.infer_prim_ref.exit23.thread_crit_edge ], [ %.0.i, %infer_prim_ref.exit ]
  %.not16 = icmp eq i32 %i.l, 2
  br i1 %.not16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %infer_prim_ref.exit23.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 544) #15
  tail call void @abort() #16
  unreachable

bb.j:                                             ; preds = %infer_prim_ref.exit23.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49   ; 2 uses
  %.not.i24 = icmp eq i32 %i.n, 2
  br i1 %.not.i24, label %bb.k, label %infer_trc_ref.exit

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !49   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  switch i32 %i.p, label %bb.m [
    i32 2, label %bb.l
    i32 16, label %bb.l
    i32 18, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  store i32 1, ptr %i.m, align 4, !tbaa !49
  store i64 4294967296, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 4294967499, ptr %i.r, align 4
  br label %infer_trc_ref.exit

bb.m:                                             ; preds = %bb.k
  store i32 %i.p, ptr %i.m, align 4, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i64, ptr %i.s, align 4
  store i64 %i.t, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load i64, ptr %i.v, align 4
  store i64 %i.w, ptr %i.u, align 4
  br label %infer_trc_ref.exit

infer_trc_ref.exit:                               ; preds = %bb.j, %bb.l, %bb.m
  %i.x = phi i32 [ %i.n, %bb.j ], [ %i.p, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %.0.i25 = phi i32 [ %.0.i2031, %bb.j ], [ 1, %bb.m ], [ 1, %bb.l ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !49
  %.not.i26 = icmp eq i32 %i.z, 2
  br i1 %.not.i26, label %bb.n, label %infer_trc_ref.exit28.thread

bb.n:                                             ; preds = %infer_trc_ref.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  switch i32 %i.x, label %infer_trc_ref.exit28 [
    i32 2, label %bb.o
    i32 16, label %bb.o
    i32 18, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  store i32 1, ptr %i.y, align 4, !tbaa !49
  store i64 4294967296, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 4294967499, ptr %i.ab, align 4
  br label %infer_trc_ref.exit28.thread

infer_trc_ref.exit28:                             ; preds = %bb.n
  store i32 %i.x, ptr %i.y, align 4, !tbaa !49
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i64, ptr %i.ac, align 4
  store i64 %i.ad, ptr %i.aa, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i64, ptr %i.af, align 4
  store i64 %i.ag, ptr %i.ae, align 4
  br label %infer_trc_ref.exit28.thread

infer_trc_ref.exit28.thread:                      ; preds = %infer_trc_ref.exit28, %bb.o, %infer_trc_ref.exit
  %.0.i2735 = phi i32 [ 1, %infer_trc_ref.exit28 ], [ 1, %bb.o ], [ %.0.i25, %infer_trc_ref.exit ]
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !49
  %.not18 = icmp eq i32 %i.ah, 2
  br i1 %.not18, label %bb.p, label %bb.q

bb.p:                                             ; preds = %infer_trc_ref.exit28.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 549) #15
  tail call void @abort() #16
  unreachable

bb.q:                                             ; preds = %infer_trc_ref.exit28.thread
  %i.ai = icmp ne i32 %.0.i2735, 0
  ret i1 %i.ai
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ff_sws_test_pixfmt_backend(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.SwsReadWriteOp, align 8     ; 4 uses
  %4 = alloca %struct.SwsSwizzleOp, align 4       ; 3 uses
  %5 = alloca %struct.SwsPackOp, align 1          ; 3 uses
  %6 = alloca %struct.SwsShiftOp, align 1         ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = and i32 %0, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %test_format_legacy.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  %i.d = icmp ult i32 %1, 266                     ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.c

end_hunk_1
