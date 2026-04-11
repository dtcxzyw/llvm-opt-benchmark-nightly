inline.NumInlined: 20
inline.NumDeleted: 6
begin_hunk_0_@LowPassForIntra8x8Pred
define dso_local void @LowPassForIntra8x8Pred(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 2 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 2 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 4 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr i8, ptr %0, i64 6
  %.sroa.17.0..sroa_idx = getelementptr i8, ptr %0, i64 20 ; 2 uses
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2 ; 2 uses
  %i.a = load <8 x i16>, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.17.0.copyload = load i16, ptr %.sroa.17.0..sroa_idx, align 2 ; 3 uses
end_hunk_0
begin_hunk_1_@LowPassForIntra8x8Pred:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = zext i16 %.sroa.0.0.copyload to i32
  %i.g = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.h = shl nuw nsw i32 %i.g, 1
  %i.i = zext i16 %.sroa.9.0.copyload to i32      ; 3 uses
  %i.j = add nuw nsw i32 %i.f, 2
  %i.k = add nuw nsw i32 %i.j, %i.h
  %i.l = add nuw nsw i32 %i.k, %i.i
end_hunk_1
begin_hunk_2_@LowPassForIntra8x8Pred:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = zext i16 %.sroa.7.0.copyload to i32      ; 2 uses
  %i.n = mul nuw nsw i32 %i.m, 3
  %i.o = zext i16 %.sroa.9.0.copyload to i32      ; 2 uses
  %i.p = add nuw nsw i32 %i.o, 2                  ; 2 uses
  %i.q = add nuw nsw i32 %i.p, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi120 = phi i32 [ %i.p, %bb.d ], [ %.pre119, %bb.c ]
  %.pre-phi118 = phi i32 [ %i.o, %bb.d ], [ %i.i, %bb.c ]
  %.sroa.7.0.in.in.a = phi i32 [ %i.m, %bb.d ], [ %i.g, %bb.c ]
  %.sroa.7.0.in.in = phi i32 [ %i.q, %bb.d ], [ %i.l, %bb.c ]
  %.sroa.7.0.in = lshr i32 %.sroa.7.0.in.in, 2
  %.sroa.7.0 = trunc nuw i32 %.sroa.7.0.in to i16
  %i.r = zext <8 x i16> %i.b to <8 x i32>         ; 4 uses
  %4 = insertelement <8 x i32> poison, i32 %.pre-phi118, i64 0
  %5 = shufflevector <8 x i32> %4, <8 x i32> %i.r, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.s = shl nuw nsw <8 x i32> %5, splat (i32 1)
  %i.t = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %6 = insertelement <8 x i32> %i.t, i32 %.sroa.7.0.in.in.a, i64 0
  %i.u = insertelement <8 x i32> %6, i32 %.pre-phi120, i64 1
  %i.v = add nuw nsw <8 x i32> %i.u, <i32 2, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.w = add nuw nsw <8 x i32> %i.v, %i.s
  %i.x = add nuw nsw <8 x i32> %i.w, %i.r
end_hunk_2
