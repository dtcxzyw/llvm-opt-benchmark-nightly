Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__malloc:bb.a
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #38
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__addsizes_valid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = sub nuw nsw i32 2147483647, %1
  %i.c = icmp sle i32 %0, %i.b
  %narrow = select i1 %i.a, i1 %i.c, i1 false
  %.0 = zext i1 %narrow to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__mul2sizes_valid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %i.d = icmp sle i32 %0, %i.c
  %i.e = zext i1 %i.d to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__mad2sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %stbi__mul2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread8, label %stbi__mul2sizes_valid.exit

stbi__mul2sizes_valid.exit:                       ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not11 = icmp sgt i32 %0, %i.c
  br i1 %.not11, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread8

stbi__mul2sizes_valid.exit.thread8:               ; preds = %bb.b, %stbi__mul2sizes_valid.exit
  %i.d = mul nuw nsw i32 %1, %0
  %i.e = icmp sgt i32 %2, -1
  %i.f = sub nuw nsw i32 2147483647, %2
  %i.g = icmp sle i32 %i.d, %i.f
  %narrow.i = select i1 %i.e, i1 %i.g, i1 false
  %.0.i5 = zext i1 %narrow.i to i32
  br label %stbi__mul2sizes_valid.exit.thread

stbi__mul2sizes_valid.exit.thread:                ; preds = %bb.a, %stbi__mul2sizes_valid.exit.thread8, %stbi__mul2sizes_valid.exit
  %i.h = phi i32 [ 0, %stbi__mul2sizes_valid.exit ], [ %.0.i5, %stbi__mul2sizes_valid.exit.thread8 ], [ 0, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__mad3sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %stbi__mul2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread16, label %stbi__mul2sizes_valid.exit

stbi__mul2sizes_valid.exit:                       ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not24 = icmp sgt i32 %0, %i.c
  br i1 %.not24, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread16

stbi__mul2sizes_valid.exit.thread16:              ; preds = %bb.b, %stbi__mul2sizes_valid.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %stbi__mul2sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit12.thread21, label %stbi__mul2sizes_valid.exit12

stbi__mul2sizes_valid.exit12:                     ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit12.thread21

stbi__mul2sizes_valid.exit12.thread21:            ; preds = %bb.c, %stbi__mul2sizes_valid.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = icmp sgt i32 %3, -1
  %i.j = sub nuw nsw i32 2147483647, %3
  %i.k = icmp sle i32 %i.h, %i.j
  %narrow.i = select i1 %i.i, i1 %i.k, i1 false
  %.0.i13 = zext i1 %narrow.i to i32
  br label %stbi__mul2sizes_valid.exit.thread

stbi__mul2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16, %bb.a, %stbi__mul2sizes_valid.exit12.thread21, %stbi__mul2sizes_valid.exit12, %stbi__mul2sizes_valid.exit
  %i.l = phi i32 [ 0, %stbi__mul2sizes_valid.exit12 ], [ 0, %stbi__mul2sizes_valid.exit ], [ %.0.i13, %stbi__mul2sizes_valid.exit12.thread21 ], [ 0, %bb.a ], [ 0, %stbi__mul2sizes_valid.exit.thread16 ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__mad4sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %stbi__mul2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread25, label %stbi__mul2sizes_valid.exit

stbi__mul2sizes_valid.exit:                       ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not38 = icmp sgt i32 %0, %i.c
  br i1 %.not38, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread25

stbi__mul2sizes_valid.exit.thread25:              ; preds = %bb.b, %stbi__mul2sizes_valid.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i16 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16, label %bb.c, label %stbi__mul2sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit18.thread30, label %stbi__mul2sizes_valid.exit18

stbi__mul2sizes_valid.exit18:                     ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30

stbi__mul2sizes_valid.exit18.thread30:            ; preds = %bb.c, %stbi__mul2sizes_valid.exit18
  %i.h = mul nuw nsw i32 %i.d, %2                 ; 3 uses
  %i.i = or i32 %3, %i.h
  %or.cond.not.i19 = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i19, label %bb.d, label %stbi__mul2sizes_valid.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit18.thread30
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %stbi__mul2sizes_valid.exit21.thread35, label %stbi__mul2sizes_valid.exit21

stbi__mul2sizes_valid.exit21:                     ; preds = %bb.d
  %i.k = udiv i32 2147483647, %3
  %.not39 = icmp sgt i32 %i.h, %i.k
  br i1 %.not39, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit21.thread35

stbi__mul2sizes_valid.exit21.thread35:            ; preds = %bb.d, %stbi__mul2sizes_valid.exit21
  %i.l = mul nuw nsw i32 %i.h, %3
  %i.m = icmp sgt i32 %4, -1
  %i.n = sub nuw nsw i32 2147483647, %4
  %i.o = icmp sle i32 %i.l, %i.n
  %narrow.i = select i1 %i.m, i1 %i.o, i1 false
  %.0.i22 = zext i1 %narrow.i to i32
  br label %stbi__mul2sizes_valid.exit.thread

stbi__mul2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit18.thread30, %stbi__mul2sizes_valid.exit.thread25, %bb.a, %stbi__mul2sizes_valid.exit21.thread35, %stbi__mul2sizes_valid.exit21, %stbi__mul2sizes_valid.exit18, %stbi__mul2sizes_valid.exit
  %i.p = phi i32 [ 0, %stbi__mul2sizes_valid.exit21 ], [ 0, %stbi__mul2sizes_valid.exit18 ], [ 0, %stbi__mul2sizes_valid.exit ], [ %.0.i22, %stbi__mul2sizes_valid.exit21.thread35 ], [ 0, %stbi__mul2sizes_valid.exit.thread25 ], [ 0, %bb.a ], [ 0, %stbi__mul2sizes_valid.exit18.thread30 ]
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @stbi__malloc_mad2(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not11.i = icmp sgt i32 %0, %i.c
  br i1 %.not11.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = icmp slt i32 %2, 0
  %i.f = sub nuw nsw i32 2147483647, %2
  %i.g = icmp sgt i32 %i.d, %i.f
  %narrow.i.i.not = select i1 %i.e, i1 true, i1 %i.g
  br i1 %narrow.i.i.not, label %stbi__mad2sizes_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.h = add nsw i32 %i.d, %2
  %3 = sext i32 %i.h to i64
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef %3) #38
  br label %stbi__mad2sizes_valid.exit.thread

stbi__mad2sizes_valid.exit.thread:                ; preds = %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mad2sizes_valid.exit, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %stbi__mad2sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @stbi__malloc_mad3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad3sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not24.i = icmp sgt i32 %0, %i.c
  br i1 %.not24.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %stbi__mad3sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i
  %i.h = mul nsw i32 %i.d, %2                     ; 2 uses
  %i.i = icmp slt i32 %3, 0
  %i.j = sub nuw nsw i32 2147483647, %3
  %i.k = icmp sgt i32 %i.h, %i.j
  %narrow.i.i.not = select i1 %i.i, i1 true, i1 %i.k
  br i1 %narrow.i.i.not, label %stbi__mad3sizes_valid.exit.thread, label %bb.d

bb.d:                                             ; preds = %stbi__mad3sizes_valid.exit
  %i.l = add nsw i32 %i.h, %3
  %4 = sext i32 %i.l to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %4) #38
  br label %stbi__mad3sizes_valid.exit.thread

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16.i, %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i, %stbi__mad3sizes_valid.exit, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ null, %stbi__mad3sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit12.i ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ], [ null, %stbi__mul2sizes_valid.exit.thread16.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @stbi__malloc_mad4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad4sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread25.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not38.i = icmp sgt i32 %0, %i.c
  br i1 %.not38.i, label %stbi__mad4sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread25.i

stbi__mul2sizes_valid.exit.thread25.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i16.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i, label %bb.c, label %stbi__mad4sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit18.thread30.i, label %stbi__mul2sizes_valid.exit18.i

stbi__mul2sizes_valid.exit18.i:                   ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %stbi__mad4sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30.i

stbi__mul2sizes_valid.exit18.thread30.i:          ; preds = %stbi__mul2sizes_valid.exit18.i, %bb.c
  %i.h = mul nsw i32 %i.d, %2                     ; 3 uses
  %i.i = or i32 %3, %i.h
  %or.cond.not.i19.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i19.i, label %bb.d, label %stbi__mad4sizes_valid.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit18.thread30.i
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %stbi__mad4sizes_valid.exit, label %stbi__mul2sizes_valid.exit21.i

stbi__mul2sizes_valid.exit21.i:                   ; preds = %bb.d
  %i.k = udiv i32 2147483647, %3
  %.not39.i = icmp sgt i32 %i.h, %i.k
  br i1 %.not39.i, label %stbi__mad4sizes_valid.exit.thread, label %stbi__mad4sizes_valid.exit

stbi__mad4sizes_valid.exit:                       ; preds = %bb.d, %stbi__mul2sizes_valid.exit21.i
  %i.l = mul nsw i32 %i.h, %3                     ; 2 uses
  %i.m = icmp slt i32 %4, 0
  %i.n = sub nuw nsw i32 2147483647, %4
  %i.o = icmp sgt i32 %i.l, %i.n
  %narrow.i.i.not = select i1 %i.m, i1 true, i1 %i.o
  br i1 %narrow.i.i.not, label %stbi__mad4sizes_valid.exit.thread, label %bb.e

bb.e:                                             ; preds = %stbi__mad4sizes_valid.exit
  %i.p = add nsw i32 %i.l, %4
  %5 = sext i32 %i.p to i64
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef %5) #38
  br label %stbi__mad4sizes_valid.exit.thread

