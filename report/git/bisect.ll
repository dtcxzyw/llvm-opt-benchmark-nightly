Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/bisect?download=true
inline.NumInlined: 101
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.oid_array = type { ptr, i64, i64, i32 }
%struct.strvec = type { ptr, i64, i64 }
%struct.strbuf = type { i64, i64, ptr }
%struct.pretty_print_context = type { i32, i32, ptr, i32, %struct.date_mode, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i8, ptr, %struct.string_list, i32 }
%struct.date_mode = type { i32, i32, ptr }
%struct.string_list = type { ptr, i64, i64, i8, ptr }
%struct.child_process = type { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, ptr, i8, ptr, i8, ptr }
%struct.object_id = type { [32 x i8], i32 }
%struct.rev_info = type <{ ptr, %struct.prio_queue, %struct.object_array, ptr, %struct.object_array, %struct.rev_cmdline_info, %struct.list_objects_filter_options, %struct.ref_exclusions, ptr, ptr, ptr, %struct.pathspec, i32, i32, i32, i64, i32, i32, [4 x i8], %struct.date_mode, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, [4 x i8], ptr, ptr, %struct.ident_split, ptr, i32, [4 x i8], ptr, ptr, i32, i32, i32, [4 x i8], ptr, %struct.grep_opt, ptr, i32, i32, i32, i8, [3 x i8], i64, i64, i64, i32, i32, ptr, ptr, ptr, %struct.diff_options, %struct.diff_options, ptr, %struct.decoration, %struct.decoration, %struct.decoration, %struct.display_notes_opt, ptr, ptr, ptr, ptr, ptr, %struct.strvec, i32, [4 x i8], ptr, i32, i32, i32, [4 x i8], %struct.decoration, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.oidset }>
%struct.prio_queue = type { ptr, i64, ptr, i64, i64, ptr }
%struct.object_array = type { i32, i32, ptr }
%struct.rev_cmdline_info = type { i32, i32, ptr }
%struct.list_objects_filter_options = type { %struct.strbuf, i32, i8, ptr, i64, i64, i32, i64, i64, ptr }
%struct.ref_exclusions = type { %struct.string_list, %struct.strvec, i8 }
%struct.pathspec = type { i32, i8, i32, i32, ptr }
%struct.ident_split = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grep_opt = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [75 x i8]], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.diff_options = type { ptr, ptr, i32, i32, ptr, i32, ptr, i64, i64, ptr, ptr, ptr, ptr, %struct.diff_flags, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i64, i64, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, [3 x i8], %struct.pathspec, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.diff_flags = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.display_notes_opt = type { i32, %struct.string_list }
%struct.decoration = type { ptr, i32, i32, ptr }
%struct.oidset = type { %struct.kh_oid_set }
%struct.kh_oid_set = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.refs_for_each_ref_options = type { ptr, ptr, ptr, ptr, i64, i32 }

@commit_weight.2 = internal unnamed_addr global i32 0, align 8
@commit_weight.3 = internal unnamed_addr global ptr null, align 8
@skipped_revs = internal global %struct.oid_array zeroinitializer, align 8
@strbuf_slopbuf = external global [0 x i8], align 1
@the_repository = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"BISECT_EXPECTED_REV\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"BISECT_HEAD\00", align 1
@empty_strvec = external global [0 x ptr], align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[%H] %s%n\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"could not read file '%s'\00", align 1
@default_abbrev = external local_unnamed_addr global i32, align 4
@term_bad = internal global ptr null, align 8
@term_good = internal global ptr null, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"reading bisect refs failed\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%s was both '%s' and '%s'\0A\00", align 1
@current_bad_oid = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [70 x i8] c"No testable commit found.\0AMaybe you started with bad path arguments?\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s is the first '%s' commit\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"(roughly %d step)\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"(roughly %d steps)\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Bisecting: %d revision left to test after this %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"Bisecting: %d revisions left to test after this %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"refs/bisect/\00", align 1
@__const.bisect_clean_state.opts = private unnamed_addr constant { ptr, ptr, ptr, ptr, i64, i32, [4 x i8] } { ptr @.str.22, ptr null, ptr null, ptr null, i64 0, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"bisect: remove\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"bisect.c\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"shouldn't be calling count-distance in fp mode\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"dist=%d\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1
@git_path_bisect_terms.ret = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [13 x i8] c"BISECT_TERMS\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@__const.read_bisect_refs.opts = private unnamed_addr constant { ptr, ptr, ptr, ptr, i64, i32, [4 x i8] } { ptr @.str.22, ptr null, ptr null, ptr null, i64 12, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@good_revs = internal global %struct.oid_array zeroinitializer, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"skip-\00", align 1
@git_path_bisect_first_parent.ret = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [20 x i8] c"BISECT_FIRST_PARENT\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"a '%s' revision is needed\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"BISECT_ANCESTORS_OK\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"could not create file '%s'\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Not a valid commit name %s\00", align 1
@__const.check_ancestors.rev_argv = private unnamed_addr constant %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, align 8
@.str.44 = private unnamed_addr constant [40 x i8] c"Bisecting: a merge base must be tested\0A\00", align 1
@.str.45 = private unnamed_addr constant [82 x i8] c"The merge base %s is bad.\0AThis means the bug has been fixed between %s and [%s].\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.48 = private unnamed_addr constant [73 x i8] c"The merge base %s is new.\0AThe property has changed between %s and [%s].\0A\00", align 1
@.str.49 = private unnamed_addr constant [85 x i8] c"The merge base %s is '%s'.\0AThis means the first '%s' commit is between %s and [%s].\0A\00", align 1
@.str.50 = private unnamed_addr constant [135 x i8] c"Some '%s' revs are not ancestors of the '%s' rev.\0Agit bisect cannot work properly in this case.\0AMaybe you mistook '%s' and '%s' revs?\0A\00", align 1
@.str.51 = private unnamed_addr constant [137 x i8] c"the merge base between %s and [%s] must be skipped.\0ASo we cannot be sure the first '%s' commit is between %s and %s.\0AWe continue anyway.\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"bisect_rev_setup\00", align 1
@__const.read_bisect_paths.str = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.53 = private unnamed_addr constant [38 x i8] c"Badly quoted content in file '%s': %s\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.55 = private unnamed_addr constant [87 x i8] c"There are only 'skip'ped commits left to test.\0AThe first '%s' commit could be any of:\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"We cannot bisect more!\0A\00", align 1
@__const.show_commit.show = private unnamed_addr constant { %struct.strvec, %struct.strvec, i32, i32, i64, ptr, ptr, i32, i32, i32, [4 x i8], ptr, i8, [7 x i8], ptr, i8, [7 x i8], ptr } { %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, %struct.strvec { ptr @empty_strvec, i64 0, i64 0 }, i32 0, i32 0, i64 0, ptr null, ptr null, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer, ptr null }, align 8
@.str.58 = private unnamed_addr constant [11 x i8] c"--no-pager\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"--stat\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"--summary\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"--no-abbrev-commit\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"--diff-merges=first-parent\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"unable to start 'show' for object '%s'\00", align 1
@git_path_bisect_ancestors_ok.ret = internal unnamed_addr global ptr null, align 8
@git_path_bisect_log.ret = internal unnamed_addr global ptr null, align 8
@.str.65 = private unnamed_addr constant [11 x i8] c"BISECT_LOG\00", align 1
@git_path_bisect_names.ret = internal unnamed_addr global ptr null, align 8
@.str.66 = private unnamed_addr constant [13 x i8] c"BISECT_NAMES\00", align 1
@git_path_bisect_run.ret = internal unnamed_addr global ptr null, align 8
@.str.67 = private unnamed_addr constant [11 x i8] c"BISECT_RUN\00", align 1
@git_path_bisect_start.ret = internal unnamed_addr global ptr null, align 8
@.str.68 = private unnamed_addr constant [13 x i8] c"BISECT_START\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @find_bisection(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 7 uses
  store i32 0, ptr @commit_weight.2, align 8, !tbaa !141
  store ptr null, ptr @commit_weight.3, align 8, !tbaa !142
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not73 = icmp eq ptr %i.a, null
  br i1 %.not73, label %.preheader263.i.thread, label %.lr.ph

.preheader263.i.thread:                           ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !16
  %i.b = tail call ptr @xcalloc(i64 noundef 0, i64 noundef 4) #20
  br label %.preheader263.._crit_edge_crit_edge.i

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.077 = phi ptr [ %.1, %bb.d ], [ null, %bb.a ] ; 2 uses
  %.03776 = phi ptr [ %i.h, %bb.d ], [ %i.a, %bb.a ] ; 4 uses
  %.03875 = phi i32 [ %.139, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.04074 = phi i32 [ %.2, %bb.d ], [ 0, %bb.a ]  ; 2 uses
  %i.c = load ptr, ptr %.03776, align 8, !tbaa !19
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03776, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = and i32 %i.f, 2
  %.not46 = icmp eq i32 %i.i, 0
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %.03776) #20
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store ptr %.077, ptr %i.g, align 8, !tbaa !20
  %i.j = lshr i32 %i.f, 2
  %i.k = and i32 %i.j, 1
  %i.l = xor i32 %i.k, 1
  %spec.select = add nsw i32 %i.l, %.04074
  %i.m = add nsw i32 %.03875, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi i32 [ %.04074, %bb.b ], [ %spec.select, %bb.c ] ; 10 uses
  %.139 = phi i32 [ %.03875, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %.077, %bb.b ], [ %.03776, %bb.c ] ; 7 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %bb.d
  %i.n = sext i32 %.139 to i64
  store i32 %.2, ptr %2, align 4, !tbaa !16
  %i.o = tail call ptr @xcalloc(i64 noundef %i.n, i64 noundef 4) #20 ; 5 uses
  %.not273.i = icmp eq ptr %.1, null              ; 3 uses
  br i1 %.not273.i, label %.preheader263.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.p = and i32 %3, 2
  %.not8.i.i = icmp eq i32 %i.p, 0                ; 2 uses
  %.pre.i.i.pre.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 4 uses
  br label %bb.e

.preheader264.i:                                  ; preds = %bb.u
  %i.q = and i32 %3, 1
  %.not98.i = icmp eq i32 %i.q, 0
  %i.r = sdiv i32 %.2, 1024
  br label %bb.v

bb.e:                                             ; preds = %bb.u, %.lr.ph.i
  %.pre.i.i.i328.i.a = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i.i329.i, %bb.u ]
  %.pre.i.i.i120318.i.a = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i.i120319.i, %bb.u ]
  %.pre.i.i.i111310.i.a = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i.i111311.i, %bb.u ]
  %.pre.i.i.i = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i301.i, %bb.u ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %.075276.i = phi ptr [ %.1, %.lr.ph.i ], [ %i.ex, %bb.u ] ; 5 uses
  %.076275.i.a = phi i32 [ 0, %.lr.ph.i ], [ %.177.i, %bb.u ] ; 4 uses
  %i.s = load ptr, ptr %.075276.i, align 8, !tbaa !19 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.v = getelementptr i8, ptr %i.s, i64 72
  %.val.i = load i32, ptr %i.v, align 8, !tbaa !143 ; 2 uses
  %i.w = udiv i32 %.val.i, 65532                  ; 6 uses
  %i.x = urem i32 %.val.i, 65532
  %i.y = load i32, ptr @commit_weight.2, align 8, !tbaa !141
  %.not.i.i.i = icmp ugt i32 %i.y, %i.w
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i, i64 noundef %i.ab) #20 ; 7 uses
  store ptr %i.ac, ptr @commit_weight.3, align 8, !tbaa !142
  %i.ad = load i32, ptr @commit_weight.2, align 8, !tbaa !141 ; 5 uses
  %.not331.i.i.i = icmp ugt i32 %i.ad, %i.w
  br i1 %.not331.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.ae = add nuw nsw i32 %i.w, 1
  %i.af = sub nuw i32 %i.ae, %i.ad                ; 3 uses
  %min.iters.check203 = icmp samesign ult i32 %i.af, 4
  br i1 %min.iters.check203, label %.lr.ph.i.i.i.preheader363, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec205 = and i32 %i.af, 262140               ; 3 uses
  %i.ag = add i32 %i.ad, %n.vec205
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i32 [ 0, %vector.ph204 ], [ %index.next208, %vector.body206 ] ; 2 uses
  %i.ah = add i32 %i.ad, %index207
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !145
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !145
  %index.next208 = add nuw i32 %index207, 4       ; 2 uses
  %i.al = icmp eq i32 %index.next208, %n.vec205
  br i1 %i.al, label %middle.block209, label %vector.body206, !llvm.loop !95

