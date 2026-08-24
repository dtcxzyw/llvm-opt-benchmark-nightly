Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pointlis?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@CHno = external local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [19 x i8] c"Can't create point\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @create_point(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 0) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 %0, ptr %i.c, align 4
  %i.d = load i32, ptr @CHno, align 4, !tbaa !4
  store i32 %i.d, ptr %i.a, align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @point_list_insert(ptr nofree noundef captures(none) %0, i64 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @CHno, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  store i32 %i.b, ptr @CHno, align 4, !tbaa !4
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #11 ; 11 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %create_point.exit

bb.b:                                             ; preds = %bb.a
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 0) #12
  unreachable

create_point.exit:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 %1, ptr %i.e, align 4
  store i32 %i.b, ptr %i.c, align 8, !tbaa !8
  %i.f = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %create_point.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.c, ptr %i.h, align 8, !tbaa !14
  store ptr %i.c, ptr %i.d, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %create_point.exit
  store ptr %i.f, ptr %i.d, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.c, ptr %i.k, align 8, !tbaa !15
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !14
  store ptr %i.c, ptr %i.m, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @before(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @next(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local double @angle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i64, ptr %i.a, align 4
  %i.d = load i64, ptr %i.b, align 4
  %i.e = tail call i64 @vector(i64 %i.c, i64 %i.d) #13 ; 2 uses
  %.sroa.07.0.extract.trunc = trunc i64 %i.e to i32 ; 3 uses
  %.sroa.610.0.extract.shift = lshr i64 %i.e, 32
  %.sroa.610.0.extract.trunc = trunc nuw i64 %.sroa.610.0.extract.shift to i32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i64, ptr %i.a, align 4
  %i.h = load i64, ptr %i.f, align 4
  %i.i = tail call i64 @vector(i64 %i.g, i64 %i.h) #13 ; 2 uses
  %.sroa.02.0.extract.trunc = trunc i64 %i.i to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 3 uses
  %i.j = mul nsw i32 %.sroa.02.0.extract.trunc, %.sroa.07.0.extract.trunc
  %i.k = mul nsw i32 %.sroa.6.0.extract.trunc, %.sroa.610.0.extract.trunc
  %i.l = add nsw i32 %i.k, %i.j                   ; 2 uses
  %i.m = sitofp i32 %i.l to double                ; 2 uses
  %i.n = mul nsw i32 %.sroa.07.0.extract.trunc, %.sroa.07.0.extract.trunc
  %i.o = mul nsw i32 %.sroa.610.0.extract.trunc, %.sroa.610.0.extract.trunc
  %i.p = add nuw nsw i32 %i.o, %i.n
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = mul nsw i32 %.sroa.02.0.extract.trunc, %.sroa.02.0.extract.trunc
  %i.s = mul nsw i32 %.sroa.6.0.extract.trunc, %.sroa.6.0.extract.trunc
  %i.t = add nuw nsw i32 %i.s, %i.r
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = fmul nnan double %i.m, %i.m
  %i.w = fmul nnan double %i.q, %i.u
  %i.x = fdiv double %i.v, %i.w                   ; 2 uses
  %i.y = icmp slt i32 %i.l, 0
  %i.z = fneg double %i.x
  %.0 = select i1 %i.y, double %i.z, double %i.x
  ret double %.0
}

declare i64 @vector(i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @number_points(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @remove_points(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not116 = icmp eq ptr %i.b, %0
  br i1 %.not116, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.0117 = phi ptr [ %.1, %bb.h ], [ %i.b, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0117, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 7 uses
  %.not97 = icmp eq ptr %i.d, %.0117
  br i1 %.not97, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0117, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.048.0.copyload = load i32, ptr %i.g, align 4, !tbaa !4 ; 5 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0117, i64 4
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 4, !tbaa !4 ; 7 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0117, i64 8
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 8, !tbaa !4 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.030.0.copyload = load i32, ptr %i.i, align 4, !tbaa !4 ; 4 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !4 ; 3 uses
  %i.j = sub nsw i32 %.sroa.20.0.copyload, %.sroa.14.0.copyload
  %i.k = sub nsw i32 %.sroa.0.0.copyload, %.sroa.048.0.copyload
  %i.l = mul nsw i32 %i.j, %i.k
  %i.m = sub nsw i32 %.sroa.030.0.copyload, %.sroa.0.0.copyload
  %.neg99 = sub i32 %.sroa.18.0.copyload, %.sroa.20.0.copyload
  %.neg100 = mul i32 %i.m, %.neg99
  %i.n = icmp eq i32 %i.l, %.neg100
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %.sroa.048.0.copyload, %.sroa.0.0.copyload
  %i.p = icmp slt i32 %.sroa.0.0.copyload, %.sroa.030.0.copyload
  %or.cond = and i1 %i.o, %i.p
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp sgt i32 %.sroa.048.0.copyload, %.sroa.0.0.copyload
  %i.r = icmp sgt i32 %.sroa.0.0.copyload, %.sroa.030.0.copyload
  %or.cond101 = and i1 %i.q, %i.r
  br i1 %or.cond101, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %.sroa.048.0.copyload, %.sroa.0.0.copyload
  %i.t = icmp eq i32 %.sroa.048.0.copyload, %.sroa.030.0.copyload
  %or.cond102 = and i1 %i.s, %i.t                 ; 2 uses
  %i.u = icmp slt i32 %.sroa.18.0.copyload, %.sroa.20.0.copyload
  %i.v = icmp slt i32 %.sroa.20.0.copyload, %.sroa.14.0.copyload
  %i.w = and i1 %i.u, %i.v
  %or.cond104 = and i1 %or.cond102, %i.w
  br i1 %or.cond104, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp sgt i32 %.sroa.18.0.copyload, %.sroa.20.0.copyload
  %i.y = icmp sgt i32 %.sroa.20.0.copyload, %.sroa.14.0.copyload
  %i.z = and i1 %i.x, %i.y
  %or.cond107 = and i1 %or.cond102, %i.z
  br i1 %or.cond107, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.f, ptr %i.aa, align 8, !tbaa !14
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.d, ptr %i.ac, align 8, !tbaa !15
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @free(ptr noundef nonnull %.0117) #13
  %i.ae = load i32, ptr @CHno, align 4, !tbaa !4
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr @CHno, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.g
  %.1 = phi ptr [ %i.ad, %bb.g ], [ %i.d, %bb.f ], [ %i.d, %bb.b ] ; 3 uses
  %.not = icmp eq ptr %.1, %0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %.1, %bb.h ], [ %.0117, %.lr.ph ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.048.0.copyload62 = load i32, ptr %i.ai, align 4, !tbaa !4 ; 5 uses
  %.sroa.18.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.18.0.copyload64 = load i32, ptr %.sroa.18.0..sroa_idx63, align 4, !tbaa !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %.sroa.0.0.copyload16 = load i32, ptr %i.aj, align 4, !tbaa !4 ; 7 uses
  %.sroa.20.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  %.sroa.20.0.copyload18 = load i32, ptr %.sroa.20.0..sroa_idx17, align 8, !tbaa !4 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.030.0.copyload40 = load i32, ptr %i.am, align 4, !tbaa !4 ; 4 uses
  %.sroa.14.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.14.0.copyload42 = load i32, ptr %.sroa.14.0..sroa_idx41, align 4, !tbaa !4 ; 3 uses
  %i.an = sub nsw i32 %.sroa.20.0.copyload18, %.sroa.14.0.copyload42
  %i.ao = sub nsw i32 %.sroa.0.0.copyload16, %.sroa.048.0.copyload62
  %i.ap = mul nsw i32 %i.an, %i.ao
  %i.aq = sub nsw i32 %.sroa.030.0.copyload40, %.sroa.0.0.copyload16
end_hunk_0