stbi__mad4sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit18.thread30.i, %bb.a, %stbi__mul2sizes_valid.exit.thread25.i, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit18.i, %stbi__mul2sizes_valid.exit21.i, %stbi__mad4sizes_valid.exit, %bb.e
  %.0 = phi ptr [ %i.q, %bb.e ], [ null, %stbi__mad4sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit21.i ], [ null, %stbi__mul2sizes_valid.exit18.i ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %stbi__mul2sizes_valid.exit.thread25.i ], [ null, %bb.a ], [ null, %stbi__mul2sizes_valid.exit18.thread30.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__addints_valid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, %0
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, %0
  %or.cond.not = icmp sgt i32 %i.c, -1
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sub nsw i32 -2147483648, %1
  %i.e = icmp sge i32 %0, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = sub nsw i32 2147483647, %1
  %i.g = icmp sle i32 %0, %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0.shrunk = phi i1 [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ true, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbi__mul2shorts_valid(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %1, 1
  %or.cond = icmp ult i32 %i.a, 2
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = xor i32 %1, %0
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = sdiv i32 32767, %1
  %i.e = icmp sle i32 %0, %i.d
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.nonneg14 = sub i32 0, %1
  %i.g = udiv i32 32768, %.nonneg14
  %i.h = icmp sle i32 %0, %i.g
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = udiv i32 32768, %1
  %.neg = sub nsw i32 0, %i.i
  %i.j = icmp sge i32 %0, %.neg
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0.shrunk = phi i1 [ %i.j, %bb.f ], [ %i.e, %bb.c ], [ %i.h, %bb.e ], [ true, %bb.a ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #13 {
bb.a:
  tail call void @free(ptr noundef %0) #37
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_flip_vertically_on_load_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !40
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  store i32 1, ptr %i.b, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbi__load_main(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 12)) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.stbi__gif, align 8          ; 9 uses
  %8 = alloca %struct.stbi__png, align 8          ; 4 uses
  store i32 8, ptr %5, align 4, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 4, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !161
  %i.c = tail call i32 @stbi__png_test(ptr noundef %0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store ptr %0, ptr %8, align 8, !tbaa !44
  %i.d = call ptr @stbi__do_png(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @stbi__bmp_test_raw(ptr noundef %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.h = load <2 x ptr>, ptr %i.f, align 8, !tbaa !39
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !39
  %.not75 = icmp eq i32 %i.e, 0
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @stbi__bmp_load(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nonnull poison)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @stbi__gif_test_raw(ptr noundef nonnull %0)
  %i.k = load <2 x ptr>, ptr %i.f, align 8, !tbaa !39
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !39
  %.not76 = icmp eq i32 %i.j, 0
  br i1 %.not76, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(34928) %7, i8 0, i64 34928, i1 false)
  %i.l = call ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %3, i32 poison, ptr noundef null) ; 4 uses
  %i.m = icmp eq ptr %i.l, %0
  %.not16.i = icmp eq ptr %i.l, null
  %.not.i = or i1 %i.m, %.not16.i
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %7, align 8, !tbaa !46     ; 2 uses
  store i32 %i.n, ptr %1, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47   ; 2 uses
  store i32 %i.p, ptr %2, align 4, !tbaa !40
  %i.q = and i32 %4, -5
  %or.cond.not.i = icmp eq i32 %i.q, 0
  br i1 %or.cond.not.i, label %stbi__gif_load.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @stbi__convert_format(ptr noundef nonnull %i.l, i32 noundef 4, i32 noundef %4, i32 noundef %i.n, i32 noundef %i.p)
  br label %stbi__gif_load.exit

bb.i:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %.not15.i = icmp eq ptr %i.t, null
  br i1 %.not15.i, label %stbi__gif_load.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.t) #37
  br label %stbi__gif_load.exit

stbi__gif_load.exit:                              ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.r, %bb.h ], [ %i.l, %bb.g ], [ null, %bb.j ], [ null, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49
  call void @free(ptr noundef %i.v) #37
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  call void @free(ptr noundef %i.x) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.z

bb.k:                                             ; preds = %bb.e
  %i.y = tail call i32 @stbi__get16be(ptr noundef nonnull %0)
  %i.z = shl nuw i32 %i.y, 16
  %i.aa = tail call i32 @stbi__get16be(ptr noundef nonnull %0)
  %i.ab = or disjoint i32 %i.z, %i.aa
  %.not84 = icmp eq i32 %i.ab, 943870035
  %i.ac = load <2 x ptr>, ptr %i.f, align 8, !tbaa !39
  store <2 x ptr> %i.ac, ptr %i.g, align 8, !tbaa !39
  br i1 %.not84, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call ptr @stbi__psd_load(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5, i32 noundef %6)
  br label %bb.z
end_hunk_0
begin_hunk_1_@stbi__bmp_load:bb.a
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 8 uses
  %i.b = alloca [9 x i32], align 16               ; 8 uses
  %i.c = alloca [9 x i32], align 16               ; 8 uses
  %i.d = alloca [9 x i32], align 16               ; 8 uses
  %i.e = alloca [256 x [4 x i8]], align 16        ; 6 uses
  %6 = alloca %struct.stbi__bmp_data, align 4     ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  store i32 255, ptr %i.f, align 4, !tbaa !53
  %i.g = call ptr @stbi__bmp_parse_header(ptr noundef %0, ptr noundef nonnull %6)
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true) ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !54
  %i.m = icmp samesign ugt i32 %i.l, 16777216
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.n, align 8, !tbaa !39
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8, !tbaa !55
  %i.p = icmp ugt i32 %i.o, 16777216
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.q, align 8, !tbaa !39
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !56   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !58   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59   ; 7 uses
  %i.z = load i32, ptr %i.f, align 4, !tbaa !53   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60 ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 12                   ; 3 uses
  %i.ad = load i32, ptr %6, align 4, !tbaa !61    ; 4 uses
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp slt i32 %i.ad, 24
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !62 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !63
  %i.aj = add i32 %i.ag, -24
  %i.ak = sub i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, 3
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.am = icmp slt i32 %i.ad, 16
  br i1 %i.am, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !62 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.ar = add i32 %i.ab, %i.aq
  %i.as = sub i32 %i.ao, %i.ar
  %i.at = ashr i32 %i.as, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.au = phi i32 [ %i.ag, %bb.h ], [ %i.ao, %bb.j ]
  %.0332 = phi i32 [ %i.al, %bb.h ], [ %i.at, %bb.j ] ; 2 uses
  %i.av = icmp eq i32 %.0332, 0
  br i1 %i.av, label %.thread, label %.thread711

.thread711:                                       ; preds = %bb.k
  %i.aw = icmp eq i32 %i.y, -16777216
  br label %bb.q

.thread:                                          ; preds = %bb.i, %bb.g, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add nsw i32 %i.ay, %i.bg                ; 3 uses
  %i.bi = add i32 %i.bh, -1025
  %or.cond378 = icmp ult i32 %i.bi, -1024
  br i1 %or.cond378, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.bj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.75, ptr %i.bj, align 8, !tbaa !39
  br label %.critedge

bb.m:                                             ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !62 ; 4 uses
  %i.bm = icmp slt i32 %i.bl, %i.bh
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = sub nsw i32 %i.bl, %i.bh                ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 1024
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.76, ptr %i.bp, align 8, !tbaa !39
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  tail call void @stbi__skip(ptr noundef nonnull %0, i32 noundef %i.bn)
  %i.bq = icmp eq i32 %i.ad, 24
  %i.br = icmp eq i32 %i.y, -16777216             ; 3 uses
  %or.cond = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread711, %bb.p
  %i.bs = phi i1 [ %i.aw, %.thread711 ], [ %i.br, %bb.p ]
  %.0332476715 = phi i32 [ %.0332, %.thread711 ], [ 0, %bb.p ]
  %i.bt = phi i1 [ false, %.thread711 ], [ true, %bb.p ]
  %i.bu = phi i32 [ %i.au, %.thread711 ], [ %i.bl, %bb.p ]
  %.not = icmp eq i32 %i.y, 0
  %i.bv = select i1 %.not, i32 3, i32 4
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bw = phi i1 [ %i.bs, %bb.q ], [ %i.br, %bb.p ]
  %.0332476714 = phi i32 [ %.0332476715, %bb.q ], [ 0, %bb.p ] ; 4 uses
  %i.bx = phi i1 [ %i.bt, %bb.q ], [ true, %bb.p ]
  %i.by = phi i32 [ %i.ad, %bb.q ], [ 24, %bb.p ] ; 6 uses
  %i.bz = phi i32 [ %i.bu, %bb.q ], [ %i.bl, %bb.p ] ; 3 uses
  %i.ca = phi i32 [ %i.bv, %bb.q ], [ 3, %bb.p ]  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !64
  %.not367 = icmp eq i32 %4, 0
  %i.cc = icmp sgt i32 %4, 2
  %spec.select = select i1 %i.cc, i32 %4, i32 %i.ca ; 11 uses
  %i.cd = load i32, ptr %0, align 8, !tbaa !55    ; 5 uses
  %i.ce = load i32, ptr %i.i, align 4, !tbaa !54  ; 5 uses
  %or.cond.not.i.i = icmp sgt i32 %i.cd, -1
  br i1 %or.cond.not.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp eq i32 %i.cd, 0                    ; 2 uses
  br i1 %i.cf, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.s
  %i.cg = udiv i32 2147483647, %i.cd
  %.not24.i = icmp samesign ugt i32 %spec.select, %i.cg
  br i1 %.not24.i, label %bb.u, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.s
  %i.ch = mul nuw nsw i32 %i.cd, %spec.select     ; 4 uses
  %i.ci = or i32 %i.ce, %i.ch
  %or.cond.not.i10.i = icmp sgt i32 %i.ci, -1
  br i1 %or.cond.not.i10.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.cj = icmp eq i32 %i.ce, 0                    ; 2 uses
  br i1 %i.cj, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.t
  %i.ck = udiv i32 2147483647, %i.ce
  %.not.i = icmp samesign ugt i32 %i.ch, %i.ck
  br i1 %.not.i, label %bb.u, label %stbi__mad3sizes_valid.exit

bb.u:                                             ; preds = %stbi__mul2sizes_valid.exit12.i, %stbi__mul2sizes_valid.exit.i, %bb.r, %stbi__mul2sizes_valid.exit.thread16.i
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.cl, align 8, !tbaa !39
  br label %.critedge

stbi__mad3sizes_valid.exit:                       ; preds = %bb.t, %stbi__mul2sizes_valid.exit12.i
  br i1 %i.cf, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %stbi__mad3sizes_valid.exit
  %i.cm = udiv i32 2147483647, %i.cd
  %.not24.i.i = icmp samesign ugt i32 %spec.select, %i.cm
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mad3sizes_valid.exit, %stbi__mul2sizes_valid.exit.i.i
  br i1 %i.cj, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.cn = udiv i32 2147483647, %i.ce
  %.not.i.i = icmp samesign ugt i32 %i.ch, %i.cn
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__mul2sizes_valid.exit12.i.i
  %i.co = mul nuw nsw i32 %i.ch, %i.ce
  %7 = sext i32 %i.co to i64
  %i.cp = tail call noalias noundef ptr @malloc(i64 noundef %7) #38 ; 30 uses
  %.not369 = icmp eq ptr %i.cp, null
  br i1 %.not369, label %stbi__malloc_mad3.exit.thread, label %bb.v

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__malloc_mad3.exit
  %i.cq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.cq, align 8, !tbaa !39
  br label %.critedge

bb.v:                                             ; preds = %stbi__malloc_mad3.exit
  %i.cr = icmp slt i32 %i.by, 16
  br i1 %i.cr, label %bb.w, label %bb.ck

bb.w:                                             ; preds = %bb.v
  %i.cs = icmp sgt i32 %.0332476714, 256
  %or.cond7 = or i1 %i.bx, %i.cs
  br i1 %or.cond7, label %bb.x, label %.preheader518

.preheader518:                                    ; preds = %bb.w
  %i.ct = icmp sgt i32 %.0332476714, 0
  br i1 %i.ct, label %.lr.ph539, label %._crit_edge

.lr.ph539:                                        ; preds = %.preheader518
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 12 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 15 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 14 uses
  %wide.trip.count = zext nneg i32 %.0332476714 to i64
  %.pre588 = load ptr, ptr %i.cu, align 8, !tbaa !29 ; 2 uses
  %.pre589 = load ptr, ptr %i.cv, align 8, !tbaa !31 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.cp) #37
  %i.de = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.77, ptr %i.de, align 8, !tbaa !39
  br label %.critedge

bb.y:                                             ; preds = %.lr.ph539, %stbi__get8.exit402
  %i.df = phi ptr [ %.pre589, %.lr.ph539 ], [ %i.gy, %stbi__get8.exit402 ] ; 2 uses
  %i.dg = phi ptr [ %.pre588, %.lr.ph539 ], [ %i.gz, %stbi__get8.exit402 ]
  %i.dh = phi ptr [ %.pre589, %.lr.ph539 ], [ %i.ha, %stbi__get8.exit402 ] ; 3 uses
  %i.di = phi ptr [ %.pre588, %.lr.ph539 ], [ %i.hb, %stbi__get8.exit402 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph539 ], [ %indvars.iv.next, %stbi__get8.exit402 ] ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.dh
  br i1 %i.dj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 3 uses
  store ptr %i.dk, ptr %i.cu, align 8, !tbaa !29
  %i.dl = load i8, ptr %i.di, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.aa:                                            ; preds = %bb.y
  %i.dm = load i32, ptr %i.cw, align 8, !tbaa !26
  %.not.i383 = icmp eq i32 %i.dm, 0
  br i1 %.not.i383, label %stbi__get8.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !34
  %i.dp = load i32, ptr %i.da, align 4, !tbaa !35
  %i.dq = tail call i32 %i.dn(ptr noundef %i.do, ptr noundef nonnull %i.cz, i32 noundef %i.dp) #37, !inline_history !65 ; 2 uses
  %i.dr = load ptr, ptr %i.cu, align 8, !tbaa !29
  %i.ds = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = load i32, ptr %i.dc, align 8, !tbaa !27
  %i.dy = add nsw i32 %i.dx, %i.dw
  store i32 %i.dy, ptr %i.dc, align 8, !tbaa !27
  %i.dz = icmp eq i32 %i.dq, 0
  br i1 %i.dz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cw, align 8, !tbaa !26
  store i8 0, ptr %i.cz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ea = sext i32 %i.dq to i64
  %i.eb = getelementptr inbounds i8, ptr %i.cz, i64 %i.ea
  %.pre.i = load i8, ptr %i.cz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.ad, %bb.ac
  %i.ec = phi i8 [ 0, %bb.ac ], [ %.pre.i, %bb.ad ]
  %.sink.i.i = phi ptr [ %i.dd, %bb.ac ], [ %i.eb, %bb.ad ] ; 3 uses
  store ptr %.sink.i.i, ptr %i.cv, align 8, !tbaa !31
  store ptr %i.dd, ptr %i.cu, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.z, %bb.aa, %stbi__refill_buffer.exit.i
  %i.ed = phi ptr [ %i.df, %bb.z ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.df, %bb.aa ] ; 2 uses
  %i.ee = phi ptr [ %i.dk, %bb.z ], [ %i.dd, %stbi__refill_buffer.exit.i ], [ %i.dg, %bb.aa ]
  %i.ef = phi ptr [ %i.dh, %bb.z ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.dh, %bb.aa ] ; 3 uses
  %i.eg = phi ptr [ %i.dk, %bb.z ], [ %i.dd, %stbi__refill_buffer.exit.i ], [ %i.di, %bb.aa ] ; 4 uses
  %.0.i384 = phi i8 [ %i.dl, %bb.z ], [ %i.ec, %stbi__refill_buffer.exit.i ], [ 0, %bb.aa ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i8 %.0.i384, ptr %i.ei, align 2, !tbaa !37
  %i.ej = icmp ult ptr %i.eg, %i.ef
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %stbi__get8.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 3 uses
  store ptr %i.ek, ptr %i.cu, align 8, !tbaa !29
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !37
  br label %stbi__get8.exit390

bb.af:                                            ; preds = %stbi__get8.exit
  %i.em = load i32, ptr %i.cw, align 8, !tbaa !26
  %.not.i385 = icmp eq i32 %i.em, 0
  br i1 %.not.i385, label %stbi__get8.exit390, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.eo = load ptr, ptr %i.cy, align 8, !tbaa !34
  %i.ep = load i32, ptr %i.da, align 4, !tbaa !35
  %i.eq = tail call i32 %i.en(ptr noundef %i.eo, ptr noundef nonnull %i.cz, i32 noundef %i.ep) #37, !inline_history !65 ; 2 uses
  %i.er = load ptr, ptr %i.cu, align 8, !tbaa !29
  %i.es = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = load i32, ptr %i.dc, align 8, !tbaa !27
  %i.ey = add nsw i32 %i.ex, %i.ew
  store i32 %i.ey, ptr %i.dc, align 8, !tbaa !27
  %i.ez = icmp eq i32 %i.eq, 0
  br i1 %i.ez, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cw, align 8, !tbaa !26
  store i8 0, ptr %i.cz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i387

bb.ai:                                            ; preds = %bb.ag
  %i.fa = sext i32 %i.eq to i64
  %i.fb = getelementptr inbounds i8, ptr %i.cz, i64 %i.fa
  %.pre.i386 = load i8, ptr %i.cz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i387

stbi__refill_buffer.exit.i387:                    ; preds = %bb.ai, %bb.ah
  %i.fc = phi i8 [ 0, %bb.ah ], [ %.pre.i386, %bb.ai ]
  %.sink.i.i388 = phi ptr [ %i.dd, %bb.ah ], [ %i.fb, %bb.ai ] ; 3 uses
  store ptr %.sink.i.i388, ptr %i.cv, align 8, !tbaa !31
  store ptr %i.dd, ptr %i.cu, align 8, !tbaa !29
  br label %stbi__get8.exit390

stbi__get8.exit390:                               ; preds = %bb.ae, %bb.af, %stbi__refill_buffer.exit.i387
  %i.fd = phi ptr [ %i.ed, %bb.ae ], [ %.sink.i.i388, %stbi__refill_buffer.exit.i387 ], [ %i.ed, %bb.af ] ; 2 uses
  %i.fe = phi ptr [ %i.ek, %bb.ae ], [ %i.dd, %stbi__refill_buffer.exit.i387 ], [ %i.ee, %bb.af ]
  %i.ff = phi ptr [ %i.ef, %bb.ae ], [ %.sink.i.i388, %stbi__refill_buffer.exit.i387 ], [ %i.ef, %bb.af ] ; 3 uses
  %i.fg = phi ptr [ %i.ek, %bb.ae ], [ %i.dd, %stbi__refill_buffer.exit.i387 ], [ %i.eg, %bb.af ] ; 4 uses
  %.0.i389 = phi i8 [ %i.el, %bb.ae ], [ %i.fc, %stbi__refill_buffer.exit.i387 ], [ 0, %bb.af ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 %.0.i389, ptr %i.fh, align 1, !tbaa !37
  %i.fi = icmp ult ptr %i.fg, %i.ff
  br i1 %i.fi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %stbi__get8.exit390
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 3 uses
  store ptr %i.fj, ptr %i.cu, align 8, !tbaa !29
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !37
  br label %stbi__get8.exit396

bb.ak:                                            ; preds = %stbi__get8.exit390
  %i.fl = load i32, ptr %i.cw, align 8, !tbaa !26
  %.not.i391 = icmp eq i32 %i.fl, 0
  br i1 %.not.i391, label %stbi__get8.exit396, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.fn = load ptr, ptr %i.cy, align 8, !tbaa !34
  %i.fo = load i32, ptr %i.da, align 4, !tbaa !35
  %i.fp = tail call i32 %i.fm(ptr noundef %i.fn, ptr noundef nonnull %i.cz, i32 noundef %i.fo) #37, !inline_history !65 ; 2 uses
  %i.fq = load ptr, ptr %i.cu, align 8, !tbaa !29
  %i.fr = load ptr, ptr %i.db, align 8, !tbaa !28
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = load i32, ptr %i.dc, align 8, !tbaa !27
  %i.fx = add nsw i32 %i.fw, %i.fv
  store i32 %i.fx, ptr %i.dc, align 8, !tbaa !27
  %i.fy = icmp eq i32 %i.fp, 0
  br i1 %i.fy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cw, align 8, !tbaa !26
  store i8 0, ptr %i.cz, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i393
end_hunk_1
begin_hunk_2_@stbi__pnm_test:bb.a
bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %bb.c, %stbi__refill_buffer.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !29
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !37
  br label %stbi__get8.exit14

bb.h:                                             ; preds = %stbi__get8.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %.not.i9 = icmp eq i32 %i.an, 0
  br i1 %.not.i9, label %stbi__get8.exit14.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35
  %i.av = tail call i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au) #37, !inline_history !65 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !27
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i11

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i10 = load i8, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i11

stbi__refill_buffer.exit.i11:                     ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i10, %bb.k ]
  %.sink.i.i12 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i12, ptr %i.c, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit14

stbi__get8.exit14:                                ; preds = %bb.g, %stbi__refill_buffer.exit.i11
  %.0.i13 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %stbi__refill_buffer.exit.i11 ]
  %.not = icmp ne i8 %.0.i, 80
  %i.bm = add i8 %.0.i13, -55
  %or.cond = icmp ult i8 %i.bm, -2
  %or.cond8 = select i1 %.not, i1 true, i1 %or.cond
  br i1 %or.cond8, label %stbi__get8.exit14.thread, label %bb.l

stbi__get8.exit14.thread:                         ; preds = %bb.h, %stbi__get8.exit14
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bo = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !39
  store <2 x ptr> %i.bo, ptr %i.a, align 8, !tbaa !39
  br label %bb.l