middle.block209:                                  ; preds = %vector.body206
  %cmp.n210 = icmp eq i32 %i.af, %n.vec205
  br i1 %cmp.n210, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader363

.lr.ph.i.i.i.preheader363:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block209
  %.0302.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block209 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader363, %.lr.ph.i.i.i
  %.0302.i.i.i = phi i32 [ %i.ao, %.lr.ph.i.i.i ], [ %.0302.i.i.i.ph, %.lr.ph.i.i.i.preheader363 ] ; 2 uses
  %i.am = zext i32 %.0302.i.i.i to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am
  store ptr null, ptr %i.an, align 8, !tbaa !145
  %i.ao = add i32 %.0302.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.ao, %i.w
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !96

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block209, %bb.f
  store i32 %i.z, ptr @commit_weight.2, align 8, !tbaa !141
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %bb.e
  %.pre.i.i.i327.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i328.i.a, %bb.e ]
  %.pre.i.i.i120317.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i120318.i.a, %bb.e ]
  %.pre.i.i.i111309.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i111310.i.a, %bb.e ]
  %.pre.i.i303.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.e ] ; 2 uses
  %i.ap = zext nneg i32 %i.w to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i303.i, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !145 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not34.i.i.i, label %bb.h, label %commit_weight_at.exit.i

