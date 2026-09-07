Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_test_fuzzer?download=true
inline.NumInlined: 21
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@rndContext = internal global i64 0, align 8
@fuzzerInvocationCounter = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"maxLength\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"That operation is not supported\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @SDLTest_FuzzerInit(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  store i64 %0, ptr @rndContext, align 8
  store i32 0, ptr @fuzzerInvocationCounter, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @SDLTest_GetFuzzerInvocationCount() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @SDLTest_RandomUint8() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  ret i8 %i.e
}

declare i32 @SDL_rand_bits_r(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local signext i8 @SDLTest_RandomSint8() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = lshr i32 %i.c, 24
  %i.e = trunc nuw i32 %i.d to i8
  ret i8 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @SDLTest_RandomUint16() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = lshr i32 %i.c, 16
  %i.e = trunc nuw i32 %i.d to i16
  ret i16 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @SDLTest_RandomSint16() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = lshr i32 %i.c, 16
  %i.e = trunc nuw i32 %i.d to i16
  ret i16 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SDLTest_RandomUint32() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SDLTest_RandomSint32() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SDLTest_RandomUint64() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @fuzzerInvocationCounter, align 4
  %i.f = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %.sroa.4.0.insert.ext = zext i32 %i.f to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @SDLTest_RandomSint64() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @fuzzerInvocationCounter, align 4
  %i.f = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %.sroa.4.0.insert.ext = zext i32 %i.f to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SDLTest_RandomIntegerInRange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = icmp eq i32 %0, %1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  %spec.select24 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1) ; 2 uses
  %i.d = sext i32 %spec.select to i64
  %i.e = sext i32 %spec.select24 to i64
  %i.f = sub nsw i64 %i.d, %i.e                   ; 3 uses
  %i.g = icmp ult i64 %i.f, 2147483647
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %i.f to i32
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef %i.i) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.l = zext i32 %i.k to i64
  %i.m = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = or disjoint i64 %i.o, %i.l
  %i.q = add nsw i64 %i.f, 1
  %i.r = urem i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi i32 [ %i.j, %bb.c ], [ %i.s, %bb.d ]
  %.0 = add i32 %.pn, %spec.select24
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ %0, %bb.a ]
  ret i32 %.1
}

declare i32 @SDL_rand_r(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @SDLTest_RandomUint8BoundaryValue(i8 noundef zeroext %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 12 uses
  %i.b = zext i8 %0 to i64                        ; 2 uses
  %i.c = zext i8 %1 to i64                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.c) ; 9 uses
  %.51.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.c) ; 6 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, %0
  br i1 %i.d, label %SDLTest_GenerateUnsignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 %.51.i, %..i             ; 4 uses
  %i.f = icmp samesign ult i64 %i.e, 4
  br i1 %i.f, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %i.e to i8
  %umax = tail call i8 @llvm.umax.i8(i8 %i.g, i8 1) ; 3 uses
  store i64 %..i, ptr %i.a, align 16
  %exitcond.not = icmp samesign ult i64 %i.e, 2
  br i1 %exitcond.not, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.preheader.i
  %i.h = add nuw nsw i64 %..i, 1
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %3, align 8
  %exitcond.not.a = icmp eq i64 %i.e, 2
  br i1 %exitcond.not.a, label %.thread.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i
  %4 = add nuw nsw i64 %..i, 2
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %5, align 16
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.i = add nuw nsw i64 %..i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = add nsw i64 %.51.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.51.i, ptr %i.m, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not5 = icmp eq i64 %.51.i, 255
  br i1 %.not5, label %.loopexit.i, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.n = add nsw i64 %..i, -1
  store i64 %i.n, ptr %i.a, align 16
  %.not = icmp eq i64 %.51.i, 255
  br i1 %.not, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.1.i4 = phi i8 [ 1, %.thread ], [ 0, %bb.f ]   ; 2 uses
  %i.o = add nuw nsw i64 %.51.i, 1
  %i.p = zext nneg i8 %.1.i4 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  store i64 %i.o, ptr %i.q, align 8
  %i.r = add nuw nsw i8 %.1.i4, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %bb.f
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

