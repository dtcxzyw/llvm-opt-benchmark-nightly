inline.NumInlined: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.stream_s = type { ptr, ptr, ptr, i32, i8, i8, i64, %struct.stream_procs, i32, ptr, ptr, i16, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr }

@osp_nargs = external local_unnamed_addr global [6 x ptr], align 16
@osp = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@dstack = external global [0 x %struct.ref_s], align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"operator %lx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@ztype_op_init.my_defs = internal global [15 x %struct.op_def] [%struct.op_def { ptr @.str.6, ptr @zcvi }, %struct.op_def { ptr @.str.7, ptr @zcvlit }, %struct.op_def { ptr @.str.8, ptr @zcvn }, %struct.op_def { ptr @.str.9, ptr @zcvr }, %struct.op_def { ptr @.str.10, ptr @zcvrs }, %struct.op_def { ptr @.str.11, ptr @zcvs }, %struct.op_def { ptr @.str.12, ptr @zcvx }, %struct.op_def { ptr @.str.13, ptr @zexecuteonly }, %struct.op_def { ptr @.str.14, ptr @znoaccess }, %struct.op_def { ptr @.str.15, ptr @zrcheck }, %struct.op_def { ptr @.str.16, ptr @zreadonly }, %struct.op_def { ptr @.str.17, ptr @ztypenumber }, %struct.op_def { ptr @.str.18, ptr @zwcheck }, %struct.op_def { ptr @.str.19, ptr @zxcheck }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"1cvi\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"1cvlit\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"1cvn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1cvr\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"3cvrs\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"2cvs\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"1cvx\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"1executeonly\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"1noaccess\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"1rcheck\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"1readonly\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"1.typenumber\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"1wcheck\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"1xcheck\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -17, 1) i32 @ztypenumber(ptr noundef captures(address) %0) #0 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11
  %i.e = lshr i16 %i.d, 2
  %i.f = and i16 %i.e, 63                         ; 2 uses
  %i.g = icmp samesign ugt i16 %i.f, 15
  %narrow = select i1 %i.g, i16 9, i16 %i.f
  %spec.select = zext nneg i16 %narrow to i64
  store i64 %spec.select, ptr %0, align 8, !tbaa !14
  store i16 20, ptr %i.c, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -17, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -17, 1) i32 @zcvlit(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i16 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = and i16 %i.h, -2
  store i16 %i.k, ptr %i.j, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -17, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @dict_access_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -17, 1) i32 @zcvx(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i16 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = or i16 %i.h, 1
  store i16 %i.k, ptr %i.j, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -17, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -17, 1) i32 @zxcheck(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 8
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i16 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %i.i = and i16 %i.h, 1
  store i16 %i.i, ptr %0, align 8, !tbaa !14
  store i16 4, ptr %i.c, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -17, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zexecuteonly(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr @osp_nargs, align 16, !tbaa !8
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %access_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 6 uses
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 8
  br i1 %i.f, label %access_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = trunc i16 %i.d to i8
  %trunc.i = and i8 %1, -4
  switch i8 %trunc.i, label %access_check.exit [
    i8 8, label %bb.d
    i8 0, label %bb.e
    i8 12, label %bb.e
    i8 40, label %bb.e
    i8 52, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.c, %bb.c, %bb.c
  %i.h = phi i16 [ %.pre, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %bb.c ], [ %i.d, %bb.c ], [ %i.d, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ], [ %0, %bb.c ]
  %i.i = and i16 %i.h, 2
  %.not13.i.not = icmp eq i16 %i.i, 0
  br i1 %.not13.i.not, label %access_check.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.k = and i16 %i.h, -769
  store i16 %i.k, ptr %i.j, align 8, !tbaa !11
  br label %access_check.exit

access_check.exit:                                ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -20, %bb.b ], [ -17, %bb.a ], [ -7, %bb.e ], [ -20, %bb.c ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 2) i32 @access_check(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11
  %3 = trunc i16 %i.b to i8
  %trunc = and i8 %3, -4
  switch i8 %trunc, label %bb.g [
    i8 8, label %bb.b
    i8 0, label %bb.c
    i8 12, label %bb.c
    i8 40, label %bb.c
    i8 52, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ]
  %.not = icmp eq i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = xor i32 %i.f, -1
  %i.h = and i32 %1, %i.g
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = and i16 %i.e, -771
  %i.j = trunc i32 %1 to i16
  %i.k = or i16 %i.i, %i.j
  store i16 %i.k, ptr %i.d, align 8, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = and i32 %1, %i.f
  %i.m = icmp eq i32 %i.l, %1
  %i.n = zext i1 %i.m to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.f, %bb.e
  %.012 = phi i32 [ %i.n, %bb.f ], [ -20, %bb.a ], [ 0, %bb.e ], [ -7, %bb.d ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @znoaccess(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %1 = trunc i16 %i.b to i8
  %trunc.i = and i8 %1, -4
  switch i8 %trunc.i, label %access_check.exit [
    i8 8, label %bb.b
    i8 0, label %bb.c
    i8 12, label %bb.c
    i8 40, label %bb.c
    i8 52, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = phi i16 [ %.pre, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.f = and i16 %i.d, -771
  store i16 %i.f, ptr %i.e, align 8, !tbaa !11
  br label %access_check.exit

access_check.exit:                                ; preds = %bb.a, %bb.c
  %.012.i = phi i32 [ 0, %bb.c ], [ -20, %bb.a ]
  ret i32 %.012.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zreadonly(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %1 = trunc i16 %i.b to i8
  %trunc.i = and i8 %1, -4
  switch i8 %trunc.i, label %access_check.exit [
    i8 8, label %bb.b
    i8 0, label %bb.c
    i8 12, label %bb.c
    i8 40, label %bb.c
    i8 52, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = phi i16 [ %.pre, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ]
  %i.e = and i16 %i.d, 514
  %.not13.i = icmp eq i16 %i.e, 514
  br i1 %.not13.i, label %bb.d, label %access_check.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.g = and i16 %i.d, -257
  store i16 %i.g, ptr %i.f, align 8, !tbaa !11
  br label %access_check.exit

access_check.exit:                                ; preds = %bb.a, %bb.c, %bb.d
  %.012.i = phi i32 [ -7, %bb.c ], [ -20, %bb.a ], [ 0, %bb.d ]
  ret i32 %.012.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 2) i32 @zrcheck(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %1 = trunc i16 %i.b to i8
  %trunc.i = and i8 %1, -4
  switch i8 %trunc.i, label %access_check.exit [
    i8 8, label %bb.b
    i8 0, label %bb.c
    i8 12, label %bb.c
    i8 40, label %bb.c
    i8 52, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.d = phi i16 [ %.pre, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  %i.e = lshr i16 %i.d, 9
  %.lobit = and i16 %i.e, 1                       ; 2 uses
  %i.f = zext nneg i16 %.lobit to i32
  store i16 %.lobit, ptr %0, align 8, !tbaa !14
  store i16 4, ptr %i.a, align 8, !tbaa !11
  br label %access_check.exit

access_check.exit:                                ; preds = %bb.a, %bb.c
  %.012.i7 = phi i32 [ %i.f, %bb.c ], [ -20, %bb.a ]
  ret i32 %.012.i7
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 2) i32 @zwcheck(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 5 uses
  %1 = trunc i16 %i.b to i8
  %trunc.i = and i8 %1, -4
  switch i8 %trunc.i, label %access_check.exit [
    i8 8, label %bb.b
    i8 0, label %bb.c
    i8 12, label %bb.c
    i8 40, label %bb.c
    i8 52, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.d = phi i16 [ %.pre, %bb.b ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  %i.e = lshr i16 %i.d, 8
  %.lobit = and i16 %i.e, 1                       ; 2 uses
  %i.f = zext nneg i16 %.lobit to i32
  store i16 %.lobit, ptr %0, align 8, !tbaa !14
  store i16 4, ptr %i.a, align 8, !tbaa !11
  br label %access_check.exit

access_check.exit:                                ; preds = %bb.a, %bb.c
  %.012.i7 = phi i32 [ %i.f, %bb.c ], [ -20, %bb.a ]
  ret i32 %.012.i7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zcvi(ptr noundef captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.stream_s, align 8           ; 9 uses
  %2 = alloca %struct.ref_s, align 8              ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %3 = trunc i16 %i.b to i8
  %trunc = and i8 %3, -4
  switch i8 %trunc, label %bb.c [
    i8 20, label %bb.m
    i8 44, label %bb.b
    i8 52, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %0, align 8, !tbaa !14
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.d = and i16 %i.b, 512
  %.not.not = icmp eq i16 %i.d, 0
  br i1 %.not.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i16, ptr %i.f, align 2, !tbaa !15
  %i.h = zext i16 %i.g to i32
  call void @sread_string(ptr noundef nonnull %1, ptr noundef %i.e, i32 noundef %i.h) #8
  %i.i = call i32 (ptr, ptr, ...) @scan_number(ptr noundef nonnull %1, ptr noundef nonnull %2) #8 ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %1, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = call i32 %i.o(ptr noundef nonnull %1) #8
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !11
  %i.t = and i16 %i.s, 252
  %i.u = icmp eq i16 %i.t, 20
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.e, %bb.i, %bb.g
  %.0.ph = phi i32 [ -18, %bb.g ], [ -7, %bb.d ], [ 0, %bb.i ], [ %i.i, %bb.e ], [ -18, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.v = load float, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.116 = phi float [ %i.c, %bb.b ], [ %i.v, %bb.j ] ; 3 uses
  %i.w = fpext float %.116 to double
  %i.x = fcmp ugt double %i.w, f0xC1E0000000200000
  %i.y = fcmp ult float %.116, f0x4F000000
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.z = fptosi float %.116 to i64
  store i64 %i.z, ptr %0, align 8, !tbaa !14
  store i16 20, ptr %i.a, align 8, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.k, %bb.a, %bb.l, %bb.c
  %.1 = phi i32 [ -20, %bb.c ], [ %.0.ph, %.thread ], [ 0, %bb.a ], [ 0, %bb.l ], [ -15, %bb.k ]
  ret i32 %.1
}

declare void @sread_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @scan_number(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zcvn(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 252
  %i.e = icmp eq i32 %i.d, 52
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 512
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !15
  %i.j = zext i16 %i.i to i32
  %i.k = tail call i32 @name_ref(ptr noundef %i.g, i32 noundef %i.j, ptr noundef nonnull %0, i32 noundef 1) #8 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = and i16 %i.b, 1
  %i.m = load i16, ptr %i.a, align 8, !tbaa !11
  %i.n = or i16 %i.m, %i.l
  store i16 %i.n, ptr %i.a, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ -20, %bb.a ], [ -7, %bb.b ], [ 0, %bb.d ], [ %i.k, %bb.c ]
  ret i32 %.0
}

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zcvr(ptr noundef captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.stream_s, align 8           ; 8 uses
  %2 = alloca %struct.ref_s, align 8              ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %3 = trunc i16 %i.b to i8
  %trunc = and i8 %3, -4
  switch i8 %trunc, label %bb.c [
    i8 20, label %bb.b
    i8 44, label %bb.k
    i8 52, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !14
  %i.d = sitofp i64 %i.c to float
  store float %i.d, ptr %0, align 8, !tbaa !14
  store i16 44, ptr %i.a, align 8, !tbaa !11
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.e = and i16 %i.b, 512
  %.not.not = icmp eq i16 %i.e, 0
  br i1 %.not.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i16, ptr %i.g, align 2, !tbaa !15
  %i.i = zext i16 %i.h to i32
  call void @sread_string(ptr noundef nonnull %1, ptr noundef %i.f, i32 noundef %i.i) #8
  %i.j = call i32 (ptr, ptr, ...) @scan_number(ptr noundef nonnull %1, ptr noundef nonnull %2) #8 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %1, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = call i32 %i.p(ptr noundef nonnull %1) #8
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !11
  %i.u = and i16 %i.t, 252
  %i.v = icmp eq i16 %i.u, 44
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.w = load i64, ptr %2, align 8, !tbaa !14
  %i.x = sitofp i64 %i.w to float
  store float %i.x, ptr %0, align 8, !tbaa !14
  store i16 44, ptr %i.a, align 8, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.e, %bb.d, %bb.j, %bb.i
  %.0 = phi i32 [ 0, %bb.j ], [ -7, %bb.d ], [ %i.j, %bb.e ], [ 0, %bb.i ], [ -18, %bb.g ], [ -18, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %.critedge, %bb.c
  %.1 = phi i32 [ -20, %bb.c ], [ %.0, %.critedge ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zcvrs(ptr noundef captures(none) %0) #4 {
bb.a:
  %i.a = alloca [31 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.i = add i64 %i.h, -37
  %or.cond = icmp ult i64 %i.i, -35
  br i1 %or.cond, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !11
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 252
  %i.n = icmp eq i32 %i.m, 52
  br i1 %i.n, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 256
  %.not.not = icmp eq i32 %i.o, 0
  br i1 %.not.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 -24
  %i.r = load i16, ptr %i.q, align 8, !tbaa !11
  %i.s = and i16 %i.r, 252
  %cond = icmp eq i16 %i.s, 20
  br i1 %cond, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %i.u = tail call i64 @llvm.abs.i64(i64 %i.t, i1 true)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.036 = phi i64 [ %i.u, %bb.f ], [ %i.ab, %bb.g ] ; 3 uses
  %.035 = phi ptr [ %i.b, %bb.f ], [ %i.aa, %bb.g ] ; 2 uses
  %i.v = urem i64 %.036, %i.h                     ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = icmp samesign ult i64 %i.v, 10
  %i.y = select i1 %i.x, i8 48, i8 55
  %i.z = add nuw nsw i8 %i.y, %i.w
  %i.aa = getelementptr inbounds i8, ptr %.035, i64 -1 ; 3 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !14
  %i.ab = udiv i64 %.036, %i.h
  %.not = icmp samesign ugt i64 %i.h, %.036
  br i1 %.not, label %bb.h, label %bb.g, !llvm.loop !27

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp slt i64 %i.t, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds i8, ptr %.035, i64 -2 ; 2 uses
  store i8 45, ptr %i.ad, align 1, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi ptr [ %i.ad, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ae = ptrtoint ptr %i.b to i64
  %i.af = ptrtoint ptr %.1 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !15
  %i.aj = zext i16 %i.ai to i64
  %i.ak = icmp sgt i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !14
  %i.am = and i64 %i.ag, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %.1, i64 %i.am, i1 false)
  %i.an = trunc i64 %i.ag to i16
  store i16 %i.an, ptr %i.ah, align 2, !tbaa !15
  %i.ao = load i16, ptr %i.j, align 8, !tbaa !11
  %i.ap = or i16 %i.ao, -32768
  store i16 %i.ap, ptr %i.j, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !25
  %i.aq = load ptr, ptr @osp, align 8, !tbaa !8
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -32
  store ptr %i.ar, ptr @osp, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.k
  %.0 = phi i32 [ -20, %bb.a ], [ -20, %bb.c ], [ -20, %bb.e ], [ 0, %bb.k ], [ -7, %bb.d ], [ -15, %bb.b ], [ -15, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zcvs(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [25 x i8], align 16               ; 6 uses
  %1 = alloca %struct.ref_s, align 8              ; 12 uses
  %2 = alloca [2 x %struct.ref_s], align 16       ; 8 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = and i32 %i.e, 252
  %i.g = icmp eq i32 %i.f, 52
  br i1 %i.g, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.e, 256
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %1, align 8, !tbaa !14
  %i.i = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = lshr i16 %i.j, 2
  %i.l = and i16 %i.k, 63                         ; 2 uses
  %i.m = icmp samesign ugt i16 %i.l, 15
end_hunk_0
