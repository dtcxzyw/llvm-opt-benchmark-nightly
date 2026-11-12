Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/replay?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf = type { i64, i64, ptr }
%struct.replay_revisions_options = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.replay_result = type { ptr, i64, i64 }
%struct.rev_info = type <{ ptr, %struct.prio_queue, %struct.object_array, ptr, %struct.object_array, %struct.rev_cmdline_info, %struct.list_objects_filter_options, %struct.ref_exclusions, ptr, ptr, ptr, %struct.pathspec, i32, i32, i32, i64, i32, i32, [4 x i8], %struct.date_mode, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, [4 x i8], ptr, ptr, %struct.ident_split, ptr, i32, [4 x i8], ptr, ptr, i32, i32, i32, [4 x i8], ptr, %struct.grep_opt, ptr, i32, i32, i32, i8, [3 x i8], i64, i64, i64, i32, i32, ptr, ptr, ptr, %struct.diff_options, %struct.diff_options, ptr, %struct.decoration, %struct.decoration, %struct.decoration, %struct.display_notes_opt, ptr, ptr, ptr, ptr, ptr, %struct.strvec, i32, [4 x i8], ptr, i32, i32, i32, [4 x i8], %struct.decoration, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.oidset }>
%struct.prio_queue = type { ptr, i64, ptr, i64, i64, ptr }
%struct.object_array = type { i32, i32, ptr }
%struct.rev_cmdline_info = type { i32, i32, ptr }
%struct.list_objects_filter_options = type { %struct.strbuf, i32, i8, ptr, i64, i64, i32, i64, i64, ptr }
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
%struct.option = type { i32, i32, ptr, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i64, ptr }
%struct.object_id = type { [32 x i8], i32 }