.thread.i:                                        ; preds = %.preheader.preheader.i, %.preheader.i, %.preheader.i.2, %.thread, %bb.g, %bb.d
  %.253.i = phi i8 [ 1, %.thread ], [ %i.r, %bb.g ], [ 4, %bb.d ], [ %umax, %.preheader.i.2 ], [ %umax, %.preheader.i ], [ %umax, %.preheader.preheader.i ]
  %i.t = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @fuzzerInvocationCounter, align 4
  %i.v = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = urem i8 %i.x, %.253.i
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

SDLTest_GenerateUnsignedBoundaryValues.exit:      ; preds = %bb.b, %.loopexit.i, %.thread.i
  %.045.i = phi i64 [ %i.ab, %.thread.i ], [ 0, %.loopexit.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ac = trunc i64 %.045.i to i8
  ret i8 %i.ac
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @SDLTest_RandomUint16BoundaryValue(i16 noundef zeroext %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 12 uses
  %i.b = zext i16 %0 to i64                       ; 2 uses
  %i.c = zext i16 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.c) ; 9 uses
  %.51.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.c) ; 6 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i16 %1, %0
  br i1 %i.d, label %SDLTest_GenerateUnsignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 %.51.i, %..i             ; 4 uses
  %i.f = icmp samesign ult i64 %i.e, 4
  br i1 %i.f, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %i.e to i8
  %umax = tail call i8 @llvm.umax.i8(i8 %i.g, i8 1) ; 3 uses
  store i64 %..i, ptr %i.a, align 16
  %exitcond.not = icmp samesign ult i64 %i.e, 2
  br i1 %exitcond.not, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.preheader.i
  %i.h = add nuw nsw i64 %..i, 1
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %3, align 8
  %exitcond.not.a = icmp eq i64 %i.e, 2
  br i1 %exitcond.not.a, label %.thread.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i
  %4 = add nuw nsw i64 %..i, 2
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %5, align 16
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.i = add nuw nsw i64 %..i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = add nsw i64 %.51.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.51.i, ptr %i.m, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not5 = icmp eq i64 %.51.i, 65535
  br i1 %.not5, label %.loopexit.i, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.n = add nsw i64 %..i, -1
  store i64 %i.n, ptr %i.a, align 16
  %.not = icmp eq i64 %.51.i, 65535
  br i1 %.not, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.1.i4 = phi i8 [ 1, %.thread ], [ 0, %bb.f ]   ; 2 uses
  %i.o = add nuw nsw i64 %.51.i, 1
  %i.p = zext nneg i8 %.1.i4 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  store i64 %i.o, ptr %i.q, align 8
  %i.r = add nuw nsw i8 %.1.i4, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %bb.f
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

.thread.i:                                        ; preds = %.preheader.preheader.i, %.preheader.i, %.preheader.i.2, %.thread, %bb.g, %bb.d
  %.253.i = phi i8 [ 1, %.thread ], [ %i.r, %bb.g ], [ 4, %bb.d ], [ %umax, %.preheader.i.2 ], [ %umax, %.preheader.i ], [ %umax, %.preheader.preheader.i ]
  %i.t = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @fuzzerInvocationCounter, align 4
  %i.v = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = urem i8 %i.x, %.253.i
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

