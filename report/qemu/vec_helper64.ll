Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper64?download=true
inline.NumInlined: 208
inline.NumDeleted: 22
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ARMVectorReg = type { [32 x i64] }
%union.anon = type { [2 x i64] }
%struct.float_status = type { i64 }

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fdiv_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @float16_div(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i16 @float16_div(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fdiv_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @float32_div(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !11

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @float32_div(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fdiv_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @float64_div(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @float64_div(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmulx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_advsimd_mulxh(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !13

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_advsimd_mulxh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmulx_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_vfp_mulxs(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_mulxs(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmulx_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_vfp_mulxd(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_vfp_mulxd(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_recps_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_recpsf_f16(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpsf_f16(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_recps_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_recpsf_f32(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !17

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpsf_f32(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_recps_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_recpsf_f64(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_recpsf_f64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_rsqrts_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_rsqrtsf_f16(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rsqrtsf_f16(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_rsqrts_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_rsqrtsf_f32(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rsqrtsf_f32(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_rsqrts_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_rsqrtsf_f64(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_rsqrtsf_f64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_recps_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_recpsf_ah_f16(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpsf_ah_f16(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_recps_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_recpsf_ah_f32(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpsf_ah_f32(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_recps_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_recpsf_ah_f64(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !24

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_recpsf_ah_f64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_rsqrts_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_rsqrtsf_ah_f16(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !25

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rsqrtsf_ah_f16(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_rsqrts_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_rsqrtsf_ah_f32(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rsqrtsf_ah_f32(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_rsqrts_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_rsqrtsf_ah_f64(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !27

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_rsqrtsf_ah_f64(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmax_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_vfp_ah_maxh(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !28

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_ah_maxh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmax_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_vfp_ah_maxs(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !29

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_ah_maxs(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmax_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_vfp_ah_maxd(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_vfp_ah_maxd(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmin_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = tail call i32 @helper_vfp_ah_minh(i32 noundef %i.k, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = trunc i32 %i.o to i16
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.p, ptr %i.q, align 2
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !31

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_ah_minh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmin_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @helper_vfp_ah_mins(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_ah_mins(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmin_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @helper_vfp_ah_mind(i64 noundef %i.j, i64 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !33

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @helper_vfp_ah_mind(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmax_b16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3, i32 noundef 0) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !34

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmin_b16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3, i32 noundef 1) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !35

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmaxnum_b16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3, i32 noundef 2) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !36

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fminnum_b16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @bfloat16_minmax(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3, i32 noundef 3) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !37

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmax_b16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @helper_sme2_ah_fmax_b16(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare zeroext i16 @helper_sme2_ah_fmax_b16(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmin_b16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = tail call zeroext i16 @helper_sme2_ah_fmin_b16(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !39

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare zeroext i16 @helper_sme2_ah_fmin_b16(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmulx_idx_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.i = lshr exact i64 %i.h, 1                   ; 2 uses
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %i.l = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.034 = phi i64 [ 0, %bb.a ], [ %i.w, %bb.d ]   ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.034
  %i.m = load i16, ptr %gep, align 2
  %i.n = zext i16 %i.m to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03133 = phi i64 [ 0, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.o = add nuw nsw i64 %.03133, %.034           ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32
  %i.s = tail call i32 @helper_advsimd_mulxh(i32 noundef %i.r, i32 noundef %i.n, ptr noundef %3) #8
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  store i16 %i.t, ptr %i.u, align 2
  %i.v = add nuw nsw i64 %.03133, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.i
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !40

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %.034, %i.i              ; 2 uses
  %i.x = icmp samesign ult i64 %i.w, %i.l
  br i1 %i.x, label %bb.b, label %bb.e, !llvm.loop !41

bb.e:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 range(i64 0, 2049) %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmulx_idx_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.i = lshr exact i64 %i.h, 2                   ; 2 uses
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %i.l = lshr exact i64 %i.g, 2
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.034 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.d ]   ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.034
  %i.m = load i32, ptr %gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03133 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.n = add nuw nsw i64 %.03133, %.034           ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 @helper_vfp_mulxs(i32 noundef %i.p, i32 noundef %i.m, ptr noundef %3) #8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  store i32 %i.q, ptr %i.r, align 4
  %i.s = add nuw nsw i64 %.03133, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.i
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !42

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw nsw i64 %.034, %i.i              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.l
  br i1 %i.u, label %bb.b, label %bb.e, !llvm.loop !43

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.v, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.e, 8
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = xor i64 %i.g, -1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 range(i64 0, 2049) %i.ac, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmulx_idx_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.i = lshr exact i64 %i.h, 3                   ; 2 uses
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %i.l = lshr exact i64 %i.g, 3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.034 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.d ]   ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.034
  %i.m = load i64, ptr %gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03133 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.n = add nuw nsw i64 %.03133, %.034           ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call i64 @helper_vfp_mulxd(i64 noundef %i.p, i64 noundef %i.m, ptr noundef %3) #8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  store i64 %i.q, ptr %i.r, align 8
  %i.s = add nuw nsw i64 %.03133, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.i
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !44

bb.d:                                             ; preds = %bb.c
  %i.t = add nuw nsw i64 %.034, %i.i              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.l
  br i1 %i.u, label %bb.b, label %bb.e, !llvm.loop !45

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.v, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.e, 8
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = xor i64 %i.g, -1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 range(i64 0, 2049) %i.ac, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve2_pmull_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %3, 7
  %i.b = and i32 %i.a, -8
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = and i32 %3, 255
  %i.f = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = zext i32 %i.b to i64                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, %i.h
  %i.o = tail call i64 @clmul_8x4_even(i64 noundef %i.k, i64 noundef %i.n) #8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %i.o, ptr %i.p, align 8
  %i.q = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.g
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !46

bb.c:                                             ; preds = %bb.b
  ret void
}

declare i64 @clmul_8x4_even(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve2_pmull_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %3, 10
  %i.b = sext i32 %i.a to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = and i32 %3, 255
  %i.f = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 1
  %i.g = zext nneg i32 %.v.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ]   ; 3 uses
  %i.h = shl nuw nsw i64 %.015, 1
  %i.i = add nsw i64 %i.h, %i.b                   ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4
  %i.n = tail call i64 @clmul_32(i32 noundef %i.k, i32 noundef %i.m) #8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %i.n, ptr %i.o, align 8
  %i.p = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.g
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !47

bb.c:                                             ; preds = %bb.b
  ret void
}

declare i64 @clmul_32(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmaxp_h(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !8
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 2049) %i.g, i64 noundef 256) #8, !alias.scope !53
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.d
  %.03237 = phi i64 [ 0, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr i8, ptr %i.k, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = call i32 @helper_vfp_ah_maxh(i32 noundef %i.m, i32 noundef %i.p, ptr noundef %3) #8
  %i.r = trunc i32 %i.q to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03237
  store i16 %i.r, ptr %i.s, align 2
  %i.t = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.h
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !51

bb.e:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.u, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.v = add nuw nsw i32 %i.e, 8
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr i8, ptr %0, i64 %i.g
  %i.y = xor i64 %i.g, -1
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = and i64 %i.z, -8
  %i.ab = add nsw i64 %i.aa, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 range(i64 0, 2049) %i.ab, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

bb.f:                                             ; preds = %.preheader, %bb.f
  %.038 = phi i64 [ 0, %.preheader ], [ %i.ak, %bb.f ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr i8, ptr %i.ac, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %i.ai = call i32 @helper_vfp_ah_maxh(i32 noundef %i.ae, i32 noundef %i.ah, ptr noundef %3) #8
  %i.aj = trunc i32 %i.ai to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.038
  store i16 %i.aj, ptr %gep, align 2
  %i.ak = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond39.not, label %bb.e, label %bb.f, !llvm.loop !52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmaxp_s(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !8
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 2049) %i.g, i64 noundef 256) #8, !alias.scope !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.d
  %.03237 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call i32 @helper_vfp_ah_maxs(i32 noundef %i.l, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03237
  store i32 %i.o, ptr %i.p, align 4
  %i.q = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !57

bb.e:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.r, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.e, 8
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 %i.g
  %i.v = xor i64 %i.g, -1
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = and i64 %i.w, -8
  %i.y = add nsw i64 %i.x, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 range(i64 0, 2049) %i.y, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

bb.f:                                             ; preds = %.preheader, %bb.f
  %.038 = phi i64 [ 0, %.preheader ], [ %i.ae, %bb.f ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = call i32 @helper_vfp_ah_maxs(i32 noundef %i.aa, i32 noundef %i.ac, ptr noundef %3) #8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.038
  store i32 %i.ad, ptr %gep, align 4
  %i.ae = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond39.not, label %bb.e, label %bb.f, !llvm.loop !58
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmaxp_d(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !8
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr i64 %i.g, 4                         ; 4 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 2049) %i.g, i64 noundef 256) #8, !alias.scope !65
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph39.preheader:                               ; preds = %.lr.ph
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.h
  br label %.lr.ph39

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03237 = phi i64 [ %i.q, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call i64 @helper_vfp_ah_maxd(i64 noundef %i.l, i64 noundef %i.n, ptr noundef %3) #8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03237
  store i64 %i.o, ptr %i.p, align 8
  %i.q = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not, label %.lr.ph39.preheader, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph39, %bb.c
  %i.r = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.r, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.s = add nuw nsw i32 %i.e, 8
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 %i.g
  %i.v = xor i64 %i.g, -1
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = and i64 %i.w, -8
  %i.y = add nsw i64 %i.x, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 range(i64 0, 2049) %i.y, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %._crit_edge, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %.038 = phi i64 [ %i.ae, %.lr.ph39 ], [ 0, %.lr.ph39.preheader ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 4
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call i64 @helper_vfp_ah_maxd(i64 noundef %i.aa, i64 noundef %i.ac, ptr noundef %3) #8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.038
  store i64 %i.ad, ptr %gep, align 8
  %i.ae = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond41.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph39, !llvm.loop !64
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fminp_h(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !8
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 2049) %i.g, i64 noundef 256) #8, !alias.scope !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.d
  %.03237 = phi i64 [ 0, %bb.c ], [ %i.t, %bb.d ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr i8, ptr %i.k, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = call i32 @helper_vfp_ah_minh(i32 noundef %i.m, i32 noundef %i.p, ptr noundef %3) #8
  %i.r = trunc i32 %i.q to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03237
  store i16 %i.r, ptr %i.s, align 2
  %i.t = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.h
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !69

bb.e:                                             ; preds = %bb.f
  %i.u = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.u, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.v = add nuw nsw i32 %i.e, 8
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr i8, ptr %0, i64 %i.g
  %i.y = xor i64 %i.g, -1
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = and i64 %i.z, -8
  %i.ab = add nsw i64 %i.aa, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 range(i64 0, 2049) %i.ab, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

bb.f:                                             ; preds = %.preheader, %bb.f
  %.038 = phi i64 [ 0, %.preheader ], [ %i.ak, %bb.f ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr i8, ptr %i.ac, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i32
  %i.ai = call i32 @helper_vfp_ah_minh(i32 noundef %i.ae, i32 noundef %i.ah, ptr noundef %3) #8
  %i.aj = trunc i32 %i.ai to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.038
  store i16 %i.aj, ptr %gep, align 2
  %i.ak = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond39.not, label %bb.e, label %bb.f, !llvm.loop !70
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fminp_s(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !8
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 2049) %i.g, i64 noundef 256) #8, !alias.scope !77
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.h
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.d
  %.03237 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = call i32 @helper_vfp_ah_mins(i32 noundef %i.l, i32 noundef %i.n, ptr noundef %3) #8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03237
  store i32 %i.o, ptr %i.p, align 4
  %i.q = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !75

bb.e:                                             ; preds = %bb.f
  %i.r = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.r, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.s = add nuw nsw i32 %i.e, 8
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 %i.g
  %i.v = xor i64 %i.g, -1
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = and i64 %i.w, -8
  %i.y = add nsw i64 %i.x, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 range(i64 0, 2049) %i.y, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

bb.f:                                             ; preds = %.preheader, %bb.f
  %.038 = phi i64 [ 0, %.preheader ], [ %i.ae, %bb.f ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 3
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = call i32 @helper_vfp_ah_mins(i32 noundef %i.aa, i32 noundef %i.ac, ptr noundef %3) #8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.038
  store i32 %i.ad, ptr %gep, align 4
  %i.ae = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond39.not, label %bb.e, label %bb.f, !llvm.loop !76
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fminp_d(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !8
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr i64 %i.g, 4                         ; 4 uses
  %i.i = icmp eq ptr %0, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 8, 2049) %i.g, i64 noundef 256) #8, !alias.scope !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.j, %bb.b ], [ %2, %bb.a ]
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph39.preheader:                               ; preds = %.lr.ph
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.h
  br label %.lr.ph39

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03237 = phi i64 [ %i.q, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %.idx36 = shl nuw nsw i64 %.03237, 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx36 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = call i64 @helper_vfp_ah_mind(i64 noundef %i.l, i64 noundef %i.n, ptr noundef %3) #8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03237
  store i64 %i.o, ptr %i.p, align 8
  %i.q = add nuw nsw i64 %.03237, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.h
  br i1 %exitcond.not, label %.lr.ph39.preheader, label %.lr.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph39, %bb.c
  %i.r = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.r, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.s = add nuw nsw i32 %i.e, 8
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 %i.g
  %i.v = xor i64 %i.g, -1
  %i.w = add nsw i64 %i.v, %i.t
  %i.x = and i64 %i.w, -8
  %i.y = add nsw i64 %i.x, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 range(i64 0, 2049) %i.y, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %._crit_edge, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret void

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %.038 = phi i64 [ %i.ae, %.lr.ph39 ], [ 0, %.lr.ph39.preheader ] ; 3 uses
  %.idx = shl nuw nsw i64 %.038, 4
  %i.z = getelementptr inbounds nuw i8, ptr %.033, i64 %.idx ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call i64 @helper_vfp_ah_mind(i64 noundef %i.aa, i64 noundef %i.ac, ptr noundef %3) #8
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.038
  store i64 %i.ad, ptr %gep, align 8
  %i.ae = add nuw nsw i64 %.038, 1                ; 2 uses
  %exitcond41.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph39, !llvm.loop !82
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_simd_tblx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %union.anon, align 8                ; 7 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr i32 %3, 10                          ; 2 uses
  %i.i = and i32 %3, 32768
  %.not = icmp eq i32 %i.i, 0
  %i.j = lshr i32 %3, 16                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %0, i64 noundef 16, i1 noundef false) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef 0, i64 noundef 16, i1 noundef false) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 3888 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 16, i1 noundef false) #8
  %i.l = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.l, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = add nuw nsw i32 %i.e, 8
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr i8, ptr %0, i64 %i.g
  %i.p = xor i64 %i.g, -1
  %i.q = add nsw i64 %i.p, %i.n
  %i.r = and i64 %i.q, -8
  %i.s = add nsw i64 %i.r, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 range(i64 0, 2049) %i.s, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.f:                                             ; preds = %bb.j, %bb.d
  %.025 = phi i64 [ 0, %bb.d ], [ %i.aw, %bb.j ]  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.025
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = icmp samesign ugt i32 %i.j, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = lshr i32 %i.v, 4
  %i.y = add nuw nsw i32 %i.x, %i.h
  %i.z = and i32 %i.y, 31
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %i.aa
  %i.ac = and i32 %i.v, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %.025
  store i8 %i.af, ptr %i.ag, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = or disjoint i64 %.025, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32                    ; 3 uses
  %i.al = icmp samesign ugt i32 %i.j, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = lshr i32 %i.ak, 4
  %i.an = add nuw nsw i32 %i.am, %i.h
  %i.ao = and i32 %i.an, 31
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [256 x i8], ptr %i.k, i64 %i.ap
  %i.ar = and i32 %i.ak, 15
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %i.ah
  store i8 %i.au, ptr %i.av, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = add nuw nsw i64 %.025, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond.not.1, label %bb.e, label %bb.f, !llvm.loop !84
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @float16_famax(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.float_status, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -6291457
  store i64 %i.b, ptr %3, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %3) #8
  %i.c = call zeroext i16 @float16_minmax(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull %3, i32 noundef 4) #8 ; 2 uses
  %i.d = and i16 %i.c, 32767                      ; 2 uses
  %i.e = icmp samesign ugt i16 %i.d, 31744
  %spec.select = select i1 %i.e, i16 %i.c, i16 %i.d
  %.val = load i64, ptr %3, align 8
  %i.f = and i64 %.val, 49151
  %i.g = load i64, ptr %2, align 4
  %i.h = or i64 %i.f, %i.g
  store i64 %i.h, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i16 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @arm_set_default_fp_behaviours(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @float16_minmax(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @float16_famin(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.float_status, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -6291457
  store i64 %i.b, ptr %3, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %3) #8
  %i.c = call zeroext i16 @float16_minmax(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef nonnull %3, i32 noundef 5) #8 ; 2 uses
  %i.d = and i16 %i.c, 32767                      ; 2 uses
  %i.e = icmp samesign ugt i16 %i.d, 31744
  %spec.select = select i1 %i.e, i16 %i.c, i16 %i.d
  %.val = load i64, ptr %3, align 8
  %i.f = and i64 %.val, 49151
  %i.g = load i64, ptr %2, align 4
  %i.h = or i64 %i.f, %i.g
  store i64 %i.h, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i16 %spec.select
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @float32_famax(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.float_status, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -6291457
  store i64 %i.b, ptr %3, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %3) #8
  %i.c = call i32 @float32_minmax(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 4) #8 ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, 2139095040
  %spec.select = select i1 %i.e, i32 %i.c, i32 %i.d
  %.val = load i64, ptr %3, align 8
  %i.f = and i64 %.val, 49151
  %i.g = load i64, ptr %2, align 4
  %i.h = or i64 %i.f, %i.g
  store i64 %i.h, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %spec.select
}

declare i32 @float32_minmax(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @float32_famin(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.float_status, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -6291457
  store i64 %i.b, ptr %3, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %3) #8
  %i.c = call i32 @float32_minmax(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 5) #8 ; 2 uses
  %i.d = and i32 %i.c, 2147483647                 ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, 2139095040
  %spec.select = select i1 %i.e, i32 %i.c, i32 %i.d
  %.val = load i64, ptr %3, align 8
  %i.f = and i64 %.val, 49151
  %i.g = load i64, ptr %2, align 4
  %i.h = or i64 %i.f, %i.g
  store i64 %i.h, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %spec.select
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @float64_famax(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.float_status, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -6291457
  store i64 %i.b, ptr %3, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %3) #8
  %i.c = call i64 @float64_minmax(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %3, i32 noundef 4) #8 ; 2 uses
  %i.d = and i64 %i.c, 9223372036854775807        ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 9218868437227405312
  %spec.select = select i1 %i.e, i64 %i.c, i64 %i.d
  %.val = load i64, ptr %3, align 8
  %i.f = and i64 %.val, 49151
  %i.g = load i64, ptr %2, align 4
  %i.h = or i64 %i.f, %i.g
  store i64 %i.h, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i64 %spec.select
}

declare i64 @float64_minmax(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @float64_famin(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.float_status, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = load i64, ptr %2, align 4
  %i.b = and i64 %i.a, -6291457
  store i64 %i.b, ptr %3, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %3) #8
  %i.c = call i64 @float64_minmax(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %3, i32 noundef 5) #8 ; 2 uses
  %i.d = and i64 %i.c, 9223372036854775807        ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 9218868437227405312
  %spec.select = select i1 %i.e, i64 %i.c, i64 %i.d
  %.val = load i64, ptr %3, align 8
  %i.f = and i64 %.val, 49151
  %i.g = load i64, ptr %2, align 4
  %i.h = or i64 %i.f, %i.g
  store i64 %i.h, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i64 %spec.select
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_famax_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.float_status, align 8       ; 6 uses
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = load i64, ptr %3, align 4
  %i.n = and i64 %i.m, -6291457
  store i64 %i.n, ptr %5, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %5) #8
  %i.o = call zeroext i16 @float16_minmax(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef nonnull %5, i32 noundef 4) #8 ; 2 uses
  %i.p = and i16 %i.o, 32767                      ; 2 uses
  %i.q = icmp samesign ugt i16 %i.p, 31744
  %spec.select.i = select i1 %i.q, i16 %i.o, i16 %i.p
  %.val.i = load i64, ptr %5, align 8
  %i.r = and i64 %.val.i, 49151
  %i.s = load i64, ptr %3, align 4
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %spec.select.i, ptr %i.u, align 2
  %i.v = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !85

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 range(i64 0, 2049) %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_famin_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.float_status, align 8       ; 6 uses
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = load i64, ptr %3, align 4
  %i.n = and i64 %i.m, -6291457
  store i64 %i.n, ptr %5, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %5) #8
  %i.o = call zeroext i16 @float16_minmax(i16 noundef zeroext %i.j, i16 noundef zeroext %i.l, ptr noundef nonnull %5, i32 noundef 5) #8 ; 2 uses
  %i.p = and i16 %i.o, 32767                      ; 2 uses
  %i.q = icmp samesign ugt i16 %i.p, 31744
  %spec.select.i = select i1 %i.q, i16 %i.o, i16 %i.p
  %.val.i = load i64, ptr %5, align 8
  %i.r = and i64 %.val.i, 49151
  %i.s = load i64, ptr %3, align 4
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %spec.select.i, ptr %i.u, align 2
  %i.v = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !86

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 range(i64 0, 2049) %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_famax_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.float_status, align 8       ; 6 uses
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = load i64, ptr %3, align 4
  %i.n = and i64 %i.m, -6291457
  store i64 %i.n, ptr %5, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %5) #8
  %i.o = call i32 @float32_minmax(i32 noundef %i.j, i32 noundef %i.l, ptr noundef nonnull %5, i32 noundef 4) #8 ; 2 uses
  %i.p = and i32 %i.o, 2147483647                 ; 2 uses
  %i.q = icmp samesign ugt i32 %i.p, 2139095040
  %spec.select.i = select i1 %i.q, i32 %i.o, i32 %i.p
  %.val.i = load i64, ptr %5, align 8
  %i.r = and i64 %.val.i, 49151
  %i.s = load i64, ptr %3, align 4
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %spec.select.i, ptr %i.u, align 4
  %i.v = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !87

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 range(i64 0, 2049) %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_famin_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.float_status, align 8       ; 6 uses
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = load i64, ptr %3, align 4
  %i.n = and i64 %i.m, -6291457
  store i64 %i.n, ptr %5, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %5) #8
  %i.o = call i32 @float32_minmax(i32 noundef %i.j, i32 noundef %i.l, ptr noundef nonnull %5, i32 noundef 5) #8 ; 2 uses
  %i.p = and i32 %i.o, 2147483647                 ; 2 uses
  %i.q = icmp samesign ugt i32 %i.p, 2139095040
  %spec.select.i = select i1 %i.q, i32 %i.o, i32 %i.p
  %.val.i = load i64, ptr %5, align 8
  %i.r = and i64 %.val.i, 49151
  %i.s = load i64, ptr %3, align 4
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %spec.select.i, ptr %i.u, align 4
  %i.v = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !88

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 range(i64 0, 2049) %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_famax_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.float_status, align 8       ; 6 uses
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = load i64, ptr %3, align 4
  %i.n = and i64 %i.m, -6291457
  store i64 %i.n, ptr %5, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %5) #8
  %i.o = call i64 @float64_minmax(i64 noundef %i.j, i64 noundef %i.l, ptr noundef nonnull %5, i32 noundef 4) #8 ; 2 uses
  %i.p = and i64 %i.o, 9223372036854775807        ; 2 uses
  %i.q = icmp samesign ugt i64 %i.p, 9218868437227405312
  %spec.select.i = select i1 %i.q, i64 %i.o, i64 %i.p
  %.val.i = load i64, ptr %5, align 8
  %i.r = and i64 %.val.i, 49151
  %i.s = load i64, ptr %3, align 4
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %spec.select.i, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !89

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 range(i64 0, 2049) %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_famin_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.float_status, align 8       ; 6 uses
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = load i64, ptr %3, align 4
  %i.n = and i64 %i.m, -6291457
  store i64 %i.n, ptr %5, align 8
  call void @arm_set_default_fp_behaviours(ptr noundef nonnull %5) #8
  %i.o = call i64 @float64_minmax(i64 noundef %i.j, i64 noundef %i.l, ptr noundef nonnull %5, i32 noundef 5) #8 ; 2 uses
  %i.p = and i64 %i.o, 9223372036854775807        ; 2 uses
  %i.q = icmp samesign ugt i64 %i.p, 9218868437227405312
  %spec.select.i = select i1 %i.q, i64 %i.o, i64 %i.p
  %.val.i = load i64, ptr %5, align 8
  %i.r = and i64 %.val.i, 49151
  %i.s = load i64, ptr %3, align 4
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %3, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %spec.select.i, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !90

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 range(i64 0, 2049) %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fscale_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.j = load i16, ptr %i.i, align 2
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.l = load i16, ptr %i.k, align 2
  %i.m = sext i16 %i.l to i32
  %i.n = tail call zeroext i16 @float16_scalbn(i16 noundef zeroext %i.j, i32 noundef %i.m, ptr noundef %3) #8
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.n, ptr %i.o, align 2
  %i.p = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !91

bb.c:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.q, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.r = add nuw nsw i32 %i.e, 8
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr i8, ptr %0, i64 %i.g
  %i.u = xor i64 %i.g, -1
  %i.v = add nsw i64 %i.u, %i.s
  %i.w = and i64 %i.v, -8
  %i.x = add nsw i64 %i.w, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 range(i64 0, 2049) %i.x, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare zeroext i16 @float16_scalbn(i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fscale_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @float32_scalbn(i32 noundef %i.j, i32 noundef %i.l, ptr noundef %3) #8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !92

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 range(i64 0, 2049) %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @float32_scalbn(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fscale_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.016 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %i.n = tail call i64 @llvm.smin.i64(i64 %i.m, i64 2147483647)
  %i.o = trunc nsw i64 %i.n to i32
  %i.p = tail call i64 @float64_scalbn(i64 noundef %i.j, i32 noundef %i.o, ptr noundef %3) #8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.p, ptr %i.q, align 8
  %i.r = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !93

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.s, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.t = add nuw nsw i32 %i.e, 8
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %0, i64 %i.g
  %i.w = xor i64 %i.g, -1
  %i.x = add nsw i64 %i.w, %i.u
  %i.y = and i64 %i.x, -8
  %i.z = add nsw i64 %i.y, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 range(i64 0, 2049) %i.z, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare zeroext i16 @bfloat16_minmax(i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @float64_scalbn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, i1 false, !"memcpy.inline"}
!49 = distinct !{!49, !48, !"memcpy.inline: argument 1"}
!50 = distinct !{!50, !48, !"memcpy.inline: argument 0"}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = !{!50, !49}
!54 = distinct !{!54, i1 false, !"memcpy.inline"}
!55 = distinct !{!55, !54, !"memcpy.inline: argument 1"}
!56 = distinct !{!56, !54, !"memcpy.inline: argument 0"}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = !{!56, !55}
!60 = distinct !{!60, i1 false, !"memcpy.inline"}
!61 = distinct !{!61, !60, !"memcpy.inline: argument 1"}
!62 = distinct !{!62, !60, !"memcpy.inline: argument 0"}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = !{!62, !61}
!66 = distinct !{!66, i1 false, !"memcpy.inline"}
!67 = distinct !{!67, !66, !"memcpy.inline: argument 1"}
!68 = distinct !{!68, !66, !"memcpy.inline: argument 0"}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = !{!68, !67}
!72 = distinct !{!72, i1 false, !"memcpy.inline"}
!73 = distinct !{!73, !72, !"memcpy.inline: argument 1"}
!74 = distinct !{!74, !72, !"memcpy.inline: argument 0"}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = !{!74, !73}
!78 = distinct !{!78, i1 false, !"memcpy.inline"}
!79 = distinct !{!79, !78, !"memcpy.inline: argument 1"}
!80 = distinct !{!80, !78, !"memcpy.inline: argument 0"}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
!83 = !{!80, !79}
!84 = distinct !{!84, !7}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7}
!87 = distinct !{!87, !7}
!88 = distinct !{!88, !7}
!89 = distinct !{!89, !7}
!90 = distinct !{!90, !7}
!91 = distinct !{!91, !7}
!92 = distinct !{!92, !7}
!93 = distinct !{!93, !7}
end_hunk_0