bb.l:                                             ; preds = %stbi__get8.exit14, %stbi__get8.exit14.thread
  %.0 = phi i32 [ 0, %stbi__get8.exit14.thread ], [ 1, %stbi__get8.exit14 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__pnm_load(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call i32 @stbi__pnm_info(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.c, ptr %5, align 4, !tbaa !42
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !54
  %i.f = icmp ugt i32 %i.e, 16777216
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.g, align 8, !tbaa !39
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !55     ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777216
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.j, align 8, !tbaa !39
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  store i32 %i.h, ptr %1, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 4, !tbaa !54   ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !40
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !64  ; 5 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.pre, ptr %3, align 4, !tbaa !40
  %.pre70 = load i32, ptr %i.a, align 4, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi i32 [ %.pre70, %bb.g ], [ %i.k, %bb.f ] ; 5 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !42     ; 2 uses
  %i.o = sdiv i32 %i.n, 8                         ; 4 uses
  %i.p = or i32 %i.m, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.q, label %stbi__mul2sizes_valid.exit.thread25.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.i
  %i.r = udiv i32 2147483647, %i.m
  %.not38.i = icmp sgt i32 %.pre, %i.r
  br i1 %.not38.i, label %bb.l, label %stbi__mul2sizes_valid.exit.thread25.i

stbi__mul2sizes_valid.exit.thread25.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.i
  %i.s = mul i32 %i.m, %.pre                      ; 4 uses
  %i.t = or i32 %i.l, %i.s
  %or.cond.not.i16.i = icmp sgt i32 %i.t, -1
  br i1 %or.cond.not.i16.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25.i
  %i.u = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.u, label %stbi__mul2sizes_valid.exit18.thread30.i, label %stbi__mul2sizes_valid.exit18.i

stbi__mul2sizes_valid.exit18.i:                   ; preds = %bb.j
  %i.v = udiv i32 2147483647, %i.l
  %.not.i = icmp sgt i32 %i.s, %i.v
  br i1 %.not.i, label %bb.l, label %stbi__mul2sizes_valid.exit18.thread30.i

stbi__mul2sizes_valid.exit18.thread30.i:          ; preds = %stbi__mul2sizes_valid.exit18.i, %bb.j
  %i.w = mul i32 %i.s, %i.l                       ; 4 uses
  %i.x = or i32 %i.o, %i.w
  %or.cond.not.i19.i = icmp sgt i32 %i.x, -1
  br i1 %or.cond.not.i19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %stbi__mul2sizes_valid.exit18.thread30.i
  %.off = add i32 %i.n, 7
  %i.y = icmp ult i32 %.off, 15                   ; 2 uses
  br i1 %i.y, label %stbi__mad4sizes_valid.exit, label %stbi__mul2sizes_valid.exit21.i

stbi__mul2sizes_valid.exit21.i:                   ; preds = %bb.k
  %i.z = udiv i32 2147483647, %i.o
  %.not39.i = icmp sgt i32 %i.w, %i.z
  br i1 %.not39.i, label %bb.l, label %stbi__mad4sizes_valid.exit

bb.l:                                             ; preds = %stbi__mul2sizes_valid.exit21.i, %stbi__mul2sizes_valid.exit18.i, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit.thread25.i, %bb.h, %stbi__mul2sizes_valid.exit18.thread30.i
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.aa, align 8, !tbaa !39
  br label %bb.t

stbi__mad4sizes_valid.exit:                       ; preds = %bb.k, %stbi__mul2sizes_valid.exit21.i
  br i1 %i.q, label %stbi__mul2sizes_valid.exit.thread25.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %stbi__mad4sizes_valid.exit
  %i.ab = udiv i32 2147483647, %i.m
  %.not38.i.i = icmp sgt i32 %.pre, %i.ab
  br i1 %.not38.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread25.i.i

stbi__mul2sizes_valid.exit.thread25.i.i:          ; preds = %stbi__mad4sizes_valid.exit, %stbi__mul2sizes_valid.exit.i.i
  br i1 %i.u, label %stbi__mul2sizes_valid.exit18.thread30.i.i, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %stbi__mul2sizes_valid.exit.thread25.i.i
  %i.ac = udiv i32 2147483647, %i.l
  %.not.i.i = icmp sgt i32 %i.s, %i.ac
  br i1 %.not.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30.i.i

stbi__mul2sizes_valid.exit18.thread30.i.i:        ; preds = %stbi__mul2sizes_valid.exit.thread25.i.i, %stbi__mul2sizes_valid.exit18.i.i
  br i1 %i.y, label %stbi__malloc_mad4.exit, label %stbi__mul2sizes_valid.exit21.i.i

stbi__mul2sizes_valid.exit21.i.i:                 ; preds = %stbi__mul2sizes_valid.exit18.thread30.i.i
  %i.ad = udiv i32 2147483647, %i.o
  %.not39.i.i = icmp sgt i32 %i.w, %i.ad
  br i1 %.not39.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %stbi__mul2sizes_valid.exit18.thread30.i.i, %stbi__mul2sizes_valid.exit21.i.i
  %i.ae = mul i32 %i.o, %i.w                      ; 3 uses
  %6 = sext i32 %i.ae to i64                      ; 3 uses
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef %6) #38 ; 9 uses
  %.not55 = icmp eq ptr %i.af, null
  br i1 %.not55, label %stbi__malloc_mad4.exit.thread, label %bb.m

stbi__malloc_mad4.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %stbi__mul2sizes_valid.exit21.i.i, %stbi__malloc_mad4.exit
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.ag, align 8, !tbaa !39
  br label %bb.t

bb.m:                                             ; preds = %stbi__malloc_mad4.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ai, null
  br i1 %.not.i59, label %..thread_crit_edge.i, label %bb.n

..thread_crit_edge.i:                             ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !31
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29 ; 3 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = icmp sgt i32 %i.ae, %i.aq
  br i1 %i.ar, label %stbi__getn.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.n, %..thread_crit_edge.i
  %i.as = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.ak, %bb.n ]
  %i.at = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.am, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %6 ; 2 uses
  %.not32.i = icmp ugt ptr %i.au, %i.as
  br i1 %.not32.i, label %stbi__getn.exit.thread, label %stbi__getn.exit.thread65

stbi__getn.exit.thread65:                         ; preds = %.thread.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.at, i64 %6, i1 false)
  store ptr %i.au, ptr %i.av, align 8, !tbaa !29
  br label %bb.o

stbi__getn.exit:                                  ; preds = %bb.n
  %sext.i = shl i64 %i.ap, 32
  %i.aw = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.am, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds i8, ptr %i.af, i64 %i.aw
  %i.ba = sub nsw i32 %i.ae, %i.aq                ; 2 uses
  %i.bb = tail call i32 %i.ai(ptr noundef %i.ay, ptr noundef nonnull %i.az, i32 noundef %i.ba) #37, !inline_history !84
  %.not69 = icmp eq i32 %i.bb, %i.ba
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !31
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !29
  br i1 %.not69, label %bb.o, label %stbi__getn.exit.thread

stbi__getn.exit.thread:                           ; preds = %.thread.i, %stbi__getn.exit
  tail call void @free(ptr noundef nonnull %i.af) #37
  %i.bd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.110, ptr %i.bd, align 8, !tbaa !39
  br label %bb.t

bb.o:                                             ; preds = %stbi__getn.exit.thread65, %stbi__getn.exit
  %.not57 = icmp eq i32 %4, 0
  br i1 %.not57, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i32, ptr %i.b, align 8, !tbaa !64  ; 3 uses
  %.not58 = icmp eq i32 %4, %i.be
  br i1 %.not58, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load i32, ptr %5, align 4, !tbaa !42
  %i.bg = icmp eq i32 %i.bf, 16
  %i.bh = load i32, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !54  ; 2 uses
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bj = tail call ptr @stbi__convert_format16(ptr noundef nonnull %i.af, i32 noundef %i.be, i32 noundef %4, i32 noundef %i.bh, i32 noundef %i.bi)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bk = tail call ptr @stbi__convert_format(ptr noundef nonnull %i.af, i32 noundef %i.be, i32 noundef %4, i32 noundef %i.bh, i32 noundef %i.bi)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.o, %bb.p, %bb.a, %stbi__getn.exit.thread, %stbi__malloc_mad4.exit.thread, %bb.l, %bb.e, %bb.c
  %.048 = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ], [ %i.af, %bb.o ], [ null, %stbi__getn.exit.thread ], [ null, %stbi__malloc_mad4.exit.thread ], [ %i.af, %bb.p ], [ %i.bj, %bb.r ], [ %i.bk, %bb.s ]
  ret ptr %.048
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__hdr_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 23 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !29
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !31
  br label %bb.c

bb.b:                                             ; preds = %stbi__get8.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %exitcond, label %stbi__hdr_test_core.exit, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre12.i, %bb.a ], [ %i.ah, %bb.b ] ; 3 uses
  %i.l = phi ptr [ %.pre.i, %bb.a ], [ %i.ai, %bb.b ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @.str.99, i64 %indvars.iv.i
  %i.n = icmp ult ptr %i.l, %i.k
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !29
  %i.p = load i8, ptr %i.l, align 1, !tbaa !37
  br label %stbi__get8.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %stbi__get8.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.t = load i32, ptr %i.g, align 4, !tbaa !35
  %i.u = tail call i32 %i.r(ptr noundef %i.s, ptr noundef nonnull %i.f, i32 noundef %i.t) #37, !inline_history !198 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !27
  %i.ac = add nsw i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !27
  %i.ad = icmp eq i32 %i.u, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = sext i32 %i.u to i64
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 %i.ae
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i

stbi__refill_buffer.exit.i.i:                     ; preds = %bb.h, %bb.g
  %i.ag = phi i8 [ 0, %bb.g ], [ %.pre.i.i, %bb.h ]
  %.sink.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.i

stbi__get8.exit.i:                                ; preds = %stbi__refill_buffer.exit.i.i, %bb.e, %bb.d
  %i.ah = phi ptr [ %i.k, %bb.d ], [ %.sink.i.i.i, %stbi__refill_buffer.exit.i.i ], [ %i.k, %bb.e ]
  %i.ai = phi ptr [ %i.o, %bb.d ], [ %i.j, %stbi__refill_buffer.exit.i.i ], [ %i.l, %bb.e ]
  %.0.i.i = phi i8 [ %i.p, %bb.d ], [ %i.ag, %stbi__refill_buffer.exit.i.i ], [ 0, %bb.e ]
  %i.aj = zext i8 %.0.i.i to i32
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !37
  %i.al = sext i8 %i.ak to i32
  %.not8.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not8.i, label %bb.b, label %bb.i

stbi__hdr_test_core.exit:                         ; preds = %bb.b
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %stbi__hdr_test_core.exit20

bb.i:                                             ; preds = %stbi__get8.exit.i
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !28  ; 6 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 15 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !31
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.at, label %bb.au

bb.j:                                             ; preds = %stbi__get8.exit.i13
  %i.as = icmp ult ptr %i.gt, %i.gs
  br i1 %i.as, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.c, align 8, !tbaa !26
  %.not.i.i9.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i9.1, label %stbi__hdr_test_core.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !35
  %i.ax = tail call i32 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.f, i32 noundef %i.aw) #37, !inline_history !198 ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !28  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  %i.be = load i32, ptr %i.i, align 8, !tbaa !27
  %i.bf = add nsw i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.i, align 8, !tbaa !27
  %i.bg = icmp eq i32 %i.ax, 0
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = sext i32 %i.ax to i64
  %i.bi = getelementptr inbounds i8, ptr %i.f, i64 %i.bh
  %.pre.i.i10.1 = load i8, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11.1

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %i.c, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i.i11.1

stbi__refill_buffer.exit.i.i11.1:                 ; preds = %bb.n, %bb.m
  %i.bj = phi i8 [ 0, %bb.n ], [ %.pre.i.i10.1, %bb.m ]
  %.sink.i.i.i12.1 = phi ptr [ %i.j, %bb.n ], [ %i.bi, %bb.m ] ; 2 uses
  store ptr %.sink.i.i.i12.1, ptr %i.b, align 8, !tbaa !31
  store ptr %i.j, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit.i13.1

bb.o:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !29
  %i.bl = load i8, ptr %i.gt, align 1, !tbaa !37
end_hunk_2
begin_hunk_3_@stbi__hdr_load:bb.a
  %exitcond.not = icmp eq i32 %i.gy, %i.er
  br i1 %exitcond.not, label %.loopexit.loopexit227, label %.preheader179, !llvm.loop !203

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph211
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph211.preheader
  %indvars.iv256.epil.init = phi i64 [ %i.fq, %.lr.ph211.preheader ], [ %indvars.iv.next257.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph211.epil

.lr.ph211.epil:                                   ; preds = %.lr.ph211.epil, %.lr.ph211.epil.preheader
  %indvars.iv256.epil = phi i64 [ %indvars.iv256.epil.init, %.lr.ph211.epil.preheader ], [ %indvars.iv.next257.epil, %.lr.ph211.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph211.epil.preheader ], [ %epil.iter.next, %.lr.ph211.epil ]
  %indvars.iv.next257.epil = add nsw i64 %indvars.iv256.epil, 1 ; 2 uses
  %i.gz = shl nsw i64 %indvars.iv256.epil, 2
  %gep323.epil = getelementptr i8, ptr %invariant.gep322, i64 %i.gz
  store i8 %.0.i158, ptr %gep323.epil, align 1, !tbaa !37
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph211.epil, !llvm.loop !204

.loopexit.loopexit:                               ; preds = %.lr.ph211.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next257.lcssa = phi i64 [ %indvars.iv.next257.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next257.epil, %.lr.ph211.epil ]
  %i.ha = trunc nsw i64 %indvars.iv.next257.lcssa to i32
  br label %.loopexit

.loopexit.loopexit227:                            ; preds = %stbi__get8.exit165
  %i.hb = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit227, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %i.ha, %.loopexit.loopexit ], [ %.2121213, %.preheader ], [ %i.hb, %.loopexit.loopexit227 ] ; 2 uses
  %i.hc = sub nsw i32 %i.bm, %.5                  ; 2 uses
  %i.hd = icmp slt i32 %i.hc, 1
  br i1 %i.hd, label %..critedge_crit_edge, label %bb.ac, !llvm.loop !205

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next261, 4
  br i1 %exitcond263.not, label %.lr.ph217, label %.preheader181, !llvm.loop !206