@strbuf_slopbuf = external global [0 x i8], align 1
@__const.cmd_replay.reflog_msg = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str = private unnamed_addr constant [154 x i8] c"(EXPERIMENTAL!) git replay ([--contained] --onto=<newbase> | --advance=<branch> | --revert=<branch>)\0A[--ref=<ref>] [--ref-action=<mode>] <revision-range>\00", align 1
@__const.cmd_replay.replay_usage = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr null], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"contained\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"update all branches that point at commits in <revision-range>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"onto\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"replay onto given commit\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"advance\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"make replay advance given branch\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"revert commits onto given branch\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"reference to update with result\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"ref-action\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"control ref update behavior (update|print)\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"exactly one of --onto, --advance, or --revert is required\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"--onto\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"--advance\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"--revert\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"--contained\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"--ref\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"unrecognized argument: %s\00", align 1
@.str.23 = private unnamed_addr constant [92 x i8] c"some rev walking options will be overridden as '%s' bit in 'struct rev_info' will be forced\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"sort_order\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"topo_order\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"simplify_history\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"replay --revert %s\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"replay --advance %s\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"builtin/replay.c\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"--onto commit should have been resolved beforehand already\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"replay --onto %s\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"failed to begin ref transaction: %s\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"failed to update ref '%s': %s\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"failed to commit ref transaction: %s\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"--ref-action\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"replay.refAction\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"invalid %s value: '%s'\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"update %s %s %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @cmd_replay(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.replay_revisions_options, align 8 ; 12 uses
  %5 = alloca %struct.replay_result, align 8      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.rev_info, align 8           ; 8 uses
  %7 = alloca %struct.strbuf, align 8             ; 10 uses
  %8 = alloca %struct.strbuf, align 8             ; 8 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %9 = alloca [7 x %struct.option], align 16      ; 61 uses
  %10 = alloca %struct.object_id, align 4         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_replay.reflog_msg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_replay.reflog_msg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd_replay.replay_usage, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  store i32 9, ptr %9, align 16, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.1, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.f, align 16, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 4, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr null, ptr %i.i, align 16, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr @.str.2, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 2, ptr %i.k, align 16, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr null, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 1, ptr %i.n, align 16, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store i32 10, ptr %i.p, align 16, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 0, ptr %i.q, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr @.str.3, ptr %i.r, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.t, ptr %i.s, align 16, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 0, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 128
  store ptr @.str.4, ptr %i.v, align 16, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 136
  store ptr @.str.5, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i32 4, ptr %i.x, align 16, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 148
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.y, i8 0, i64 44, i1 false)
  store i32 10, ptr %i.z, align 16, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 196
  store i32 0, ptr %i.aa, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 200
  store ptr @.str.6, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 208
  store ptr %4, ptr %i.ac, align 16, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 216
  store i64 0, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 224
  store ptr @.str.7, ptr %i.ae, align 16, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 232
  store ptr @.str.8, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 240
  store i32 4, ptr %i.ag, align 16, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 244
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ah, i8 0, i64 44, i1 false)
  store i32 10, ptr %i.ai, align 16, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 292
  store i32 0, ptr %i.aj, align 4, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 296
  store ptr @.str.9, ptr %i.ak, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 304
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.am, ptr %i.al, align 16, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 312
  store i64 0, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 320
  store ptr @.str.7, ptr %i.ao, align 16, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 328
  store ptr @.str.10, ptr %i.ap, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 336
  store i32 4, ptr %i.aq, align 16, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 340
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ar, i8 0, i64 44, i1 false)
  store i32 10, ptr %i.as, align 16, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 388
  store i32 0, ptr %i.at, align 4, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 392
  store ptr @.str.11, ptr %i.au, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 400
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 16, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 408
  store i64 0, ptr %i.ax, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 416
  store ptr @.str.7, ptr %i.ay, align 16, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 424
  store ptr @.str.12, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 432
  store i32 4, ptr %i.ba, align 16, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 436
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bb, i8 0, i64 44, i1 false)
  store i32 10, ptr %i.bc, align 16, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 484
  store i32 0, ptr %i.bd, align 4, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 488
  store ptr @.str.13, ptr %i.be, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 496
  store ptr %i.b, ptr %i.bf, align 16, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 504
  store i64 0, ptr %i.bg, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 512
  store ptr @.str.14, ptr %i.bh, align 16, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 520
  store ptr @.str.15, ptr %i.bi, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 528
  store i32 4, ptr %i.bj, align 16, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.bk, i8 0, i64 140, i1 false)
  %i.bl = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %i.c, i32 noundef 12) #10
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.bn = icmp ne ptr %i.bm, null                 ; 2 uses
  %i.bo = load ptr, ptr %4, align 8
  %i.bp = icmp ne ptr %i.bo, null                 ; 2 uses
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bp
  %i.bq = load ptr, ptr %i.am, align 8
  %i.br = icmp ne ptr %i.bq, null                 ; 2 uses
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.br
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bs = call fastcc ptr @_(ptr noundef nonnull @.str.16)
  %i.bt = call i32 (ptr, ...) @error(ptr noundef %i.bs) #10 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull %i.c, ptr noundef nonnull %9) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bu = zext i1 %i.bn to i32
  %i.bv = zext i1 %i.bp to i32
  %i.bw = zext i1 %i.br to i32
  call void @die_for_incompatible_opt4(i32 noundef range(i32 0, 2) %i.bu, ptr noundef nonnull @.str.17, i32 noundef range(i32 0, 2) %i.bv, ptr noundef nonnull @.str.18, i32 noundef range(i32 0, 2) %i.bw, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.36) #10
  %i.bx = load ptr, ptr %4, align 8, !tbaa !31
  %i.by = icmp ne ptr %i.bx, null
  %i.bz = zext i1 %i.by to i32
  %i.ca = load i32, ptr %i.g, align 8, !tbaa !32
  call void @die_for_incompatible_opt4(i32 noundef range(i32 0, 2) %i.bz, ptr noundef nonnull @.str.18, i32 noundef %i.ca, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.36) #10
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.cc = icmp ne ptr %i.cb, null
  %i.cd = zext i1 %i.cc to i32
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !32
  call void @die_for_incompatible_opt4(i32 noundef range(i32 0, 2) %i.cd, ptr noundef nonnull @.str.19, i32 noundef %i.ce, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.36) #10
  %i.cf = load ptr, ptr %i.aw, align 8, !tbaa !34
  %i.cg = icmp ne ptr %i.cf, null
  %i.ch = zext i1 %i.cg to i32
  %i.ci = load i32, ptr %i.g, align 8, !tbaa !32
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  call void @die_for_incompatible_opt4(i32 noundef range(i32 0, 2) %i.ch, ptr noundef nonnull @.str.21, i32 noundef %i.ck, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.36) #10
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(7) @.str.39) #12
  %.not6.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not6.i.i, label %get_ref_action_mode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cl, ptr noundef nonnull dereferenceable(6) @.str.40) #12
  %.not7.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not7.i.i, label %get_ref_action_mode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = call fastcc ptr @_(ptr noundef nonnull @.str.41)
  call void (ptr, ...) @die(ptr noundef %i.co, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.cl) #11
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.cp = call i32 @repo_config_get_string_tmp(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a) #10
  %.not4.i = icmp eq i32 %i.cp, 0
  br i1 %.not4.i, label %bb.h, label %get_ref_action_mode.exit

