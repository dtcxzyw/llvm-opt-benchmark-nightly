Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-cache-tree?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.object_id = type { [32 x i8], i32 }
%struct.option = type { i32, i32, ptr, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i64, ptr }

@.str = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"clear the cache tree before each iteration\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"invalidate\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"number of entries in the cache tree to invalidate (default 0)\00", align 1
@the_repository = external local_unnamed_addr global ptr, align 8
@test_cache_tree_usage = internal constant [2 x ptr] [ptr @.str.11, ptr null], align 16
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to read index file\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"not a tree object: %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"prime\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unhandled subcommand '%s'\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"test-tool cache-tree <options> (control|prime|update)\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @cmd__cache_tree(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.object_id, align 4          ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca [3 x %struct.option], align 16      ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store i32 9, ptr %3, align 16, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.a, ptr %i.e, align 16, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 4, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.g, align 16, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.1, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 2, ptr %i.i, align 16, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 1, ptr %i.l, align 16, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i32 11, ptr %i.n, align 16, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i32 0, ptr %i.o, align 4, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr @.str.2, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %i.b, ptr %i.q, align 16, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 4, ptr %i.r, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 128
  store ptr @.str.3, ptr %i.s, align 16, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr @.str.4, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 4, ptr %i.u, align 16, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.v, i8 0, i64 140, i1 false)
  %i.w = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.x = call ptr @setup_git_directory(ptr noundef %i.w) #8 ; 0 uses
  %i.y = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @test_cache_tree_usage, i32 noundef 0) #8
  %i.z = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.aa = call i32 @repo_read_index(ptr noundef %i.z) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = call fastcc ptr @_(ptr noundef nonnull @.str.5)
  call void (ptr, ...) @die(ptr noundef %i.ac) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr @the_repository, align 8, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 432
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ai, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !66
  %i.am = call ptr @repo_parse_tree_indirect(ptr noundef %i.ad, ptr noundef nonnull %2) #8 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = call fastcc ptr @_(ptr noundef nonnull @.str.6)
  %i.ao = call ptr @oid_to_hex(ptr noundef nonnull %2) #8
  call void (ptr, ...) @die(ptr noundef %i.an, ptr noundef %i.ao) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !12
  %.not19 = icmp eq i32 %i.ap, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 432
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void @cache_tree_free(ptr noundef nonnull %i.at) #8
  %i.au = call ptr @cache_tree() #8
  %i.av = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 432
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !65
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.bb = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 432
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !67
  %i.bg = uitofp i32 %i.bf to float
  %i.bh = uitofp nneg i32 %i.az to float
  %i.bi = fdiv float %i.bg, %i.bh                 ; 2 uses
  %.inv = fcmp ole float %i.bi, 1.000000e+00
  %i.bj = select i1 %.inv, float 1.000000e+00, float %i.bi
  %i.bk = fptosi float %i.bj to i32
  %4 = sext i32 %i.bk to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv, %4             ; 2 uses
  %i.bm = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 432
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  %i.br = trunc nsw i64 %i.bl to i32
  %i.bs = icmp ugt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !68
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bl
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 108
  call void @cache_tree_invalidate_path(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bw) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !12
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %.lr.ph, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %bb.h, %.lr.ph, %bb.g, %bb.f
  %.not21 = icmp eq i32 %i.y, 1
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  call void @usage_with_options(ptr noundef nonnull @test_cache_tree_usage, ptr noundef nonnull %3) #9
  unreachable

bb.j:                                             ; preds = %.critedge
  %i.ca = load ptr, ptr %1, align 8, !tbaa !72    ; 3 uses
  %i.cb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(6) @.str.7) #10
  %.not22 = icmp eq i32 %i.cb, 0
  br i1 %.not22, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = load ptr, ptr @the_repository, align 8, !tbaa !29 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 432
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53
  call void @prime_cache_tree(ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef nonnull %i.am) #8
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.cf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(7) @.str.8) #10
  %.not23 = icmp eq i32 %i.cf, 0
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr @the_repository, align 8, !tbaa !29
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 432
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !53
  %i.cj = call i32 @cache_tree_update(ptr noundef %i.ci, i32 noundef 24) #8 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ck = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ca, ptr noundef nonnull dereferenceable(8) @.str.9) #10
  %.not24 = icmp eq i32 %i.ck, 0
  br i1 %.not24, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = call fastcc ptr @_(ptr noundef nonnull @.str.10)
  %i.cm = load ptr, ptr %1, align 8, !tbaa !72
  call void (ptr, ...) @die(ptr noundef %i.cl, ptr noundef %i.cm) #9
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @setup_git_directory(ptr noundef) local_unnamed_addr #3