bb.h:                                             ; preds = %bb.g
  %i.as = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.at = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 5 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ap
  store ptr %i.as, ptr %i.au, align 8, !tbaa !145
  br label %commit_weight_at.exit.i

commit_weight_at.exit.i:                          ; preds = %bb.h, %bb.g
  %.pre.i.i.i.i = phi ptr [ %.pre.i.i.i327.i, %bb.g ], [ %i.at, %bb.h ] ; 5 uses
  %.pre.i.i.i120.i = phi ptr [ %.pre.i.i.i120317.i, %bb.g ], [ %i.at, %bb.h ] ; 4 uses
  %.pre.i.i.i111.i = phi ptr [ %.pre.i.i.i111309.i, %bb.g ], [ %i.at, %bb.h ] ; 3 uses
  %.pre.i.i302.i = phi ptr [ %.pre.i.i303.i, %bb.g ], [ %i.at, %bb.h ]
  %i.av = phi ptr [ %i.ar, %bb.g ], [ %i.as, %bb.h ]
  %i.aw = zext nneg i32 %i.x to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.u, ptr %i.ax, align 8, !tbaa !148
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.069.i.i = load ptr, ptr %i.ay, align 8, !tbaa !15 ; 3 uses
  %.not10.i.i = icmp eq ptr %.069.i.i, null
  br i1 %.not10.i.i, label %count_interesting_parents.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %commit_weight_at.exit.i
  br i1 %.not8.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.0612.us.i.i = phi ptr [ %.06.us.i.i, %.lr.ph.split.us.i.i ], [ %.069.i.i, %.lr.ph.i.i ] ; 2 uses
  %.011.us.i.i = phi i32 [ %spec.select.us.i.i, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i.i ]
  %i.az = load ptr, ptr %.0612.us.i.i, align 8, !tbaa !19
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 8589934592
  %.not7.us.i.i = icmp eq i64 %i.bb, 0
  %i.bc = zext i1 %.not7.us.i.i to i32
  %spec.select.us.i.i = add nuw nsw i32 %.011.us.i.i, %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0612.us.i.i, i64 8
  %.06.us.i.i = load ptr, ptr %i.bd, align 8, !tbaa !15 ; 2 uses
  %.not.us.i.i = icmp eq ptr %.06.us.i.i, null
  br i1 %.not.us.i.i, label %count_interesting_parents.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !97

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.be = load ptr, ptr %.069.i.i, align 8, !tbaa !19
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, 8589934592
  %.not7.i.i = icmp eq i64 %i.bg, 0
  %i.bh = zext i1 %.not7.i.i to i32
  br label %count_interesting_parents.exit.i