SDLTest_GenerateUnsignedBoundaryValues.exit:      ; preds = %bb.b, %.loopexit.i, %.thread.i
  %.045.i = phi i64 [ %i.ab, %.thread.i ], [ 0, %.loopexit.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ac = trunc i64 %.045.i to i16
  ret i16 %i.ac
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SDLTest_RandomUint32BoundaryValue(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 12 uses
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.c) ; 9 uses
  %.51.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.c) ; 6 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, %0
  br i1 %i.d, label %SDLTest_GenerateUnsignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 %.51.i, %..i             ; 4 uses
  %i.f = icmp samesign ult i64 %i.e, 4
  br i1 %i.f, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %i.e to i8
  %umax = tail call i8 @llvm.umax.i8(i8 %i.g, i8 1) ; 3 uses
  store i64 %..i, ptr %i.a, align 16
  %exitcond.not = icmp samesign ult i64 %i.e, 2
  br i1 %exitcond.not, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.preheader.i
  %i.h = add nuw nsw i64 %..i, 1
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %3, align 8
  %exitcond.not.a = icmp eq i64 %i.e, 2
  br i1 %exitcond.not.a, label %.thread.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i
  %4 = add nuw nsw i64 %..i, 2
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %5, align 16
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.i = add nuw nsw i64 %..i, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = add nsw i64 %.51.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %i.l, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.51.i, ptr %i.m, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not5 = icmp eq i64 %.51.i, 4294967295
  br i1 %.not5, label %.loopexit.i, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.n = add nsw i64 %..i, -1
  store i64 %i.n, ptr %i.a, align 16
  %.not = icmp eq i64 %.51.i, 4294967295
  br i1 %.not, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.1.i4 = phi i8 [ 1, %.thread ], [ 0, %bb.f ]   ; 2 uses
  %i.o = add nuw nsw i64 %.51.i, 1
  %i.p = zext nneg i8 %.1.i4 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  store i64 %i.o, ptr %i.q, align 8
  %i.r = add nuw nsw i8 %.1.i4, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %bb.f
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

.thread.i:                                        ; preds = %.preheader.preheader.i, %.preheader.i, %.preheader.i.2, %.thread, %bb.g, %bb.d
  %.253.i = phi i8 [ 1, %.thread ], [ %i.r, %bb.g ], [ 4, %bb.d ], [ %umax, %.preheader.i.2 ], [ %umax, %.preheader.i ], [ %umax, %.preheader.preheader.i ]
  %i.t = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @fuzzerInvocationCounter, align 4
  %i.v = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.w = lshr i32 %i.v, 24
  %i.x = trunc nuw i32 %i.w to i8
  %i.y = urem i8 %i.x, %.253.i
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

SDLTest_GenerateUnsignedBoundaryValues.exit:      ; preds = %bb.b, %.loopexit.i, %.thread.i
  %.045.i = phi i64 [ %i.ab, %.thread.i ], [ 0, %.loopexit.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ac = trunc i64 %.045.i to i32
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SDLTest_RandomUint64BoundaryValue(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.umin.i64(i64 %0, i64 %1) ; 9 uses
  %.51.i = tail call i64 @llvm.umax.i64(i64 %0, i64 %1) ; 6 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, %0
  br i1 %i.b, label %SDLTest_GenerateUnsignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sub nuw i64 %.51.i, %..i                 ; 4 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %i.c to i8
  %umax = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1) ; 3 uses
  store i64 %..i, ptr %i.a, align 16
  %exitcond.not = icmp ult i64 %i.c, 2
  br i1 %exitcond.not, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.preheader.i
  %i.f = add i64 %..i, 1
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %3, align 8
  %exitcond.not.a = icmp eq i64 %i.c, 2
  br i1 %exitcond.not.a, label %.thread.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i
  %4 = add i64 %..i, 2
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %5, align 16
  br label %.thread.i

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.g = add i64 %..i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = add i64 %.51.i, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.51.i, ptr %i.k, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %..i, 0
  br i1 %.not.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not5 = icmp eq i64 %.51.i, -1
  br i1 %.not5, label %.loopexit.i, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.l = add i64 %..i, -1
  store i64 %i.l, ptr %i.a, align 16
  %.not = icmp eq i64 %.51.i, -1
  br i1 %.not, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.1.i4 = phi i8 [ 1, %.thread ], [ 0, %bb.f ]   ; 2 uses
  %i.m = add nuw i64 %.51.i, 1
  %i.n = zext nneg i8 %.1.i4 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  store i64 %i.m, ptr %i.o, align 8
  %i.p = add nuw nsw i8 %.1.i4, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %bb.f
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

.thread.i:                                        ; preds = %.preheader.preheader.i, %.preheader.i, %.preheader.i.2, %.thread, %bb.g, %bb.d
  %.253.i = phi i8 [ 1, %.thread ], [ %i.p, %bb.g ], [ 4, %bb.d ], [ %umax, %.preheader.i.2 ], [ %umax, %.preheader.i ], [ %umax, %.preheader.preheader.i ]
  %i.r = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr @fuzzerInvocationCounter, align 4
  %i.t = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.u = lshr i32 %i.t, 24
  %i.v = trunc nuw i32 %i.u to i8
  %i.w = urem i8 %i.v, %.253.i
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8
  br label %SDLTest_GenerateUnsignedBoundaryValues.exit

SDLTest_GenerateUnsignedBoundaryValues.exit:      ; preds = %bb.b, %.loopexit.i, %.thread.i
  %.045.i = phi i64 [ %i.z, %.thread.i ], [ 0, %.loopexit.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.045.i
}

; Function Attrs: nounwind uwtable
define dso_local signext i8 @SDLTest_RandomSint8BoundaryValue(i8 noundef signext %0, i8 noundef signext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  %i.b = sext i8 %0 to i64                        ; 2 uses
  %i.c = sext i8 %1 to i64                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.c) ; 7 uses
  %.53.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.c) ; 5 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, %0
  br i1 %i.d, label %SDLTest_GenerateSignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 %.53.i, %..i                 ; 2 uses
  %i.f = icmp slt i64 %i.e, 4
  br i1 %i.f, label %.preheader.i.preheader, label %bb.d