bb.h:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !16  ; 4 uses
  %.not.i5.i = icmp eq ptr %i.cq, null
  br i1 %.not.i5.i, label %get_ref_action_mode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(7) @.str.39) #12
  %.not6.i6.i = icmp eq i32 %i.cr, 0
  br i1 %.not6.i6.i, label %get_ref_action_mode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(6) @.str.40) #12
  %.not7.i7.i = icmp eq i32 %i.cs, 0
  br i1 %.not7.i7.i, label %get_ref_action_mode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = call fastcc ptr @_(ptr noundef nonnull @.str.41)
  call void (ptr, ...) @die(ptr noundef %i.ct, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.cq) #11
  unreachable

get_ref_action_mode.exit:                         ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %i.cu = phi i1 [ true, %bb.g ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.h ], [ true, %bb.i ], [ false, %bb.j ]
  %.0.i = phi i1 [ false, %bb.g ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.h ], [ false, %bb.i ], [ true, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.cv = load ptr, ptr %i.am, align 8, !tbaa !33
  %.not = icmp eq ptr %i.cv, null                 ; 2 uses
  call void @repo_init_revisions(ptr noundef %3, ptr noundef nonnull %6, ptr noundef %2) #10
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 332 ; 10 uses
  %i.cx = load i64, ptr %i.cw, align 4
  %i.cy = select i1 %.not, i64 4294967296, i64 0  ; 2 uses
  %i.cz = and i64 %i.cx, -4294967937
  %i.da = or disjoint i64 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 328 ; 3 uses
  store i32 0, ptr %i.db, align 8, !tbaa !85
  %i.dc = or disjoint i64 %i.da, 512
  store i64 %i.dc, ptr %i.cw, align 4
  %i.dd = call i32 @setup_revisions(i32 noundef %i.bl, ptr noundef %1, ptr noundef nonnull %6, ptr noundef null) #10
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.l, label %bb.n

bb.l:                                             ; preds = %get_ref_action_mode.exit
  %i.df = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i64 = icmp eq i32 %i.df, 0
  br i1 %.not4.i64, label %_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #10
  br label %_.exit

_.exit:                                           ; preds = %bb.l, %bb.m
  %.0.i65 = phi ptr [ %i.dg, %bb.m ], [ @.str.22, %bb.l ]
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !16
  %i.dj = call i32 (ptr, ...) @error(ptr noundef %.0.i65, ptr noundef %i.di) #10 ; 0 uses
  br label %.thread92

bb.n:                                             ; preds = %get_ref_action_mode.exit
  %11 = load i64, ptr %i.cw, align 4              ; 2 uses
  %12 = and i64 %11, 4294967296
  %13 = icmp eq i64 %12, 0
  %.not51 = xor i1 %.not, %13
  br i1 %.not51, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i66 = icmp eq i32 %i.dk, 0
  br i1 %.not4.i66, label %_.exit68, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #10
  br label %_.exit68

_.exit68:                                         ; preds = %bb.o, %bb.p
  %.0.i67 = phi ptr [ %i.dl, %bb.p ], [ @.str.23, %bb.o ]
  call void (ptr, ...) @warning(ptr noundef %.0.i67, ptr noundef nonnull @.str.24) #10
  %i.dm = load i64, ptr %i.cw, align 4
  %i.dn = and i64 %i.dm, -4294967297
  %i.do = or disjoint i64 %i.dn, %i.cy            ; 2 uses
  store i64 %i.do, ptr %i.cw, align 4
  br label %bb.q

bb.q:                                             ; preds = %_.exit68, %bb.n
  %14 = phi i64 [ %i.do, %_.exit68 ], [ %11, %bb.n ]
  %i.dp = load i32, ptr %i.db, align 8, !tbaa !85
  %.not52 = icmp eq i32 %i.dp, 0
  br i1 %.not52, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i69 = icmp eq i32 %i.dq, 0
  br i1 %.not4.i69, label %_.exit71, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #10
  br label %_.exit71

_.exit71:                                         ; preds = %bb.r, %bb.s
  %.0.i70 = phi ptr [ %i.dr, %bb.s ], [ @.str.23, %bb.r ]
  call void (ptr, ...) @warning(ptr noundef %.0.i70, ptr noundef nonnull @.str.25) #10
  store i32 0, ptr %i.db, align 8, !tbaa !85
  %.pre = load i64, ptr %i.cw, align 4
  br label %bb.t

bb.t:                                             ; preds = %_.exit71, %bb.q
  %15 = phi i64 [ %.pre, %_.exit71 ], [ %14, %bb.q ] ; 2 uses
  %i.ds = and i64 %15, 512
  %.not53.not = icmp eq i64 %i.ds, 0
  br i1 %.not53.not, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dt = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i72 = icmp eq i32 %i.dt, 0
  br i1 %.not4.i72, label %_.exit74, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #10
  br label %_.exit74

_.exit74:                                         ; preds = %bb.u, %bb.v
  %.0.i73 = phi ptr [ %i.du, %bb.v ], [ @.str.23, %bb.u ]
  call void (ptr, ...) @warning(ptr noundef %.0.i73, ptr noundef nonnull @.str.26) #10
  %i.dv = load i64, ptr %i.cw, align 4
  %i.dw = or i64 %i.dv, 512                       ; 2 uses
  store i64 %i.dw, ptr %i.cw, align 4
  br label %bb.w

bb.w:                                             ; preds = %_.exit74, %bb.t
  %i.dx = phi i64 [ %i.dw, %_.exit74 ], [ %15, %bb.t ]
  %i.dy = and i64 %i.dx, 128
  %.not54 = icmp eq i64 %i.dy, 0
  br i1 %.not54, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i75 = icmp eq i32 %i.dz, 0
  br i1 %.not4.i75, label %_.exit77, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #10
  br label %_.exit77

_.exit77:                                         ; preds = %bb.x, %bb.y
  %.0.i76 = phi ptr [ %i.ea, %bb.y ], [ @.str.23, %bb.x ]
  call void (ptr, ...) @warning(ptr noundef %.0.i76, ptr noundef nonnull @.str.27) #10
  %i.eb = load i64, ptr %i.cw, align 4
  %i.ec = and i64 %i.eb, -129
  store i64 %i.ec, ptr %i.cw, align 4
  br label %bb.z

bb.z:                                             ; preds = %_.exit77, %bb.w
  %i.ed = call i32 @replay_revisions(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #10 ; 2 uses
  %.not55 = icmp eq i32 %i.ed, 0
  br i1 %.not55, label %bb.aa, label %.thread92

bb.aa:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %.not56 = icmp eq ptr %i.ee, null
  br i1 %.not56, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ee) #10
  br label %bb.ah

bb.ac:                                            ; preds = %bb.aa
  %i.ef = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %.not57 = icmp eq ptr %i.ef, null
  br i1 %.not57, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ef) #10
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.eh = call i32 @repo_get_oid_committish(ptr noundef %3, ptr noundef %i.eg, ptr noundef nonnull %10) #10
  %.not58 = icmp eq i32 %i.eh, 0
  br i1 %.not58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.30, i32 noundef 210, ptr noundef nonnull @.str.31) #11
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ei = call ptr @oid_to_hex(ptr noundef nonnull %10) #10
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %8, ptr noundef nonnull @.str.32, ptr noundef %i.ei) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag, %bb.ab
  br i1 %i.cu, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ej = call ptr @get_main_ref_store(ptr noundef %3) #10
  %i.ek = call ptr @ref_store_transaction_begin(ptr noundef %i.ej, i32 noundef 0, ptr noundef nonnull %7) #10 ; 2 uses
  %.not59 = icmp eq ptr %i.ek, null
  br i1 %.not59, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.el = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i78 = icmp eq i32 %i.el, 0
  br i1 %.not4.i78, label %_.exit80, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.em = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #10
  br label %_.exit80