count_interesting_parents.exit.i:                 ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.i.i
  %.2.i.i = phi i32 [ %i.bh, %.lr.ph.split.i.i ], [ %spec.select.us.i.i, %.lr.ph.split.us.i.i ]
  switch i32 %.2.i.i, label %bb.q [
    i32 0, label %count_interesting_parents.exit.thread.i
    i32 1, label %bb.m
  ]

count_interesting_parents.exit.thread.i:          ; preds = %count_interesting_parents.exit.i, %commit_weight_at.exit.i
  %i.bi = and i64 %i.t, 17179869184
  %.not100.i = icmp eq i64 %i.bi, 0
  br i1 %.not100.i, label %bb.i, label %bb.u

bb.i:                                             ; preds = %count_interesting_parents.exit.thread.i
  %.075.val103.i = load ptr, ptr %.075276.i, align 8, !tbaa !19
  %i.bj = getelementptr i8, ptr %.075.val103.i, i64 72
  %.075.val103.val.i = load i32, ptr %i.bj, align 8, !tbaa !143 ; 2 uses
  %i.bk = udiv i32 %.075.val103.val.i, 65532      ; 6 uses
  %i.bl = urem i32 %.075.val103.val.i, 65532
  %i.bm = load i32, ptr @commit_weight.2, align 8, !tbaa !141
  %.not.i.i.i.i = icmp ugt i32 %i.bm, %i.bk
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add nuw nsw i32 %i.bk, 1                ; 2 uses
  %i.bo = shl nuw nsw i32 %i.bn, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i.i, i64 noundef %i.bp) #20 ; 4 uses
  store ptr %i.bq, ptr @commit_weight.3, align 8, !tbaa !142
  %i.br = load i32, ptr @commit_weight.2, align 8, !tbaa !141 ; 5 uses
  %.not331.i.i.i.i = icmp ugt i32 %i.br, %i.bk
  br i1 %.not331.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %i.bs = add nuw nsw i32 %i.bk, 1
  %i.bt = sub nuw i32 %i.bs, %i.br                ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.bt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i32 %i.bt, 262140                  ; 3 uses
  %i.bu = add i32 %i.br, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = add i32 %i.br, %index
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !tbaa !145
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !145
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.bz = icmp eq i32 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader360

.lr.ph.i.i.i.i.preheader360:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.0302.i.i.i.i.ph = phi i32 [ %i.br, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader360, %.lr.ph.i.i.i.i
  %.0302.i.i.i.i = phi i32 [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0302.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader360 ] ; 2 uses
  %i.ca = zext i32 %.0302.i.i.i.i to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.ca
  store ptr null, ptr %i.cb, align 8, !tbaa !145
  %i.cc = add i32 %.0302.i.i.i.i, 1               ; 2 uses
  %.not33.i.i.i.i = icmp ugt i32 %i.cc, %i.bk
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !99

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.j
  store i32 %i.bn, ptr @commit_weight.2, align 8, !tbaa !141
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.pre.i.i.i335.i = phi ptr [ %i.bq, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.i ] ; 2 uses
  %i.cd = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i335.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !145 ; 2 uses
  %.not34.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not34.i.i.i.i, label %bb.l, label %weight_set.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cg = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ch = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cd
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !145
  br label %weight_set.exit.i

weight_set.exit.i:                                ; preds = %bb.l, %bb.k
  %.pre.i.i.i334.i = phi ptr [ %.pre.i.i.i335.i, %bb.k ], [ %i.ch, %bb.l ] ; 4 uses
  %i.cj = phi ptr [ %i.cf, %bb.k ], [ %i.cg, %bb.l ]
  %i.ck = zext nneg i32 %i.bl to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !148
  store i32 1, ptr %i.cm, align 4, !tbaa !16
  %i.cn = add nsw i32 %.076275.i.a, 1
  br label %bb.u

bb.m:                                             ; preds = %count_interesting_parents.exit.i
  %.075.val102.i = load ptr, ptr %.075276.i, align 8, !tbaa !19
  %i.co = getelementptr i8, ptr %.075.val102.i, i64 72
  %.075.val102.val.i = load i32, ptr %i.co, align 8, !tbaa !143 ; 2 uses
  %i.cp = udiv i32 %.075.val102.val.i, 65532      ; 6 uses
  %i.cq = urem i32 %.075.val102.val.i, 65532
  %i.cr = load i32, ptr @commit_weight.2, align 8, !tbaa !141
  %.not.i.i.i110.i = icmp ugt i32 %i.cr, %i.cp
  br i1 %.not.i.i.i110.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = add nuw nsw i32 %i.cp, 1                ; 2 uses
  %i.ct = shl nuw nsw i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i111.i, i64 noundef %i.cu) #20 ; 6 uses
  store ptr %i.cv, ptr @commit_weight.3, align 8, !tbaa !142
  %i.cw = load i32, ptr @commit_weight.2, align 8, !tbaa !141 ; 5 uses
  %.not331.i.i.i112.i = icmp ugt i32 %i.cw, %i.cp
  br i1 %.not331.i.i.i112.i, label %._crit_edge.i.i.i116.i, label %.lr.ph.i.i.i113.i.preheader

.lr.ph.i.i.i113.i.preheader:                      ; preds = %bb.n
  %i.cx = add nuw nsw i32 %i.cp, 1
  %i.cy = sub nuw i32 %i.cx, %i.cw                ; 3 uses
  %min.iters.check193 = icmp samesign ult i32 %i.cy, 4
  br i1 %min.iters.check193, label %.lr.ph.i.i.i113.i.preheader362, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph.i.i.i113.i.preheader
  %n.vec195 = and i32 %i.cy, 262140               ; 3 uses
  %i.cz = add i32 %i.cw, %n.vec195
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i32 [ 0, %vector.ph194 ], [ %index.next198, %vector.body196 ] ; 2 uses
  %i.da = add i32 %i.cw, %index197
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.dc, align 8, !tbaa !145
  store <2 x ptr> splat (ptr null), ptr %i.dd, align 8, !tbaa !145
  %index.next198 = add nuw i32 %index197, 4       ; 2 uses
  %i.de = icmp eq i32 %index.next198, %n.vec195
  br i1 %i.de, label %middle.block199, label %vector.body196, !llvm.loop !100