.preheader.i.preheader:                           ; preds = %bb.c
  %smax = tail call i64 @llvm.smax.i64(i64 %i.e, i64 1)
  %xtraiter = and i64 %smax, 3                    ; 2 uses
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %.preheader.i.epil

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.g = add nsw i64 %..i, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = add nsw i64 %.53.i, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %i.j, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.53.i, ptr %i.k, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %i.l = icmp slt i64 %..i, -127                  ; 2 uses
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i64 %..i, -1
  store i64 %i.m, ptr %i.a, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]       ; 2 uses
  %i.n = icmp slt i64 %.53.i, 127
  br i1 %i.n, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i64 %.53.i, 1
  %i.p = zext nneg i8 %.1.i to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  store i64 %i.o, ptr %i.q, align 8
  %i.r = add nuw nsw i8 %.1.i, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %bb.g
  br i1 %i.l, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %.loopexit.i
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateSignedBoundaryValues.exit

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.preheader
  %.0.i.epil = phi i8 [ %i.w, %.preheader.i.epil ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.preheader ]
  %i.t = zext i8 %.0.i.epil to i64                ; 2 uses
  %i.u = add nsw i64 %..i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  store i64 %i.u, ptr %i.v, align 8
  %i.w = add nuw i8 %.0.i.epil, 1                 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread.i, label %.preheader.i.epil, !llvm.loop !7

.thread.i:                                        ; preds = %.preheader.i.epil, %.loopexit.i, %bb.h, %bb.d
  %.255.i = phi i8 [ 1, %.loopexit.i ], [ %i.r, %bb.h ], [ 4, %bb.d ], [ %i.w, %.preheader.i.epil ]
  %i.x = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr @fuzzerInvocationCounter, align 4
  %i.z = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.aa = lshr i32 %i.z, 24
  %i.ab = trunc nuw i32 %i.aa to i8
  %i.ac = urem i8 %i.ab, %.255.i
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  br label %SDLTest_GenerateSignedBoundaryValues.exit

SDLTest_GenerateSignedBoundaryValues.exit:        ; preds = %bb.b, %bb.i, %.thread.i
  %.047.i = phi i64 [ %i.af, %.thread.i ], [ -128, %bb.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ag = trunc i64 %.047.i to i8
  ret i8 %i.ag
}

