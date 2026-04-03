begin_hunk_0
inline.NumInlined: 2
inline.NumDeleted: 1
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  %i.f = shl i32 16, %2                           ; 2 uses
  %.not.i = icmp ne i32 %6, 0
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  %i.h = zext i1 %.not.i to i32                   ; 4 uses
  %i.i = ashr i32 %i.g, %i.h                      ; 3 uses
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %bb.d, label %bb.f
end_hunk_1
begin_hunk_2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %decode_motion_vector.exit
  %i.ab = tail call i32 @Get_motion_code() #3     ; 5 uses
  %i.ac = icmp ne i32 %3, 0
  %i.ad = icmp ne i32 %i.ab, 0
  %or.cond3 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i32 @Get_Bits(i32 noundef %3) #3
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %7 = phi i32 [ %i.ae, %bb.k ], [ 0, %bb.j ]     ; 2 uses
  %.not27 = icmp ne i32 %5, 0                     ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %8, align 4, !tbaa !4
  %9 = zext i1 %.not27 to i32
  %i.ag = ashr i32 %i.af, %9
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = shl i32 16, %3                          ; 2 uses
  %i.ai = ashr i32 %i.ag, %i.h                    ; 3 uses
  %i.aj = icmp sgt i32 %i.ab, 0
end_hunk_2
begin_hunk_3
  %i.ak = add nsw i32 %i.ab, -1
  %i.al = shl i32 %i.ak, %3
  %i.am = add i32 %i.al, 1
  %i.an = add i32 %i.am, %7
  %i.ao = add nsw i32 %i.an, %i.ai                ; 3 uses
  %.not33.i31 = icmp slt i32 %i.ao, %i.ah
  br i1 %.not33.i31, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg34.i32 = shl i32 -32, %3
  %i.ap = add i32 %i.ao, %.neg34.i32
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.aq = icmp slt i32 %i.ab, 0
  br i1 %i.aq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ar = xor i32 %i.ab, -1
  %i.as = shl i32 %i.ar, %3
  %i.at = add nsw i32 %7, %i.as
  %.neg.i30 = xor i32 %i.at, -1
  %i.au = add i32 %i.ai, %.neg.i30                ; 3 uses
  %i.av = sub nsw i32 0, %i.ah
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = shl i32 32, %3
  %i.ay = add nsw i32 %i.au, %i.ax
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i29 = phi i32 [ %i.ap, %bb.n ], [ %i.ao, %bb.m ], [ %i.ay, %bb.q ], [ %i.au, %bb.p ], [ %i.ai, %bb.o ]
  %i.az = shl i32 %.0.i29, %i.h
  %11 = zext i1 %.not27 to i32
  %spec.select = shl i32 %i.az, %11
  store i32 %spec.select, ptr %10, align 4, !tbaa !4
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call i32 @Get_dmvector() #3
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

end_hunk_3