middle.block199:                                  ; preds = %vector.body196
  %cmp.n200 = icmp eq i32 %i.cy, %n.vec195
  br i1 %cmp.n200, label %._crit_edge.i.i.i116.i, label %.lr.ph.i.i.i113.i.preheader362

.lr.ph.i.i.i113.i.preheader362:                   ; preds = %.lr.ph.i.i.i113.i.preheader, %middle.block199
  %.0302.i.i.i114.i.ph = phi i32 [ %i.cw, %.lr.ph.i.i.i113.i.preheader ], [ %i.cz, %middle.block199 ]
  br label %.lr.ph.i.i.i113.i

.lr.ph.i.i.i113.i:                                ; preds = %.lr.ph.i.i.i113.i.preheader362, %.lr.ph.i.i.i113.i
  %.0302.i.i.i114.i = phi i32 [ %i.dh, %.lr.ph.i.i.i113.i ], [ %.0302.i.i.i114.i.ph, %.lr.ph.i.i.i113.i.preheader362 ] ; 2 uses
  %i.df = zext i32 %.0302.i.i.i114.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.df
  store ptr null, ptr %i.dg, align 8, !tbaa !145
  %i.dh = add i32 %.0302.i.i.i114.i, 1            ; 2 uses
  %.not33.i.i.i115.i = icmp ugt i32 %i.dh, %i.cp
  br i1 %.not33.i.i.i115.i, label %._crit_edge.i.i.i116.i, label %.lr.ph.i.i.i113.i, !llvm.loop !101

._crit_edge.i.i.i116.i:                           ; preds = %.lr.ph.i.i.i113.i, %middle.block199, %bb.n
  store i32 %i.cs, ptr @commit_weight.2, align 8, !tbaa !141
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i116.i, %bb.m
  %.pre.i.i.i331.i.a = phi ptr [ %i.cv, %._crit_edge.i.i.i116.i ], [ %.pre.i.i.i.i, %bb.m ]
  %.pre.i.i.i120321.i.a = phi ptr [ %i.cv, %._crit_edge.i.i.i116.i ], [ %.pre.i.i.i120.i, %bb.m ]
  %.pre.i.i.i111313.i = phi ptr [ %i.cv, %._crit_edge.i.i.i116.i ], [ %.pre.i.i.i111.i, %bb.m ] ; 2 uses
  %i.di = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i111313.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !145 ; 2 uses
  %.not34.i.i.i117.i = icmp eq ptr %i.dk, null
  br i1 %.not34.i.i.i117.i, label %bb.p, label %weight_set.exit118.i

bb.p:                                             ; preds = %bb.o
  %i.dl = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.dm = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 4 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.di
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !145
  br label %weight_set.exit118.i

weight_set.exit118.i:                             ; preds = %bb.p, %bb.o
  %.pre.i.i.i330.i = phi ptr [ %.pre.i.i.i331.i.a, %bb.o ], [ %i.dm, %bb.p ]
  %.pre.i.i.i120320.i = phi ptr [ %.pre.i.i.i120321.i.a, %bb.o ], [ %i.dm, %bb.p ]
  %.pre.i.i.i111312.i = phi ptr [ %.pre.i.i.i111313.i, %bb.o ], [ %i.dm, %bb.p ] ; 2 uses
  %i.do = phi ptr [ %i.dk, %bb.o ], [ %i.dl, %bb.p ]
  %i.dp = zext nneg i32 %i.cq to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !148
  store i32 -1, ptr %i.dr, align 4, !tbaa !16
  br label %bb.u

bb.q:                                             ; preds = %count_interesting_parents.exit.i
  %.075.val.i = load ptr, ptr %.075276.i, align 8, !tbaa !19
  %i.ds = getelementptr i8, ptr %.075.val.i, i64 72
  %.075.val.val.i = load i32, ptr %i.ds, align 8, !tbaa !143 ; 2 uses
  %i.dt = udiv i32 %.075.val.val.i, 65532         ; 6 uses
  %i.du = urem i32 %.075.val.val.i, 65532
  %i.dv = load i32, ptr @commit_weight.2, align 8, !tbaa !141
  %.not.i.i.i119.i = icmp ugt i32 %i.dv, %i.dt
  br i1 %.not.i.i.i119.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = add nuw nsw i32 %i.dt, 1                ; 2 uses
  %i.dx = shl nuw nsw i32 %i.dw, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i120.i, i64 noundef %i.dy) #20 ; 5 uses
  store ptr %i.dz, ptr @commit_weight.3, align 8, !tbaa !142
  %i.ea = load i32, ptr @commit_weight.2, align 8, !tbaa !141 ; 5 uses
  %.not331.i.i.i121.i = icmp ugt i32 %i.ea, %i.dt
  br i1 %.not331.i.i.i121.i, label %._crit_edge.i.i.i125.i, label %.lr.ph.i.i.i122.i.preheader