; Function Attrs: nounwind uwtable
define dso_local signext i16 @SDLTest_RandomSint16BoundaryValue(i16 noundef signext %0, i16 noundef signext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  %i.b = sext i16 %0 to i64                       ; 2 uses
  %i.c = sext i16 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.c) ; 7 uses
  %.53.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.c) ; 5 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i16 %1, %0
  br i1 %i.d, label %SDLTest_GenerateSignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 %.53.i, %..i                 ; 2 uses
  %i.f = icmp slt i64 %i.e, 4
  br i1 %i.f, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi i8 [ %i.j, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.g = zext i8 %.0.i to i64                     ; 2 uses
  %i.h = add nsw i64 %..i, %i.g
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add i8 %.0.i, 1                          ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = icmp sgt i64 %i.e, %i.k
  br i1 %i.l, label %.preheader.i, label %.loopexit.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.m = add nsw i64 %..i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nsw i64 %.53.i, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.53.i, ptr %i.q, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %i.r = icmp sgt i64 %..i, -32768
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i64 %..i, -1
  store i64 %i.s, ptr %i.a, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]       ; 3 uses
  %i.t = icmp slt i64 %.53.i, 32767
  br i1 %i.t, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i64 %.53.i, 1
  %i.v = zext nneg i8 %.1.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  store i64 %i.u, ptr %i.w, align 8
  %i.x = add nuw nsw i8 %.1.i, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g
  %.2.i = phi i8 [ %.1.i, %bb.g ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.y = icmp eq i8 %.2.i, 0
  br i1 %i.y, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %.loopexit.i
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateSignedBoundaryValues.exit

.thread.i:                                        ; preds = %.loopexit.i, %bb.h, %bb.d
  %.255.i = phi i8 [ %.2.i, %.loopexit.i ], [ %i.x, %bb.h ], [ 4, %bb.d ]
  %i.aa = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr @fuzzerInvocationCounter, align 4
  %i.ac = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.ad = lshr i32 %i.ac, 24
  %i.ae = trunc nuw i32 %i.ad to i8
  %i.af = urem i8 %i.ae, %.255.i
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  br label %SDLTest_GenerateSignedBoundaryValues.exit

SDLTest_GenerateSignedBoundaryValues.exit:        ; preds = %bb.b, %bb.i, %.thread.i
  %.047.i = phi i64 [ %i.ai, %.thread.i ], [ -32768, %bb.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.aj = trunc i64 %.047.i to i16
  ret i16 %i.aj
}

; Function Attrs: nounwind uwtable
define dso_local i32 @SDLTest_RandomSint32BoundaryValue(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %i.c) ; 7 uses
  %.53.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.c) ; 5 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, %0
  br i1 %i.d, label %SDLTest_GenerateSignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i64 %.53.i, %..i                 ; 2 uses
  %i.f = icmp slt i64 %i.e, 4
  br i1 %i.f, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi i8 [ %i.j, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.g = zext i8 %.0.i to i64                     ; 2 uses
  %i.h = add nsw i64 %..i, %i.g
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add i8 %.0.i, 1                          ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = icmp sgt i64 %i.e, %i.k
  br i1 %i.l, label %.preheader.i, label %.loopexit.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.m = add nsw i64 %..i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nsw i64 %.53.i, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.53.i, ptr %i.q, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %i.r = icmp sgt i64 %..i, -2147483648
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i64 %..i, -1
  store i64 %i.s, ptr %i.a, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]       ; 3 uses
  %i.t = icmp slt i64 %.53.i, 2147483647
  br i1 %i.t, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i64 %.53.i, 1
  %i.v = zext nneg i8 %.1.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  store i64 %i.u, ptr %i.w, align 8
  %i.x = add nuw nsw i8 %.1.i, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g
  %.2.i = phi i8 [ %.1.i, %bb.g ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.y = icmp eq i8 %.2.i, 0
  br i1 %i.y, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %.loopexit.i
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateSignedBoundaryValues.exit

.thread.i:                                        ; preds = %.loopexit.i, %bb.h, %bb.d
  %.255.i = phi i8 [ %.2.i, %.loopexit.i ], [ %i.x, %bb.h ], [ 4, %bb.d ]
  %i.aa = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr @fuzzerInvocationCounter, align 4
  %i.ac = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.ad = lshr i32 %i.ac, 24
  %i.ae = trunc nuw i32 %i.ad to i8
  %i.af = urem i8 %i.ae, %.255.i
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  br label %SDLTest_GenerateSignedBoundaryValues.exit

SDLTest_GenerateSignedBoundaryValues.exit:        ; preds = %bb.b, %bb.i, %.thread.i
  %.047.i = phi i64 [ %i.ai, %.thread.i ], [ -2147483648, %bb.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.aj = trunc i64 %.047.i to i32
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define dso_local i64 @SDLTest_RandomSint64BoundaryValue(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %..i = tail call i64 @llvm.smin.i64(i64 %0, i64 %1) ; 7 uses
  %.53.i = tail call i64 @llvm.smax.i64(i64 %0, i64 %1) ; 5 uses
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, %0
  br i1 %i.b, label %SDLTest_GenerateSignedBoundaryValues.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i64 %.53.i, %..i                 ; 2 uses
  %i.d = icmp slt i64 %i.c, 4
  br i1 %i.d, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi i8 [ %i.h, %.preheader.i ], [ 0, %bb.c ] ; 2 uses
  %i.e = zext i8 %.0.i to i64                     ; 2 uses
  %i.f = add nsw i64 %..i, %i.e
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  store i64 %i.f, ptr %i.g, align 8
  %i.h = add i8 %.0.i, 1                          ; 3 uses
  %i.i = zext i8 %i.h to i64
  %i.j = icmp sgt i64 %i.c, %i.i
  br i1 %i.j, label %.preheader.i, label %.loopexit.i, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  store i64 %..i, ptr %i.a, align 16
  %i.k = add nsw i64 %..i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = add nsw i64 %.53.i, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.m, ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.53.i, ptr %i.o, align 8
  br label %.thread.i

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %..i, -9223372036854775808
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i64 %..i, -1
  store i64 %i.p, ptr %i.a, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]       ; 3 uses
  %.not3 = icmp eq i64 %.53.i, 9223372036854775807
  br i1 %.not3, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i64 %.53.i, 1
  %i.r = zext nneg i8 %.1.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  store i64 %i.q, ptr %i.s, align 8
  %i.t = add nuw nsw i8 %.1.i, 1
  br label %.thread.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.g
  %.2.i = phi i8 [ %.1.i, %bb.g ], [ %i.h, %.preheader.i ] ; 2 uses
  %i.u = icmp eq i8 %.2.i, 0
  br i1 %i.u, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %.loopexit.i
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %SDLTest_GenerateSignedBoundaryValues.exit

.thread.i:                                        ; preds = %.loopexit.i, %bb.h, %bb.d
  %.255.i = phi i8 [ %.2.i, %.loopexit.i ], [ %i.t, %bb.h ], [ 4, %bb.d ]
  %i.w = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @fuzzerInvocationCounter, align 4
  %i.y = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.z = lshr i32 %i.y, 24
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = urem i8 %i.aa, %.255.i
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8
  br label %SDLTest_GenerateSignedBoundaryValues.exit

SDLTest_GenerateSignedBoundaryValues.exit:        ; preds = %bb.b, %bb.i, %.thread.i
  %.047.i = phi i64 [ %i.ae, %.thread.i ], [ -9223372036854775808, %bb.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.047.i
}

; Function Attrs: nounwind uwtable
define dso_local float @SDLTest_RandomUnitFloat() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @SDL_randf_r(ptr noundef nonnull @rndContext) #7
  ret float %i.a
}

declare float @SDL_randf_r(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef float @SDLTest_RandomFloat() local_unnamed_addr #2 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = bitcast i32 %i.c to float                ; 3 uses
  %i.e = tail call i32 @SDL_isnanf(float noundef %i.d) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.critedge.backedge

bb.b:                                             ; preds = %.critedge
  %i.f = tail call i32 @SDL_isinff(float noundef %i.d) #7
  %.not3 = icmp eq i32 %i.f, 0
  br i1 %.not3, label %bb.c, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.b, %.critedge
  br label %.critedge, !llvm.loop !9

bb.c:                                             ; preds = %bb.b
  ret float %i.d
}

declare i32 @SDL_isnanf(float noundef) local_unnamed_addr #3

declare i32 @SDL_isinff(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @SDLTest_RandomUnitDouble() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @fuzzerInvocationCounter, align 4
  %i.f = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %.sroa.4.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.g = lshr i64 %.sroa.0.0.insert.insert.i, 11
  %i.h = uitofp nneg i64 %i.g to double
  %i.i = fmul nnan double %i.h, f0x3CA0000000000000
  ret double %i.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef double @SDLTest_RandomDouble() local_unnamed_addr #2 {
bb.a:
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 2
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr @fuzzerInvocationCounter, align 4
  %i.f = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %.sroa.4.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.c to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.g = bitcast i64 %.sroa.0.0.insert.insert.i to double ; 3 uses
  %i.h = tail call i32 @SDL_isnan(double noundef %i.g) #7
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %.critedge.backedge

bb.b:                                             ; preds = %.critedge
  %i.i = tail call i32 @SDL_isinf(double noundef %i.g) #7
  %.not3 = icmp eq i32 %i.i, 0
  br i1 %.not3, label %bb.c, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.b, %.critedge
  br label %.critedge, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  ret double %i.g
}

declare i32 @SDL_isnan(double noundef) local_unnamed_addr #3

declare i32 @SDL_isinf(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SDLTest_RandomAsciiString() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @fuzzerInvocationCounter, align 4
  %i.c = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.d = and i32 %i.c, 255
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1) ; 2 uses
  %i.e = add nuw nsw i32 %spec.store.select.i, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @SDL_malloc(i64 noundef %i.f) #7 ; 4 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %SDLTest_RandomAsciiStringWithMaximumLength.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.h = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr @fuzzerInvocationCounter, align 4
  %i.j = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef 95) #7
  %i.k = trunc i32 %i.j to i8
  %i.l = add i8 %i.k, 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  store i8 %i.l, ptr %i.m, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %wide.trip.count.i.i
  store i8 0, ptr %i.n, align 1
  %i.o = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr @fuzzerInvocationCounter, align 4
  br label %SDLTest_RandomAsciiStringWithMaximumLength.exit