declare i32 @parse_options(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @repo_read_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !73
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.12, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare ptr @repo_parse_tree_indirect(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare void @cache_tree_free(ptr noundef) local_unnamed_addr #3

declare ptr @cache_tree() local_unnamed_addr #3

declare void @cache_tree_invalidate_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @usage_with_options(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @prime_cache_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cache_tree_update(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !71}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"option", !9, i64 0, !9, i64 4, !15, i64 8, !14, i64 16, !16, i64 24, !15, i64 32, !15, i64 40, !9, i64 48, !14, i64 56, !16, i64 64, !14, i64 72, !16, i64 80, !14, i64 88}
!18 = !{!17, !9, i64 0}
!19 = !{!17, !9, i64 4}
!20 = !{!17, !15, i64 8}
!21 = !{!17, !14, i64 16}
!22 = !{!17, !16, i64 24}
!23 = !{!17, !15, i64 32}
!24 = !{!17, !15, i64 40}
!25 = !{!17, !9, i64 48}
!26 = !{!17, !14, i64 56}
!27 = !{!17, !16, i64 64}
!28 = !{!"p1 _ZTS10repository", !14, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTS15object_database", !14, i64 0}
!31 = !{!"p1 _ZTS18parsed_object_pool", !14, i64 0}
!32 = !{!"p1 _ZTS9ref_store", !14, i64 0}
!33 = !{!"_Bool", !8, i64 0}
!34 = !{!"any p2 pointer", !14, i64 0}
!35 = !{!"p2 _ZTS13hashmap_entry", !34, i64 0}
!36 = !{!"hashmap", !35, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!37 = !{!"p1 _ZTS8mem_pool", !14, i64 0}
!38 = !{!"strmap", !36, i64 0, !37, i64 48, !9, i64 56}
!39 = !{!"repo_path_cache", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!40 = !{!"p1 _ZTS18fsmonitor_settings", !14, i64 0}
!41 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !40, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !9, i64 128, !15, i64 136}
!42 = !{!"p1 _ZTS10config_set", !14, i64 0}
!43 = !{!"p1 _ZTS15submodule_cache", !14, i64 0}
!44 = !{!"p1 _ZTS11index_state", !14, i64 0}
!45 = !{!"p1 _ZTS12remote_state", !14, i64 0}
!46 = !{!"p1 _ZTS13git_hash_algo", !14, i64 0}
!47 = !{!"repo_config_values", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!48 = !{!"p1 _ZTS6strmap", !14, i64 0}
!49 = !{!"p1 _ZTS16string_list_item", !14, i64 0}
!50 = !{!"string_list", !49, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !14, i64 32}
!51 = !{!"p1 _ZTS22promisor_remote_config", !14, i64 0}
!52 = !{!"repository", !15, i64 0, !15, i64 8, !30, i64 16, !31, i64 24, !32, i64 32, !33, i64 40, !38, i64 48, !38, i64 112, !39, i64 176, !15, i64 232, !15, i64 240, !15, i64 248, !33, i64 256, !33, i64 257, !15, i64 264, !41, i64 272, !42, i64 416, !43, i64 424, !44, i64 432, !45, i64 440, !46, i64 448, !46, i64 456, !47, i64 464, !9, i64 512, !15, i64 520, !9, i64 528, !9, i64 532, !48, i64 536, !9, i64 544, !38, i64 552, !50, i64 616, !15, i64 656, !51, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !33, i64 689, !33, i64 690}
!53 = !{!52, !44, i64 432}
!54 = !{!"p2 _ZTS11cache_entry", !34, i64 0}
!55 = !{!"p1 _ZTS11string_list", !14, i64 0}
!56 = !{!"p1 _ZTS10cache_tree", !14, i64 0}
!57 = !{!"p1 _ZTS11split_index", !14, i64 0}
end_hunk_0
