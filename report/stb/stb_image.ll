Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@fread
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define void @stbi__stdio_skip(ptr nofree noundef captures(none) %0, i32 noundef %1) #4 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 0 uses
  %i.c = tail call i32 @fgetc(ptr noundef %0)     ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ungetc(i32 noundef %i.c, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @stbi__stdio_eof(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = tail call i32 @feof(ptr noundef %0) #37
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ferror(ptr noundef %0) #37
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @stbi__start_file(ptr noundef initializes((16, 56), (184, 188)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = tail call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !25 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !14
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbi__rewind(ptr nofree noundef captures(none) initializes((192, 208)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !26
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbi_failure_reason() local_unnamed_addr #8 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__err(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr %0, ptr %i.a, align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @stbi__malloc(i64 noundef %0) local_unnamed_addr #11 {
bb.a:
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
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.i) #38
  br label %stbi__mad2sizes_valid.exit.thread

stbi__mad2sizes_valid.exit.thread:                ; preds = %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mad2sizes_valid.exit, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ null, %stbi__mad2sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ]
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
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.m) #38
  br label %stbi__mad3sizes_valid.exit.thread

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16.i, %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i, %stbi__mad3sizes_valid.exit, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ null, %stbi__mad3sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit12.i ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ], [ null, %stbi__mul2sizes_valid.exit.thread16.i ]
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
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #38
  br label %stbi__mad4sizes_valid.exit.thread

stbi__mad4sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit18.thread30.i, %bb.a, %stbi__mul2sizes_valid.exit.thread25.i, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit18.i, %stbi__mul2sizes_valid.exit21.i, %stbi__mad4sizes_valid.exit, %bb.e
  %.0 = phi ptr [ %i.r, %bb.e ], [ null, %stbi__mad4sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit21.i ], [ null, %stbi__mul2sizes_valid.exit18.i ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %stbi__mul2sizes_valid.exit.thread25.i ], [ null, %bb.a ], [ null, %stbi__mul2sizes_valid.exit18.thread30.i ]
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
  store i32 %0, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_flip_vertically_on_load_thread(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  store i32 %0, ptr %i.a, align 4, !tbaa !27
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_set)
  store i32 1, ptr %i.b, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbi__load_main(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 12)) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.stbi__gif, align 8          ; 9 uses
  %8 = alloca %struct.stbi__png, align 8          ; 4 uses
  store i32 8, ptr %5, align 4, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 4, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !31
  %i.c = tail call i32 @stbi__png_test(ptr noundef %0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  store ptr %0, ptr %8, align 8, !tbaa !32
  %i.d = call ptr @stbi__do_png(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @stbi__bmp_test_raw(ptr noundef %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.h = load <2 x ptr>, ptr %i.f, align 8, !tbaa !26
  store <2 x ptr> %i.h, ptr %i.g, align 8, !tbaa !26
  %.not75 = icmp eq i32 %i.e, 0
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @stbi__bmp_load(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nonnull poison)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @stbi__gif_test_raw(ptr noundef nonnull %0)
  %i.k = load <2 x ptr>, ptr %i.f, align 8, !tbaa !26
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !26
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
  %i.n = load i32, ptr %7, align 8, !tbaa !34     ; 2 uses
  store i32 %i.n, ptr %1, align 4, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36   ; 2 uses
  store i32 %i.p, ptr %2, align 4, !tbaa !27
  %i.q = and i32 %4, -5
  %or.cond.not.i = icmp eq i32 %i.q, 0
  br i1 %or.cond.not.i, label %stbi__gif_load.exit, label %bb.h
end_hunk_0
begin_hunk_1_@stbi__png_load:bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__bmp_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbi__bmp_test_raw(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !26
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !26
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__bmp_load(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #2 {
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
  store i32 255, ptr %i.f, align 4, !tbaa !41
  %i.g = call ptr @stbi__bmp_parse_header(ptr noundef %0, ptr noundef nonnull %6)
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !43   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true) ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !43
  %i.m = icmp samesign ugt i32 %i.l, 16777216
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.n, align 8, !tbaa !26
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8, !tbaa !44
  %i.p = icmp ugt i32 %i.o, 16777216
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.q, align 8, !tbaa !26
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !46   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !47   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48   ; 7 uses
  %i.z = load i32, ptr %i.f, align 4, !tbaa !41   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !49 ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 12                   ; 3 uses
  %i.ad = load i32, ptr %6, align 4, !tbaa !50    ; 4 uses
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp slt i32 %i.ad, 24
  br i1 %i.ae, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.aj = add i32 %i.ag, -24
  %i.ak = sub i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, 3
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.am = icmp slt i32 %i.ad, 16
  br i1 %i.am, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !52
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
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
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
  store ptr @.str.75, ptr %i.bj, align 8, !tbaa !26
  br label %.critedge

bb.m:                                             ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !51 ; 4 uses
  %i.bm = icmp slt i32 %i.bl, %i.bh
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = sub nsw i32 %i.bl, %i.bh                ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 1024
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.76, ptr %i.bp, align 8, !tbaa !26
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
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !53
  %.not367 = icmp eq i32 %4, 0
  %i.cc = icmp sgt i32 %4, 2
  %spec.select = select i1 %i.cc, i32 %4, i32 %i.ca ; 11 uses
  %i.cd = load i32, ptr %0, align 8, !tbaa !44    ; 5 uses
  %i.ce = load i32, ptr %i.i, align 4, !tbaa !43  ; 5 uses
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
  store ptr @.str.28, ptr %i.cl, align 8, !tbaa !26
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
  %i.cp = sext i32 %i.co to i64
  %i.cq = tail call noalias noundef ptr @malloc(i64 noundef %i.cp) #38 ; 30 uses
  %.not369 = icmp eq ptr %i.cq, null
  br i1 %.not369, label %stbi__malloc_mad3.exit.thread, label %bb.v

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__malloc_mad3.exit
  %i.cr = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.cr, align 8, !tbaa !26
  br label %.critedge

bb.v:                                             ; preds = %stbi__malloc_mad3.exit
  %i.cs = icmp slt i32 %i.by, 16
  br i1 %i.cs, label %bb.w, label %bb.ck

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp sgt i32 %.0332476714, 256
  %or.cond7 = or i1 %i.bx, %i.ct
  br i1 %or.cond7, label %bb.x, label %.preheader518

.preheader518:                                    ; preds = %bb.w
  %i.cu = icmp sgt i32 %.0332476714, 0
  br i1 %i.cu, label %.lr.ph539, label %._crit_edge

.lr.ph539:                                        ; preds = %.preheader518
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 12 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 15 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 14 uses
  %wide.trip.count = zext nneg i32 %.0332476714 to i64
  %.pre588 = load ptr, ptr %i.cv, align 8, !tbaa !16 ; 2 uses
  %.pre589 = load ptr, ptr %i.cw, align 8, !tbaa !18 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.cq) #37
  %i.df = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.77, ptr %i.df, align 8, !tbaa !26
  br label %.critedge

bb.y:                                             ; preds = %.lr.ph539, %stbi__get8.exit402
  %i.dg = phi ptr [ %.pre589, %.lr.ph539 ], [ %i.gz, %stbi__get8.exit402 ] ; 2 uses
  %i.dh = phi ptr [ %.pre588, %.lr.ph539 ], [ %i.ha, %stbi__get8.exit402 ]
  %i.di = phi ptr [ %.pre589, %.lr.ph539 ], [ %i.hb, %stbi__get8.exit402 ] ; 3 uses
  %i.dj = phi ptr [ %.pre588, %.lr.ph539 ], [ %i.hc, %stbi__get8.exit402 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph539 ], [ %indvars.iv.next, %stbi__get8.exit402 ] ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.di
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  store ptr %i.dl, ptr %i.cv, align 8, !tbaa !16
  %i.dm = load i8, ptr %i.dj, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i32, ptr %i.cx, align 8, !tbaa !13
  %.not.i383 = icmp eq i32 %i.dn, 0
  br i1 %.not.i383, label %stbi__get8.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %i.cy, align 8, !tbaa !8
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dq = load i32, ptr %i.db, align 4, !tbaa !22
  %i.dr = tail call i32 %i.do(ptr noundef %i.dp, ptr noundef nonnull %i.da, i32 noundef %i.dq) #37, !inline_history !54 ; 2 uses
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !16
  %i.dt = load ptr, ptr %i.dc, align 8, !tbaa !15
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.dz = add nsw i32 %i.dy, %i.dx
  store i32 %i.dz, ptr %i.dd, align 8, !tbaa !14
  %i.ea = icmp eq i32 %i.dr, 0
  br i1 %i.ea, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cx, align 8, !tbaa !13
  store i8 0, ptr %i.da, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.eb = sext i32 %i.dr to i64
  %i.ec = getelementptr inbounds i8, ptr %i.da, i64 %i.eb
  %.pre.i = load i8, ptr %i.da, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.ad, %bb.ac
  %i.ed = phi i8 [ 0, %bb.ac ], [ %.pre.i, %bb.ad ]
  %.sink.i.i = phi ptr [ %i.de, %bb.ac ], [ %i.ec, %bb.ad ] ; 3 uses
  store ptr %.sink.i.i, ptr %i.cw, align 8, !tbaa !18
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.z, %bb.aa, %stbi__refill_buffer.exit.i
  %i.ee = phi ptr [ %i.dg, %bb.z ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.ef = phi ptr [ %i.dl, %bb.z ], [ %i.de, %stbi__refill_buffer.exit.i ], [ %i.dh, %bb.aa ]
  %i.eg = phi ptr [ %i.di, %bb.z ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.di, %bb.aa ] ; 3 uses
  %i.eh = phi ptr [ %i.dl, %bb.z ], [ %i.de, %stbi__refill_buffer.exit.i ], [ %i.dj, %bb.aa ] ; 4 uses
  %.0.i384 = phi i8 [ %i.dm, %bb.z ], [ %i.ed, %stbi__refill_buffer.exit.i ], [ 0, %bb.aa ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  store i8 %.0.i384, ptr %i.ej, align 2, !tbaa !24
  %i.ek = icmp ult ptr %i.eh, %i.eg
  br i1 %i.ek, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %stbi__get8.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 3 uses
  store ptr %i.el, ptr %i.cv, align 8, !tbaa !16
  %i.em = load i8, ptr %i.eh, align 1, !tbaa !24
  br label %stbi__get8.exit390

bb.af:                                            ; preds = %stbi__get8.exit
  %i.en = load i32, ptr %i.cx, align 8, !tbaa !13
  %.not.i385 = icmp eq i32 %i.en, 0
  br i1 %.not.i385, label %stbi__get8.exit390, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = load ptr, ptr %i.cy, align 8, !tbaa !8
  %i.ep = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.eq = load i32, ptr %i.db, align 4, !tbaa !22
  %i.er = tail call i32 %i.eo(ptr noundef %i.ep, ptr noundef nonnull %i.da, i32 noundef %i.eq) #37, !inline_history !54 ; 2 uses
  %i.es = load ptr, ptr %i.cv, align 8, !tbaa !16
  %i.et = load ptr, ptr %i.dc, align 8, !tbaa !15
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.ez = add nsw i32 %i.ey, %i.ex
  store i32 %i.ez, ptr %i.dd, align 8, !tbaa !14
  %i.fa = icmp eq i32 %i.er, 0
  br i1 %i.fa, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cx, align 8, !tbaa !13
  store i8 0, ptr %i.da, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i387

bb.ai:                                            ; preds = %bb.ag
  %i.fb = sext i32 %i.er to i64
  %i.fc = getelementptr inbounds i8, ptr %i.da, i64 %i.fb
  %.pre.i386 = load i8, ptr %i.da, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i387

stbi__refill_buffer.exit.i387:                    ; preds = %bb.ai, %bb.ah
  %i.fd = phi i8 [ 0, %bb.ah ], [ %.pre.i386, %bb.ai ]
  %.sink.i.i388 = phi ptr [ %i.de, %bb.ah ], [ %i.fc, %bb.ai ] ; 3 uses
  store ptr %.sink.i.i388, ptr %i.cw, align 8, !tbaa !18
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !16
  br label %stbi__get8.exit390

stbi__get8.exit390:                               ; preds = %bb.ae, %bb.af, %stbi__refill_buffer.exit.i387
  %i.fe = phi ptr [ %i.ee, %bb.ae ], [ %.sink.i.i388, %stbi__refill_buffer.exit.i387 ], [ %i.ee, %bb.af ] ; 2 uses
  %i.ff = phi ptr [ %i.el, %bb.ae ], [ %i.de, %stbi__refill_buffer.exit.i387 ], [ %i.ef, %bb.af ]
  %i.fg = phi ptr [ %i.eg, %bb.ae ], [ %.sink.i.i388, %stbi__refill_buffer.exit.i387 ], [ %i.eg, %bb.af ] ; 3 uses
  %i.fh = phi ptr [ %i.el, %bb.ae ], [ %i.de, %stbi__refill_buffer.exit.i387 ], [ %i.eh, %bb.af ] ; 4 uses
  %.0.i389 = phi i8 [ %i.em, %bb.ae ], [ %i.fd, %stbi__refill_buffer.exit.i387 ], [ 0, %bb.af ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %.0.i389, ptr %i.fi, align 1, !tbaa !24
  %i.fj = icmp ult ptr %i.fh, %i.fg
  br i1 %i.fj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %stbi__get8.exit390
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 3 uses
  store ptr %i.fk, ptr %i.cv, align 8, !tbaa !16
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !24
  br label %stbi__get8.exit396

bb.ak:                                            ; preds = %stbi__get8.exit390
  %i.fm = load i32, ptr %i.cx, align 8, !tbaa !13
  %.not.i391 = icmp eq i32 %i.fm, 0
  br i1 %.not.i391, label %stbi__get8.exit396, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fn = load ptr, ptr %i.cy, align 8, !tbaa !8
  %i.fo = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.fp = load i32, ptr %i.db, align 4, !tbaa !22
  %i.fq = tail call i32 %i.fn(ptr noundef %i.fo, ptr noundef nonnull %i.da, i32 noundef %i.fp) #37, !inline_history !54 ; 2 uses
  %i.fr = load ptr, ptr %i.cv, align 8, !tbaa !16
  %i.fs = load ptr, ptr %i.dc, align 8, !tbaa !15
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.fy = add nsw i32 %i.fx, %i.fw
  store i32 %i.fy, ptr %i.dd, align 8, !tbaa !14
  %i.fz = icmp eq i32 %i.fq, 0
  br i1 %i.fz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cx, align 8, !tbaa !13
  store i8 0, ptr %i.da, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@stbi__hdr_load:bb.a
  br label %stbi__refill_buffer.exit.i162

stbi__refill_buffer.exit.i162:                    ; preds = %bb.au, %bb.at
  %i.gw = phi i8 [ 0, %bb.at ], [ %.pre.i161, %bb.au ]
  %.sink.i.i163 = phi ptr [ %i.cj, %bb.at ], [ %i.gv, %bb.au ]
  store ptr %.sink.i.i163, ptr %i.cb, align 8, !tbaa !18
  store ptr %i.cj, ptr %i.ca, align 8, !tbaa !16
  br label %stbi__get8.exit165

stbi__get8.exit165:                               ; preds = %bb.aq, %bb.ar, %stbi__refill_buffer.exit.i162
  %.0.i164 = phi i8 [ %i.gf, %bb.aq ], [ %i.gw, %stbi__refill_buffer.exit.i162 ], [ 0, %bb.ar ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gx = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.gx
  store i8 %.0.i164, ptr %gep, align 1, !tbaa !24
  %i.gy = add nuw nsw i32 %.1208, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gy, %i.er
  br i1 %exitcond.not, label %.loopexit.loopexit227, label %.preheader179, !llvm.loop !117

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
  store i8 %.0.i158, ptr %gep323.epil, align 1, !tbaa !24
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph211.epil, !llvm.loop !118

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
  br i1 %i.hd, label %..critedge_crit_edge, label %bb.ac, !llvm.loop !119

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next261, 4
  br i1 %exitcond263.not, label %.lr.ph217, label %.preheader181, !llvm.loop !120

bb.av:                                            ; preds = %.lr.ph217, %stbi__hdr_convert.exit
  %indvars.iv264 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next265, %stbi__hdr_convert.exit ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv264, %i.dr
  %i.hf = mul nsw i64 %i.he, %i.cl
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hf ; 11 uses
  %i.hh = shl nuw nsw i64 %indvars.iv264, 2
  %i.hi = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.hh ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 3
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24  ; 2 uses
  %.not.i166 = icmp eq i8 %i.hk, 0
  br i1 %.not.i166, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nsw i32 %i.hl, -136
  %i.hn = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.hm) #37
  %i.ho = fptrunc double %i.hn to float           ; 4 uses
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !24  ; 2 uses
  br i1 %i.ck, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hq = zext i8 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !24
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.ht, %i.hq
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !24
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hu, %i.hx
  %i.hz = uitofp nneg i32 %i.hy to float
  %i.ia = fmul float %i.ho, %i.hz
  %i.ib = fdiv float %i.ia, 3.000000e+00
  store float %i.ib, ptr %i.hg, align 4, !tbaa !121
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ic = uitofp i8 %i.hp to float
  %i.id = fmul float %i.ho, %i.ic
  store float %i.id, ptr %i.hg, align 4, !tbaa !121
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !24
  %i.ig = uitofp i8 %i.if to float
  %i.ih = fmul float %i.ho, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float %i.ih, ptr %i.ii, align 4, !tbaa !121
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !24
  %i.il = uitofp i8 %i.ik to float
  %i.im = fmul float %i.ho, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float %i.im, ptr %i.in, align 4, !tbaa !121
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  switch i32 %4, label %stbi__hdr_convert.exit [
    i32 2, label %bb.ba
    i32 4, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.io = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.io, align 4, !tbaa !121
  br label %stbi__hdr_convert.exit

bb.bb:                                            ; preds = %bb.az
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store float 1.000000e+00, ptr %i.ip, align 4, !tbaa !121
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
  store float 1.000000e+00, ptr %i.iq, align 4, !tbaa !121
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store float 0.000000e+00, ptr %i.ir, align 4, !tbaa !121
  store <2 x float> zeroinitializer, ptr %i.hg, align 4, !tbaa !121
  br label %stbi__hdr_convert.exit

bb.bf:                                            ; preds = %bb.bc
  %i.is = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store float 1.000000e+00, ptr %i.is, align 4, !tbaa !121
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !121
  br label %stbi__hdr_convert.exit

stbi__hdr_convert.exit:                           ; preds = %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.be, %bb.bg
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond267.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond267.not, label %._crit_edge218, label %bb.av, !llvm.loop !123

._crit_edge218:                                   ; preds = %stbi__hdr_convert.exit
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %._crit_edge222, label %bb.x, !llvm.loop !124

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
define noundef ptr @stbi__hdr_to_ldr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
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
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef %i.i) #38 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %stbi__malloc_mad3.exit.thread, label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef nonnull %0) #37
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.l, align 8, !tbaa !26
  br label %bb.i

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.m = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.m                     ; 4 uses
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.o = icmp sgt i32 %.046, 0
  %i.p = load float, ptr @stbi__h2l_scale_i, align 4
  %i.q = load float, ptr @stbi__h2l_gamma_i, align 4
  %i.r = fpext float %i.q to double
  br i1 %i.o, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.s = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64
  %i.t = icmp slt i32 %.046, %3
  %i.u = zext nneg i32 %.046 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.h ] ; 2 uses
  %i.v = mul nuw nsw i64 %indvars.iv63, %i.s      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv58, %i.v          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !121
  %i.z = fmul float %i.y, %i.p
  %i.aa = fpext float %i.z to double
  %i.ab = tail call double @pow(double noundef %i.aa, double noundef %i.r) #37
  %i.ac = fptrunc double %i.ab to float
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %spec.store.select.us = select i1 %i.ae, float 0.000000e+00, float %i.ad ; 2 uses
  %i.af = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.af, float 2.550000e+02, float %spec.store.select.us
  %i.ag = fptosi float %spec.store.select2.us to i32
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds i8, ptr %i.j, i64 %i.w
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !24
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.f, !llvm.loop !125

bb.g:                                             ; preds = %._crit_edge.us
  %i.aj = add nsw i64 %i.v, %i.u                  ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !121
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %spec.store.select1.us = select i1 %i.an, float 0.000000e+00, float %i.am ; 2 uses
  %i.ao = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.ao, float 2.550000e+02, float %spec.store.select1.us
  %i.ap = fptosi float %spec.store.select3.us to i32
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds i8, ptr %i.j, i64 %i.aj
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !126

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.as = icmp sgt i32 %3, 0
  br i1 %i.as, label %.preheader.preheader, label %._crit_edge55

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.at = zext nneg i32 %3 to i64
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
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !121
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.aw = fcmp olt <4 x float> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.aw, <4 x float> zeroinitializer, <4 x float> %i.av ; 2 uses
  %i.ay = fcmp ogt <4 x float> %i.ax, splat (float 2.550000e+02)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ax
  %i.ba = fptosi <4 x float> %i.az to <4 x i32>
  %i.bb = trunc <4 x i32> %i.ba to <4 x i8>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <4 x i8> %i.bb, ptr %i.bc, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %.preheader.preheader75

.preheader.preheader75:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader75, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader75 ] ; 2 uses
  %i.be = mul nuw nsw i64 %indvars.iv, %i.at      ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !121
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.bi = fcmp olt float %i.bh, 0.000000e+00
  %spec.store.select1 = select i1 %i.bi, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bj = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.bj, float 2.550000e+02, float %spec.store.select1
  %i.bk = fptosi float %spec.store.select3 to i32
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.be
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.preheader, !llvm.loop !128

._crit_edge55:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge55, %stbi__malloc_mad3.exit.thread
  %.0 = phi ptr [ null, %stbi__malloc_mad3.exit.thread ], [ %i.j, %._crit_edge55 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi__tga_test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 21 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %stbi__get8.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = tail call i32 %i.j(ptr noundef %i.l, ptr noundef nonnull %i.m, i32 noundef %i.o) #37, !inline_history !54 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 8, !tbaa !14
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.m, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.p to i64
  %i.ad = getelementptr inbounds i8, ptr %i.m, i64 %i.ac
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %.sink.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %stbi__get8.exit.sink.split

stbi__get8.exit.sink.split:                       ; preds = %stbi__refill_buffer.exit.i, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.ae, %stbi__refill_buffer.exit.i ] ; 2 uses
  %.ph = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %stbi__get8.exit.sink.split, %bb.c
  %i.af = phi ptr [ %i.d, %bb.c ], [ %.ph, %stbi__get8.exit.sink.split ] ; 3 uses
  %i.ag = phi ptr [ %i.b, %bb.c ], [ %.sink, %stbi__get8.exit.sink.split ] ; 4 uses
  %i.ah = icmp ult ptr %i.ag, %i.af
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !16
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !24
  br label %stbi__get8.exit65

bb.h:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !13
  %.not.i60 = icmp eq i32 %i.al, 0
  br i1 %.not.i60, label %stbi__get8.exit65.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_2
begin_hunk_3_@stbi__load_gif_main:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bx = call ptr @stbi__gif_load_next(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %5, i32 poison, ptr noundef nonnull %i.bt) ; 3 uses
  %i.by = icmp eq ptr %i.bx, %0
  %.not9293 = icmp eq ptr %i.bx, null
  %.not92 = or i1 %i.by, %.not9293
  br i1 %.not92, label %._crit_edge.loopexit.loopexit, label %.peel.next, !llvm.loop !169

._crit_edge.loopexit.loopexit:                    ; preds = %bb.w
  %i.bz = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.loopexit, %bb.d
  %.075.lcssa = phi i32 [ 0, %bb.d ], [ 1, %bb.i ], [ %i.bz, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ null, %bb.d ], [ %i.n, %bb.i ], [ %i.ad, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37
  call void @free(ptr noundef %i.cb) #37
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !38
  call void @free(ptr noundef %i.cd) #37
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39
  call void @free(ptr noundef %i.cf) #37
  %i.cg = and i32 %6, -5
  %or.cond.not = icmp eq i32 %i.cg, 0
  br i1 %or.cond.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ch = load i32, ptr %7, align 8, !tbaa !34
  %i.ci = mul nsw i32 %i.ch, %.075.lcssa
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !36
  %i.cl = call ptr @stbi__convert_format(ptr noundef %.072.lcssa, i32 noundef 4, i32 noundef %6, i32 noundef %i.ci, i32 noundef %i.ck)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.4 = phi ptr [ %i.cl, %bb.x ], [ %.072.lcssa, %._crit_edge ]
  store i32 %.075.lcssa, ptr %4, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.thread, %stbi__load_gif_main_outofmem.exit, %bb.y, %stbi__load_gif_main_outofmem.exit109, %stbi__load_gif_main_outofmem.exit105
  %.6 = phi ptr [ %.4, %bb.y ], [ null, %stbi__load_gif_main_outofmem.exit105 ], [ null, %stbi__load_gif_main_outofmem.exit109 ], [ null, %stbi__load_gif_main_outofmem.exit ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.91, ptr %i.cm, align 8, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.7 = phi ptr [ %.6, %.critedge ], [ null, %bb.z ]
  ret ptr %.7
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi__loadf_main(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
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
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %.not9.i = icmp eq i32 %i.g, 0
  br i1 %.not9.i, label %stbi__float_postprocess.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr @stbi__vertically_flip_on_load_global, align 4, !tbaa !27
  %.not8.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i, label %stbi__float_postprocess.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not11.i = icmp eq i32 %4, 0
  br i1 %.not11.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = phi i32 [ %i.i, %bb.g ], [ %4, %bb.f ]
  %i.k = load i32, ptr %1, align 4, !tbaa !27
  %i.l = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
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
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.i, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %stbi__vertical_flip.exit.i, label %.lr.ph.i.i, !llvm.loop !155

stbi__vertical_flip.exit.i:                       ; preds = %._crit_edge.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %stbi__float_postprocess.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = tail call ptr @stbi__load_and_postprocess_8bit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %1, align 4, !tbaa !27
  %i.ag = load i32, ptr %2, align 4, !tbaa !27
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ai = phi i32 [ %i.ah, %bb.l ], [ %4, %bb.k ]
  %i.aj = tail call ptr @stbi__ldr_to_hdr(ptr noundef nonnull %i.ae, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.ai)
  br label %stbi__float_postprocess.exit

bb.n:                                             ; preds = %bb.j
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str, ptr %i.ak, align 8, !tbaa !26
  br label %stbi__float_postprocess.exit

stbi__float_postprocess.exit:                     ; preds = %bb.b, %bb.d, %bb.e, %stbi__vertical_flip.exit.i, %bb.n, %bb.m
  %.0 = phi ptr [ null, %bb.n ], [ %i.aj, %bb.m ], [ %i.c, %stbi__vertical_flip.exit.i ], [ %i.c, %bb.e ], [ %i.c, %bb.d ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @stbi__ldr_to_hdr(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 {
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
  store ptr @.str.1, ptr %i.m, align 8, !tbaa !26
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
  %i.v = sext i32 %3 to i64
  %wide.trip.count59 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %.0 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i32 %.0, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod73 = trunc i32 %.0 to i1
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %indvars.iv56 = phi i64 [ 0, %.preheader49.preheader ], [ %indvars.iv.next57, %._crit_edge ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv56, %i.v      ; 3 uses
  br i1 %i.w, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49, %.preheader49.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader49.new ], [ 0, %.preheader49 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader49.new ], [ 0, %.preheader49 ]
  %i.y = add nsw i64 %indvars.iv, %i.x            ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !24
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fdiv float %i.ab, 2.550000e+02
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call double @pow(double noundef %i.ad, double noundef %i.s) #37
  %i.af = fmul double %i.ae, %i.u
  %i.ag = fptrunc double %i.af to float
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y
  store float %i.ag, ptr %i.ah, align 4, !tbaa !121
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ai = add nsw i64 %indvars.iv.next, %i.x      ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24
  %i.al = uitofp i8 %i.ak to float
  %i.am = fdiv float %i.al, 2.550000e+02
  %i.an = fpext float %i.am to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef %i.s) #37
  %i.ap = fmul double %i.ao, %i.u
  %i.aq = fptrunc double %i.ap to float
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ai
  store float %i.aq, ptr %i.ar, align 4, !tbaa !121
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader49.new, !llvm.loop !171

._crit_edge.unr-lcssa:                            ; preds = %.preheader49.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader49
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.as = add nsw i64 %indvars.iv.epil.init, %i.x ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = uitofp i8 %i.au to float
  %i.aw = fdiv float %i.av, 2.550000e+02
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @pow(double noundef %i.ax, double noundef %i.s) #37
  %i.az = fmul double %i.ay, %i.u
  %i.ba = fptrunc double %i.az to float
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as
  store float %i.ba, ptr %i.bb, align 4, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge52.split, label %.preheader49, !llvm.loop !172

._crit_edge52.split:                              ; preds = %._crit_edge, %.preheader49.lr.ph
  br i1 %.not47, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %._crit_edge52.split
  %i.bc = sext i32 %3 to i64                      ; 3 uses
  %i.bd = sext i32 %.0 to i64                     ; 3 uses
  %wide.trip.count64 = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter74 = and i64 %wide.trip.count64, 1
  %i.be = icmp eq i32 %i.d, 1
  br i1 %i.be, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter77 = and i64 %wide.trip.count64, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next62.1, %.lr.ph ] ; 3 uses
  %niter78 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter78.next.1, %.lr.ph ]
  %i.bf = mul nuw nsw i64 %indvars.iv61, %i.bc
  %i.bg = add nsw i64 %i.bf, %i.bd                ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fdiv float %i.bj, 2.550000e+02
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bg
  store float %i.bk, ptr %i.bl, align 4, !tbaa !121
  %indvars.iv.next62 = or disjoint i64 %indvars.iv61, 1
  %i.bm = mul nuw nsw i64 %indvars.iv.next62, %i.bc
  %i.bn = add nsw i64 %i.bm, %i.bd                ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fdiv float %i.bq, 2.550000e+02
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bn
  store float %i.br, ptr %i.bs, align 4, !tbaa !121
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !173

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv61.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next62.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.bt = mul nuw nsw i64 %indvars.iv61.epil.init, %i.bc
  %i.bu = add nsw i64 %i.bt, %i.bd                ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !24
  %i.bx = uitofp i8 %i.bw to float
  %i.by = fdiv float %i.bx, 2.550000e+02
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bu
  store float %i.by, ptr %i.bz, align 4, !tbaa !121
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %._crit_edge52.split
  tail call void @free(ptr noundef nonnull %0) #37
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit, %stbi__malloc_mad4.exit.thread
  %.042 = phi ptr [ null, %stbi__malloc_mad4.exit.thread ], [ %i.k, %.loopexit ], [ null, %bb.a ]
  ret ptr %.042
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !16
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !18
  %i.j = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !25 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !14
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !14
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !17
  %i.y = call ptr @stbi__loadf_main(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret ptr %i.y
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.2) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.l = call i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128) #37, !inline_history !174 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !14
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !14
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !24
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !17
  %i.aa = call noundef ptr @stbi__loadf_main(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !19
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !16
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.j = call i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !164 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
end_hunk_3
begin_hunk_4_@stbi__get16be:bb.a

stbi__get8.exit7:                                 ; preds = %bb.g, %bb.h, %stbi__refill_buffer.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %stbi__refill_buffer.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = zext i8 %.0.i6 to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  ret i32 %i.bp
}

; Function Attrs: nounwind uwtable
define i32 @stbi__get32be(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @stbi__get16be(ptr noundef %0)
  %i.b = shl nuw i32 %i.a, 16
  %i.c = tail call i32 @stbi__get16be(ptr noundef %0)
  %i.d = or disjoint i32 %i.b, %i.c
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 65536) i32 @stbi__get16le(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !16
  %i.g = load i8, ptr %i.b, align 1, !tbaa !24
  br label %stbi__get8.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %stbi__get8.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !22
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #37, !inline_history !54 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !14
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.b, %bb.c, %stbi__refill_buffer.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %stbi__refill_buffer.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %stbi__get8.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !16
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !24
  br label %stbi__get8.exit7

bb.h:                                             ; preds = %stbi__get8.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !13
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %stbi__get8.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22
  %i.av = tail call i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au) #37, !inline_history !54 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !14
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i4

stbi__refill_buffer.exit.i4:                      ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !16
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
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias noundef ptr @malloc(i64 noundef %i.j) #38 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad3.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad3.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.n = shl nsw i32 %1, 3
  %i.o = add nsw i32 %i.n, %2                     ; 2 uses
  %.11167198 = add i32 %3, -1                     ; 32 uses
  %i.p = icmp sgt i32 %.11167198, -1              ; 12 uses
  switch i32 %i.o, label %.critedge [
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
  %i.q = zext i32 %3 to i64                       ; 22 uses
  %min.iters.check504 = icmp ult i32 %3, 8
  %n.vec506 = and i64 %i.q, 4294967288            ; 5 uses
  %i.r = trunc nuw i64 %n.vec506 to i32
  %i.s = sub i32 %.11167198, %i.r
  %i.t = shl nuw nsw i64 %n.vec506, 1
  %i.u = shl nuw nsw i64 %n.vec506, 2
  %cmp.n521 = icmp eq i64 %n.vec506, %i.q
  %min.iters.check451 = icmp ult i32 %3, 9
  %min.iters.check453 = icmp ult i32 %3, 17
  %i.v = and i64 %i.q, 15                         ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 16, i64 %i.v         ; 2 uses
  %n.vec455 = sub nsw i64 %i.q, %i.x              ; 5 uses
  %i.y = trunc i64 %n.vec455 to i32
  %i.z = sub i32 %.11167198, %i.y
  %i.aa = shl nsw i64 %n.vec455, 2
  %min.epilog.iters.check484 = icmp samesign ult i64 %i.x, 9
  %i.ab = and i64 %i.q, 7                         ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec486 = sub nsw i64 %i.q, %i.ad             ; 4 uses
  %i.ae = trunc i64 %n.vec486 to i32
  %i.af = sub i32 %.11167198, %i.ae
  %i.ag = shl nsw i64 %n.vec486, 2
  %min.iters.check430 = icmp ult i32 %3, 8
  %n.vec432 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ah = trunc nuw i64 %n.vec432 to i32
  %i.ai = sub i32 %.11167198, %i.ah
  %i.aj = shl nuw nsw i64 %n.vec432, 1
  %i.ak = mul nuw nsw i64 %n.vec432, 3
  %cmp.n447 = icmp eq i64 %n.vec432, %i.q
  %min.iters.check377 = icmp ult i32 %3, 8
  %min.iters.check379 = icmp ult i32 %3, 16
  %i.al = and i64 %i.q, 8
  %n.vec381 = and i64 %i.q, 4294967280            ; 6 uses
  %i.am = trunc nuw i64 %n.vec381 to i32
  %i.an = sub i32 %.11167198, %i.am
  %i.ao = mul nuw nsw i64 %n.vec381, 3
  %cmp.n403 = icmp eq i64 %n.vec381, %i.q
  %min.epilog.iters.check410.not.not = icmp eq i64 %i.al, 0
  %n.vec412 = and i64 %i.q, 4294967288            ; 5 uses
  %i.ap = trunc nuw i64 %n.vec412 to i32
  %i.aq = sub i32 %.11167198, %i.ap
  %i.ar = mul nuw nsw i64 %n.vec412, 3
  %cmp.n426 = icmp eq i64 %n.vec412, %i.q
  %xtraiter = and i32 %3, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6162.prol = add i32 %3, -2
  %i.as = icmp eq i32 %.11167198, 0
  %xtraiter538 = and i32 %3, 1
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  %.5161.prol = add i32 %3, -2
  %i.at = icmp eq i32 %.11167198, 0
  %xtraiter540 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  %i.au = icmp ult i32 %.11167198, 3
  %min.iters.check326 = icmp ult i32 %3, 9
  %min.iters.check328 = icmp ult i32 %3, 17
  %i.av = and i64 %i.q, 15                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 16, i64 %i.av      ; 2 uses
  %n.vec330 = sub nsw i64 %i.q, %i.ax             ; 5 uses
  %i.ay = trunc i64 %n.vec330 to i32
  %i.az = sub i32 %.11167198, %i.ay
  %i.ba = shl nsw i64 %n.vec330, 1
  %min.epilog.iters.check358 = icmp samesign ult i64 %i.ax, 9
  %i.bb = and i64 %i.q, 7                         ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 8, i64 %i.bb
  %n.vec360 = sub nsw i64 %i.q, %i.bd             ; 4 uses
  %i.be = trunc i64 %n.vec360 to i32
  %i.bf = sub i32 %.11167198, %i.be
  %i.bg = shl nsw i64 %n.vec360, 1
  %xtraiter542 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod543.not = icmp eq i32 %xtraiter542, 0
  %i.bh = icmp ult i32 %.11167198, 3
  %xtraiter545 = and i32 %3, 3                    ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.bi = icmp ult i32 %.11167198, 3
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check308 = icmp ult i32 %3, 16
  %i.bj = and i64 %i.q, 12
  %n.vec = and i64 %i.q, 4294967280               ; 6 uses
  %i.bk = trunc nuw i64 %n.vec to i32
  %i.bl = sub i32 %.11167198, %i.bk
  %i.bm = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.q
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  %n.vec315 = and i64 %i.q, 4294967292            ; 5 uses
  %i.bn = trunc nuw i64 %n.vec315 to i32
  %i.bo = sub i32 %.11167198, %i.bn
  %i.bp = shl nuw nsw i64 %n.vec315, 1
  %cmp.n322 = icmp eq i64 %n.vec315, %i.q
  %xtraiter548 = and i32 %3, 1
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  %.11167.prol = add i32 %3, -2
  %i.bq = icmp eq i32 %.11167198, 0
  br label %bb.e

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  tail call void @free(ptr noundef %0) #37
  %i.br = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.br, align 8, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv to i32
  %i.bt = mul i32 %3, %i.bs                       ; 2 uses
  %i.bu = mul i32 %i.bt, %1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv ; 126 uses
  %i.bx = mul i32 %i.bt, %2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.by ; 50 uses
  switch i32 %i.o, label %.preheader195 [
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
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader195
  br i1 %lcmp.mod549.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !24
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11167201.unr = phi i32 [ %.11167198, %.lr.ph.preheader ], [ %.11167.prol, %.lr.ph.prol ]
  %.11200.unr = phi ptr [ %i.bz, %.lr.ph.preheader ], [ %i.ci, %.lr.ph.prol ]
  %.11153199.unr = phi ptr [ %i.bw, %.lr.ph.preheader ], [ %i.ch, %.lr.ph.prol ]
  br i1 %i.bq, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.p, label %.lr.ph206.preheader, label %.loopexit

.lr.ph206.preheader:                              ; preds = %.preheader193
  br i1 %min.iters.check504, label %.lr.ph206.preheader536, label %vector.ph505

vector.ph505:                                     ; preds = %.lr.ph206.preheader
  %i.cj = getelementptr i8, ptr %i.bz, i64 %i.t
  %i.ck = getelementptr i8, ptr %i.bw, i64 %i.u
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph505
end_hunk_4
begin_hunk_5_@stbi__parse_entropy_coded_data:bb.a
  %i.x = getelementptr inbounds [96 x i8], ptr %i.v, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !255
  %i.aa = add nsw i32 %i.z, 7
  %i.ab = ashr i32 %i.aa, 3                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !256
  %i.ae = add nsw i32 %i.ad, 7
  %i.af = ashr i32 %i.ae, 3                       ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.ah = icmp sgt i32 %i.ab, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 13960
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13448
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  br i1 %i.ah, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge292
  %.0208293 = phi i32 [ %i.bu, %._crit_edge292 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.as = shl nuw nsw i32 %.0208293, 3
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.j
  %indvars.iv310 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next311, %bb.j ] ; 2 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !257
  %i.au = load i32, ptr %i.ak, align 8, !tbaa !258
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [1680 x i8], ptr %i.aj, i64 %i.av
  %i.ax = sext i32 %i.at to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.ax
  %i.az = getelementptr inbounds [1024 x i8], ptr %i.am, i64 %i.ax
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !259
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [128 x i8], ptr %i.an, i64 %i.bb
  %i.bd = call i32 @stbi__jpeg_decode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i32 noundef %i.u, ptr noundef nonnull %i.bc)
  %.not225 = icmp eq i32 %i.bd, 0
  br i1 %.not225, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !105
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !260
  %i.bg = load i32, ptr %i.ar, align 4, !tbaa !261 ; 2 uses
  %i.bh = mul i32 %i.as, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = shl nuw nsw i64 %indvars.iv310, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  call void %i.be(ptr noundef %i.bl, i32 noundef %i.bg, ptr noundef nonnull %i.a) #37
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !252 ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.m, align 4, !tbaa !252
  %i.bo = icmp slt i32 %i.bm, 2
  br i1 %i.bo, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !232
  %i.bq = icmp slt i32 %i.bp, 24
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = load i8, ptr %i.j, align 8, !tbaa !109
  %i.bs = and i8 %i.br, -8
  %or.cond = icmp eq i8 %i.bs, -48
  br i1 %or.cond, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.c, align 4, !tbaa !232
  store i32 0, ptr %i.d, align 8, !tbaa !234
  store i32 0, ptr %i.e, align 4, !tbaa !231
  store i32 0, ptr %i.f, align 8, !tbaa !236
  store i32 0, ptr %i.g, align 8, !tbaa !236
  store i32 0, ptr %i.h, align 8, !tbaa !236
  store i32 0, ptr %i.i, align 8, !tbaa !236
  store i8 -1, ptr %i.j, align 8, !tbaa !109
  %i.bt = load i32, ptr %i.k, align 8, !tbaa !251 ; 2 uses
  %.not.i236 = icmp eq i32 %i.bt, 0
  %spec.select.i237 = select i1 %.not.i236, i32 2147483647, i32 %i.bt
  store i32 %spec.select.i237, ptr %i.m, align 4, !tbaa !252
  store i32 0, ptr %i.n, align 4, !tbaa !244
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count
  br i1 %exitcond313.not, label %._crit_edge292, label %bb.d, !llvm.loop !262

._crit_edge292:                                   ; preds = %bb.j
  %i.bu = add nuw nsw i32 %.0208293, 1            ; 2 uses
  %exitcond314.not = icmp eq i32 %i.bu, %i.af
  br i1 %exitcond314.not, label %.loopexit, label %.preheader, !llvm.loop !263

.loopexit:                                        ; preds = %._crit_edge292, %bb.d, %bb.h, %bb.c, %.preheader.lr.ph
  %.3213 = phi i32 [ 1, %bb.h ], [ 1, %bb.c ], [ 1, %.preheader.lr.ph ], [ 0, %bb.d ], [ 1, %._crit_edge292 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.thread248

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18068 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !264 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.preheader254.lr.ph, label %.critedge

.preheader254.lr.ph:                              ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 18064 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 18520
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 13960
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 13448
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.cg = load i32, ptr %i.by, align 8, !tbaa !265 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.preheader254, label %.critedge

.preheader254:                                    ; preds = %.preheader254.lr.ph, %._crit_edge288
  %i.ci = phi i32 [ %i.fd, %._crit_edge288 ], [ %i.bw, %.preheader254.lr.ph ]
  %i.cj = phi i32 [ %i.fe, %._crit_edge288 ], [ %spec.select.i, %.preheader254.lr.ph ] ; 2 uses
  %i.ck = phi i32 [ %i.ff, %._crit_edge288 ], [ %i.cg, %.preheader254.lr.ph ] ; 2 uses
  %.0205289 = phi i32 [ %i.fg, %._crit_edge288 ], [ 0, %.preheader254.lr.ph ] ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.preheader253, label %._crit_edge288

.preheader253:                                    ; preds = %.preheader254, %bb.q
  %i.cm = phi i32 [ %i.ez, %bb.q ], [ %i.cj, %.preheader254 ]
  %.0206287 = phi i32 [ %i.fa, %bb.q ], [ 0, %.preheader254 ] ; 2 uses
  %i.cn = load i32, ptr %i.q, align 4, !tbaa !254 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph285, label %._crit_edge286

.lr.ph285:                                        ; preds = %.preheader253, %.critedge230
  %i.cp = phi i32 [ %i.eo, %.critedge230 ], [ %i.cn, %.preheader253 ] ; 2 uses
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %.critedge230 ], [ 0, %.preheader253 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv307
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !27 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [96 x i8], ptr %i.ca, i64 %i.cs ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !266 ; 2 uses
  %.not224282 = icmp sgt i32 %i.cv, 0
  br i1 %.not224282, label %.preheader252.lr.ph, label %.critedge230

.preheader252.lr.ph:                              ; preds = %.lr.ph285
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.dc = load i32, ptr %i.cw, align 4, !tbaa !267 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.preheader252, label %.critedge230

.preheader252:                                    ; preds = %.preheader252.lr.ph, %._crit_edge281
  %i.de = phi i32 [ %i.el, %._crit_edge281 ], [ %i.cv, %.preheader252.lr.ph ]
  %i.df = phi i32 [ %i.em, %._crit_edge281 ], [ %i.dc, %.preheader252.lr.ph ] ; 3 uses
  %.0202283 = phi i32 [ %i.en, %._crit_edge281 ], [ 0, %.preheader252.lr.ph ] ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %.preheader252, %bb.l
  %i.dh = phi i32 [ %i.ej, %bb.l ], [ %i.df, %.preheader252 ]
  %.0203279 = phi i32 [ %i.ei, %bb.l ], [ 0, %.preheader252 ] ; 2 uses
  %i.di = load i32, ptr %i.cu, align 8, !tbaa !266
  %i.dj = load i32, ptr %i.cx, align 4, !tbaa !257
  %i.dk = load i32, ptr %i.cy, align 8, !tbaa !258
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [1680 x i8], ptr %i.cb, i64 %i.dl
  %i.dn = sext i32 %i.dj to i64                   ; 2 uses
  %i.do = getelementptr inbounds [1680 x i8], ptr %i.cc, i64 %i.dn
  %i.dp = getelementptr inbounds [1024 x i8], ptr %i.cd, i64 %i.dn
  %i.dq = load i32, ptr %i.cz, align 4, !tbaa !259
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [128 x i8], ptr %i.ce, i64 %i.dr
  %i.dt = call i32 @stbi__jpeg_decode_block(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, i32 noundef %i.cr, ptr noundef nonnull %i.ds)
  %.not223.not = icmp eq i32 %i.dt, 0
  br i1 %.not223.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.lr.ph280
  %i.du = mul nsw i32 %i.di, %.0205289
  %i.dv = add nsw i32 %i.du, %.0202283
  %i.dw = shl nsw i32 %i.dv, 3
  %i.dx = mul nuw nsw i32 %i.dh, %.0206287
  %i.dy = add nsw i32 %i.dx, %.0203279
  %i.dz = shl nsw i32 %i.dy, 3
  %i.ea = load ptr, ptr %i.cf, align 8, !tbaa !105
  %i.eb = load ptr, ptr %i.da, align 8, !tbaa !260
  %i.ec = load i32, ptr %i.db, align 4, !tbaa !261 ; 2 uses
  %i.ed = mul nsw i32 %i.dw, %i.ec
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  %i.eg = sext i32 %i.dz to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 %i.eg
  call void %i.ea(ptr noundef %i.eh, i32 noundef %i.ec, ptr noundef nonnull %i.b) #37
  %i.ei = add nuw nsw i32 %.0203279, 1            ; 2 uses
  %i.ej = load i32, ptr %i.cw, align 4, !tbaa !267 ; 3 uses
  %i.ek = icmp slt i32 %i.ei, %i.ej
  br i1 %i.ek, label %.lr.ph280, label %._crit_edge281.loopexit, !llvm.loop !268

._crit_edge281.loopexit:                          ; preds = %bb.l
  %.pre318 = load i32, ptr %i.cu, align 8, !tbaa !266
  br label %._crit_edge281

._crit_edge281:                                   ; preds = %._crit_edge281.loopexit, %.preheader252
  %i.el = phi i32 [ %.pre318, %._crit_edge281.loopexit ], [ %i.de, %.preheader252 ] ; 2 uses
  %i.em = phi i32 [ %i.ej, %._crit_edge281.loopexit ], [ %i.df, %.preheader252 ]
  %i.en = add nuw nsw i32 %.0202283, 1            ; 2 uses
  %.not224 = icmp slt i32 %i.en, %i.el
  br i1 %.not224, label %.preheader252, label %.critedge230.loopexit, !llvm.loop !269

.critedge230.loopexit:                            ; preds = %._crit_edge281
  %.pre319 = load i32, ptr %i.q, align 4, !tbaa !254
  br label %.critedge230

.critedge230:                                     ; preds = %.preheader252.lr.ph, %.critedge230.loopexit, %.lr.ph285
  %i.eo = phi i32 [ %i.cp, %.lr.ph285 ], [ %.pre319, %.critedge230.loopexit ], [ %i.cp, %.preheader252.lr.ph ] ; 2 uses
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next308, %i.ep
  br i1 %i.eq, label %.lr.ph285, label %._crit_edge286.loopexit, !llvm.loop !270

._crit_edge286.loopexit:                          ; preds = %.critedge230
  %.pre320 = load i32, ptr %i.m, align 4, !tbaa !252
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge286.loopexit, %.preheader253
  %i.er = phi i32 [ %.pre320, %._crit_edge286.loopexit ], [ %i.cm, %.preheader253 ] ; 2 uses
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.m, align 4, !tbaa !252
  %i.et = icmp slt i32 %i.er, 2
  br i1 %i.et, label %bb.m, label %bb.q

bb.m:                                             ; preds = %._crit_edge286
  %i.eu = load i32, ptr %i.c, align 4, !tbaa !232
  %i.ev = icmp slt i32 %i.eu, 24
  br i1 %i.ev, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ew = load i8, ptr %i.j, align 8, !tbaa !109
  %i.ex = and i8 %i.ew, -8
  %or.cond231 = icmp eq i8 %i.ex, -48
  br i1 %or.cond231, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.c, align 4, !tbaa !232
  store i32 0, ptr %i.d, align 8, !tbaa !234
  store i32 0, ptr %i.e, align 4, !tbaa !231
  store i32 0, ptr %i.f, align 8, !tbaa !236
  store i32 0, ptr %i.g, align 8, !tbaa !236
  store i32 0, ptr %i.h, align 8, !tbaa !236
  store i32 0, ptr %i.i, align 8, !tbaa !236
  store i8 -1, ptr %i.j, align 8, !tbaa !109
  %i.ey = load i32, ptr %i.k, align 8, !tbaa !251 ; 2 uses
  %.not.i238 = icmp eq i32 %i.ey, 0
  %spec.select.i239 = select i1 %.not.i238, i32 2147483647, i32 %i.ey ; 2 uses
  store i32 %spec.select.i239, ptr %i.m, align 4, !tbaa !252
  store i32 0, ptr %i.n, align 4, !tbaa !244
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge286, %bb.p
  %i.ez = phi i32 [ %i.es, %._crit_edge286 ], [ %spec.select.i239, %bb.p ] ; 2 uses
  %i.fa = add nuw nsw i32 %.0206287, 1            ; 2 uses
  %i.fb = load i32, ptr %i.by, align 8, !tbaa !265 ; 2 uses
  %i.fc = icmp slt i32 %i.fa, %i.fb
  br i1 %i.fc, label %.preheader253, label %._crit_edge288.loopexit, !llvm.loop !271

._crit_edge288.loopexit:                          ; preds = %bb.q
  %.pre321 = load i32, ptr %i.bv, align 4, !tbaa !264
  br label %._crit_edge288

._crit_edge288:                                   ; preds = %._crit_edge288.loopexit, %.preheader254
  %i.fd = phi i32 [ %.pre321, %._crit_edge288.loopexit ], [ %i.ci, %.preheader254 ] ; 2 uses
  %i.fe = phi i32 [ %i.ez, %._crit_edge288.loopexit ], [ %i.cj, %.preheader254 ]
  %i.ff = phi i32 [ %i.fb, %._crit_edge288.loopexit ], [ %i.ck, %.preheader254 ]
  %i.fg = add nuw nsw i32 %.0205289, 1            ; 2 uses
  %i.fh = icmp slt i32 %i.fg, %i.fd
  br i1 %i.fh, label %.preheader254, label %.critedge, !llvm.loop !272

.critedge:                                        ; preds = %._crit_edge288, %bb.o, %.lr.ph280, %.preheader254.lr.ph, %bb.k
  %.11 = phi i32 [ 1, %bb.k ], [ 1, %.preheader254.lr.ph ], [ 1, %bb.o ], [ 0, %.lr.ph280 ], [ 1, %._crit_edge288 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %.thread248

bb.r:                                             ; preds = %bb.a
  br i1 %i.s, label %bb.s, label %.preheader264

.preheader264:                                    ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 18068 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !264 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.preheader262.lr.ph, label %.thread248

.preheader262.lr.ph:                              ; preds = %.preheader264
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 18064 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 18520
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fp = load i32, ptr %i.fl, align 8, !tbaa !265 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %.preheader262, label %.thread248

bb.s:                                             ; preds = %bb.r
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 18520
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !27 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %i.fu = sext i32 %i.fs to i64
  %i.fv = getelementptr inbounds [96 x i8], ptr %i.ft, i64 %i.fu ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !255
  %i.fy = add nsw i32 %i.fx, 7
  %i.fz = ashr i32 %i.fy, 3                       ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !256
  %i.gc = add nsw i32 %i.gb, 7
  %i.gd = ashr i32 %i.gc, 3                       ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.preheader257.lr.ph, label %.thread248

.preheader257.lr.ph:                              ; preds = %bb.s
  %i.gf = icmp sgt i32 %i.fz, 0
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 88
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 18484
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 13960
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  br i1 %i.gf, label %.preheader257, label %.thread248

.preheader257:                                    ; preds = %.preheader257.lr.ph, %._crit_edge277
  %.0200278 = phi i32 [ %i.hp, %._crit_edge277 ], [ 0, %.preheader257.lr.ph ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.preheader257, %bb.ab
  %.0201275 = phi i32 [ 0, %.preheader257 ], [ %i.ho, %bb.ab ] ; 2 uses
  %i.go = load ptr, ptr %i.gg, align 8, !tbaa !273
  %i.gp = load i32, ptr %i.gh, align 8, !tbaa !274
  %i.gq = mul nsw i32 %i.gp, %.0200278
  %i.gr = add nsw i32 %i.gq, %.0201275
  %i.gs = shl nsw i32 %i.gr, 6
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gi, align 4, !tbaa !243
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gx = load i32, ptr %i.gn, align 8, !tbaa !258
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [1680 x i8], ptr %i.gm, i64 %i.gy
  %i.ha = tail call i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %0, ptr noundef %i.gu, ptr noundef nonnull %i.gz, i32 noundef %i.fs)
  %.not229 = icmp eq i32 %i.ha, 0
  br i1 %.not229, label %.thread248, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hb = load i32, ptr %i.gj, align 4, !tbaa !257
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [1680 x i8], ptr %i.gk, i64 %i.hc
  %i.he = getelementptr inbounds [1024 x i8], ptr %i.gl, i64 %i.hc
  %i.hf = tail call i32 @stbi__jpeg_decode_block_prog_ac(ptr noundef nonnull %0, ptr noundef %i.gu, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he)
  %.not228.not = icmp eq i32 %i.hf, 0
  br i1 %.not228.not, label %.thread248, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hg = load i32, ptr %i.m, align 4, !tbaa !252 ; 2 uses
  %i.hh = add nsw i32 %i.hg, -1
  store i32 %i.hh, ptr %i.m, align 4, !tbaa !252
  %i.hi = icmp slt i32 %i.hg, 2
  br i1 %i.hi, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.hj = load i32, ptr %i.c, align 4, !tbaa !232
  %i.hk = icmp slt i32 %i.hj, 24
  br i1 %i.hk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hl = load i8, ptr %i.j, align 8, !tbaa !109
  %i.hm = and i8 %i.hl, -8
  %or.cond232 = icmp eq i8 %i.hm, -48
  br i1 %or.cond232, label %bb.aa, label %.thread248

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.c, align 4, !tbaa !232
  store i32 0, ptr %i.d, align 8, !tbaa !234
  store i32 0, ptr %i.e, align 4, !tbaa !231
  store i32 0, ptr %i.f, align 8, !tbaa !236
  store i32 0, ptr %i.g, align 8, !tbaa !236
  store i32 0, ptr %i.h, align 8, !tbaa !236
  store i32 0, ptr %i.i, align 8, !tbaa !236
  store i8 -1, ptr %i.j, align 8, !tbaa !109
  %i.hn = load i32, ptr %i.k, align 8, !tbaa !251 ; 2 uses
  %.not.i240 = icmp eq i32 %i.hn, 0
  %spec.select.i241 = select i1 %.not.i240, i32 2147483647, i32 %i.hn
  store i32 %spec.select.i241, ptr %i.m, align 4, !tbaa !252
  store i32 0, ptr %i.n, align 4, !tbaa !244
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.ho = add nuw nsw i32 %.0201275, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ho, %i.fz
  br i1 %exitcond.not, label %._crit_edge277, label %bb.t, !llvm.loop !275

._crit_edge277:                                   ; preds = %bb.ab
  %i.hp = add nuw nsw i32 %.0200278, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.hp, %i.gd
  br i1 %exitcond306.not, label %.thread248, label %.preheader257, !llvm.loop !276

.preheader262:                                    ; preds = %.preheader262.lr.ph, %._crit_edge273
  %i.hq = phi i32 [ %i.jz, %._crit_edge273 ], [ %i.fj, %.preheader262.lr.ph ]
  %i.hr = phi i32 [ %i.ka, %._crit_edge273 ], [ %spec.select.i, %.preheader262.lr.ph ] ; 2 uses
  %i.hs = phi i32 [ %i.kb, %._crit_edge273 ], [ %i.fp, %.preheader262.lr.ph ] ; 2 uses
  %.0198274 = phi i32 [ %i.kc, %._crit_edge273 ], [ 0, %.preheader262.lr.ph ] ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.preheader261, label %._crit_edge273

.preheader261:                                    ; preds = %.preheader262, %bb.ah
  %i.hu = phi i32 [ %i.jv, %bb.ah ], [ %i.hr, %.preheader262 ]
  %.0199272 = phi i32 [ %i.jw, %bb.ah ], [ 0, %.preheader262 ] ; 2 uses
  %i.hv = load i32, ptr %i.q, align 4, !tbaa !254 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %.preheader261, %.critedge234
  %i.hx = phi i32 [ %i.jk, %.critedge234 ], [ %i.hv, %.preheader261 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge234 ], [ 0, %.preheader261 ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !27 ; 2 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [96 x i8], ptr %i.fn, i64 %i.ia ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 3 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !266 ; 2 uses
  %.not227267 = icmp sgt i32 %i.id, 0
  br i1 %.not227267, label %.preheader259.lr.ph, label %.critedge234

.preheader259.lr.ph:                              ; preds = %.lr.ph270
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 80
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !267 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.preheader259, label %.critedge234

.preheader259:                                    ; preds = %.preheader259.lr.ph, %._crit_edge
  %i.ik = phi i32 [ %i.jh, %._crit_edge ], [ %i.id, %.preheader259.lr.ph ]
  %i.il = phi i32 [ %i.ji, %._crit_edge ], [ %i.ii, %.preheader259.lr.ph ] ; 3 uses
  %.0268 = phi i32 [ %i.jj, %._crit_edge ], [ 0, %.preheader259.lr.ph ] ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph, label %._crit_edge

bb.ac:                                            ; preds = %.lr.ph
  %i.in = add nuw nsw i32 %.0196266, 1            ; 2 uses
  %i.io = load i32, ptr %i.ie, align 4, !tbaa !267 ; 3 uses
  %i.ip = icmp slt i32 %i.in, %i.io
  br i1 %i.ip, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !277

.lr.ph:                                           ; preds = %.preheader259, %bb.ac
  %i.iq = phi i32 [ %i.io, %bb.ac ], [ %i.il, %.preheader259 ]
  %.0196266 = phi i32 [ %i.in, %bb.ac ], [ 0, %.preheader259 ] ; 2 uses
  %i.ir = mul nuw nsw i32 %i.iq, %.0199272
  %i.is = add nsw i32 %i.ir, %.0196266
  %i.it = load i32, ptr %i.ic, align 8, !tbaa !266
  %i.iu = mul nsw i32 %i.it, %.0198274
  %i.iv = add nsw i32 %i.iu, %.0268
  %i.iw = load ptr, ptr %i.if, align 8, !tbaa !273
  %i.ix = load i32, ptr %i.ig, align 8, !tbaa !274
  %i.iy = mul nsw i32 %i.iv, %i.ix
  %i.iz = add nsw i32 %i.is, %i.iy
  %i.ja = shl nsw i32 %i.iz, 6
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.iw, i64 %i.jb
  %i.jd = load i32, ptr %i.ih, align 8, !tbaa !258
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [1680 x i8], ptr %i.fo, i64 %i.je
  %i.jg = tail call i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %0, ptr noundef %i.jc, ptr noundef nonnull %i.jf, i32 noundef %i.hz)
  %.not226.not = icmp eq i32 %i.jg, 0
  br i1 %.not226.not, label %.thread248, label %bb.ac

._crit_edge.loopexit:                             ; preds = %bb.ac
  %.pre = load i32, ptr %i.ic, align 8, !tbaa !266
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader259
  %i.jh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ik, %.preheader259 ] ; 2 uses
  %i.ji = phi i32 [ %i.io, %._crit_edge.loopexit ], [ %i.il, %.preheader259 ]
  %i.jj = add nuw nsw i32 %.0268, 1               ; 2 uses
  %.not227 = icmp slt i32 %i.jj, %i.jh
  br i1 %.not227, label %.preheader259, label %.critedge234.loopexit, !llvm.loop !278

.critedge234.loopexit:                            ; preds = %._crit_edge
  %.pre315 = load i32, ptr %i.q, align 4, !tbaa !254
  br label %.critedge234

.critedge234:                                     ; preds = %.preheader259.lr.ph, %.critedge234.loopexit, %.lr.ph270
  %i.jk = phi i32 [ %i.hx, %.lr.ph270 ], [ %.pre315, %.critedge234.loopexit ], [ %i.hx, %.preheader259.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv.next, %i.jl
  br i1 %i.jm, label %.lr.ph270, label %._crit_edge271.loopexit, !llvm.loop !279

._crit_edge271.loopexit:                          ; preds = %.critedge234
  %.pre316 = load i32, ptr %i.m, align 4, !tbaa !252
  br label %._crit_edge271

._crit_edge271:                                   ; preds = %._crit_edge271.loopexit, %.preheader261
  %i.jn = phi i32 [ %.pre316, %._crit_edge271.loopexit ], [ %i.hu, %.preheader261 ] ; 2 uses
  %i.jo = add nsw i32 %i.jn, -1                   ; 2 uses
  store i32 %i.jo, ptr %i.m, align 4, !tbaa !252
  %i.jp = icmp slt i32 %i.jn, 2
  br i1 %i.jp, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %._crit_edge271
  %i.jq = load i32, ptr %i.c, align 4, !tbaa !232
  %i.jr = icmp slt i32 %i.jq, 24
  br i1 %i.jr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.js = load i8, ptr %i.j, align 8, !tbaa !109
  %i.jt = and i8 %i.js, -8
  %or.cond235 = icmp eq i8 %i.jt, -48
  br i1 %or.cond235, label %bb.ag, label %.thread248

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.c, align 4, !tbaa !232
  store i32 0, ptr %i.d, align 8, !tbaa !234
  store i32 0, ptr %i.e, align 4, !tbaa !231
  store i32 0, ptr %i.f, align 8, !tbaa !236
  store i32 0, ptr %i.g, align 8, !tbaa !236
  store i32 0, ptr %i.h, align 8, !tbaa !236
  store i32 0, ptr %i.i, align 8, !tbaa !236
  store i8 -1, ptr %i.j, align 8, !tbaa !109
  %i.ju = load i32, ptr %i.k, align 8, !tbaa !251 ; 2 uses
  %.not.i242 = icmp eq i32 %i.ju, 0
  %spec.select.i243 = select i1 %.not.i242, i32 2147483647, i32 %i.ju ; 2 uses
  store i32 %spec.select.i243, ptr %i.m, align 4, !tbaa !252
  store i32 0, ptr %i.n, align 4, !tbaa !244
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge271, %bb.ag
  %i.jv = phi i32 [ %i.jo, %._crit_edge271 ], [ %spec.select.i243, %bb.ag ] ; 2 uses
  %i.jw = add nuw nsw i32 %.0199272, 1            ; 2 uses
  %i.jx = load i32, ptr %i.fl, align 8, !tbaa !265 ; 2 uses
  %i.jy = icmp slt i32 %i.jw, %i.jx
  br i1 %i.jy, label %.preheader261, label %._crit_edge273.loopexit, !llvm.loop !280

._crit_edge273.loopexit:                          ; preds = %bb.ah
  %.pre317 = load i32, ptr %i.fi, align 4, !tbaa !264
  br label %._crit_edge273

._crit_edge273:                                   ; preds = %._crit_edge273.loopexit, %.preheader262
  %i.jz = phi i32 [ %.pre317, %._crit_edge273.loopexit ], [ %i.hq, %.preheader262 ] ; 2 uses
  %i.ka = phi i32 [ %i.jv, %._crit_edge273.loopexit ], [ %i.hr, %.preheader262 ]
  %i.kb = phi i32 [ %i.jx, %._crit_edge273.loopexit ], [ %i.hs, %.preheader262 ]
  %i.kc = add nuw nsw i32 %.0198274, 1            ; 2 uses
  %i.kd = icmp slt i32 %i.kc, %i.jz
  br i1 %i.kd, label %.preheader262, label %.thread248, !llvm.loop !281

.thread248:                                       ; preds = %._crit_edge273, %bb.af, %.lr.ph, %._crit_edge277, %bb.v, %bb.u, %bb.z, %.preheader262.lr.ph, %.preheader264, %bb.s, %.preheader257.lr.ph, %.critedge, %.loopexit
  %.26 = phi i32 [ %.11, %.critedge ], [ 1, %bb.af ], [ %.3213, %.loopexit ], [ 0, %.lr.ph ], [ 1, %._crit_edge277 ], [ 1, %bb.s ], [ 1, %bb.z ], [ 1, %.preheader264 ], [ 1, %.preheader257.lr.ph ], [ 1, %.preheader262.lr.ph ], [ 0, %bb.u ], [ 0, %bb.v ], [ 1, %._crit_edge273 ]
  ret i32 %.26
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__jpeg_dequantize(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
vector.memcheck:
  %scevgep = getelementptr i8, ptr %0, i64 128
  %scevgep7 = getelementptr i8, ptr %1, i64 128
  %bound0 = icmp ult ptr %0, %scevgep7
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !85, !alias.scope !282
  %wide.load8 = load <8 x i16>, ptr %i.a, align 2, !tbaa !85, !alias.scope !282
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load9 = load <8 x i16>, ptr %0, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %wide.load10 = load <8 x i16>, ptr %i.b, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.c = mul <8 x i16> %wide.load9, %wide.load
  %i.d = mul <8 x i16> %wide.load10, %wide.load8
  store <8 x i16> %i.c, ptr %0, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  store <8 x i16> %i.d, ptr %i.b, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.e, align 2, !tbaa !85, !alias.scope !282
  %wide.load8.1 = load <8 x i16>, ptr %i.f, align 2, !tbaa !85, !alias.scope !282
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load9.1 = load <8 x i16>, ptr %i.g, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %wide.load10.1 = load <8 x i16>, ptr %i.h, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.i = mul <8 x i16> %wide.load9.1, %wide.load.1
  %i.j = mul <8 x i16> %wide.load10.1, %wide.load8.1
  store <8 x i16> %i.i, ptr %i.g, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  store <8 x i16> %i.j, ptr %i.h, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.k, align 2, !tbaa !85, !alias.scope !282
  %wide.load8.2 = load <8 x i16>, ptr %i.l, align 2, !tbaa !85, !alias.scope !282
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.load9.2 = load <8 x i16>, ptr %i.m, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %wide.load10.2 = load <8 x i16>, ptr %i.n, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.o = mul <8 x i16> %wide.load9.2, %wide.load.2
  %i.p = mul <8 x i16> %wide.load10.2, %wide.load8.2
  store <8 x i16> %i.o, ptr %i.m, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  store <8 x i16> %i.p, ptr %i.n, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.q, align 2, !tbaa !85, !alias.scope !282
  %wide.load8.3 = load <8 x i16>, ptr %i.r, align 2, !tbaa !85, !alias.scope !282
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %wide.load9.3 = load <8 x i16>, ptr %i.s, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %wide.load10.3 = load <8 x i16>, ptr %i.t, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  %i.u = mul <8 x i16> %wide.load9.3, %wide.load.3
  %i.v = mul <8 x i16> %wide.load10.3, %wide.load8.3
  store <8 x i16> %i.u, ptr %i.s, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  store <8 x i16> %i.v, ptr %i.t, align 2, !tbaa !85, !alias.scope !285, !noalias !282
  br label %middle.block

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 2, !tbaa !85
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !85
  %i.aa = mul i16 %i.z, %i.x
  store i16 %i.aa, ptr %i.y, align 2, !tbaa !85
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !85
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !85
  %i.af = mul i16 %i.ae, %i.ac
  store i16 %i.af, ptr %i.ad, align 2, !tbaa !85
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !85
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !85
  %i.ak = mul i16 %i.aj, %i.ah
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !85
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !85
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !85
  %i.ap = mul i16 %i.ao, %i.am
  store i16 %i.ap, ptr %i.an, align 2, !tbaa !85
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.not.3, label %middle.block, label %scalar.ph, !llvm.loop !287

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void
end_hunk_5
begin_hunk_6_@load_jpeg_image:bb.a
  br i1 %.not.i.i296, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ao) #37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !307 ; 2 uses
  %.not28.i.i297 = icmp eq ptr %i.ar, null
  br i1 %.not28.i.i297, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.ar) #37
  store ptr null, ptr %i.aq, align 8, !tbaa !307
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr null, ptr %i.as, align 8, !tbaa !273
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !308 ; 2 uses
  %.not29.i.i298 = icmp eq ptr %i.au, null
  br i1 %.not29.i.i298, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.au) #37
  store ptr null, ptr %i.at, align 8, !tbaa !308
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next.i.i299 = add nuw nsw i64 %indvars.iv.i.i295, 1 ; 2 uses
  %exitcond.not.i.i300 = icmp eq i64 %indvars.iv.next.i.i299, %wide.trip.count.i.i294
  br i1 %exitcond.not.i.i300, label %stbi__cleanup_jpeg.exit, label %bb.q, !llvm.loop !309

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.av = load i32, ptr %.pre, align 8, !tbaa !44 ; 6 uses
  %i.aw = add i32 %i.av, 3
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 18080 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18056
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18060
  %i.bb = add i32 %i.av, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %wide.trip.count = zext nneg i32 %. to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread333
  %indvars.iv = phi i64 [ 0, %bb.x ], [ %indvars.iv.next, %.thread333 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv ; 8 uses
  %i.be = tail call noalias noundef ptr @malloc(i64 noundef %i.ax) #38 ; 2 uses
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %indvars.iv ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !308
  %.not292.not = icmp eq ptr %i.be, null
  br i1 %.not292.not, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.bh = icmp sgt i32 %i.u, 0
  br i1 %i.bh, label %.lr.ph.i.i302, label %.thread334

.thread334:                                       ; preds = %bb.z
  %i.bi = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.bi, align 8, !tbaa !26
  br label %bb.bx

.lr.ph.i.i302:                                    ; preds = %bb.z
  %wide.trip.count.i.i303 = zext nneg i32 %i.u to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ag, %.lr.ph.i.i302
  %indvars.iv.i.i304 = phi i64 [ 0, %.lr.ph.i.i302 ], [ %indvars.iv.next.i.i308, %bb.ag ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %indvars.iv.i.i304 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !306 ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i305, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.bl) #37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !307 ; 2 uses
  %.not28.i.i306 = icmp eq ptr %i.bo, null
  br i1 %.not28.i.i306, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bo) #37
  store ptr null, ptr %i.bn, align 8, !tbaa !307
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  store ptr null, ptr %i.bp, align 8, !tbaa !273
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !308 ; 2 uses
  %.not29.i.i307 = icmp eq ptr %i.br, null
  br i1 %.not29.i.i307, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @free(ptr noundef nonnull %i.br) #37
  store ptr null, ptr %i.bq, align 8, !tbaa !308
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next.i.i308 = add nuw nsw i64 %indvars.iv.i.i304, 1 ; 2 uses
  %exitcond.not.i.i309 = icmp eq i64 %indvars.iv.next.i.i308, %wide.trip.count.i.i303
  br i1 %exitcond.not.i.i309, label %bb.al, label %bb.aa, !llvm.loop !309

bb.ah:                                            ; preds = %bb.y
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !316
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !267
  %i.bv = sdiv i32 %i.bs, %i.bu                   ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !372
  %i.bx = load i32, ptr %i.ba, align 4, !tbaa !317
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !266
  %i.ca = sdiv i32 %i.bx, %i.bz                   ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !374
  %i.cc = ashr i32 %i.ca, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !375
  %i.ce = add i32 %i.bb, %i.bv
  %i.cf = udiv i32 %i.ce, %i.bv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i32 %i.cf, ptr %i.cg, align 16, !tbaa !376
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i32 0, ptr %i.ch, align 8, !tbaa !377
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !260 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.cj, ptr %i.ck, align 16, !tbaa !378
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !379
  switch i32 %i.bv, label %.thread332 [
    i32 1, label %bb.ai
    i32 2, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %switch.selectcmp = icmp eq i32 %i.ca, 2
  %switch.select = select i1 %switch.selectcmp, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp498 = icmp eq i32 %i.ca, 1
  %switch.select499 = select i1 %switch.selectcmp498, ptr @resample_row_1, ptr %switch.select
  br label %.thread333

bb.aj:                                            ; preds = %bb.ah
  switch i32 %i.ca, label %.thread332 [
    i32 1, label %.thread333
    i32 2, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !107
  br label %.thread333

.thread332:                                       ; preds = %bb.aj, %bb.ah
  br label %.thread333

bb.al:                                            ; preds = %bb.ag
  %i.cn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.cn, align 8, !tbaa !26
  br label %bb.bx

.thread333:                                       ; preds = %bb.aj, %bb.ai, %bb.ak, %.thread332
  %stbi__resample_row_v_2.sink = phi ptr [ %switch.select499, %bb.ai ], [ %i.cm, %bb.ak ], [ @stbi__resample_row_generic, %.thread332 ], [ @stbi__resample_row_h_2, %bb.aj ]
  store ptr %stbi__resample_row_v_2.sink, ptr %i.bd, align 16, !tbaa !380
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.am, label %bb.y, !llvm.loop !381

bb.am:                                            ; preds = %.thread333
  %i.co = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !43 ; 4 uses
  %i.cq = or i32 %i.av, %i.w
  %or.cond.not.i.i.i = icmp sgt i32 %i.cq, -1
  br i1 %or.cond.not.i.i.i, label %bb.an, label %stbi__malloc_mad3.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.cr = icmp eq i32 %i.av, 0
  br i1 %i.cr, label %stbi__mul2sizes_valid.exit.thread16.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.an
  %i.cs = udiv i32 2147483647, %i.av
  %.not24.i.i = icmp sgt i32 %i.w, %i.cs
  br i1 %.not24.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i.i

stbi__mul2sizes_valid.exit.thread16.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.an
  %i.ct = mul nuw nsw i32 %i.av, %i.w             ; 3 uses
  %i.cu = or i32 %i.cp, %i.ct
  %or.cond.not.i10.i.i = icmp sgt i32 %i.cu, -1
  br i1 %or.cond.not.i10.i.i, label %bb.ao, label %stbi__malloc_mad3.exit.thread

bb.ao:                                            ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i
  %i.cv = icmp eq i32 %i.cp, 0                    ; 2 uses
  br i1 %i.cv, label %stbi__mad3sizes_valid.exit.i, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.ao
  %i.cw = udiv i32 2147483647, %i.cp
  %.not.i.i311 = icmp sgt i32 %i.ct, %i.cw
  br i1 %.not.i.i311, label %stbi__malloc_mad3.exit.thread, label %stbi__mad3sizes_valid.exit.i

stbi__mad3sizes_valid.exit.i:                     ; preds = %stbi__mul2sizes_valid.exit12.i.i, %bb.ao
  %i.cx = mul nuw nsw i32 %i.ct, %i.cp            ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 2147483647
  br i1 %i.cy, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %stbi__mad3sizes_valid.exit.i
  %i.cz = add nsw i32 %i.cx, 1
  %i.da = sext i32 %i.cz to i64
  %i.db = tail call noalias noundef ptr @malloc(i64 noundef %i.da) #38 ; 4 uses
  %.not286 = icmp eq ptr %i.db, null
  br i1 %.not286, label %stbi__malloc_mad3.exit.thread, label %.preheader356

.preheader356:                                    ; preds = %stbi__malloc_mad3.exit
  br i1 %i.cv, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %.preheader356
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 18508 ; 2 uses
  %i.dd = icmp eq i32 %i.w, 1                     ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.df = zext nneg i32 %i.w to i64               ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %wide.trip.count420 = zext nneg i32 %. to i64
  br label %.lr.ph.preheader

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread16.i.i, %bb.am, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mad3sizes_valid.exit.i, %stbi__malloc_mad3.exit
  %i.dj = icmp sgt i32 %i.u, 0
  br i1 %i.dj, label %.lr.ph.i.i312, label %stbi__cleanup_jpeg.exit320

.lr.ph.i.i312:                                    ; preds = %stbi__malloc_mad3.exit.thread
  %wide.trip.count.i.i313 = zext nneg i32 %i.u to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %.lr.ph.i.i312
  %indvars.iv.i.i314 = phi i64 [ 0, %.lr.ph.i.i312 ], [ %indvars.iv.next.i.i318, %bb.av ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %indvars.iv.i.i314 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !306 ; 2 uses
  %.not.i.i315 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i315, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %i.dm) #37
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 64 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !307 ; 2 uses
  %.not28.i.i316 = icmp eq ptr %i.dp, null
  br i1 %.not28.i.i316, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.dp) #37
  store ptr null, ptr %i.do, align 8, !tbaa !307
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  store ptr null, ptr %i.dq, align 8, !tbaa !273
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 72 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !308 ; 2 uses
  %.not29.i.i317 = icmp eq ptr %i.ds, null
  br i1 %.not29.i.i317, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %i.ds) #37
  store ptr null, ptr %i.dr, align 8, !tbaa !308
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.i.i318 = add nuw nsw i64 %indvars.iv.i.i314, 1 ; 2 uses
  %exitcond.not.i.i319 = icmp eq i64 %indvars.iv.next.i.i318, %wide.trip.count.i.i313
  br i1 %exitcond.not.i.i319, label %stbi__cleanup_jpeg.exit320, label %bb.ap, !llvm.loop !309

stbi__cleanup_jpeg.exit320:                       ; preds = %bb.av, %stbi__malloc_mad3.exit.thread
  %i.dt = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.dt, align 8, !tbaa !26
  br label %bb.bx

.lr.ph.preheader:                                 ; preds = %.loopexit, %.lr.ph392
  %i.du = phi ptr [ %.pre, %.lr.ph392 ], [ %i.oz, %.loopexit ]
  %.0264391 = phi i32 [ 0, %.lr.ph392 ], [ %i.oy, %.loopexit ] ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !44
  %i.dw = mul i32 %.0264391, %i.w
  %i.dx = mul i32 %i.dw, %i.dv
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dy ; 12 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ay
  %indvars.iv417 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next418, %bb.ay ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %5, i64 %indvars.iv417 ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 36 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !375 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !374 ; 2 uses
  %i.ef = ashr i32 %i.ee, 1
  %.not289 = icmp slt i32 %i.ec, %i.ef            ; 2 uses
  %i.eg = load ptr, ptr %i.ea, align 16, !tbaa !380
  %i.eh = getelementptr inbounds nuw [96 x i8], ptr %i.ay, i64 %indvars.iv417 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !308
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %.in = select i1 %.not289, ptr %i.el, ptr %i.ek
  %i.em = load ptr, ptr %.in, align 8, !tbaa !26
  %.in290 = select i1 %.not289, ptr %i.ek, ptr %i.el
  %i.en = load ptr, ptr %.in290, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ep = load i32, ptr %i.eo, align 16, !tbaa !376
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !372
  %i.es = tail call ptr %i.eg(ptr noundef %i.ej, ptr noundef %i.em, ptr noundef %i.en, i32 noundef %i.ep, i32 noundef %i.er) #37
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv417
  store ptr %i.es, ptr %i.et, align 8, !tbaa !26
  %i.eu = add nsw i32 %i.ec, 1                    ; 2 uses
  store i32 %i.eu, ptr %i.eb, align 4, !tbaa !375
  %.not291 = icmp slt i32 %i.eu, %i.ee
  br i1 %.not291, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph
  store i32 0, ptr %i.eb, align 4, !tbaa !375
  %i.ev = load ptr, ptr %i.ek, align 16, !tbaa !378 ; 2 uses
  store ptr %i.ev, ptr %i.el, align 8, !tbaa !379
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 40 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !377
  %i.ey = add nsw i32 %i.ex, 1                    ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !377
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !256
  %i.fb = icmp slt i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eh, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !261
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.ev, i64 %i.fe
  store ptr %i.ff, ptr %i.ek, align 16, !tbaa !378
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %.lr.ph
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge, label %.lr.ph, !llvm.loop !382

._crit_edge:                                      ; preds = %bb.ay
  br i1 %i.ai, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %._crit_edge
  %i.fg = load ptr, ptr %i.a, align 16, !tbaa !26 ; 5 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !103   ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !53
  switch i32 %i.fj, label %.preheader [
    i32 3, label %bb.ba
    i32 4, label %bb.bc
  ]

.preheader:                                       ; preds = %bb.az
  %i.fk = load i32, ptr %i.fh, align 8, !tbaa !44
  %.not404 = icmp eq i32 %i.fk, 0
  br i1 %.not404, label %.loopexit, label %.lr.ph390

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ag, label %.preheader339, label %.loopexit.sink.split

.preheader339:                                    ; preds = %bb.ba
  %i.fl = load i32, ptr %i.fh, align 8, !tbaa !44
  %.not403 = icmp eq i32 %i.fl, 0
  br i1 %.not403, label %.loopexit, label %.lr.ph387

.lr.ph387:                                        ; preds = %.preheader339
  %i.fm = load ptr, ptr %i.dg, align 8, !tbaa !26
  %i.fn = load ptr, ptr %i.dh, align 16, !tbaa !26
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph387, %bb.bb
  %indvars.iv446 = phi i64 [ 0, %.lr.ph387 ], [ %indvars.iv.next447, %bb.bb ] ; 4 uses
  %.0260386 = phi ptr [ %i.dz, %.lr.ph387 ], [ %i.fx, %bb.bb ] ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv446
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !24
  store i8 %i.fp, ptr %.0260386, align 1, !tbaa !24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv446
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %.0260386, i64 1
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv446
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %.0260386, i64 2
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !24
  %i.fw = getelementptr inbounds nuw i8, ptr %.0260386, i64 3
  store i8 -1, ptr %i.fw, align 1, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %.0260386, i64 %i.df
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %i.fy = load i32, ptr %i.fh, align 8, !tbaa !44
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp samesign ult i64 %indvars.iv.next447, %i.fz
  br i1 %i.ga, label %bb.bb, label %.loopexit, !llvm.loop !383
end_hunk_6
begin_hunk_7_@stbi__check_png_header:bb.a
  store i8 0, ptr %i.f, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

bb.av:                                            ; preds = %bb.at
  %i.fx = sext i32 %i.fn to i64
  %i.fy = getelementptr inbounds i8, ptr %i.f, i64 %i.fx
  %.pre.i = load i8, ptr %i.f, align 8, !tbaa !24
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.av, %bb.au
  %i.fz = phi i8 [ 0, %bb.au ], [ %.pre.i, %bb.av ]
  %.sink.i.i = phi ptr [ %i.j, %bb.au ], [ %i.fy, %bb.av ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.b, align 8, !tbaa !18
  store ptr %i.j, ptr %i.a, align 8, !tbaa !16
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.ar, %bb.as, %stbi__refill_buffer.exit.i
  %i.ga = phi ptr [ %.pre7, %bb.ar ], [ %.sink.i.i, %stbi__refill_buffer.exit.i ], [ %.pre7, %bb.as ] ; 3 uses
  %i.gb = phi ptr [ %i.fh, %bb.ar ], [ %i.j, %stbi__refill_buffer.exit.i ], [ %.pre, %bb.as ] ; 4 uses
  %.0.i = phi i8 [ %i.fi, %bb.ar ], [ %i.fz, %stbi__refill_buffer.exit.i ], [ 0, %bb.as ]
  %.not = icmp eq i8 %.0.i, -119
  br i1 %.not, label %bb.b, label %bb.aw

bb.aw:                                            ; preds = %stbi__get8.exit.7, %stbi__get8.exit.6, %stbi__get8.exit.5, %stbi__get8.exit.4, %stbi__get8.exit.3, %stbi__get8.exit.2, %stbi__get8.exit.1, %stbi__get8.exit
  %i.gc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.48, ptr %i.gc, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %stbi__get8.exit.7, %bb.aw
  %.04 = phi i32 [ 0, %bb.aw ], [ 1, %stbi__get8.exit.7 ]
  ret i32 %.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @stbi__paeth(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %2, 3
  %i.b = add i32 %1, %0
  %i.c = sub i32 %i.a, %i.b                       ; 2 uses
  %i.d = tail call i32 @llvm.smin.i32(i32 %0, i32 %1) ; 2 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %0, i32 %1) ; 2 uses
  %.not = icmp sgt i32 %i.e, %i.c
  %i.f = select i1 %.not, i32 %2, i32 %i.d
  %.not20 = icmp sgt i32 %i.c, %i.d
  %i.g = select i1 %.not20, i32 %i.f, i32 %i.e
  ret i32 %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__create_png_alpha_expand8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %.030 = add i32 %2, -1                          ; 5 uses
  %i.b = icmp sgt i32 %.030, -1                   ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader26

.preheader26:                                     ; preds = %bb.a
  br i1 %i.b, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader26
  %i.c = zext nneg i32 %.030 to i64               ; 5 uses
  %i.d = and i64 %i.c, 1
  %lcmp.mod.not.not = icmp eq i64 %i.d, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.e = shl nuw nsw i64 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  store i8 -1, ptr %i.g, align 1, !tbaa !24
  %i.h = mul nuw nsw i64 %i.c, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.k, ptr %i.l, align 1, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !24
  %i.p = load i8, ptr %i.i, align 1, !tbaa !24
  store i8 %i.p, ptr %i.f, align 1, !tbaa !24
  %indvars.iv.next.prol = add nsw i64 %i.c, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.q = icmp eq i32 %.030, 0
  br i1 %i.q, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.b, label %.lr.ph32.preheader, label %.loopexit

.lr.ph32.preheader:                               ; preds = %.preheader
  %i.r = zext nneg i32 %.030 to i64               ; 7 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.030, 15
  br i1 %min.iters.check, label %.lr.ph32.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.preheader
  %i.t = shl nuw nsw i64 %i.r, 1
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 2
  %i.v = getelementptr i8, ptr %1, i64 %i.r
  %scevgep41 = getelementptr i8, ptr %i.v, i64 1
  %bound0 = icmp ult ptr %0, %scevgep41
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 4294967288               ; 3 uses
  %i.w = sub nsw i64 %i.r, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = sub i64 %i.r, %index                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ab, align 1, !tbaa !24, !alias.scope !422
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ac, align 1, !tbaa !24, !alias.scope !425, !noalias !422
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.preheader43

.lr.ph32.preheader43:                             ; preds = %vector.memcheck, %.lr.ph32.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph32.preheader ], [ %i.w, %middle.block ] ; 4 uses
  %i.ae = add nsw i64 %indvars.iv35.ph, 1
  %xtraiter45 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol

.lr.ph32.prol:                                    ; preds = %.lr.ph32.preheader43, %.lr.ph32.prol
  %indvars.iv35.prol = phi i64 [ %indvars.iv.next36.prol, %.lr.ph32.prol ], [ %indvars.iv35.ph, %.lr.ph32.preheader43 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph32.prol ], [ 0, %.lr.ph32.preheader43 ]
  %i.af = shl nuw nsw i64 %indvars.iv35.prol, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 -1, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35.prol
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !24
  %indvars.iv.next36.prol = add nsw i64 %indvars.iv35.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter45
  br i1 %prol.iter.cmp.not, label %.lr.ph32.prol.loopexit, label %.lr.ph32.prol, !llvm.loop !428

.lr.ph32.prol.loopexit:                           ; preds = %.lr.ph32.prol, %.lr.ph32.preheader43
  %indvars.iv35.unr = phi i64 [ %indvars.iv35.ph, %.lr.ph32.preheader43 ], [ %indvars.iv.next36.prol, %.lr.ph32.prol ]
  %i.ak = icmp ult i64 %indvars.iv35.ph, 3
  br i1 %i.ak, label %.loopexit, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %indvars.iv35 = phi i64 [ %indvars.iv.next36.3, %.lr.ph32 ], [ %indvars.iv35.unr, %.lr.ph32.prol.loopexit ] ; 6 uses
  %i.al = shl nuw nsw i64 %indvars.iv35, 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 -1, ptr %i.an, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !24
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !24
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, -1 ; 2 uses
  %i.aq = shl nuw nsw i64 %indvars.iv.next36, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 -1, ptr %i.as, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !24
  %indvars.iv.next36.1 = add nsw i64 %indvars.iv35, -2 ; 2 uses
  %i.av = shl nuw nsw i64 %indvars.iv.next36.1, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store i8 -1, ptr %i.ax, align 1, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !24
  %indvars.iv.next36.2 = add nsw i64 %indvars.iv35, -3 ; 3 uses
  %i.ba = shl nuw nsw i64 %indvars.iv.next36.2, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 -1, ptr %i.bc, align 1, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next36.2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !24
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !24
  %indvars.iv.next36.3 = add nsw i64 %indvars.iv35, -4
  %.not39.3 = icmp eq i64 %indvars.iv.next36.2, 0
  br i1 %.not39.3, label %.loopexit, label %.lr.ph32, !llvm.loop !429

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bf = shl nuw nsw i64 %indvars.iv, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store i8 -1, ptr %i.bh, align 1, !tbaa !24
  %i.bi = mul nuw nsw i64 %indvars.iv, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !24
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !24
  store i8 %i.bq, ptr %i.bg, align 1, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.br = shl nuw nsw i64 %indvars.iv.next, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 -1, ptr %i.bt, align 1, !tbaa !24
  %i.bu = mul nuw nsw i64 %indvars.iv.next, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !24
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !24
  store i8 %i.cc, ptr %i.bs, align 1, !tbaa !24
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !430

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph32.prol.loopexit, %.lr.ph32, %middle.block, %.preheader26, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !32
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 6 uses
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
  store ptr null, ptr %i.q, align 8, !tbaa !431
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #38 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !431
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.v, align 8, !tbaa !26
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread16.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not24.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not24.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread16.i

stbi__mul2sizes_valid.exit.thread16.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread16.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread16.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.af, align 8, !tbaa !26
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not11.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not11.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.28, ptr %i.al, align 8, !tbaa !26
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.49, ptr %i.ap, align 8, !tbaa !26
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias noundef ptr @malloc(i64 noundef %i.ar) #38 ; 5 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.at, align 8, !tbaa !26
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aw = sext i32 %spec.select to i64            ; 40 uses
  %i.ax = icmp slt i32 %spec.select, %i.av        ; 4 uses
  %i.ay = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.az = icmp sgt i32 %i.av, 0
  %i.ba = sext i32 %i.av to i64                   ; 13 uses
  %i.bb = icmp eq i32 %6, 8
  %i.bc = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bd = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.be = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bg = zext i32 %i.z to i64
  %i.bh = icmp eq i32 %7, 0
  %i.bi = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bi
  %wide.trip.count460 = zext i32 %5 to i64
  %8 = zext nneg i32 %i.ah to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.av to i64     ; 8 uses
  %i.bk = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bl = add i32 %i.z, -1                        ; 3 uses
  %i.bm = add nuw nsw i64 %i.bf, 1
  %min.iters.check699 = icmp ult i64 %i.bk, 8
  %i.bn = add nsw i64 %i.aw, -1
  %diff.check697 = icmp ult i64 %i.bn, 31
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bk, 32
  %i.bo = and i64 %i.bk, 24
  %n.vec703 = and i64 %i.bk, -32                  ; 4 uses
  %i.bp = add nsw i64 %n.vec703, %i.aw
  %cmp.n712 = icmp eq i64 %i.bk, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bo, 0
  %n.vec720 = and i64 %i.bk, -8                   ; 3 uses
  %i.bq = add nsw i64 %n.vec720, %i.aw
  %cmp.n727 = icmp eq i64 %i.bk, %n.vec720
  %i.br = add nsw i64 %i.ba, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bs = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bs, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check632 = icmp ult i64 %i.bk, 4
  %i.bt = add nsw i64 %i.aw, -1
  %diff.check626 = icmp ult i64 %i.bt, 15
  %min.iters.check634 = icmp ult i64 %i.bk, 16
  %i.bu = and i64 %i.bk, 12
  %n.vec636 = and i64 %i.bk, -16                  ; 4 uses
  %i.bv = add nsw i64 %n.vec636, %i.aw
  %cmp.n645 = icmp eq i64 %i.bk, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bu, 0
  %n.vec653 = and i64 %i.bk, -4                   ; 3 uses
  %i.bw = add nsw i64 %n.vec653, %i.aw
  %cmp.n662 = icmp eq i64 %i.bk, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bx = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bx, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.by = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bk, 4
  %i.bz = add nsw i64 %i.aw, -1
  %diff.check561 = icmp ult i64 %i.bz, 15
  %min.iters.check565 = icmp ult i64 %i.bk, 16
  %i.ca = and i64 %i.bk, 12
  %n.vec567 = and i64 %i.bk, -16                  ; 4 uses
  %i.cb = add nsw i64 %n.vec567, %i.aw
  %cmp.n575 = icmp eq i64 %i.bk, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.ca, 0
  %n.vec583 = and i64 %i.bk, -4                   ; 3 uses
  %i.cc = add nsw i64 %n.vec583, %i.aw
  %cmp.n591 = icmp eq i64 %i.bk, %n.vec583
  %i.cd = add nsw i64 %i.ba, -1
  %min.iters.check530 = icmp ult i32 %i.av, 4
  %min.iters.check532 = icmp ult i32 %i.av, 32
  %i.ce = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ce, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check506 = icmp ult i64 %i.bk, 8
  %i.cf = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.cf, 31
  %or.cond732 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bk, 32
  %i.cg = and i64 %i.bk, 24
  %n.vec509 = and i64 %i.bk, -32                  ; 4 uses
  %i.ch = add nsw i64 %n.vec509, %i.aw
  %cmp.n518 = icmp eq i64 %i.bk, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec520 = and i64 %i.bk, -8                   ; 3 uses
  %i.ci = add nsw i64 %n.vec520, %i.aw
  %cmp.n525 = icmp eq i64 %i.bk, %n.vec520
  %i.cj = add nsw i64 %i.ba, -1
  %xtraiter761 = and i32 %4, 1
  %i.ck = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.z, 3                  ; 3 uses
  %i.cl = icmp ult i32 %i.z, 4
  %unroll_iter767 = and i32 %i.z, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.cm = and i64 %i.bf, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.cm, 0
  %i.cn = shl nuw nsw i64 %i.bf, 2
  %i.co = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cp = icmp eq i32 %.030.i305, 0
  %i.cq = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cq, 4294967288              ; 3 uses
  %i.cr = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  %xtraiter772 = and i32 %i.z, 1
  %i.cs = icmp eq i32 %i.bl, 0
  %unroll_iter776 = and i32 %i.z, -2
  %lcmp.mod774.not = icmp eq i32 %xtraiter772, 0
  %lcmp.mod775 = trunc i32 %i.z to i1
  %xtraiter778 = and i32 %i.z, 1
  %i.ct = icmp eq i32 %i.bl, 0
  %unroll_iter782 = and i32 %i.z, -2
  %lcmp.mod780.not = icmp eq i32 %xtraiter778, 0
  %lcmp.mod781 = trunc i32 %i.z to i1
  %xtraiter784 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bl, 0
  %unroll_iter788 = and i32 %i.z, -2
  %lcmp.mod786.not = icmp eq i32 %xtraiter784, 0
  %lcmp.mod787 = trunc i32 %i.z to i1
  %i.cv = and i64 %i.bf, 1
  %lcmp.mod791.not.not = icmp eq i64 %i.cv, 0
  %i.cw = shl nuw nsw i64 %i.bf, 2
  %i.cx = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.cy = icmp eq i32 %.030.i305, 0
  %xtraiter793 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod794.not = icmp eq i64 %xtraiter793, 0
  %i.cz = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qj, %.loopexit ] ; 2 uses
  %i.da = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.db = trunc i64 %indvars.iv457 to i1
  %i.dc = select i1 %i.db, i64 %8, i64 0          ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dc ; 75 uses
  %i.de = and i32 %i.da, 1
  %i.df = xor i32 %i.de, 1
  %i.dg = mul nuw nsw i32 %i.df, %i.ah
  %i.dh = zext nneg i32 %i.dg to i64              ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dh ; 30 uses
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !431
  %i.dk = mul i32 %i.e, %i.da
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl ; 33 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.do = load i8, ptr %.0272398, align 1, !tbaa !24 ; 3 uses
  %i.dp = icmp ugt i8 %i.do, 4
  br i1 %i.dp, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dq = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dr = zext nneg i8 %i.do to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dt, %bb.o ], [ %i.do, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.du = sub nsw i64 %i.dh, %i.dc
  %diff.check665 = icmp ugt i64 %i.du, -32
  %or.cond729 = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index673 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dv, align 1, !tbaa !24
  %wide.load675 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 %index673 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !24
end_hunk_7
begin_hunk_8_@stbi__create_png_image_raw:bb.a
  %.4396 = phi i8 [ %i.rq, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %.2241395 = phi ptr [ %i.rp, %.lr.ph397.1 ], [ %i.dm, %.lr.ph397.preheader ] ; 3 uses
  %.4246394 = phi ptr [ %.5247, %.lr.ph397.1 ], [ %i.dd, %.lr.ph397.preheader ] ; 3 uses
  %.2267393 = phi i32 [ %i.rr, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ] ; 2 uses
  %niter789 = phi i32 [ %niter789.next.1, %.lr.ph397.1 ], [ 0, %.lr.ph397.preheader ]
  %i.ri = and i32 %.2267393, 6
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.x, label %.lr.ph397.1

bb.x:                                             ; preds = %.lr.ph397
  %i.rk = getelementptr inbounds nuw i8, ptr %.4246394, i64 1
  %i.rl = load i8, ptr %.4246394, align 1, !tbaa !24
  br label %.lr.ph397.1

.lr.ph397.1:                                      ; preds = %bb.x, %.lr.ph397
  %.5247 = phi ptr [ %i.rk, %bb.x ], [ %.4246394, %.lr.ph397 ] ; 2 uses
  %.5 = phi i8 [ %i.rl, %bb.x ], [ %.4396, %.lr.ph397 ] ; 3 uses
  %isneg = icmp slt i8 %.5, 0
  %i.rm = select i1 %isneg, i8 %i.ql, i8 0
  %i.rn = getelementptr inbounds nuw i8, ptr %.2241395, i64 1
  store i8 %i.rm, ptr %.2241395, align 1, !tbaa !24
  %.mask = and i8 %.5, 64
  %isneg.1.not = icmp eq i8 %.mask, 0
  %i.ro = select i1 %isneg.1.not, i8 0, i8 %i.ql
  %i.rp = getelementptr inbounds nuw i8, ptr %.2241395, i64 2 ; 2 uses
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !24
  %i.rq = shl i8 %.5, 2                           ; 2 uses
  %i.rr = add nuw i32 %.2267393, 2                ; 2 uses
  %niter789.next.1 = add i32 %niter789, 2         ; 2 uses
  %niter789.ncmp.1 = icmp eq i32 %niter789.next.1, %unroll_iter788
  br i1 %niter789.ncmp.1, label %.loopexit335.loopexit.unr-lcssa, label %.lr.ph397, !llvm.loop !457

.loopexit335.loopexit.unr-lcssa:                  ; preds = %.lr.ph397.1
  br i1 %lcmp.mod786.not, label %.loopexit335, label %.lr.ph397.epil.preheader

.lr.ph397.epil.preheader:                         ; preds = %.loopexit335.loopexit.unr-lcssa, %.lr.ph397.preheader
  %.4396.epil.init = phi i8 [ 0, %.lr.ph397.preheader ], [ %i.rq, %.loopexit335.loopexit.unr-lcssa ]
  %.2241395.epil.init = phi ptr [ %i.dm, %.lr.ph397.preheader ], [ %i.rp, %.loopexit335.loopexit.unr-lcssa ]
  %.4246394.epil.init = phi ptr [ %i.dd, %.lr.ph397.preheader ], [ %.5247, %.loopexit335.loopexit.unr-lcssa ]
  %.2267393.epil.init = phi i32 [ 0, %.lr.ph397.preheader ], [ %i.rr, %.loopexit335.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod787)
  %i.rs = and i32 %.2267393.epil.init, 7
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.y, label %.loopexit335.loopexit.epilog-lcssa

bb.y:                                             ; preds = %.lr.ph397.epil.preheader
  %i.ru = load i8, ptr %.4246394.epil.init, align 1, !tbaa !24
  br label %.loopexit335.loopexit.epilog-lcssa

.loopexit335.loopexit.epilog-lcssa:               ; preds = %bb.y, %.lr.ph397.epil.preheader
  %.5.epil = phi i8 [ %i.ru, %bb.y ], [ %.4396.epil.init, %.lr.ph397.epil.preheader ]
  %isneg.epil = icmp slt i8 %.5.epil, 0
  %i.rv = select i1 %isneg.epil, i8 %i.ql, i8 0
  store i8 %i.rv, ptr %.2241395.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335.loopexit735.unr-lcssa:               ; preds = %.lr.ph392
  br i1 %lcmp.mod780.not, label %.loopexit335, label %.lr.ph392.epil.preheader

.lr.ph392.epil.preheader:                         ; preds = %.loopexit335.loopexit735.unr-lcssa, %.lr.ph392.preheader
  %.0239390.epil.init = phi ptr [ %i.dm, %.lr.ph392.preheader ], [ %i.qt, %.loopexit335.loopexit735.unr-lcssa ]
  %.0242389.epil.init = phi ptr [ %i.dd, %.lr.ph392.preheader ], [ %i.qm, %.loopexit335.loopexit735.unr-lcssa ]
  %.0265388.epil.init = phi i32 [ 0, %.lr.ph392.preheader ], [ %i.qu, %.loopexit335.loopexit735.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod781)
  %i.rw = and i32 %.0265388.epil.init, 1
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %bb.z, label %.loopexit335.loopexit735.epilog-lcssa

bb.z:                                             ; preds = %.lr.ph392.epil.preheader
  %i.ry = load i8, ptr %.0242389.epil.init, align 1, !tbaa !24
  %i.rz = lshr i8 %i.ry, 4
  %i.sa = mul i8 %i.rz, %i.ql
  br label %.loopexit335.loopexit735.epilog-lcssa

.loopexit335.loopexit735.epilog-lcssa:            ; preds = %bb.z, %.lr.ph392.epil.preheader
  %.1237.epil = phi i8 [ %i.sa, %bb.z ], [ 0, %.lr.ph392.epil.preheader ]
  store i8 %.1237.epil, ptr %.0239390.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335.loopexit736.unr-lcssa:               ; preds = %.lr.ph387.1
  br i1 %lcmp.mod774.not, label %.loopexit335, label %.lr.ph387.epil.preheader

.lr.ph387.epil.preheader:                         ; preds = %.loopexit335.loopexit736.unr-lcssa, %.lr.ph387.preheader
  %.2238386.epil.init = phi i8 [ 0, %.lr.ph387.preheader ], [ %i.rg, %.loopexit335.loopexit736.unr-lcssa ]
  %.1240385.epil.init = phi ptr [ %i.dm, %.lr.ph387.preheader ], [ %i.rf, %.loopexit335.loopexit736.unr-lcssa ]
  %.2244384.epil.init = phi ptr [ %i.dd, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit736.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.rh, %.loopexit335.loopexit736.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.sb = and i32 %.1266383.epil.init, 3
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.aa, label %.loopexit335.loopexit736.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sd = load i8, ptr %.2244384.epil.init, align 1, !tbaa !24
  br label %.loopexit335.loopexit736.epilog-lcssa

.loopexit335.loopexit736.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sd, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.se = lshr i8 %.3.epil, 6
  %i.sf = mul i8 %i.se, %i.ql
  store i8 %i.sf, ptr %.1240385.epil.init, align 1, !tbaa !24
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit736.epilog-lcssa, %.loopexit335.loopexit736.unr-lcssa, %.loopexit335.loopexit735.epilog-lcssa, %.loopexit335.loopexit735.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bc, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.bd, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod791.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.sg = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.cw ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 3
  store i8 -1, ptr %i.sh, align 1, !tbaa !24
  %i.si = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.cx ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !24
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 2
  store i8 %i.sk, ptr %i.sl, align 1, !tbaa !24
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !24
  %i.so = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !24
  %i.sp = load i8, ptr %i.si, align 1, !tbaa !24
  store i8 %i.sp, ptr %i.sg, align 1, !tbaa !24
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bf, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.cy, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod794.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bf, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter795 = phi i64 [ %prol.iter795.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.sq = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.sq ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 1
  store i8 -1, ptr %i.ss, align 1, !tbaa !24
  %i.st = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv35.i.prol
  %i.su = load i8, ptr %i.st, align 1, !tbaa !24
  store i8 %i.su, ptr %i.sr, align 1, !tbaa !24
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter795.next = add i64 %prol.iter795, 1   ; 2 uses
  %prol.iter795.cmp.not = icmp eq i64 %prol.iter795.next, %xtraiter793
  br i1 %prol.iter795.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !458

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bf, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.cz, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.sv = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.sw = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.sv ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  store i8 -1, ptr %i.sx, align 1, !tbaa !24
  %i.sy = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv35.i
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !24
  store i8 %i.sz, ptr %i.sw, align 1, !tbaa !24
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.ta = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.tb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 1
  store i8 -1, ptr %i.tc, align 1, !tbaa !24
  %i.td = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.next36.i
  %i.te = load i8, ptr %i.td, align 1, !tbaa !24
  store i8 %i.te, ptr %i.tb, align 1, !tbaa !24
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.tf = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  store i8 -1, ptr %i.th, align 1, !tbaa !24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.next36.i.1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !24
  store i8 %i.tj, ptr %i.tg, align 1, !tbaa !24
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tk = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.tl = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.tk ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 1
  store i8 -1, ptr %i.tm, align 1, !tbaa !24
  %i.tn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.next36.i.2
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !24
  store i8 %i.to, ptr %i.tl, align 1, !tbaa !24
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !459

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tp = shl nuw nsw i64 %indvars.iv.i, 2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.tp ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 3
  store i8 -1, ptr %i.tr, align 1, !tbaa !24
  %i.ts = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tt = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ts ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 2
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !24
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 2
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !24
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !24
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tq, i64 1
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !24
  %i.ua = load i8, ptr %i.tt, align 1, !tbaa !24
  store i8 %i.ua, ptr %i.tq, align 1, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ub = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.uc = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ub ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 -1, ptr %i.ud, align 1, !tbaa !24
  %i.ue = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.uf = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ue ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !24
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !24
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !24
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !24
  %i.um = load i8, ptr %i.uf, align 1, !tbaa !24
  store i8 %i.um, ptr %i.uc, align 1, !tbaa !24
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !430

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.dd, i64 %i.bg, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bd, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.be, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod770.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.un = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.cn ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 3
  store i8 -1, ptr %i.uo, align 1, !tbaa !24
  %i.up = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.co ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !24
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 2
  store i8 %i.ur, ptr %i.us, align 1, !tbaa !24
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !24
  %i.uv = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  store i8 %i.uu, ptr %i.uv, align 1, !tbaa !24
  %i.uw = load i8, ptr %i.up, align 1, !tbaa !24
  store i8 %i.uw, ptr %i.un, align 1, !tbaa !24
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bf, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cp, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.be, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader737, label %vector.body

vector.body:                                      ; preds = %.lr.ph32.i314.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph32.i314.preheader ] ; 2 uses
  %i.ux = sub i64 %i.bf, %index                   ; 2 uses
  %i.uy = shl nuw nsw i64 %i.ux, 1
  %i.uz = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ux
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vb, align 1, !tbaa !24
  %i.vc = getelementptr inbounds i8, ptr %i.uz, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vc, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vd = icmp eq i64 %index.next, %n.vec
  br i1 %i.vd, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader737

.lr.ph32.i314.preheader737:                       ; preds = %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bf, %.lr.ph32.i314.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.preheader737, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316, %.lr.ph32.i314 ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader737 ] ; 4 uses
  %i.ve = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vf = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.ve ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 1
  store i8 -1, ptr %i.vg, align 1, !tbaa !24
  %i.vh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv35.i315
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !24
  store i8 %i.vi, ptr %i.vf, align 1, !tbaa !24
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1
  %.not39.i317 = icmp eq i64 %indvars.iv35.i315, 0
  br i1 %.not39.i317, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !461

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.vj = shl nuw nsw i64 %indvars.iv.i309, 2
  %i.vk = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.vj ; 4 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 3
  store i8 -1, ptr %i.vl, align 1, !tbaa !24
  %i.vm = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.vn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.vm ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !24
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vk, i64 2
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !24
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 1
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !24
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vk, i64 1
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !24
  %i.vu = load i8, ptr %i.vn, align 1, !tbaa !24
  store i8 %i.vu, ptr %i.vk, align 1, !tbaa !24
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.vv = shl nuw nsw i64 %indvars.iv.next.i310, 2
  %i.vw = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.vv ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 3
  store i8 -1, ptr %i.vx, align 1, !tbaa !24
  %i.vy = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.vz = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.vy ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 2
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !24
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !24
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !24
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !24
  %i.wg = load i8, ptr %i.vz, align 1, !tbaa !24
  store i8 %i.wg, ptr %i.vw, align 1, !tbaa !24
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !430

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bc, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.cl, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.xp, %.lr.ph382 ], [ %i.dm, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.xq, %.lr.ph382 ], [ %i.dd, %.lr.ph382.preheader ] ; 9 uses
  %niter768 = phi i32 [ %niter768.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.wh = load i8, ptr %.0249380, align 1, !tbaa !24
  %i.wi = zext i8 %i.wh to i16
  %i.wj = shl nuw i16 %i.wi, 8
  %i.wk = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !24
  %i.wm = zext i8 %i.wl to i16
  %i.wn = or disjoint i16 %i.wj, %i.wm
  store i16 %i.wn, ptr %.0381, align 2, !tbaa !85
  %i.wo = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.wp = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !24
  %i.wr = zext i8 %i.wq to i16
  %i.ws = shl nuw i16 %i.wr, 8
  %i.wt = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !24
  %i.wv = zext i8 %i.wu to i16
  %i.ww = or disjoint i16 %i.ws, %i.wv
  store i16 %i.ww, ptr %i.wo, align 2, !tbaa !85
  %i.wx = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.wy = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !24
  %i.xa = zext i8 %i.wz to i16
  %i.xb = shl nuw i16 %i.xa, 8
  %i.xc = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !24
  %i.xe = zext i8 %i.xd to i16
  %i.xf = or disjoint i16 %i.xb, %i.xe
  store i16 %i.xf, ptr %i.wx, align 2, !tbaa !85
  %i.xg = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.xh = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !24
  %i.xj = zext i8 %i.xi to i16
  %i.xk = shl nuw i16 %i.xj, 8
  %i.xl = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !24
  %i.xn = zext i8 %i.xm to i16
  %i.xo = or disjoint i16 %i.xk, %i.xn
  store i16 %i.xo, ptr %i.xg, align 2, !tbaa !85
  %i.xp = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382, !llvm.loop !462

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bd, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.ck, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.yj, %.lr.ph378 ], [ %i.dm, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.yk, %.lr.ph378 ], [ %i.dd, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.xr = load i8, ptr %.1250376, align 1, !tbaa !24
  %i.xs = zext i8 %i.xr to i16
  %i.xt = shl nuw i16 %i.xs, 8
  %i.xu = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !24
  %i.xw = zext i8 %i.xv to i16
  %i.xx = or disjoint i16 %i.xt, %i.xw
  store i16 %i.xx, ptr %.1377, align 2, !tbaa !85
  %i.xy = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.xy, align 2, !tbaa !85
  %i.xz = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.ya = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !24
  %i.yc = zext i8 %i.yb to i16
  %i.yd = shl nuw i16 %i.yc, 8
  %i.ye = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !24
  %i.yg = zext i8 %i.yf to i16
  %i.yh = or disjoint i16 %i.yd, %i.yg
  store i16 %i.yh, ptr %i.xz, align 2, !tbaa !85
  %i.yi = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.yi, align 2, !tbaa !85
  %i.yj = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit741.unr-lcssa, label %.lr.ph378, !llvm.loop !463

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.zm, %.lr.ph374 ], [ %i.dm, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.zn, %.lr.ph374 ], [ %i.dd, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.zl, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.yl = load i8, ptr %.2251372, align 1, !tbaa !24
  %i.ym = zext i8 %i.yl to i16
  %i.yn = shl nuw i16 %i.ym, 8
  %i.yo = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !24
  %i.yq = zext i8 %i.yp to i16
  %i.yr = or disjoint i16 %i.yn, %i.yq
  store i16 %i.yr, ptr %.2373, align 2, !tbaa !85
  %i.ys = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !24
  %i.yu = zext i8 %i.yt to i16
  %i.yv = shl nuw i16 %i.yu, 8
  %i.yw = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !24
  %i.yy = zext i8 %i.yx to i16
  %i.yz = or disjoint i16 %i.yv, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.yz, ptr %i.za, align 2, !tbaa !85
  %i.zb = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !24
  %i.zd = zext i8 %i.zc to i16
  %i.ze = shl nuw i16 %i.zd, 8
  %i.zf = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !24
  %i.zh = zext i8 %i.zg to i16
  %i.zi = or disjoint i16 %i.ze, %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.zi, ptr %i.zj, align 2, !tbaa !85
  %i.zk = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.zk, align 2, !tbaa !85
  %i.zl = add nuw i32 %.5270371, 1                ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.zl, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !464

.loopexit.loopexit740.unr-lcssa:                  ; preds = %.lr.ph382
  br i1 %lcmp.mod765.not, label %.loopexit, label %.lr.ph382.epil.preheader

.lr.ph382.epil.preheader:                         ; preds = %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.preheader
  %.0381.epil.init = phi ptr [ %i.dm, %.lr.ph382.preheader ], [ %i.xp, %.loopexit.loopexit740.unr-lcssa ]
  %.0249380.epil.init = phi ptr [ %i.dd, %.lr.ph382.preheader ], [ %i.xq, %.loopexit.loopexit740.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod766)
  br label %.lr.ph382.epil

.lr.ph382.epil:                                   ; preds = %.lr.ph382.epil, %.lr.ph382.epil.preheader
  %.0381.epil = phi ptr [ %i.zv, %.lr.ph382.epil ], [ %.0381.epil.init, %.lr.ph382.epil.preheader ] ; 2 uses
  %.0249380.epil = phi ptr [ %i.zw, %.lr.ph382.epil ], [ %.0249380.epil.init, %.lr.ph382.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph382.epil ], [ 0, %.lr.ph382.epil.preheader ]
  %i.zo = load i8, ptr %.0249380.epil, align 1, !tbaa !24
  %i.zp = zext i8 %i.zo to i16
  %i.zq = shl nuw i16 %i.zp, 8
  %i.zr = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 1
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !24
  %i.zt = zext i8 %i.zs to i16
  %i.zu = or disjoint i16 %i.zq, %i.zt
  store i16 %i.zu, ptr %.0381.epil, align 2, !tbaa !85
  %i.zv = getelementptr inbounds nuw i8, ptr %.0381.epil, i64 2
  %i.zw = getelementptr inbounds nuw i8, ptr %.0249380.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter764
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph382.epil, !llvm.loop !465

.loopexit.loopexit741.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod762.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit741.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.dm, %.lr.ph378.preheader ], [ %i.yj, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dd, %.lr.ph378.preheader ], [ %i.yk, %.loopexit.loopexit741.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.zx = load i8, ptr %.1250376.epil.init, align 1, !tbaa !24
  %i.zy = zext i8 %i.zx to i16
  %i.zz = shl nuw i16 %i.zy, 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !24
  %i.aac = zext i8 %i.aab to i16
  %i.aad = or disjoint i16 %i.zz, %i.aac
  store i16 %i.aad, ptr %.1377.epil.init, align 2, !tbaa !85
  %i.aae = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.aae, align 2, !tbaa !85
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit741.unr-lcssa, %.loopexit.loopexit740.unr-lcssa, %.lr.ph382.epil, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !466

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.as) #37
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.aaf = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.50, ptr %i.aaf, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.as) #37
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
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43   ; 5 uses
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
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #38 ; 4 uses
  %.not92 = icmp eq ptr %i.r, null
  br i1 %.not92, label %stbi__malloc_mad3.exit.thread, label %.preheader100

.preheader100:                                    ; preds = %stbi__malloc_mad3.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = sext i32 %i.c to i64                     ; 9 uses
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread16.i.i, %stbi__malloc_mad3.exit
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.u, align 8, !tbaa !26
  br label %.critedge

bb.f:                                             ; preds = %.preheader100, %bb.h
  %indvars.iv112 = phi i64 [ 0, %.preheader100 ], [ %indvars.iv.next113, %bb.h ] ; 5 uses
  %.076106 = phi ptr [ %1, %.preheader100 ], [ %.379, %bb.h ] ; 3 uses
  %.085104 = phi i32 [ %2, %.preheader100 ], [ %.388, %bb.h ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !27  ; 4 uses
  %i.ab = xor i32 %i.y, -1
  %i.ac = add i32 %i.w, %i.ab
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.aa                   ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27 ; 4 uses
  %i.al = xor i32 %i.ai, -1
  %i.am = add i32 %i.ag, %i.al
  %i.an = add i32 %i.am, %i.ak                    ; 2 uses
  %i.ao = udiv i32 %i.an, %i.ak                   ; 4 uses
  %i.ap = icmp ule i32 %i.aa, %i.ad
  %i.aq = icmp ule i32 %i.ak, %i.an
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !53
  %i.at = mul i32 %i.ae, %4
  %i.au = mul i32 %i.at, %i.as
  %i.av = add nsw i32 %i.au, 7
  %i.aw = ashr i32 %i.av, 3
  %i.ax = add nsw i32 %i.aw, 1
  %i.ay = mul nsw i32 %i.ax, %i.ao                ; 2 uses
  %i.az = tail call i32 @stbi__create_png_image_raw(ptr noundef nonnull %0, ptr noundef %.076106, i32 noundef %.085104, i32 noundef %3, i32 noundef %i.ae, i32 noundef %i.ao, i32 noundef %4, i32 noundef %5)
  %.not93.not = icmp eq i32 %i.az, 0
  br i1 %.not93.not, label %.thread, label %.preheader99

.preheader99:                                     ; preds = %bb.g
  %i.ba = icmp sgt i32 %i.ao, 0
  %i.bb = icmp sgt i32 %i.ae, 0
  %or.cond107 = and i1 %i.ba, %i.bb
  %.pre115 = load ptr, ptr %i.s, align 8, !tbaa !431 ; 4 uses
  br i1 %or.cond107, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %.preheader99
  %i.bc = load ptr, ptr %0, align 8, !tbaa !32
  %i.bd = sext i32 %i.aa to i64                   ; 3 uses
  %i.be = sext i32 %i.y to i64                    ; 3 uses
  %i.bf = zext nneg i32 %i.ae to i64              ; 3 uses
  %i.bg = zext nneg i32 %i.ao to i64
  %.pre.pre = load i32, ptr %i.bc, align 8, !tbaa !44
  %factor.op.mul = mul i32 %i.c, %.pre.pre
  %xtraiter = and i64 %i.bf, 1
  %i.bh = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %i.bf, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod122 = trunc i32 %i.ae to i1
  br label %.preheader

.thread:                                          ; preds = %bb.g
  tail call void @free(ptr noundef %i.r) #37
  br label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %i.bi = trunc i64 %indvars.iv109 to i32
  %i.bj = mul i32 %i.ak, %i.bi
  %i.bk = add i32 %i.bj, %i.ai
  %.reass = mul i32 %i.bk, %factor.op.mul
  %i.bl = mul nuw nsw i64 %indvars.iv109, %i.bf   ; 3 uses
  %i.bm = zext i32 %.reass to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bm ; 3 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bo = mul nsw i64 %indvars.iv, %i.bd
  %i.bp = add nsw i64 %i.bo, %i.be
  %i.bq = mul nsw i64 %i.bp, %i.t
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  %i.bs = add nuw nsw i64 %indvars.iv, %i.bl
  %i.bt = mul nsw i64 %i.bs, %i.t
  %i.bu = getelementptr inbounds i8, ptr %.pre115, i64 %i.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bu, i64 %i.t, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv.next, %i.bd
  %i.bw = add nsw i64 %i.bv, %i.be
  %i.bx = mul nsw i64 %i.bw, %i.t
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = add nuw nsw i64 %indvars.iv.next, %i.bl
  %i.ca = mul nsw i64 %i.bz, %i.t
  %i.cb = getelementptr inbounds i8, ptr %.pre115, i64 %i.ca
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.cb, i64 %i.t, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !467

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.cc = mul nsw i64 %indvars.iv.epil.init, %i.bd
  %i.cd = add nsw i64 %i.cc, %i.be
  %i.ce = mul nsw i64 %i.cd, %i.t
  %i.cf = getelementptr inbounds i8, ptr %i.bn, i64 %i.ce
  %i.cg = add nuw nsw i64 %indvars.iv.epil.init, %i.bl
  %i.ch = mul nsw i64 %i.cg, %i.t
  %i.ci = getelementptr inbounds i8, ptr %.pre115, i64 %i.ch
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.ci, i64 %i.t, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next110, %i.bg
  br i1 %i.cj, label %.preheader, label %._crit_edge103.split, !llvm.loop !468

._crit_edge103.split:                             ; preds = %._crit_edge, %.preheader99
  tail call void @free(ptr noundef %.pre115) #37
  %i.ck = zext i32 %i.ay to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %.076106, i64 %i.ck
  %i.cm = sub i32 %.085104, %i.ay
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge103.split, %bb.f
  %.388 = phi i32 [ %.085104, %bb.f ], [ %i.cm, %._crit_edge103.split ]
  %.379 = phi ptr [ %.076106, %bb.f ], [ %i.cl, %._crit_edge103.split ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, 7
  br i1 %exitcond.not, label %bb.i, label %bb.f, !llvm.loop !469

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.s, align 8, !tbaa !431
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.i, %stbi__malloc_mad3.exit.thread, %bb.b
  %.4 = phi i32 [ %i.h, %bb.b ], [ 1, %bb.i ], [ 0, %stbi__malloc_mad3.exit.thread ], [ 0, %.thread ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @stbi__compute_transparency(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 3 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
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
end_hunk_8
begin_hunk_9_@stbi__compute_transparency16:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 10 uses
  %i.h = icmp eq i32 %2, 2
  %.not31 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not31, label %.loopexit, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %.preheader
  %i.k = zext i32 %i.e to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 25
  br i1 %min.iters.check, label %.lr.ph30.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph30.preheader
  %i.l = add i32 %i.e, -1
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = getelementptr i8, ptr %i.g, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 4
  %scevgep37 = getelementptr i8, ptr %1, i64 2
  %bound0 = icmp ult ptr %i.g, %scevgep37
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph30.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.k, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec = sub nsw i64 %i.k, %i.r                 ; 3 uses
  %i.s = shl nsw i64 %n.vec, 2
  %i.t = getelementptr i8, ptr %i.g, i64 %i.s
  %i.u = trunc i64 %n.vec to i32
  %i.v = load i16, ptr %1, align 2, !tbaa !85, !alias.scope !473
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.v, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %i.g, i64 %i.w
  %i.y = getelementptr i8, ptr %i.g, i64 %i.w
  %i.z = getelementptr i8, ptr %i.g, i64 %i.w
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aa = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.ab = sext <4 x i1> %i.aa to <4 x i16>        ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.ad = getelementptr i8, ptr %i.x, i64 6
  %i.ae = getelementptr i8, ptr %i.y, i64 10
  %i.af = getelementptr i8, ptr %i.z, i64 14
  %i.ag = extractelement <4 x i16> %i.ab, i64 0
  store i16 %i.ag, ptr %i.ac, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %i.ah = extractelement <4 x i16> %i.ab, i64 1
  store i16 %i.ah, ptr %i.ad, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %i.ai = extractelement <4 x i16> %i.ab, i64 2
  store i16 %i.ai, ptr %i.ae, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %i.aj = extractelement <4 x i16> %i.ab, i64 3
  store i16 %i.aj, ptr %i.af, align 2, !tbaa !85, !alias.scope !476, !noalias !473
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph30.preheader42, label %vector.body, !llvm.loop !478

.lr.ph30.preheader42:                             ; preds = %vector.body, %vector.memcheck, %.lr.ph30.preheader
  %.029.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph30.preheader ], [ %i.t, %vector.body ] ; 2 uses
  %.02228.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph30.preheader ], [ %i.u, %vector.body ] ; 4 uses
  %i.al = sub i32 %i.e, %.02228.ph
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader42, %.lr.ph30.prol
  %.029.prol = phi ptr [ %i.ar, %.lr.ph30.prol ], [ %.029.ph, %.lr.ph30.preheader42 ] ; 3 uses
  %.02228.prol = phi i32 [ %i.as, %.lr.ph30.prol ], [ %.02228.ph, %.lr.ph30.preheader42 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph30.prol ], [ 0, %.lr.ph30.preheader42 ]
  %i.am = load i16, ptr %.029.prol, align 2, !tbaa !85
  %i.an = load i16, ptr %1, align 2, !tbaa !85
  %i.ao = icmp ne i16 %i.am, %i.an
  %i.ap = sext i1 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.prol, i64 2
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !85
  %i.ar = getelementptr inbounds nuw i8, ptr %.029.prol, i64 4 ; 2 uses
  %i.as = add nuw i32 %.02228.prol, 1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol, !llvm.loop !479

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader42
  %.029.unr = phi ptr [ %.029.ph, %.lr.ph30.preheader42 ], [ %i.ar, %.lr.ph30.prol ]
  %.02228.unr = phi i32 [ %.02228.ph, %.lr.ph30.preheader42 ], [ %i.as, %.lr.ph30.prol ]
  %i.at = sub i32 %.02228.ph, %i.e
  %i.au = icmp ugt i32 %i.at, -4
  br i1 %i.au, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %.029 = phi ptr [ %i.bs, %.lr.ph30 ], [ %.029.unr, %.lr.ph30.prol.loopexit ] ; 9 uses
  %.02228 = phi i32 [ %i.bt, %.lr.ph30 ], [ %.02228.unr, %.lr.ph30.prol.loopexit ]
  %i.av = load i16, ptr %.029, align 2, !tbaa !85
  %i.aw = load i16, ptr %1, align 2, !tbaa !85
  %i.ax = icmp ne i16 %i.av, %i.aw
  %i.ay = sext i1 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.029, i64 2
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !85
  %i.bc = load i16, ptr %1, align 2, !tbaa !85
  %i.bd = icmp ne i16 %i.bb, %i.bc
  %i.be = sext i1 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.029, i64 6
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !85
  %i.bi = load i16, ptr %1, align 2, !tbaa !85
  %i.bj = icmp ne i16 %i.bh, %i.bi
  %i.bk = sext i1 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %.029, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !85
  %i.bo = load i16, ptr %1, align 2, !tbaa !85
  %i.bp = icmp ne i16 %i.bn, %i.bo
  %i.bq = sext i1 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %.029, i64 14
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !85
  %i.bs = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.bt = add nuw i32 %.02228, 4                  ; 2 uses
  %exitcond33.not.3 = icmp eq i32 %i.bt, %i.e
  br i1 %exitcond33.not.3, label %.loopexit, label %.lr.ph30, !llvm.loop !480

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.127 = phi ptr [ %i.g, %.lr.ph ], [ %i.cg, %bb.f ] ; 5 uses
  %.12326 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.f ]
  %i.bu = load i16, ptr %.127, align 2, !tbaa !85
  %i.bv = load i16, ptr %1, align 2, !tbaa !85
  %i.bw = icmp eq i16 %i.bu, %i.bv
  br i1 %i.bw, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.127, i64 2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !85
  %i.bz = load i16, ptr %i.i, align 2, !tbaa !85
  %i.ca = icmp eq i16 %i.by, %i.bz
  br i1 %i.ca, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %.127, i64 4
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !85
  %i.cd = load i16, ptr %i.j, align 2, !tbaa !85
  %i.ce = icmp eq i16 %i.cc, %i.cd
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %.127, i64 6
  store i16 0, ptr %i.cf, align 2, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %.127, i64 8
  %i.ch = add nuw i32 %.12326, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !481

.loopexit:                                        ; preds = %bb.f, %.lr.ph30.prol.loopexit, %.lr.ph30, %.preheader24, %.preheader
  ret i32 1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbi__expand_png_palette(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43
  %i.e = mul i32 %i.d, %i.b                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !431  ; 9 uses
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
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef %i.l) #38 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %stbi__malloc_mad2.exit.thread, label %bb.c

stbi__malloc_mad2.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__malloc_mad2.exit
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.1, ptr %i.o, align 8, !tbaa !26
  br label %bb.d

bb.c:                                             ; preds = %stbi__malloc_mad2.exit
  %i.p = icmp eq i32 %3, 3
  %.not56 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %wide.trip.count = zext i32 %i.e to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.e, 4
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not56, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %wide.trip.count62 = zext i32 %i.e to i64       ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count62, 1
  %i.r = icmp eq i32 %i.e, 1
  br i1 %i.r, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter75 = and i64 %wide.trip.count62, 4294967294
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %indvars.iv59 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next60.1, %.lr.ph55 ] ; 3 uses
  %.04553 = phi ptr [ %i.m, %.lr.ph55.preheader.new ], [ %i.as, %.lr.ph55 ] ; 7 uses
  %niter76 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter76.next.1, %.lr.ph55 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  store i8 %i.x, ptr %.04553, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.04553, i64 1
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.04553, i64 2
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.04553, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  store i8 %i.al, ptr %i.ae, align 1, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %.04553, i64 4
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %.04553, i64 5
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %.04553, i64 6 ; 2 uses
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %niter76.next.1 = add i64 %niter76, 2           ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !482

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.14651 = phi ptr [ %i.m, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load <4 x i8>, ptr %i.ax, align 1, !tbaa !24
  store <4 x i8> %i.ay, ptr %.14651, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.14651, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load <4 x i8>, ptr %i.bf, align 1, !tbaa !24
  store <4 x i8> %i.bg, ptr %i.az, align 1, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %.14651, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !24
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  %i.bo = load <4 x i8>, ptr %i.bn, align 1, !tbaa !24
  store <4 x i8> %i.bo, ptr %i.bh, align 1, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %.14651, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !24
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  %i.bw = load <4 x i8>, ptr %i.bv, align 1, !tbaa !24
  store <4 x i8> %i.bw, ptr %i.bp, align 1, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %.14651, i64 16 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit69.unr-lcssa, label %.lr.ph, !llvm.loop !483

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph55
  %lcmp.mod73.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod73.not, label %.loopexit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv59.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next60.1, %.loopexit.loopexit.unr-lcssa ]
  %.04553.epil.init = phi ptr [ %i.m, %.lr.ph55.preheader ], [ %i.as, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv59.epil.init
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !24
  store i8 %i.cd, ptr %.04553.epil.init, align 1, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !24
  %i.cj = getelementptr inbounds nuw i8, ptr %.04553.epil.init, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !24
  br label %.loopexit

.loopexit.loopexit69.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit69.unr-lcssa ]
  %.14651.epil.init = phi ptr [ %i.m, %.lr.ph.preheader ], [ %i.bx, %.loopexit.loopexit69.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.14651.epil = phi ptr [ %.14651.epil.init, %.lr.ph.epil.preheader ], [ %i.cq, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !24
  %i.cm = zext i8 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn
  %i.cp = load <4 x i8>, ptr %i.co, align 1, !tbaa !24
  store <4 x i8> %i.cp, ptr %.14651.epil, align 1, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %.14651.epil, i64 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !484

.loopexit:                                        ; preds = %.loopexit.loopexit69.unr-lcssa, %.lr.ph.epil, %.lr.ph55.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader49, %.preheader
  tail call void @free(ptr noundef %i.g) #37
  store ptr %i.m, ptr %i.f, align 8, !tbaa !431
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %stbi__malloc_mad2.exit.thread
  %.0 = phi i32 [ 0, %stbi__malloc_mad2.exit.thread ], [ 1, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_set_unpremultiply_on_load(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  store i32 %0, ptr @stbi__unpremultiply_on_load_global, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @stbi_convert_iphone_png_to_rgb(i32 noundef %0) local_unnamed_addr #10 {
end_hunk_9
