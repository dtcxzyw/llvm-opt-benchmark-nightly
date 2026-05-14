inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }

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
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.j [
    i16 11, label %bb.b
    i16 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = lshr i16 %i.g, 2
  %i.i = and i16 %i.h, 63
  switch i16 %i.i, label %bb.j [
    i16 11, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load float, ptr %0, align 8, !tbaa !11
  %i.k = load float, ptr %i.e, align 8, !tbaa !11
  %i.l = fadd float %i.j, %i.k
  store float %i.l, ptr %i.e, align 8, !tbaa !11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.e, align 8, !tbaa !11
  %i.n = sitofp i64 %i.m to float
  %i.o = load float, ptr %0, align 8, !tbaa !11
  %i.p = fadd float %i.o, %i.n
  store float %i.p, ptr %i.e, align 8, !tbaa !11
  store i16 44, ptr %i.f, align 8, !tbaa !8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !8
  %i.t = lshr i16 %i.s, 2
  %i.u = and i16 %i.t, 63
  switch i16 %i.u, label %bb.j [
    i16 11, label %bb.f
    i16 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %0, align 8, !tbaa !11
  %i.w = sitofp i64 %i.v to float
  %i.x = load float, ptr %i.q, align 8, !tbaa !11
  %i.y = fadd float %i.x, %i.w
  store float %i.y, ptr %i.q, align 8, !tbaa !11
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !11  ; 2 uses
  %i.ab = add nsw i64 %i.aa, %i.z                 ; 3 uses
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !11
  %i.ac = xor i64 %i.ab, %i.z
  %i.ad = icmp slt i64 %i.ac, 0
  %i.ae = xor i64 %i.aa, %i.z
  %i.af = icmp sgt i64 %i.ae, -1
  %or.cond = and i1 %i.af, %i.ad
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = sitofp i64 %i.ab to float
  %i.ah = sitofp i64 %i.z to float
  %i.ai = fsub float %i.ag, %i.ah
  store float %i.ai, ptr %i.q, align 8, !tbaa !11
  store i16 44, ptr %i.r, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.c, %bb.d
  %i.aj = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16
  store ptr %i.ak, ptr @osp, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ -20, %bb.b ], [ -20, %bb.a ], [ 0, %bb.i ], [ -20, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -23, 1) i32 @zdiv(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = lshr i16 %i.c, 2
  %i.e = and i16 %i.d, 63
  switch i16 %i.e, label %bb.k [
    i16 11, label %bb.b
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load float, ptr %0, align 8, !tbaa !11   ; 3 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !8
  %i.j = lshr i16 %i.i, 2
  %i.k = and i16 %i.j, 63
  switch i16 %i.k, label %bb.k [
    i16 11, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load float, ptr %i.a, align 8, !tbaa !11
  %i.m = fdiv float %i.l, %i.f
  store float %i.m, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11
  %i.o = sitofp i64 %i.n to float
  %i.p = fdiv float %i.o, %i.f
  store float %i.p, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.h, align 8, !tbaa !8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.q = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !8
  %i.u = lshr i16 %i.t, 2
  %i.v = and i16 %i.u, 63
  switch i16 %i.v, label %bb.k [
    i16 11, label %bb.h
    i16 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = sitofp i64 %i.q to float
  %i.x = load float, ptr %i.a, align 8, !tbaa !11
  %i.y = fdiv float %i.x, %i.w
  store float %i.y, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.a, align 8, !tbaa !11
  %i.aa = sitofp i64 %i.z to float
  %i.ab = sitofp i64 %i.q to float
  %i.ac = fdiv float %i.aa, %i.ab
  store float %i.ac, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.s, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %i.ad = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  store ptr %i.ae, ptr @osp, align 8, !tbaa !12
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
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.m [
    i16 11, label %bb.b
    i16 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = lshr i16 %i.g, 2
  %i.i = and i16 %i.h, 63
  switch i16 %i.i, label %bb.m [
    i16 11, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load float, ptr %0, align 8, !tbaa !11
  %i.k = load float, ptr %i.e, align 8, !tbaa !11
  %i.l = fmul float %i.j, %i.k
  store float %i.l, ptr %i.e, align 8, !tbaa !11
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.e, align 8, !tbaa !11
  %i.n = sitofp i64 %i.m to float
  %i.o = load float, ptr %0, align 8, !tbaa !11
  %i.p = fmul float %i.o, %i.n
  store float %i.p, ptr %i.e, align 8, !tbaa !11
  store i16 44, ptr %i.f, align 8, !tbaa !8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !8
  %i.t = lshr i16 %i.s, 2
  %i.u = and i16 %i.t, 63
  switch i16 %i.u, label %bb.m [
    i16 11, label %bb.f
    i16 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %0, align 8, !tbaa !11
  %i.w = sitofp i64 %i.v to float
  %i.x = load float, ptr %i.q, align 8, !tbaa !11
  %i.y = fmul float %i.x, %i.w
  store float %i.y, ptr %i.q, align 8, !tbaa !11
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.q, align 8, !tbaa !11   ; 5 uses
  %i.aa = load i64, ptr %0, align 8, !tbaa !11    ; 4 uses
  %i.ab = tail call i64 @llvm.abs.i64(i64 %i.z, i1 true) ; 2 uses
  %i.ac = tail call i64 @llvm.abs.i64(i64 %i.aa, i1 true) ; 2 uses
  %i.ad = icmp samesign ugt i64 %i.ab, 32767
  %i.ae = icmp samesign ugt i64 %i.ac, 32767
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = icmp ne i64 %i.z, 0
  %or.cond3 = and i1 %i.af, %or.cond
  br i1 %or.cond3, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ag = udiv i64 2147483647, %i.ab
  %i.ah = icmp samesign ugt i64 %i.ac, %i.ag
  br i1 %i.ah, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ai = sitofp i64 %i.z to float
  %i.aj = sitofp i64 %i.aa to float
  %i.ak = fmul nnan float %i.ai, %i.aj            ; 2 uses
  %i.al = mul nsw i64 %i.aa, %i.z
  %i.am = icmp ne i64 %i.al, -2147483648
  %i.an = fcmp une float %i.ak, f0xCF000000
  %i.ao = select i1 %i.am, i1 true, i1 %i.an
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ak, ptr %i.q, align 8, !tbaa !11
  store i16 44, ptr %i.r, align 8, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.ap = mul nsw i64 %i.aa, %i.z
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f, %bb.c, %bb.d
  %i.aq = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16
  store ptr %i.ar, ptr @osp, align 8, !tbaa !12
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
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.j [
    i16 11, label %bb.b
    i16 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = lshr i16 %i.g, 2
  %i.i = and i16 %i.h, 63
  switch i16 %i.i, label %bb.j [
    i16 11, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load float, ptr %0, align 8, !tbaa !11
  %i.k = load float, ptr %i.e, align 8, !tbaa !11
  %i.l = fsub float %i.k, %i.j
  store float %i.l, ptr %i.e, align 8, !tbaa !11
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.e, align 8, !tbaa !11
  %i.n = sitofp i64 %i.m to float
  %i.o = load float, ptr %0, align 8, !tbaa !11
  %i.p = fsub float %i.n, %i.o
  store float %i.p, ptr %i.e, align 8, !tbaa !11
  store i16 44, ptr %i.f, align 8, !tbaa !8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %0, i64 -16 ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !8
  %i.t = lshr i16 %i.s, 2
  %i.u = and i16 %i.t, 63
  switch i16 %i.u, label %bb.j [
    i16 11, label %bb.f
    i16 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %0, align 8, !tbaa !11
  %i.w = sitofp i64 %i.v to float
  %i.x = load float, ptr %i.q, align 8, !tbaa !11
  %i.y = fsub float %i.x, %i.w
  store float %i.y, ptr %i.q, align 8, !tbaa !11
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.q, align 8, !tbaa !11   ; 4 uses
  %i.aa = load i64, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.ab = sub nsw i64 %i.z, %i.aa                 ; 2 uses
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !11
  %i.ac = xor i64 %i.ab, %i.z
  %i.ad = xor i64 %i.aa, %i.z
  %i.ae = and i64 %i.ac, %i.ad
  %or.cond.not = icmp sgt i64 %i.ae, -1
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sitofp i64 %i.z to float
  %i.ag = sitofp i64 %i.aa to float
  %i.ah = fsub float %i.af, %i.ag
  store float %i.ah, ptr %i.q, align 8, !tbaa !11
  store i16 44, ptr %i.r, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.c, %bb.d
  %i.ai = load ptr, ptr @osp, align 8, !tbaa !12
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  store ptr %i.aj, ptr @osp, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.i
  %.0 = phi i32 [ -20, %bb.b ], [ -20, %bb.a ], [ 0, %bb.i ], [ -20, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zidiv(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 11 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = lshr i16 %i.c, 2
  %i.e = and i16 %i.d, 63
  switch i16 %i.e, label %zdiv.exit.thread [
    i16 11, label %bb.b
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load float, ptr %0, align 8, !tbaa !11   ; 3 uses
  %i.g = fcmp oeq float %i.f, 0.000000e+00
  br i1 %i.g, label %zdiv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !8
  %i.j = lshr i16 %i.i, 2
  %i.k = and i16 %i.j, 63
  switch i16 %i.k, label %zdiv.exit.thread [
    i16 11, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load float, ptr %i.a, align 8, !tbaa !11
  %i.m = fdiv float %i.l, %i.f
  store float %i.m, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !11
  %i.o = sitofp i64 %i.n to float
  %i.p = fdiv float %i.o, %i.f
  store float %i.p, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.h, align 8, !tbaa !8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.q = load i64, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %zdiv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !8
  %i.u = lshr i16 %i.t, 2
  %i.v = and i16 %i.u, 63
  switch i16 %i.v, label %zdiv.exit.thread [
    i16 11, label %bb.h
    i16 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = sitofp i64 %i.q to float
  %i.x = load float, ptr %i.a, align 8, !tbaa !11
  %i.y = fdiv float %i.x, %i.w
  store float %i.y, ptr %i.a, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = load i64, ptr %i.a, align 8, !tbaa !11
  %i.aa = sitofp i64 %i.z to float
  %i.ab = sitofp i64 %i.q to float
  %i.ac = fdiv float %i.aa, %i.ab
  store float %i.ac, ptr %i.a, align 8, !tbaa !11
  store i16 44, ptr %i.s, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %i.ad = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  store ptr %i.ae, ptr @osp, align 8, !tbaa !12
  %i.af = tail call i32 (ptr, ...) @zcvi(ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %zdiv.exit.thread

bb.k:                                             ; preds = %bb.j
  store <16 x i8> %.sroa.0.0.copyload, ptr %i.a, align 8
  store ptr %0, ptr @osp, align 8, !tbaa !12
  br label %zdiv.exit.thread

zdiv.exit.thread:                                 ; preds = %bb.g, %bb.c, %bb.b, %bb.a, %bb.f, %bb.j, %bb.k
  %.0 = phi i32 [ %i.af, %bb.j ], [ %i.af, %bb.k ], [ -20, %bb.g ], [ -20, %bb.c ], [ -23, %bb.b ], [ -20, %bb.a ], [ -23, %bb.f ]
  ret i32 %.0
}

declare i32 @zcvi(...) local_unnamed_addr #2

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
define dso_local range(i32 -20, 1) i32 @zneg(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.f [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8, !tbaa !11
  %i.f = fneg float %i.e
  store float %i.f, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.h = icmp eq i64 %i.g, -2147483648
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float f0x4F000000, ptr %0, align 8, !tbaa !11
  store i16 44, ptr %i.a, align 8, !tbaa !8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = sub nsw i64 0, %i.g
  store i64 %i.i, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zceiling(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.d [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8, !tbaa !11
  %i.f = tail call float @llvm.ceil.f32(float %i.e)
  store float %i.f, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zfloor(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.d [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8, !tbaa !11
  %i.f = tail call float @llvm.floor.f32(float %i.e)
  store float %i.f, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @zround(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.d [
    i16 11, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8, !tbaa !11
  %i.f = fpext float %i.e to double
  %i.g = fadd double %i.f, 5.000000e-01
  %i.h = tail call double @llvm.floor.f64(double %i.g)
  %i.i = fptrunc double %i.h to float
  store float %i.i, ptr %0, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @ztruncate(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 63
  switch i16 %i.d, label %bb.g [
    i16 11, label %bb.b
    i16 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %0, align 8, !tbaa !11   ; 2 uses
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = fcmp olt float %i.e, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call double @llvm.ceil.f64(double %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call double @llvm.floor.f64(double %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi double [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %i.k = fptrunc double %i.j to float
  store float %i.k, ptr %0, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zarith_op_init() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zarith_op_init.my_defs) #6 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
end_hunk_0
