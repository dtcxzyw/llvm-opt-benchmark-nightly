inline.NumInlined: 17
begin_hunk_0
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
define dso_local void @char_tr(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
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
define dso_local void @s_output(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
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
  %i.p = getelementptr inbounds i8, ptr %0, i64 %indvars.iv24
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 2 uses
  %.not1520 = icmp eq i8 %i.q, 10
  br i1 %.not1520, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %.preheader, %.lr.ph21
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph21 ], [ %indvars.iv24, %.preheader ]
  %i.r = phi i8 [ %i.w, %.lr.ph21 ], [ %i.q, %.preheader ]
  %i.s = zext i8 %i.r to i32
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.u = tail call noundef i32 @putc(i32 noundef %i.s, ptr noundef %i.t), !inline_history !20 ; 0 uses
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8     ; 2 uses
  %.not15 = icmp eq i8 %i.w, 10
  br i1 %.not15, label %._crit_edge, label %.lr.ph21, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph21, %.preheader
  %.lcssa.in = phi i64 [ %indvars.iv24, %.preheader ], [ %indvars.iv.next28, %.lr.ph21 ]
  %.lcssa = trunc i64 %.lcssa.in to i32
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.y = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.x), !inline_history !20 ; 0 uses
  store i32 %.lcssa, ptr %1, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader17, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #5 {
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
end_hunk_0
begin_hunk_1_@agrep:bb.a
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %spec.store.select188 = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 %i.eg) ; 3 uses
  store i32 %spec.store.select188, ptr %i.ez, align 4
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 0) ; 2 uses
  store i32 -1, ptr %i.c, align 16, !tbaa !4
  store i32 -1, ptr %i.b, align 16, !tbaa !4
  store i32 2147483647, ptr %i.ek, align 4, !tbaa !4
  store i32 2147483647, ptr %i.el, align 4, !tbaa !4
  br i1 %.not176247, label %.preheader225, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %load_initial = load i32, ptr %i.b, align 16    ; 2 uses
  br i1 %i.eu, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader225.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  br i1 %lcmp.mod359.not, label %.preheader225, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader225.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.fm, %.preheader225.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv286.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next287.1, %.preheader225.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod360)
  %i.fb = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv286.epil.init
  %i.fc = lshr i32 %store_forwarded.epil.init, 1
  %i.fd = and i32 %i.fc, %store_forwarded.epil.init ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv286.epil.init
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !4
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !4
  br label %.preheader225

