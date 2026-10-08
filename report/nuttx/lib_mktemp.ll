Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_mktemp?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i32 }
%struct.dq_queue_s = type { ptr, ptr }
%struct.stat = type { i32, i32, i32, i16, i32, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i64, i64 }

@g_base62 = internal unnamed_addr global [6 x i8] zeroinitializer, align 1
@g_b62lock = internal global { { %union.anon, i8, [3 x i8], %struct.dq_queue_s, ptr } } { { %union.anon, i8, [3 x i8], %struct.dq_queue_s, ptr } { %union.anon { i32 2147483646 }, i8 5, [3 x i8] zeroinitializer, %struct.dq_queue_s zeroinitializer, ptr null } }, align 8
@.str = private unnamed_addr constant [31 x i8] c"/libs/libc/stdlib/lib_mktemp.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"base62 <= 61\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef ptr @mktemp(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %1 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.b = tail call i64 @strlen(ptr noundef %0) #10 ; 2 uses
  %.not47 = icmp eq i64 %i.b, 0
  br i1 %.not47, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02535 = phi i32 [ %i.g, %bb.b ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.02634 = phi ptr [ %i.d, %bb.b ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.02634, i64 -1 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 88
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %.02535, 1               ; 2 uses
  %i.h = icmp samesign ult i32 %.02535, 5
  %i.i = icmp ult ptr %0, %i.d
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.lr.ph, label %.critedge.thread58, !llvm.loop !7

.critedge:                                        ; preds = %.lr.ph
  %i.j = icmp eq i32 %.02535, 0
  br i1 %i.j, label %.critedge.thread, label %.critedge.thread58

.critedge.thread58:                               ; preds = %bb.b, %.critedge
  %.025.lcssa62 = phi i32 [ %.02535, %.critedge ], [ %i.g, %bb.b ] ; 5 uses
  %.026.lcssa61 = phi ptr [ %.02634, %.critedge ], [ %i.d, %bb.b ]
  %i.k = icmp samesign ugt i32 %.025.lcssa62, 4
  br i1 %i.k, label %.lr.ph46, label %.preheader

.preheader:                                       ; preds = %.critedge.thread58
  %.not48 = icmp eq i32 %.025.lcssa62, 1
  br i1 %.not48, label %.lr.ph46, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader, %.lr.ph42
  %.041 = phi i32 [ %i.l, %.lr.ph42 ], [ 1, %.preheader ]
  %.02840 = phi i32 [ %i.m, %.lr.ph42 ], [ 62, %.preheader ]
  %i.l = add nuw nsw i32 %.041, 1                 ; 2 uses
  %i.m = mul i32 %.02840, 62                      ; 3 uses
  %exitcond.not = icmp eq i32 %i.l, %.025.lcssa62
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph42, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph42
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader, %.critedge.thread58, %.loopexit
  %.12965 = phi i32 [ %i.m, %.loopexit ], [ 62, %.preheader ], [ -1, %.critedge.thread58 ]
  %narrow.i = tail call i32 @llvm.usub.sat.i32(i32 6, i32 range(i32 1, 0) %.025.lcssa62)
  %.07.idx.i = zext nneg i32 %narrow.i to i64
  %.07.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.07.idx.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph46, %bb.o
  %.245 = phi i32 [ %.12965, %.lr.ph46 ], [ %i.an, %bb.o ]
  %i.n = tail call i32 @nxsem_wait(ptr noundef nonnull @g_b62lock) #11 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @g_base62, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.06.i.i = phi i32 [ 5, %bb.c ], [ %i.t, %bb.f ] ; 3 uses
  %i.o = zext nneg i32 %.06.i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr @g_base62, i64 %i.o ; 3 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = icmp ult i8 %i.q, 61
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = add nuw nsw i8 %i.q, 1
  store i8 %i.s, ptr %i.p, align 1
  br label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.p, align 1
  %i.t = add nsw i32 %.06.i.i, -1
  %.not.i.i = icmp eq i32 %.06.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.preheader.i, label %bb.d, !llvm.loop !9

.lr.ph.preheader.i:                               ; preds = %bb.f, %bb.e
  %i.u = tail call i32 @nxsem_post(ptr noundef nonnull @g_b62lock) #11 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %base62_to_char.exit.i, %.lr.ph.preheader.i
  %.011.i = phi i32 [ %i.ae, %base62_to_char.exit.i ], [ %.025.lcssa62, %.lr.ph.preheader.i ] ; 2 uses
  %.0610.i = phi ptr [ %i.ad, %base62_to_char.exit.i ], [ %.026.lcssa61, %.lr.ph.preheader.i ] ; 2 uses
  %.19.i = phi ptr [ %i.v, %base62_to_char.exit.i ], [ %.07.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i, i64 1
  %i.w = load i8, ptr %.19.i, align 1             ; 6 uses
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = or disjoint i8 %i.w, 48
  br label %base62_to_char.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.z = icmp ult i8 %i.w, 36
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add nuw nsw i8 %i.w, 55
  br label %base62_to_char.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp ugt i8 %i.w, 61
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 96, ptr noundef nonnull @.str.2) #12
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ac = add nuw nsw i8 %i.w, 61
  br label %base62_to_char.exit.i

base62_to_char.exit.i:                            ; preds = %bb.l, %bb.i, %bb.g
  %.0.i.i = phi i8 [ %i.y, %bb.g ], [ %i.aa, %bb.i ], [ %i.ac, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0610.i, i64 1
  store i8 %.0.i.i, ptr %.0610.i, align 1
  %i.ae = add nsw i32 %.011.i, -1
  %i.af = icmp sgt i32 %.011.i, 1
  br i1 %i.af, label %.lr.ph.i, label %copy_base62.exit, !llvm.loop !10

copy_base62.exit:                                 ; preds = %base62_to_char.exit.i
  %i.ag = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #10
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %copy_base62.exit
  %i.ai = tail call ptr @__errno() #11
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #9, !srcloc !14
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %.critedge.thread, label %.critedge.thread.sink.split

bb.o:                                             ; preds = %bb.m, %copy_base62.exit
  %i.an = add i32 %.245, -1                       ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.o, %.loopexit
  %i.ao = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #9, !srcloc !14
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %.critedge.thread, label %.critedge.thread.sink.split

.critedge.thread.sink.split:                      ; preds = %._crit_edge, %bb.n
  %.sink = phi i32 [ 0, %bb.n ], [ 22, %._crit_edge ]
  %.030.ph = phi ptr [ %0, %bb.n ], [ null, %._crit_edge ]
  %i.aq = tail call ptr @__errno() #11
  store i32 %.sink, ptr %i.aq, align 4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %bb.a, %._crit_edge, %bb.n, %.critedge
  %.030 = phi ptr [ %0, %bb.n ], [ %0, %.critedge ], [ null, %._crit_edge ], [ %0, %bb.a ], [ %.030.ph, %.critedge.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noredzone nounwind optsize
declare dso_local noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_wait(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone optsize
declare dso_local i32 @nxsem_post(ptr noundef) local_unnamed_addr #6

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strlen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noredzone nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone optsize }
attributes #11 = { noredzone nounwind optsize }
attributes #12 = { noredzone noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !12}
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12}
!10 = distinct !{!10, !12}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{i64 460627}
end_hunk_0