.lr.ph.i.i.i122.i.preheader:                      ; preds = %bb.r
  %i.eb = add nuw nsw i32 %i.dt, 1
  %i.ec = sub nuw i32 %i.eb, %i.ea                ; 3 uses
  %min.iters.check183 = icmp samesign ult i32 %i.ec, 4
  br i1 %min.iters.check183, label %.lr.ph.i.i.i122.i.preheader361, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph.i.i.i122.i.preheader
  %n.vec185 = and i32 %i.ec, 262140               ; 3 uses
  %i.ed = add i32 %i.ea, %n.vec185
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i32 [ 0, %vector.ph184 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.ee = add i32 %i.ea, %index187
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.eg, align 8, !tbaa !145
  store <2 x ptr> splat (ptr null), ptr %i.eh, align 8, !tbaa !145
  %index.next188 = add nuw i32 %index187, 4       ; 2 uses
  %i.ei = icmp eq i32 %index.next188, %n.vec185
  br i1 %i.ei, label %middle.block189, label %vector.body186, !llvm.loop !102

middle.block189:                                  ; preds = %vector.body186
  %cmp.n190 = icmp eq i32 %i.ec, %n.vec185
  br i1 %cmp.n190, label %._crit_edge.i.i.i125.i, label %.lr.ph.i.i.i122.i.preheader361

.lr.ph.i.i.i122.i.preheader361:                   ; preds = %.lr.ph.i.i.i122.i.preheader, %middle.block189
  %.0302.i.i.i123.i.ph = phi i32 [ %i.ea, %.lr.ph.i.i.i122.i.preheader ], [ %i.ed, %middle.block189 ]
  br label %.lr.ph.i.i.i122.i

.lr.ph.i.i.i122.i:                                ; preds = %.lr.ph.i.i.i122.i.preheader361, %.lr.ph.i.i.i122.i
  %.0302.i.i.i123.i = phi i32 [ %i.el, %.lr.ph.i.i.i122.i ], [ %.0302.i.i.i123.i.ph, %.lr.ph.i.i.i122.i.preheader361 ] ; 2 uses
  %i.ej = zext i32 %.0302.i.i.i123.i to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ej
  store ptr null, ptr %i.ek, align 8, !tbaa !145
  %i.el = add i32 %.0302.i.i.i123.i, 1            ; 2 uses
  %.not33.i.i.i124.i = icmp ugt i32 %i.el, %i.dt
  br i1 %.not33.i.i.i124.i, label %._crit_edge.i.i.i125.i, label %.lr.ph.i.i.i122.i, !llvm.loop !103

._crit_edge.i.i.i125.i:                           ; preds = %.lr.ph.i.i.i122.i, %middle.block189, %bb.r
  store i32 %i.dw, ptr @commit_weight.2, align 8, !tbaa !141
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i125.i, %bb.q
  %.pre.i.i.i333.i = phi ptr [ %i.dz, %._crit_edge.i.i.i125.i ], [ %.pre.i.i.i.i, %bb.q ]
  %.pre.i.i.i120323.i = phi ptr [ %i.dz, %._crit_edge.i.i.i125.i ], [ %.pre.i.i.i120.i, %bb.q ] ; 2 uses
  %i.em = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i120323.i, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !145 ; 2 uses
  %.not34.i.i.i126.i = icmp eq ptr %i.eo, null
  br i1 %.not34.i.i.i126.i, label %bb.t, label %weight_set.exit127.i

bb.t:                                             ; preds = %bb.s
  %i.ep = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.eq = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.em
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !145
  br label %weight_set.exit127.i

weight_set.exit127.i:                             ; preds = %bb.t, %bb.s
  %.pre.i.i.i332.i = phi ptr [ %.pre.i.i.i333.i, %bb.s ], [ %i.eq, %bb.t ]
  %.pre.i.i.i120322.i = phi ptr [ %.pre.i.i.i120323.i, %bb.s ], [ %i.eq, %bb.t ] ; 3 uses
  %i.es = phi ptr [ %i.eo, %bb.s ], [ %i.ep, %bb.t ]
  %i.et = zext nneg i32 %i.du to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !148
  store i32 -2, ptr %i.ev, align 4, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %weight_set.exit127.i, %weight_set.exit118.i, %weight_set.exit.i, %count_interesting_parents.exit.thread.i
  %.pre.i.i.i329.i = phi ptr [ %.pre.i.i.i332.i, %weight_set.exit127.i ], [ %.pre.i.i.i.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i330.i, %weight_set.exit118.i ]
  %.pre.i.i.i120319.i = phi ptr [ %.pre.i.i.i120322.i, %weight_set.exit127.i ], [ %.pre.i.i.i120.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i120320.i, %weight_set.exit118.i ]
  %.pre.i.i.i111311.i = phi ptr [ %.pre.i.i.i120322.i, %weight_set.exit127.i ], [ %.pre.i.i.i111.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i111312.i, %weight_set.exit118.i ]
  %.pre.i.i301.i = phi ptr [ %.pre.i.i.i120322.i, %weight_set.exit127.i ], [ %.pre.i.i302.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i111312.i, %weight_set.exit118.i ]
  %.177.i = phi i32 [ %.076275.i.a, %weight_set.exit127.i ], [ %.076275.i.a, %count_interesting_parents.exit.thread.i ], [ %i.cn, %weight_set.exit.i ], [ %.076275.i.a, %weight_set.exit118.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.075276.i, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp eq ptr %i.ex, null
  br i1 %.not.i, label %.preheader264.i, label %bb.e, !llvm.loop !104

.preheader263.i:                                  ; preds = %bb.al, %._crit_edge
  %.0.lcssa154 = phi ptr [ null, %._crit_edge ], [ %.1, %bb.al ] ; 5 uses
  %.278.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %.3.i, %bb.al ] ; 2 uses
  %i.ey = icmp slt i32 %.278.lcssa.i, %.2
  br i1 %i.ey, label %.preheader.lr.ph.i, label %.preheader263.._crit_edge_crit_edge.i

.preheader263.._crit_edge_crit_edge.i:            ; preds = %.preheader263.i.thread, %.preheader263.i
  %.040.lcssa153166 = phi i32 [ 0, %.preheader263.i.thread ], [ %.2, %.preheader263.i ]
  %.0.lcssa154164 = phi ptr [ null, %.preheader263.i.thread ], [ %.0.lcssa154, %.preheader263.i ]
  %i.ez = phi ptr [ %i.b, %.preheader263.i.thread ], [ %i.o, %.preheader263.i ]
  %.not273.i156162 = phi i1 [ true, %.preheader263.i.thread ], [ %.not273.i, %.preheader263.i ]
  %.pre460.i = and i32 %3, 1
  br label %._crit_edge.i

.preheader.lr.ph.i:                               ; preds = %.preheader263.i
  %i.fa = and i32 %3, 2
  %.not94.i = icmp eq i32 %i.fa, 0
  %i.fb = and i32 %3, 1                           ; 2 uses
  %.not92.i = icmp eq i32 %i.fb, 0
  %i.fc = sdiv i32 %.2, 1024
  br i1 %.not273.i, label %.preheader.us.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %.pre.i.i.i148.pre.pre.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 6 uses
  br label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %.preheader.us.i
  br label %.preheader.us.i

bb.v:                                             ; preds = %bb.al, %.preheader264.i
  %.1279.i = phi ptr [ %.1, %.preheader264.i ], [ %i.jl, %bb.al ] ; 6 uses
  %.278278.i = phi i32 [ %.177.i, %.preheader264.i ], [ %.3.i, %bb.al ] ; 3 uses
  %i.fd = load ptr, ptr %.1279.i, align 8, !tbaa !19 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = and i64 %i.fe, 8589934592
  %.not95.i = icmp eq i64 %i.ff, 0
  br i1 %.not95.i, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.fg = getelementptr i8, ptr %i.fd, i64 72
  %.1.val107.val.i = load i32, ptr %i.fg, align 8, !tbaa !143 ; 2 uses
  %i.fh = udiv i32 %.1.val107.val.i, 65532        ; 6 uses
  %i.fi = urem i32 %.1.val107.val.i, 65532
  %i.fj = load i32, ptr @commit_weight.2, align 8, !tbaa !141
  %.not.i.i.i128.i = icmp ugt i32 %i.fj, %i.fh
  %.pre.i.i.i129.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 2 uses
  br i1 %.not.i.i.i128.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fk = add nuw nsw i32 %i.fh, 1                ; 2 uses
  %i.fl = shl nuw nsw i32 %i.fk, 3
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i129.i, i64 noundef %i.fm) #20 ; 4 uses
  store ptr %i.fn, ptr @commit_weight.3, align 8, !tbaa !142
  %i.fo = load i32, ptr @commit_weight.2, align 8, !tbaa !141 ; 5 uses
  %.not331.i.i.i130.i = icmp ugt i32 %i.fo, %i.fh
  br i1 %.not331.i.i.i130.i, label %._crit_edge.i.i.i134.i, label %.lr.ph.i.i.i131.i.preheader