bb.av:                                            ; preds = %.lr.ph217, %stbi__hdr_convert.exit
  %indvars.iv264 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next265, %stbi__hdr_convert.exit ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv264, %i.dr
  %i.hf = mul nsw i64 %i.he, %i.cl
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hf ; 11 uses
  %i.hh = shl nuw nsw i64 %indvars.iv264, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.hh ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !37  ; 2 uses
  %.not.i166 = icmp eq i8 %i.hk, 0
  br i1 %.not.i166, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -136
  %i.hn = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.hm) #37
  %i.ho = fptrunc double %i.hn to float           ; 4 uses
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !37  ; 2 uses
  br i1 %i.ck, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hq = zext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !37
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !37
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hu, %i.hx
  %i.hz = uitofp nneg i32 %i.hy to float
  %i.ia = fmul float %i.ho, %i.hz
  %i.ib = fdiv float %i.ia, 3.000000e+00
  store float %i.ib, ptr %i.hg, align 4, !tbaa !86
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ic = uitofp i8 %i.hp to float
  %i.id = fmul float %i.ho, %i.ic
  store float %i.id, ptr %i.hg, align 4, !tbaa !86
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !37
  %i.ig = uitofp i8 %i.if to float
  %i.ih = fmul float %i.ho, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float %i.ih, ptr %i.ii, align 4, !tbaa !86
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !37
  %i.il = uitofp i8 %i.ik to float
  %i.im = fmul float %i.ho, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !86
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  switch i32 %4, label %stbi__hdr_convert.exit [
    i32 2, label %bb.ba
    i32 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.io, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

bb.bb:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store float 1.000000e+00, ptr %i.ip, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

bb.bc:                                            ; preds = %bb.av
  switch i32 %spec.store.select, label %stbi__hdr_convert.exit [
    i32 4, label %bb.bd
    i32 3, label %bb.be
    i32 2, label %bb.bf
    i32 1, label %bb.bg
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store float 1.000000e+00, ptr %i.iq, align 4, !tbaa !86
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float 0.000000e+00, ptr %i.ir, align 4, !tbaa !86
  store <2 x float> zeroinitializer, ptr %i.hg, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

bb.bf:                                            ; preds = %bb.bc
  %i.is = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.is, align 4, !tbaa !86
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !86
  br label %stbi__hdr_convert.exit

stbi__hdr_convert.exit:                           ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.be, %bb.bg
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond267.not, label %._crit_edge218, label %bb.av, !llvm.loop !207

._crit_edge218:                                   ; preds = %stbi__hdr_convert.exit
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %._crit_edge222, label %bb.x, !llvm.loop !208

._crit_edge222:                                   ; preds = %._crit_edge218
  call void @free(ptr noundef nonnull %.1124) #37
  br label %._crit_edge222.thread

._crit_edge222.thread:                            ; preds = %.preheader183, %bb.ao, %.thread, %bb.t, %._crit_edge222, %stbi__malloc_mad2.exit.thread, %bb.aa, %bb.r, %bb.p, %bb.l, %bb.j, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3130 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.j ], [ null, %bb.l ], [ null, %._crit_edge.thread ], [ null, %bb.aa ], [ %i.bu, %bb.t ], [ null, %stbi__malloc_mad2.exit.thread ], [ null, %bb.r ], [ null, %bb.p ], [ null, %bb.ao ], [ %i.bu, %._crit_edge222 ], [ null, %.thread ], [ %i.bu, %.preheader183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret ptr %.3130
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbi__hdr_to_ldr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not24.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %4 = sext i32 %i.h to i64
  %i.i = tail call noalias noundef ptr @malloc(i64 noundef %4) #38 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %stbi__malloc_mad3.exit.thread, label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !39
  br label %bb.i

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.l = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.l                     ; 4 uses
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.n = icmp sgt i32 %.046, 0
  %i.o = load float, ptr @stbi__h2l_scale_i, align 4
  %i.p = load float, ptr @stbi__h2l_gamma_i, align 4
  %i.q = fpext float %i.p to double
  br i1 %i.n, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %5 = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64
  %i.r = icmp slt i32 %.046, %3
  %6 = zext nneg i32 %.046 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.h ] ; 2 uses
  %i.s = mul nuw nsw i64 %indvars.iv63, %5        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.t = add nsw i64 %indvars.iv58, %i.s          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !86
  %i.w = fmul float %i.v, %i.o
  %i.x = fpext float %i.w to double
  %i.y = tail call double @pow(double noundef %i.x, double noundef %i.q) #37
  %i.z = fptrunc double %i.y to float
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  %spec.store.select.us = select i1 %i.ab, float 0.000000e+00, float %i.aa ; 2 uses
  %i.ac = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.ac, float 2.550000e+02, float %spec.store.select.us
  %i.ad = fptosi float %spec.store.select2.us to i32
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds i8, ptr %i.i, i64 %i.t
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !37
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.f, !llvm.loop !209

bb.g:                                             ; preds = %._crit_edge.us
  %i.ag = add nsw i64 %i.s, %6                    ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !86
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %spec.store.select1.us = select i1 %i.ak, float 0.000000e+00, float %i.aj ; 2 uses
  %i.al = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.al, float 2.550000e+02, float %spec.store.select1.us
  %i.am = fptosi float %spec.store.select3.us to i32
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 %i.ag
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !210

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.r, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.preheader.preheader, label %._crit_edge55

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.aq = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader75

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !86
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.at = fcmp olt <4 x float> %i.as, zeroinitializer
  %i.au = select <4 x i1> %i.at, <4 x float> zeroinitializer, <4 x float> %i.as ; 2 uses
  %i.av = fcmp ogt <4 x float> %i.au, splat (float 2.550000e+02)
  %i.aw = select <4 x i1> %i.av, <4 x float> splat (float 2.550000e+02), <4 x float> %i.au
  %i.ax = fptosi <4 x float> %i.aw to <4 x i32>
  %i.ay = trunc <4 x i32> %i.ax to <4 x i8>
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 %index
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %.preheader.preheader75

.preheader.preheader75:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader75, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader75 ] ; 2 uses
  %i.bb = mul nuw nsw i64 %indvars.iv, %i.aq      ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !86
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.bf = fcmp olt float %i.be, 0.000000e+00
  %spec.store.select1 = select i1 %i.bf, float 0.000000e+00, float %i.be ; 2 uses
  %i.bg = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.bg, float 2.550000e+02, float %spec.store.select1
  %i.bh = fptosi float %spec.store.select3 to i32
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bb
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.preheader, !llvm.loop !212

._crit_edge55:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge55, %stbi__malloc_mad3.exit.thread
  %.0 = phi ptr [ null, %stbi__malloc_mad3.exit.thread ], [ %i.i, %._crit_edge55 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__tga_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 21 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %stbi__get8.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = tail call i32 %i.j(ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.o) #37, !inline_history !65 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 8, !tbaa !27
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.m, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.p to i64
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.ac
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit.sink.split

stbi__get8.exit.sink.split:                       ; preds = %stbi__refill_buffer.exit.i, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.ae, %stbi__refill_buffer.exit.i ] ; 2 uses
  %.ph = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %stbi__get8.exit.sink.split, %bb.c
  %i.af = phi ptr [ %i.d, %bb.c ], [ %.ph, %stbi__get8.exit.sink.split ] ; 3 uses
  %i.ag = phi ptr [ %i.b, %bb.c ], [ %.sink, %stbi__get8.exit.sink.split ] ; 4 uses
  %i.ah = icmp ult ptr %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !29
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !37
  br label %stbi__get8.exit65

bb.h:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %.not.i60 = icmp eq i32 %i.al, 0
  br i1 %.not.i60, label %stbi__get8.exit65.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.at = tail call i32 %i.an(ptr noundef %i.ap, ptr noundef nonnull %i.aq, i32 noundef %i.as) #37, !inline_history !65 ; 2 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bd = add nsw i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !27
  %i.be = icmp eq i32 %i.at, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.aq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i62

bb.k:                                             ; preds = %bb.i
  %i.bg = sext i32 %i.at to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aq, i64 %i.bg
  %.pre.i61 = load i8, ptr %i.aq, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i62

stbi__refill_buffer.exit.i62:                     ; preds = %bb.k, %bb.j
  %i.bi = phi i8 [ 0, %bb.j ], [ %.pre.i61, %bb.k ]
end_hunk_3
begin_hunk_4_@stbi__load_gif_main:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48
  call void @free(ptr noundef %i.cb) #37
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49
  call void @free(ptr noundef %i.cd) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50
  call void @free(ptr noundef %i.cf) #37
  %i.cg = and i32 %6, -5
  %or.cond.not = icmp eq i32 %i.cg, 0
  br i1 %or.cond.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ch = load i32, ptr %7, align 8, !tbaa !46
  %i.ci = mul nsw i32 %i.ch, %.075.lcssa
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !47
  %i.cl = call ptr @stbi__convert_format(ptr noundef %.072.lcssa, i32 noundef 4, i32 noundef %6, i32 noundef %i.ci, i32 noundef %i.ck)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.4 = phi ptr [ %i.cl, %bb.x ], [ %.072.lcssa, %._crit_edge ]
  store i32 %.075.lcssa, ptr %4, align 4, !tbaa !40
  br label %.critedge

.critedge:                                        ; preds = %.thread, %stbi__load_gif_main_outofmem.exit, %bb.y, %stbi__load_gif_main_outofmem.exit109, %stbi__load_gif_main_outofmem.exit105
  %.6 = phi ptr [ %.4, %bb.y ], [ null, %stbi__load_gif_main_outofmem.exit105 ], [ null, %stbi__load_gif_main_outofmem.exit109 ], [ null, %stbi__load_gif_main_outofmem.exit ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.91, ptr %i.cm, align 8, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.7 = phi ptr [ %.6, %.critedge ], [ null, %bb.z ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi__loadf_main(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call i32 @stbi__hdr_test(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @stbi__hdr_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nonnull poison) ; 7 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %stbi__float_postprocess.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %.not9.i = icmp eq i32 %i.g, 0
  br i1 %.not9.i, label %stbi__float_postprocess.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !40
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %stbi__float_postprocess.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not11.i = icmp eq i32 %4, 0
  br i1 %.not11.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %3, align 4, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi i32 [ %i.i, %bb.g ], [ %4, %bb.f ]
  %i.k = load i32, ptr %1, align 4, !tbaa !40
  %i.l = load i32, ptr %2, align 4, !tbaa !40     ; 2 uses
  %i.m = shl i32 %i.j, 2
  %i.n = sext i32 %i.k to i64
  %i.o = sext i32 %i.m to i64
  %i.p = mul nsw i64 %i.o, %i.n                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = ashr i32 %i.l, 1                         ; 2 uses
  %i.r = icmp slt i32 %i.q, 1
  %.not32.i.i = icmp eq i64 %i.p, 0
  %or.cond.i.i = select i1 %i.r, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.s = mul i64 %indvars.iv.i.i, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = trunc i64 %indvars.iv.i.i to i32
  %i.v = xor i32 %i.u, -1
  %i.w = add i32 %i.l, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.p, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.ad, %bb.i ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.ac, %bb.i ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.ab, %bb.i ] ; 3 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.aa, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.aa
  %i.ad = sub nuw i64 %.02935.i.i, %i.aa          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.i.i, !llvm.loop !3

stbi__vertical_flip.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %stbi__float_postprocess.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = tail call ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %1, align 4, !tbaa !40
  %i.ag = load i32, ptr %2, align 4, !tbaa !40
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %3, align 4, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = phi i32 [ %i.ah, %bb.l ], [ %4, %bb.k ]
  %i.aj = tail call ptr @stbi__ldr_to_hdr(ptr noundef nonnull %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ai)
  br label %stbi__float_postprocess.exit

bb.n:                                             ; preds = %bb.j
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str, ptr %i.ak, align 8, !tbaa !39
  br label %stbi__float_postprocess.exit

stbi__float_postprocess.exit:                     ; preds = %bb.b, %bb.d, %bb.e, %stbi__vertical_flip.exit.i, %bb.n, %bb.m
  %.0 = phi ptr [ null, %bb.n ], [ %i.aj, %bb.m ], [ %i.c, %stbi__vertical_flip.exit.i ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @stbi__ldr_to_hdr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread25.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not38.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not38.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread25.i.i

stbi__mul2sizes_valid.exit.thread25.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 8 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread25.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit18.thread30.i.i, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit18.thread30.i.i

stbi__mul2sizes_valid.exit18.thread30.i.i:        ; preds = %stbi__mul2sizes_valid.exit18.i.i, %bb.d
  %i.h = mul nuw nsw i32 %i.d, %3                 ; 2 uses
  %or.cond = icmp ugt i32 %i.h, 536870911
  br i1 %or.cond, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %stbi__mul2sizes_valid.exit18.thread30.i.i
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = zext nneg i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #38 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad4.exit.thread, label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.thread25.i.i, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %stbi__mul2sizes_valid.exit18.thread30.i.i, %stbi__malloc_mad4.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.m, align 8, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %stbi__malloc_mad4.exit
  %i.n = and i32 %3, 1
  %.not47 = icmp eq i32 %i.n, 0                   ; 2 uses
  %i.o = sext i1 %.not47 to i32
  %.0 = add i32 %3, %i.o                          ; 5 uses
  %i.p = icmp sgt i32 %i.d, 0
  br i1 %i.p, label %.preheader49.lr.ph, label %.loopexit

.preheader49.lr.ph:                               ; preds = %bb.e
  %i.q = icmp sgt i32 %.0, 0
  %i.r = load float, ptr @stbi__l2h_gamma, align 4
  %i.s = fpext float %i.r to double               ; 3 uses
  %i.t = load float, ptr @stbi__l2h_scale, align 4
  %i.u = fpext float %i.t to double               ; 3 uses
  br i1 %i.q, label %.preheader49.preheader, label %._crit_edge52.split

.preheader49.preheader:                           ; preds = %.preheader49.lr.ph
  %4 = sext i32 %3 to i64
  %wide.trip.count59 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.0 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %.0, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod73 = trunc i32 %.0 to i1
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %.preheader49.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %i.w = mul nuw nsw i64 %indvars.iv56, %4        ; 3 uses
  br i1 %i.v, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49, %.preheader49.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader49.new ], [ 0, %.preheader49 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader49.new ], [ 0, %.preheader49 ]
  %i.x = add nsw i64 %indvars.iv, %i.w            ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %i.aa = uitofp i8 %i.z to float
  %i.ab = fdiv float %i.aa, 2.550000e+02
  %i.ac = fpext float %i.ab to double
  %i.ad = tail call double @pow(double noundef %i.ac, double noundef %i.s) #37
  %i.ae = fmul double %i.ad, %i.u
  %i.af = fptrunc double %i.ae to float
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.x
  store float %i.af, ptr %i.ag, align 4, !tbaa !86
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ah = add nsw i64 %indvars.iv.next, %i.w      ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37
  %i.ak = uitofp i8 %i.aj to float
  %i.al = fdiv float %i.ak, 2.550000e+02
  %i.am = fpext float %i.al to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef %i.s) #37
  %i.ao = fmul double %i.an, %i.u
  %i.ap = fptrunc double %i.ao to float
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ah
  store float %i.ap, ptr %i.aq, align 4, !tbaa !86
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader49.new, !llvm.loop !244

._crit_edge.unr-lcssa:                            ; preds = %.preheader49.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader49
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.ar = add nsw i64 %indvars.iv.epil.init, %i.w ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = uitofp i8 %i.at to float
  %i.av = fdiv float %i.au, 2.550000e+02
  %i.aw = fpext float %i.av to double
  %i.ax = tail call double @pow(double noundef %i.aw, double noundef %i.s) #37
  %i.ay = fmul double %i.ax, %i.u
  %i.az = fptrunc double %i.ay to float
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ar
  store float %i.az, ptr %i.ba, align 4, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge52.split, label %.preheader49, !llvm.loop !245

._crit_edge52.split:                              ; preds = %._crit_edge, %.preheader49.lr.ph
  br i1 %.not47, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %._crit_edge52.split
  %5 = sext i32 %3 to i64                         ; 3 uses
  %i.bb = sext i32 %.0 to i64                     ; 3 uses
  %wide.trip.count64 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter74 = and i64 %wide.trip.count64, 1
  %i.bc = icmp eq i32 %i.d, 1
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter77 = and i64 %wide.trip.count64, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next62.1, %.lr.ph ] ; 3 uses
  %niter78 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter78.next.1, %.lr.ph ]
  %i.bd = mul nuw nsw i64 %indvars.iv61, %5
  %i.be = add nsw i64 %i.bd, %i.bb                ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bh = uitofp i8 %i.bg to float
  %i.bi = fdiv float %i.bh, 2.550000e+02
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.be
  store float %i.bi, ptr %i.bj, align 4, !tbaa !86
  %indvars.iv.next62 = or disjoint i64 %indvars.iv61, 1
  %i.bk = mul nuw nsw i64 %indvars.iv.next62, %5
  %i.bl = add nsw i64 %i.bk, %i.bb                ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37
  %i.bo = uitofp i8 %i.bn to float
  %i.bp = fdiv float %i.bo, 2.550000e+02
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bl
  store float %i.bp, ptr %i.bq, align 4, !tbaa !86
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !246

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv61.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next62.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.br = mul nuw nsw i64 %indvars.iv61.epil.init, %5
  %i.bs = add nsw i64 %i.br, %i.bb                ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = uitofp i8 %i.bu to float
  %i.bw = fdiv float %i.bv, 2.550000e+02
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bs
  store float %i.bw, ptr %i.bx, align 4, !tbaa !86
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %._crit_edge52.split
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit, %stbi__malloc_mad4.exit.thread
  %.042 = phi ptr [ null, %stbi__malloc_mad4.exit.thread ], [ %i.k, %.loopexit ], [ null, %bb.a ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !29
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  %i.j = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !38 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !27
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !27
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !30
  %i.y = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !39
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !33
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128) #37, !inline_history !247 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !27
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !27
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !37
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

end_hunk_4
begin_hunk_5_@stbi__get32be:bb.a
  %i.d = or disjoint i32 %i.b, %i.c
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 65536) i32 @stbi__get16le(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !29
  %i.g = load i8, ptr %i.b, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #37, !inline_history !65 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !27
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %bb.c, %stbi__refill_buffer.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !29
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !37
  br label %stbi__get8.exit7

bb.h:                                             ; preds = %stbi__get8.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %stbi__get8.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35
  %i.av = tail call i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au) #37, !inline_history !65 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !27
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !27
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i4

