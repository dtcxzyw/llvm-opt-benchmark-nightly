begin_hunk_0
inline.NumInlined: 3
inline.NumDeleted: 1
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.f = shl i32 16, %2                           ; 2 uses
  %.not.i = icmp ne i32 %6, 0
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  %i.h = zext i1 %.not.i to i32                   ; 6 uses
  %i.i = ashr i32 %i.g, %i.h                      ; 3 uses
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %bb.d, label %bb.f
end_hunk_1
begin_hunk_2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %decode_motion_vector.exit
  %i.ab = tail call i32 @Get_motion_code() #3     ; 9 uses
  %i.ac = icmp ne i32 %3, 0
  %i.ad = icmp ne i32 %i.ab, 0
  %or.cond3 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.k, label %7

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 @Get_Bits(i32 noundef %3) #3
  br label %7

7:                                                ; preds = %bb.j, %bb.k
  %8 = phi i32 [ %i.ae, %bb.k ], [ 0, %bb.j ]     ; 4 uses
  %.not27 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  br i1 %.not27, label %.critedge, label %bb.l

bb.l:                                             ; preds = %7
  %i.af = load i32, ptr %9, align 4, !tbaa !4
  %i.ag = ashr i32 %i.af, 1
  %i.ah = shl i32 16, %3                          ; 2 uses
  %i.ai = ashr i32 %i.ag, %i.h                    ; 3 uses
  %i.aj = icmp sgt i32 %i.ab, 0
end_hunk_2
begin_hunk_3
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = shl i32 %i.ak, %3
  %i.am = add i32 %i.al, 1
  %i.an = add i32 %i.am, %8
  %i.ao = add nsw i32 %i.an, %i.ai                ; 3 uses
  %.not33.i31 = icmp slt i32 %i.ao, %i.ah
  br i1 %.not33.i31, label %decode_motion_vector.exit33, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg34.i32 = shl i32 -32, %3
  %i.ap = add i32 %i.ao, %.neg34.i32
  br label %decode_motion_vector.exit33

bb.o:                                             ; preds = %bb.l
  %i.aq = icmp slt i32 %i.ab, 0
  br i1 %i.aq, label %bb.p, label %decode_motion_vector.exit33

bb.p:                                             ; preds = %bb.o
  %i.ar = xor i32 %i.ab, -1
  %i.as = shl i32 %i.ar, %3
  %i.at = add nsw i32 %8, %i.as
  %.neg.i30 = xor i32 %i.at, -1
  %i.au = add i32 %i.ai, %.neg.i30                ; 3 uses
  %i.av = sub nsw i32 0, %i.ah
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.q, label %decode_motion_vector.exit33

bb.q:                                             ; preds = %bb.p
  %i.ax = shl i32 32, %3
  %i.ay = add nsw i32 %i.au, %i.ax
  br label %decode_motion_vector.exit33

decode_motion_vector.exit33:                      ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i29 = phi i32 [ %i.ap, %bb.n ], [ %i.ao, %bb.m ], [ %i.ay, %bb.q ], [ %i.au, %bb.p ], [ %i.ai, %bb.o ]
  %10 = shl i32 %.0.i29, %i.h
  %11 = shl i32 %10, 1
  br label %35

.critedge:                                        ; preds = %7
  %12 = shl i32 16, %3                            ; 2 uses
  %13 = load i32, ptr %9, align 4, !tbaa !4
  %14 = ashr i32 %13, %i.h                        ; 3 uses
  %15 = icmp sgt i32 %i.ab, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %.critedge
  %17 = add nsw i32 %i.ab, -1
  %18 = shl i32 %17, %3
  %19 = add i32 %18, 1
  %20 = add i32 %19, %8
  %21 = add nsw i32 %20, %14                      ; 3 uses
  %.not33.i37 = icmp slt i32 %21, %12
  br i1 %.not33.i37, label %decode_motion_vector.exit39, label %22

22:                                               ; preds = %16
  %.neg34.i38 = shl i32 -32, %3
  %23 = add i32 %21, %.neg34.i38
  br label %decode_motion_vector.exit39

24:                                               ; preds = %.critedge
  %25 = icmp slt i32 %i.ab, 0
  br i1 %25, label %bb.r, label %decode_motion_vector.exit39

bb.r:                                             ; preds = %24
  %26 = xor i32 %i.ab, -1
  %i.az = shl i32 %26, %3
  %27 = add nsw i32 %8, %i.az
  %.neg.i36 = xor i32 %27, -1
  %28 = add i32 %14, %.neg.i36                    ; 3 uses
  %29 = sub nsw i32 0, %12
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %decode_motion_vector.exit39

31:                                               ; preds = %bb.r
  %32 = shl i32 32, %3
  %33 = add nsw i32 %28, %32
  br label %decode_motion_vector.exit39

decode_motion_vector.exit39:                      ; preds = %16, %22, %24, %bb.r, %31
  %.0.i35 = phi i32 [ %23, %22 ], [ %21, %16 ], [ %33, %31 ], [ %28, %bb.r ], [ %14, %24 ]
  %34 = shl i32 %.0.i35, %i.h
  br label %35

35:                                               ; preds = %decode_motion_vector.exit39, %decode_motion_vector.exit33
  %.sink = phi i32 [ %34, %decode_motion_vector.exit39 ], [ %11, %decode_motion_vector.exit33 ]
  store i32 %.sink, ptr %9, align 4, !tbaa !4
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %35
  %i.ba = tail call i32 @Get_dmvector() #3
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %35
  ret void
}

end_hunk_3
