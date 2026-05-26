inline.NumInlined: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TR = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16
@NOUPPER = external local_unnamed_addr global i32, align 4
@WORDBOUND = external local_unnamed_addr global i32, align 4
@WHOLELINE = external local_unnamed_addr global i32, align 4
@SILENT = external local_unnamed_addr global i32, align 4
@COUNT = external local_unnamed_addr global i32, align 4
@FNAME = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = external global [0 x i8], align 1
@shift_1 = dso_local local_unnamed_addr global i32 0, align 4
@SHIFT = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16
@num_of_matched = external local_unnamed_addr global i32, align 4
@FILENAMEONLY = external local_unnamed_addr global i32, align 4
@MEMBER = dso_local local_unnamed_addr global [8192 x i8] zeroinitializer, align 16
@endposition = external local_unnamed_addr global i32, align 4
@Mask = external local_unnamed_addr global [0 x i32], align 4
@Hashmask = dso_local local_unnamed_addr global i32 0, align 4
@MEMBER_1 = dso_local local_unnamed_addr global [65536 x i8] zeroinitializer, align 16
@SHIFT_2 = dso_local local_unnamed_addr global [4096 x i8] zeroinitializer, align 16
@char_map = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16
@MEMBER_D = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@BSize = dso_local local_unnamed_addr global i8 0, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Progname = external global [0 x i8], align 1
@DNA = external local_unnamed_addr global i32, align 4
@pat = dso_local local_unnamed_addr global [256 x i8] zeroinitializer, align 16
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @char_tr(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
vector.ph:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr @TR, align 16, !tbaa !8
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 16), align 16, !tbaa !8
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 32), align 16, !tbaa !8
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 48), align 16, !tbaa !8
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 64), align 16, !tbaa !8
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 80), align 16, !tbaa !8
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 96), align 16, !tbaa !8
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 112), align 16, !tbaa !8
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 128), align 16, !tbaa !8
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 144), align 16, !tbaa !8
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 160), align 16, !tbaa !8
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 176), align 16, !tbaa !8
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 192), align 16, !tbaa !8
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 208), align 16, !tbaa !8
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 224), align 16, !tbaa !8
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 240), align 16, !tbaa !8
  %i.b = load i32, ptr @NOUPPER, align 4, !tbaa !4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit26, label %.preheader25.preheader

.preheader25.preheader:                           ; preds = %vector.ph
  store <16 x i8> <i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 65), align 1, !tbaa !8
  store <8 x i8> <i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120>, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 81), align 1, !tbaa !8
  store i8 121, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 89), align 1, !tbaa !8
  store i8 122, ptr getelementptr inbounds nuw (i8, ptr @TR, i64 90), align 2, !tbaa !8
  br label %.loopexit26

.loopexit26:                                      ; preds = %.preheader25.preheader, %vector.ph
  %i.c = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit26
  %i.d = tail call ptr @__ctype_b_loc() #20       ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.preheader
  %indvars.iv35 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next36.1, %bb.e ] ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv35
  %i.g = load i16, ptr %i.f, align 2, !tbaa !12
  %i.h = and i16 %i.g, 8
  %.not24 = icmp eq i16 %i.h, 0
  br i1 %.not24, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr @TR, i64 %indvars.iv35
  store i8 -128, ptr %i.i, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv.next36 = or disjoint i64 %indvars.iv35, 1 ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv.next36
  %i.l = load i16, ptr %i.k, align 2, !tbaa !12
  %i.m = and i16 %i.l, 8
  %.not24.1 = icmp eq i16 %i.m, 0
  br i1 %.not24.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr @TR, i64 %indvars.iv.next36
  store i8 -128, ptr %i.n, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next36.1 = add nuw nsw i64 %indvars.iv35, 2 ; 2 uses
  %exitcond38.not.1 = icmp eq i64 %indvars.iv.next36.1, 128
  br i1 %exitcond38.not.1, label %.loopexit, label %bb.a, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e, %.loopexit26
  %i.o = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not23 = icmp eq i32 %i.o, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.p = load i32, ptr %1, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %0, i64 %i.q, i1 false)
  store i8 10, ptr %0, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.s = load i32, ptr %1, align 4, !tbaa !4
  %i.t = sext i32 %i.s to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 16 %i.a, i64 %i.t, i1 false)
  %i.u = load i32, ptr %1, align 4, !tbaa !4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 1
  store i8 10, ptr %i.x, align 1, !tbaa !8
  %i.y = load i32, ptr %1, align 4, !tbaa !4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 2
  store i8 0, ptr %i.ab, align 1, !tbaa !8
  %i.ac = load i32, ptr %1, align 4, !tbaa !4
  %i.ad = add nsw i32 %i.ac, 2
  store i32 %i.ad, ptr %1, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @s_output(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @SILENT, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.c, label %.preheader17

.preheader17:                                     ; preds = %bb.b
  %.promoted = load i32, ptr %1, align 4, !tbaa !4
  %i.c = sext i32 %.promoted to i64               ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %.not1619 = icmp eq i8 %i.e, 10
  br i1 %.not1619, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.c, %.preheader17 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.f = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.f, ptr %1, align 4, !tbaa !4
  %i.g = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %.not16 = icmp eq i8 %i.h, 10
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @FNAME, align 4, !tbaa !4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i32, ptr %1, align 4, !tbaa !4
  %i.m = sext i32 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %bb.f ], [ %i.m, %bb.e ] ; 4 uses
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %.not14 = icmp eq i8 %i.o, 10
  br i1 %.not14, label %.preheader, label %bb.f, !llvm.loop !17

.preheader:                                       ; preds = %bb.f
  %sext = shl i64 %indvars.iv24, 32
  %i.p = ashr exact i64 %sext, 32
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 2 uses
  %.not1520 = icmp eq i8 %i.r, 10
  br i1 %.not1520, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.preheader, %.lr.ph21
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph21 ], [ %indvars.iv24, %.preheader ]
  %i.s = phi i8 [ %i.x, %.lr.ph21 ], [ %i.r, %.preheader ]
  %i.t = zext i8 %i.s to i32
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.v = tail call noundef i32 @putc(i32 noundef %i.t, ptr noundef %i.u), !inline_history !20 ; 0 uses
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %.not15 = icmp eq i8 %i.x, 10
  br i1 %.not15, label %._crit_edge, label %.lr.ph21, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph21, %.preheader
  %.lcssa.in = phi i64 [ %indvars.iv24, %.preheader ], [ %indvars.iv.next28, %.lr.ph21 ]
  %.lcssa = trunc i64 %.lcssa.in to i32
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.z = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.y), !inline_history !20 ; 0 uses
  store i32 %.lcssa, ptr %1, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader17, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 17 uses
  %i.b = alloca [256 x i32], align 16             ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %4, i64 %i.c
  %.not134 = icmp slt i32 %0, -1                  ; 3 uses
  br i1 %.not134, label %.preheader130, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i32 %0, 2                            ; 2 uses
  %wide.trip.count = zext i32 %i.e to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind, ptr %i.f, align 16, !tbaa !4
  store <4 x i32> %step.add, ptr %i.g, align 16, !tbaa !4
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %vec.ind, ptr %i.h, align 16, !tbaa !4
  store <4 x i32> %step.add, ptr %i.i, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader130, label %.lr.ph.preheader241

.lr.ph.preheader241:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader130:                                    ; preds = %.lr.ph, %middle.block, %bb.a
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.preheader129.lr.ph, label %.loopexit131

.preheader129.lr.ph:                              ; preds = %.preheader130
  %i.l = add i32 %0, 2                            ; 4 uses
  %.pre.pre = load i8, ptr %4, align 1, !tbaa !8
  %wide.trip.count171 = zext i32 %i.l to i64      ; 5 uses
  %wide.trip.count184 = zext i32 %i.l to i64
  %min.iters.check222 = icmp ult i32 %i.l, 8
  %n.vec225 = and i64 %wide.trip.count171, 4294967288 ; 3 uses
  %cmp.n233 = icmp eq i64 %n.vec225, %wide.trip.count171
  %min.iters.check208 = icmp ult i32 %i.l, 8
  %n.vec211 = and i64 %wide.trip.count171, 4294967288 ; 3 uses
  %cmp.n219 = icmp eq i64 %n.vec211, %wide.trip.count171
  br label %.preheader129

.lr.ph:                                           ; preds = %.lr.ph.preheader241, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader241 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.n, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.preheader130, label %.lr.ph, !llvm.loop !25

.preheader129:                                    ; preds = %.preheader129.lr.ph, %.loopexit
  %.pre = phi i8 [ %.pre.pre, %.preheader129.lr.ph ], [ %i.cv, %.loopexit ] ; 2 uses
  %.095151 = phi ptr [ %4, %.preheader129.lr.ph ], [ %i.by, %.loopexit ] ; 2 uses
  %.096150 = phi i32 [ %2, %.preheader129.lr.ph ], [ %.8, %.loopexit ] ; 5 uses
  %.not116136 = icmp slt i32 %.096150, 1
  br i1 %.not116136, label %._crit_edge, label %.lr.ph138

.lr.ph138:                                        ; preds = %.preheader129
  %i.p = add nuw i32 %.096150, 1
  %wide.trip.count163 = zext i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph138, %bb.d
  %indvars.iv160 = phi i64 [ 1, %.lr.ph138 ], [ %indvars.iv.next161, %bb.d ] ; 4 uses
  %i.q = add nsw i64 %indvars.iv160, -1           ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %3, i64 %i.q
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %.not123 = icmp eq i8 %i.u, %.pre
  br i1 %.not123, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv160
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.s)
  %i.x = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %spec.select125.v = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %spec.select)
  %spec.select125 = add nsw i32 %spec.select125.v, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1103 = phi i32 [ %i.s, %bb.b ], [ %spec.select125, %bb.c ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv160
  store i32 %.1103, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge, label %bb.b, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d, %.preheader129
  %i.aa = sext i32 %.096150 to i64                ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %3, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.095151, i64 1 ; 2 uses
  %i.ae = icmp eq i8 %i.ac, %.pre
  br i1 %i.ae, label %bb.e, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aa
  %.pre186 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 2 uses
  %i.ah = add nsw i32 %.096150, 1                 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ai
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge._crit_edge, %bb.e
  %i.ak = phi i32 [ %i.ag, %bb.e ], [ %.pre186, %._crit_edge._crit_edge ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ai, %bb.e ], [ %i.aa, %._crit_edge._crit_edge ]
  %.1 = phi i32 [ %i.ah, %bb.e ], [ %.096150, %._crit_edge._crit_edge ] ; 2 uses
  %i.al = icmp slt i32 %i.ak, %2
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre-phi
  %i.an = add nsw i32 %.1, 1
  %i.ao = add nsw i32 %i.ak, 1
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %i.an, %bb.g ], [ %.1, %bb.f ]
  %i.aq = sext i32 %.2 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.i ], [ %i.aq, %bb.h ] ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv165
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = icmp sgt i32 %i.as, %2
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, -1
  br i1 %i.at, label %bb.i, label %bb.j, !llvm.loop !27

bb.j:                                             ; preds = %bb.i
  %i.au = trunc nsw i64 %indvars.iv165 to i32     ; 2 uses
  %.not117 = icmp sgt i32 %0, %i.au
  br i1 %.not117, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = ptrtoint ptr %i.ad to i64
  %i.aw = ptrtoint ptr %4 to i64
  %i.ax = xor i64 %i.aw, -1
  %i.ay = add i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i32
  br label %.loopexit131

bb.l:                                             ; preds = %bb.j
  %i.ba = load i8, ptr %i.ad, align 1, !tbaa !8   ; 3 uses
  %i.bb = icmp ne i8 %i.ba, 10                    ; 2 uses
  %brmerge = or i1 %i.bb, %.not134
  %.3.lcssa.mux = select i1 %i.bb, i32 %i.au, i32 %2
  br i1 %brmerge, label %.loopexit128, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %bb.l
  br i1 %min.iters.check222, label %.lr.ph141.preheader236, label %vector.body226

vector.body226:                                   ; preds = %.lr.ph141.preheader, %vector.body226
  %index227 = phi i64 [ %index.next230, %vector.body226 ], [ 0, %.lr.ph141.preheader ] ; 3 uses
  %vec.ind228 = phi <4 x i32> [ %vec.ind.next231, %vector.body226 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph141.preheader ] ; 4 uses
  %step.add229 = add <4 x i32> %vec.ind228, splat (i32 4) ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index227 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <4 x i32> %vec.ind228, ptr %i.bc, align 16, !tbaa !4
  store <4 x i32> %step.add229, ptr %i.bd, align 16, !tbaa !4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index227 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %vec.ind228, ptr %i.be, align 16, !tbaa !4
  store <4 x i32> %step.add229, ptr %i.bf, align 16, !tbaa !4
  %index.next230 = add nuw i64 %index227, 8       ; 2 uses
  %vec.ind.next231 = add <4 x i32> %vec.ind228, splat (i32 8)
  %i.bg = icmp eq i64 %index.next230, %n.vec225
  br i1 %i.bg, label %middle.block232, label %vector.body226, !llvm.loop !28

middle.block232:                                  ; preds = %vector.body226
  br i1 %cmp.n233, label %.loopexit128, label %.lr.ph141.preheader236

.lr.ph141.preheader236:                           ; preds = %.lr.ph141.preheader, %middle.block232
  %indvars.iv168.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec225, %middle.block232 ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader236, %.lr.ph141
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %.lr.ph141 ], [ %indvars.iv168.ph, %.lr.ph141.preheader236 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv168
  %i.bi = trunc nuw nsw i64 %indvars.iv168 to i32 ; 2 uses
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv168
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172 = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172, label %.loopexit128, label %.lr.ph141, !llvm.loop !29

.loopexit128:                                     ; preds = %.lr.ph141, %middle.block232, %bb.l
  %.4 = phi i32 [ %.3.lcssa.mux, %bb.l ], [ %2, %middle.block232 ], [ %2, %.lr.ph141 ] ; 5 uses
  %.not119142 = icmp slt i32 %.4, 1
  br i1 %.not119142, label %._crit_edge146, label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %.loopexit128
  %i.bk = add nuw i32 %.4, 1
  %wide.trip.count176 = zext i32 %i.bk to i64
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %bb.n
  %indvars.iv173 = phi i64 [ 1, %.lr.ph145.preheader ], [ %indvars.iv.next174, %bb.n ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv173, -1          ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %.not122 = icmp eq i8 %i.bp, %i.ba
  br i1 %.not122, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph145
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv173
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %spec.select124 = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bn)
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bl
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %spec.select126.v = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %spec.select124)
  %spec.select126 = add nsw i32 %spec.select126.v, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph145
  %.3105 = phi i32 [ %i.bn, %.lr.ph145 ], [ %spec.select126, %bb.m ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv173
  store i32 %.3105, ptr %i.bu, align 4, !tbaa !4
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge146, label %.lr.ph145, !llvm.loop !30

._crit_edge146:                                   ; preds = %bb.n, %.loopexit128
  %i.bv = sext i32 %.4 to i64                     ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %.095151, i64 2 ; 4 uses
  %i.bz = icmp eq i8 %i.bx, %i.ba
  br i1 %i.bz, label %bb.o, label %._crit_edge146._crit_edge

._crit_edge146._crit_edge:                        ; preds = %._crit_edge146
  %.phi.trans.insert188 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bv
  %.pre189 = load i32, ptr %.phi.trans.insert188, align 4, !tbaa !4
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge146
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4  ; 2 uses
  %i.cc = add nsw i32 %.4, 1                      ; 2 uses
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge146._crit_edge, %bb.o
  %i.cf = phi i32 [ %i.cb, %bb.o ], [ %.pre189, %._crit_edge146._crit_edge ] ; 2 uses
  %.pre-phi187 = phi i64 [ %i.cd, %bb.o ], [ %i.bv, %._crit_edge146._crit_edge ]
  %.5 = phi i32 [ %i.cc, %bb.o ], [ %.4, %._crit_edge146._crit_edge ] ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %2
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre-phi187
  %i.ci = add nsw i32 %.5, 1
  %i.cj = add nsw i32 %i.cf, 1
  %i.ck = getelementptr i8, ptr %i.ch, i64 8
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6 = phi i32 [ %i.ci, %bb.q ], [ %.5, %bb.p ]
  %i.cl = sext i32 %.6 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %bb.s ], [ %i.cl, %bb.r ] ; 3 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv178
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = icmp sgt i32 %i.cn, %2
  %indvars.iv.next179 = add nsw i64 %indvars.iv178, -1
  br i1 %i.co, label %bb.s, label %bb.t, !llvm.loop !31