.lr.ph.i.i.i131.i.preheader:                      ; preds = %bb.x
  %i.fp = add nuw nsw i32 %i.fh, 1
  %i.fq = sub nuw i32 %i.fp, %i.fo                ; 3 uses
  %min.iters.check233 = icmp samesign ult i32 %i.fq, 4
  br i1 %min.iters.check233, label %.lr.ph.i.i.i131.i.preheader356, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph.i.i.i131.i.preheader
  %n.vec235 = and i32 %i.fq, 262140               ; 3 uses
  %i.fr = add i32 %i.fo, %n.vec235
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i32 [ 0, %vector.ph234 ], [ %index.next238, %vector.body236 ] ; 2 uses
  %i.fs = add i32 %i.fo, %index237
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.fu, align 8, !tbaa !145
  store <2 x ptr> splat (ptr null), ptr %i.fv, align 8, !tbaa !145
  %index.next238 = add nuw i32 %index237, 4       ; 2 uses
  %i.fw = icmp eq i32 %index.next238, %n.vec235
  br i1 %i.fw, label %middle.block239, label %vector.body236, !llvm.loop !105

middle.block239:                                  ; preds = %vector.body236
  %cmp.n240 = icmp eq i32 %i.fq, %n.vec235
  br i1 %cmp.n240, label %._crit_edge.i.i.i134.i, label %.lr.ph.i.i.i131.i.preheader356

.lr.ph.i.i.i131.i.preheader356:                   ; preds = %.lr.ph.i.i.i131.i.preheader, %middle.block239
  %.0302.i.i.i132.i.ph = phi i32 [ %i.fo, %.lr.ph.i.i.i131.i.preheader ], [ %i.fr, %middle.block239 ]
  br label %.lr.ph.i.i.i131.i

.lr.ph.i.i.i131.i:                                ; preds = %.lr.ph.i.i.i131.i.preheader356, %.lr.ph.i.i.i131.i
  %.0302.i.i.i132.i = phi i32 [ %i.fz, %.lr.ph.i.i.i131.i ], [ %.0302.i.i.i132.i.ph, %.lr.ph.i.i.i131.i.preheader356 ] ; 2 uses
  %i.fx = zext i32 %.0302.i.i.i132.i to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fx
  store ptr null, ptr %i.fy, align 8, !tbaa !145
  %i.fz = add i32 %.0302.i.i.i132.i, 1            ; 2 uses
  %.not33.i.i.i133.i = icmp ugt i32 %i.fz, %i.fh
  br i1 %.not33.i.i.i133.i, label %._crit_edge.i.i.i134.i, label %.lr.ph.i.i.i131.i, !llvm.loop !106

