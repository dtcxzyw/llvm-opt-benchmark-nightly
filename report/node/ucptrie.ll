inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0_@ucptrie_openFromBinary_78:bb.a
bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = shl nuw nsw i32 %i.o, 4
  %i.ab = and i32 %i.aa, 983040
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
begin_hunk_1_@ucptrie_openFromBinary_78:bb.a
  %i.av = trunc nuw nsw i32 %i.q to i8
  %i.aw = trunc nuw nsw i32 %i.r to i8
  %i.ax = shl nuw nsw i32 %i.z, 1
  %i.ay = add nuw nsw i32 %i.ax, 16
  switch i32 %i.r, label %bb.p [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.az = shl nuw nsw i32 %i.af, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = shl nuw nsw i32 %i.af, 2
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n
  %.099.a = phi i32 [ %i.az, %bb.n ], [ %i.ba, %bb.o ], [ %i.af, %bb.m ]
  %.099 = add nuw nsw i32 %i.ay, %.099.a          ; 2 uses
  %i.bb = icmp samesign ult i32 %3, %.099
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
end_hunk_1
begin_hunk_2_@ucptrie_openFromBinary_78:bb.a
  br i1 %.not116, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %.099, ptr %4, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.q, %bb.y, %bb.x, %bb.s, %bb.h, %bb.l, %bb.j, %bb.a, %bb.f, %bb.d
end_hunk_2
begin_hunk_3_@ucptrie_toBinary_78:bb.a

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = shl nsw i32 %i.n, 1
  %i.p = add nsw i32 %i.o, 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  switch i8 %i.f, label %default.unreachable72 [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = shl nsw i32 %i.r, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = shl nsw i32 %i.r, 2
  br label %bb.i

default.unreachable72:                            ; preds = %bb.k, %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.066.a = phi i32 [ %i.t, %bb.h ], [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  %.066 = add nsw i32 %i.p, %.066.a               ; 5 uses
  %i.u = icmp slt i32 %2, %.066
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@ucptrie_toBinary_78:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.l, %bb.m, %bb.n, %bb.j, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %.066, %bb.l ], [ %.066, %bb.m ], [ %.066, %bb.n ], [ %.066, %bb.j ]
  ret i32 %.2
}

end_hunk_4