.preheader225:                                    ; preds = %.lr.ph.epil.preheader, %.preheader225.loopexit.unr-lcssa, %bb.l
  %i.ff = icmp slt i32 %spec.store.select, %spec.store.select188
  br i1 %i.ff, label %.lr.ph271, label %._crit_edge272

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %i.fm, %.lr.ph ], [ %load_initial, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %niter362 = phi i64 [ %niter362.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fg = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv286
  %i.fh = lshr i32 %store_forwarded, 1
  %i.fi = and i32 %i.fh, %store_forwarded         ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv286
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !4
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !4
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.fk = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv.next287
  %i.fl = lshr i32 %i.fi, 1
  %i.fm = and i32 %i.fl, %i.fi                    ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next287
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !4
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !4
  %indvars.iv.next287.1 = add nuw nsw i64 %indvars.iv286, 2 ; 2 uses
  %niter362.next.1 = add nuw i64 %niter362, 2     ; 2 uses
  %niter362.ncmp.1 = icmp eq i64 %niter362.next.1, %unroll_iter361
  br i1 %niter362.ncmp.1, label %.preheader225.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !58

.lr.ph271:                                        ; preds = %.preheader225, %.loopexit
  %.0140270 = phi i32 [ %.4, %.loopexit ], [ %spec.store.select, %.preheader225 ] ; 3 uses
  %.1148269 = phi i32 [ %.3150, %.loopexit ], [ %.0147275, %.preheader225 ] ; 3 uses
  %i.fo = add nsw i32 %.0140270, 1                ; 5 uses
  %i.fp = sext i32 %.0140270 to i64
  %i.fq = getelementptr inbounds i8, ptr %2, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8   ; 2 uses
  %i.fs = icmp ne i8 %i.fr, 10
  %brmerge = or i1 %i.fs, %.not177249
  br i1 %brmerge, label %.loopexit224, label %.lr.ph251.preheader

.lr.ph251.preheader:                              ; preds = %.lr.ph271
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  br label %.loopexit224

.loopexit224:                                     ; preds = %.lr.ph251.preheader, %.lr.ph271
  %i.ft = zext i8 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4  ; 4 uses
  %i.fw = load i32, ptr %i.c, align 16, !tbaa !4  ; 3 uses
  %i.fx = lshr i32 %i.fw, 1
  %i.fy = or i32 %i.fx, %i.fv                     ; 3 uses
  store i32 %i.fy, ptr %i.b, align 16, !tbaa !4
  br i1 %.not176247, label %._crit_edge, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %.loopexit224
  br i1 %i.ev, label %.lr.ph254.epil.preheader, label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %.lr.ph254
  %i.fz = phi i32 [ %i.gr, %.lr.ph254 ], [ %i.fy, %.lr.ph254.preheader ]
  %i.ga = phi i32 [ %i.gl, %.lr.ph254 ], [ %i.fw, %.lr.ph254.preheader ] ; 2 uses
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %.lr.ph254 ], [ 1, %.lr.ph254.preheader ] ; 4 uses
  %niter370 = phi i64 [ %niter370.next.1, %.lr.ph254 ], [ 0, %.lr.ph254.preheader ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv294
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4  ; 3 uses
  %i.gd = lshr i32 %i.gc, 1
  %i.ge = or i32 %i.gd, %i.fv
  %i.gf = and i32 %i.fz, %i.ga
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = and i32 %i.ge, %i.gg
  %i.gi = and i32 %i.gh, %i.ga                    ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv294
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !4
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next295
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4  ; 3 uses
  %i.gm = lshr i32 %i.gl, 1
  %i.gn = or i32 %i.gm, %i.fv
  %i.go = and i32 %i.gi, %i.gc
  %i.gp = lshr i32 %i.go, 1
  %i.gq = and i32 %i.gn, %i.gp
  %i.gr = and i32 %i.gq, %i.gc                    ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next295
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !4
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %niter370.next.1 = add nuw i64 %niter370, 2     ; 2 uses
  %niter370.ncmp.1 = icmp eq i64 %niter370.next.1, %unroll_iter369
  br i1 %niter370.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph254, !llvm.loop !59

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph254
  br i1 %lcmp.mod367.not, label %._crit_edge, label %.lr.ph254.epil.preheader

.lr.ph254.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph254.preheader
  %.epil.init = phi i32 [ %i.fy, %.lr.ph254.preheader ], [ %i.gr, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init366 = phi i32 [ %i.fw, %.lr.ph254.preheader ], [ %i.gl, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv294.epil.init = phi i64 [ 1, %.lr.ph254.preheader ], [ %indvars.iv.next295.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod368)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv294.epil.init
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = lshr i32 %i.gu, 1
  %i.gw = or i32 %i.gv, %i.fv
  %i.gx = and i32 %.epil.init, %.epil.init366
  %i.gy = lshr i32 %i.gx, 1
  %i.gz = and i32 %i.gw, %i.gy
  %i.ha = and i32 %i.gz, %.epil.init366
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv294.epil.init
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph254.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit224
  %i.hc = load i32, ptr %i.en, align 4, !tbaa !4
  %i.hd = and i32 %i.hc, %i.ej
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.m, label %.loopexit222

bb.m:                                             ; preds = %._crit_edge
  %i.hf = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr @num_of_matched, align 4, !tbaa !4
  %i.hh = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not179 = icmp eq i32 %i.hh, 0
  br i1 %.not179, label %bb.n, label %.loopexit226

bb.n:                                             ; preds = %bb.m
  %.not180.not = icmp slt i32 %.0140270, %.1148269
  br i1 %.not180.not, label %s_output.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hi = load i32, ptr @SILENT, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.hi, 0
  br i1 %.not.i, label %bb.p, label %s_output.exit

bb.p:                                             ; preds = %bb.o
  %i.hj = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not13.i = icmp eq i32 %i.hj, 0
  br i1 %.not13.i, label %bb.q, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.p
  %i.hk = sext i32 %i.fo to i64                   ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %2, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !8
  %.not1619.i = icmp eq i8 %i.hm, 10
  br i1 %.not1619.i, label %s_output.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.hk, %.preheader17.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !8
  %.not16.i = icmp eq i8 %i.ho, 10
  br i1 %.not16.i, label %s_output.exit.loopexit, label %.lr.ph.i, !llvm.loop !16

bb.q:                                             ; preds = %bb.p
  %i.hp = load i32, ptr @FNAME, align 4, !tbaa !4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.hs = sext i32 %i.fo to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.t ], [ %i.hs, %bb.s ] ; 4 uses
  %indvars.iv.next25.i = add nsw i64 %indvars.iv24.i, -1 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next25.i
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !8
  %.not14.i = icmp eq i8 %i.hu, 10
  br i1 %.not14.i, label %.preheader.i, label %bb.t, !llvm.loop !17

.preheader.i:                                     ; preds = %bb.t
  %i.hv = getelementptr inbounds i8, ptr %2, i64 %indvars.iv24.i
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !8   ; 2 uses
  %.not1520.i = icmp eq i8 %i.hw, 10
  br i1 %.not1520.i, label %._crit_edge.i, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.preheader.i, %.lr.ph21.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph21.i ], [ %indvars.iv24.i, %.preheader.i ]
  %i.hx = phi i8 [ %i.ic, %.lr.ph21.i ], [ %i.hw, %.preheader.i ]
  %i.hy = zext i8 %i.hx to i32
  %i.hz = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ia = tail call noundef i32 @putc(i32 noundef %i.hy, ptr noundef %i.hz), !inline_history !20 ; 0 uses
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, 1 ; 3 uses
  %i.ib = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next28.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !8   ; 2 uses
  %.not15.i = icmp eq i8 %i.ic, 10
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph21.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph21.i, %.preheader.i
  %.lcssa.in.i = phi i64 [ %indvars.iv24.i, %.preheader.i ], [ %indvars.iv.next28.i, %.lr.ph21.i ]
  %.lcssa.i = trunc i64 %.lcssa.in.i to i32
  %i.id = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ie = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.id), !inline_history !20 ; 0 uses
  br label %s_output.exit

s_output.exit.loopexit:                           ; preds = %.lr.ph.i
  %i.if = trunc nsw i64 %indvars.iv.next.i to i32
  br label %s_output.exit

s_output.exit:                                    ; preds = %s_output.exit.loopexit, %._crit_edge.i, %.preheader17.i, %bb.o, %bb.n
  %.1141 = phi i32 [ %.1148269, %bb.n ], [ %.lcssa.i, %._crit_edge.i ], [ %i.fo, %.preheader17.i ], [ %i.fo, %bb.o ], [ %i.if, %s_output.exit.loopexit ] ; 5 uses
  br i1 %.not177249, label %.loopexit222.thread, label %.lr.ph257.preheader

.loopexit222.thread:                              ; preds = %s_output.exit
  %i.ig = sext i32 %.1141 to i64
  %i.ih = getelementptr inbounds i8, ptr %2, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !8
  br label %.loopexit221

.lr.ph257.preheader:                              ; preds = %s_output.exit
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  br label %.loopexit222

.loopexit222:                                     ; preds = %.lr.ph257.preheader, %._crit_edge
  %.2149 = phi i32 [ %.1148269, %._crit_edge ], [ %.1141, %.lr.ph257.preheader ] ; 2 uses
  %.2142 = phi i32 [ %i.fo, %._crit_edge ], [ %.1141, %.lr.ph257.preheader ] ; 3 uses
  %i.ij = sext i32 %.2142 to i64
  %i.ik = getelementptr inbounds i8, ptr %2, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !8   ; 2 uses
  %i.im = icmp ne i8 %i.il, 10
  %brmerge280 = or i1 %i.im, %.not177249
  br i1 %brmerge280, label %.loopexit221, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %.loopexit222
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  br label %.loopexit221

.loopexit221:                                     ; preds = %.loopexit222.thread, %.lr.ph260.preheader, %.loopexit222
  %i.in = phi i8 [ %i.ii, %.loopexit222.thread ], [ 10, %.lr.ph260.preheader ], [ %i.il, %.loopexit222 ]
  %.2142338 = phi i32 [ %.1141, %.loopexit222.thread ], [ %.2142, %.lr.ph260.preheader ], [ %.2142, %.loopexit222 ] ; 2 uses
  %.2149337 = phi i32 [ %.1141, %.loopexit222.thread ], [ %.2149, %.lr.ph260.preheader ], [ %.2149, %.loopexit222 ] ; 3 uses
  %i.io = add nsw i32 %.2142338, 1                ; 5 uses
  %i.ip = zext i8 %i.in to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @Mask, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4  ; 4 uses
  %i.is = load i32, ptr %i.b, align 16, !tbaa !4  ; 3 uses
  %i.it = lshr i32 %i.is, 1
  %i.iu = or i32 %i.it, %i.ir                     ; 3 uses
  store i32 %i.iu, ptr %i.c, align 16, !tbaa !4
  br i1 %.not176247, label %._crit_edge265, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %.loopexit221
  br i1 %i.ew, label %.lr.ph264.epil.preheader, label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %.lr.ph264
  %i.iv = phi i32 [ %i.jn, %.lr.ph264 ], [ %i.iu, %.lr.ph264.preheader ]
  %i.iw = phi i32 [ %i.jh, %.lr.ph264 ], [ %i.is, %.lr.ph264.preheader ] ; 2 uses
  %indvars.iv305 = phi i64 [ %indvars.iv.next306.1, %.lr.ph264 ], [ 1, %.lr.ph264.preheader ] ; 4 uses
  %niter380 = phi i64 [ %niter380.next.1, %.lr.ph264 ], [ 0, %.lr.ph264.preheader ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv305
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4  ; 3 uses
  %i.iz = lshr i32 %i.iy, 1
  %i.ja = or i32 %i.iz, %i.ir
  %i.jb = and i32 %i.iv, %i.iw
  %i.jc = lshr i32 %i.jb, 1
  %i.jd = and i32 %i.ja, %i.jc
  %i.je = and i32 %i.jd, %i.iw                    ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv305
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !4
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next306
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4  ; 3 uses
  %i.ji = lshr i32 %i.jh, 1
  %i.jj = or i32 %i.ji, %i.ir
  %i.jk = and i32 %i.je, %i.iy
  %i.jl = lshr i32 %i.jk, 1
  %i.jm = and i32 %i.jj, %i.jl
  %i.jn = and i32 %i.jm, %i.iy                    ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next306
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !4
  %indvars.iv.next306.1 = add nuw nsw i64 %indvars.iv305, 2 ; 2 uses
  %niter380.next.1 = add nuw i64 %niter380, 2     ; 2 uses
  %niter380.ncmp.1 = icmp eq i64 %niter380.next.1, %unroll_iter379
  br i1 %niter380.ncmp.1, label %._crit_edge265.loopexit.unr-lcssa, label %.lr.ph264, !llvm.loop !60

._crit_edge265.loopexit.unr-lcssa:                ; preds = %.lr.ph264
  br i1 %lcmp.mod377.not, label %._crit_edge265, label %.lr.ph264.epil.preheader

.lr.ph264.epil.preheader:                         ; preds = %._crit_edge265.loopexit.unr-lcssa, %.lr.ph264.preheader
  %.epil.init374 = phi i32 [ %i.iu, %.lr.ph264.preheader ], [ %i.jn, %._crit_edge265.loopexit.unr-lcssa ]
  %.epil.init376 = phi i32 [ %i.is, %.lr.ph264.preheader ], [ %i.jh, %._crit_edge265.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv305.epil.init = phi i64 [ 1, %.lr.ph264.preheader ], [ %indvars.iv.next306.1, %._crit_edge265.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod378)
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv305.epil.init
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !4
  %i.jr = lshr i32 %i.jq, 1
  %i.js = or i32 %i.jr, %i.ir
  %i.jt = and i32 %.epil.init374, %.epil.init376
  %i.ju = lshr i32 %i.jt, 1
  %i.jv = and i32 %i.js, %i.ju
  %i.jw = and i32 %i.jv, %.epil.init376
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv305.epil.init
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !4
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %.lr.ph264.epil.preheader, %._crit_edge265.loopexit.unr-lcssa, %.loopexit221
  %i.jy = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.jz = and i32 %i.jy, %i.ej
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %._crit_edge265
  %i.kb = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.kc = add nsw i32 %i.kb, 1
  store i32 %i.kc, ptr @num_of_matched, align 4, !tbaa !4
  %i.kd = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %.not184 = icmp eq i32 %i.kd, 0
  br i1 %.not184, label %bb.v, label %.loopexit226

bb.v:                                             ; preds = %bb.u
  %.not185.not = icmp slt i32 %.2142338, %.2149337
  br i1 %.not185.not, label %s_output.exit211, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ke = load i32, ptr @SILENT, align 4, !tbaa !4
  %.not.i189 = icmp eq i32 %i.ke, 0
  br i1 %.not.i189, label %bb.x, label %s_output.exit211

bb.x:                                             ; preds = %bb.w
  %i.kf = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not13.i190 = icmp eq i32 %i.kf, 0
  br i1 %.not13.i190, label %bb.y, label %.preheader17.i191

.preheader17.i191:                                ; preds = %bb.x
  %i.kg = sext i32 %i.io to i64                   ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %2, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !8
  %.not1619.i193 = icmp eq i8 %i.ki, 10
  br i1 %.not1619.i193, label %s_output.exit211, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.preheader17.i191, %.lr.ph.i194
  %indvars.iv.i195 = phi i64 [ %indvars.iv.next.i196, %.lr.ph.i194 ], [ %i.kg, %.preheader17.i191 ]
  %indvars.iv.next.i196 = add nsw i64 %indvars.iv.i195, 1 ; 3 uses
  %i.kj = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i196
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !8
  %.not16.i197 = icmp eq i8 %i.kk, 10
  br i1 %.not16.i197, label %s_output.exit211.loopexit, label %.lr.ph.i194, !llvm.loop !16

bb.y:                                             ; preds = %bb.x
  %i.kl = load i32, ptr @FNAME, align 4, !tbaa !4
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ko = sext i32 %i.io to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv24.i198 = phi i64 [ %indvars.iv.next25.i199, %bb.ab ], [ %i.ko, %bb.aa ] ; 4 uses
  %indvars.iv.next25.i199 = add nsw i64 %indvars.iv24.i198, -1 ; 2 uses
  %i.kp = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next25.i199
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !8
  %.not14.i200 = icmp eq i8 %i.kq, 10
  br i1 %.not14.i200, label %.preheader.i201, label %bb.ab, !llvm.loop !17

.preheader.i201:                                  ; preds = %bb.ab
  %i.kr = getelementptr inbounds i8, ptr %2, i64 %indvars.iv24.i198
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !8   ; 2 uses
  %.not1520.i203 = icmp eq i8 %i.ks, 10
  br i1 %.not1520.i203, label %._crit_edge.i208, label %.lr.ph21.i204

.lr.ph21.i204:                                    ; preds = %.preheader.i201, %.lr.ph21.i204
  %indvars.iv27.i205 = phi i64 [ %indvars.iv.next28.i206, %.lr.ph21.i204 ], [ %indvars.iv24.i198, %.preheader.i201 ]
  %i.kt = phi i8 [ %i.ky, %.lr.ph21.i204 ], [ %i.ks, %.preheader.i201 ]
  %i.ku = zext i8 %i.kt to i32
  %i.kv = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.kw = tail call noundef i32 @putc(i32 noundef %i.ku, ptr noundef %i.kv), !inline_history !20 ; 0 uses
  %indvars.iv.next28.i206 = add nsw i64 %indvars.iv27.i205, 1 ; 3 uses
  %i.kx = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next28.i206
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !8   ; 2 uses
  %.not15.i207 = icmp eq i8 %i.ky, 10
  br i1 %.not15.i207, label %._crit_edge.i208, label %.lr.ph21.i204, !llvm.loop !21

._crit_edge.i208:                                 ; preds = %.lr.ph21.i204, %.preheader.i201
  %.lcssa.in.i209 = phi i64 [ %indvars.iv24.i198, %.preheader.i201 ], [ %indvars.iv.next28.i206, %.lr.ph21.i204 ]
  %.lcssa.i210 = trunc i64 %.lcssa.in.i209 to i32
  %i.kz = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.la = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.kz), !inline_history !20 ; 0 uses
  br label %s_output.exit211

s_output.exit211.loopexit:                        ; preds = %.lr.ph.i194
  %i.lb = trunc nsw i64 %indvars.iv.next.i196 to i32
  br label %s_output.exit211

s_output.exit211:                                 ; preds = %s_output.exit211.loopexit, %._crit_edge.i208, %.preheader17.i191, %bb.w, %bb.v
  %.3 = phi i32 [ %.2149337, %bb.v ], [ %.lcssa.i210, %._crit_edge.i208 ], [ %i.io, %.preheader17.i191 ], [ %i.io, %bb.w ], [ %i.lb, %s_output.exit211.loopexit ] ; 4 uses
  br i1 %.not177249, label %.loopexit, label %.lr.ph268.preheader

.lr.ph268.preheader:                              ; preds = %s_output.exit211
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.eq, i1 false), !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph268.preheader, %s_output.exit211, %._crit_edge265
  %.3150 = phi i32 [ %.2149337, %._crit_edge265 ], [ %.3, %s_output.exit211 ], [ %.3, %.lr.ph268.preheader ] ; 2 uses
  %.4 = phi i32 [ %i.io, %._crit_edge265 ], [ %.3, %s_output.exit211 ], [ %.3, %.lr.ph268.preheader ] ; 2 uses
  %i.lc = icmp slt i32 %.4, %spec.store.select188
  br i1 %i.lc, label %.lr.ph271, label %._crit_edge272, !llvm.loop !61

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
define dso_local void @prep_bm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
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
end_hunk_1
