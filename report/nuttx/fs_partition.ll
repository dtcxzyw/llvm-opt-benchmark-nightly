Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/fs_partition?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.partition_state_s = type { ptr, ptr, i32, i32, i64 }
%struct.mtd_geometry_s = type { i32, i32, i32, [33 x i8] }
%struct.geometry = type { i8, i8, i8, i32, i32, [33 x i8] }

@.str = private unnamed_addr constant [29 x i8] c"/fs/partition/fs_partition.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mgeo.blocksize\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"geo.geo_sectorsize\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @read_partition_block(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = trunc i64 %2 to i32
  %i.h = trunc i64 %3 to i32
  %i.i = tail call i64 %i.f(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %i.g, i32 noundef %i.h) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = trunc i64 %2 to i32
  %i.n = tail call i64 %i.l(ptr noundef %i.j, i32 noundef %i.m, i64 noundef %3, ptr noundef %1) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i64 [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.0 = trunc i64 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -2147483648, 1) i32 @parse_block_partition(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.partition_state_s, align 8  ; 9 uses
  %4 = alloca %struct.mtd_geometry_s, align 4     ; 6 uses
  %5 = alloca %struct.geometry, align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = call i32 @open_blockdriver(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %4 to i64
  %i.j = call i32 %i.h(ptr noundef nonnull %i.d, i32 noundef 1537, i64 noundef %i.i) #6
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %4, align 4                ; 3 uses
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @.str.1) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = udiv i32 %i.o, %i.l
  %i.v = mul i32 %i.u, %i.s
  store i32 %i.v, ptr %i.t, align 8
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge, %bb.b
  %i.w = phi ptr [ %.pre15, %._crit_edge ], [ %i.f, %bb.b ]
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.x, ptr noundef nonnull %5) #6 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not13 = icmp eq i32 %i.ad, 0
  br i1 %.not13, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 237, ptr noundef nonnull @.str.2) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load <2 x i32>, ptr %i.ag, align 4
  store <2 x i32> %7, ptr %6, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.j ], [ %i.aa, %bb.g ]
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = call i32 @close_blockdriver(ptr noundef %i.ah) #6 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.09 = phi i32 [ %.0, %bb.k ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.09
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noredzone optsize
declare dso_local i32 @open_blockdriver(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone noreturn optsize
declare dso_local void @__assert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local i32 @close_blockdriver(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local range(i32 -2147483648, 1) i32 @parse_mtd_partition(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.mtd_geometry_s, align 4     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %3 to i64
  %i.d = call i32 %i.b(ptr noundef %0, i32 noundef 1537, i64 noundef %i.c) #6 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %3, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @__assert(ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull @.str.1) #8
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0
}

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noredzone noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noredzone nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { noredzone noreturn nounwind optsize }

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
end_hunk_0