stbi__refill_buffer.exit.i4:                      ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !29
  br label %stbi__get8.exit7

stbi__get8.exit7:                                 ; preds = %bb.g, %bb.h, %stbi__refill_buffer.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %stbi__refill_buffer.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = zext i8 %.0.i6 to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = or disjoint i32 %i.bo, %i.bm
  ret i32 %i.bp
}

; Function Attrs: nounwind uwtable
define i32 @stbi__get32le(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbi__get16le(ptr noundef %0)
  %i.b = tail call i32 @stbi__get16le(ptr noundef %0)
  %i.c = shl nuw i32 %i.b, 16
  %i.d = or disjoint i32 %i.c, %i.a
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__compute_y(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %0, 77
  %i.b = mul nsw i32 %1, 150
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %2, 29
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = lshr i32 %i.e, 8
  %i.g = trunc i32 %i.f to i8
  ret i8 %i.g
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbi__convert_format(ptr noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %3, %2
  %or.cond.not.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.d = udiv i32 2147483647, %3
  %.not24.i.i = icmp sgt i32 %2, %i.d
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.d
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp sgt i32 %i.e, %i.h
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %5 = sext i32 %i.i to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %5) #38 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %stbi__malloc_mad3.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad3.exit
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.m = shl nsw i32 %1, 3
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.o = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.n, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.p = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.p, 4294967288            ; 5 uses
  %i.q = trunc nuw i64 %n.vec506 to i32
  %i.r = sub i32 %.11167198, %i.q
  %i.s = shl nuw nsw i64 %n.vec506, 1
  %i.t = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.p
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.u = and i64 %i.p, 15                         ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 16, i64 %i.u         ; 2 uses
  %n.vec455 = sub nsw i64 %i.p, %i.w              ; 5 uses
  %i.x = trunc i64 %n.vec455 to i32
  %i.y = sub i32 %.11167198, %i.x
  %i.z = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.w, 9
  %i.aa = and i64 %i.p, 7                         ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 8, i64 %i.aa
  %n.vec486 = sub nsw i64 %i.p, %i.ac             ; 4 uses
  %i.ad = trunc i64 %n.vec486 to i32
  %i.ae = sub i32 %.11167198, %i.ad
  %i.af = shl nsw i64 %n.vec486, 2
  %min.iters.check430 = icmp ult i32 %3, 8
  %n.vec432 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ag = trunc nuw i64 %n.vec432 to i32
  %i.ah = sub i32 %.11167198, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec432, 1
  %i.aj = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.p
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.ak = and i64 %i.p, 8
  %n.vec381 = and i64 %i.p, 4294967280            ; 6 uses
  %i.al = trunc nuw i64 %n.vec381 to i32
  %i.am = sub i32 %.11167198, %i.al
  %i.an = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.p
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.ak, 0
  %n.vec412 = and i64 %i.p, 4294967288            ; 5 uses
  %i.ao = trunc nuw i64 %n.vec412 to i32
  %i.ap = sub i32 %.11167198, %i.ao
  %i.aq = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.p
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add i32 %3, -2
  %i.ar = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add i32 %3, -2
  %i.as = icmp eq i32 %.11167198, 0
  %xtraiter540 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  %i.at = icmp ult i32 %.11167198, 3
  %min.iters.check326 = icmp ult i32 %3, 9
  %min.iters.check328 = icmp ult i32 %3, 17
  %i.au = and i64 %i.p, 15                        ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = select i1 %i.av, i64 16, i64 %i.au      ; 2 uses
  %n.vec330 = sub nsw i64 %i.p, %i.aw             ; 5 uses
  %i.ax = trunc i64 %n.vec330 to i32
  %i.ay = sub i32 %.11167198, %i.ax
  %i.az = shl nsw i64 %n.vec330, 1
  %min.epilog.iters.check358 = icmp samesign ult i64 %i.aw, 9
  %i.ba = and i64 %i.p, 7                         ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 8, i64 %i.ba
  %n.vec360 = sub nsw i64 %i.p, %i.bc             ; 4 uses
  %i.bd = trunc i64 %n.vec360 to i32
  %i.be = sub i32 %.11167198, %i.bd
  %i.bf = shl nsw i64 %n.vec360, 1
  %xtraiter542 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  %i.bg = icmp ult i32 %.11167198, 3
  %xtraiter545 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.bh = icmp ult i32 %.11167198, 3
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check308 = icmp ult i32 %3, 16
  %i.bi = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4294967280               ; 6 uses
  %i.bj = trunc nuw i64 %n.vec to i32
  %i.bk = sub i32 %.11167198, %i.bj
  %i.bl = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec315 = and i64 %i.p, 4294967292            ; 5 uses
  %i.bm = trunc nuw i64 %n.vec315 to i32
  %i.bn = sub i32 %.11167198, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.p
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add i32 %3, -2
  %i.bp = icmp eq i32 %.11167198, 0
  br label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef %0) #37
  %i.bq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bq, align 8, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv to i32
  %i.bs = mul i32 %3, %i.br                       ; 2 uses
  %i.bt = mul i32 %i.bs, %1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 126 uses
  %i.bw = mul i32 %i.bs, %2
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bx ; 50 uses
  switch i32 %i.n, label %.preheader195 [
    i32 10, label %.preheader
    i32 11, label %.preheader175
    i32 12, label %.preheader177
    i32 17, label %.preheader179
    i32 19, label %.preheader181
    i32 20, label %.preheader183
    i32 28, label %.preheader185
    i32 25, label %.preheader187
    i32 26, label %.preheader189
    i32 33, label %.preheader191
    i32 34, label %.preheader193
  ]

.preheader195:                                    ; preds = %bb.e
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader195
  br i1 %lcmp.mod549.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !37
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.by, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bv, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  br i1 %i.bp, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.o, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.s
  %i.cj = getelementptr i8, ptr %i.bv, i64 %i.t
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
  %index508 = phi i64 [ 0, %vector.ph505 ], [ %index.next519, %vector.body507 ] ; 3 uses
  %i.ck = shl i64 %index508, 1
  %next.gep509 = getelementptr i8, ptr %i.by, i64 %i.ck
  %i.cl = shl i64 %index508, 2                    ; 8 uses
  %next.gep510 = getelementptr i8, ptr %i.bv, i64 %i.cl ; 4 uses
  %i.cm = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep511 = getelementptr i8, ptr %i.cm, i64 4
  %i.cn = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep512 = getelementptr i8, ptr %i.cn, i64 8
  %i.co = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep513 = getelementptr i8, ptr %i.co, i64 12
  %i.cp = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep514 = getelementptr i8, ptr %i.cp, i64 16
  %i.cq = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep515 = getelementptr i8, ptr %i.cq, i64 20
  %i.cr = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep516 = getelementptr i8, ptr %i.cr, i64 24
  %i.cs = getelementptr i8, ptr %i.bv, i64 %i.cl  ; 4 uses
  %next.gep517 = getelementptr i8, ptr %i.cs, i64 28
  %i.ct = load i8, ptr %next.gep510, align 1, !tbaa !37
  %i.cu = load i8, ptr %next.gep511, align 1, !tbaa !37
  %i.cv = load i8, ptr %next.gep512, align 1, !tbaa !37
  %i.cw = load i8, ptr %next.gep513, align 1, !tbaa !37
  %i.cx = load i8, ptr %next.gep514, align 1, !tbaa !37
  %i.cy = load i8, ptr %next.gep515, align 1, !tbaa !37
  %i.cz = load i8, ptr %next.gep516, align 1, !tbaa !37
  %i.da = load i8, ptr %next.gep517, align 1, !tbaa !37
  %i.db = insertelement <8 x i8> poison, i8 %i.ct, i64 0
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 1
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 2
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 3
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 4
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 5
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 6
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 7
  %i.dj = zext <8 x i8> %i.di to <8 x i16>
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep510, i64 1
  %i.dl = getelementptr i8, ptr %i.cm, i64 5
  %i.dm = getelementptr i8, ptr %i.cn, i64 9
  %i.dn = getelementptr i8, ptr %i.co, i64 13
  %i.do = getelementptr i8, ptr %i.cp, i64 17
  %i.dp = getelementptr i8, ptr %i.cq, i64 21
  %i.dq = getelementptr i8, ptr %i.cr, i64 25
  %i.dr = getelementptr i8, ptr %i.cs, i64 29
  %i.ds = load i8, ptr %i.dk, align 1, !tbaa !37
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !37
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !37
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !37
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !37
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.dy = load i8, ptr %i.dq, align 1, !tbaa !37
  %i.dz = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.ea = insertelement <8 x i8> poison, i8 %i.ds, i64 0
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 1
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 2
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 3
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 4
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 5
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 6
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 7
  %i.ei = zext <8 x i8> %i.eh to <8 x i16>
  %i.ej = getelementptr inbounds nuw i8, ptr %next.gep510, i64 2
  %i.ek = getelementptr i8, ptr %i.cm, i64 6
  %i.el = getelementptr i8, ptr %i.cn, i64 10
  %i.em = getelementptr i8, ptr %i.co, i64 14
  %i.en = getelementptr i8, ptr %i.cp, i64 18
  %i.eo = getelementptr i8, ptr %i.cq, i64 22
  %i.ep = getelementptr i8, ptr %i.cr, i64 26
  %i.eq = getelementptr i8, ptr %i.cs, i64 30
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !37
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !37
  %i.et = load i8, ptr %i.el, align 1, !tbaa !37
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !37
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !37
  %i.ew = load i8, ptr %i.eo, align 1, !tbaa !37
  %i.ex = load i8, ptr %i.ep, align 1, !tbaa !37
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !37
  %i.ez = insertelement <8 x i8> poison, i8 %i.er, i64 0
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 1
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 2
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 3
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 4
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 5
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 6
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 7
  %i.fh = zext <8 x i8> %i.fg to <8 x i16>
  %i.fi = mul nuw nsw <8 x i16> %i.dj, splat (i16 77)
  %i.fj = mul nuw <8 x i16> %i.ei, splat (i16 150)
  %i.fk = add nuw <8 x i16> %i.fj, %i.fi
  %i.fl = mul nuw nsw <8 x i16> %i.fh, splat (i16 29)
  %i.fm = add nuw <8 x i16> %i.fk, %i.fl
  %i.fn = lshr <8 x i16> %i.fm, splat (i16 8)
  %i.fo = trunc nuw <8 x i16> %i.fn to <8 x i8>
  %i.fp = getelementptr inbounds nuw i8, ptr %next.gep510, i64 3
  %i.fq = getelementptr i8, ptr %i.cm, i64 7
  %i.fr = getelementptr i8, ptr %i.cn, i64 11
  %i.fs = getelementptr i8, ptr %i.co, i64 15
  %i.ft = getelementptr i8, ptr %i.cp, i64 19
  %i.fu = getelementptr i8, ptr %i.cq, i64 23
  %i.fv = getelementptr i8, ptr %i.cr, i64 27
  %i.fw = getelementptr i8, ptr %i.cs, i64 31
  %i.fx = load i8, ptr %i.fp, align 1, !tbaa !37
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !37
  %i.fz = load i8, ptr %i.fr, align 1, !tbaa !37
  %i.ga = load i8, ptr %i.fs, align 1, !tbaa !37
  %i.gb = load i8, ptr %i.ft, align 1, !tbaa !37
  %i.gc = load i8, ptr %i.fu, align 1, !tbaa !37
  %i.gd = load i8, ptr %i.fv, align 1, !tbaa !37
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !37
  %i.gf = insertelement <8 x i8> poison, i8 %i.fx, i64 0
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 1
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 2
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 3
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 4
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 5
  %i.gl = insertelement <8 x i8> %i.gk, i8 %i.gd, i64 6
  %i.gm = insertelement <8 x i8> %i.gl, i8 %i.ge, i64 7
  %interleaved.vec518 = shufflevector <8 x i8> %i.fo, <8 x i8> %i.gm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec518, ptr %next.gep509, align 1, !tbaa !37
  %index.next519 = add nuw i64 %index508, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next519, %n.vec506
  br i1 %i.gn, label %middle.block520, label %vector.body507, !llvm.loop !249

middle.block520:                                  ; preds = %vector.body507
  br i1 %cmp.n521, label %.loopexit, label %.lr.ph206.preheader536

.lr.ph206.preheader536:                           ; preds = %.lr.ph206.preheader, %middle.block520
  %.10166205.ph = phi i32 [ %.11167198, %.lr.ph206.preheader ], [ %i.r, %middle.block520 ]
end_hunk_5
begin_hunk_6_@load_jpeg_image:bb.a
  tail call void @free(ptr noundef nonnull %i.aq) #37
  store ptr null, ptr %i.ap, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store ptr null, ptr %i.ar, align 8, !tbaa !120
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !126 ; 2 uses
  %.not29.i.i298 = icmp eq ptr %i.at, null
  br i1 %.not29.i.i298, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.at) #37
  store ptr null, ptr %i.as, align 8, !tbaa !126
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next.i.i299 = add nuw nsw i64 %indvars.iv.i.i295, 1 ; 2 uses
  %exitcond.not.i.i300 = icmp eq i64 %indvars.iv.next.i.i299, %wide.trip.count.i.i294
  br i1 %exitcond.not.i.i300, label %stbi__cleanup_jpeg.exit, label %bb.q, !llvm.loop !9

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.au = load i32, ptr %.pre, align 8, !tbaa !55 ; 6 uses
  %i.av = add i32 %i.au, 3
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 18056
  %i.az = add i32 %i.au, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %wide.trip.count = zext nneg i32 %. to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread333
  %indvars.iv = phi i64 [ 0, %bb.x ], [ %indvars.iv.next, %.thread333 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv ; 7 uses
  %i.bc = tail call noalias noundef ptr @malloc(i64 noundef %i.aw) #38 ; 2 uses
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !126
  %.not292.not = icmp eq ptr %i.bc, null
  br i1 %.not292.not, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.bf = icmp sgt i32 %i.u, 0
  br i1 %i.bf, label %.lr.ph.i.i302, label %.thread334

.thread334:                                       ; preds = %bb.z
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bg, align 8, !tbaa !39
  br label %bb.bx

.lr.ph.i.i302:                                    ; preds = %bb.z
  %wide.trip.count.i.i303 = zext nneg i32 %i.u to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i302
  %indvars.iv.i.i304 = phi i64 [ 0, %.lr.ph.i.i302 ], [ %indvars.iv.next.i.i308, %bb.ag ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv.i.i304 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !124 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i305, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.bj) #37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !125 ; 2 uses
  %.not28.i.i306 = icmp eq ptr %i.bm, null
  br i1 %.not28.i.i306, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bm) #37
  store ptr null, ptr %i.bl, align 8, !tbaa !125
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr null, ptr %i.bn, align 8, !tbaa !120
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !126 ; 2 uses
  %.not29.i.i307 = icmp eq ptr %i.bp, null
  br i1 %.not29.i.i307, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.bp) #37
  store ptr null, ptr %i.bo, align 8, !tbaa !126
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next.i.i308 = add nuw nsw i64 %indvars.iv.i.i304, 1 ; 2 uses
  %exitcond.not.i.i309 = icmp eq i64 %indvars.iv.next.i.i308, %wide.trip.count.i.i303
  br i1 %exitcond.not.i.i309, label %bb.al, label %bb.aa, !llvm.loop !9

bb.ah:                                            ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bs = load <2 x i32>, ptr %i.ay, align 8, !tbaa !40
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !40
  %i.bu = sdiv <2 x i32> %i.bs, %i.bt             ; 3 uses
  store <2 x i32> %i.bu, ptr %i.br, align 8, !tbaa !40
  %i.bv = extractelement <2 x i32> %i.bu, i64 1   ; 4 uses
  %i.bw = ashr i32 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !420
  %i.by = extractelement <2 x i32> %i.bu, i64 0   ; 3 uses
  %i.bz = add i32 %i.az, %i.by
  %i.ca = udiv i32 %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i32 %i.ca, ptr %i.cb, align 16, !tbaa !421
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 0, ptr %i.cc, align 8, !tbaa !422
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !114 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ce, ptr %i.cf, align 16, !tbaa !423
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !424
  switch i32 %i.by, label %.thread332 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %switch.selectcmp = icmp eq i32 %i.bv, 2
  %switch.select = select i1 %switch.selectcmp, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp499 = icmp eq i32 %i.bv, 1
  %switch.select500 = select i1 %switch.selectcmp499, ptr @resample_row_1, ptr %switch.select
  br label %.thread333