SDLTest_RandomAsciiStringWithMaximumLength.exit:  ; preds = %bb.a, %._crit_edge.i.i
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SDLTest_RandomAsciiStringWithMaximumLength(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %SDLTest_RandomAsciiStringOfSize.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @fuzzerInvocationCounter, align 4
  %i.e = tail call i32 @SDL_rand_bits_r(ptr noundef nonnull @rndContext) #7
  %i.f = add nuw nsw i32 %0, 1
  %i.g = urem i32 %i.e, %i.f
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1) ; 2 uses
  %i.h = add nuw nsw i32 %spec.store.select, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = tail call noalias ptr @SDL_malloc(i64 noundef %i.i) #7 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %SDLTest_RandomAsciiStringOfSize.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %spec.store.select to i64 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.k = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @fuzzerInvocationCounter, align 4
  %i.m = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef 95) #7
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.n, 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i
  store i8 %i.o, ptr %i.p, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %wide.trip.count.i
  store i8 0, ptr %i.q, align 1
  %i.r = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr @fuzzerInvocationCounter, align 4
  br label %SDLTest_RandomAsciiStringOfSize.exit

SDLTest_RandomAsciiStringOfSize.exit:             ; preds = %._crit_edge.i, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.j, %._crit_edge.i ]
  ret ptr %.0
}

declare zeroext i1 @SDL_SetError(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @SDLTest_RandomAsciiStringOfSize(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %0, 1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = tail call noalias ptr @SDL_malloc(i64 noundef %i.d) #7 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr @fuzzerInvocationCounter, align 4
  %i.h = tail call i32 @SDL_rand_r(ptr noundef nonnull @rndContext, i32 noundef 95) #7
  %i.i = trunc i32 %i.h to i8
  %i.j = add i8 %i.i, 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %wide.trip.count
  store i8 0, ptr %i.l, align 1
  %i.m = load i32, ptr @fuzzerInvocationCounter, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr @fuzzerInvocationCounter, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.011 = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ], [ null, %bb.c ]
  ret ptr %.011
}

declare noalias ptr @SDL_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
end_hunk_0
