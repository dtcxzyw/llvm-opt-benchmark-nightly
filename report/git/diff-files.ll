Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff-files?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rev_info = type <{ ptr, %struct.prio_queue, %struct.object_array, ptr, %struct.object_array, %struct.rev_cmdline_info, %struct.list_objects_filter_options, %struct.ref_exclusions, ptr, ptr, ptr, %struct.pathspec, i32, i32, i32, i64, i32, i32, [4 x i8], %struct.date_mode, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, [4 x i8], ptr, ptr, %struct.ident_split, ptr, i32, [4 x i8], ptr, ptr, i32, i32, i32, [4 x i8], ptr, %struct.grep_opt, ptr, i32, i32, i32, i8, [3 x i8], i64, i64, i64, i32, i32, ptr, ptr, ptr, %struct.diff_options, %struct.diff_options, ptr, %struct.decoration, %struct.decoration, %struct.decoration, %struct.display_notes_opt, ptr, ptr, ptr, ptr, ptr, %struct.strvec, i32, [4 x i8], ptr, i32, i32, i32, [4 x i8], %struct.decoration, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.oidset }>
%struct.prio_queue = type { ptr, i64, ptr, i64, i64, ptr }
%struct.object_array = type { i32, i32, ptr }
%struct.rev_cmdline_info = type { i32, i32, ptr }
%struct.list_objects_filter_options = type { %struct.strbuf, i32, i8, ptr, i64, i64, i32, i64, i64, ptr }
%struct.strbuf = type { i64, i64, ptr }
%struct.ref_exclusions = type { %struct.string_list, %struct.strvec, i8 }
%struct.string_list = type { ptr, i64, i64, i8, ptr }
%struct.pathspec = type { i32, i8, i32, i32, ptr }
%struct.date_mode = type { i32, i32, ptr }
%struct.ident_split = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grep_opt = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [75 x i8]], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.diff_options = type { ptr, ptr, i32, i32, ptr, i32, ptr, i64, i64, ptr, ptr, ptr, ptr, %struct.diff_flags, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i64, i64, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, [3 x i8], %struct.pathspec, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.diff_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display_notes_opt = type { i32, %struct.string_list }
%struct.strvec = type { ptr, i64, i64 }
%struct.decoration = type { ptr, i32, i32, ptr }
%struct.oidset = type { %struct.kh_oid_set }
%struct.kh_oid_set = type { i32, i32, i32, i32, ptr, ptr, ptr }

@diff_files_usage = internal constant [1283 x i8] c"git diff-files [-q] [-0 | -1 | -2 | -3 | -c | --cc] [<common-diff-options>] [<path>...]\0A\0Acommon diff options:\0A  -z            output diff-raw with lines terminated with NUL.\0A  -p            output patch format.\0A  -u            synonym for -p.\0A  --patch-with-raw\0A                output both a patch and the diff-raw format.\0A  --stat        show diffstat instead of patch.\0A  --numstat     show numeric diffstat instead of patch.\0A  --patch-with-stat\0A                output a patch and prepend its diffstat.\0A  --name-only   show only names of changed files.\0A  --name-status show names and status of changed files.\0A  --full-index  show full object name on index lines.\0A  --abbrev=<n>  abbreviate object names in diff-tree header and diff-raw.\0A  -R            swap input file pairs.\0A  -B            detect complete rewrites.\0A  -M            detect renames.\0A  -C            detect copies.\0A  --find-copies-harder\0A                try unchanged files as candidate for copy detection.\0A  -l<n>         limit rename attempts up to <n> paths.\0A  -O<file>      reorder diffs according to the <file>.\0A  -S<string>    find filepair whose only one side contains the string.\0A  --pickaxe-all\0A                show all files diff when -S is used and hit is found.\0A  -a  --text    treat all files as text.\0A\00", align 16
@the_repository = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"--base\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--ours\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--theirs\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"repo_read_index_preload\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_diff_files(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.rev_info, align 8           ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  tail call void @show_usage_if_asked(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @diff_files_usage) #5
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !15
  tail call void @repo_config(ptr noundef %i.a, ptr noundef nonnull @git_diff_basic_config, ptr noundef null) #5
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !15
  tail call void @prepare_repo_settings(ptr noundef %i.b) #5
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store i32 0, ptr %i.d, align 8, !tbaa !41
  call void @repo_init_revisions(ptr noundef %i.c, ptr noundef nonnull %4, ptr noundef %2) #5
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 376
  store i32 0, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1840
  store i32 1, ptr %i.f, align 8, !tbaa !88
  %i.g = call i32 @setup_revisions(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #5 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 1456
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.037 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ]  ; 2 uses
  %.02636 = phi i32 [ %i.g, %.lr.ph ], [ %i.v, %bb.f ] ; 2 uses
  %.02735 = phi ptr [ %1, %.lr.ph ], [ %i.j, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %.02735, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89   ; 6 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !90
  %i.m = icmp eq i8 %i.l, 45
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(7) @.str) #6
  %.not30 = icmp eq i32 %i.n, 0
  br i1 %.not30, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(7) @.str.1) #6
  %.not31 = icmp eq i32 %i.o, 0
  br i1 %.not31, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(9) @.str.2) #6
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %.sink.split, label %sub_1