bb.aj:                                            ; preds = %bb.ah
  switch i32 %i.bv, label %.thread332 [
    i32 1, label %.thread333
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ch = load ptr, ptr %i.ba, align 8, !tbaa !81
  br label %.thread333

.thread332:                                       ; preds = %bb.aj, %bb.ah
  br label %.thread333

bb.al:                                            ; preds = %bb.ag
  %i.ci = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.ci, align 8, !tbaa !39
  br label %bb.bx

.thread333:                                       ; preds = %bb.aj, %bb.ai, %bb.ak, %.thread332
  %stbi__resample_row_v_2.sink = phi ptr [ %switch.select500, %bb.ai ], [ %i.ch, %bb.ak ], [ @stbi__resample_row_generic, %.thread332 ], [ @stbi__resample_row_h_2, %bb.aj ]
  store ptr %stbi__resample_row_v_2.sink, ptr %i.bb, align 16, !tbaa !425
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.am, label %bb.y, !llvm.loop !406

bb.am:                                            ; preds = %.thread333
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !54 ; 4 uses
  %i.cl = or i32 %i.au, %i.w
  %or.cond.not.i.i.i = icmp sgt i32 %i.cl, -1
  br i1 %or.cond.not.i.i.i, label %bb.an, label %stbi__malloc_mad3.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.cm = icmp eq i32 %i.au, 0
  br i1 %i.cm, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.an
  %i.cn = udiv i32 2147483647, %i.au
  %.not24.i.i = icmp sgt i32 %i.w, %i.cn
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.an
  %i.co = mul nuw nsw i32 %i.au, %i.w             ; 3 uses
  %i.cp = or i32 %i.ck, %i.co
  %or.cond.not.i10.i.i = icmp sgt i32 %i.cp, -1
  br i1 %or.cond.not.i10.i.i, label %bb.ao, label %stbi__malloc_mad3.exit.thread

bb.ao:                                            ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.cq = icmp eq i32 %i.ck, 0                    ; 2 uses
  br i1 %i.cq, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.ao
  %i.cr = udiv i32 2147483647, %i.ck
  %.not.i.i311 = icmp sgt i32 %i.co, %i.cr
  br i1 %.not.i.i311, label %stbi__malloc_mad3.exit.thread, label %stbi__mad3sizes_valid.exit.i

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.ao
  %i.cs = mul nuw nsw i32 %i.co, %i.ck            ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 2147483647
  br i1 %i.ct, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %stbi__mad3sizes_valid.exit.i
  %i.cu = add nsw i32 %i.cs, 1
  %6 = sext i32 %i.cu to i64
  %i.cv = tail call noalias noundef ptr @malloc(i64 noundef %6) #38 ; 4 uses
  %.not286 = icmp eq ptr %i.cv, null
  br i1 %.not286, label %stbi__malloc_mad3.exit.thread, label %.preheader356

.preheader356:                                    ; preds = %stbi__malloc_mad3.exit
  br i1 %i.cq, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %.preheader356
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 18508 ; 2 uses
  %i.cx = icmp eq i32 %i.w, 1                     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.cz = zext nneg i32 %i.w to i64               ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %wide.trip.count420 = zext nneg i32 %. to i64
  br label %.lr.ph.preheader

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %bb.am, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mad3sizes_valid.exit.i, %stbi__malloc_mad3.exit
  %i.dd = icmp sgt i32 %i.u, 0
  br i1 %i.dd, label %.lr.ph.i.i312, label %stbi__cleanup_jpeg.exit320

.lr.ph.i.i312:                                    ; preds = %stbi__malloc_mad3.exit.thread
  %wide.trip.count.i.i313 = zext nneg i32 %i.u to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %.lr.ph.i.i312
  %indvars.iv.i.i314 = phi i64 [ 0, %.lr.ph.i.i312 ], [ %indvars.iv.next.i.i318, %bb.av ] ; 2 uses
  %i.de = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv.i.i314 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !124 ; 2 uses
  %.not.i.i315 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i315, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %i.dg) #37
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !125 ; 2 uses
  %.not28.i.i316 = icmp eq ptr %i.dj, null
  br i1 %.not28.i.i316, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.dj) #37
  store ptr null, ptr %i.di, align 8, !tbaa !125
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  store ptr null, ptr %i.dk, align 8, !tbaa !120
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 72 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !126 ; 2 uses
  %.not29.i.i317 = icmp eq ptr %i.dm, null
  br i1 %.not29.i.i317, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %i.dm) #37
  store ptr null, ptr %i.dl, align 8, !tbaa !126
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.i.i318 = add nuw nsw i64 %indvars.iv.i.i314, 1 ; 2 uses
  %exitcond.not.i.i319 = icmp eq i64 %indvars.iv.next.i.i318, %wide.trip.count.i.i313
  br i1 %exitcond.not.i.i319, label %stbi__cleanup_jpeg.exit320, label %bb.ap, !llvm.loop !9

stbi__cleanup_jpeg.exit320:                       ; preds = %bb.av, %stbi__malloc_mad3.exit.thread
  %i.dn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.dn, align 8, !tbaa !39
  br label %bb.bx

.lr.ph.preheader:                                 ; preds = %.loopexit, %.lr.ph392
  %i.do = phi ptr [ %.pre, %.lr.ph392 ], [ %i.ot, %.loopexit ]
  %.0264391 = phi i32 [ 0, %.lr.ph392 ], [ %i.os, %.loopexit ] ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !55
  %i.dq = mul i32 %.0264391, %i.w
  %i.dr = mul i32 %i.dq, %i.dp
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ds ; 12 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvars.iv417 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next418, %bb.ay ] ; 4 uses
  %i.du = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv417 ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !420 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !426 ; 2 uses
  %i.dz = ashr i32 %i.dy, 1
  %.not289 = icmp slt i32 %i.dw, %i.dz            ; 2 uses
  %i.ea = load ptr, ptr %i.du, align 16, !tbaa !425
  %i.eb = getelementptr inbounds nuw [96 x i8], ptr %i.ax, i64 %indvars.iv417 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !126
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %.in = select i1 %.not289, ptr %i.ef, ptr %i.ee
  %i.eg = load ptr, ptr %.in, align 8, !tbaa !39
  %.in290 = select i1 %.not289, ptr %i.ee, ptr %i.ef
  %i.eh = load ptr, ptr %.in290, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.ej = load i32, ptr %i.ei, align 16, !tbaa !421
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !427
  %i.em = tail call ptr %i.ea(ptr noundef %i.ed, ptr noundef %i.eg, ptr noundef %i.eh, i32 noundef %i.ej, i32 noundef %i.el) #37
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv417
  store ptr %i.em, ptr %i.en, align 8, !tbaa !39
  %i.eo = add nsw i32 %i.dw, 1                    ; 2 uses
  store i32 %i.eo, ptr %i.dv, align 4, !tbaa !420
  %.not291 = icmp slt i32 %i.eo, %i.dy
  br i1 %.not291, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph
  store i32 0, ptr %i.dv, align 4, !tbaa !420
  %i.ep = load ptr, ptr %i.ee, align 16, !tbaa !423 ; 2 uses
  store ptr %i.ep, ptr %i.ef, align 8, !tbaa !424
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !422
  %i.es = add nsw i32 %i.er, 1                    ; 2 uses
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !422
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !110
  %i.ev = icmp slt i32 %i.es, %i.eu
  br i1 %i.ev, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !115
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ep, i64 %i.ey
  store ptr %i.ez, ptr %i.ee, align 16, !tbaa !423
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %.lr.ph
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge, label %.lr.ph, !llvm.loop !407

._crit_edge:                                      ; preds = %bb.ay
  br i1 %i.ah, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %._crit_edge
  %i.fa = load ptr, ptr %i.a, align 16, !tbaa !39 ; 5 uses
  %i.fb = load ptr, ptr %0, align 8, !tbaa !78    ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !64
  switch i32 %i.fd, label %.preheader [
    i32 3, label %bb.ba
    i32 4, label %bb.bc
  ]

.preheader:                                       ; preds = %bb.az
  %i.fe = load i32, ptr %i.fb, align 8, !tbaa !55
  %.not404 = icmp eq i32 %i.fe, 0
  br i1 %.not404, label %.loopexit, label %.lr.ph390

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ag, label %.preheader339, label %.loopexit.sink.split

.preheader339:                                    ; preds = %bb.ba
  %i.ff = load i32, ptr %i.fb, align 8, !tbaa !55
  %.not403 = icmp eq i32 %i.ff, 0
  br i1 %.not403, label %.loopexit, label %.lr.ph387

