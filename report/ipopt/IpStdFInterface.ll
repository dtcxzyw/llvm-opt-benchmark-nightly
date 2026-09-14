Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdFInterface?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@str = private unnamed_addr constant [37 x i8] c"Error in IpStdFInterface eval_jac_g!\00", align 1
@str.1 = private unnamed_addr constant [36 x i8] c"Error in IpStdFInterface eval_hess!\00", align 1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @ipcreate_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %3, align 4, !tbaa !9
  %i.c = load i32, ptr %6, align 4, !tbaa !9
  %i.d = load i32, ptr %7, align 4, !tbaa !9
  %i.e = load i32, ptr %8, align 4, !tbaa !9
  %i.f = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #6 ; 9 uses
  %i.g = tail call ptr @CreateIpoptProblem(i32 noundef %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, ptr noundef %4, ptr noundef %5, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, ptr noundef nonnull @eval_f, ptr noundef nonnull @eval_g, ptr noundef nonnull @eval_grad_f, ptr noundef nonnull @eval_jac_g, ptr noundef nonnull @eval_h) #7 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.f) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %9, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %10, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %11, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %12, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %13, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr null, ptr %i.o, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare ptr @CreateIpoptProblem(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_f(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = zext i1 %2 to i32
  store i32 %i.d, ptr %i.b, align 4, !tbaa !9
  %i.e = load ptr, ptr %4, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  call void %i.i(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.c) #7
  %i.j = load i32, ptr %i.c, align 4, !tbaa !9
  %i.k = icmp eq i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_g(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.e = zext i1 %2 to i32
  store i32 %i.e, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 %3, ptr %i.c, align 4, !tbaa !9
  %i.f = load ptr, ptr %5, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  call void %i.j(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef %i.f, ptr noundef %i.h, ptr noundef nonnull %i.d) #7
  %i.k = load i32, ptr %i.d, align 4, !tbaa !9
  %i.l = icmp eq i32 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.l
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_grad_f(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = zext i1 %2 to i32
  store i32 %i.d, ptr %i.b, align 4, !tbaa !9
  %i.e = load ptr, ptr %4, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  call void %i.i(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.c) #7
  %i.j = load i32, ptr %i.c, align 4, !tbaa !9
  %i.k = icmp eq i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_jac_g(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.g = zext i1 %2 to i32
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 %3, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 %4, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.h = load ptr, ptr %8, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.k = icmp ne ptr %5, null                     ; 2 uses
  %i.l = icmp ne ptr %6, null                     ; 2 uses
  %or.cond = and i1 %i.k, %i.l
  %i.m = icmp eq ptr %7, null                     ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.m
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond5.demorgan = or i1 %i.k, %i.l
  %or.cond7.demorgan = or i1 %or.cond5.demorgan, %i.m
  br i1 %or.cond7.demorgan, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  call void %i.o(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %i.f) #7
  %i.p = load i32, ptr %i.f, align 4, !tbaa !9
  %i.q = icmp eq i32 %i.p, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.q, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_h(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, double noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  store double %3, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %0, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.i = zext i1 %2 to i32
  store i32 %i.i, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 %4, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.j = zext i1 %6 to i32
  store i32 %i.j, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 %7, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.k = load ptr, ptr %11, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i32 0, ptr %i.h, align 4, !tbaa !9
  %i.n = icmp ne ptr %8, null                     ; 2 uses
  %i.o = icmp ne ptr %9, null                     ; 2 uses
  %or.cond = and i1 %i.n, %i.o
  %i.p = icmp eq ptr %10, null                    ; 2 uses
  %or.cond3 = and i1 %or.cond, %i.p
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond5.demorgan = or i1 %i.n, %i.o
  %or.cond7.demorgan = or i1 %or.cond5.demorgan, %i.p
  br i1 %or.cond7.demorgan, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %i.g, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  call void %i.r(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull %i.h) #7
  %i.s = load i32, ptr %i.h, align 4, !tbaa !9
  %i.t = icmp eq i32 %i.s, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.t, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ipfree_(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  tail call void @FreeIpoptProblem(ptr noundef %i.c) #7
  tail call void @free(ptr noundef %i.a) #7
  store ptr null, ptr %0, align 8, !tbaa !26
  ret void
}

declare void @FreeIpoptProblem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ipsolve_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  store ptr %7, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %8, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = tail call i32 @IpoptSolve(ptr noundef %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.a) #7
  ret i32 %i.e
}

declare i32 @IpoptSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipaddstroption_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.014.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %i.c = zext nneg i32 %.014.i to i64
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  %.not.i = icmp eq i8 %i.f, 32
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.014.i, -1
  %i.h = icmp sgt i32 %.014.i, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.i = add nsw i32 %.0.lcssa.i, 1
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #6 ; 5 uses
  %.not13.i = icmp eq ptr %i.k, null
  br i1 %.not13.i, label %f2cstr.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.l = sext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %1, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !27
  br label %f2cstr.exit

f2cstr.exit:                                      ; preds = %._crit_edge.i, %bb.c
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.lr.ph.i13, label %._crit_edge.i10

.lr.ph.i13:                                       ; preds = %f2cstr.exit, %bb.d
  %.014.i14 = phi i32 [ %i.s, %bb.d ], [ %4, %f2cstr.exit ] ; 4 uses
  %i.o = zext nneg i32 %.014.i14 to i64
  %i.p = getelementptr i8, ptr %2, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27
  %.not.i15 = icmp eq i8 %i.r, 32
  br i1 %.not.i15, label %bb.d, label %._crit_edge.i10

bb.d:                                             ; preds = %.lr.ph.i13
  %i.s = add nsw i32 %.014.i14, -1
  %i.t = icmp sgt i32 %.014.i14, 1
  br i1 %i.t, label %.lr.ph.i13, label %._crit_edge.i10, !llvm.loop !0

._crit_edge.i10:                                  ; preds = %bb.d, %.lr.ph.i13, %f2cstr.exit
  %.0.lcssa.i11 = phi i32 [ %4, %f2cstr.exit ], [ 0, %bb.d ], [ %.014.i14, %.lr.ph.i13 ] ; 2 uses
  %i.u = add nsw i32 %.0.lcssa.i11, 1
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #6 ; 5 uses
  %.not13.i12 = icmp eq ptr %i.w, null
  br i1 %.not13.i12, label %f2cstr.exit16, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i10
  %i.x = sext i32 %.0.lcssa.i11 to i64            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %2, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i8 0, ptr %i.y, align 1, !tbaa !27
  br label %f2cstr.exit16

f2cstr.exit16:                                    ; preds = %._crit_edge.i10, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = tail call zeroext i1 @AddIpoptStrOption(ptr noundef %i.aa, ptr noundef %i.k, ptr noundef %i.w) #7
  tail call void @free(ptr noundef %i.w) #7
  tail call void @free(ptr noundef %i.k) #7
  %not. = xor i1 %i.ab, true
  %i.ac = zext i1 %not. to i32
  ret i32 %i.ac
}

declare zeroext i1 @AddIpoptStrOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipaddnumoption_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.014.i = phi i32 [ %i.g, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %i.c = zext nneg i32 %.014.i to i64
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  %.not.i = icmp eq i8 %i.f, 32
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.014.i, -1
  %i.h = icmp sgt i32 %.014.i, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.i = add nsw i32 %.0.lcssa.i, 1
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #6 ; 5 uses
  %.not13.i = icmp eq ptr %i.k, null
  br i1 %.not13.i, label %f2cstr.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.l = sext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr readonly align 1 %1, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store i8 0, ptr %i.m, align 1, !tbaa !27
  br label %f2cstr.exit

f2cstr.exit:                                      ; preds = %._crit_edge.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = load double, ptr %2, align 8, !tbaa !25
  %i.q = tail call zeroext i1 @AddIpoptNumOption(ptr noundef %i.o, ptr noundef %i.k, double noundef %i.p) #7
  tail call void @free(ptr noundef %i.k) #7
  %not. = xor i1 %i.q, true
  %i.r = zext i1 %not. to i32
  ret i32 %i.r
}

declare zeroext i1 @AddIpoptNumOption(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipaddintoption_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = load i32, ptr %2, align 4, !tbaa !9
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i
end_hunk_0