sub_1:                                            ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %.not41 = icmp eq i8 %i.r, 113
  br i1 %.not41, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %.tail
  call void @usage(ptr noundef nonnull @diff_files_usage) #7
  unreachable

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  store i32 %.sink, ptr %i.i, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %.tail
  %.1 = phi i32 [ 1, %.tail ], [ %.037, %.sink.split ] ; 2 uses
  %i.v = add nsw i32 %.02636, -1
  %i.w = icmp sgt i32 %.02636, 2
  br i1 %i.w, label %bb.b, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ], [ %.037, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1800 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !93   ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  store i32 1, ptr %i.x, align 8, !tbaa !93
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %5 = phi i32 [ 1, %bb.g ], [ %i.y, %.critedge ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 1540
  store i32 1, ptr %i.z, align 4, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !95
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 1480
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ne i64 %i.ae, -1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 1464
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp ne i64 %i.ah, -1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 1456
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 3
  %or.cond8 = select i1 %or.cond5, i1 true, i1 %i.al
  br i1 %or.cond8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @usage(ptr noundef nonnull @diff_files_usage) #7
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = icmp ne i32 %i.ak, -1
  %i.an = and i32 %5, 16
  %.not29 = icmp eq i32 %i.an, 0
  %or.cond45 = or i1 %i.am, %.not29
  br i1 %or.cond45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @diff_merges_set_dense_combined_if_unset(ptr noundef nonnull %4) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = load ptr, ptr @the_repository, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 1984
  %i.aq = call i32 @repo_read_index_preload(ptr noundef %i.ao, ptr noundef nonnull %i.ap, i32 noundef 0) #5
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @die_errno(ptr noundef nonnull @.str.4) #7
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @run_diff_files(ptr noundef nonnull %4, i32 noundef %.0.lcssa) #5
  %i.as = call i32 @diff_result_code(ptr noundef nonnull %4) #5
  call void @release_revisions(ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret i32 %i.as
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @show_usage_if_asked(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @git_diff_basic_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @prepare_repo_settings(ptr noundef) local_unnamed_addr #2

declare void @repo_init_revisions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @setup_revisions(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @usage(ptr noundef) local_unnamed_addr #4

declare void @diff_merges_set_dense_combined_if_unset(ptr noundef) local_unnamed_addr #2

declare i32 @repo_read_index_preload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #4

declare void @run_diff_files(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @diff_result_code(ptr noundef) local_unnamed_addr #2

declare void @release_revisions(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { noreturn nounwind }

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
!12 = distinct !{!12, !92}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS10repository", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 _ZTS15object_database", !13, i64 0}
!18 = !{!"p1 _ZTS18parsed_object_pool", !13, i64 0}
!19 = !{!"p1 _ZTS9ref_store", !13, i64 0}
!20 = !{!"_Bool", !8, i64 0}
!21 = !{!"any p2 pointer", !13, i64 0}
!22 = !{!"p2 _ZTS13hashmap_entry", !21, i64 0}
!23 = !{!"hashmap", !22, i64 0, !13, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!24 = !{!"p1 _ZTS8mem_pool", !13, i64 0}
!25 = !{!"strmap", !23, i64 0, !24, i64 48, !9, i64 56}
!26 = !{!"repo_path_cache", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!27 = !{!"p1 _ZTS18fsmonitor_settings", !13, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !27, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !28, i64 96, !28, i64 104, !28, i64 112, !28, i64 120, !9, i64 128, !16, i64 136}
!30 = !{!"p1 _ZTS10config_set", !13, i64 0}
!31 = !{!"p1 _ZTS15submodule_cache", !13, i64 0}
!32 = !{!"p1 _ZTS11index_state", !13, i64 0}
!33 = !{!"p1 _ZTS12remote_state", !13, i64 0}
!34 = !{!"p1 _ZTS13git_hash_algo", !13, i64 0}
!35 = !{!"repo_config_values", !16, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!36 = !{!"p1 _ZTS6strmap", !13, i64 0}
!37 = !{!"p1 _ZTS16string_list_item", !13, i64 0}
!38 = !{!"string_list", !37, i64 0, !28, i64 8, !28, i64 16, !9, i64 24, !13, i64 32}
!39 = !{!"p1 _ZTS22promisor_remote_config", !13, i64 0}
!40 = !{!"repository", !16, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !19, i64 32, !20, i64 40, !25, i64 48, !25, i64 112, !26, i64 176, !16, i64 232, !16, i64 240, !16, i64 248, !20, i64 256, !20, i64 257, !16, i64 264, !29, i64 272, !30, i64 416, !31, i64 424, !32, i64 432, !33, i64 440, !34, i64 448, !34, i64 456, !35, i64 464, !9, i64 512, !16, i64 520, !9, i64 528, !9, i64 532, !36, i64 536, !9, i64 544, !25, i64 552, !38, i64 616, !16, i64 656, !39, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !20, i64 689, !20, i64 690}
!41 = !{!40, !9, i64 296}
!42 = !{!"p1 _ZTS11commit_list", !13, i64 0}
!43 = !{!"p1 _ZTS16prio_queue_entry", !13, i64 0}
!44 = !{!"prio_queue", !13, i64 0, !28, i64 8, !13, i64 16, !28, i64 24, !28, i64 32, !43, i64 40}
!45 = !{!"p1 _ZTS18object_array_entry", !13, i64 0}
!46 = !{!"object_array", !9, i64 0, !9, i64 4, !45, i64 8}
!47 = !{!"p1 _ZTS17rev_cmdline_entry", !13, i64 0}
!48 = !{!"rev_cmdline_info", !9, i64 0, !9, i64 4, !47, i64 8}
!49 = !{!"strbuf", !28, i64 0, !28, i64 8, !16, i64 16}
!50 = !{!"p1 _ZTS27list_objects_filter_options", !13, i64 0}
!51 = !{!"list_objects_filter_options", !49, i64 0, !9, i64 24, !9, i64 28, !9, i64 28, !16, i64 32, !28, i64 40, !28, i64 48, !9, i64 56, !28, i64 64, !28, i64 72, !50, i64 80}
!52 = !{!"p2 omnipotent char", !21, i64 0}
!53 = !{!"strvec", !52, i64 0, !28, i64 8, !28, i64 16}
!54 = !{!"ref_exclusions", !38, i64 0, !53, i64 40, !8, i64 64}
!55 = !{!"p1 _ZTS13pathspec_item", !13, i64 0}
!56 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !55, i64 16}
!57 = !{!"date_mode", !9, i64 0, !9, i64 4, !16, i64 8}
!58 = !{!"p1 _ZTS8log_info", !13, i64 0}
!59 = !{!"ident_split", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!60 = !{!"p1 _ZTS11string_list", !13, i64 0}
!61 = !{!"p1 _ZTS8grep_pat", !13, i64 0}
!62 = !{!"p2 _ZTS8grep_pat", !21, i64 0}
!63 = !{!"p1 _ZTS9grep_expr", !13, i64 0}
!64 = !{!"grep_opt", !61, i64 0, !62, i64 8, !61, i64 16, !62, i64 24, !63, i64 32, !14, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !8, i64 152, !9, i64 828, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !13, i64 856, !13, i64 864, !13, i64 872}
!65 = !{!"p1 _ZTS9git_graph", !13, i64 0}
!66 = !{!"p2 _ZTS17re_pattern_buffer", !21, i64 0}
!67 = !{!"diff_flags", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140}
!68 = !{!"p1 _ZTS6oidset", !13, i64 0}
!69 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!70 = !{!"p1 _ZTS20emitted_diff_symbols", !13, i64 0}
!71 = !{!"diff_options", !16, i64 0, !16, i64 8, !9, i64 16, !9, i64 20, !16, i64 24, !9, i64 32, !66, i64 40, !28, i64 48, !28, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !67, i64 96, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !16, i64 328, !9, i64 336, !16, i64 344, !9, i64 352, !9, i64 356, !52, i64 360, !28, i64 368, !28, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !16, i64 400, !9, i64 408, !9, i64 412, !68, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !13, i64 440, !69, i64 448, !9, i64 456, !8, i64 460, !56, i64 464, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !9, i64 552, !70, i64 560, !9, i64 568, !9, i64 572, !14, i64 576, !36, i64 584, !9, i64 592, !9, i64 596, !9, i64 600}
!72 = !{!"p1 _ZTS16reflog_walk_info", !13, i64 0}
!73 = !{!"p1 _ZTS16decoration_entry", !13, i64 0}
!74 = !{!"decoration", !16, i64 0, !9, i64 8, !9, i64 12, !73, i64 16}
!75 = !{!"display_notes_opt", !9, i64 0, !38, i64 8}
!76 = !{!"p1 _ZTS9object_id", !13, i64 0}
!77 = !{!"p1 _ZTS13saved_parents", !13, i64 0}
!78 = !{!"p1 _ZTS16revision_sources", !13, i64 0}
!79 = !{!"p1 _ZTS14topo_walk_info", !13, i64 0}
!80 = !{!"p2 _ZTS12bloom_keyvec", !21, i64 0}
!81 = !{!"p1 _ZTS21bloom_filter_settings", !13, i64 0}
!82 = !{!"p1 _ZTS10tmp_objdir", !13, i64 0}
!83 = !{!"p1 int", !13, i64 0}
!84 = !{!"kh_oid_set", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !83, i64 16, !76, i64 24, !83, i64 32}
!85 = !{!"oidset", !84, i64 0}
!86 = !{!"rev_info", !42, i64 0, !44, i64 8, !46, i64 56, !14, i64 72, !46, i64 80, !48, i64 96, !51, i64 112, !54, i64 200, !16, i64 272, !16, i64 280, !16, i64 288, !56, i64 296, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 340, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !57, i64 352, !9, i64 368, !9, i64 372, !9, i64 376, !9, i64 380, !58, i64 384, !9, i64 392, !9, i64 396, !16, i64 400, !16, i64 408, !9, i64 416, !16, i64 424, !16, i64 432, !59, i64 440, !60, i64 504, !9, i64 512, !16, i64 520, !16, i64 528, !9, i64 536, !9, i64 540, !9, i64 544, !60, i64 552, !64, i64 560, !65, i64 1440, !9, i64 1448, !9, i64 1452, !9, i64 1456, !9, i64 1460, !9, i64 1460, !28, i64 1464, !28, i64 1472, !28, i64 1480, !9, i64 1488, !9, i64 1492, !13, i64 1496, !13, i64 1504, !13, i64 1512, !71, i64 1520, !71, i64 2128, !72, i64 2736, !74, i64 2744, !74, i64 2768, !74, i64 2792, !75, i64 2816, !76, i64 2864, !76, i64 2872, !16, i64 2880, !16, i64 2888, !16, i64 2896, !53, i64 2904, !9, i64 2928, !16, i64 2936, !9, i64 2944, !9, i64 2948, !9, i64 2952, !74, i64 2960, !77, i64 2984, !42, i64 2992, !42, i64 3000, !16, i64 3008, !78, i64 3016, !79, i64 3024, !80, i64 3032, !9, i64 3040, !81, i64 3048, !9, i64 3056, !82, i64 3064, !85, i64 3072}
!87 = !{!86, !9, i64 376}
!88 = !{!86, !9, i64 1840}
!89 = !{!16, !16, i64 0}
!90 = !{!8, !8, i64 0}
!91 = !{!86, !9, i64 1456}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!86, !9, i64 1800}
!94 = !{!86, !9, i64 1540}
!95 = !{!86, !9, i64 56}
end_hunk_0
