inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }

@osp = external local_unnamed_addr global ptr, align 8
@zarith_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zadd }, %struct.op_def { ptr @.str.1, ptr @zceiling }, %struct.op_def { ptr @.str.2, ptr @zdiv }, %struct.op_def { ptr @.str.3, ptr @zidiv }, %struct.op_def { ptr @.str.4, ptr @zfloor }, %struct.op_def { ptr @.str.5, ptr @zmod }, %struct.op_def { ptr @.str.6, ptr @zmul }, %struct.op_def { ptr @.str.7, ptr @zneg }, %struct.op_def { ptr @.str.8, ptr @zround }, %struct.op_def { ptr @.str.9, ptr @zsub }, %struct.op_def { ptr @.str.10, ptr @ztruncate }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2add\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"1ceiling\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2div\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"2idiv\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1floor\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2mod\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"2mul\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1neg\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"1round\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"2sub\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"1truncate\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zadd(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.j [
    i16 11, label %bb.b
    i16 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8
  %3 = lshr i16 %i.e, 2
  %4 = and i16 %3, 63
  switch i16 %4, label %bb.j [
    i16 11, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load float, ptr %0, align 8, !tbaa !11
  %i.g = load float, ptr %i.c, align 8, !tbaa !11
  %i.h = fadd float %i.f, %i.g
  store float %i.h, ptr %i.c, align 8, !tbaa !11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !11
  %i.j = sitofp i64 %i.i to float
  %i.k = load float, ptr %0, align 8, !tbaa !11
  %i.l = fadd float %i.k, %i.j
  store float %i.l, ptr %i.c, align 8, !tbaa !11
  store i16 44, ptr %i.d, align 8, !tbaa !8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8
  %5 = lshr i16 %i.o, 2
  %6 = and i16 %5, 63
  switch i16 %6, label %bb.j [
    i16 11, label %bb.f
    i16 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !11
  %i.q = sitofp i64 %i.p to float
  %i.r = load float, ptr %i.m, align 8, !tbaa !11
  %i.s = fadd float %i.r, %i.q
  store float %i.s, ptr %i.m, align 8, !tbaa !11
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.v = add nsw i64 %i.u, %i.t                   ; 3 uses
  store i64 %i.v, ptr %i.m, align 8, !tbaa !11
  %i.w = xor i64 %i.v, %i.t
  %i.x = icmp slt i64 %i.w, 0
  %i.y = xor i64 %i.u, %i.t
  %i.z = icmp sgt i64 %i.y, -1
  %or.cond = and i1 %i.z, %i.x
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = sitofp i64 %i.v to float
  %i.ab = sitofp i64 %i.t to float
  %i.ac = fsub float %i.aa, %i.ab
  store float %i.ac, ptr %i.m, align 8, !tbaa !11
  store i16 44, ptr %i.n, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.c, %bb.d
  %i.ad = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  store ptr %i.ae, ptr @osp, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ -20, %bb.b ], [ -20, %bb.a ], [ 0, %bb.i ], [ -20, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -23, 1) i32 @zdiv(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %1 = lshr i16 %i.c, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.k [
    i16 11, label %bb.b
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !11   ; 3 uses
  %i.e = fcmp oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %3 = lshr i16 %i.g, 2
  %4 = and i16 %3, 63
  switch i16 %4, label %bb.k [
    i16 11, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load float, ptr %i.a, align 8, !tbaa !11
  %i.i = fdiv float %i.h, %i.d
  store float %i.i, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11
  %i.k = sitofp i64 %i.j to float
  %i.l = fdiv float %i.k, %i.d
  store float %i.l, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.f, align 8, !tbaa !8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !8
  %5 = lshr i16 %i.p, 2
  %6 = and i16 %5, 63
  switch i16 %6, label %bb.k [
    i16 11, label %bb.h
    i16 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = sitofp i64 %i.m to float
  %i.r = load float, ptr %i.a, align 8, !tbaa !11
  %i.s = fdiv float %i.r, %i.q
  store float %i.s, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11
  %i.u = sitofp i64 %i.t to float
  %i.v = sitofp i64 %i.m to float
  %i.w = fdiv float %i.u, %i.v
  store float %i.w, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.o, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %i.x = load ptr, ptr @osp, align 8, !tbaa !12
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16
  store ptr %i.y, ptr @osp, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ -23, %bb.f ], [ -20, %bb.a ], [ -23, %bb.b ], [ 0, %bb.j ], [ -20, %bb.c ], [ -20, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zmul(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.m [
    i16 11, label %bb.b
    i16 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8
  %3 = lshr i16 %i.e, 2
  %4 = and i16 %3, 63
  switch i16 %4, label %bb.m [
    i16 11, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load float, ptr %0, align 8, !tbaa !11
  %i.g = load float, ptr %i.c, align 8, !tbaa !11
  %i.h = fmul float %i.f, %i.g
  store float %i.h, ptr %i.c, align 8, !tbaa !11
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !11
  %i.j = sitofp i64 %i.i to float
  %i.k = load float, ptr %0, align 8, !tbaa !11
  %i.l = fmul float %i.k, %i.j
  store float %i.l, ptr %i.c, align 8, !tbaa !11
  store i16 44, ptr %i.d, align 8, !tbaa !8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8
  %5 = lshr i16 %i.o, 2
  %6 = and i16 %5, 63
  switch i16 %6, label %bb.m [
    i16 11, label %bb.f
    i16 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !11
  %i.q = sitofp i64 %i.p to float
  %i.r = load float, ptr %i.m, align 8, !tbaa !11
  %i.s = fmul float %i.r, %i.q
  store float %i.s, ptr %i.m, align 8, !tbaa !11
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !tbaa !11   ; 5 uses
  %i.u = load i64, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.v = tail call i64 @llvm.abs.i64(i64 %i.t, i1 true) ; 2 uses
  %i.w = tail call i64 @llvm.abs.i64(i64 %i.u, i1 true) ; 2 uses
  %i.x = icmp samesign ugt i64 %i.v, 32767
  %i.y = icmp samesign ugt i64 %i.w, 32767
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  %i.z = icmp ne i64 %i.t, 0
  %or.cond3 = and i1 %i.z, %or.cond
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aa = udiv i64 2147483647, %i.v
  %i.ab = icmp samesign ugt i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = sitofp i64 %i.t to float
  %i.ad = sitofp i64 %i.u to float
  %i.ae = fmul nnan float %i.ac, %i.ad            ; 2 uses
  %i.af = mul nsw i64 %i.u, %i.t
  %i.ag = icmp ne i64 %i.af, -2147483648
  %i.ah = fcmp une float %i.ae, f0xCF000000
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ae, ptr %i.m, align 8, !tbaa !11
  store i16 44, ptr %i.n, align 8, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.aj = mul nsw i64 %i.u, %i.t
  store i64 %i.aj, ptr %i.m, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.c, %bb.d
  %i.ak = load ptr, ptr @osp, align 8, !tbaa !12
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -16
  store ptr %i.al, ptr @osp, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.l
  %.0 = phi i32 [ -20, %bb.b ], [ -20, %bb.a ], [ 0, %bb.l ], [ -20, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zsub(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.j [
    i16 11, label %bb.b
    i16 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8
  %3 = lshr i16 %i.e, 2
  %4 = and i16 %3, 63
  switch i16 %4, label %bb.j [
    i16 11, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load float, ptr %0, align 8, !tbaa !11
  %i.g = load float, ptr %i.c, align 8, !tbaa !11
  %i.h = fsub float %i.g, %i.f
  store float %i.h, ptr %i.c, align 8, !tbaa !11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !11
  %i.j = sitofp i64 %i.i to float
  %i.k = load float, ptr %0, align 8, !tbaa !11
  %i.l = fsub float %i.j, %i.k
  store float %i.l, ptr %i.c, align 8, !tbaa !11
  store i16 44, ptr %i.d, align 8, !tbaa !8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8
  %5 = lshr i16 %i.o, 2
  %6 = and i16 %5, 63
  switch i16 %6, label %bb.j [
    i16 11, label %bb.f
    i16 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !11
  %i.q = sitofp i64 %i.p to float
  %i.r = load float, ptr %i.m, align 8, !tbaa !11
  %i.s = fsub float %i.r, %i.q
  store float %i.s, ptr %i.m, align 8, !tbaa !11
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !tbaa !11   ; 4 uses
  %i.u = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.v = sub nsw i64 %i.t, %i.u                   ; 2 uses
  store i64 %i.v, ptr %i.m, align 8, !tbaa !11
  %i.w = xor i64 %i.v, %i.t
  %i.x = xor i64 %i.u, %i.t
  %i.y = and i64 %i.w, %i.x
  %or.cond.not = icmp sgt i64 %i.y, -1
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = sitofp i64 %i.t to float
  %i.aa = sitofp i64 %i.u to float
  %i.ab = fsub float %i.z, %i.aa
  store float %i.ab, ptr %i.m, align 8, !tbaa !11
  store i16 44, ptr %i.n, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.c, %bb.d
  %i.ac = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  store ptr %i.ad, ptr @osp, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ -20, %bb.b ], [ -20, %bb.a ], [ 0, %bb.i ], [ -20, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zidiv(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %struct.ref_s, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %2 = lshr i16 %i.c, 2
  %3 = and i16 %2, 63
  switch i16 %3, label %zdiv.exit.thread [
    i16 11, label %bb.b
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !11   ; 3 uses
  %i.e = fcmp oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %zdiv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %4 = lshr i16 %i.g, 2
  %5 = and i16 %4, 63
  switch i16 %5, label %zdiv.exit.thread [
    i16 11, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load float, ptr %i.a, align 8, !tbaa !11
  %i.i = fdiv float %i.h, %i.d
  store float %i.i, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11
  %i.k = sitofp i64 %i.j to float
  %i.l = fdiv float %i.k, %i.d
  store float %i.l, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.f, align 8, !tbaa !8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %zdiv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !8
  %6 = lshr i16 %i.p, 2
  %7 = and i16 %6, 63
  switch i16 %7, label %zdiv.exit.thread [
    i16 11, label %bb.h
    i16 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = sitofp i64 %i.m to float
  %i.r = load float, ptr %i.a, align 8, !tbaa !11
  %i.s = fdiv float %i.r, %i.q
  store float %i.s, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !11
  %i.u = sitofp i64 %i.t to float
  %i.v = sitofp i64 %i.m to float
  %i.w = fdiv float %i.u, %i.v
  store float %i.w, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.o, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %i.x = load ptr, ptr @osp, align 8, !tbaa !12
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16
  store ptr %i.y, ptr @osp, align 8, !tbaa !12
  %i.z = tail call i32 (ptr, ...) @zcvi(ptr noundef nonnull %i.a) #7 ; 3 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %zdiv.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !15
  store ptr %0, ptr @osp, align 8, !tbaa !12
  br label %zdiv.exit.thread

zdiv.exit.thread:                                 ; preds = %bb.g, %bb.c, %bb.b, %bb.a, %bb.f, %bb.j, %bb.k
  %.0 = phi i32 [ %i.z, %bb.j ], [ %i.z, %bb.k ], [ -20, %bb.g ], [ -20, %bb.c ], [ -23, %bb.b ], [ -20, %bb.a ], [ -23, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @zcvi(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -23, 1) i32 @zmod(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 20
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = and i16 %i.g, 252
  %i.i = icmp eq i16 %i.h, 20
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !11
  %i.m = srem i64 %i.l, %i.j
  store i64 %i.m, ptr %i.a, align 8, !tbaa !11
  %i.n = load ptr, ptr @osp, align 8, !tbaa !12
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  store ptr %i.o, ptr @osp, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.d ], [ -20, %bb.a ], [ -23, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zneg(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.f [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 8, !tbaa !11
  %i.d = fneg float %i.c
  store float %i.d, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.f = icmp eq i64 %i.e, -2147483648
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float f0x4F000000, ptr %0, align 8, !tbaa !11
  store i16 44, ptr %i.a, align 8, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = sub nsw i64 0, %i.e
  store i64 %i.g, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zceiling(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.d [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 8, !tbaa !11
  %i.d = tail call float @llvm.ceil.f32(float %i.c)
  store float %i.d, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zfloor(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.d [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 8, !tbaa !11
  %i.d = tail call float @llvm.floor.f32(float %i.c)
  store float %i.d, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zround(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.d [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 8, !tbaa !11
  %i.d = fpext float %i.c to double
  %i.e = fadd double %i.d, 5.000000e-01
  %i.f = tail call double @llvm.floor.f64(double %i.e)
  %i.g = fptrunc double %i.f to float
  store float %i.g, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @ztruncate(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.g [
    i16 11, label %bb.b
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 8, !tbaa !11   ; 2 uses
  %i.d = fpext float %i.c to double               ; 2 uses
  %i.e = fcmp olt float %i.c, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call double @llvm.ceil.f64(double %i.d)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call double @llvm.floor.f64(double %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi double [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.i = fptrunc double %i.h to float
  store float %i.i, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zarith_op_init() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zarith_op_init.my_defs) #7 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_s", !6, i64 0, !10, i64 8, !10, i64 10}
!10 = !{!"short", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS5ref_s", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{i64 0, i64 8, !11, i64 8, i64 2, !16, i64 10, i64 2, !16}
!16 = !{!10, !10, i64 0}
end_hunk_0
