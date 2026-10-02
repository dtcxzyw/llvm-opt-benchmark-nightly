Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_lsn?download=true
inline.NumInlined: 59
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StringInfoData = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"0123456789abcdefABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pg_lsn\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pg_lsn.c\00", align 1
@__func__.pg_lsn_in_safe = private unnamed_addr constant [15 x i8] c"pg_lsn_in_safe\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%X/%08X\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"-%lu\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"cannot add NaN to pg_lsn\00", align 1
@__func__.pg_lsn_pli = private unnamed_addr constant [11 x i8] c"pg_lsn_pli\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"cannot subtract NaN from pg_lsn\00", align 1
@__func__.pg_lsn_mii = private unnamed_addr constant [11 x i8] c"pg_lsn_mii\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_in_safe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str) #9 ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = add i32 %i.b, -9
  %or.cond = icmp ult i32 %i.c, -8
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 4294967295
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %.not = icmp eq i8 %i.f, 47
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.h = tail call i64 @strspn(ptr noundef nonnull %i.g, ptr noundef nonnull @.str) #9 ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -9
  %or.cond3 = icmp ult i32 %i.j, -8
  br i1 %or.cond3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i64 %i.a, 1
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %.not27 = icmp eq i8 %i.o, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %0, ptr noundef null, i32 noundef 16) #10
  %i.q = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.g, ptr noundef null, i32 noundef 16) #10
  %i.r = shl i64 %i.p, 32
  %i.s = and i64 %i.q, 4294967295
  %i.t = or disjoint i64 %i.s, %i.r
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %i.u = tail call zeroext i1 @errsave_start(ptr noundef %1, ptr noundef null) #10
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i32 @errcode(i32 noundef 33685634) #10 ; 0 uses
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %0) #10 ; 0 uses
  tail call void @errsave_finish(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 60, ptr noundef nonnull @__func__.pg_lsn_in_safe) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.0 = phi i64 [ %i.t, %bb.e ], [ 0, %bb.g ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @errsave_start(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errcode(i32 noundef) local_unnamed_addr #4

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #4

declare void @errsave_finish(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_in(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @pg_lsn_in_safe(ptr noundef %i.c, ptr noundef %i.e)
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_out(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = trunc i64 %i.c to i32
  %i.g = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 18, ptr noundef nonnull @.str.4, i32 noundef %i.e, i32 noundef %i.f) #10 ; 0 uses
  %i.h = call ptr @pstrdup(ptr noundef nonnull %i.a) #10
  %i.i = ptrtoint ptr %i.h to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.i
}

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_recv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i64 @pq_getmsgint64(ptr noundef %i.c) #10
  ret i64 %i.d
}

declare i64 @pq_getmsgint64(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @pq_begintypsend(ptr noundef nonnull %1) #10
  call void @enlargeStringInfo(ptr noundef nonnull %1, i32 noundef 8) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  %i.c = call i64 @llvm.bswap.i64(i64 %i.b)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !9 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  store i64 %i.c, ptr %i.h, align 1, !noalias !9
  %i.i = add i32 %i.f, 8
  store i32 %i.i, ptr %i.e, align 8, !alias.scope !9
  %i.j = call ptr @pq_endtypsend(ptr noundef nonnull %1) #10
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.k
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #4

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @pg_lsn_eq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @pg_lsn_ne(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @pg_lsn_lt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @pg_lsn_gt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @pg_lsn_le(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ule i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 2) i64 @pg_lsn_ge(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp uge i64 %i.b, %i.d
  %i.f = zext i1 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @pg_lsn_larger(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @pg_lsn_smaller(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 -1, 2) i64 @pg_lsn_cmp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %.0 = tail call i64 @llvm.ucmp.i64.i64(i64 %i.b, i64 %i.d)
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_hash(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @hashint8(ptr noundef %0) #10
  ret i64 %i.a
}

declare i64 @hashint8(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_hash_extended(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @hashint8extended(ptr noundef %0) #10
  ret i64 %i.a
}

declare i64 @hashint8extended(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_mi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %i.e, %i.c
  %i.h = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.5, i64 noundef %i.g) #10 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %i.c, %i.e
  %i.j = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull @.str.6, i64 noundef %i.i) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = ptrtoint ptr %i.a to i64
  %i.l = call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @numeric_in, i32 noundef 0, i64 noundef %i.k, i64 noundef 0, i64 noundef -1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.l
}

declare i64 @DirectFunctionCall3Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @numeric_in(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_pli(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = tail call zeroext i1 @numeric_is_nan(ptr noundef %i.g) #10
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 257, ptr noundef nonnull @__func__.pg_lsn_pli) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.6, i64 noundef %i.c) #10 ; 0 uses
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @numeric_in, i32 noundef 0, i64 noundef %i.m, i64 noundef 0, i64 noundef -1) #10
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @numeric_add, i32 noundef 0, i64 noundef %i.n, i64 noundef %i.o) #10
  %i.q = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @numeric_pg_lsn, i32 noundef 0, i64 noundef %i.p) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.q
}

declare zeroext i1 @numeric_is_nan(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @DirectFunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @numeric_add(ptr noundef) #4

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @numeric_pg_lsn(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_lsn_mii(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.h = tail call zeroext i1 @numeric_is_nan(ptr noundef %i.g) #10
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 291, ptr noundef nonnull @__func__.pg_lsn_mii) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.6, i64 noundef %i.c) #10 ; 0 uses
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @numeric_in, i32 noundef 0, i64 noundef %i.m, i64 noundef 0, i64 noundef -1) #10
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @numeric_sub, i32 noundef 0, i64 noundef %i.n, i64 noundef %i.o) #10
  %i.q = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @numeric_pg_lsn, i32 noundef 0, i64 noundef %i.p) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.q
}

declare i64 @numeric_sub(ptr noundef) #4

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.ucmp.i64.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!7 = distinct !{!7, i1 false, !"pq_writeint64"}
!8 = distinct !{!8, !7, !"pq_writeint64: argument 0"}
!9 = !{!8}
end_hunk_0
