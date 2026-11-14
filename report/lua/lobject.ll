Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lobject?download=true
inline.NumInlined: 25
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BuffFS = type { ptr, ptr, i64, i64, i32, [219 x i8] }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@luaO_ceillog2.log_2 = internal unnamed_addr constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@luai_ctype_ = external hidden local_unnamed_addr constant [257 x i8], align 16
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%.15g\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i8 @luaO_ceillog2(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1                           ; 3 uses
  %i.b = icmp ugt i32 %i.a, 255
  br i1 %i.b, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.a, %.lr.ph.a
  %.08 = phi i8 [ %1, %.lr.ph.a ], [ 0, %bb.a ]
  %.067 = phi i32 [ %2, %.lr.ph.a ], [ %i.a, %bb.a ] ; 2 uses
  %1 = add i8 %.08, 8                             ; 2 uses
  %2 = lshr i32 %.067, 8                          ; 2 uses
  %3 = icmp ugt i32 %.067, 65535
  br i1 %3, label %.lr.ph.a, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.a, %bb.a
  %.06.lcssa = phi i32 [ %i.a, %bb.a ], [ %2, %.lr.ph.a ]
  %.0.lcssa = phi i8 [ 0, %bb.a ], [ %1, %.lr.ph.a ]
  %i.c = zext nneg i32 %.06.lcssa to i64
  %i.d = getelementptr inbounds nuw i8, ptr @luaO_ceillog2.log_2, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %i.f = add i8 %i.e, %.0.lcssa
  ret i8 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden zeroext i8 @luaO_codeparam(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 396799
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 %0, 7
  %i.c = or disjoint i32 %i.b, 96                 ; 2 uses
  %i.d = udiv i32 %i.c, 100                       ; 5 uses
  %i.e = icmp samesign ult i32 %i.c, 1600
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i32 %i.d to i8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i32 %0, 199
  br i1 %i.g, label %.lr.ph.i, label %luaO_ceillog2.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.h = lshr i32 %i.d, 8
  %i.i = icmp ugt i32 %0, 51199                   ; 2 uses
  %i.j = lshr i32 %i.d, 16
  %spec.select = select i1 %i.i, i8 16, i8 8
  %spec.select16 = select i1 %i.i, i32 %i.j, i32 %i.h
  br label %luaO_ceillog2.exit

luaO_ceillog2.exit:                               ; preds = %.lr.ph.i, %bb.d
  %.06.lcssa.i = phi i32 [ %i.d, %bb.d ], [ %spec.select16, %.lr.ph.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.d ], [ %spec.select, %.lr.ph.i ]
  %i.k = zext nneg i32 %.06.lcssa.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr @luaO_ceillog2.log_2, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = add i8 %i.m, %.0.lcssa.i
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = add nsw i32 %i.o, -5
  %i.q = lshr i32 %i.d, %i.p
  %i.r = add nuw nsw i32 %i.q, 240
  %i.s = shl nuw nsw i32 %i.o, 4
  %i.t = add nuw nsw i32 %i.s, 192
  %i.u = or i32 %i.r, %i.t
  %i.v = trunc i32 %i.u to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %luaO_ceillog2.exit, %bb.c
  %.0 = phi i8 [ %i.v, %luaO_ceillog2.exit ], [ %i.f, %bb.c ], [ -1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @luaO_applyparam(i8 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i8 %0 to i32                        ; 2 uses
  %i.b = and i32 %i.a, 15                         ; 2 uses
  %i.c = lshr i32 %i.a, 4                         ; 2 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = or disjoint i32 %i.b, 16
  %i.e = add nsw i32 %i.c, -8
  %.023 = select i1 %.not, i32 %i.b, i32 %i.d     ; 3 uses
  %.0 = select i1 %.not, i32 -7, i32 %i.e         ; 3 uses
  %i.f = icmp sgt i32 %.0, -1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %.0 to i64                 ; 2 uses
  %i.h = lshr i64 297528130221121800, %i.g
  %i.i = icmp slt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %.023 to i64
  %i.k = mul nsw i64 %1, %i.j
  %i.l = shl i64 %i.k, %i.g
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = sub nsw i32 0, %.0                       ; 2 uses
  %i.n = icmp slt i64 %1, 297528130221121800
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %.023 to i64
  %i.p = mul nsw i64 %1, %i.o
  %i.q = zext nneg i32 %i.m to i64
  %i.r = ashr i64 %i.p, %i.q
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.m to i64
  %i.t = lshr i64 %1, %i.s                        ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, 297528130221121800
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %.023 to i64
  %i.w = mul nuw nsw i64 %i.t, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g, %bb.e, %bb.c
  %.024 = phi i64 [ %i.l, %bb.c ], [ 9223372036854775807, %bb.b ], [ %i.r, %bb.e ], [ %i.w, %bb.g ], [ 9223372036854775807, %bb.f ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @luaO_rawarith(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  switch i32 %1, label %bb.u [
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 13, label %bb.b
    i32 5, label %bb.j
    i32 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %2, align 8, !tbaa !9
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call i32 @luaV_tointegerns(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.f, label %bb.g, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %3, align 8, !tbaa !9      ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !13
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = call i32 @luaV_tointegerns(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i32 noundef 0) #16
  %.not59 = icmp eq i32 %i.l, 0
  br i1 %.not59, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.m = phi i64 [ %.pre, %._crit_edge ], [ %i.k, %bb.f ]
  %i.n = load i64, ptr %i.a, align 8, !tbaa !13
  %i.o = call fastcc i64 @intarith(ptr noundef %0, i32 noundef %1, i64 noundef %i.n, i64 noundef %i.m)
  store i64 %i.o, ptr %4, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 3, ptr %i.p, align 8, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.h
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.am

bb.j:                                             ; preds = %bb.a, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !11
  switch i8 %i.r, label %bb.am [
    i8 19, label %bb.k
    i8 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.s = load double, ptr %2, align 8, !tbaa !9
  br label %bb.m

bb.l:                                             ; preds = %bb.j
end_hunk_0
