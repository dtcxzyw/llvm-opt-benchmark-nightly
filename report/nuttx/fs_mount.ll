Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_mount?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mountpt_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_search_s = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [21 x i8] c"/fs/mount/fs_mount.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"target && filesystemtype\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"mountpt_inode != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"procfs\00", align 1
@g_procfs_operations = external dso_local constant %struct.mountpt_operations, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -2147483648, 1) i32 @nx_mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.inode_search_s, align 8     ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %.not37 = or i1 %i.d, %i.e
  br i1 %.not37, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @__assert(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.1) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1
  %.not38 = icmp eq i8 %i.f, 0
  br i1 %.not38, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = trunc i64 %3 to i32
  %i.h = call i32 @find_blockdriver(ptr noundef nonnull %0, i32 noundef %i.g, ptr noundef nonnull %i.a) #11
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pr = load i8, ptr %0, align 1
  %.not39 = icmp eq i8 %.pr, 0
  br i1 %.not39, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = call i32 @find_mtddriver(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.u, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.g, %bb.f
  %i.l = call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #12
  %.not46 = icmp eq i32 %i.l, 0
  br i1 %.not46, label %bb.h, label %bb.u

bb.h:                                             ; preds = %.critedge
  call void @inode_lock() #11
  store ptr %1, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.m, i8 0, i64 41, i1 false)
  %i.o = call i32 @inode_find(ptr noundef nonnull %5) #11
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.m, align 8              ; 5 uses
  store ptr %i.q, ptr %i.b, align 8
  %.not41 = icmp eq ptr %i.q, null
  br i1 %.not41, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %bb.i
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 386, ptr noundef nonnull @.str.2) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i16, ptr %i.r, align 4
  %i.t = and i16 %i.s, 15
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @inode_release(ptr noundef nonnull %i.q) #11
  br label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.v = phi ptr [ %i.q, %bb.k ], [ null, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_procfs_operations, i64 152), align 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @inode_unlock() #11
  %i.y = call i32 %i.w(ptr noundef null, ptr noundef %4, ptr noundef nonnull %i.c) #11 ; 2 uses
  call void @inode_lock() #11
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = icmp eq ptr %i.v, null
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ab = call i32 @inode_reserve(ptr noundef nonnull %1, i32 noundef 511, ptr noundef nonnull %i.b) #11 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %bb.o ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = and i16 %i.af, -16
  %i.ah = or disjoint i16 %i.ag, 3
  store i16 %i.ah, ptr %i.ae, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @g_procfs_operations, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %i.aj, ptr %i.ak, align 8
  call void @inode_unlock() #11
  %i.al = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not42 = icmp eq ptr %i.al, null
  br i1 %.not42, label %bb.u, label %.sink.split

bb.r:                                             ; preds = %bb.p
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_procfs_operations, i64 160), align 8 ; 2 uses
  %.not43 = icmp eq ptr %i.am, null
  br i1 %.not43, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = call i32 %i.am(ptr noundef %i.an, ptr noundef nonnull %i.a, i32 noundef 0) #11 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.r, %bb.s, %bb.n, %bb.l
  %.0 = phi i32 [ -20, %bb.l ], [ %i.y, %bb.n ], [ %i.ab, %bb.s ], [ %i.ab, %bb.r ], [ -22, %bb.m ] ; 2 uses
  call void @inode_unlock() #11
  %i.ap = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not44 = icmp eq ptr %i.ap, null
  br i1 %.not44, label %bb.u, label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.q
  %.sink = phi ptr [ %i.al, %bb.q ], [ %i.ap, %bb.t ]
  %.027.ph = phi i32 [ 0, %bb.q ], [ %.0, %bb.t ]
  call void @free(ptr noundef nonnull %.sink) #12
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.t, %bb.e, %bb.g, %.critedge, %bb.q
  %.027 = phi i32 [ 0, %bb.q ], [ -19, %bb.e ], [ -19, %bb.g ], [ -15, %.critedge ], [ %.0, %bb.t ], [ %.027.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone optsize
declare dso_local i32 @find_blockdriver(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @find_mtddriver(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @inode_lock() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @inode_find(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @inode_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local void @inode_unlock() local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @inode_reserve(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -1, 1) i32 @mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @nx_mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #12 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #9, !srcloc !8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 0, %i.a
  %i.f = tail call ptr @__errno() #11
  store i32 %i.e, ptr %i.f, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #5

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noredzone nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strcmp" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone noreturn nounwind optsize }
attributes #11 = { noredzone nounwind optsize }
attributes #12 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 296481}
end_hunk_0
