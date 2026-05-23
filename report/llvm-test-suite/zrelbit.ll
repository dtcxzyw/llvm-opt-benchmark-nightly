begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }

@osp = external local_unnamed_addr global ptr, align 8
@zrelbit_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zand }, %struct.op_def { ptr @.str.1, ptr @zbitshift }, %struct.op_def { ptr @.str.2, ptr @zeq }, %struct.op_def { ptr @.str.3, ptr @zge }, %struct.op_def { ptr @.str.4, ptr @zgt }, %struct.op_def { ptr @.str.5, ptr @zle }, %struct.op_def { ptr @.str.6, ptr @zlt }, %struct.op_def { ptr @.str.7, ptr @zmax }, %struct.op_def { ptr @.str.8, ptr @zmin }, %struct.op_def { ptr @.str.9, ptr @zne }, %struct.op_def { ptr @.str.10, ptr @znot }, %struct.op_def { ptr @.str.11, ptr @zor }, %struct.op_def { ptr @.str.12, ptr @zxor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2and\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2bitshift\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2eq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2ge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2gt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2le\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2lt\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2max\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"2min\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2ne\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1not\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"2or\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2xor\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -7, 1) i32 @zeq(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %1 = lshr i16 %i.c, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.d [
    i16 13, label %bb.b
    i16 0, label %bb.b
    i16 10, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.d = and i16 %i.c, 512
  %.not.not11 = icmp eq i16 %i.d, 0
  br i1 %.not.not11, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = and i16 %i.g, 512
  %.not.not = icmp eq i16 %i.h, 0
  br i1 %.not.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %3 = lshr i16 %i.j, 2
  %4 = and i16 %3, 63
  switch i16 %4, label %bb.g [
    i16 13, label %bb.e
    i16 0, label %bb.e
    i16 10, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.k = and i16 %i.j, 512
  %.not.not13.a = icmp eq i16 %i.k, 0
  br i1 %.not.not13.a, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call ptr @dict_access_ref(ptr noundef nonnull %i.a) #5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !8
  %i.o = and i16 %i.n, 512
  %.not.not12 = icmp eq i16 %i.o, 0
  br i1 %.not.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.p = tail call i32 (ptr, ptr, ...) @obj_eq(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #5
  %.not = icmp ne i32 %i.p, 0
  %i.q = zext i1 %.not to i16
  store i16 %i.q, ptr %i.a, align 8, !tbaa !11
  store i16 4, ptr %i.i, align 8, !tbaa !8
  %i.r = load ptr, ptr @osp, align 8, !tbaa !12
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  store ptr %i.s, ptr @osp, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -7, %bb.c ], [ -7, %bb.e ], [ -7, %bb.b ], [ -7, %bb.f ]
  ret i32 %.0
}

declare ptr @dict_access_ref(ptr noundef) local_unnamed_addr #1

declare i32 @obj_eq(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -7, 1) i32 @zne(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @zeq(ptr noundef %0)       ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !11
  %i.d = xor i16 %i.c, 1
  store i16 %i.d, ptr %i.b, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zge(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @obj_compare(ptr noundef %0, i32 noundef 6) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %i.a to i16
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 4, ptr %i.e, align 8, !tbaa !8
  %i.f = load ptr, ptr @osp, align 8, !tbaa !12
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  store ptr %i.g, ptr @osp, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zgt(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @obj_compare(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %i.a to i16
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 4, ptr %i.e, align 8, !tbaa !8
  %i.f = load ptr, ptr @osp, align 8, !tbaa !12
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  store ptr %i.g, ptr @osp, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zle(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @obj_compare(ptr noundef %0, i32 noundef 3) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %i.a to i16
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 4, ptr %i.e, align 8, !tbaa !8
  %i.f = load ptr, ptr @osp, align 8, !tbaa !12
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  store ptr %i.g, ptr @osp, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zlt(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @obj_compare(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %i.a to i16
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  store i16 %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 4, ptr %i.e, align 8, !tbaa !8
  %i.f = load ptr, ptr @osp, align 8, !tbaa !12
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  store ptr %i.g, ptr @osp, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zmax(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @obj_compare(ptr noundef %0, i32 noundef 1) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr @osp, align 8, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  store ptr %i.e, ptr @osp, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zmin(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call i32 @obj_compare(ptr noundef %0, i32 noundef 4) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr @osp, align 8, !tbaa !12
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  store ptr %i.e, ptr @osp, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zand(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = and i16 %i.c, 252
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8
  %i.g = lshr i16 %i.f, 2
  %i.h = and i16 %i.g, 63                         ; 2 uses
  %i.i = shl nuw nsw i16 %i.h, 2
  %i.j = icmp eq i16 %i.i, %i.d
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i16 %i.h, label %bb.f [
    i16 1, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 8, !tbaa !11
  %i.l = load i16, ptr %i.a, align 8, !tbaa !11
  %i.m = and i16 %i.l, %i.k
  store i16 %i.m, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %0, align 8, !tbaa !11
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11
  %i.p = and i64 %i.o, %i.n
  store i64 %i.p, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr @osp, align 8, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  store ptr %i.r, ptr @osp, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.e ], [ -20, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -20, 1) i32 @znot(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %1 = lshr i16 %i.b, 2
  %2 = and i16 %1, 63
  switch i16 %2, label %bb.d [
    i16 1, label %bb.b
    i16 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !11
  %.not = icmp eq i16 %i.c, 0
  %i.d = zext i1 %.not to i16
  store i16 %i.d, ptr %0, align 8, !tbaa !11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !11
  %i.f = xor i64 %i.e, -1
  store i64 %i.f, ptr %0, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zor(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = and i16 %i.c, 252
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8
  %i.g = lshr i16 %i.f, 2
  %i.h = and i16 %i.g, 63                         ; 2 uses
  %i.i = shl nuw nsw i16 %i.h, 2
  %i.j = icmp eq i16 %i.i, %i.d
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i16 %i.h, label %bb.f [
    i16 1, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 8, !tbaa !11
  %i.l = load i16, ptr %i.a, align 8, !tbaa !11
  %i.m = or i16 %i.l, %i.k
  store i16 %i.m, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %0, align 8, !tbaa !11
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11
  %i.p = or i64 %i.o, %i.n
  store i64 %i.p, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr @osp, align 8, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  store ptr %i.r, ptr @osp, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.e ], [ -20, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zxor(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = and i16 %i.c, 252
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8
  %i.g = lshr i16 %i.f, 2
  %i.h = and i16 %i.g, 63                         ; 2 uses
  %i.i = shl nuw nsw i16 %i.h, 2
  %i.j = icmp eq i16 %i.i, %i.d
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i16 %i.h, label %bb.f [
    i16 1, label %bb.c
    i16 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load i16, ptr %0, align 8, !tbaa !11
  %i.l = load i16, ptr %i.a, align 8, !tbaa !11
  %i.m = xor i16 %i.l, %i.k
  store i16 %i.m, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %0, align 8, !tbaa !11
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11
  %i.p = xor i64 %i.o, %i.n
  store i64 %i.p, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = load ptr, ptr @osp, align 8, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  store ptr %i.r, ptr @osp, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.e ], [ -20, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zbitshift(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %i.d = and i16 %i.c, 252
  %i.e = icmp eq i16 %i.d, 20
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = and i16 %i.g, 252
  %i.i = icmp eq i16 %i.h, 20
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.k = add i64 %i.j, -32
  %or.cond = icmp ult i64 %i.k, -63
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %i.j, 0
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = sub nsw i64 0, %i.j
  %i.o = lshr i64 %i.m, %i.n
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = shl i64 %i.m, %i.j
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.f
  %.sink = phi i64 [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ 0, %bb.c ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !11
  %i.q = load ptr, ptr @osp, align 8, !tbaa !12
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16
  store ptr %i.r, ptr @osp, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -20, %bb.a ], [ -20, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zrelbit_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zrelbit_op_init.my_defs) #5 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 2) i32 @obj_compare(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %2 = zext i16 %i.c to i32                       ; 2 uses
  %3 = lshr i32 %2, 2
  %4 = and i32 %3, 63
  switch i32 %4, label %bb.q [
    i32 5, label %bb.b
    i32 11, label %bb.e
    i32 13, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !8
  %5 = lshr i16 %i.e, 2
  %6 = and i16 %5, 63
  switch i16 %6, label %bb.q [
    i16 5, label %bb.c
    i16 11, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.h = icmp sgt i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.f, %i.g
  %i.j = zext i1 %i.i to i32
  %.032.v = select i1 %i.h, i32 2, i32 %i.j
  %.03237 = lshr i32 %1, %.032.v
  %i.k = and i32 %.03237, 1
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !11
  %i.m = sitofp i64 %i.l to float
  %i.n = load float, ptr %0, align 8, !tbaa !11
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.o = load float, ptr %i.a, align 8, !tbaa !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i16, ptr %i.p, align 8, !tbaa !8
  %7 = lshr i16 %i.q, 2
  %8 = and i16 %7, 63
  switch i16 %8, label %bb.q [
    i16 5, label %bb.f
    i16 11, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %0, align 8, !tbaa !11
  %i.s = sitofp i64 %i.r to float
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.t = load float, ptr %0, align 8, !tbaa !11
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %9 = and i32 %2, 512
  %.not.not = icmp eq i32 %9, 0
  br i1 %.not.not, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i16, ptr %i.u, align 8, !tbaa !8
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 252
  %i.y = icmp eq i32 %i.x, 52
  br i1 %i.y, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.z = and i32 %i.w, 512
  %.not.not36 = icmp eq i32 %i.z, 0
  br i1 %.not.not36, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !17
  %i.ad = zext i16 %i.ac to i32
  %i.ae = load ptr, ptr %0, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !17
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call i32 (ptr, i32, ptr, i32, ...) @bytes_compare(ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef %i.ae, i32 noundef %i.ah) #5
  %i.aj = add nsw i32 %i.ai, 1
  %i.ak = lshr i32 %1, %i.aj
  %i.al = and i32 %i.ak, 1
  br label %bb.q

bb.l:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.031 = phi float [ %i.m, %bb.d ], [ %i.o, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %.0 = phi float [ %i.n, %bb.d ], [ %i.s, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.am = fcmp ogt float %.031, %.0
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = ashr i32 %1, 2
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = fcmp oeq float %.031, %.0
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = ashr i32 %1, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.1 = phi i32 [ %i.an, %bb.m ], [ %i.ap, %bb.o ], [ %1, %bb.n ]
  %i.aq = and i32 %.1, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.h, %bb.e, %bb.b, %bb.p, %bb.k, %bb.c
  %.033 = phi i32 [ -7, %bb.j ], [ -7, %bb.h ], [ %i.k, %bb.c ], [ %i.aq, %bb.p ], [ -20, %bb.b ], [ -20, %bb.e ], [ -20, %bb.i ], [ %i.al, %bb.k ], [ -20, %bb.a ]
  ret i32 %.033
}

declare i32 @bytes_compare(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!17 = !{!9, !10, i64 10}
end_hunk_0
