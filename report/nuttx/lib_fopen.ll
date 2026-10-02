Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_fopen?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"/libs/libc/stdio/lib_fopen.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noalias ptr @fdopen(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @lib_get_streams() #9      ; 6 uses
  %i.b = tail call i32 @lib_mode2oflags(ptr noundef %1) #10 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %0, 2
  br i1 %i.d, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias dereferenceable_or_null(192) ptr @zalloc(i64 noundef 192) #11 ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @nxsem_wait(ptr noundef %i.a) #9 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #10
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 608 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.e, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  store ptr %i.e, ptr %i.k, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 616 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.e, ptr %i.m, align 8
  store ptr %i.e, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = tail call i32 @nxsem_post(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %i.p, align 8
  %i.q = tail call i32 @nxmutex_init(ptr noundef nonnull %i.o) #9 ; 0 uses
  %.pre = zext nneg i32 %0 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = sext i32 %0 to i64                       ; 2 uses
  %i.t = getelementptr inbounds [192 x i8], ptr %i.r, i64 %i.s
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %i.s, %bb.j ], [ %.pre, %bb.i ]
  %.042 = phi ptr [ %i.t, %bb.j ], [ %i.e, %bb.i ] ; 7 uses
  %2 = getelementptr inbounds nuw i8, ptr %.042, <4 x i64> <i64 120, i64 184, i64 120, i64 120>
  %i.u = getelementptr inbounds nuw i8, ptr %.042, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %.042, i64 184
  store <4 x ptr> %2, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.042, i64 186
  store i8 12, ptr %i.w, align 2
  %i.x = inttoptr i64 %.pre-phi to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %.042, i64 80
  store ptr %i.x, ptr %i.y, align 8
  %i.z = trunc i32 %i.b to i16
  store i16 %i.z, ptr %i.v, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.042, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %bb.c, %bb.e
  %.0 = phi i32 [ %i.g, %bb.e ], [ -12, %bb.c ]
  %i.ab = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #12, !srcloc !7
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = sub nsw i32 0, %.0
  %i.ae = tail call ptr @__errno() #9
  store i32 %i.ad, ptr %i.ae, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.a, %bb.k
  %.043 = phi ptr [ %.042, %bb.k ], [ null, %bb.a ], [ null, %bb.m ], [ null, %bb.l ]
  ret ptr %.043
}

; Function Attrs: noredzone optsize
declare dso_local ptr @lib_get_streams() local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_mode2oflags(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 214, ptr noundef nonnull @.str.1) #13
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.s
  %.026 = phi ptr [ %i.o, %bb.s ], [ %0, %bb.a ]  ; 2 uses
  %.024 = phi i32 [ %.125, %bb.s ], [ 0, %bb.a ]  ; 13 uses
  %.0 = phi i32 [ %.1, %bb.s ], [ 0, %bb.a ]      ; 9 uses
  %i.a = load i8, ptr %.026, align 1
  switch i8 %i.a, label %bb.t [
    i8 0, label %.loopexit
    i8 114, label %bb.c
    i8 119, label %bb.d
    i8 97, label %bb.e
    i8 43, label %bb.f
    i8 109, label %bb.j
    i8 98, label %bb.k
    i8 101, label %bb.m
    i8 120, label %bb.o
    i8 116, label %bb.q
  ]

bb.c:                                             ; preds = %.preheader
  %i.b = icmp eq i32 %.024, 0
  br i1 %i.b, label %bb.s, label %bb.t

bb.d:                                             ; preds = %.preheader
  %i.c = icmp eq i32 %.024, 0
  br i1 %i.c, label %bb.s, label %bb.t

bb.e:                                             ; preds = %.preheader
  %i.d = icmp eq i32 %.024, 0
  br i1 %i.d, label %bb.s, label %bb.t

bb.f:                                             ; preds = %.preheader
  switch i32 %.024, label %bb.t [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 4, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.e = and i32 %.0, 524448
  %i.f = or disjoint i32 %i.e, 2
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.g = and i32 %.0, 524448
  %i.h = or disjoint i32 %i.g, 578
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.i = and i32 %.0, 524448
  %i.j = or disjoint i32 %i.i, 1090
  br label %bb.s

bb.j:                                             ; preds = %.preheader
  %.not34 = icmp eq i32 %.024, 1
  br i1 %.not34, label %bb.s, label %bb.t

bb.k:                                             ; preds = %.preheader
  %.not33 = icmp eq i32 %.024, 0
  br i1 %.not33, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = and i32 %.0, -33
  br label %bb.s

bb.m:                                             ; preds = %.preheader
  %.not32 = icmp eq i32 %.024, 0
  br i1 %.not32, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.l = or i32 %.0, 524288
  br label %bb.s

bb.o:                                             ; preds = %.preheader
  %.not31 = icmp eq i32 %.024, 0
  br i1 %.not31, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.m = or i32 %.0, 128
  br label %bb.s

bb.q:                                             ; preds = %.preheader
  %.not30 = icmp eq i32 %.024, 0
  br i1 %.not30, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.n = or i32 %.0, 32
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.l, %bb.n, %bb.p, %bb.r, %bb.i, %bb.h, %bb.g, %bb.j
  %.125 = phi i32 [ %.024, %bb.r ], [ 1, %bb.c ], [ 2, %bb.d ], [ 1, %bb.g ], [ 2, %bb.h ], [ 4, %bb.i ], [ 1, %bb.j ], [ %.024, %bb.l ], [ %.024, %bb.n ], [ %.024, %bb.p ], [ 4, %bb.e ]
  %.1 = phi i32 [ %i.n, %bb.r ], [ 32, %bb.c ], [ 609, %bb.d ], [ %i.f, %bb.g ], [ %i.h, %bb.h ], [ %i.j, %bb.i ], [ %.0, %bb.j ], [ %i.k, %bb.l ], [ %i.l, %bb.n ], [ %i.m, %bb.p ], [ 1121, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.026, i64 1
  br label %.preheader, !llvm.loop !8

bb.t:                                             ; preds = %.preheader, %bb.c, %bb.d, %bb.e, %bb.f, %bb.j, %bb.k, %bb.m, %bb.o, %bb.q
  %i.p = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #12, !srcloc !7
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.r = tail call ptr @__errno() #9
  store i32 22, ptr %i.r, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.t, %bb.u
  %.027 = phi i32 [ -1, %bb.t ], [ -1, %bb.u ], [ %.0, %.preheader ]
  ret i32 %.027
}

; Function Attrs: noredzone optsize allocsize(0)
declare dso_local noalias ptr @zalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noalias ptr @fopen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @lib_mode2oflags(ptr noundef %1) #10 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %i.a, i32 noundef 438) #9 ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @fdopen(i32 noundef %i.c, ptr noundef %1) #10 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @close(i32 noundef %i.c) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.010 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.010
}

; Function Attrs: nofree noredzone optsize
declare dso_local noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_post(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @nxmutex_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