bb.t:                                             ; preds = %bb.s
  %i.cp = trunc nsw i64 %indvars.iv178 to i32     ; 2 uses
  %.not120 = icmp sgt i32 %0, %i.cp
  br i1 %.not120, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = ptrtoint ptr %i.by to i64
  %i.cr = ptrtoint ptr %4 to i64
  %i.cs = xor i64 %i.cr, -1
  %i.ct = add i64 %i.cq, %i.cs
  %i.cu = trunc i64 %i.ct to i32
  br label %.loopexit131

bb.v:                                             ; preds = %bb.t
  %i.cv = load i8, ptr %i.by, align 1, !tbaa !8   ; 2 uses
  %i.cw = icmp ne i8 %i.cv, 10                    ; 2 uses
  %brmerge154 = or i1 %i.cw, %.not134
  %.7.lcssa.mux = select i1 %i.cw, i32 %i.cp, i32 %2
  br i1 %brmerge154, label %.loopexit, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %bb.v
  br i1 %min.iters.check208, label %.lr.ph149.preheader235, label %vector.body212

vector.body212:                                   ; preds = %.lr.ph149.preheader, %vector.body212
  %index213 = phi i64 [ %index.next216, %vector.body212 ], [ 0, %.lr.ph149.preheader ] ; 3 uses
  %vec.ind214 = phi <4 x i32> [ %vec.ind.next217, %vector.body212 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph149.preheader ] ; 4 uses
  %step.add215 = add <4 x i32> %vec.ind214, splat (i32 4) ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index213 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <4 x i32> %vec.ind214, ptr %i.cx, align 16, !tbaa !4
  store <4 x i32> %step.add215, ptr %i.cy, align 16, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index213 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %vec.ind214, ptr %i.cz, align 16, !tbaa !4
  store <4 x i32> %step.add215, ptr %i.da, align 16, !tbaa !4
  %index.next216 = add nuw i64 %index213, 8       ; 2 uses
  %vec.ind.next217 = add <4 x i32> %vec.ind214, splat (i32 8)
  %i.db = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.db, label %middle.block218, label %vector.body212, !llvm.loop !32

middle.block218:                                  ; preds = %vector.body212
  br i1 %cmp.n219, label %.loopexit, label %.lr.ph149.preheader235

