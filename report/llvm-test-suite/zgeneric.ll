inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }

@osbot = external local_unnamed_addr global ptr, align 8
@ostop = external local_unnamed_addr global ptr, align 8
@osp = external local_unnamed_addr global ptr, align 8
@esp = external local_unnamed_addr global ptr, align 8
@estop = external local_unnamed_addr global ptr, align 8
@zgeneric_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcopy }, %struct.op_def { ptr @.str.1, ptr @zforall }, %struct.op_def { ptr @.str.2, ptr @zget }, %struct.op_def { ptr @.str.3, ptr @zgetinterval }, %struct.op_def { ptr @.str.4, ptr @zlength }, %struct.op_def { ptr @.str.5, ptr @zput }, %struct.op_def { ptr @.str.6, ptr @zputinterval }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2forall\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2get\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"3getinterval\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1length\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3put\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"3putinterval\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zcopy(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %1 = trunc i16 %i.b to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %copy_interval.exit [
    i8 20, label %bb.b
    i8 0, label %bb.e
    i8 40, label %bb.e
    i8 52, label %bb.e
    i8 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = load ptr, ptr @osbot, align 8, !tbaa !12
  %i.e = ptrtoint ptr %0 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %copy_interval.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %0, i64 -16
  %sext = shl i64 %i.c, 32                        ; 3 uses
  %i.k = ashr exact i64 %sext, 32                 ; 2 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr @ostop, align 8, !tbaa !12
  %i.n = icmp ugt ptr %i.l, %i.m
  br i1 %i.n, label %copy_interval.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sub nsw i64 0, %i.k
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %i.o
  %i.q = ashr exact i64 %sext, 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  %sext26 = add i64 %sext, -4294967296
  %i.r = ashr exact i64 %sext26, 28
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr @ostop, align 8, !tbaa !12
  %i.u = icmp ugt ptr %i.s, %i.t                  ; 2 uses
  %spec.store.select = select i1 %i.u, ptr %0, ptr %i.s
  store ptr %spec.store.select, ptr @osp, align 8
  %spec.select = select i1 %i.u, i32 -16, i32 0
  br label %copy_interval.exit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.v = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = lshr i32 %i.y, 2
  %i.aa = and i32 %i.z, 63                        ; 2 uses
  %i.ab = zext i16 %i.b to i32                    ; 2 uses
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = and i32 %i.ac, 63
  %.not.i = icmp eq i32 %i.aa, %i.ad
  br i1 %.not.i, label %bb.f, label %copy_interval.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = and i32 %i.y, 512
  %.not17.not.i = icmp eq i32 %i.ae, 0
  %i.af = and i32 %i.ab, 256
  %.not18.not.i = icmp eq i32 %i.af, 0
  %or.cond.i = or i1 %.not18.not.i, %.not17.not.i
  br i1 %or.cond.i, label %copy_interval.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds i8, ptr %0, i64 -6 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !15 ; 3 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !15
  %i.al = icmp ult i16 %i.ak, %i.ah
  br i1 %i.al, label %copy_interval.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %i.aa, label %bb.l [
    i32 0, label %bb.i
    i32 10, label %bb.i
    i32 13, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.am = load ptr, ptr %0, align 8, !tbaa !11
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.ao = tail call i32 (ptr, ptr, i32, ...) @refcpy(ptr noundef %i.am, ptr noundef %i.an, i32 noundef %i.ai) #4 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %0, align 8, !tbaa !11
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.ar = zext i16 %i.ah to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.as = tail call i32 (ptr, ...) @zcopy_dict(ptr noundef nonnull %0) #4
  br label %copy_interval.exit

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.at = load i16, ptr %i.ag, align 2, !tbaa !15
  store i16 %i.at, ptr %i.aj, align 2, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %i.au = load i16, ptr %i.w, align 8, !tbaa !8
  %i.av = or i16 %i.au, -32768
  store i16 %i.av, ptr %i.w, align 8, !tbaa !8
  %i.aw = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -16
  store ptr %i.ax, ptr @osp, align 8, !tbaa !12
  br label %copy_interval.exit

copy_interval.exit:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.l, %bb.k
  %.1 = phi i32 [ %spec.select, %bb.d ], [ %i.as, %bb.k ], [ -20, %bb.a ], [ 0, %bb.l ], [ -16, %bb.c ], [ -15, %bb.b ], [ -15, %bb.g ], [ -20, %bb.e ], [ -7, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @copy_interval(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = and i32 %i.d, 63                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = lshr i32 %i.h, 2
  %i.j = and i32 %i.i, 63
  %.not = icmp eq i32 %i.e, %i.j
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.c, 512
  %.not17.not = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.h, 256
  %.not18.not = icmp eq i32 %i.l, 0
  %or.cond = or i1 %.not17.not, %.not18.not
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.n = load i16, ptr %i.m, align 2, !tbaa !15   ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.q = load i16, ptr %i.p, align 2, !tbaa !15
  %i.r = zext i16 %i.q to i32
  %i.s = sub i32 %i.r, %1
  %i.t = icmp ult i32 %i.s, %i.o
  br i1 %i.t, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.e
    i32 10, label %bb.e
    i32 13, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !11
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %2, align 8, !tbaa !11
  %i.y = tail call i32 (ptr, ptr, i32, ...) @refcpy(ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.o) #4 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  %i.aa = zext i32 %1 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %2, align 8, !tbaa !11
  %i.ad = zext i16 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -15, %bb.c ], [ -20, %bb.a ], [ -7, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @zcopy_dict(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zlength(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ref_s, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %2 = trunc i16 %i.b to i8
  %trunc = and i8 %2, -4
  switch i8 %trunc, label %bb.g [
    i8 0, label %bb.b
    i8 40, label %bb.b
    i8 52, label %bb.b
    i8 8, label %bb.d
    i8 28, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = and i16 %i.b, 512
  %.not.not12 = icmp eq i16 %i.c, 0
  br i1 %.not.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !15
  %i.f = zext i16 %i.e to i64
  store i64 %i.f, ptr %0, align 8, !tbaa !11
  store i16 20, ptr %i.a, align 8, !tbaa !8
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call ptr @dict_access_ref(ptr noundef nonnull %0) #4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i16, ptr %i.h, align 8, !tbaa !8
  %i.j = and i16 %i.i, 512
  %.not.not = icmp eq i16 %i.j, 0
  br i1 %.not.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @dict_length(ptr noundef nonnull %0) #4
  %i.l = zext i32 %i.k to i64
  store i64 %i.l, ptr %0, align 8, !tbaa !11
  store i16 20, ptr %i.a, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.m = call i32 (ptr, ptr, ...) @name_string_ref(ptr noundef nonnull %0, ptr noundef nonnull %1) #4 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.o = load i16, ptr %i.n, align 2, !tbaa !15
  %i.p = zext i16 %i.o to i64
  store i64 %i.p, ptr %0, align 8, !tbaa !11
  store i16 20, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.d, %bb.b, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ -7, %bb.d ], [ 0, %bb.f ], [ 0, %bb.c ], [ -7, %bb.b ], [ 0, %bb.e ], [ -20, %bb.a ]
  ret i32 %.0
}

declare ptr @dict_access_ref(ptr noundef) local_unnamed_addr #2

declare i32 @dict_length(ptr noundef) local_unnamed_addr #2

declare i32 @name_string_ref(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -21, 1) i32 @zget(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !8    ; 3 uses
  %1 = trunc i16 %i.d to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.m [
    i8 8, label %bb.b
    i8 0, label %bb.d
    i8 40, label %bb.d
    i8 52, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @dict_access_ref(ptr noundef nonnull %i.b) #4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = and i16 %i.g, 512
  %.not26.not = icmp eq i16 %i.h, 0
  br i1 %.not26.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @dict_lookup(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %bb.l

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !8
  %i.m = and i16 %i.l, 252
  %i.n = icmp eq i16 %i.m, 20
  br i1 %i.n, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.o = and i16 %i.d, 512
  %.not24.not = icmp eq i16 %i.o, 0
  br i1 %.not24.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 -6
  %i.r = load i16, ptr %i.q, align 2, !tbaa !15
  %i.s = zext i16 %i.r to i64
  %.not25 = icmp ult i64 %i.p, %i.s
  br i1 %.not25, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.p
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i16, ptr %i.v, align 8, !tbaa !8
  %i.x = and i16 %i.w, 252
  %i.y = icmp eq i16 %i.x, 20
  br i1 %i.y, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %2 = and i16 %i.d, 512
  %.not.not = icmp eq i16 %2, 0
  br i1 %.not.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 -6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !15
  %i.ac = zext i16 %i.ab to i64
  %.not = icmp ult i64 %i.z, %i.ac
  br i1 %.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !11
  store i16 20, ptr %i.c, align 8, !tbaa !8
  br label %.sink.split

bb.l:                                             ; preds = %._crit_edge, %bb.g
  %i.ah = phi ptr [ %.pre, %._crit_edge ], [ %i.u, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l
  %i.ai = load ptr, ptr @osp, align 8, !tbaa !12
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -16
  store ptr %i.aj, ptr @osp, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -15, %bb.j ], [ -15, %bb.f ], [ -7, %bb.b ], [ -20, %bb.a ], [ -20, %bb.d ], [ -7, %bb.e ], [ -21, %bb.c ], [ -20, %bb.h ], [ -7, %bb.i ], [ 0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.0
}

declare i32 @dict_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zput(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32 ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %1 = trunc i16 %i.d to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.p [
    i8 8, label %bb.b
    i8 0, label %bb.d
    i8 40, label %bb.r
    i8 52, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @dict_access_ref(ptr noundef nonnull %i.b) #4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !8
  %i.i = and i16 %i.h, 256
  %.not33.not = icmp eq i16 %i.i, 0
  br i1 %.not33.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @dict_put(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %0) #4 ; 2 uses
  %.not34 = icmp eq i32 %i.j, 0
  br i1 %.not34, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !8
  %i.m = and i16 %i.l, 252
  %i.n = icmp eq i16 %i.m, 20
  br i1 %i.n, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.e, 256
  %.not31.not = icmp eq i32 %i.o, 0
  br i1 %.not31.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds i8, ptr %0, i64 -22
  %i.s = load i16, ptr %i.r, align 2, !tbaa !15
  %i.t = zext i16 %i.s to i64
  %.not32 = icmp samesign ult i64 %i.p, %i.t
  br i1 %.not32, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %i.y = and i16 %i.x, 252
  %i.z = icmp eq i16 %i.y, 20
  br i1 %i.z, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aa = and i32 %i.e, 256
  %.not.not = icmp eq i32 %i.aa, 0
  br i1 %.not.not, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds i8, ptr %0, i64 -22
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !15
  %i.af = zext i16 %i.ae to i64
  %.not = icmp samesign ult i64 %i.ab, %i.af
  br i1 %.not, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !8
  %i.ai = and i16 %i.ah, 252
  %i.aj = icmp eq i16 %i.ai, 20
  br i1 %i.aj, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ak = load i64, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 255
  br i1 %i.al, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = trunc nuw i64 %i.ak to i8
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ab
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !11
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  br label %bb.r

bb.q:                                             ; preds = %bb.c, %bb.o, %bb.h
  %i.ap = load ptr, ptr @osp, align 8, !tbaa !12
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -48
  store ptr %i.aq, ptr @osp, align 8, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.l, %bb.j, %bb.i, %bb.a, %bb.f, %bb.g, %bb.e, %bb.d, %bb.b, %bb.c, %bb.q, %bb.p
  %.1 = phi i32 [ -20, %bb.p ], [ -7, %bb.a ], [ 0, %bb.q ], [ %i.j, %bb.c ], [ -20, %bb.d ], [ -7, %bb.e ], [ -7, %bb.b ], [ -15, %bb.f ], [ -20, %bb.i ], [ -7, %bb.j ], [ -20, %bb.m ], [ -15, %bb.k ], [ -15, %bb.g ], [ -15, %bb.l ], [ -15, %bb.n ]
  ret i32 %.1
}

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zgetinterval(ptr noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !8
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 20
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !8
  %i.i = and i16 %i.h, 252
  %i.j = icmp eq i16 %i.i, 20
  br i1 %i.j, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %1 = trunc i16 %i.l to i8
  %trunc = and i8 %1, -4                          ; 2 uses
  switch i8 %trunc, label %bb.k [
    i8 0, label %bb.d
    i8 40, label %bb.d
    i8 52, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %2 = and i16 %i.l, 512
  %.not.not = icmp eq i16 %2, 0
  br i1 %.not.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %0, i64 -22 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !15
  %i.p = zext i16 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.s = sub nuw nsw i64 %i.p, %i.m
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i8 %trunc, label %bb.j [
    i8 0, label %bb.h
    i8 40, label %bb.h
    i8 52, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.m
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink = phi ptr [ %i.x, %bb.i ], [ %i.v, %bb.h ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.g
  %i.y = trunc nuw i64 %i.r to i16
  store i16 %i.y, ptr %i.n, align 2, !tbaa !15
  %i.z = or i16 %i.l, -32768
  store i16 %i.z, ptr %i.k, align 8, !tbaa !8
  %i.aa = load ptr, ptr @osp, align 8, !tbaa !12
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  store ptr %i.ab, ptr @osp, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ -20, %bb.b ], [ -20, %bb.c ], [ -7, %bb.d ], [ -15, %bb.e ], [ 0, %bb.j ], [ -20, %bb.a ], [ -15, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -20, 1) i32 @zputinterval(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !8
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 20
  br i1 %i.f, label %bb.b, label %copy_interval.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !8    ; 3 uses
  %1 = trunc i16 %i.h to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %copy_interval.exit [
    i8 40, label %bb.c
    i8 0, label %bb.d
    i8 52, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %copy_interval.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.i = and i16 %i.h, 256
  %.not.not = icmp eq i16 %i.i, 0
  br i1 %.not.not, label %copy_interval.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %0, i64 -22
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15   ; 2 uses
  %i.m = zext i16 %i.l to i64
  %i.n = icmp ugt i64 %i.j, %i.m
  br i1 %i.n, label %copy_interval.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !8
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = and i32 %i.r, 63                         ; 2 uses
  %i.t = lshr i16 %i.h, 2
  %i.u = and i16 %i.t, 63
  %i.v = zext nneg i16 %i.u to i32
  %.not.i = icmp ne i32 %i.s, %i.v
  %i.w = and i32 %i.q, 512
  %.not17.not.i = icmp eq i32 %i.w, 0
  %or.cond = or i1 %.not.i, %.not17.not.i
  br i1 %or.cond, label %copy_interval.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw nsw i64 %i.j to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !15   ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = zext i16 %i.l to i32
  %i.ac = sub nsw i32 %i.ab, %i.x
  %i.ad = icmp ult i32 %i.ac, %i.aa
  br i1 %i.ad, label %copy_interval.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %i.s, label %bb.k [
    i32 0, label %bb.i
    i32 10, label %bb.i
    i32 13, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.j
  %i.ag = load ptr, ptr %0, align 8, !tbaa !11
  %i.ah = tail call i32 (ptr, ptr, i32, ...) @refcpy(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef %i.aa) #4 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.j
  %i.ak = load ptr, ptr %0, align 8, !tbaa !11
  %i.al = zext i16 %i.z to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ak, i64 %i.al, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.am = load ptr, ptr @osp, align 8, !tbaa !12
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -48
  store ptr %i.an, ptr @osp, align 8, !tbaa !12
  br label %copy_interval.exit

copy_interval.exit:                               ; preds = %bb.g, %bb.f, %bb.k, %bb.e, %bb.d, %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -20, %bb.a ], [ -7, %bb.c ], [ -20, %bb.b ], [ -7, %bb.d ], [ -15, %bb.e ], [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zforall(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %1 = trunc i16 %i.c to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.h [
    i8 0, label %bb.b
    i8 40, label %bb.b
    i8 52, label %bb.c
    i8 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = and i16 %i.c, 512
  %.not.not15 = icmp eq i16 %i.d, 0
  br i1 %.not.not15, label %bb.h, label %bb.f

bb.c:                                             ; preds = %bb.a
  %2 = and i16 %i.c, 512
  %.not.not14 = icmp eq i16 %2, 0
  br i1 %.not.not14, label %bb.h, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = tail call ptr @dict_access_ref(ptr noundef nonnull %i.a) #4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !8
  %i.h = and i16 %i.g, 512
  %.not.not = icmp eq i16 %i.h, 0
  br i1 %.not.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @dict_first(ptr noundef nonnull %i.a) #4
  %i.j = zext i32 %i.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.013 = phi ptr [ @dict_continue, %bb.e ], [ @array_continue, %bb.b ], [ @string_continue, %bb.c ]
  %.0 = phi i64 [ %i.j, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.k = load ptr, ptr @esp, align 8, !tbaa !12   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr @estop, align 8, !tbaa !12
  %i.n = icmp ugt ptr %i.l, %i.m
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i16 2, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i16 33, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store ptr %i.q, ptr @esp, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.0, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i16 20, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  store ptr %i.t, ptr @esp, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %i.u = load ptr, ptr @osp, align 8, !tbaa !12
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  store ptr %i.v, ptr @osp, align 8, !tbaa !12
  %i.w = getelementptr inbounds i8, ptr %0, i64 -32
  %i.x = tail call i32 %.013(ptr noundef nonnull %i.w) #4, !callees !18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.012 = phi i32 [ -7, %bb.c ], [ -20, %bb.a ], [ -7, %bb.d ], [ %i.x, %bb.g ], [ -7, %bb.b ], [ -5, %bb.f ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 2) i32 @array_continue(ptr noundef %0) #3 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !12   ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -22 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !15   ; 2 uses
  %i.e = add i16 %i.d, -1
  store i16 %i.e, ptr %i.c, align 2, !tbaa !15
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr @osp, align 8, !tbaa !12
  %i.g = load ptr, ptr @ostop, align 8, !tbaa !12
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @osp, align 8, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !16
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.b, align 8, !tbaa !11
  %i.l = load ptr, ptr @esp, align 8, !tbaa !12   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @array_continue, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i16 37, ptr %i.n, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 26
  store i16 0, ptr %i.o, align 2, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.p, ptr @esp, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !16
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 -64
  store ptr %i.q, ptr @esp, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ -16, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 2) i32 @string_continue(ptr noundef %0) #3 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !12   ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32 ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -22 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !15   ; 2 uses
  %i.e = add i16 %i.d, -1
  store i16 %i.e, ptr %i.c, align 2, !tbaa !15
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr @osp, align 8, !tbaa !12
  %i.g = load ptr, ptr @ostop, align 8, !tbaa !12
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr @osp, align 8, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.j = load i8, ptr %i.i, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.f, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.l, align 8, !tbaa !8
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.b, align 8, !tbaa !11
  %i.o = load ptr, ptr @esp, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @string_continue, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i16 37, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  store i16 0, ptr %i.r, align 2, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.s, ptr @esp, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !16
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 -64
  store ptr %i.t, ptr @esp, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ -16, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 2) i32 @dict_continue(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @esp, align 8, !tbaa !12   ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr @osp, align 8, !tbaa !12
  %i.e = load ptr, ptr @ostop, align 8, !tbaa !12
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !12
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.h = trunc i64 %i.c to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call i32 @dict_next(ptr noundef nonnull %i.g, i32 noundef %i.h, ptr noundef nonnull %i.i) #4 ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = load ptr, ptr @esp, align 8, !tbaa !12
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !11
  %i.o = load ptr, ptr @esp, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr @dict_continue, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i16 37, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  store i16 0, ptr %i.r, align 2, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store ptr %i.s, ptr @esp, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr @osp, align 8, !tbaa !12
end_hunk_0