.lr.ph387:                                        ; preds = %.preheader339
  %i.fg = load ptr, ptr %i.da, align 8, !tbaa !39
  %i.fh = load ptr, ptr %i.db, align 16, !tbaa !39
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph387, %bb.bb
  %indvars.iv446 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next447, %bb.bb ] ; 4 uses
  %.0260386 = phi ptr [ %i.dt, %.lr.ph387 ], [ %i.fr, %bb.bb ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 %indvars.iv446
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !37
  store i8 %i.fj, ptr %.0260386, align 1, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv446
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %.0260386, i64 1
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv446
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !37
  %i.fp = getelementptr inbounds nuw i8, ptr %.0260386, i64 2
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !37
  %i.fq = getelementptr inbounds nuw i8, ptr %.0260386, i64 3
  store i8 -1, ptr %i.fq, align 1, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %.0260386, i64 %i.cz
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.fs = load i32, ptr %i.fb, align 8, !tbaa !55
  %i.ft = zext i32 %i.fs to i64
  %i.fu = icmp samesign ult i64 %indvars.iv.next447, %i.ft
  br i1 %i.fu, label %bb.bb, label %.loopexit, !llvm.loop !408

bb.bc:                                            ; preds = %bb.az
  %i.fv = load i32, ptr %i.cw, align 4, !tbaa !82
  switch i32 %i.fv, label %.loopexit.sink.split [
    i32 0, label %.preheader341
    i32 2, label %bb.be
end_hunk_6
begin_hunk_7_@stbi__create_png_alpha_expand8:bb.a
  %i.q = icmp eq i32 %.030, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.b, label %.lr.ph32.preheader, label %.loopexit

.lr.ph32.preheader:                               ; preds = %.preheader
  %i.r = zext nneg i32 %.030 to i64               ; 6 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 3 uses
  %min.iters.check = icmp ult i32 %.030, 15
  br i1 %min.iters.check, label %.lr.ph32.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.preheader
  %i.t = shl nuw nsw i64 %i.r, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = getelementptr i8, ptr %1, i64 %i.s
  %bound0 = icmp ult ptr %0, %i.w
  %bound1 = icmp ult ptr %1, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 4294967288               ; 3 uses
  %i.x = sub nsw i64 %i.r, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 %i.r, %index                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ac, align 1, !tbaa !37, !alias.scope !449
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ad, align 1, !tbaa !37, !alias.scope !450, !noalias !449
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.preheader43

.lr.ph32.preheader43:                             ; preds = %vector.memcheck, %.lr.ph32.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph32.preheader ], [ %i.x, %middle.block ] ; 4 uses
  %i.af = add nsw i64 %indvars.iv35.ph, 1
  %xtraiter45 = and i64 %i.af, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader43, %.lr.ph32.prol
  %indvars.iv35.prol = phi i64 [ %indvars.iv.next36.prol, %.lr.ph32.prol ], [ %indvars.iv35.ph, %.lr.ph32.preheader43 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph32.prol ], [ 0, %.lr.ph32.preheader43 ]
  %i.ag = shl nuw nsw i64 %indvars.iv35.prol, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 -1, ptr %i.ai, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !37
  %indvars.iv.next36.prol = add nsw i64 %indvars.iv35.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter45
  br i1 %prol.iter.cmp.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol, !llvm.loop !447

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader43
  %indvars.iv35.unr = phi i64 [ %indvars.iv35.ph, %.lr.ph32.preheader43 ], [ %indvars.iv.next36.prol, %.lr.ph32.prol ]
  %i.al = icmp ult i64 %indvars.iv35.ph, 3
  br i1 %i.al, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %indvars.iv35 = phi i64 [ %indvars.iv.next36.3, %.lr.ph32 ], [ %indvars.iv35.unr, %.lr.ph32.prol.loopexit ] ; 6 uses
  %i.am = shl nuw nsw i64 %indvars.iv35, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 -1, ptr %i.ao, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !37
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv.next36, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 -1, ptr %i.at, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37
  store i8 %i.av, ptr %i.as, align 1, !tbaa !37
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.aw = shl nuw nsw i64 %indvars.iv.next36.1, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 -1, ptr %i.ay, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !37
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 3 uses
  %i.bb = shl nuw nsw i64 %indvars.iv.next36.2, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 -1, ptr %i.bd, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !37
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4
  %.not39.3 = icmp eq i64 %indvars.iv.next36.2, 0
  br i1 %.not39.3, label %.loopexit, label %.lr.ph32, !llvm.loop !448

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bg = shl nuw nsw i64 %indvars.iv, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  store i8 -1, ptr %i.bi, align 1, !tbaa !37
  %i.bj = mul nuw nsw i64 %indvars.iv, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !37
  %i.br = load i8, ptr %i.bk, align 1, !tbaa !37
  store i8 %i.br, ptr %i.bh, align 1, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bs = shl nuw nsw i64 %indvars.iv.next, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  store i8 -1, ptr %i.bu, align 1, !tbaa !37
  %i.bv = mul nuw nsw i64 %indvars.iv.next, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !37
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !37
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !37
  store i8 %i.cd, ptr %i.bt, align 1, !tbaa !37
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph32.prol.loopexit, %.lr.ph32, %middle.block, %.preheader26, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !44
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64   ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not24.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !139
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %8 = sext i32 %i.r to i64
  %i.s = tail call noalias noundef ptr @malloc(i64 noundef %8) #38 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !139
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !39
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not24.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not24.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.ae, align 8, !tbaa !39
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.af = add i32 %.pre-phi, 7
  %i.ag = lshr i32 %i.af, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ah = udiv i32 2147483647, %5
  %.not11.i = icmp samesign ugt i32 %i.ag, %i.ah
  br i1 %.not11.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ai = mul nuw nsw i32 %i.ag, %5
  %i.aj = xor i32 %i.ag, 2147483647
  %.not330 = icmp sgt i32 %i.ai, %i.aj
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.ak, align 8, !tbaa !39
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.al = add nuw nsw i32 %i.ag, 1
  %i.am = mul i32 %i.al, %5
  %i.an = icmp ult i32 %2, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.49, ptr %i.ao, align 8, !tbaa !39
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ap = shl nuw nsw i32 %i.ag, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #38 ; 5 uses
  %.not283 = icmp eq ptr %i.ar, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.as, align 8, !tbaa !39
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.at = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.at, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.at, i32 %i.ag, i32 %4
  %i.au = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.av = sext i32 %spec.select to i64            ; 40 uses
  %i.aw = icmp slt i32 %spec.select, %i.au        ; 4 uses
  %i.ax = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ay = icmp sgt i32 %i.au, 0
  %i.az = sext i32 %i.au to i64                   ; 13 uses
  %i.ba = icmp eq i32 %6, 8
  %i.bb = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bc = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 4 uses
  %i.bd = icmp sgt i32 %4, 0                      ; 4 uses
  %i.be = zext i32 %.030.i305 to i64              ; 16 uses
  %i.bf = zext i32 %i.y to i64
  %i.bg = icmp eq i32 %7, 0
  %9 = sext i32 %6 to i64
  %i.bh = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %9
  %wide.trip.count460 = zext i32 %5 to i64
  %i.bi = zext nneg i32 %i.ag to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.au to i64     ; 8 uses
  %i.bj = sub nsw i64 %i.az, %i.av                ; 28 uses
  %i.bk = add i32 %i.y, -1                        ; 3 uses
  %i.bl = add nuw nsw i64 %i.be, 1
  %min.iters.check699 = icmp ult i64 %i.bj, 8
  %i.bm = add nsw i64 %i.av, -1
  %diff.check697 = icmp ult i64 %i.bm, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bj, 32
  %i.bn = and i64 %i.bj, 24
  %n.vec703 = and i64 %i.bj, -32                  ; 4 uses
  %i.bo = add nsw i64 %n.vec703, %i.av
  %cmp.n712 = icmp eq i64 %i.bj, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bn, 0
  %n.vec720 = and i64 %i.bj, -8                   ; 3 uses
  %i.bp = add nsw i64 %n.vec720, %i.av
  %cmp.n727 = icmp eq i64 %i.bj, %n.vec720
  %i.bq = add nsw i64 %i.az, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.br = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.br, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bj, 4
  %i.bs = add nsw i64 %i.av, -1
  %diff.check626 = icmp ult i64 %i.bs, 15
  %min.iters.check634 = icmp ult i64 %i.bj, 16
  %i.bt = and i64 %i.bj, 12
  %n.vec636 = and i64 %i.bj, -16                  ; 4 uses
  %i.bu = add nsw i64 %n.vec636, %i.av
  %cmp.n645 = icmp eq i64 %i.bj, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bt, 0
  %n.vec653 = and i64 %i.bj, -4                   ; 3 uses
  %i.bv = add nsw i64 %n.vec653, %i.av
  %cmp.n662 = icmp eq i64 %i.bj, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bw = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bw, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.bx = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bj, 4
  %i.by = add nsw i64 %i.av, -1
  %diff.check561 = icmp ult i64 %i.by, 15
  %min.iters.check565 = icmp ult i64 %i.bj, 16
  %i.bz = and i64 %i.bj, 12
  %n.vec567 = and i64 %i.bj, -16                  ; 4 uses
  %i.ca = add nsw i64 %n.vec567, %i.av
  %cmp.n575 = icmp eq i64 %i.bj, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bz, 0
  %n.vec583 = and i64 %i.bj, -4                   ; 3 uses
  %i.cb = add nsw i64 %n.vec583, %i.av
  %cmp.n591 = icmp eq i64 %i.bj, %n.vec583
  %i.cc = add nsw i64 %i.az, -1
  %min.iters.check530 = icmp ult i32 %i.au, 4
  %min.iters.check532 = icmp ult i32 %i.au, 32
  %i.cd = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.cd, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bj, 8
  %i.ce = add nsw i64 %i.av, -1
  %diff.check = icmp ult i64 %i.ce, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bj, 32
  %i.cf = and i64 %i.bj, 24
  %n.vec509 = and i64 %i.bj, -32                  ; 4 uses
  %i.cg = add nsw i64 %n.vec509, %i.av
  %cmp.n518 = icmp eq i64 %i.bj, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cf, 0
  %n.vec520 = and i64 %i.bj, -8                   ; 3 uses
  %i.ch = add nsw i64 %n.vec520, %i.av
  %cmp.n525 = icmp eq i64 %i.bj, %n.vec520
  %i.ci = add nsw i64 %i.az, -1
  %xtraiter761 = and i32 %4, 1
  %i.cj = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.y, 3                  ; 3 uses
  %i.ck = icmp ult i32 %i.y, 4
  %unroll_iter767 = and i32 %i.y, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cl = and i64 %i.be, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cl, 0
  %i.cm = shl nuw nsw i64 %i.be, 2
  %i.cn = mul nuw nsw i64 %i.be, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.be, -1
  %i.co = icmp eq i32 %.030.i305, 0
  %i.cp = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.cp, 2147483640              ; 3 uses
  %i.cq = sub nsw i64 %i.be, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cp
  %xtraiter772 = and i32 %i.y, 1
  %i.cr = icmp eq i32 %i.bk, 0
  %unroll_iter776 = and i32 %i.y, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.y to i1
  %xtraiter778 = and i32 %i.y, 1
  %i.cs = icmp eq i32 %i.bk, 0
  %unroll_iter782 = and i32 %i.y, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.y to i1
  %xtraiter784 = and i32 %i.y, 1
  %i.ct = icmp eq i32 %i.bk, 0
  %unroll_iter788 = and i32 %i.y, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.y to i1
  %i.cu = and i64 %i.be, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cu, 0
  %i.cv = shl nuw nsw i64 %i.be, 2
  %i.cw = mul nuw nsw i64 %i.be, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.be, -1
  %i.cx = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bl, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cy = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qi, %.loopexit ] ; 2 uses
  %i.cz = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.da = trunc i64 %indvars.iv457 to i1
  %i.db = select i1 %i.da, i64 %i.bi, i64 0       ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.db ; 75 uses
  %i.dd = and i32 %i.cz, 1
  %i.de = xor i32 %i.dd, 1
  %i.df = mul nuw nsw i32 %i.de, %i.ag
  %i.dg = zext nneg i32 %i.df to i64              ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dg ; 30 uses
  %i.di = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.dj = mul i32 %i.e, %i.cz
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dk ; 33 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dn = load i8, ptr %.0272398, align 1, !tbaa !37 ; 3 uses
  %i.do = icmp ugt i8 %i.dn, 4
  br i1 %i.do, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dq = zext nneg i8 %i.dn to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.ds, %bb.o ], [ %i.dn, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ax, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.dt = sub nsw i64 %i.dg, %i.db
  %diff.check665 = icmp ugt i64 %i.dt, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index673 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.du, align 1, !tbaa !37
  %wide.load675 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index673 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !37
  %wide.load677 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !37
  %i.dy = add <16 x i8> %wide.load676, %wide.load674
  %i.dz = add <16 x i8> %wide.load677, %wide.load675
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index673 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <16 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !37
  store <16 x i8> %i.dz, ptr %i.eb, align 1, !tbaa !37
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.ec = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.ec, label %middle.block679, label %vector.body672, !llvm.loop !451

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !72

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ed, align 1, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.ee, align 1, !tbaa !37
  %i.ef = add <4 x i8> %wide.load691, %wide.load690
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index689
  store <4 x i8> %i.ef, ptr %i.eg, align 1, !tbaa !37
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.eh, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !452

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv421.prol
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !37
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !37
  %.narrow286.prol = add i8 %i.el, %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.em, align 1, !tbaa !37
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !453

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.en = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ax, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.ep = sub nsw i64 %i.dg, %i.db
  %diff.check594 = icmp ugt i64 %i.ep, -32
  %or.cond730 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index602 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !37
  %wide.load604 = load <16 x i8>, ptr %i.er, align 1, !tbaa !37
  %i.es = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index602 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.es, align 1, !tbaa !37
  %wide.load606 = load <16 x i8>, ptr %i.et, align 1, !tbaa !37
  %i.eu = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.ev = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.ew = add <16 x i8> %i.eu, %wide.load603
  %i.ex = add <16 x i8> %i.ev, %wide.load604
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index602 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <16 x i8> %i.ew, ptr %i.ey, align 1, !tbaa !37
  store <16 x i8> %i.ex, ptr %i.ez, align 1, !tbaa !37
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.fa = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.fa, label %middle.block608, label %vector.body601, !llvm.loop !454

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !72

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dh, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !37
  %i.fd = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fe = add <4 x i8> %i.fd, %wide.load619
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index618
  store <4 x i8> %i.fe, ptr %i.ff, align 1, !tbaa !37
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fg, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !455

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
end_hunk_7
begin_hunk_8_@stbi__create_png_image_raw:bb.a
  %niter768 = phi i32 [ %niter768.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.wg = load i8, ptr %.0249380, align 1, !tbaa !37
  %i.wh = zext i8 %i.wg to i16
  %i.wi = shl nuw i16 %i.wh, 8
  %i.wj = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !37
  %i.wl = zext i8 %i.wk to i16
  %i.wm = or disjoint i16 %i.wi, %i.wl
  store i16 %i.wm, ptr %.0381, align 2, !tbaa !74
  %i.wn = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.wo = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !37
  %i.wq = zext i8 %i.wp to i16
  %i.wr = shl nuw i16 %i.wq, 8
  %i.ws = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !37
  %i.wu = zext i8 %i.wt to i16
  %i.wv = or disjoint i16 %i.wr, %i.wu
  store i16 %i.wv, ptr %i.wn, align 2, !tbaa !74
  %i.ww = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.wx = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !37
  %i.wz = zext i8 %i.wy to i16
  %i.xa = shl nuw i16 %i.wz, 8
  %i.xb = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !37
  %i.xd = zext i8 %i.xc to i16
  %i.xe = or disjoint i16 %i.xa, %i.xd
  store i16 %i.xe, ptr %i.ww, align 2, !tbaa !74
  %i.xf = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.xg = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !37
  %i.xi = zext i8 %i.xh to i16
  %i.xj = shl nuw i16 %i.xi, 8
  %i.xk = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !37
  %i.xm = zext i8 %i.xl to i16
  %i.xn = or disjoint i16 %i.xj, %i.xm
  store i16 %i.xn, ptr %i.xf, align 2, !tbaa !74
  %i.xo = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382, !llvm.loop !481

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bc, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.w, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cj, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.yi, %.lr.ph378 ], [ %i.dl, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.yj, %.lr.ph378 ], [ %i.dc, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xq = load i8, ptr %.1250376, align 1, !tbaa !37
  %i.xr = zext i8 %i.xq to i16
  %i.xs = shl nuw i16 %i.xr, 8
  %i.xt = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !37
  %i.xv = zext i8 %i.xu to i16
  %i.xw = or disjoint i16 %i.xs, %i.xv
  store i16 %i.xw, ptr %.1377, align 2, !tbaa !74
  %i.xx = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xx, align 2, !tbaa !74
  %i.xy = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.xz = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !37
  %i.yb = zext i8 %i.ya to i16
  %i.yc = shl nuw i16 %i.yb, 8
  %i.yd = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !37
  %i.yf = zext i8 %i.ye to i16
  %i.yg = or disjoint i16 %i.yc, %i.yf
  store i16 %i.yg, ptr %i.xy, align 2, !tbaa !74
  %i.yh = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.yh, align 2, !tbaa !74
  %i.yi = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit741.unr-lcssa, label %.lr.ph378, !llvm.loop !482

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.zl, %.lr.ph374 ], [ %i.dl, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.zm, %.lr.ph374 ], [ %i.dc, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.zk, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.yk = load i8, ptr %.2251372, align 1, !tbaa !37
  %i.yl = zext i8 %i.yk to i16
  %i.ym = shl nuw i16 %i.yl, 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !37
  %i.yp = zext i8 %i.yo to i16
  %i.yq = or disjoint i16 %i.ym, %i.yp
  store i16 %i.yq, ptr %.2373, align 2, !tbaa !74
  %i.yr = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !37
  %i.yt = zext i8 %i.ys to i16
  %i.yu = shl nuw i16 %i.yt, 8
  %i.yv = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !37
  %i.yx = zext i8 %i.yw to i16
  %i.yy = or disjoint i16 %i.yu, %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.yy, ptr %i.yz, align 2, !tbaa !74
  %i.za = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !37
  %i.zc = zext i8 %i.zb to i16
  %i.zd = shl nuw i16 %i.zc, 8
  %i.ze = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !37
  %i.zg = zext i8 %i.zf to i16
  %i.zh = or disjoint i16 %i.zd, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.zh, ptr %i.zi, align 2, !tbaa !74
  %i.zj = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.zj, align 2, !tbaa !74
  %i.zk = add nuw i32 %.5270371, 1                ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.zk, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !483

.loopexit.loopexit740.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.dl, %.lr.ph382.preheader ], [ %i.xo, %.loopexit.loopexit740.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.dc, %.lr.ph382.preheader ], [ %i.xp, %.loopexit.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod766)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.zu, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.zv, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zn = load i8, ptr %.0249380.epil, align 1, !tbaa !37
  %i.zo = zext i8 %i.zn to i16
  %i.zp = shl nuw i16 %i.zo, 8
  %i.zq = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !37
  %i.zs = zext i8 %i.zr to i16
  %i.zt = or disjoint i16 %i.zp, %i.zs
  store i16 %i.zt, ptr %.0381.epil, align 2, !tbaa !74
  %i.zu = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zv = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !484

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.dl, %.lr.ph378.preheader ], [ %i.yi, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dc, %.lr.ph378.preheader ], [ %i.yj, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zw = load i8, ptr %.1250376.epil.init, align 1, !tbaa !37
  %i.zx = zext i8 %i.zw to i16
  %i.zy = shl nuw i16 %i.zx, 8
  %i.zz = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !37
  %i.aab = zext i8 %i.aaa to i16
  %i.aac = or disjoint i16 %i.zy, %i.aab
  store i16 %i.aac, ptr %.1377.epil.init, align 2, !tbaa !74
  %i.aad = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.aad, align 2, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit741.unr-lcssa, %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !485

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.ar) #37
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.aae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.50, ptr %i.aae, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.ar) #37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %4, 16
  %i.b = zext i1 %i.a to i32
  %i.c = shl i32 %3, %i.b                         ; 6 uses
  %.not = icmp eq i32 %6, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %4, i32 noundef %5)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.i = or i32 %i.g, %i.e
  %or.cond.not.i.i.i = icmp sgt i32 %i.i, -1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.g, 0
  br i1 %i.j, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.d
  %i.k = udiv i32 2147483647, %i.g
  %.not24.i.i = icmp sgt i32 %i.e, %i.k
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.l = mul nuw nsw i32 %i.g, %i.e               ; 3 uses
  %i.m = or i32 %i.l, %i.c
  %or.cond.not.i10.i.i = icmp sgt i32 %i.m, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.n = icmp eq i32 %i.c, 0
  br i1 %i.n, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.o = udiv i32 2147483647, %i.c
  %.not.i.i = icmp sgt i32 %i.l, %i.o
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.p = mul nuw nsw i32 %i.l, %i.c
  %7 = sext i32 %i.p to i64
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef %7) #38 ; 4 uses
  %.not92 = icmp eq ptr %i.q, null
  br i1 %.not92, label %stbi__malloc_mad3.exit.thread, label %.preheader100

.preheader100:                                    ; preds = %stbi__malloc_mad3.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %8 = sext i32 %i.c to i64                       ; 9 uses
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.s, align 8, !tbaa !39
  br label %.critedge

bb.f:                                             ; preds = %.preheader100, %bb.h
  %indvars.iv112 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next113, %bb.h ] ; 5 uses
  %.076106 = phi ptr [ %1, %.preheader100 ], [ %.379, %bb.h ] ; 3 uses
  %.085104 = phi i32 [ %2, %.preheader100 ], [ %.388, %bb.h ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40   ; 4 uses
  %i.z = xor i32 %i.w, -1
  %i.aa = add i32 %i.u, %i.z
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = udiv i32 %i.ab, %i.y                    ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !54
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40 ; 4 uses
  %i.aj = xor i32 %i.ag, -1
  %i.ak = add i32 %i.ae, %i.aj
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = udiv i32 %i.al, %i.ai                   ; 4 uses
  %i.an = icmp ule i32 %i.y, %i.ab
  %i.ao = icmp ule i32 %i.ai, %i.al
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !64
  %i.ar = mul i32 %i.ac, %4
  %i.as = mul i32 %i.ar, %i.aq
  %i.at = add nsw i32 %i.as, 7
  %i.au = ashr i32 %i.at, 3
  %i.av = add nsw i32 %i.au, 1
  %i.aw = mul nsw i32 %i.av, %i.am                ; 2 uses
  %i.ax = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106, i32 noundef %.085104, i32 noundef %3, i32 noundef %i.ac, i32 noundef %i.am, i32 noundef %4, i32 noundef %5)
  %.not93.not = icmp eq i32 %i.ax, 0
  br i1 %.not93.not, label %.thread, label %.preheader99