.lr.ph149.preheader235:                           ; preds = %.lr.ph149.preheader, %middle.block218
  %indvars.iv181.ph = phi i64 [ 0, %.lr.ph149.preheader ], [ %n.vec211, %middle.block218 ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader235, %.lr.ph149
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph149 ], [ %indvars.iv181.ph, %.lr.ph149.preheader235 ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv181
  %i.dd = trunc nuw nsw i64 %indvars.iv181 to i32 ; 2 uses
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv181
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185 = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185, label %.loopexit, label %.lr.ph149, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph149, %middle.block218, %bb.v
  %.8 = phi i32 [ %.7.lcssa.mux, %bb.v ], [ %2, %middle.block218 ], [ %2, %.lr.ph149 ]
  %i.df = icmp ult ptr %i.by, %i.d
  br i1 %i.df, label %.preheader129, label %.loopexit131, !llvm.loop !34

.loopexit131:                                     ; preds = %.loopexit, %.preheader130, %bb.u, %bb.k
  %.0 = phi i32 [ %i.az, %bb.k ], [ %i.cu, %bb.u ], [ 0, %.preheader130 ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @bm(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(address) %2, ptr noundef readnone captures(address) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @shift_1, align 4, !tbaa !4
  %.not66 = icmp ugt ptr %2, %3
  br i1 %.not66, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = sub nsw i64 0, %i.b
  %zext = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph70, %.loopexit
  %.068 = phi ptr [ %2, %.lr.ph70 ], [ %.6, %.loopexit ]
  %.03467 = phi i32 [ 0, %.lr.ph70 ], [ %.236, %.loopexit ]
  %i.d = sext i32 %.03467 to i64
  %i.e = getelementptr inbounds i8, ptr %.068, i64 %i.d ; 3 uses
  %.pn.in56 = load i8, ptr %i.e, align 1, !tbaa !8
  %.pn57 = zext i8 %.pn.in56 to i64
  %.135.in.in58 = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %.pn57
  %.135.in59 = load i8, ptr %.135.in.in58, align 1, !tbaa !8 ; 2 uses
  %.not4360 = icmp eq i8 %.135.in59, 0
  br i1 %.not4360, label %.preheader54, label %.lr.ph

.preheader54:                                     ; preds = %.lr.ph, %bb.b
  %.1.lcssa = phi ptr [ %i.e, %bb.b ], [ %i.s, %.lr.ph ] ; 9 uses
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.135.in62 = phi i8 [ %.135.in, %.lr.ph ], [ %.135.in59, %bb.b ]
  %.161 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %bb.b ]
  %i.f = zext i8 %.135.in62 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.161, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r ; 3 uses
  %.pn.in = load i8, ptr %i.s, align 1, !tbaa !8
  %.pn = zext i8 %.pn.in to i64
  %.135.in.in = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %.pn
  %.135.in = load i8, ptr %.135.in.in, align 1, !tbaa !8 ; 2 uses
  %.not43 = icmp eq i8 %.135.in, 0
  br i1 %.not43, label %.preheader54, label %.lr.ph, !llvm.loop !35

bb.c:                                             ; preds = %.preheader54, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader54 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.u = xor i32 %i.t, -1
  %i.v = add i32 %1, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @TR, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = sub nsw i64 0, %indvars.iv
  %i.ad = getelementptr inbounds i8, ptr %.1.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @TR, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ab, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = icmp eq i64 %indvars.iv.next, %zext
  br i1 %i.aj, label %.thread, label %bb.c, !llvm.loop !36

bb.e:                                             ; preds = %bb.c
  %i.ak = icmp eq i32 %1, %i.t
  br i1 %i.ak, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.e
  %i.al = icmp ugt ptr %.1.lcssa, %3
  br i1 %i.al, label %._crit_edge71, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.am = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not44 = icmp eq i32 %i.am, 0
  br i1 %.not44, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @TR, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %.not45 = icmp eq i8 %i.ar, -128
  br i1 %.not45, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds i8, ptr %.1.lcssa, i64 %i.c
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @TR, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.not46 = icmp eq i8 %i.aw, -128
  br i1 %.not46, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ax = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr @num_of_matched, align 4, !tbaa !4
  %i.az = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not47 = icmp eq i32 %i.az, 0
  br i1 %.not47, label %bb.j, label %._crit_edge71

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not48 = icmp eq i32 %i.ba, 0
  br i1 %.not48, label %bb.k, label %.preheader53

bb.k:                                             ; preds = %bb.j
  %i.bb = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not49 = icmp eq i32 %i.bb, 0
  br i1 %.not49, label %.preheader85, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader85

.preheader85:                                     ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.preheader85, %bb.m
  %.2 = phi ptr [ %i.bd, %bb.m ], [ %.1.lcssa, %.preheader85 ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.2, i64 -1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %.not50 = icmp eq i8 %i.be, 10
  br i1 %.not50, label %.preheader, label %bb.m, !llvm.loop !37

.preheader:                                       ; preds = %bb.m
  %i.bf = load i8, ptr %.2, align 1, !tbaa !8     ; 2 uses
  %.not5163 = icmp eq i8 %i.bf, 10
  br i1 %.not5163, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader, %.lr.ph64
  %i.bg = phi i8 [ %i.bm, %.lr.ph64 ], [ %i.bf, %.preheader ]
  %i.bh = phi ptr [ %i.bl, %.lr.ph64 ], [ %.2, %.preheader ]
  %i.bi = zext i8 %i.bg to i32
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bk = tail call noundef i32 @putc(i32 noundef %i.bi, ptr noundef %i.bj), !inline_history !20 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8   ; 2 uses
  %.not51 = icmp eq i8 %i.bm, 10
  br i1 %.not51, label %._crit_edge, label %.lr.ph64, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph64, %.preheader
  %.lcssa55 = phi ptr [ %.2, %.preheader ], [ %i.bl, %.lr.ph64 ]
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bo = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bn), !inline_history !20 ; 0 uses
  br label %.loopexit

.preheader53:                                     ; preds = %bb.j, %.preheader53
  %.4 = phi ptr [ %i.bq, %.preheader53 ], [ %.1.lcssa, %bb.j ] ; 3 uses
  %i.bp = load i8, ptr %.4, align 1, !tbaa !8
  %.not52 = icmp eq i8 %i.bp, 10
  %i.bq = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br i1 %.not52, label %.loopexit, label %.preheader53, !llvm.loop !39

.loopexit:                                        ; preds = %.preheader53, %bb.e, %bb.g, %bb.h, %._crit_edge
  %.236 = phi i32 [ 1, %bb.g ], [ 1, %._crit_edge ], [ %i.a, %bb.e ], [ 1, %bb.h ], [ 1, %.preheader53 ]
  %.6 = phi ptr [ %.1.lcssa, %bb.g ], [ %.lcssa55, %._crit_edge ], [ %.1.lcssa, %bb.e ], [ %.1.lcssa, %bb.h ], [ %.4, %.preheader53 ] ; 2 uses
  %.not = icmp ugt ptr %.6, %3
  br i1 %.not, label %._crit_edge71, label %bb.b, !llvm.loop !40

._crit_edge71:                                    ; preds = %.thread, %bb.i, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @initmask(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %.neg = xor i32 %3, -1
  %.not48 = icmp slt i32 %3, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nuw i32 %3, 1                        ; 2 uses
  %min.iters.check = icmp ult i32 %3, 7
  br i1 %min.iters.check, label %.lr.ph.preheader175, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.a, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@prep:bb.a
  br i1 %or.cond, label %.preheader.lr.ph.us.preheader, label %._crit_edge105

.preheader.lr.ph.us.preheader:                    ; preds = %._crit_edge
  %wide.trip.count134 = zext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter151 = and i64 %wide.trip.count, 1
  %i.as = icmp eq i32 %2, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  %lcmp.mod155 = trunc i32 %i.a to i1
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge93.split.us108
  %.2102.us = phi i32 [ %i.cf, %._crit_edge93.split.us108 ], [ 0, %.preheader.lr.ph.us.preheader ] ; 3 uses
  %shift_1.promoted8699101.us = phi i32 [ %shift_1.promoted8696.us.lcssa, %._crit_edge93.split.us108 ], [ %i.b, %.preheader.lr.ph.us.preheader ] ; 2 uses
  %i.at = mul i32 %i.b, %.2102.us
  br label %.preheader.us106

.preheader.us106.new:                             ; preds = %.preheader.us106, %bb.i
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %bb.i ], [ 0, %.preheader.us106 ] ; 3 uses
  %shift_1.promoted8697.us = phi i32 [ %shift_1.promoted8696.us.1, %bb.i ], [ %shift_1.promoted8698.us, %.preheader.us106 ]
  %shift_1.promoted88.us = phi i32 [ %shift_1.promoted87.us.1, %bb.i ], [ %shift_1.promoted9091.us, %.preheader.us106 ]
  %i.au = phi i32 [ %i.bp, %bb.i ], [ %shift_1.promoted9091.us, %.preheader.us106 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.preheader.us106 ]
  %i.av = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.aw = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ax = mul i32 %i.b, %i.aw
  %i.ay = sub i32 %i.e, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = icmp eq i8 %i.av, %i.bb
  %i.bd = sext i32 %i.au to i64
  %i.be = icmp slt i64 %indvars.iv131, %i.bd
  %or.cond.us = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.us106.new
  store i32 %i.bq, ptr @shift_1, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.us106.new
  %shift_1.promoted8696.us = phi i32 [ %shift_1.promoted8697.us, %.preheader.us106.new ], [ %i.bq, %bb.f ]
  %shift_1.promoted87.us = phi i32 [ %shift_1.promoted88.us, %.preheader.us106.new ], [ %i.bq, %bb.f ]
  %i.bf = phi i32 [ %i.au, %.preheader.us106.new ], [ %i.bq, %bb.f ] ; 2 uses
  %i.bg = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bh = trunc i64 %indvars.iv128 to i32
  %.neg = xor i32 %i.bh, -1
  %.neg156 = mul i32 %i.b, %.neg
  %i.bi = add i32 %.neg156, %i.e
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = icmp eq i8 %i.bg, %i.bl
  %i.bn = sext i32 %i.bf to i64
  %i.bo = icmp slt i64 %indvars.iv131, %i.bn
  %or.cond.us.1 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond.us.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.bq, ptr @shift_1, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %shift_1.promoted8696.us.1 = phi i32 [ %shift_1.promoted8696.us, %bb.g ], [ %i.bq, %bb.h ] ; 3 uses
  %shift_1.promoted87.us.1 = phi i32 [ %shift_1.promoted87.us, %bb.g ], [ %i.bq, %bb.h ] ; 3 uses
  %i.bp = phi i32 [ %i.bf, %bb.g ], [ %i.bq, %bb.h ] ; 2 uses
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge85.us.unr-lcssa, label %.preheader.us106.new, !llvm.loop !50

.preheader.us106:                                 ; preds = %.preheader.lr.ph.us, %._crit_edge85.us
  %indvars.iv131 = phi i64 [ 1, %.preheader.lr.ph.us ], [ %indvars.iv.next132, %._crit_edge85.us ] ; 5 uses
  %shift_1.promoted8698.us = phi i32 [ %shift_1.promoted8699101.us, %.preheader.lr.ph.us ], [ %shift_1.promoted8696.us.lcssa, %._crit_edge85.us ] ; 2 uses
  %shift_1.promoted9091.us = phi i32 [ %shift_1.promoted8699101.us, %.preheader.lr.ph.us ], [ %shift_1.promoted87.us.lcssa, %._crit_edge85.us ] ; 4 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv131 to i32 ; 12 uses
  %i.br = add i32 %i.at, %i.bq
  %i.bs = sub i32 %i.e, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt ; 3 uses
  br i1 %i.as, label %.epil.preheader, label %.preheader.us106.new

._crit_edge85.us.unr-lcssa:                       ; preds = %bb.i
  br i1 %lcmp.mod152.not, label %._crit_edge85.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge85.us.unr-lcssa, %.preheader.us106
  %indvars.iv128.epil.init = phi i64 [ 0, %.preheader.us106 ], [ %indvars.iv.next129.1, %._crit_edge85.us.unr-lcssa ]
  %shift_1.promoted8697.us.epil.init = phi i32 [ %shift_1.promoted8698.us, %.preheader.us106 ], [ %shift_1.promoted8696.us.1, %._crit_edge85.us.unr-lcssa ]
  %shift_1.promoted88.us.epil.init = phi i32 [ %shift_1.promoted9091.us, %.preheader.us106 ], [ %shift_1.promoted87.us.1, %._crit_edge85.us.unr-lcssa ]
  %.epil.init = phi i32 [ %shift_1.promoted9091.us, %.preheader.us106 ], [ %i.bp, %._crit_edge85.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = trunc nuw nsw i64 %indvars.iv128.epil.init to i32
  %i.bx = mul i32 %i.b, %i.bw
  %i.by = sub i32 %i.e, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = icmp eq i8 %i.bv, %i.cb
  %i.cd = sext i32 %.epil.init to i64
  %i.ce = icmp slt i64 %indvars.iv131, %i.cd
  %or.cond.us.epil = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %or.cond.us.epil, label %bb.j, label %._crit_edge85.us

bb.j:                                             ; preds = %.epil.preheader
  store i32 %i.bq, ptr @shift_1, align 4, !tbaa !4
  br label %._crit_edge85.us

._crit_edge85.us:                                 ; preds = %.epil.preheader, %bb.j, %._crit_edge85.us.unr-lcssa
  %shift_1.promoted8696.us.lcssa = phi i32 [ %shift_1.promoted8696.us.1, %._crit_edge85.us.unr-lcssa ], [ %shift_1.promoted8697.us.epil.init, %.epil.preheader ], [ %i.bq, %bb.j ] ; 3 uses
  %shift_1.promoted87.us.lcssa = phi i32 [ %shift_1.promoted87.us.1, %._crit_edge85.us.unr-lcssa ], [ %shift_1.promoted88.us.epil.init, %.epil.preheader ], [ %i.bq, %bb.j ]
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge93.split.us108, label %.preheader.us106, !llvm.loop !51

._crit_edge93.split.us108:                        ; preds = %._crit_edge85.us
  %i.cf = add nuw i32 %.2102.us, 1
  %exitcond136.not = icmp eq i32 %.2102.us, %2
  br i1 %exitcond136.not, label %._crit_edge105, label %.preheader.lr.ph.us, !llvm.loop !52

._crit_edge105:                                   ; preds = %._crit_edge93.split.us108, %._crit_edge
  %i.cg = phi i32 [ %i.b, %._crit_edge ], [ %shift_1.promoted8696.us.lcssa, %._crit_edge93.split.us108 ]
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge105
  store i32 1, ptr @shift_1, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @MEMBER, i8 0, i64 8192, i1 false), !tbaa !8
  br i1 %.not72100, label %.lr.ph120, label %._crit_edge121

.lr.ph120:                                        ; preds = %bb.l
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.lr.ph120.split, label %.lr.ph114.us.preheader

.lr.ph114.us.preheader:                           ; preds = %.lr.ph120
  %exitcond144.not = icmp eq i32 %i.b, 1
  %exitcond144.not.1 = icmp eq i32 %i.b, 2
  br label %.lr.ph114.us

.lr.ph114.us:                                     ; preds = %.lr.ph114.us.preheader, %._crit_edge115.us
  %.4118.us = phi i32 [ %i.df, %._crit_edge115.us ], [ 0, %.lr.ph114.us.preheader ] ; 3 uses
  %i.ci = mul i32 %i.b, %.4118.us                 ; 3 uses
  %i.cj = sub i32 %i.e, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  br i1 %exitcond144.not, label %._crit_edge115.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph114.us
  %i.co = shl nuw nsw i32 %i.cn, 2
  %.neg157 = xor i32 %i.ci, -1
  %i.cp = add i32 %i.e, %.neg157
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !8
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.co, %i.ct            ; 2 uses
  br i1 %exitcond144.not.1, label %._crit_edge115.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = shl nuw nsw i32 %i.cu, 2
  %i.cw = add i32 %i.ci, 2
  %i.cx = sub i32 %i.e, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %0, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.cv, %i.db
  br label %._crit_edge115.us

._crit_edge115.us:                                ; preds = %bb.n, %bb.m, %.lr.ph114.us
  %.lcssa = phi i32 [ %i.cn, %.lr.ph114.us ], [ %i.cu, %bb.m ], [ %i.dc, %bb.n ]
  %i.dd = zext i32 %.lcssa to i64
  %i.de = getelementptr inbounds nuw i8, ptr @MEMBER, i64 %i.dd
  store i8 1, ptr %i.de, align 1, !tbaa !8
  %i.df = add nuw i32 %.4118.us, 1
  %exitcond145.not = icmp eq i32 %.4118.us, %2
  br i1 %exitcond145.not, label %._crit_edge121, label %.lr.ph114.us, !llvm.loop !53

.lr.ph120.split:                                  ; preds = %.lr.ph120
  store i8 1, ptr @MEMBER, align 16, !tbaa !8
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge115.us, %.lr.ph120.split, %bb.l
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @agrep(ptr readnone captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [2048 x [2 x i32]], align 16      ; 10 uses
  %i.b = alloca [21 x i32], align 16              ; 21 uses
  %i.c = alloca [21 x i32], align 16              ; 20 uses
  %i.d = add i32 %4, 1                            ; 2 uses
  %i.e = sdiv i32 %1, %i.d                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !4
  store i32 0, ptr %i.a, align 16, !tbaa !4
  %i.g = load i32, ptr @shift_1, align 4, !tbaa !4 ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.e, i32 3) ; 3 uses
  %i.h = icmp ult ptr %2, %3
  br i1 %i.h, label %.lr.ph238, label %.._crit_edge239_crit_edge

.._crit_edge239_crit_edge:                        ; preds = %bb.a
  %.pre = ptrtoint ptr %2 to i64
  br label %._crit_edge239

.lr.ph238:                                        ; preds = %bb.a
  %i.i = add nsw i32 %i.e, -1                     ; 2 uses
  %i.j = icmp ugt i32 %., 1
  %i.k = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.l = add i32 %4, %1                           ; 6 uses
  br i1 %i.j, label %.lr.ph238.split.us.preheader, label %.lr.ph238.split.preheader

.lr.ph238.split.preheader:                        ; preds = %.lr.ph238
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not343 = icmp ult ptr %i.n, %3
  br i1 %.not343, label %.lr.ph345.preheader, label %._crit_edge239

.lr.ph345.preheader:                              ; preds = %.lr.ph238.split.preheader
  %i.o = sext i32 %i.g to i64
  br label %.lr.ph345

.lr.ph238.split.us.preheader:                     ; preds = %.lr.ph238
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p ; 2 uses
  %.not.us347 = icmp ult ptr %i.q, %3
  br i1 %.not.us347, label %.lr.ph349.preheader, label %._crit_edge239

.lr.ph349.preheader:                              ; preds = %.lr.ph238.split.us.preheader
  %wide.trip.count = zext i32 %. to i64
  %i.r = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = add i32 %., -2
  %i.t = icmp ult i32 %i.s, 3
  %unroll_iter = and i64 %i.r, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod356 = icmp ne i64 %xtraiter, 0
  %i.u = sext i32 %i.g to i64
  br label %.lr.ph349

.lr.ph349:                                        ; preds = %.lr.ph349.preheader, %.lr.ph238.split.us
  %i.v = phi ptr [ %i.bh, %.lr.ph238.split.us ], [ %i.q, %.lr.ph349.preheader ] ; 3 uses
  %.0152234.us348 = phi i32 [ %.2154.us, %.lr.ph238.split.us ], [ 0, %.lr.ph349.preheader ] ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8     ; 2 uses
  %.old1.not.us = icmp eq i8 %i.z, 0
  br i1 %.old1.not.us, label %.loopexit229.us, label %.preheader228.us

.preheader228.us:                                 ; preds = %.lr.ph349, %bb.b
  %.1144.in.us = phi i8 [ %i.al, %bb.b ], [ %i.z, %.lr.ph349 ]
  %.1.us = phi ptr [ %i.ah, %bb.b ], [ %i.v, %.lr.ph349 ]
  %i.aa = zext i8 %.1144.in.us to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.us, i64 %i.aa ; 4 uses
  %.not172.us = icmp ult ptr %i.ab, %3
  br i1 %.not172.us, label %bb.b, label %.loopexit229.us

bb.b:                                             ; preds = %.preheader228.us
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp ult ptr %i.ah, %3
  %i.an = icmp ne i8 %i.al, 0
  %or.cond.us = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.us, label %.preheader228.us, label %.loopexit229.us, !llvm.loop !54

.loopexit229.us:                                  ; preds = %.preheader228.us, %bb.b, %.lr.ph349
  %.2.us = phi ptr [ %i.v, %.lr.ph349 ], [ %i.ah, %bb.b ], [ %i.ab, %.preheader228.us ] ; 9 uses
  %.not173.us = icmp ult ptr %.2.us, %3
  br i1 %.not173.us, label %.lr.ph.us, label %._crit_edge239

.lr.ph.us:                                        ; preds = %.loopexit229.us
  %i.ao = load i8, ptr %.2.us, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.us.new

bb.c:                                             ; preds = %._crit_edge.us
  %i.aq = ptrtoint ptr %.2.us to i64
  %i.ar = sub i64 %i.aq, %i.k
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  %i.at = sub i32 %i.as, %i.l                     ; 2 uses
  %i.au = add nsw i32 %i.at, -10
  %i.av = sext i32 %.0152234.us348 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = icmp sgt i32 %i.au, %i.ay
  br i1 %i.az, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = add i32 %i.l, %i.as
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !4
  br label %.lr.ph238.split.us

bb.e:                                             ; preds = %bb.c
  %i.bb = add nsw i32 %i.at, -2
  %i.bc = add nsw i32 %.0152234.us348, 1          ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bd ; 2 uses
  store i32 %i.bb, ptr %i.be, align 8, !tbaa !4
  %i.bf = add i32 %i.l, %i.as
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !4
  br label %.lr.ph238.split.us

.lr.ph238.split.us:                               ; preds = %bb.e, %bb.d, %._crit_edge.us
  %.2154.us = phi i32 [ %.0152234.us348, %bb.d ], [ %i.bc, %bb.e ], [ %.0152234.us348, %._crit_edge.us ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.2.us, i64 %i.u ; 2 uses
  %.not.us = icmp ult ptr %i.bh, %3
  br i1 %.not.us, label %.lr.ph349, label %._crit_edge239

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 5 uses
  %.0155233.us = phi i32 [ %i.cf, %.lr.ph.us.new ], [ %i.ap, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.bi = sub nsw i64 0, %indvars.iv
  %i.bj = getelementptr inbounds i8, ptr %.2.us, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl i32 %.0155233.us, 4
  %i.bn = shl nuw nsw i32 %i.bl, 2
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = xor i64 %indvars.iv, -1
  %i.bq = getelementptr inbounds i8, ptr %.2.us, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bo, %i.bs
  %i.bu = sub nuw nsw i64 -2, %indvars.iv
  %i.bv = getelementptr inbounds i8, ptr %.2.us, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl i32 %i.bt, 4
  %i.bz = shl nuw nsw i32 %i.bx, 2
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = sub nuw nsw i64 -3, %indvars.iv
  %i.cc = getelementptr inbounds i8, ptr %.2.us, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nsw i32 %i.ca, %i.ce                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !55

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.0155233.us.epil.init = phi i32 [ %i.ap, %.lr.ph.us ], [ %i.cf, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod356)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.0155233.us.epil = phi i32 [ %.0155233.us.epil.init, %.epil.preheader ], [ %i.cl, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cg = shl i32 %.0155233.us.epil, 2
  %i.ch = sub nsw i64 0, %indvars.iv.epil
  %i.ci = getelementptr inbounds i8, ptr %.2.us, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %i.ck = zext i8 %i.cj to i32
  %i.cl = add nsw i32 %i.cg, %i.ck                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.f, !llvm.loop !56

._crit_edge.us:                                   ; preds = %bb.f, %._crit_edge.us.unr-lcssa
  %.lcssa = phi i32 [ %i.cf, %._crit_edge.us.unr-lcssa ], [ %i.cl, %bb.f ]
  %i.cm = sext i32 %.lcssa to i64
  %i.cn = getelementptr inbounds i8, ptr @MEMBER, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  %.not174.us = icmp eq i8 %i.co, 0
  br i1 %.not174.us, label %.lr.ph238.split.us, label %bb.c

.lr.ph345:                                        ; preds = %.lr.ph345.preheader, %.lr.ph238.split
  %i.cp = phi ptr [ %i.ed, %.lr.ph238.split ], [ %i.n, %.lr.ph345.preheader ] ; 3 uses
  %.0152234344 = phi i32 [ %.2154, %.lr.ph238.split ], [ 0, %.lr.ph345.preheader ] ; 5 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8   ; 2 uses
  %.old1.not = icmp eq i8 %i.ct, 0
  br i1 %.old1.not, label %.loopexit229, label %.preheader228
end_hunk_1
begin_hunk_2_@agrep:bb.a
.loopexit222:                                     ; preds = %.lr.ph257.preheader, %._crit_edge
  %.2149 = phi i32 [ %.1148269, %._crit_edge ], [ %.1141, %.lr.ph257.preheader ] ; 2 uses
  %.2142 = phi i32 [ %i.fo, %._crit_edge ], [ %.1141, %.lr.ph257.preheader ] ; 3 uses
  %i.ik = sext i32 %.2142 to i64
  %i.il = getelementptr inbounds i8, ptr %2, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !8   ; 2 uses
  %i.in = icmp ne i8 %i.im, 10
  %brmerge280 = or i1 %i.in, %.not177249
  br i1 %brmerge280, label %.loopexit221, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %.loopexit222
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  br label %.loopexit221

.loopexit221:                                     ; preds = %.loopexit222.thread, %.lr.ph260.preheader, %.loopexit222
  %i.io = phi i8 [ %i.ij, %.loopexit222.thread ], [ 10, %.lr.ph260.preheader ], [ %i.im, %.loopexit222 ]
  %.2142338 = phi i32 [ %.1141, %.loopexit222.thread ], [ %.2142, %.lr.ph260.preheader ], [ %.2142, %.loopexit222 ] ; 2 uses
  %.2149337 = phi i32 [ %.1141, %.loopexit222.thread ], [ %.2149, %.lr.ph260.preheader ], [ %.2149, %.loopexit222 ] ; 3 uses
  %i.ip = add nsw i32 %.2142338, 1                ; 5 uses
  %i.iq = zext i8 %i.io to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4  ; 4 uses
  %i.it = load i32, ptr %i.b, align 16, !tbaa !4  ; 3 uses
  %i.iu = lshr i32 %i.it, 1
  %i.iv = or i32 %i.iu, %i.is                     ; 3 uses
  store i32 %i.iv, ptr %i.c, align 16, !tbaa !4
  br i1 %.not176247, label %._crit_edge265, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %.loopexit221
  br i1 %i.ew, label %.lr.ph264.epil.preheader, label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %i.iw = phi i32 [ %i.jo, %.lr.ph264 ], [ %i.iv, %.lr.ph264.preheader ]
  %i.ix = phi i32 [ %i.ji, %.lr.ph264 ], [ %i.it, %.lr.ph264.preheader ] ; 2 uses
  %indvars.iv305 = phi i64 [ %indvars.iv.next306.1, %.lr.ph264 ], [ 1, %.lr.ph264.preheader ] ; 4 uses
  %niter380 = phi i64 [ %niter380.next.1, %.lr.ph264 ], [ 0, %.lr.ph264.preheader ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv305
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !4  ; 3 uses
  %i.ja = lshr i32 %i.iz, 1
  %i.jb = or i32 %i.ja, %i.is
  %i.jc = and i32 %i.iw, %i.ix
  %i.jd = lshr i32 %i.jc, 1
  %i.je = and i32 %i.jb, %i.jd
  %i.jf = and i32 %i.je, %i.ix                    ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv305
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !4
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next306
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4  ; 3 uses
  %i.jj = lshr i32 %i.ji, 1
  %i.jk = or i32 %i.jj, %i.is
  %i.jl = and i32 %i.jf, %i.iz
  %i.jm = lshr i32 %i.jl, 1
  %i.jn = and i32 %i.jk, %i.jm
  %i.jo = and i32 %i.jn, %i.iz                    ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next306
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !4
  %indvars.iv.next306.1 = add nuw nsw i64 %indvars.iv305, 2 ; 2 uses
  %niter380.next.1 = add i64 %niter380, 2         ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %._crit_edge265.loopexit.unr-lcssa, label %.lr.ph264, !llvm.loop !60

._crit_edge265.loopexit.unr-lcssa:                ; preds = %.lr.ph264
  br i1 %lcmp.mod377.not, label %._crit_edge265, label %.lr.ph264.epil.preheader

.lr.ph264.epil.preheader:                         ; preds = %._crit_edge265.loopexit.unr-lcssa, %.lr.ph264.preheader
  %.epil.init374 = phi i32 [ %i.iv, %.lr.ph264.preheader ], [ %i.jo, %._crit_edge265.loopexit.unr-lcssa ]
  %.epil.init376 = phi i32 [ %i.it, %.lr.ph264.preheader ], [ %i.ji, %._crit_edge265.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv305.epil.init = phi i64 [ 1, %.lr.ph264.preheader ], [ %indvars.iv.next306.1, %._crit_edge265.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv305.epil.init
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4
  %i.js = lshr i32 %i.jr, 1
  %i.jt = or i32 %i.js, %i.is
  %i.ju = and i32 %.epil.init374, %.epil.init376
  %i.jv = lshr i32 %i.ju, 1
  %i.jw = and i32 %i.jt, %i.jv
  %i.jx = and i32 %i.jw, %.epil.init376
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv305.epil.init
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !4
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %.lr.ph264.epil.preheader, %._crit_edge265.loopexit.unr-lcssa, %.loopexit221
  %i.jz = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.ka = and i32 %i.jz, %i.ej
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge265
  %i.kc = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.kd = add nsw i32 %i.kc, 1
  store i32 %i.kd, ptr @num_of_matched, align 4, !tbaa !4
  %i.ke = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not184 = icmp eq i32 %i.ke, 0
  br i1 %.not184, label %bb.v, label %.loopexit226

bb.v:                                             ; preds = %bb.u
  %.not185.not = icmp slt i32 %.2142338, %.2149337
  br i1 %.not185.not, label %s_output.exit211, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kf = load i32, ptr @SILENT, align 4, !tbaa !4
  %.not.i189 = icmp eq i32 %i.kf, 0
  br i1 %.not.i189, label %bb.x, label %s_output.exit211

bb.x:                                             ; preds = %bb.w
  %i.kg = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not13.i190 = icmp eq i32 %i.kg, 0
  br i1 %.not13.i190, label %bb.y, label %.preheader17.i191

.preheader17.i191:                                ; preds = %bb.x
  %i.kh = sext i32 %i.ip to i64                   ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %2, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !8
  %.not1619.i193 = icmp eq i8 %i.kj, 10
  br i1 %.not1619.i193, label %s_output.exit211, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.preheader17.i191, %.lr.ph.i194
  %indvars.iv.i195 = phi i64 [ %indvars.iv.next.i196, %.lr.ph.i194 ], [ %i.kh, %.preheader17.i191 ]
  %indvars.iv.next.i196 = add nsw i64 %indvars.iv.i195, 1 ; 3 uses
  %i.kk = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i196
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !8
  %.not16.i197 = icmp eq i8 %i.kl, 10
  br i1 %.not16.i197, label %s_output.exit211.loopexit, label %.lr.ph.i194, !llvm.loop !16

bb.y:                                             ; preds = %bb.x
  %i.km = load i32, ptr @FNAME, align 4, !tbaa !4
  %i.kn = icmp eq i32 %i.km, 1
  br i1 %i.kn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ko = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.kp = sext i32 %i.ip to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv24.i198 = phi i64 [ %indvars.iv.next25.i199, %bb.ab ], [ %i.kp, %bb.aa ] ; 4 uses
  %indvars.iv.next25.i199 = add nsw i64 %indvars.iv24.i198, -1 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next25.i199
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !8
  %.not14.i200 = icmp eq i8 %i.kr, 10
  br i1 %.not14.i200, label %.preheader.i201, label %bb.ab, !llvm.loop !17

.preheader.i201:                                  ; preds = %bb.ab
  %sext.i202 = shl i64 %indvars.iv24.i198, 32
  %i.ks = ashr exact i64 %sext.i202, 32
  %i.kt = getelementptr inbounds i8, ptr %2, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !8   ; 2 uses
  %.not1520.i203 = icmp eq i8 %i.ku, 10
  br i1 %.not1520.i203, label %._crit_edge.i208, label %.lr.ph21.i204

.lr.ph21.i204:                                    ; preds = %.preheader.i201, %.lr.ph21.i204
  %indvars.iv27.i205 = phi i64 [ %indvars.iv.next28.i206, %.lr.ph21.i204 ], [ %indvars.iv24.i198, %.preheader.i201 ]
  %i.kv = phi i8 [ %i.la, %.lr.ph21.i204 ], [ %i.ku, %.preheader.i201 ]
  %i.kw = zext i8 %i.kv to i32
  %i.kx = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ky = tail call noundef i32 @putc(i32 noundef %i.kw, ptr noundef %i.kx), !inline_history !20 ; 0 uses
  %indvars.iv.next28.i206 = add nsw i64 %indvars.iv27.i205, 1 ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next28.i206
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !8   ; 2 uses
  %.not15.i207 = icmp eq i8 %i.la, 10
  br i1 %.not15.i207, label %._crit_edge.i208, label %.lr.ph21.i204, !llvm.loop !21

._crit_edge.i208:                                 ; preds = %.lr.ph21.i204, %.preheader.i201
  %.lcssa.in.i209 = phi i64 [ %indvars.iv24.i198, %.preheader.i201 ], [ %indvars.iv.next28.i206, %.lr.ph21.i204 ]
  %.lcssa.i210 = trunc i64 %.lcssa.in.i209 to i32
  %i.lb = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.lc = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.lb), !inline_history !20 ; 0 uses
  br label %s_output.exit211

s_output.exit211.loopexit:                        ; preds = %.lr.ph.i194
  %i.ld = trunc nsw i64 %indvars.iv.next.i196 to i32
  br label %s_output.exit211

s_output.exit211:                                 ; preds = %s_output.exit211.loopexit, %._crit_edge.i208, %.preheader17.i191, %bb.w, %bb.v
  %.3 = phi i32 [ %.2149337, %bb.v ], [ %.lcssa.i210, %._crit_edge.i208 ], [ %i.ip, %.preheader17.i191 ], [ %i.ip, %bb.w ], [ %i.ld, %s_output.exit211.loopexit ] ; 4 uses
  br i1 %.not177249, label %.loopexit, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %s_output.exit211
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph268.preheader, %s_output.exit211, %._crit_edge265
  %.3150 = phi i32 [ %.2149337, %._crit_edge265 ], [ %.3, %s_output.exit211 ], [ %.3, %.lr.ph268.preheader ] ; 2 uses
  %.4 = phi i32 [ %i.ip, %._crit_edge265 ], [ %.3, %s_output.exit211 ], [ %.3, %.lr.ph268.preheader ] ; 2 uses
  %i.le = icmp slt i32 %.4, %spec.store.select188
  br i1 %i.le, label %.lr.ph271, label %._crit_edge272, !llvm.loop !61

._crit_edge272:                                   ; preds = %.loopexit, %.preheader225
  %.1148.lcssa = phi i32 [ %.0147275, %.preheader225 ], [ %.3150, %.loopexit ]
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %.loopexit226, label %bb.l, !llvm.loop !62

.loopexit226:                                     ; preds = %._crit_edge272, %bb.u, %bb.m, %._crit_edge239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @prep_bm(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = trunc i32 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %i.a, i64 256, i1 false), !tbaa !8
  %i.b = add i32 %1, -1                           ; 13 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.sink.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext i32 %i.b to i64                     ; 3 uses
  %i.e = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @TR, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i32
  %.not29.prol = icmp sgt i32 %i.b, %i.n
  br i1 %.not29.prol, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.b

bb.b:                                             ; preds = %.lr.ph.prol
  store i8 0, ptr %i.l, align 1, !tbaa !8
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.b, %.lr.ph.prol
  %indvars.iv.next.prol = add nsw i64 %i.d, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @TR, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i32
  %.not29 = icmp sgt i32 %i.b, %i.x
  br i1 %.not29, label %.lr.ph.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.y = trunc i64 %indvars.iv to i32
  %i.z = sub i32 %i.b, %i.y
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.v, align 1, !tbaa !8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @TR, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = zext i8 %i.ai to i32
  %.not29.1 = icmp sgt i32 %i.b, %i.aj
  br i1 %.not29.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ak = trunc i64 %indvars.iv.next to i32
  %i.al = sub i32 %i.b, %i.ak
  %i.am = trunc i32 %i.al to i8
  store i8 %i.am, ptr %i.ah, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %i.an = icmp sgt i64 %indvars.iv, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.e, %.lr.ph.prol.loopexit
  store i32 %i.b, ptr @shift_1, align 4, !tbaa !4
  %i.ao = sext i32 %i.b to i64
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @TR, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !8
  %.not44 = icmp eq i32 %1, 1
  br i1 %.not44, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %._crit_edge
  %i.au = add nsw i32 %1, -2
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.f
  %.232 = phi i32 [ %i.bd, %bb.f ], [ %i.au, %.lr.ph34.preheader ] ; 4 uses
  %i.av = zext nneg i32 %.232 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @TR, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = icmp eq i8 %i.ba, %i.at
  br i1 %i.bb, label %.thread, label %bb.f

.thread:                                          ; preds = %.lr.ph34
  %i.bc = sub nsw i32 %i.b, %.232                 ; 2 uses
  store i32 %i.bc, ptr @shift_1, align 4, !tbaa !4
  br label %._crit_edge35

bb.f:                                             ; preds = %.lr.ph34
  %i.bd = add nsw i32 %.232, -1
  %.not45 = icmp eq i32 %.232, 0
  br i1 %.not45, label %._crit_edge35, label %.lr.ph34, !llvm.loop !64

._crit_edge35:                                    ; preds = %bb.f, %.thread, %._crit_edge
  %i.be = phi i32 [ %i.bc, %.thread ], [ %i.b, %._crit_edge ], [ %i.b, %bb.f ]
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %._crit_edge35, %bb.a
  %.sink = phi i32 [ %i.b, %bb.a ], [ 1, %._crit_edge35 ]
  store i32 %.sink, ptr @shift_1, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %._crit_edge35
  %i.bg = load i32, ptr @NOUPPER, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds nuw (i8, ptr @SHIFT, i64 65), ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds nuw (i8, ptr @SHIFT, i64 97), i64 26, i1 false), !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.g
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @a_monkey(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @Hashmask, align 4, !tbaa !4
  %i.b = icmp ult ptr %2, %3
  br i1 %i.b, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.a
  %i.c = xor i32 %4, -1
  %i.d = add i32 %1, %i.c
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i32 %1, 1
  %i.g = add nsw i32 %4, %i.f
  %i.h = sext i32 %1 to i64
  %i.i = add i32 %4, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph64, %.loopexit
  %.062 = phi ptr [ %2, %.lr.ph64 ], [ %.6, %.loopexit ] ; 5 uses
  %i.j = getelementptr inbounds i8, ptr %.062, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.157 = phi ptr [ %i.j, %bb.b ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.03556 = phi i32 [ 0, %bb.b ], [ %i.x, %._crit_edge ]
  %i.k = load i8, ptr %.157, align 1, !tbaa !8    ; 2 uses
  %.252 = getelementptr inbounds i8, ptr %.157, i64 -1 ; 2 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  %.not4953 = icmp eq i8 %i.n, 0
  br i1 %.not4953, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = zext i8 %i.k to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.255 = phi ptr [ %.2, %.lr.ph ], [ %.252, %.lr.ph.preheader ] ; 2 uses
  %.03654 = phi i32 [ %i.t, %.lr.ph ], [ %i.o, %.lr.ph.preheader ]
  %i.p = shl i32 %.03654, 8
  %i.q = load i8, ptr %.255, align 1, !tbaa !8
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = and i32 %i.s, %i.a                       ; 2 uses
  %.2 = getelementptr inbounds i8, ptr %.255, i64 -1 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
end_hunk_2
begin_hunk_3_@a_monkey:bb.a
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %.not46 = icmp eq i8 %i.ak, 10
  br i1 %.not46, label %.preheader, label %bb.k, !llvm.loop !67

.preheader:                                       ; preds = %bb.k
  %i.al = load i8, ptr %.3, align 1, !tbaa !8     ; 2 uses
  %.not4758 = icmp eq i8 %i.al, 10
  br i1 %.not4758, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader, %.lr.ph59
  %i.am = phi i8 [ %i.as, %.lr.ph59 ], [ %i.al, %.preheader ]
  %i.an = phi ptr [ %i.ar, %.lr.ph59 ], [ %.3, %.preheader ]
  %i.ao = zext i8 %i.am to i32
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.aq = tail call noundef i32 @putc(i32 noundef %i.ao, ptr noundef %i.ap), !inline_history !20 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8   ; 2 uses
  %.not47 = icmp eq i8 %i.as, 10
  br i1 %.not47, label %._crit_edge60, label %.lr.ph59, !llvm.loop !68

._crit_edge60:                                    ; preds = %.lr.ph59, %.preheader
  %.lcssa51 = phi ptr [ %.3, %.preheader ], [ %i.ar, %.lr.ph59 ]
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.au = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.at), !inline_history !20 ; 0 uses
  br label %.loopexit

.preheader50:                                     ; preds = %bb.h, %.preheader50
  %.5 = phi ptr [ %i.aw, %.preheader50 ], [ %i.ab, %bb.h ] ; 3 uses
  %i.av = load i8, ptr %.5, align 1, !tbaa !8
  %.not48 = icmp eq i8 %i.av, 10
  %i.aw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br i1 %.not48, label %.loopexit, label %.preheader50, !llvm.loop !69

bb.l:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds i8, ptr %.062, i64 %i.h
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader50, %bb.l, %._crit_edge60, %bb.d
  %.6 = phi ptr [ %.2.lcssa, %bb.d ], [ %.lcssa51, %._crit_edge60 ], [ %i.ax, %bb.l ], [ %.5, %.preheader50 ] ; 2 uses
  %i.ay = icmp ult ptr %.6, %3
  br i1 %i.ay, label %bb.b, label %._crit_edge65, !llvm.loop !70

._crit_edge65:                                    ; preds = %bb.f, %bb.g, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @monkey(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(address) %2, ptr noundef readnone captures(address) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %i.d = icmp ult ptr %i.c, %3
  br i1 %i.d, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %bb.a
  %zext = zext i32 %1 to i64
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %bb.k
  %.059 = phi ptr [ %i.bh, %bb.k ], [ %i.c, %.lr.ph61.preheader ] ; 4 uses
  %i.e = load i8, ptr %.059, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds i8, ptr %.059, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %.03852 = load i8, ptr %i.l, align 1, !tbaa !8  ; 2 uses
  %.not53 = icmp eq i8 %.03852, 0
  br i1 %.not53, label %.preheader51, label %.lr.ph

.preheader51:                                     ; preds = %.lr.ph, %.lr.ph61
  %.1.lcssa = phi ptr [ %.059, %.lr.ph61 ], [ %i.n, %.lr.ph ] ; 5 uses
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph61, %.lr.ph
  %.03855 = phi i8 [ %.038, %.lr.ph ], [ %.03852, %.lr.ph61 ]
  %.154 = phi ptr [ %i.n, %.lr.ph ], [ %.059, %.lr.ph61 ]
  %i.m = zext i8 %.03855 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.154, i64 %i.m ; 4 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %.038 = load i8, ptr %i.v, align 1, !tbaa !8    ; 2 uses
  %.not = icmp eq i8 %.038, 0
  br i1 %.not, label %.preheader51, label %.lr.ph, !llvm.loop !71

bb.b:                                             ; preds = %.preheader51, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader51 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.w = sub nsw i64 %i.b, %indvars.iv
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @TR, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = sub nsw i64 0, %indvars.iv
  %i.ad = getelementptr inbounds i8, ptr %.1.lcssa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @TR, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp eq i8 %i.ab, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = icmp eq i64 %indvars.iv.next, %zext
  br i1 %i.aj, label %.thread, label %bb.b, !llvm.loop !72

bb.d:                                             ; preds = %bb.b
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = icmp eq i32 %1, %i.ak
  br i1 %i.al, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.d
  %.not43 = icmp ult ptr %.1.lcssa, %3
  br i1 %.not43, label %bb.e, label %._crit_edge62

bb.e:                                             ; preds = %.thread
  %i.am = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr @num_of_matched, align 4, !tbaa !4
  %i.ao = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not44 = icmp eq i32 %i.ao, 0
  br i1 %.not44, label %bb.f, label %._crit_edge62

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not45 = icmp eq i32 %i.ap, 0
  br i1 %.not45, label %bb.h, label %.preheader50

.preheader50:                                     ; preds = %bb.f, %.preheader50
  %.2 = phi ptr [ %i.ar, %.preheader50 ], [ %.1.lcssa, %bb.f ] ; 3 uses
  %i.aq = load i8, ptr %.2, align 1, !tbaa !8
  %.not49 = icmp eq i8 %i.aq, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br i1 %.not49, label %bb.g, label %.preheader50, !llvm.loop !73

bb.g:                                             ; preds = %.preheader50
  %i.as = getelementptr inbounds i8, ptr %.2, i64 -1
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.at = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not46 = icmp eq i32 %i.at, 0
  br i1 %.not46, label %.preheader79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader79

.preheader79:                                     ; preds = %bb.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.preheader79, %bb.j
  %.3 = phi ptr [ %i.av, %bb.j ], [ %.1.lcssa, %.preheader79 ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %.not47 = icmp eq i8 %i.aw, 10
  br i1 %.not47, label %.preheader, label %bb.j, !llvm.loop !74

.preheader:                                       ; preds = %bb.j
  %i.ax = load i8, ptr %.3, align 1, !tbaa !8     ; 2 uses
  %.not4856 = icmp eq i8 %i.ax, 10
  br i1 %.not4856, label %._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader, %.lr.ph57
  %i.ay = phi i8 [ %i.be, %.lr.ph57 ], [ %i.ax, %.preheader ]
  %i.az = phi ptr [ %i.bd, %.lr.ph57 ], [ %.3, %.preheader ] ; 2 uses
  %i.ba = zext i8 %i.ay to i32
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bc = tail call noundef i32 @putc(i32 noundef %i.ba, ptr noundef %i.bb), !inline_history !20 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8   ; 2 uses
  %.not48 = icmp eq i8 %i.be, 10
  br i1 %.not48, label %._crit_edge, label %.lr.ph57, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph57, %.preheader
  %.4.lcssa = phi ptr [ %i.av, %.preheader ], [ %i.az, %.lr.ph57 ]
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bg = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bf), !inline_history !20 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %._crit_edge, %bb.d
  %.5 = phi ptr [ %i.as, %bb.g ], [ %.4.lcssa, %._crit_edge ], [ %.1.lcssa, %bb.d ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %3
  br i1 %i.bi, label %.lr.ph61, label %._crit_edge62, !llvm.loop !76

._crit_edge62:                                    ; preds = %.thread, %bb.e, %bb.k, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @am_preprocess(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
.preheader17:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  store i32 65535, ptr @Hashmask, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !8
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader17
  %i.e = zext i32 %i.c to i64                     ; 2 uses
  %xtraiter = and i64 %i.a, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.h
  store i8 1, ptr %i.i, align 1, !tbaa !8
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !77

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.j = icmp ult i32 %i.b, 4
  br i1 %i.j, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.not28 = icmp eq i32 %i.b, 1
  br i1 %.not28, label %._crit_edge, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.preheader
  %i.k = zext nneg i32 %i.c to i64
  br label %.lr.ph22

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !8
  %i.p = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.s
  store i8 1, ptr %i.t, align 1, !tbaa !8
  %i.u = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.x
  store i8 1, ptr %i.y, align 1, !tbaa !8
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.ab
  store i8 1, ptr %i.ac, align 1, !tbaa !8
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not.3, label %.preheader, label %.lr.ph, !llvm.loop !78

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  %indvars.iv25 = phi i64 [ %i.k, %.lr.ph22.preheader ], [ %indvars.iv.next26, %.lr.ph22 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = zext i8 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 8
  %i.ah = getelementptr i8, ptr %i.ad, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 1, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  %i.am = icmp samesign ugt i64 %indvars.iv25, 1
  br i1 %i.am, label %.lr.ph22, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph22, %.preheader17, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @m_preprocess(ptr noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  %i.b = trunc i64 %i.a to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %i.b, i64 4096, i1 false), !tbaa !8
  %i.c = trunc i64 %i.a to i32                    ; 4 uses
  %i.d = add i32 %i.c, -1                         ; 9 uses
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge44.sink.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc i32 %i.d to i8                     ; 16 uses
  %i.g = zext nneg i32 %i.d to i64
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph, %bb.c
  %indvars.iv47 = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next48, %bb.c ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 3                  ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.l ; 16 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue83, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue83 ] ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 8, !tbaa !8
  %i.n = zext <16 x i8> %wide.load to <16 x i32>
  %i.o = icmp eq <16 x i32> %broadcast.splat, %i.n ; 16 uses
  %i.p = extractelement <16 x i1> %i.o, i64 0
  br i1 %i.p, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.f, ptr %i.m, align 8, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.q = extractelement <16 x i1> %i.o, i64 1
  br i1 %i.q, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue
  %i.r = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %i.f, ptr %i.s, align 1, !tbaa !8
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue
  %i.t = extractelement <16 x i1> %i.o, i64 2
  br i1 %i.t, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.u = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.f, ptr %i.v, align 2, !tbaa !8
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.w = extractelement <16 x i1> %i.o, i64 3
  br i1 %i.w, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.x = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.f, ptr %i.y, align 1, !tbaa !8
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.z = extractelement <16 x i1> %i.o, i64 4
  br i1 %i.z, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.aa = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i8 %i.f, ptr %i.ab, align 4, !tbaa !8
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.ac = extractelement <16 x i1> %i.o, i64 5
  br i1 %i.ac, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.ad = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.f, ptr %i.ae, align 1, !tbaa !8
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.af = extractelement <16 x i1> %i.o, i64 6
  br i1 %i.af, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i8 %i.f, ptr %i.ah, align 2, !tbaa !8
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.ai = extractelement <16 x i1> %i.o, i64 7
  br i1 %i.ai, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 7
  store i8 %i.f, ptr %i.ak, align 1, !tbaa !8
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.al = extractelement <16 x i1> %i.o, i64 8
  br i1 %i.al, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i8 %i.f, ptr %i.an, align 8, !tbaa !8
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.ao = extractelement <16 x i1> %i.o, i64 9
  br i1 %i.ao, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  store i8 %i.f, ptr %i.aq, align 1, !tbaa !8
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.ar = extractelement <16 x i1> %i.o, i64 10
  br i1 %i.ar, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  store i8 %i.f, ptr %i.at, align 2, !tbaa !8
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.au = extractelement <16 x i1> %i.o, i64 11
  br i1 %i.au, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 11
  store i8 %i.f, ptr %i.aw, align 1, !tbaa !8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.ax = extractelement <16 x i1> %i.o, i64 12
  br i1 %i.ax, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i8 %i.f, ptr %i.az, align 4, !tbaa !8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.ba = extractelement <16 x i1> %i.o, i64 13
  br i1 %i.ba, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 13
  store i8 %i.f, ptr %i.bc, align 1, !tbaa !8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bd = extractelement <16 x i1> %i.o, i64 14
  br i1 %i.bd, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  store i8 %i.f, ptr %i.bf, align 2, !tbaa !8
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bg = extractelement <16 x i1> %i.o, i64 15
  br i1 %i.bg, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15
  store i8 %i.f, ptr %i.bi, align 1, !tbaa !8
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, 256
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %pred.store.continue83
  %i.bk = getelementptr i8, ptr %i.h, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !8
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.k, %i.bm
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !8
end_hunk_3
begin_hunk_4_@m_preprocess:bb.a
  %i.ca = zext nneg i32 %.241 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = icmp eq i8 %i.cc, %i.bz
  br i1 %i.cd, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.ce = sub nsw i32 %i.d, %.241
  br label %._crit_edge44.sink.split

bb.e:                                             ; preds = %bb.d
  %i.cf = add nsw i32 %.241, -1
  %.not52 = icmp eq i32 %.241, 0
  br i1 %.not52, label %._crit_edge44, label %bb.d, !llvm.loop !82

._crit_edge44.sink.split:                         ; preds = %bb.a, %.thread
  %.sink = phi i32 [ %i.ce, %.thread ], [ %i.d, %bb.a ] ; 2 uses
  store i32 %.sink, ptr @shift_1, align 4, !tbaa !4
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %bb.e, %._crit_edge44.sink.split
  %i.cg = phi i32 [ %.sink, %._crit_edge44.sink.split ], [ %i.d, %bb.e ]
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge44
  store i32 1, ptr @shift_1, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge44
  store i8 0, ptr @SHIFT_2, align 16, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @monkey4(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @Hashmask, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp ult ptr %2, %3
  br i1 %i.b, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %bb.a
  %i.c = xor i32 %4, -1
  %i.d = add i32 %1, %i.c
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i32 %1, 1
  %i.g = add nsw i32 %4, %i.f
  %i.h = sext i32 %1 to i64
  %i.i = add i32 %4, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1)
  %.pre74 = load ptr, ptr @MEMBER_D, align 8, !tbaa !83
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %.loopexit
  %i.j = phi ptr [ %.pre74, %.lr.ph68 ], [ %i.bp, %.loopexit ] ; 5 uses
  %.066 = phi ptr [ %2, %.lr.ph68 ], [ %.6, %.loopexit ] ; 5 uses
  %i.k = getelementptr inbounds i8, ptr %.066, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.161 = phi ptr [ %i.k, %bb.b ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %.04060 = phi i32 [ 0, %bb.b ], [ %i.an, %._crit_edge ]
  %i.l = getelementptr inbounds i8, ptr %.161, i64 -1
  %i.m = load i8, ptr %.161, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @char_map, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = getelementptr inbounds i8, ptr %.161, i64 -2 ; 2 uses
  %i.t = load i8, ptr %i.l, align 1, !tbaa !8
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @char_map, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.r, %i.x
  %.04156 = and i32 %i.y, %i.a                    ; 2 uses
  %i.z = zext nneg i32 %.04156 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %.not5457 = icmp eq i8 %i.ab, 0
  br i1 %.not5457, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04159 = phi i32 [ %.041, %.lr.ph ], [ %.04156, %bb.c ]
  %.258 = phi ptr [ %i.ad, %.lr.ph ], [ %i.s, %bb.c ] ; 2 uses
  %i.ac = shl i32 %.04159, 3
  %i.ad = getelementptr inbounds i8, ptr %.258, i64 -1 ; 2 uses
  %i.ae = load i8, ptr %.258, align 1, !tbaa !8
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @char_map, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ac, %i.ai
  %.041 = and i32 %i.aj, %i.a                     ; 2 uses
  %i.ak = zext i32 %.041 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %.not54 = icmp eq i8 %i.am, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.2.lcssa = phi ptr [ %i.s, %bb.c ], [ %i.ad, %.lr.ph ] ; 3 uses
  %i.an = add nuw i32 %.04060, 1                  ; 2 uses
  %exitcond = icmp eq i32 %i.an, %umax
  br i1 %exitcond, label %bb.d, label %bb.c, !llvm.loop !86

bb.d:                                             ; preds = %._crit_edge
  %.not47 = icmp ugt ptr %.2.lcssa, %.066
  br i1 %.not47, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call i32 @verify(i32 noundef %1, i32 noundef %i.g, i32 noundef %4, ptr noundef %0, ptr noundef %.066) ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.066, i64 %i.aq ; 3 uses
  %i.as = icmp ugt ptr %i.ar, %3
  br i1 %i.as, label %._crit_edge69, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr @num_of_matched, align 4, !tbaa !4
  %i.av = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not48 = icmp eq i32 %i.av, 0
  br i1 %.not48, label %bb.h, label %._crit_edge69

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not49 = icmp eq i32 %i.aw, 0
  br i1 %.not49, label %bb.i, label %.preheader55

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not50 = icmp eq i32 %i.ax, 0
  br i1 %.not50, label %.preheader86, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader86

.preheader86:                                     ; preds = %bb.j, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %.preheader86, %bb.k
  %.3 = phi ptr [ %i.az, %bb.k ], [ %i.ar, %.preheader86 ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.3, i64 -1 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %.not51 = icmp eq i8 %i.ba, 10
  br i1 %.not51, label %.preheader, label %bb.k, !llvm.loop !87

.preheader:                                       ; preds = %bb.k
  %i.bb = load i8, ptr %.3, align 1, !tbaa !8     ; 2 uses
  %.not5262 = icmp eq i8 %i.bb, 10
  br i1 %.not5262, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %.preheader, %.lr.ph63
  %i.bc = phi i8 [ %i.bi, %.lr.ph63 ], [ %i.bb, %.preheader ]
  %i.bd = phi ptr [ %i.bh, %.lr.ph63 ], [ %.3, %.preheader ] ; 2 uses
  %i.be = zext i8 %i.bc to i32
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bg = tail call noundef i32 @putc(i32 noundef %i.be, ptr noundef %i.bf), !inline_history !20 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8   ; 2 uses
  %.not52 = icmp eq i8 %i.bi, 10
  br i1 %.not52, label %._crit_edge64, label %.lr.ph63, !llvm.loop !88

._crit_edge64:                                    ; preds = %.lr.ph63, %.preheader
  %.4.lcssa = phi ptr [ %i.az, %.preheader ], [ %i.bd, %.lr.ph63 ]
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bk = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bj), !inline_history !20 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %.pre = load ptr, ptr @MEMBER_D, align 8, !tbaa !83
  br label %.loopexit

.preheader55:                                     ; preds = %bb.h, %.preheader55
  %.5 = phi ptr [ %i.bn, %.preheader55 ], [ %i.ar, %bb.h ] ; 2 uses
  %i.bm = load i8, ptr %.5, align 1, !tbaa !8
  %.not53 = icmp eq i8 %i.bm, 10
  %i.bn = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  br i1 %.not53, label %.loopexit, label %.preheader55, !llvm.loop !89

bb.l:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds i8, ptr %.066, i64 %i.h
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader55, %bb.l, %._crit_edge64, %bb.d
  %i.bp = phi ptr [ %i.j, %bb.d ], [ %.pre, %._crit_edge64 ], [ %i.j, %bb.l ], [ %i.j, %.preheader55 ]
  %.6 = phi ptr [ %.2.lcssa, %bb.d ], [ %i.bl, %._crit_edge64 ], [ %i.bo, %bb.l ], [ %i.bn, %.preheader55 ] ; 2 uses
  %i.bq = icmp ult ptr %.6, %3
  br i1 %i.bq, label %bb.b, label %._crit_edge69, !llvm.loop !90

._crit_edge69:                                    ; preds = %bb.f, %bb.g, %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 1, 0) i32 @blog(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = sdiv i32 %1, 2
  %i.b = add nsw i32 %i.a, %1                     ; 2 uses
  %i.c = icmp slt i32 %0, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %.0910 = phi i32 [ %i.e, %.lr.ph ], [ 1, %bb.a ]
  %i.d = mul nsw i32 %.011, %0                    ; 2 uses
  %i.e = add nuw nsw i32 %.0910, 1                ; 2 uses
  %i.f = icmp slt i32 %i.d, %i.b
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.09.lcssa = phi i32 [ 1, %bb.a ], [ %i.e, %.lr.ph ]
  ret i32 %.09.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @prep4(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @char_map, i8 0, i64 256, i1 false), !tbaa !8
  store i8 4, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 65), align 1, !tbaa !8
  store i8 4, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 97), align 1, !tbaa !8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 103), align 1, !tbaa !8
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 116), align 4, !tbaa !8
  store i8 3, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 99), align 1, !tbaa !8
  store i8 5, ptr getelementptr inbounds nuw (i8, ptr @char_map, i64 110), align 2, !tbaa !8
  %i.a = sdiv i32 %1, 2
  %i.b = add nsw i32 %i.a, %1                     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 4
  br i1 %i.c, label %.lr.ph.i, label %blog.exit.thread

blog.exit.thread:                                 ; preds = %bb.a
  store i8 1, ptr @BSize, align 1, !tbaa !8
  br label %.lr.ph.preheader

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi i32 [ %i.d, %.lr.ph.i ], [ 4, %bb.a ]
  %.0910.i = phi i32 [ %i.e, %.lr.ph.i ], [ 1, %bb.a ]
  %i.d = shl nsw i32 %.011.i, 2                   ; 2 uses
  %i.e = add nuw nsw i32 %.0910.i, 1              ; 3 uses
  %i.f = icmp slt i32 %i.d, %i.b
  br i1 %i.f, label %.lr.ph.i, label %blog.exit, !llvm.loop !91

blog.exit:                                        ; preds = %.lr.ph.i
  %i.g = trunc i32 %i.e to i8
  store i8 %i.g, ptr @BSize, align 1, !tbaa !8
  store i32 1, ptr @Hashmask, align 4, !tbaa !4
  %i.h = and i32 %i.e, 255                        ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 3
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %bb.b, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %blog.exit.thread, %blog.exit
  %i.j = phi i32 [ 3, %blog.exit.thread ], [ %i.i, %blog.exit ] ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  %i.l = add nsw i32 %i.j, -2
  %xtraiter = and i32 %i.k, 7                     ; 3 uses
  %i.m = icmp ult i32 %i.l, 7
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.k, -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.n = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.o = shl i32 %i.n, 8                          ; 2 uses
  %i.p = or disjoint i32 %i.o, 255                ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !92

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.q = or disjoint i32 %i.o, 254
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.p, %._crit_edge.unr-lcssa ]
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.r = phi i32 [ %i.t, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.s = shl i32 %i.r, 1                          ; 2 uses
  %i.t = or disjoint i32 %i.s, 1                  ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa73 = phi i32 [ %i.q, %._crit_edge.unr-lcssa ], [ %i.s, %.lr.ph.epil ]
  %.lcssa72 = phi i32 [ %i.p, %._crit_edge.unr-lcssa ], [ %i.t, %.lr.ph.epil ]
  store i32 %.lcssa72, ptr @Hashmask, align 4, !tbaa !4
  %i.u = add i32 %.lcssa73, 2
  %i.v = zext i32 %i.u to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %blog.exit
  %i.w = phi i64 [ %i.v, %._crit_edge ], [ 2, %blog.exit ]
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #23
  store ptr %i.x, ptr @MEMBER_D, align 8, !tbaa !83
  br label %bb.c

.preheader28:                                     ; preds = %bb.c
  %i.y = load i8, ptr @BSize, align 1, !tbaa !8   ; 2 uses
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %._crit_edge40, label %.preheader27.lr.ph

.preheader27.lr.ph:                               ; preds = %.preheader28
  %i.z = sext i32 %1 to i64                       ; 2 uses
  br label %.preheader27

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aa = load ptr, ptr @MEMBER_D, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 0, ptr %i.ab, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ac = load i32, ptr @Hashmask, align 4, !tbaa !4
  %i.ad = zext i32 %i.ac to i64
  %.not.not = icmp samesign ult i64 %indvars.iv, %i.ad
  br i1 %.not.not, label %bb.c, label %.preheader28, !llvm.loop !94

.preheader27:                                     ; preds = %.preheader27.lr.ph, %._crit_edge38
  %i.ae = phi i8 [ %i.y, %.preheader27.lr.ph ], [ %i.cc, %._crit_edge38 ]
  %indvars.iv57 = phi i64 [ 0, %.preheader27.lr.ph ], [ %indvars.iv.next58, %._crit_edge38 ] ; 4 uses
  %indvars.iv55 = phi i64 [ 1, %.preheader27.lr.ph ], [ %indvars.iv.next56, %._crit_edge38 ] ; 3 uses
  %.not25.not36 = icmp slt i64 %indvars.iv57, %i.z
  br i1 %.not25.not36, label %.preheader.preheader, label %._crit_edge38

.preheader.preheader:                             ; preds = %.preheader27
  %xtraiter78 = and i64 %indvars.iv55, 3          ; 3 uses
  %i.af = icmp samesign ult i64 %indvars.iv57, 3
  %unroll_iter83 = and i64 %indvars.iv55, 9223372036854775804
  %lcmp.mod80.not = icmp eq i64 %xtraiter78, 0
  %lcmp.mod82 = icmp ne i64 %xtraiter78, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.epilog-lcssa
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.epilog-lcssa ], [ %i.z, %.preheader.preheader ]
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, -1 ; 7 uses
  br i1 %i.af, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %i.ag = getelementptr i8, ptr %0, i64 %indvars.iv.next53
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.new
  %indvars.iv46 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next47.3, %bb.d ] ; 5 uses
  %.034 = phi i32 [ 0, %.preheader.new ], [ %i.bp, %bb.d ]
  %niter84 = phi i64 [ 0, %.preheader.new ], [ %niter84.next.3, %bb.d ]
  %i.ah = sub nsw i64 %indvars.iv.next53, %indvars.iv46
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr @char_map, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = zext i8 %i.am to i32
  %indvars.iv.next47.neg = xor i64 %indvars.iv46, -1
  %i.ao = shl i32 %.034, 6
  %i.ap = shl nuw nsw i32 %i.an, 3
  %i.aq = add i32 %i.ao, %i.ap
  %i.ar = getelementptr i8, ptr %i.ag, i64 %indvars.iv.next47.neg
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr @char_map, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = add i32 %i.aq, %i.aw
  %indvars.iv.next47.1 = or disjoint i64 %indvars.iv46, 2
  %i.ay = sub nsw i64 %indvars.iv.next53, %indvars.iv.next47.1
  %i.az = getelementptr inbounds i8, ptr %0, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = sext i8 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr @char_map, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = zext i8 %i.bd to i32
  %indvars.iv.next47.2 = or disjoint i64 %indvars.iv46, 3
  %i.bf = shl i32 %i.ax, 6
  %i.bg = shl nuw nsw i32 %i.be, 3
  %i.bh = add i32 %i.bf, %i.bg
  %i.bi = sub nsw i64 %indvars.iv.next53, %indvars.iv.next47.2
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = sext i8 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr @char_map, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add i32 %i.bh, %i.bo                    ; 3 uses
  %indvars.iv.next47.3 = add nuw nsw i64 %indvars.iv46, 4 ; 2 uses
  %niter84.next.3 = add i64 %niter84, 4           ; 2 uses
  %niter84.ncmp.3 = icmp eq i64 %niter84.next.3, %unroll_iter83
  br i1 %niter84.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !95

.unr-lcssa:                                       ; preds = %bb.d
  br i1 %lcmp.mod80.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader
  %indvars.iv46.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next47.3, %.unr-lcssa ]
  %.034.epil.init = phi i32 [ 0, %.preheader ], [ %i.bp, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv46.epil = phi i64 [ %indvars.iv46.epil.init, %.epil.preheader ], [ %indvars.iv.next47.epil, %bb.e ] ; 2 uses
  %.034.epil = phi i32 [ %.034.epil.init, %.epil.preheader ], [ %i.by, %bb.e ]
  %epil.iter79 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter79.next, %bb.e ]
  %i.bq = shl i32 %.034.epil, 3
  %i.br = sub nsw i64 %indvars.iv.next53, %indvars.iv46.epil
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !8
  %i.bu = sext i8 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr @char_map, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i32
  %i.by = add i32 %i.bq, %i.bx                    ; 2 uses
  %indvars.iv.next47.epil = add nuw nsw i64 %indvars.iv46.epil, 1
  %epil.iter79.next = add i64 %epil.iter79, 1     ; 2 uses
  %epil.iter79.cmp.not = icmp eq i64 %epil.iter79.next, %xtraiter78
  br i1 %epil.iter79.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !96

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %.lcssa = phi i32 [ %i.bp, %.unr-lcssa ], [ %i.by, %bb.e ]
  %i.bz = load ptr, ptr @MEMBER_D, align 8, !tbaa !83
  %i.ca = zext i32 %.lcssa to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 1, ptr %i.cb, align 1, !tbaa !8
  %.not25.not = icmp sgt i64 %indvars.iv.next53, %indvars.iv57
  br i1 %.not25.not, label %.preheader, label %._crit_edge38.loopexit, !llvm.loop !97

._crit_edge38.loopexit:                           ; preds = %.epilog-lcssa
  %.pre = load i8, ptr @BSize, align 1, !tbaa !8
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %.preheader27
  %i.cc = phi i8 [ %.pre, %._crit_edge38.loopexit ], [ %i.ae, %.preheader27 ] ; 2 uses
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.cd = zext i8 %i.cc to i64
  %i.ce = icmp samesign ult i64 %indvars.iv.next58, %i.cd
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br i1 %i.ce, label %.preheader27, label %._crit_edge40, !llvm.loop !98

._crit_edge40:                                    ; preds = %._crit_edge38, %.preheader28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @sgrep(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [10496 x i8], align 16            ; 10 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.c, label %bb.c [
    i8 94, label %bb.b
    i8 36, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i8 10, ptr %0, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  switch i8 %i.g, label %bb.e [
    i8 94, label %bb.d
    i8 36, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  store i8 10, ptr %i.f, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @char_tr(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2047
  store i8 10, ptr %i.h, align 1, !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !8
  %i.i = load i32, ptr @WHOLELINE, align 4, !tbaa !4
  %.not = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not, i32 2048, i32 2047
  %i.j = load i32, ptr %i.a, align 4, !tbaa !4    ; 27 uses
  %i.k = icmp sgt i32 %i.j, 255
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname) #24 ; 0 uses
  tail call void @exit(i32 noundef 2) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %3, 0                        ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.o = icmp sgt i32 %i.j, 20
  br i1 %i.o, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.p = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #22 ; 2 uses
  %i.q = trunc i64 %i.p to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %i.q, i64 4096, i1 false), !tbaa !8
  %i.r = trunc i64 %i.p to i32                    ; 4 uses
  %i.s = add i32 %i.r, -1                         ; 8 uses
  %i.t = icmp sgt i32 %i.r, 1
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge44.sink.split.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = trunc i32 %i.s to i8                     ; 16 uses
  %i.v = zext nneg i32 %i.s to i64                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.ph183

vector.ph183:                                     ; preds = %bb.k, %.lr.ph.i
  %indvars.iv47.i = phi i64 [ %i.v, %.lr.ph.i ], [ %indvars.iv.next48.i, %bb.k ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv47.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 3                  ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.aa ; 16 uses
  br label %vector.body184

vector.body184:                                   ; preds = %pred.store.continue218, %vector.ph183
  %index185 = phi i64 [ 0, %vector.ph183 ], [ %index.next219, %pred.store.continue218 ] ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185 ; 2 uses
  %wide.load186 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !8
  %i.ac = zext <16 x i8> %wide.load186 to <16 x i32>
  %i.ad = icmp eq <16 x i32> %broadcast.splat, %i.ac ; 16 uses
  %i.ae = extractelement <16 x i1> %i.ad, i64 0
  br i1 %i.ae, label %pred.store.if187, label %pred.store.continue188

pred.store.if187:                                 ; preds = %vector.body184
  store i8 %i.u, ptr %i.ab, align 8, !tbaa !8
  br label %pred.store.continue188

pred.store.continue188:                           ; preds = %pred.store.if187, %vector.body184
  %i.af = extractelement <16 x i1> %i.ad, i64 1
  br i1 %i.af, label %pred.store.if189, label %pred.store.continue190

pred.store.if189:                                 ; preds = %pred.store.continue188
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.u, ptr %i.ah, align 1, !tbaa !8
  br label %pred.store.continue190

pred.store.continue190:                           ; preds = %pred.store.if189, %pred.store.continue188
  %i.ai = extractelement <16 x i1> %i.ad, i64 2
  br i1 %i.ai, label %pred.store.if191, label %pred.store.continue192

pred.store.if191:                                 ; preds = %pred.store.continue190
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.u, ptr %i.ak, align 2, !tbaa !8
  br label %pred.store.continue192

pred.store.continue192:                           ; preds = %pred.store.if191, %pred.store.continue190
  %i.al = extractelement <16 x i1> %i.ad, i64 3
  br i1 %i.al, label %pred.store.if193, label %pred.store.continue194

pred.store.if193:                                 ; preds = %pred.store.continue192
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  store i8 %i.u, ptr %i.an, align 1, !tbaa !8
  br label %pred.store.continue194

pred.store.continue194:                           ; preds = %pred.store.if193, %pred.store.continue192
  %i.ao = extractelement <16 x i1> %i.ad, i64 4
  br i1 %i.ao, label %pred.store.if195, label %pred.store.continue196

pred.store.if195:                                 ; preds = %pred.store.continue194
  %i.ap = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 %i.u, ptr %i.aq, align 4, !tbaa !8
  br label %pred.store.continue196

pred.store.continue196:                           ; preds = %pred.store.if195, %pred.store.continue194
  %i.ar = extractelement <16 x i1> %i.ad, i64 5
  br i1 %i.ar, label %pred.store.if197, label %pred.store.continue198

pred.store.if197:                                 ; preds = %pred.store.continue196
  %i.as = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  store i8 %i.u, ptr %i.at, align 1, !tbaa !8
  br label %pred.store.continue198

pred.store.continue198:                           ; preds = %pred.store.if197, %pred.store.continue196
  %i.au = extractelement <16 x i1> %i.ad, i64 6
  br i1 %i.au, label %pred.store.if199, label %pred.store.continue200

pred.store.if199:                                 ; preds = %pred.store.continue198
  %i.av = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  store i8 %i.u, ptr %i.aw, align 2, !tbaa !8
  br label %pred.store.continue200

pred.store.continue200:                           ; preds = %pred.store.if199, %pred.store.continue198
  %i.ax = extractelement <16 x i1> %i.ad, i64 7
  br i1 %i.ax, label %pred.store.if201, label %pred.store.continue202

pred.store.if201:                                 ; preds = %pred.store.continue200
  %i.ay = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  store i8 %i.u, ptr %i.az, align 1, !tbaa !8
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.if201, %pred.store.continue200
  %i.ba = extractelement <16 x i1> %i.ad, i64 8
  br i1 %i.ba, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %pred.store.continue202
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 %i.u, ptr %i.bc, align 8, !tbaa !8
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %pred.store.continue202
  %i.bd = extractelement <16 x i1> %i.ad, i64 9
  br i1 %i.bd, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  %i.be = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  store i8 %i.u, ptr %i.bf, align 1, !tbaa !8
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %i.bg = extractelement <16 x i1> %i.ad, i64 10
  br i1 %i.bg, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  store i8 %i.u, ptr %i.bi, align 2, !tbaa !8
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.bj = extractelement <16 x i1> %i.ad, i64 11
  br i1 %i.bj, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  %i.bk = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  store i8 %i.u, ptr %i.bl, align 1, !tbaa !8
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.bm = extractelement <16 x i1> %i.ad, i64 12
  br i1 %i.bm, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.bn = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i8 %i.u, ptr %i.bo, align 4, !tbaa !8
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.bp = extractelement <16 x i1> %i.ad, i64 13
  br i1 %i.bp, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.bq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 13
  store i8 %i.u, ptr %i.br, align 1, !tbaa !8
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.bs = extractelement <16 x i1> %i.ad, i64 14
  br i1 %i.bs, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.bt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  store i8 %i.u, ptr %i.bu, align 2, !tbaa !8
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.bv = extractelement <16 x i1> %i.ad, i64 15
  br i1 %i.bv, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.bw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index185
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 15
  store i8 %i.u, ptr %i.bx, align 1, !tbaa !8
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %index.next219 = add nuw i64 %index185, 16      ; 2 uses
  %i.by = icmp eq i64 %index.next219, 256
  br i1 %i.by, label %middle.block220, label %vector.body184, !llvm.loop !99

middle.block220:                                  ; preds = %pred.store.continue218
  %i.bz = getelementptr i8, ptr %i.w, i64 -1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.z, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @SHIFT_2, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
end_hunk_4
begin_hunk_5_@sgrep:bb.a
  %i.ck = icmp sgt i64 %indvars.iv47.i, 1
  br i1 %i.ck, label %vector.ph183, label %._crit_edge.i, !llvm.loop !81

._crit_edge.i:                                    ; preds = %bb.k
  store i32 %i.s, ptr @shift_1, align 4, !tbaa !4
  %i.cl = add nsw i32 %i.r, -2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %._crit_edge.i
  %.241.i = phi i32 [ %i.cl, %._crit_edge.i ], [ %i.ct, %bb.m ] ; 4 uses
  %i.co = zext nneg i32 %.241.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = icmp eq i8 %i.cq, %i.cn
  br i1 %i.cr, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  %i.cs = sub nsw i32 %i.s, %.241.i
  br label %._crit_edge44.sink.split.i

bb.m:                                             ; preds = %bb.l
  %i.ct = add nsw i32 %.241.i, -1
  %.not52.i = icmp eq i32 %.241.i, 0
  br i1 %.not52.i, label %._crit_edge44.i, label %bb.l, !llvm.loop !82

._crit_edge44.sink.split.i:                       ; preds = %.thread.i, %bb.i
  %.sink.i = phi i32 [ %i.cs, %.thread.i ], [ %i.s, %bb.i ] ; 2 uses
  store i32 %.sink.i, ptr @shift_1, align 4, !tbaa !4
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.m, %._crit_edge44.sink.split.i
  %i.cu = phi i32 [ %.sink.i, %._crit_edge44.sink.split.i ], [ %i.s, %bb.m ]
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %m_preprocess.exit

bb.n:                                             ; preds = %._crit_edge44.i
  store i32 1, ptr @shift_1, align 4, !tbaa !4
  br label %m_preprocess.exit

m_preprocess.exit:                                ; preds = %._crit_edge44.i, %bb.n
  store i8 0, ptr @SHIFT_2, align 16, !tbaa !8
  br label %prep_bm.exit

bb.o:                                             ; preds = %bb.h
  %i.cw = trunc i32 %i.j to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %i.cw, i64 256, i1 false), !tbaa !8
  %i.cx = add i32 %i.j, -1                        ; 12 uses
  %i.cy = icmp sgt i32 %i.j, 0
  br i1 %i.cy, label %.lr.ph.preheader.i, label %.sink.split.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.cz = zext i32 %i.cx to i64                   ; 3 uses
  %i.da = and i32 %i.j, 1
  %lcmp.mod227.not = icmp eq i32 %i.da, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i82.prol.loopexit, label %.lr.ph.i82.prol

.lr.ph.i82.prol:                                  ; preds = %.lr.ph.preheader.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @TR, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i32
  %.not29.i.prol = icmp sgt i32 %i.cx, %i.dj
  br i1 %.not29.i.prol, label %.lr.ph.i82.prol.loopexit.unr-lcssa, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i82.prol
  store i8 0, ptr %i.dh, align 1, !tbaa !8
  br label %.lr.ph.i82.prol.loopexit.unr-lcssa

.lr.ph.i82.prol.loopexit.unr-lcssa:               ; preds = %bb.p, %.lr.ph.i82.prol
  %indvars.iv.next.i84.prol = add nsw i64 %i.cz, -1
  br label %.lr.ph.i82.prol.loopexit

.lr.ph.i82.prol.loopexit:                         ; preds = %.lr.ph.i82.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i83.unr = phi i64 [ %i.cz, %.lr.ph.preheader.i ], [ %indvars.iv.next.i84.prol, %.lr.ph.i82.prol.loopexit.unr-lcssa ]
  %i.dk = icmp eq i32 %i.cx, 0
  br i1 %i.dk, label %._crit_edge.i85, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.prol.loopexit, %bb.s
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84.1, %bb.s ], [ %indvars.iv.i83.unr, %.lr.ph.i82.prol.loopexit ] ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i83
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !8
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @TR, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !8
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = zext i8 %i.ds to i32
  %.not29.i = icmp sgt i32 %i.cx, %i.dt
  br i1 %.not29.i, label %.lr.ph.i82.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i82
  %i.du = trunc i64 %indvars.iv.i83 to i32
  %i.dv = sub i32 %i.cx, %i.du
  %i.dw = trunc i32 %i.dv to i8
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !8
  br label %.lr.ph.i82.1

.lr.ph.i82.1:                                     ; preds = %bb.q, %.lr.ph.i82
  %indvars.iv.next.i84 = add nsw i64 %indvars.iv.i83, -1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i84
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !8
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @TR, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !8
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @SHIFT, i64 %i.ec ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i32
  %.not29.i.1 = icmp sgt i32 %i.cx, %i.ef
  br i1 %.not29.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i82.1
  %i.eg = trunc i64 %indvars.iv.next.i84 to i32
  %i.eh = sub i32 %i.cx, %i.eg
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %i.ed, align 1, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i82.1
  %indvars.iv.next.i84.1 = add nsw i64 %indvars.iv.i83, -2
  %i.ej = icmp sgt i64 %indvars.iv.i83, 1
  br i1 %i.ej, label %.lr.ph.i82, label %._crit_edge.i85, !llvm.loop !63

._crit_edge.i85:                                  ; preds = %bb.s, %.lr.ph.i82.prol.loopexit
  store i32 %i.cx, ptr @shift_1, align 4, !tbaa !4
  %i.ek = sext i32 %i.cx to i64
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !8
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @TR, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !8
  %.not44.i = icmp eq i32 %i.j, 1
  br i1 %.not44.i, label %.sink.split.i, label %.lr.ph34.preheader.i

.lr.ph34.preheader.i:                             ; preds = %._crit_edge.i85
  %i.eq = add nsw i32 %i.j, -2
  br label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.t, %.lr.ph34.preheader.i
  %.232.i = phi i32 [ %i.ez, %bb.t ], [ %i.eq, %.lr.ph34.preheader.i ] ; 4 uses
  %i.er = zext nneg i32 %.232.i to i64
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !8
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @TR, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %i.ex = icmp eq i8 %i.ew, %i.ep
  br i1 %i.ex, label %.thread.i86, label %bb.t

.thread.i86:                                      ; preds = %.lr.ph34.i
  %i.ey = sub nsw i32 %i.cx, %.232.i              ; 2 uses
  store i32 %i.ey, ptr @shift_1, align 4, !tbaa !4
  br label %._crit_edge35.i

bb.t:                                             ; preds = %.lr.ph34.i
  %i.ez = add nsw i32 %.232.i, -1
  %.not45.i = icmp eq i32 %.232.i, 0
  br i1 %.not45.i, label %._crit_edge35.i, label %.lr.ph34.i, !llvm.loop !64

._crit_edge35.i:                                  ; preds = %bb.t, %.thread.i86
  %i.fa = phi i32 [ %i.ey, %.thread.i86 ], [ %i.cx, %bb.t ]
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %.sink.split.i, label %bb.u

.sink.split.i:                                    ; preds = %._crit_edge.i85, %._crit_edge35.i, %bb.o
  %.sink.i80 = phi i32 [ %i.cx, %bb.o ], [ 1, %._crit_edge35.i ], [ 1, %._crit_edge.i85 ]
  store i32 %.sink.i80, ptr @shift_1, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %._crit_edge35.i
  %i.fc = load i32, ptr @NOUPPER, align 4, !tbaa !4
  %.not.i81 = icmp eq i32 %i.fc, 0
  br i1 %.not.i81, label %prep_bm.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds nuw (i8, ptr @SHIFT, i64 65), ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds nuw (i8, ptr @SHIFT, i64 97), i64 26, i1 false), !tbaa !8
  br label %prep_bm.exit

bb.v:                                             ; preds = %bb.g
  %i.fd = load i32, ptr @DNA, align 4, !tbaa !4
  %.not77 = icmp eq i32 %i.fd, 0
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @prep4(ptr noundef nonnull %0, i32 noundef %i.j)
  br label %prep_bm.exit

bb.x:                                             ; preds = %bb.v
  %i.fe = icmp sgt i32 %i.j, 23
  br i1 %i.fe, label %bb.y, label %._crit_edge.i95

bb.y:                                             ; preds = %bb.x
  %i.ff = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #22 ; 3 uses
  store i32 65535, ptr @Hashmask, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !8
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph.preheader.i88, label %.lr.ph

.lr.ph.preheader.i88:                             ; preds = %bb.y
  %i.fi = add i64 %i.ff, 4294967295
  %i.fj = and i64 %i.fi, 4294967295               ; 4 uses
  %xtraiter224 = and i64 %i.ff, 3                 ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %.lr.ph.i89.prol.loopexit, label %.lr.ph.i89.prol

.lr.ph.i89.prol:                                  ; preds = %.lr.ph.preheader.i88, %.lr.ph.i89.prol
  %indvars.iv.i90.prol = phi i64 [ %indvars.iv.next.i91.prol, %.lr.ph.i89.prol ], [ %i.fj, %.lr.ph.preheader.i88 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i89.prol ], [ 0, %.lr.ph.preheader.i88 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i90.prol
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fm
  store i8 1, ptr %i.fn, align 1, !tbaa !8
  %indvars.iv.next.i91.prol = add nsw i64 %indvars.iv.i90.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter224
  br i1 %prol.iter.cmp.not, label %.lr.ph.i89.prol.loopexit, label %.lr.ph.i89.prol, !llvm.loop !100

.lr.ph.i89.prol.loopexit:                         ; preds = %.lr.ph.i89.prol, %.lr.ph.preheader.i88
  %indvars.iv.i90.unr = phi i64 [ %i.fj, %.lr.ph.preheader.i88 ], [ %indvars.iv.next.i91.prol, %.lr.ph.i89.prol ]
  %i.fo = icmp samesign ult i64 %i.fj, 3
  br i1 %i.fo, label %.preheader.i, label %.lr.ph.i89

.preheader.i:                                     ; preds = %.lr.ph.i89, %.lr.ph.i89.prol.loopexit
  %.not28.i = icmp eq i32 %i.fg, 1
  br i1 %.not28.i, label %.lr.ph, label %.lr.ph22.i

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.prol.loopexit, %.lr.ph.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i91.3, %.lr.ph.i89 ], [ %indvars.iv.i90.unr, %.lr.ph.i89.prol.loopexit ] ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i90
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !8
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fr
  store i8 1, ptr %i.fs, align 1, !tbaa !8
  %i.ft = getelementptr i8, ptr %0, i64 %indvars.iv.i90
  %i.fu = getelementptr i8, ptr %i.ft, i64 -1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !8
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.fw
  store i8 1, ptr %i.fx, align 1, !tbaa !8
  %i.fy = getelementptr i8, ptr %0, i64 %indvars.iv.i90
  %i.fz = getelementptr i8, ptr %i.fy, i64 -2
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !8
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.gb
  store i8 1, ptr %i.gc, align 1, !tbaa !8
  %indvars.iv.next.i91.2 = add nsw i64 %indvars.iv.i90, -3 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i91.2
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !8
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.gf
  store i8 1, ptr %i.gg, align 1, !tbaa !8
  %indvars.iv.next.i91.3 = add nsw i64 %indvars.iv.i90, -4
  %.not.i92.3 = icmp eq i64 %indvars.iv.next.i91.2, 0
  br i1 %.not.i92.3, label %.preheader.i, label %.lr.ph.i89, !llvm.loop !78

.lr.ph22.i:                                       ; preds = %.preheader.i, %.lr.ph22.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.lr.ph22.i ], [ %i.fj, %.preheader.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.i ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !8
  %i.gj = zext i8 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 8
  %i.gl = getelementptr i8, ptr %i.gh, i64 -1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @MEMBER_1, i64 %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gn
  store i8 1, ptr %i.gp, align 1, !tbaa !8
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, -1
  %i.gq = icmp samesign ugt i64 %indvars.iv25.i, 1
  br i1 %i.gq, label %.lr.ph22.i, label %.lr.ph, !llvm.loop !79

._crit_edge.i95:                                  ; preds = %bb.x
  tail call void @prep(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef %3)
  %i.gr = add i32 %i.j, -1
  %i.gs = lshr exact i32 -2147483648, %i.gr
  store i32 %i.gs, ptr @endposition, align 4, !tbaa !4
  %i.gt = icmp sgt i32 %i.j, 0
  br i1 %i.gt, label %iter.check, label %prep_bm.exit.thread123

prep_bm.exit.thread123:                           ; preds = %._crit_edge.i95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @Mask, i8 -1, i64 1024, i1 false), !tbaa !4
  br label %.preheader

iter.check:                                       ; preds = %._crit_edge.i95
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 9 uses
  %min.iters.check = icmp ult i32 %i.j, 8
  br i1 %min.iters.check, label %.lr.ph52.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check130 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 3 uses
  %wide.load = load <16 x i8>, ptr %0, align 1, !tbaa !8 ; 2 uses
  %i.gu = icmp eq <16 x i8> %wide.load, splat (i8 94)
  %i.gv = icmp eq <16 x i8> %wide.load, splat (i8 36)
  %i.gw = or <16 x i1> %i.gu, %i.gv               ; 16 uses
  %i.gx = extractelement <16 x i1> %i.gw, i64 0
  br i1 %i.gx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.ph
  store i8 10, ptr %0, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.gy = extractelement <16 x i1> %i.gw, i64 1
  br i1 %i.gy, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.gz, align 1, !tbaa !8
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue
  %i.ha = extractelement <16 x i1> %i.gw, i64 2
  br i1 %i.ha, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 10, ptr %i.hb, align 1, !tbaa !8
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.hc = extractelement <16 x i1> %i.gw, i64 3
  br i1 %i.hc, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 10, ptr %i.hd, align 1, !tbaa !8
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.he = extractelement <16 x i1> %i.gw, i64 4
  br i1 %i.he, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 10, ptr %i.hf, align 1, !tbaa !8
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %i.hg = extractelement <16 x i1> %i.gw, i64 5
  br i1 %i.hg, label %pred.store.if139, label %pred.store.continue140

pred.store.if139:                                 ; preds = %pred.store.continue138
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 10, ptr %i.hh, align 1, !tbaa !8
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.if139, %pred.store.continue138
  %i.hi = extractelement <16 x i1> %i.gw, i64 6
  br i1 %i.hi, label %pred.store.if141, label %pred.store.continue142

pred.store.if141:                                 ; preds = %pred.store.continue140
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 10, ptr %i.hj, align 1, !tbaa !8
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.hk = extractelement <16 x i1> %i.gw, i64 7
  br i1 %i.hk, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 10, ptr %i.hl, align 1, !tbaa !8
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.hm = extractelement <16 x i1> %i.gw, i64 8
  br i1 %i.hm, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 10, ptr %i.hn, align 1, !tbaa !8
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.ho = extractelement <16 x i1> %i.gw, i64 9
  br i1 %i.ho, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 10, ptr %i.hp, align 1, !tbaa !8
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.hq = extractelement <16 x i1> %i.gw, i64 10
  br i1 %i.hq, label %pred.store.if149, label %pred.store.continue150

end_hunk_5
begin_hunk_6_@sgrep:bb.a
  store i8 10, ptr %i.ic, align 1, !tbaa !8
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %vec.epilog.vector.body
  %i.ih = extractelement <8 x i1> %i.if, i64 1
  br i1 %i.ih, label %pred.store.if167, label %pred.store.continue168

pred.store.if167:                                 ; preds = %pred.store.continue166
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  store i8 10, ptr %i.ij, align 1, !tbaa !8
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.ik = extractelement <8 x i1> %i.if, i64 2
  br i1 %i.ik, label %pred.store.if169, label %pred.store.continue170

pred.store.if169:                                 ; preds = %pred.store.continue168
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store i8 10, ptr %i.im, align 1, !tbaa !8
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.in = extractelement <8 x i1> %i.if, i64 3
  br i1 %i.in, label %pred.store.if171, label %pred.store.continue172

pred.store.if171:                                 ; preds = %pred.store.continue170
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  store i8 10, ptr %i.ip, align 1, !tbaa !8
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.if171, %pred.store.continue170
  %i.iq = extractelement <8 x i1> %i.if, i64 4
  br i1 %i.iq, label %pred.store.if173, label %pred.store.continue174

pred.store.if173:                                 ; preds = %pred.store.continue172
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i8 10, ptr %i.is, align 1, !tbaa !8
  br label %pred.store.continue174

pred.store.continue174:                           ; preds = %pred.store.if173, %pred.store.continue172
  %i.it = extractelement <8 x i1> %i.if, i64 5
  br i1 %i.it, label %pred.store.if175, label %pred.store.continue176

pred.store.if175:                                 ; preds = %pred.store.continue174
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 5
  store i8 10, ptr %i.iv, align 1, !tbaa !8
  br label %pred.store.continue176

pred.store.continue176:                           ; preds = %pred.store.if175, %pred.store.continue174
  %i.iw = extractelement <8 x i1> %i.if, i64 6
  br i1 %i.iw, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %pred.store.continue176
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 6
  store i8 10, ptr %i.iy, align 1, !tbaa !8
  br label %pred.store.continue178

pred.store.continue178:                           ; preds = %pred.store.if177, %pred.store.continue176
  %i.iz = extractelement <8 x i1> %i.if, i64 7
  br i1 %i.iz, label %pred.store.if179, label %pred.store.continue180

pred.store.if179:                                 ; preds = %pred.store.continue178
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 %index163
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 7
  store i8 10, ptr %i.jb, align 1, !tbaa !8
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.if179, %pred.store.continue178
  %index.next181 = add nuw i64 %index163, 8       ; 2 uses
  %i.jc = icmp eq i64 %index.next181, %n.vec162
  br i1 %i.jc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

vec.epilog.middle.block:                          ; preds = %pred.store.continue180
  %cmp.n182 = icmp eq i64 %n.vec162, %wide.trip.count.i
  br i1 %cmp.n182, label %.preheader47.i, label %.lr.ph52.i.preheader

.lr.ph52.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i96.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec162, %vec.epilog.middle.block ]
  br label %.lr.ph52.i

.preheader47.i:                                   ; preds = %bb.aa, %vec.epilog.middle.block, %pred.store.continue160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) @Mask, i8 -1, i64 1024, i1 false), !tbaa !4
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.jd = icmp eq i32 %i.j, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod223 = trunc i32 %i.j to i1
  br label %.lr.ph56.us.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i.preheader, %bb.aa
  %indvars.iv.i96 = phi i64 [ %indvars.iv.next.i97, %bb.aa ], [ %indvars.iv.i96.ph, %.lr.ph52.i.preheader ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i96 ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  switch i8 %i.jf, label %bb.aa [
    i8 94, label %bb.z
    i8 36, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph52.i, %.lr.ph52.i
  store i8 10, ptr %i.je, align 1, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph52.i
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next.i97, %wide.trip.count.i
  br i1 %exitcond62.not.i, label %.preheader47.i, label %.lr.ph52.i, !llvm.loop !103

.lr.ph56.us.i:                                    ; preds = %._crit_edge57.us.i, %.preheader47.i
  %indvars.iv71.i = phi i64 [ 0, %.preheader47.i ], [ %indvars.iv.next72.i, %._crit_edge57.us.i ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv71.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !8   ; 4 uses
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.ji ; 6 uses
  br i1 %i.jd, label %.epil.preheader, label %.lr.ph56.us.i.new

.lr.ph56.us.i.new:                                ; preds = %.lr.ph56.us.i, %bb.ae
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i.1, %bb.ae ], [ 0, %.lr.ph56.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.ae ], [ 0, %.lr.ph56.us.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv66.i
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !8
  %i.jm = icmp eq i8 %i.jh, %i.jl
  br i1 %i.jm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph56.us.i.new
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.jo = trunc nuw nsw i64 %indvars.iv66.i to i32
  %i.jp = lshr exact i32 -2147483648, %i.jo
  %i.jq = xor i32 %i.jp, -1
  %i.jr = and i32 %i.jn, %i.jq
  store i32 %i.jr, ptr %i.jj, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph56.us.i.new
  %indvars.iv.next67.i = or disjoint i64 %indvars.iv66.i, 1 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next67.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !8
  %i.ju = icmp eq i8 %i.jh, %i.jt
  br i1 %i.ju, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jv = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.jw = trunc nuw nsw i64 %indvars.iv.next67.i to i32
  %i.jx = lshr exact i32 -2147483648, %i.jw
  %i.jy = xor i32 %i.jx, -1
  %i.jz = and i32 %i.jv, %i.jy
  store i32 %i.jz, ptr %i.jj, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge57.us.i.unr-lcssa, label %.lr.ph56.us.i.new, !llvm.loop !47

._crit_edge57.us.i.unr-lcssa:                     ; preds = %bb.ae
  br i1 %lcmp.mod.not, label %._crit_edge57.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge57.us.i.unr-lcssa, %.lr.ph56.us.i
  %indvars.iv66.i.epil.init = phi i64 [ 0, %.lr.ph56.us.i ], [ %indvars.iv.next67.i.1, %._crit_edge57.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv66.i.epil.init
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !8
  %i.kc = icmp eq i8 %i.jh, %i.kb
  br i1 %i.kc, label %bb.af, label %._crit_edge57.us.i

bb.af:                                            ; preds = %.epil.preheader
  %i.kd = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.ke = trunc nuw nsw i64 %indvars.iv66.i.epil.init to i32
  %i.kf = lshr exact i32 -2147483648, %i.ke
  %i.kg = xor i32 %i.kf, -1
  %i.kh = and i32 %i.kd, %i.kg
  store i32 %i.kh, ptr %i.jj, align 4, !tbaa !4
  br label %._crit_edge57.us.i

._crit_edge57.us.i:                               ; preds = %.epil.preheader, %bb.af, %._crit_edge57.us.i.unr-lcssa
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i
  br i1 %exitcond75.not.i, label %prep_bm.exit, label %.lr.ph56.us.i, !llvm.loop !48

prep_bm.exit:                                     ; preds = %._crit_edge57.us.i, %.preheader.preheader.i, %bb.u, %bb.w, %m_preprocess.exit
  %.not78103 = icmp slt i32 %i.j, 1
  br i1 %.not78103, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22.i, %bb.y, %.preheader.i, %prep_bm.exit
  %i.ki = zext nneg i32 %i.j to i64               ; 2 uses
  %i.kj = getelementptr i8, ptr %0, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.kj, i64 -1
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !8
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 10241
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep, i8 %i.kl, i64 %i.ki, i1 false), !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %prep_bm.exit.thread123, %.lr.ph, %prep_bm.exit
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 2048 ; 2 uses
  %i.kn = call i64 @read(i32 noundef %2, ptr noundef nonnull %i.km, i64 noundef 8192) #21
  %i.ko = trunc i64 %i.kn to i32                  ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  br i1 %i.kp, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %.preheader
  %i.kq = icmp sgt i32 %i.j, 23
  %i.kr = icmp sgt i32 %i.j, 20
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph107, %bb.at
  %i.ks = phi i32 [ %i.ko, %.lr.ph107 ], [ %i.lt, %bb.at ]
  %.1106 = phi i32 [ %spec.select, %.lr.ph107 ], [ %i.lr, %bb.at ]
  %i.kt = add nuw nsw i32 %i.ks, 2047             ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0 = phi i32 [ %i.kt, %bb.ag ], [ %i.la, %bb.ah ] ; 4 uses
  %i.ku = zext nneg i32 %.0 to i64                ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !8
  %i.kx = icmp ne i8 %i.kw, 10
  %i.ky = icmp samesign ugt i32 %.0, 2048
  %i.kz = and i1 %i.ky, %i.kx
  %i.la = add nsw i32 %.0, -1
  br i1 %i.kz, label %bb.ah, label %bb.ai, !llvm.loop !104

bb.ai:                                            ; preds = %bb.ah
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ku ; 6 uses
  %i.lc = sub nsw i32 %i.kt, %.0                  ; 2 uses
  %i.ld = add nsw i32 %i.lc, 1
  %i.le = zext nneg i32 %.1106 to i64
  %i.lf = getelementptr i8, ptr %i.b, i64 %i.le   ; 6 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 -1
  store i8 10, ptr %i.lg, align 1, !tbaa !8
  br i1 %i.n, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.kr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @monkey(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lb)
  br label %bb.ar

bb.al:                                            ; preds = %bb.aj
  call void @bm(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lb)
  br label %bb.ar

bb.am:                                            ; preds = %bb.ai
  %i.lh = load i32, ptr @DNA, align 4, !tbaa !4
  %.not79 = icmp eq i32 %i.lh, 0
  br i1 %.not79, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @monkey4(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lb, i32 noundef %3)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  br i1 %i.kq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @a_monkey(ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lb, i32 noundef %3)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @agrep(ptr nonnull poison, i32 noundef %i.j, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lb, i32 noundef %3)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq, %bb.ap, %bb.ak, %bb.al
  %i.li = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %i.lj = icmp ne i32 %i.li, 0
  %i.lk = load i32, ptr @num_of_matched, align 4
  %i.ll = icmp ne i32 %i.lk, 0
  %or.cond = select i1 %i.lj, i1 %i.ll, i1 false
  br i1 %or.cond, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  %i.lm = sub nsw i32 2047, %i.lc
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.lm, i32 1024) ; 2 uses
  %i.ln = zext nneg i32 %spec.store.select to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ln
  %i.lp = sext i32 %i.ld to i64
  %i.lq = call ptr @strncpy(ptr noundef nonnull %i.lo, ptr noundef nonnull %i.lb, i64 noundef %i.lp) #21 ; 0 uses
  %i.lr = add nuw nsw i32 %spec.store.select, 1
  %i.ls = call i64 @read(i32 noundef %2, ptr noundef nonnull %i.km, i64 noundef 8192) #21
  %i.lt = trunc i64 %i.ls to i32                  ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %bb.ag, label %.loopexit, !llvm.loop !105

.loopexit:                                        ; preds = %bb.at, %.preheader, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold nounwind }
attributes #25 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!20 = distinct !{null}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !15, !24, !23}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15, !23, !24}
!29 = distinct !{!29, !15, !24, !23}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15, !23, !24}
!33 = distinct !{!33, !15, !24, !23}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15, !23, !24}
!42 = distinct !{!42, !15, !24, !23}
!43 = distinct !{!43, !15, !23, !24}
!44 = !{!"branch_weights", i32 8, i32 24}
!45 = distinct !{!45, !15, !23, !24}
!46 = distinct !{!46, !15, !24, !23}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !57}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15, !23, !24}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 omnipotent char", !11, i64 0}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = distinct !{!91, !15}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !57}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !57}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15, !23, !24}
!100 = distinct !{!100, !57}
!101 = !{!"branch_weights", i32 8, i32 8}
!102 = distinct !{!102, !15, !23, !24}
!103 = distinct !{!103, !15, !24, !23}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
end_hunk_6