._crit_edge.i.i.i134.i:                           ; preds = %.lr.ph.i.i.i131.i, %middle.block239, %bb.x
  store i32 %i.fk, ptr @commit_weight.2, align 8, !tbaa !141
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i134.i, %bb.w
  %i.ga = phi ptr [ %i.fn, %._crit_edge.i.i.i134.i ], [ %.pre.i.i.i129.i, %bb.w ]
  %i.gb = zext nneg i32 %i.fh to i64              ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !145 ; 2 uses
  %.not34.i.i.i135.i = icmp eq ptr %i.gd, null
  br i1 %.not34.i.i.i135.i, label %bb.z, label %weight.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ge = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.gf = load ptr, ptr @commit_weight.3, align 8, !tbaa !142
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gb
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !145
  br label %weight.exit.i

weight.exit.i:                                    ; preds = %bb.z, %bb.y
  %i.gh = phi ptr [ %i.gd, %bb.y ], [ %i.ge, %bb.z ]
  %i.gi = zext nneg i32 %i.fi to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !148
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !16
  %.not96.i = icmp eq i32 %i.gl, -2
  br i1 %.not96.i, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %weight.exit.i
  br i1 %.not8.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.26, i32 noundef 339, ptr noundef nonnull @.str.27) #21
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gm = tail call fastcc i32 @count_distance(ptr noundef %.1279.i)
  %.1.val.i = load ptr, ptr %.1279.i, align 8, !tbaa !19
  %i.gn = getelementptr i8, ptr %.1.val.i, i64 72
  %.1.val.val.i = load i32, ptr %i.gn, align 8, !tbaa !143 ; 2 uses
  %i.go = udiv i32 %.1.val.val.i, 65532           ; 6 uses
  %i.gp = urem i32 %.1.val.val.i, 65532
  %i.gq = load i32, ptr @commit_weight.2, align 8, !tbaa !141
  %.not.i.i.i136.i = icmp ugt i32 %i.gq, %i.go
  %.pre.i.i.i137.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !142 ; 2 uses
  br i1 %.not.i.i.i136.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = add nuw nsw i32 %i.go, 1                ; 2 uses
  %i.gs = shl nuw nsw i32 %i.gr, 3
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i137.i, i64 noundef %i.gt) #20 ; 4 uses
  store ptr %i.gu, ptr @commit_weight.3, align 8, !tbaa !142
  %i.gv = load i32, ptr @commit_weight.2, align 8, !tbaa !141 ; 5 uses
  %.not331.i.i.i138.i = icmp ugt i32 %i.gv, %i.go
  br i1 %.not331.i.i.i138.i, label %._crit_edge.i.i.i142.i, label %.lr.ph.i.i.i139.i.preheader

.lr.ph.i.i.i139.i.preheader:                      ; preds = %bb.ad
  %i.gw = add nuw nsw i32 %i.go, 1
  %i.gx = sub nuw i32 %i.gw, %i.gv                ; 3 uses
  %min.iters.check223 = icmp samesign ult i32 %i.gx, 4
  br i1 %min.iters.check223, label %.lr.ph.i.i.i139.i.preheader355, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph.i.i.i139.i.preheader
  %n.vec225 = and i32 %i.gx, 262140               ; 3 uses
  %i.gy = add i32 %i.gv, %n.vec225
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i32 [ 0, %vector.ph224 ], [ %index.next228, %vector.body226 ] ; 2 uses
  %i.gz = add i32 %i.gv, %index227
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.hb, align 8, !tbaa !145
  store <2 x ptr> splat (ptr null), ptr %i.hc, align 8, !tbaa !145
  %index.next228 = add nuw i32 %index227, 4       ; 2 uses
  %i.hd = icmp eq i32 %index.next228, %n.vec225
  br i1 %i.hd, label %middle.block229, label %vector.body226, !llvm.loop !107

middle.block229:                                  ; preds = %vector.body226
  %cmp.n230 = icmp eq i32 %i.gx, %n.vec225
  br i1 %cmp.n230, label %._crit_edge.i.i.i142.i, label %.lr.ph.i.i.i139.i.preheader355

.lr.ph.i.i.i139.i.preheader355:                   ; preds = %.lr.ph.i.i.i139.i.preheader, %middle.block229
  %.0302.i.i.i140.i.ph = phi i32 [ %i.gv, %.lr.ph.i.i.i139.i.preheader ], [ %i.gy, %middle.block229 ]
  br label %.lr.ph.i.i.i139.i

.lr.ph.i.i.i139.i:                                ; preds = %.lr.ph.i.i.i139.i.preheader355, %.lr.ph.i.i.i139.i
  %.0302.i.i.i140.i = phi i32 [ %i.hg, %.lr.ph.i.i.i139.i ], [ %.0302.i.i.i140.i.ph, %.lr.ph.i.i.i139.i.preheader355 ] ; 2 uses
  %i.he = zext i32 %.0302.i.i.i140.i to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.he
  store ptr null, ptr %i.hf, align 8, !tbaa !145
  %i.hg = add i32 %.0302.i.i.i140.i, 1            ; 2 uses
  %.not33.i.i.i141.i = icmp ugt i32 %i.hg, %i.go
  br i1 %.not33.i.i.i141.i, label %._crit_edge.i.i.i142.i, label %.lr.ph.i.i.i139.i, !llvm.loop !108

end_hunk_0