.preheader99:                                     ; preds = %bb.g
  %i.ay = icmp sgt i32 %i.am, 0
  %i.az = icmp sgt i32 %i.ac, 0
  %or.cond107 = and i1 %i.ay, %i.az
  %.pre115 = load ptr, ptr %i.r, align 8, !tbaa !139 ; 4 uses
  br i1 %or.cond107, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %.preheader99
  %i.ba = load ptr, ptr %0, align 8, !tbaa !44
  %i.bb = sext i32 %i.y to i64                    ; 3 uses
  %i.bc = sext i32 %i.w to i64                    ; 3 uses
  %i.bd = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.be = zext nneg i32 %i.am to i64
  %.pre.pre = load i32, ptr %i.ba, align 8, !tbaa !55
  %factor.op.mul = mul i32 %i.c, %.pre.pre
  %xtraiter = and i64 %i.bd, 1
  %i.bf = icmp eq i32 %i.ac, 1
  %unroll_iter = and i64 %i.bd, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.ac to i1
  br label %.preheader

.thread:                                          ; preds = %bb.g
  tail call void @free(ptr noundef %i.q) #37
  br label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %i.bg = trunc i64 %indvars.iv109 to i32
  %i.bh = mul i32 %i.ai, %i.bg
  %i.bi = add i32 %i.bh, %i.ag
  %.reass = mul i32 %i.bi, %factor.op.mul
  %i.bj = mul nuw nsw i64 %indvars.iv109, %i.bd   ; 3 uses
  %i.bk = zext i32 %.reass to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bk ; 3 uses
  br i1 %i.bf, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bm = mul nsw i64 %indvars.iv, %i.bb
  %i.bn = add nsw i64 %i.bm, %i.bc
  %i.bo = mul nsw i64 %i.bn, %8
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.bo
  %i.bq = add nuw nsw i64 %indvars.iv, %i.bj
  %i.br = mul nsw i64 %i.bq, %8
  %i.bs = getelementptr inbounds i8, ptr %.pre115, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bs, i64 %8, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bt = mul nsw i64 %indvars.iv.next, %i.bb
  %i.bu = add nsw i64 %i.bt, %i.bc
  %i.bv = mul nsw i64 %i.bu, %8
  %i.bw = getelementptr inbounds i8, ptr %i.bl, i64 %i.bv
  %i.bx = add nuw nsw i64 %indvars.iv.next, %i.bj
  %i.by = mul nsw i64 %i.bx, %8
  %i.bz = getelementptr inbounds i8, ptr %.pre115, i64 %i.by
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr align 1 %i.bz, i64 %8, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !487

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ca = mul nsw i64 %indvars.iv.epil.init, %i.bb
  %i.cb = add nsw i64 %i.ca, %i.bc
  %i.cc = mul nsw i64 %i.cb, %8
  %i.cd = getelementptr inbounds i8, ptr %i.bl, i64 %i.cc
  %i.ce = add nuw nsw i64 %indvars.iv.epil.init, %i.bj
  %i.cf = mul nsw i64 %i.ce, %8
  %i.cg = getelementptr inbounds i8, ptr %.pre115, i64 %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.cg, i64 %8, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next110, %i.be
  br i1 %i.ch, label %.preheader, label %._crit_edge103.split, !llvm.loop !488

._crit_edge103.split:                             ; preds = %._crit_edge, %.preheader99
  tail call void @free(ptr noundef %.pre115) #37
  %i.ci = zext i32 %i.aw to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %.076106, i64 %i.ci
  %i.ck = sub i32 %.085104, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge103.split, %bb.f
  %.388 = phi i32 [ %.085104, %bb.f ], [ %i.ck, %._crit_edge103.split ]
  %.379 = phi ptr [ %.076106, %bb.f ], [ %i.cj, %._crit_edge103.split ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, 7
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !489

bb.i:                                             ; preds = %bb.h
  store ptr %i.q, ptr %i.r, align 8, !tbaa !139
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %stbi__malloc_mad3.exit.thread, %bb.b
  %.4 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.i ], [ 0, %stbi__malloc_mad3.exit.thread ], [ 0, %.thread ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 3 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.pre34 = load i8, ptr %1, align 1, !tbaa !37
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.e, 4
  br i1 %i.k, label %.lr.ph30.epil.preheader, label %.lr.ph30.preheader.new

.lr.ph30.preheader.new:                           ; preds = %.lr.ph30.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30, %.lr.ph30.preheader.new
  %.029 = phi ptr [ %i.g, %.lr.ph30.preheader.new ], [ %i.ai, %.lr.ph30 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph30.preheader.new ], [ %niter.next.3, %.lr.ph30 ]
  %i.l = load i8, ptr %.029, align 1, !tbaa !37
  %i.m = load i8, ptr %1, align 1, !tbaa !37
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !37
  %i.s = load i8, ptr %1, align 1, !tbaa !37
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 3
  store i8 %i.u, ptr %i.v, align 1, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37
  %i.y = load i8, ptr %1, align 1, !tbaa !37
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.029, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %.029, i64 6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = load i8, ptr %1, align 1, !tbaa !37
  %i.af = icmp ne i8 %i.ad, %i.ae
  %i.ag = sext i1 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 7
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph30, !llvm.loop !490

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.aj = phi i8 [ %.pre34, %.lr.ph ], [ %i.av, %bb.f ] ; 4 uses
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.aw, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.f ]
  %i.ak = load i8, ptr %.127, align 1, !tbaa !37
  %i.al = icmp eq i8 %i.ak, %i.aj
  br i1 %i.al, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.127, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37
  %i.ao = load i8, ptr %i.i, align 1, !tbaa !37
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = load i8, ptr %i.j, align 1, !tbaa !37
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.127, i64 3
  store i8 0, ptr %i.au, align 1, !tbaa !37
  %.pre = load i8, ptr %1, align 1, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.av = phi i8 [ %.pre, %bb.e ], [ %i.aj, %bb.d ], [ %i.aj, %bb.c ], [ %i.aj, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.ax = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !491

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph30
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph30.epil.preheader

.lr.ph30.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph30.preheader
  %.029.epil.init = phi ptr [ %i.g, %.lr.ph30.preheader ], [ %i.ai, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph30.epil

.lr.ph30.epil:                                    ; preds = %.lr.ph30.epil, %.lr.ph30.epil.preheader
  %.029.epil = phi ptr [ %i.bd, %.lr.ph30.epil ], [ %.029.epil.init, %.lr.ph30.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph30.epil ], [ 0, %.lr.ph30.epil.preheader ]
  %i.ay = load i8, ptr %.029.epil, align 1, !tbaa !37
  %i.az = load i8, ptr %1, align 1, !tbaa !37
  %i.ba = icmp ne i8 %i.ay, %i.az
  %i.bb = sext i1 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.029.epil, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %.029.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph30.epil, !llvm.loop !492

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph30.epil, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 10 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre34 = load i16, ptr %1, align 2, !tbaa !74
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 25
  br i1 %min.iters.check, label %.lr.ph30.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30.preheader
  %i.l = add i32 %i.e, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = getelementptr i8, ptr %1, i64 2
  %bound0 = icmp ult ptr %i.g, %i.q
  %bound1 = icmp ult ptr %1, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph30.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.r = and i64 %i.k, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.k, %i.t                 ; 3 uses
  %i.u = shl nsw i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = trunc i64 %n.vec to i32
  %i.x = load i16, ptr %1, align 2, !tbaa !74, !alias.scope !500
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %i.g, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.y
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ac = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.ad = sext <4 x i1> %i.ac to <4 x i16>        ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.af = getelementptr i8, ptr %i.z, i64 6
  %i.ag = getelementptr i8, ptr %i.aa, i64 10
  %i.ah = getelementptr i8, ptr %i.ab, i64 14
  %i.ai = extractelement <4 x i16> %i.ad, i64 0
  store i16 %i.ai, ptr %i.ae, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %i.aj = extractelement <4 x i16> %i.ad, i64 1
  store i16 %i.aj, ptr %i.af, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %i.ak = extractelement <4 x i16> %i.ad, i64 2
  store i16 %i.ak, ptr %i.ag, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %i.al = extractelement <4 x i16> %i.ad, i64 3
  store i16 %i.al, ptr %i.ah, align 2, !tbaa !74, !alias.scope !501, !noalias !500
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %.lr.ph30.preheader45, label %vector.body, !llvm.loop !496

.lr.ph30.preheader45:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph30.preheader
  %.029.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph30.preheader ], [ %i.v, %vector.body ] ; 2 uses
  %.02228.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph30.preheader ], [ %i.w, %vector.body ] ; 4 uses
  %i.an = sub i32 %i.e, %.02228.ph
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader45, %.lr.ph30.prol
  %.029.prol = phi ptr [ %i.at, %.lr.ph30.prol ], [ %.029.ph, %.lr.ph30.preheader45 ] ; 3 uses
  %.02228.prol = phi i32 [ %i.au, %.lr.ph30.prol ], [ %.02228.ph, %.lr.ph30.preheader45 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph30.prol ], [ 0, %.lr.ph30.preheader45 ]
  %i.ao = load i16, ptr %.029.prol, align 2, !tbaa !74
  %i.ap = load i16, ptr %1, align 2, !tbaa !74
  %i.aq = icmp ne i16 %i.ao, %i.ap
  %i.ar = sext i1 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %.029.prol, i64 2
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %.029.prol, i64 4 ; 2 uses
  %i.au = add nuw i32 %.02228.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol, !llvm.loop !497

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader45
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph30.preheader45 ], [ %i.at, %.lr.ph30.prol ]
  %.02228.unr = phi i32 [ %.02228.ph, %.lr.ph30.preheader45 ], [ %i.au, %.lr.ph30.prol ]
  %i.av = sub i32 %.02228.ph, %i.e
  %i.aw = icmp ugt i32 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %.029 = phi ptr [ %i.bu, %.lr.ph30 ], [ %.029.unr, %.lr.ph30.prol.loopexit ] ; 9 uses
  %.02228 = phi i32 [ %i.bv, %.lr.ph30 ], [ %.02228.unr, %.lr.ph30.prol.loopexit ]
  %i.ax = load i16, ptr %.029, align 2, !tbaa !74
  %i.ay = load i16, ptr %1, align 2, !tbaa !74
  %i.az = icmp ne i16 %i.ax, %i.ay
  %i.ba = sext i1 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %.029, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !74
  %i.be = load i16, ptr %1, align 2, !tbaa !74
  %i.bf = icmp ne i16 %i.bd, %i.be
  %i.bg = sext i1 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %.029, i64 6
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !74
  %i.bk = load i16, ptr %1, align 2, !tbaa !74
  %i.bl = icmp ne i16 %i.bj, %i.bk
  %i.bm = sext i1 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.029, i64 10
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !74
  %i.bq = load i16, ptr %1, align 2, !tbaa !74
  %i.br = icmp ne i16 %i.bp, %i.bq
  %i.bs = sext i1 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.029, i64 14
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bv = add nuw i32 %.02228, 4                  ; 2 uses
  %exitcond33.not.3 = icmp eq i32 %i.bv, %i.e
  br i1 %exitcond33.not.3, label %.loopexit, label %.lr.ph30, !llvm.loop !498

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.bw = phi i16 [ %.pre34, %.lr.ph ], [ %i.ci, %bb.f ] ; 4 uses
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.cj, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.f ]
  %i.bx = load i16, ptr %.127, align 2, !tbaa !74
  %i.by = icmp eq i16 %i.bx, %i.bw
  br i1 %i.by, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !74
  %i.cb = load i16, ptr %i.i, align 2, !tbaa !74
  %i.cc = icmp eq i16 %i.ca, %i.cb
  br i1 %i.cc, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !74
  %i.cf = load i16, ptr %i.j, align 2, !tbaa !74
  %i.cg = icmp eq i16 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %.127, i64 6
  store i16 0, ptr %i.ch, align 2, !tbaa !74
  %.pre = load i16, ptr %1, align 2, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ci = phi i16 [ %.pre, %bb.e ], [ %i.bw, %bb.d ], [ %i.bw, %bb.c ], [ %i.bw, %bb.b ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.ck = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !499

.loopexit:                                        ; preds = %bb.f, %.lr.ph30.prol.loopexit, %.lr.ph30, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__expand_png_palette(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 9 uses
  %i.h = or i32 %i.e, %3
  %or.cond.not.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %stbi__malloc_mad2.exit, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.j = udiv i32 2147483647, %3
  %.not11.i.i = icmp sgt i32 %i.e, %i.j
  br i1 %.not11.i.i, label %stbi__malloc_mad2.exit.thread, label %stbi__malloc_mad2.exit

stbi__malloc_mad2.exit:                           ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i
  %i.k = mul nuw nsw i32 %i.e, %3
  %4 = sext i32 %i.k to i64
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %4) #38 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %stbi__malloc_mad2.exit.thread, label %bb.c

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__malloc_mad2.exit
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.n, align 8, !tbaa !39
  br label %bb.d

bb.c:                                             ; preds = %stbi__malloc_mad2.exit
  %i.o = icmp eq i32 %3, 3
  %.not56 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %wide.trip.count = zext i32 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.p = icmp ult i32 %i.e, 4
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %wide.trip.count62 = zext i32 %i.e to i64       ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count62, 1
  %i.q = icmp eq i32 %i.e, 1
  br i1 %i.q, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter75 = and i64 %wide.trip.count62, 4294967294
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next60.1, %.lr.ph55 ] ; 3 uses
  %.04553 = phi ptr [ %i.l, %.lr.ph55.preheader.new ], [ %i.ar, %.lr.ph55 ] ; 7 uses
  %niter76 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter76.next.1, %.lr.ph55 ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  store i8 %i.w, ptr %.04553, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %.04553, i64 1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %.04553, i64 2
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %.04553, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  store i8 %i.ak, ptr %i.ad, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.04553, i64 4
  store i8 %i.am, ptr %i.an, align 1, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.04553, i64 5
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.04553, i64 6 ; 2 uses
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter76.next.1 = add i64 %niter76, 2           ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !502

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.14651 = phi ptr [ %i.l, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = zext i8 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load <4 x i8>, ptr %i.aw, align 1, !tbaa !37
  store <4 x i8> %i.ax, ptr %.14651, align 1, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.14651, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.bf = load <4 x i8>, ptr %i.be, align 1, !tbaa !37
  store <4 x i8> %i.bf, ptr %i.ay, align 1, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %.14651, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load <4 x i8>, ptr %i.bm, align 1, !tbaa !37
  store <4 x i8> %i.bn, ptr %i.bg, align 1, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %.14651, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = load <4 x i8>, ptr %i.bu, align 1, !tbaa !37
  store <4 x i8> %i.bv, ptr %i.bo, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.14651, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit69.unr-lcssa, label %.lr.ph, !llvm.loop !503

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph55
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ]
  %.04553.epil.init = phi ptr [ %i.l, %.lr.ph55.preheader ], [ %i.ar, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59.epil.init
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37
  store i8 %i.cc, ptr %.04553.epil.init, align 1, !tbaa !37
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !37
  br label %.loopexit

.loopexit.loopexit69.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit69.unr-lcssa ]
  %.14651.epil.init = phi ptr [ %i.l, %.lr.ph.preheader ], [ %i.bw, %.loopexit.loopexit69.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.14651.epil = phi ptr [ %.14651.epil.init, %.lr.ph.epil.preheader ], [ %i.cp, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !37
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = load <4 x i8>, ptr %i.cn, align 1, !tbaa !37
  store <4 x i8> %i.co, ptr %.14651.epil, align 1, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %.14651.epil, i64 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !504

.loopexit:                                        ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.epil, %.lr.ph55.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader49, %.preheader
  tail call void @free(ptr noundef %i.g) #37
  store ptr %i.l, ptr %i.f, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %stbi__malloc_mad2.exit.thread
  %.0 = phi i32 [ 0, %stbi__malloc_mad2.exit.thread ], [ 1, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__unpremultiply_on_load_global, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__de_iphone_flag_global, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !40
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__unpremultiply_on_load_set)
  store i32 1, ptr %i.b, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !40
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__de_iphone_flag_set)
  store i32 1, ptr %i.b, align 4, !tbaa !40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi__de_iphone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !140
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %.preheader, label %bb.b
end_hunk_8