_.exit80:                                         ; preds = %bb.aj, %bb.ak
  %.0.i79 = phi ptr [ %i.em, %bb.ak ], [ @.str.33, %bb.aj ]
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !86
  %i.ep = call i32 (ptr, ...) @error(ptr noundef %.0.i79, ptr noundef %i.eo) #10 ; 0 uses
  br label %.thread92

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.041 = phi ptr [ %i.ek, %bb.ai ], [ null, %bb.ah ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !89
  %.not107 = icmp eq i64 %i.er, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16
  br i1 %.0.i, label %handle_ref_update.exit.thread.us, label %handle_ref_update.exit

handle_ref_update.exit.thread.us:                 ; preds = %.lr.ph, %handle_ref_update.exit.thread.us
  %.039106.us = phi i64 [ %i.fb, %handle_ref_update.exit.thread.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.et = load ptr, ptr %5, align 8, !tbaa !90
  %i.eu = getelementptr inbounds nuw [80 x i8], ptr %i.et, i64 %.039106.us ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !93
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = call ptr @oid_to_hex(ptr noundef nonnull %i.ew) #10
  %i.ez = call ptr @oid_to_hex(ptr noundef nonnull %i.ex) #10
  %i.fa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %i.ev, ptr noundef %i.ey, ptr noundef %i.ez) ; 0 uses
  %i.fb = add nuw i64 %.039106.us, 1              ; 2 uses
  %i.fc = load i64, ptr %i.eq, align 8, !tbaa !89
  %i.fd = icmp ult i64 %i.fb, %i.fc
  br i1 %i.fd, label %handle_ref_update.exit.thread.us, label %._crit_edge, !llvm.loop !13

handle_ref_update.exit:                           ; preds = %.lr.ph, %bb.ao
  %.039106 = phi i64 [ %i.fn, %bb.ao ], [ 0, %.lr.ph ] ; 3 uses
  %i.fe = load ptr, ptr %5, align 8, !tbaa !90
  %i.ff = getelementptr inbounds nuw [80 x i8], ptr %i.fe, i64 %.039106 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !93
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 44
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load ptr, ptr %i.es, align 8, !tbaa !86
  %i.fk = call i32 @ref_transaction_update(ptr noundef %.041, ptr noundef %i.fg, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fi, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %i.fj, ptr noundef nonnull %7) #10
  %.not60 = icmp eq i32 %i.fk, 0
  br i1 %.not60, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %handle_ref_update.exit
  %i.fl = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i82 = icmp eq i32 %i.fl, 0
  br i1 %.not4.i82, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #10
  br label %bb.as

bb.ao:                                            ; preds = %handle_ref_update.exit
  %i.fn = add nuw i64 %.039106, 1                 ; 2 uses
  %i.fo = load i64, ptr %i.eq, align 8, !tbaa !89
  %i.fp = icmp ult i64 %i.fn, %i.fo
  br i1 %i.fp, label %handle_ref_update.exit, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.ao, %handle_ref_update.exit.thread.us, %bb.al
  %.not61 = icmp eq ptr %.041, null
  br i1 %.not61, label %.thread92, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.fq = call i32 @ref_transaction_commit(ptr noundef nonnull %.041, ptr noundef nonnull %7) #10
  %.not62 = icmp eq i32 %i.fq, 0
  br i1 %.not62, label %.thread99, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i85 = icmp eq i32 %i.fr, 0
  br i1 %.not4.i85, label %_.exit87, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #10
  br label %_.exit87

_.exit87:                                         ; preds = %bb.aq, %bb.ar
  %.0.i86 = phi ptr [ %i.fs, %bb.ar ], [ @.str.35, %bb.aq ]
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !86
  %i.fv = call i32 (ptr, ...) @error(ptr noundef %.0.i86, ptr noundef %i.fu) #10 ; 0 uses
  br label %.thread99

bb.as:                                            ; preds = %bb.am, %bb.an
  %.0.i83 = phi ptr [ %i.fm, %bb.an ], [ @.str.34, %bb.am ]
  %i.fw = load ptr, ptr %5, align 8, !tbaa !90
  %i.fx = getelementptr inbounds nuw [80 x i8], ptr %i.fw, i64 %.039106
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !93
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !86
  %i.gb = call i32 (ptr, ...) @error(ptr noundef %.0.i83, ptr noundef %i.fy, ptr noundef %i.ga) #10 ; 0 uses
  %.not63 = icmp eq ptr %.041, null
  br i1 %.not63, label %.thread92, label %.thread99

.thread99:                                        ; preds = %_.exit87, %bb.ap, %bb.as
  %.2104 = phi i32 [ -1, %bb.as ], [ -1, %_.exit87 ], [ 0, %bb.ap ]
  call void @ref_transaction_free(ptr noundef nonnull %.041) #10
  br label %.thread92

.thread92:                                        ; preds = %._crit_edge, %_.exit80, %bb.z, %_.exit, %.thread99, %bb.as
  %.296 = phi i32 [ -1, %bb.as ], [ %.2104, %.thread99 ], [ 0, %._crit_edge ], [ -1, %_.exit80 ], [ %i.ed, %bb.z ], [ -1, %_.exit ] ; 2 uses
  call void @replay_result_release(ptr noundef nonnull %5) #10
  call void @strbuf_release(ptr noundef nonnull %7) #10
  call void @strbuf_release(ptr noundef nonnull %8) #10
  call void @release_revisions(ptr noundef nonnull %6) #10
  %i.gc = icmp slt i32 %.296, 0
  br i1 %i.gc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread92
  %i.gd = call i32 @common_exit(ptr noundef nonnull @.str.30, i32 noundef 257, i32 noundef 128) #10
  call void @exit(i32 noundef %i.gd) #11
  unreachable

bb.au:                                            ; preds = %.thread92
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
end_hunk_0
