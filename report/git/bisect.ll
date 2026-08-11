inline.NumInlined: 101
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
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
  store i32 0, ptr @commit_weight.2, align 8, !tbaa !12
  store ptr null, ptr @commit_weight.3, align 8, !tbaa !18
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not73 = icmp eq ptr %i.a, null
  br i1 %.not73, label %.preheader263.i.thread, label %.lr.ph

.preheader263.i.thread:                           ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !21
  %i.b = tail call ptr @xcalloc(i64 noundef 0, i64 noundef 4) #20
  br label %.preheader263.._crit_edge_crit_edge.i

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.077 = phi i32 [ %.2, %bb.d ], [ 0, %bb.a ]    ; 2 uses
  %.03576 = phi i32 [ %.136, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.03775 = phi ptr [ %.138, %bb.d ], [ null, %bb.a ] ; 2 uses
  %.03974 = phi ptr [ %i.h, %bb.d ], [ %i.a, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.03974, align 8, !tbaa !22
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 32
  %i.f = trunc nuw i64 %i.e to i32                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.03974, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.i = and i32 %i.f, 2
  %.not46 = icmp eq i32 %i.i, 0
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %.03974) #20
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store ptr %.03775, ptr %i.g, align 8, !tbaa !25
  %i.j = lshr i32 %i.f, 2
  %i.k = and i32 %i.j, 1
  %i.l = xor i32 %i.k, 1
  %spec.select = add nsw i32 %i.l, %.077
  %i.m = add nsw i32 %.03576, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.138 = phi ptr [ %.03775, %bb.b ], [ %.03974, %bb.c ] ; 7 uses
  %.136 = phi i32 [ %.03576, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %.077, %bb.b ], [ %spec.select, %bb.c ] ; 10 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d
  %i.n = sext i32 %.136 to i64
  store i32 %.2, ptr %2, align 4, !tbaa !21
  %i.o = tail call ptr @xcalloc(i64 noundef %i.n, i64 noundef 4) #20 ; 5 uses
  %.not273.i = icmp eq ptr %.138, null            ; 3 uses
  br i1 %.not273.i, label %.preheader263.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.p = and i32 %3, 2
  %.not8.i.i = icmp eq i32 %i.p, 0                ; 2 uses
  %.pre.i.i.pre.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 4 uses
  br label %bb.e

.preheader264.i:                                  ; preds = %bb.u
  %i.q = and i32 %3, 1
  %.not98.i = icmp eq i32 %i.q, 0
  %i.r = sdiv i32 %.2, 1024
  br label %bb.v

bb.e:                                             ; preds = %bb.u, %.lr.ph.i
  %.pre.i.i.i328.i = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i.i329.i, %bb.u ]
  %.pre.i.i.i120318.i = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i.i120319.i, %bb.u ]
  %.pre.i.i.i111310.i = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i.i111311.i, %bb.u ]
  %.pre.i.i.i = phi ptr [ %.pre.i.i.pre.i, %.lr.ph.i ], [ %.pre.i.i301.i, %bb.u ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 2 uses
  %.077275.i = phi i32 [ 0, %.lr.ph.i ], [ %.178.i, %bb.u ] ; 4 uses
  %.081274.i = phi ptr [ %.138, %.lr.ph.i ], [ %i.ep, %bb.u ] ; 5 uses
  %i.s = load ptr, ptr %.081274.i, align 8, !tbaa !22 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.v = getelementptr i8, ptr %i.s, i64 72
  %.val.i = load i32, ptr %i.v, align 8, !tbaa !28 ; 2 uses
  %i.w = udiv i32 %.val.i, 65532                  ; 6 uses
  %i.x = urem i32 %.val.i, 65532
  %i.y = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i = icmp ugt i32 %i.y, %i.w
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nuw nsw i32 %i.w, 1                  ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i, i64 noundef %i.ab) #20 ; 7 uses
  store ptr %i.ac, ptr @commit_weight.3, align 8, !tbaa !18
  %i.ad = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i = icmp ugt i32 %i.ad, %i.w
  br i1 %.not331.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %5 = sub nuw i32 %i.w, %i.ad                    ; 2 uses
  %6 = add nuw nsw i32 %5, 1                      ; 2 uses
  %min.iters.check202 = icmp samesign ult i32 %5, 3
  br i1 %min.iters.check202, label %.lr.ph.i.i.i.preheader362, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec204 = and i32 %6, 262140                  ; 3 uses
  %i.ae = add i32 %i.ad, %n.vec204
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i32 [ 0, %vector.ph203 ], [ %index.next207, %vector.body205 ] ; 2 uses
  %i.af = add i32 %i.ad, %index206
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !34
  %index.next207 = add nuw i32 %index206, 4       ; 2 uses
  %i.aj = icmp eq i32 %index.next207, %n.vec204
  br i1 %i.aj, label %middle.block208, label %vector.body205, !llvm.loop !36

middle.block208:                                  ; preds = %vector.body205
  %cmp.n209 = icmp eq i32 %6, %n.vec204
  br i1 %cmp.n209, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader362

.lr.ph.i.i.i.preheader362:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block208
  %.0302.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph.i.i.i.preheader ], [ %i.ae, %middle.block208 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader362, %.lr.ph.i.i.i
  %.0302.i.i.i = phi i32 [ %i.am, %.lr.ph.i.i.i ], [ %.0302.i.i.i.ph, %.lr.ph.i.i.i.preheader362 ] ; 2 uses
  %i.ak = zext i32 %.0302.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ak
  store ptr null, ptr %i.al, align 8, !tbaa !34
  %i.am = add i32 %.0302.i.i.i, 1                 ; 2 uses
  %.not33.i.i.i = icmp ugt i32 %i.am, %i.w
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !39

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block208, %bb.f
  store i32 %i.z, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %bb.e
  %.pre.i.i.i327.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i328.i, %bb.e ]
  %.pre.i.i.i120317.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i120318.i, %bb.e ]
  %.pre.i.i.i111309.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i111310.i, %bb.e ]
  %.pre.i.i303.i = phi ptr [ %i.ac, %._crit_edge.i.i.i ], [ %.pre.i.i.i, %bb.e ] ; 2 uses
  %i.an = zext nneg i32 %i.w to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i303.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not34.i.i.i, label %bb.h, label %commit_weight_at.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ar = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.an
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !34
  br label %commit_weight_at.exit.i

commit_weight_at.exit.i:                          ; preds = %bb.h, %bb.g
  %.pre.i.i.i.i = phi ptr [ %.pre.i.i.i327.i, %bb.g ], [ %i.ar, %bb.h ] ; 5 uses
  %.pre.i.i.i120.i = phi ptr [ %.pre.i.i.i120317.i, %bb.g ], [ %i.ar, %bb.h ] ; 4 uses
  %.pre.i.i.i111.i = phi ptr [ %.pre.i.i.i111309.i, %bb.g ], [ %i.ar, %bb.h ] ; 3 uses
  %.pre.i.i302.i = phi ptr [ %.pre.i.i303.i, %bb.g ], [ %i.ar, %bb.h ]
  %i.at = phi ptr [ %i.ap, %bb.g ], [ %i.aq, %bb.h ]
  %i.au = zext nneg i32 %i.x to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  store ptr %i.u, ptr %i.av, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.069.i.i = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 3 uses
  %.not10.i.i = icmp eq ptr %.069.i.i, null
  br i1 %.not10.i.i, label %count_interesting_parents.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %commit_weight_at.exit.i
  br i1 %.not8.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %.lr.ph.split.us.i.i
  %.0612.us.i.i = phi ptr [ %.06.us.i.i, %.lr.ph.split.us.i.i ], [ %.069.i.i, %.lr.ph.i.i ] ; 2 uses
  %.011.us.i.i = phi i32 [ %spec.select.us.i.i, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ax = load ptr, ptr %.0612.us.i.i, align 8, !tbaa !22
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 8589934592
  %.not7.us.i.i = icmp eq i64 %i.az, 0
  %i.ba = zext i1 %.not7.us.i.i to i32
  %spec.select.us.i.i = add nuw nsw i32 %.011.us.i.i, %i.ba ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0612.us.i.i, i64 8
  %.06.us.i.i = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 2 uses
  %.not.us.i.i = icmp eq ptr %.06.us.i.i, null
  br i1 %.not.us.i.i, label %count_interesting_parents.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !42

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.bc = load ptr, ptr %.069.i.i, align 8, !tbaa !22
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 8589934592
  %.not7.i.i = icmp eq i64 %i.be, 0
  %i.bf = zext i1 %.not7.i.i to i32
  br label %count_interesting_parents.exit.i

count_interesting_parents.exit.i:                 ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.i.i
  %.2.i.i = phi i32 [ %i.bf, %.lr.ph.split.i.i ], [ %spec.select.us.i.i, %.lr.ph.split.us.i.i ]
  switch i32 %.2.i.i, label %bb.q [
    i32 0, label %count_interesting_parents.exit.thread.i
    i32 1, label %bb.m
  ]

count_interesting_parents.exit.thread.i:          ; preds = %count_interesting_parents.exit.i, %commit_weight_at.exit.i
  %i.bg = and i64 %i.t, 17179869184
  %.not100.i = icmp eq i64 %i.bg, 0
  br i1 %.not100.i, label %bb.i, label %bb.u

bb.i:                                             ; preds = %count_interesting_parents.exit.thread.i
  %.081.val103.i = load ptr, ptr %.081274.i, align 8, !tbaa !22
  %i.bh = getelementptr i8, ptr %.081.val103.i, i64 72
  %.081.val103.val.i = load i32, ptr %i.bh, align 8, !tbaa !28 ; 2 uses
  %i.bi = udiv i32 %.081.val103.val.i, 65532      ; 6 uses
  %i.bj = urem i32 %.081.val103.val.i, 65532
  %i.bk = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i.i = icmp ugt i32 %i.bk, %i.bi
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i32 %i.bi, 1                ; 2 uses
  %i.bm = shl nuw nsw i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i.i, i64 noundef %i.bn) #20 ; 4 uses
  store ptr %i.bo, ptr @commit_weight.3, align 8, !tbaa !18
  %i.bp = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i.i = icmp ugt i32 %i.bp, %i.bi
  br i1 %.not331.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %7 = sub nuw i32 %i.bi, %i.bp                   ; 2 uses
  %8 = add nuw nsw i32 %7, 1                      ; 2 uses
  %min.iters.check = icmp samesign ult i32 %7, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader359, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i32 %8, 262140                     ; 3 uses
  %i.bq = add i32 %i.bp, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = add i32 %i.bp, %index
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !34
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.bv = icmp eq i32 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader359

.lr.ph.i.i.i.i.preheader359:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.0302.i.i.i.i.ph = phi i32 [ %i.bp, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader359, %.lr.ph.i.i.i.i
  %.0302.i.i.i.i = phi i32 [ %i.by, %.lr.ph.i.i.i.i ], [ %.0302.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader359 ] ; 2 uses
  %i.bw = zext i32 %.0302.i.i.i.i to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bw
  store ptr null, ptr %i.bx, align 8, !tbaa !34
  %i.by = add i32 %.0302.i.i.i.i, 1               ; 2 uses
  %.not33.i.i.i.i = icmp ugt i32 %i.by, %i.bi
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.j
  store i32 %i.bl, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.pre.i.i.i335.i = phi ptr [ %i.bo, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i.i, %bb.i ] ; 2 uses
  %i.bz = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i335.i, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not34.i.i.i.i, label %bb.l, label %weight_set.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cc = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.cd = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bz
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !34
  br label %weight_set.exit.i

weight_set.exit.i:                                ; preds = %bb.l, %bb.k
  %.pre.i.i.i334.i = phi ptr [ %.pre.i.i.i335.i, %bb.k ], [ %i.cd, %bb.l ] ; 4 uses
  %i.cf = phi ptr [ %i.cb, %bb.k ], [ %i.cc, %bb.l ]
  %i.cg = zext nneg i32 %i.bj to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40
  store i32 1, ptr %i.ci, align 4, !tbaa !21
  %i.cj = add nsw i32 %.077275.i, 1
  br label %bb.u

bb.m:                                             ; preds = %count_interesting_parents.exit.i
  %.081.val102.i = load ptr, ptr %.081274.i, align 8, !tbaa !22
  %i.ck = getelementptr i8, ptr %.081.val102.i, i64 72
  %.081.val102.val.i = load i32, ptr %i.ck, align 8, !tbaa !28 ; 2 uses
  %i.cl = udiv i32 %.081.val102.val.i, 65532      ; 6 uses
  %i.cm = urem i32 %.081.val102.val.i, 65532
  %i.cn = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i110.i = icmp ugt i32 %i.cn, %i.cl
  br i1 %.not.i.i.i110.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = add nuw nsw i32 %i.cl, 1                ; 2 uses
  %i.cp = shl nuw nsw i32 %i.co, 3
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i111.i, i64 noundef %i.cq) #20 ; 6 uses
  store ptr %i.cr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.cs = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i112.i = icmp ugt i32 %i.cs, %i.cl
  br i1 %.not331.i.i.i112.i, label %._crit_edge.i.i.i116.i, label %.lr.ph.i.i.i113.i.preheader

.lr.ph.i.i.i113.i.preheader:                      ; preds = %bb.n
  %9 = sub nuw i32 %i.cl, %i.cs                   ; 2 uses
  %10 = add nuw nsw i32 %9, 1                     ; 2 uses
  %min.iters.check192 = icmp samesign ult i32 %9, 3
  br i1 %min.iters.check192, label %.lr.ph.i.i.i113.i.preheader361, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph.i.i.i113.i.preheader
  %n.vec194 = and i32 %10, 262140                 ; 3 uses
  %i.ct = add i32 %i.cs, %n.vec194
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i32 [ 0, %vector.ph193 ], [ %index.next197, %vector.body195 ] ; 2 uses
  %i.cu = add i32 %i.cs, %index196
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.cw, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.cx, align 8, !tbaa !34
  %index.next197 = add nuw i32 %index196, 4       ; 2 uses
  %i.cy = icmp eq i32 %index.next197, %n.vec194
  br i1 %i.cy, label %middle.block198, label %vector.body195, !llvm.loop !45

middle.block198:                                  ; preds = %vector.body195
  %cmp.n199 = icmp eq i32 %10, %n.vec194
  br i1 %cmp.n199, label %._crit_edge.i.i.i116.i, label %.lr.ph.i.i.i113.i.preheader361

.lr.ph.i.i.i113.i.preheader361:                   ; preds = %.lr.ph.i.i.i113.i.preheader, %middle.block198
  %.0302.i.i.i114.i.ph = phi i32 [ %i.cs, %.lr.ph.i.i.i113.i.preheader ], [ %i.ct, %middle.block198 ]
  br label %.lr.ph.i.i.i113.i

.lr.ph.i.i.i113.i:                                ; preds = %.lr.ph.i.i.i113.i.preheader361, %.lr.ph.i.i.i113.i
  %.0302.i.i.i114.i = phi i32 [ %i.db, %.lr.ph.i.i.i113.i ], [ %.0302.i.i.i114.i.ph, %.lr.ph.i.i.i113.i.preheader361 ] ; 2 uses
  %i.cz = zext i32 %.0302.i.i.i114.i to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cz
  store ptr null, ptr %i.da, align 8, !tbaa !34
  %i.db = add i32 %.0302.i.i.i114.i, 1            ; 2 uses
  %.not33.i.i.i115.i = icmp ugt i32 %i.db, %i.cl
  br i1 %.not33.i.i.i115.i, label %._crit_edge.i.i.i116.i, label %.lr.ph.i.i.i113.i, !llvm.loop !46

._crit_edge.i.i.i116.i:                           ; preds = %.lr.ph.i.i.i113.i, %middle.block198, %bb.n
  store i32 %i.co, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i.i116.i, %bb.m
  %.pre.i.i.i331.i = phi ptr [ %i.cr, %._crit_edge.i.i.i116.i ], [ %.pre.i.i.i.i, %bb.m ]
  %.pre.i.i.i120321.i = phi ptr [ %i.cr, %._crit_edge.i.i.i116.i ], [ %.pre.i.i.i120.i, %bb.m ]
  %.pre.i.i.i111313.i = phi ptr [ %i.cr, %._crit_edge.i.i.i116.i ], [ %.pre.i.i.i111.i, %bb.m ] ; 2 uses
  %i.dc = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i111313.i, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i117.i = icmp eq ptr %i.de, null
  br i1 %.not34.i.i.i117.i, label %bb.p, label %weight_set.exit118.i

bb.p:                                             ; preds = %bb.o
  %i.df = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.dg = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !34
  br label %weight_set.exit118.i

weight_set.exit118.i:                             ; preds = %bb.p, %bb.o
  %.pre.i.i.i330.i = phi ptr [ %.pre.i.i.i331.i, %bb.o ], [ %i.dg, %bb.p ]
  %.pre.i.i.i120320.i = phi ptr [ %.pre.i.i.i120321.i, %bb.o ], [ %i.dg, %bb.p ]
  %.pre.i.i.i111312.i = phi ptr [ %.pre.i.i.i111313.i, %bb.o ], [ %i.dg, %bb.p ] ; 2 uses
  %i.di = phi ptr [ %i.de, %bb.o ], [ %i.df, %bb.p ]
  %i.dj = zext nneg i32 %i.cm to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !40
  store i32 -1, ptr %i.dl, align 4, !tbaa !21
  br label %bb.u

bb.q:                                             ; preds = %count_interesting_parents.exit.i
  %.081.val.i = load ptr, ptr %.081274.i, align 8, !tbaa !22
  %i.dm = getelementptr i8, ptr %.081.val.i, i64 72
  %.081.val.val.i = load i32, ptr %i.dm, align 8, !tbaa !28 ; 2 uses
  %i.dn = udiv i32 %.081.val.val.i, 65532         ; 6 uses
  %i.do = urem i32 %.081.val.val.i, 65532
  %i.dp = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i119.i = icmp ugt i32 %i.dp, %i.dn
  br i1 %.not.i.i.i119.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = add nuw nsw i32 %i.dn, 1                ; 2 uses
  %i.dr = shl nuw nsw i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i120.i, i64 noundef %i.ds) #20 ; 5 uses
  store ptr %i.dt, ptr @commit_weight.3, align 8, !tbaa !18
  %i.du = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i121.i = icmp ugt i32 %i.du, %i.dn
  br i1 %.not331.i.i.i121.i, label %._crit_edge.i.i.i125.i, label %.lr.ph.i.i.i122.i.preheader

.lr.ph.i.i.i122.i.preheader:                      ; preds = %bb.r
  %11 = sub nuw i32 %i.dn, %i.du                  ; 2 uses
  %12 = add nuw nsw i32 %11, 1                    ; 2 uses
  %min.iters.check182 = icmp samesign ult i32 %11, 3
  br i1 %min.iters.check182, label %.lr.ph.i.i.i122.i.preheader360, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i.i.i122.i.preheader
  %n.vec184 = and i32 %12, 262140                 ; 3 uses
  %i.dv = add i32 %i.du, %n.vec184
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i32 [ 0, %vector.ph183 ], [ %index.next187, %vector.body185 ] ; 2 uses
  %i.dw = add i32 %i.du, %index186
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.dy, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !34
  %index.next187 = add nuw i32 %index186, 4       ; 2 uses
  %i.ea = icmp eq i32 %index.next187, %n.vec184
  br i1 %i.ea, label %middle.block188, label %vector.body185, !llvm.loop !47

middle.block188:                                  ; preds = %vector.body185
  %cmp.n189 = icmp eq i32 %12, %n.vec184
  br i1 %cmp.n189, label %._crit_edge.i.i.i125.i, label %.lr.ph.i.i.i122.i.preheader360

.lr.ph.i.i.i122.i.preheader360:                   ; preds = %.lr.ph.i.i.i122.i.preheader, %middle.block188
  %.0302.i.i.i123.i.ph = phi i32 [ %i.du, %.lr.ph.i.i.i122.i.preheader ], [ %i.dv, %middle.block188 ]
  br label %.lr.ph.i.i.i122.i

.lr.ph.i.i.i122.i:                                ; preds = %.lr.ph.i.i.i122.i.preheader360, %.lr.ph.i.i.i122.i
  %.0302.i.i.i123.i = phi i32 [ %i.ed, %.lr.ph.i.i.i122.i ], [ %.0302.i.i.i123.i.ph, %.lr.ph.i.i.i122.i.preheader360 ] ; 2 uses
  %i.eb = zext i32 %.0302.i.i.i123.i to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.eb
  store ptr null, ptr %i.ec, align 8, !tbaa !34
  %i.ed = add i32 %.0302.i.i.i123.i, 1            ; 2 uses
  %.not33.i.i.i124.i = icmp ugt i32 %i.ed, %i.dn
  br i1 %.not33.i.i.i124.i, label %._crit_edge.i.i.i125.i, label %.lr.ph.i.i.i122.i, !llvm.loop !48

._crit_edge.i.i.i125.i:                           ; preds = %.lr.ph.i.i.i122.i, %middle.block188, %bb.r
  store i32 %i.dq, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i.i125.i, %bb.q
  %.pre.i.i.i333.i = phi ptr [ %i.dt, %._crit_edge.i.i.i125.i ], [ %.pre.i.i.i.i, %bb.q ]
  %.pre.i.i.i120323.i = phi ptr [ %i.dt, %._crit_edge.i.i.i125.i ], [ %.pre.i.i.i120.i, %bb.q ] ; 2 uses
  %i.ee = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i120323.i, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i126.i = icmp eq ptr %i.eg, null
  br i1 %.not34.i.i.i126.i, label %bb.t, label %weight_set.exit127.i

bb.t:                                             ; preds = %bb.s
  %i.eh = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ei = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ee
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !34
  br label %weight_set.exit127.i

weight_set.exit127.i:                             ; preds = %bb.t, %bb.s
  %.pre.i.i.i332.i = phi ptr [ %.pre.i.i.i333.i, %bb.s ], [ %i.ei, %bb.t ]
  %.pre.i.i.i120322.i = phi ptr [ %.pre.i.i.i120323.i, %bb.s ], [ %i.ei, %bb.t ] ; 3 uses
  %i.ek = phi ptr [ %i.eg, %bb.s ], [ %i.eh, %bb.t ]
  %i.el = zext nneg i32 %i.do to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !40
  store i32 -2, ptr %i.en, align 4, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %weight_set.exit127.i, %weight_set.exit118.i, %weight_set.exit.i, %count_interesting_parents.exit.thread.i
  %.pre.i.i.i329.i = phi ptr [ %.pre.i.i.i332.i, %weight_set.exit127.i ], [ %.pre.i.i.i.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i330.i, %weight_set.exit118.i ]
  %.pre.i.i.i120319.i = phi ptr [ %.pre.i.i.i120322.i, %weight_set.exit127.i ], [ %.pre.i.i.i120.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i120320.i, %weight_set.exit118.i ]
  %.pre.i.i.i111311.i = phi ptr [ %.pre.i.i.i120322.i, %weight_set.exit127.i ], [ %.pre.i.i.i111.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i111312.i, %weight_set.exit118.i ]
  %.pre.i.i301.i = phi ptr [ %.pre.i.i.i120322.i, %weight_set.exit127.i ], [ %.pre.i.i302.i, %count_interesting_parents.exit.thread.i ], [ %.pre.i.i.i334.i, %weight_set.exit.i ], [ %.pre.i.i.i111312.i, %weight_set.exit118.i ]
  %.178.i = phi i32 [ %.077275.i, %weight_set.exit127.i ], [ %.077275.i, %count_interesting_parents.exit.thread.i ], [ %i.cj, %weight_set.exit.i ], [ %.077275.i, %weight_set.exit118.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.081274.i, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %.preheader264.i, label %bb.e, !llvm.loop !49

.preheader263.i:                                  ; preds = %bb.al, %._crit_edge
  %.037.lcssa152 = phi ptr [ null, %._crit_edge ], [ %.138, %bb.al ] ; 5 uses
  %.279.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %.380.i, %bb.al ] ; 2 uses
  %i.eq = icmp slt i32 %.279.lcssa.i, %.2
  br i1 %i.eq, label %.preheader.lr.ph.i, label %.preheader263.._crit_edge_crit_edge.i

.preheader263.._crit_edge_crit_edge.i:            ; preds = %.preheader263.i.thread, %.preheader263.i
  %.037.lcssa152165 = phi ptr [ null, %.preheader263.i.thread ], [ %.037.lcssa152, %.preheader263.i ]
  %.0.lcssa154163 = phi i32 [ 0, %.preheader263.i.thread ], [ %.2, %.preheader263.i ]
  %i.er = phi ptr [ %i.b, %.preheader263.i.thread ], [ %i.o, %.preheader263.i ]
  %.not273.i155161 = phi i1 [ true, %.preheader263.i.thread ], [ %.not273.i, %.preheader263.i ]
  %.pre460.i = and i32 %3, 1
  br label %._crit_edge.i

.preheader.lr.ph.i:                               ; preds = %.preheader263.i
  %i.es = and i32 %3, 2
  %.not94.i = icmp eq i32 %i.es, 0
  %i.et = and i32 %3, 1                           ; 2 uses
  %.not92.i = icmp eq i32 %i.et, 0
  %i.eu = sdiv i32 %.2, 1024
  br i1 %.not273.i, label %.preheader.us.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %.pre.i.i.i148.pre.pre.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 6 uses
  br label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %.preheader.us.i
  br label %.preheader.us.i

bb.v:                                             ; preds = %bb.al, %.preheader264.i
  %.279280.i = phi i32 [ %.178.i, %.preheader264.i ], [ %.380.i, %bb.al ] ; 3 uses
  %.182278.i = phi ptr [ %.138, %.preheader264.i ], [ %i.ix, %bb.al ] ; 6 uses
  %i.ev = load ptr, ptr %.182278.i, align 8, !tbaa !22 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, 8589934592
  %.not95.i = icmp eq i64 %i.ex, 0
  br i1 %.not95.i, label %bb.w, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr i8, ptr %i.ev, i64 72
  %.182.val107.val.i = load i32, ptr %i.ey, align 8, !tbaa !28 ; 2 uses
  %i.ez = udiv i32 %.182.val107.val.i, 65532      ; 6 uses
  %i.fa = urem i32 %.182.val107.val.i, 65532
  %i.fb = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i128.i = icmp ugt i32 %i.fb, %i.ez
  %.pre.i.i.i129.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  br i1 %.not.i.i.i128.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = add nuw nsw i32 %i.ez, 1                ; 2 uses
  %i.fd = shl nuw nsw i32 %i.fc, 3
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i129.i, i64 noundef %i.fe) #20 ; 4 uses
  store ptr %i.ff, ptr @commit_weight.3, align 8, !tbaa !18
  %i.fg = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i130.i = icmp ugt i32 %i.fg, %i.ez
  br i1 %.not331.i.i.i130.i, label %._crit_edge.i.i.i134.i, label %.lr.ph.i.i.i131.i.preheader

.lr.ph.i.i.i131.i.preheader:                      ; preds = %bb.x
  %13 = sub nuw i32 %i.ez, %i.fg                  ; 2 uses
  %14 = add nuw nsw i32 %13, 1                    ; 2 uses
  %min.iters.check232 = icmp samesign ult i32 %13, 3
  br i1 %min.iters.check232, label %.lr.ph.i.i.i131.i.preheader355, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph.i.i.i131.i.preheader
  %n.vec234 = and i32 %14, 262140                 ; 3 uses
  %i.fh = add i32 %i.fg, %n.vec234
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i32 [ 0, %vector.ph233 ], [ %index.next237, %vector.body235 ] ; 2 uses
  %i.fi = add i32 %i.fg, %index236
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.fk, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.fl, align 8, !tbaa !34
  %index.next237 = add nuw i32 %index236, 4       ; 2 uses
  %i.fm = icmp eq i32 %index.next237, %n.vec234
  br i1 %i.fm, label %middle.block238, label %vector.body235, !llvm.loop !50

middle.block238:                                  ; preds = %vector.body235
  %cmp.n239 = icmp eq i32 %14, %n.vec234
  br i1 %cmp.n239, label %._crit_edge.i.i.i134.i, label %.lr.ph.i.i.i131.i.preheader355

.lr.ph.i.i.i131.i.preheader355:                   ; preds = %.lr.ph.i.i.i131.i.preheader, %middle.block238
  %.0302.i.i.i132.i.ph = phi i32 [ %i.fg, %.lr.ph.i.i.i131.i.preheader ], [ %i.fh, %middle.block238 ]
  br label %.lr.ph.i.i.i131.i

.lr.ph.i.i.i131.i:                                ; preds = %.lr.ph.i.i.i131.i.preheader355, %.lr.ph.i.i.i131.i
  %.0302.i.i.i132.i = phi i32 [ %i.fp, %.lr.ph.i.i.i131.i ], [ %.0302.i.i.i132.i.ph, %.lr.ph.i.i.i131.i.preheader355 ] ; 2 uses
  %i.fn = zext i32 %.0302.i.i.i132.i to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fn
  store ptr null, ptr %i.fo, align 8, !tbaa !34
  %i.fp = add i32 %.0302.i.i.i132.i, 1            ; 2 uses
  %.not33.i.i.i133.i = icmp ugt i32 %i.fp, %i.ez
  br i1 %.not33.i.i.i133.i, label %._crit_edge.i.i.i134.i, label %.lr.ph.i.i.i131.i, !llvm.loop !51

._crit_edge.i.i.i134.i:                           ; preds = %.lr.ph.i.i.i131.i, %middle.block238, %bb.x
  store i32 %i.fc, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i134.i, %bb.w
  %i.fq = phi ptr [ %i.ff, %._crit_edge.i.i.i134.i ], [ %.pre.i.i.i129.i, %bb.w ]
  %i.fr = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i135.i = icmp eq ptr %i.ft, null
  br i1 %.not34.i.i.i135.i, label %bb.z, label %weight.exit.i

bb.z:                                             ; preds = %bb.y
  %i.fu = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.fv = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fr
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !34
  br label %weight.exit.i

weight.exit.i:                                    ; preds = %bb.z, %bb.y
  %i.fx = phi ptr [ %i.ft, %bb.y ], [ %i.fu, %bb.z ]
  %i.fy = zext nneg i32 %i.fa to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !40
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !21
  %.not96.i = icmp eq i32 %i.gb, -2
  br i1 %.not96.i, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %weight.exit.i
  br i1 %.not8.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.26, i32 noundef 339, ptr noundef nonnull @.str.27) #21
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gc = tail call fastcc i32 @count_distance(ptr noundef %.182278.i)
  %.182.val.i = load ptr, ptr %.182278.i, align 8, !tbaa !22
  %i.gd = getelementptr i8, ptr %.182.val.i, i64 72
  %.182.val.val.i = load i32, ptr %i.gd, align 8, !tbaa !28 ; 2 uses
  %i.ge = udiv i32 %.182.val.val.i, 65532         ; 6 uses
  %i.gf = urem i32 %.182.val.val.i, 65532
  %i.gg = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i136.i = icmp ugt i32 %i.gg, %i.ge
  %.pre.i.i.i137.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  br i1 %.not.i.i.i136.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = add nuw nsw i32 %i.ge, 1                ; 2 uses
  %i.gi = shl nuw nsw i32 %i.gh, 3
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i137.i, i64 noundef %i.gj) #20 ; 4 uses
  store ptr %i.gk, ptr @commit_weight.3, align 8, !tbaa !18
  %i.gl = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i138.i = icmp ugt i32 %i.gl, %i.ge
  br i1 %.not331.i.i.i138.i, label %._crit_edge.i.i.i142.i, label %.lr.ph.i.i.i139.i.preheader

.lr.ph.i.i.i139.i.preheader:                      ; preds = %bb.ad
  %15 = sub nuw i32 %i.ge, %i.gl                  ; 2 uses
  %16 = add nuw nsw i32 %15, 1                    ; 2 uses
  %min.iters.check222 = icmp samesign ult i32 %15, 3
  br i1 %min.iters.check222, label %.lr.ph.i.i.i139.i.preheader354, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph.i.i.i139.i.preheader
  %n.vec224 = and i32 %16, 262140                 ; 3 uses
  %i.gm = add i32 %i.gl, %n.vec224
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph223
  %index226 = phi i32 [ 0, %vector.ph223 ], [ %index.next227, %vector.body225 ] ; 2 uses
  %i.gn = add i32 %i.gl, %index226
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.gp, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.gq, align 8, !tbaa !34
  %index.next227 = add nuw i32 %index226, 4       ; 2 uses
  %i.gr = icmp eq i32 %index.next227, %n.vec224
  br i1 %i.gr, label %middle.block228, label %vector.body225, !llvm.loop !52

middle.block228:                                  ; preds = %vector.body225
  %cmp.n229 = icmp eq i32 %16, %n.vec224
  br i1 %cmp.n229, label %._crit_edge.i.i.i142.i, label %.lr.ph.i.i.i139.i.preheader354

.lr.ph.i.i.i139.i.preheader354:                   ; preds = %.lr.ph.i.i.i139.i.preheader, %middle.block228
  %.0302.i.i.i140.i.ph = phi i32 [ %i.gl, %.lr.ph.i.i.i139.i.preheader ], [ %i.gm, %middle.block228 ]
  br label %.lr.ph.i.i.i139.i

.lr.ph.i.i.i139.i:                                ; preds = %.lr.ph.i.i.i139.i.preheader354, %.lr.ph.i.i.i139.i
  %.0302.i.i.i140.i = phi i32 [ %i.gu, %.lr.ph.i.i.i139.i ], [ %.0302.i.i.i140.i.ph, %.lr.ph.i.i.i139.i.preheader354 ] ; 2 uses
  %i.gs = zext i32 %.0302.i.i.i140.i to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gs
  store ptr null, ptr %i.gt, align 8, !tbaa !34
  %i.gu = add i32 %.0302.i.i.i140.i, 1            ; 2 uses
  %.not33.i.i.i141.i = icmp ugt i32 %i.gu, %i.ge
  br i1 %.not33.i.i.i141.i, label %._crit_edge.i.i.i142.i, label %.lr.ph.i.i.i139.i, !llvm.loop !53

._crit_edge.i.i.i142.i:                           ; preds = %.lr.ph.i.i.i139.i, %middle.block228, %bb.ad
  store i32 %i.gh, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i142.i, %bb.ac
  %i.gv = phi ptr [ %i.gk, %._crit_edge.i.i.i142.i ], [ %.pre.i.i.i137.i, %bb.ac ]
  %i.gw = zext nneg i32 %i.ge to i64              ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gw
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i143.i = icmp eq ptr %i.gy, null
  br i1 %.not34.i.i.i143.i, label %bb.af, label %.lr.ph.i145.preheader.i

bb.af:                                            ; preds = %bb.ae
  %i.gz = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ha = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gw
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !34
  br label %.lr.ph.i145.preheader.i

.lr.ph.i145.preheader.i:                          ; preds = %bb.af, %bb.ae
  %i.hc = phi ptr [ %i.gy, %bb.ae ], [ %i.gz, %bb.af ]
  %i.hd = zext nneg i32 %i.gf to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !40
  store i32 %i.gc, ptr %i.hf, align 4, !tbaa !21
  br label %.lr.ph.i145.i

.lr.ph.i145.i:                                    ; preds = %.lr.ph.i145.i, %.lr.ph.i145.preheader.i
  %.05.i.i = phi ptr [ %i.hk, %.lr.ph.i145.i ], [ %.138, %.lr.ph.i145.preheader.i ] ; 2 uses
  %i.hg = load ptr, ptr %.05.i.i, align 8, !tbaa !22 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = and i64 %i.hh, -281474976710657
  store i64 %i.hi, ptr %i.hg, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i, label %clear_distance.exit.i, label %.lr.ph.i145.i, !llvm.loop !54

clear_distance.exit.i:                            ; preds = %.lr.ph.i145.i
  br i1 %.not98.i, label %bb.ag, label %approx_halfway.exit.thread.i

bb.ag:                                            ; preds = %clear_distance.exit.i
  %.182.val109.i = load ptr, ptr %.182278.i, align 8, !tbaa !22 ; 2 uses
  %i.hl = load i64, ptr %.182.val109.i, align 8
  %i.hm = and i64 %i.hl, 17179869184
  %.not.i146.i = icmp eq i64 %i.hm, 0
  br i1 %.not.i146.i, label %bb.ah, label %approx_halfway.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.hn = getelementptr i8, ptr %.182.val109.i, i64 72
  %.val.val.i.i = load i32, ptr %i.hn, align 8, !tbaa !28 ; 2 uses
  %i.ho = udiv i32 %.val.val.i.i, 65532           ; 6 uses
  %i.hp = urem i32 %.val.val.i.i, 65532
  %i.hq = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i.i.i = icmp ugt i32 %i.hq, %i.ho
  %.pre.i.i.i.i.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hr = add nuw nsw i32 %i.ho, 1                ; 2 uses
  %i.hs = shl nuw nsw i32 %i.hr, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i.i.i, i64 noundef %i.ht) #20 ; 4 uses
  store ptr %i.hu, ptr @commit_weight.3, align 8, !tbaa !18
  %i.hv = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i.i.i = icmp ugt i32 %i.hv, %i.ho
  br i1 %.not331.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ai
  %17 = sub nuw i32 %i.ho, %i.hv                  ; 2 uses
  %18 = add nuw nsw i32 %17, 1                    ; 2 uses
  %min.iters.check212 = icmp samesign ult i32 %17, 3
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i.preheader353, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec214 = and i32 %18, 262140                 ; 3 uses
  %i.hw = add i32 %i.hv, %n.vec214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i32 [ 0, %vector.ph213 ], [ %index.next217, %vector.body215 ] ; 2 uses
  %i.hx = add i32 %i.hv, %index216
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.hz, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.ia, align 8, !tbaa !34
  %index.next217 = add nuw i32 %index216, 4       ; 2 uses
  %i.ib = icmp eq i32 %index.next217, %n.vec214
  br i1 %i.ib, label %middle.block218, label %vector.body215, !llvm.loop !55

middle.block218:                                  ; preds = %vector.body215
  %cmp.n219 = icmp eq i32 %18, %n.vec214
  br i1 %cmp.n219, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader353

.lr.ph.i.i.i.i.i.preheader353:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block218
  %.0302.i.i.i.i.i.ph = phi i32 [ %i.hv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hw, %middle.block218 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader353, %.lr.ph.i.i.i.i.i
  %.0302.i.i.i.i.i = phi i32 [ %i.ie, %.lr.ph.i.i.i.i.i ], [ %.0302.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader353 ] ; 2 uses
  %i.ic = zext i32 %.0302.i.i.i.i.i to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ic
  store ptr null, ptr %i.id, align 8, !tbaa !34
  %i.ie = add i32 %.0302.i.i.i.i.i, 1             ; 2 uses
  %.not33.i.i.i.i.i = icmp ugt i32 %i.ie, %i.ho
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !56

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %middle.block218, %bb.ai
  store i32 %i.hr, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i, %bb.ah
  %i.if = phi ptr [ %i.hu, %._crit_edge.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.ah ]
  %i.ig = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not34.i.i.i.i.i, label %bb.ak, label %weight.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ij = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ik = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ig
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !34
  br label %weight.exit.i.i

weight.exit.i.i:                                  ; preds = %bb.ak, %bb.aj
  %i.im = phi ptr [ %i.ii, %bb.aj ], [ %i.ij, %bb.ak ]
  %i.in = zext nneg i32 %i.hp to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !40
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !21
  %i.ir = shl nsw i32 %i.iq, 1
  %i.is = sub nsw i32 %i.ir, %.2                  ; 2 uses
  %i.it = add i32 %i.is, 1
  %switch.i.i = icmp ult i32 %i.it, 3
  %i.iu = tail call i32 @llvm.abs.i32(i32 %i.is, i1 true)
  %.not260.i = icmp slt i32 %i.iu, %i.r
  %or.cond.i = select i1 %switch.i.i, i1 true, i1 %.not260.i
  br i1 %or.cond.i, label %do_find_bisection.exit.thread.thread, label %approx_halfway.exit.thread.i

approx_halfway.exit.thread.i:                     ; preds = %weight.exit.i.i, %bb.ag, %clear_distance.exit.i
  %i.iv = add nsw i32 %.279280.i, 1
  br label %bb.al

bb.al:                                            ; preds = %approx_halfway.exit.thread.i, %weight.exit.i, %bb.v
  %.380.i = phi i32 [ %.279280.i, %bb.v ], [ %.279280.i, %weight.exit.i ], [ %i.iv, %approx_halfway.exit.thread.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.182278.i, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !25 ; 2 uses
  %.not86.i = icmp eq ptr %i.ix, null
  br i1 %.not86.i, label %.preheader263.i, label %bb.v, !llvm.loop !57

..loopexit_crit_edge.i:                           ; preds = %approx_halfway.exit216.thread.i
  %i.iy = icmp slt i32 %.7.ph.i, %.2
  br i1 %i.iy, label %.preheader.i.backedge, label %._crit_edge.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.preheader.i
  %.pre.i.i.i148.pre448.i = phi ptr [ %.pre.i.i.i148.pre.pre.i, %.preheader.preheader.i ], [ %.pre.i.i.i148.pre445.i, %.preheader.i.backedge ]
  %.pre.i.i.i.i205421.i = phi ptr [ %.pre.i.i.i148.pre.pre.i, %.preheader.preheader.i ], [ %.pre.i.i.i.i205421.i.be, %.preheader.i.backedge ]
  %.pre.i.i.i175400.i = phi ptr [ %.pre.i.i.i148.pre.pre.i, %.preheader.preheader.i ], [ %.pre.i.i.i175400.i.be, %.preheader.i.backedge ]
  %.pre.i.i.i193376.i = phi ptr [ %.pre.i.i.i148.pre.pre.i, %.preheader.preheader.i ], [ %.pre.i.i.i193376.i.be, %.preheader.i.backedge ]
  %.pre.i.i.i157359.i = phi ptr [ %.pre.i.i.i148.pre.pre.i, %.preheader.preheader.i ], [ %.pre.i.i.i157359.i.be, %.preheader.i.backedge ]
  %.pre.i.i.i148.i = phi ptr [ %.pre.i.i.i148.pre.pre.i, %.preheader.preheader.i ], [ %.pre.i.i.i148.i.be, %.preheader.i.backedge ] ; 2 uses
  %.5289.i = phi i32 [ %.279.lcssa.i, %.preheader.preheader.i ], [ %.7.ph.i, %.preheader.i.backedge ] ; 6 uses
  %.283287.i = phi ptr [ %.037.lcssa152, %.preheader.preheader.i ], [ %.283287.i.be, %.preheader.i.backedge ] ; 7 uses
  %i.iz = load ptr, ptr %.283287.i, align 8, !tbaa !22 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = getelementptr i8, ptr %i.iz, i64 72
  %.283.val106.val.i = load i32, ptr %i.jb, align 8, !tbaa !28 ; 2 uses
  %i.jc = udiv i32 %.283.val106.val.i, 65532      ; 6 uses
  %i.jd = urem i32 %.283.val106.val.i, 65532
  %i.je = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i147.i = icmp ugt i32 %i.je, %i.jc
  br i1 %.not.i.i.i147.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader.i
  %i.jf = add nuw nsw i32 %i.jc, 1                ; 2 uses
  %i.jg = shl nuw nsw i32 %i.jf, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i148.i, i64 noundef %i.jh) #20 ; 9 uses
  store ptr %i.ji, ptr @commit_weight.3, align 8, !tbaa !18
  %i.jj = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i149.i = icmp ugt i32 %i.jj, %i.jc
  br i1 %.not331.i.i.i149.i, label %._crit_edge.i.i.i153.i, label %.lr.ph.i.i.i150.i.preheader

.lr.ph.i.i.i150.i.preheader:                      ; preds = %bb.am
  %19 = sub nuw i32 %i.jc, %i.jj                  ; 2 uses
  %20 = add nuw nsw i32 %19, 1                    ; 2 uses
  %min.iters.check302 = icmp samesign ult i32 %19, 3
  br i1 %min.iters.check302, label %.lr.ph.i.i.i150.i.preheader350, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i.i.i150.i.preheader
  %n.vec304 = and i32 %20, 262140                 ; 3 uses
  %i.jk = add i32 %i.jj, %n.vec304
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i32 [ 0, %vector.ph303 ], [ %index.next307, %vector.body305 ] ; 2 uses
  %i.jl = add i32 %i.jj, %index306
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.jn, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.jo, align 8, !tbaa !34
  %index.next307 = add nuw i32 %index306, 4       ; 2 uses
  %i.jp = icmp eq i32 %index.next307, %n.vec304
  br i1 %i.jp, label %middle.block308, label %vector.body305, !llvm.loop !58

middle.block308:                                  ; preds = %vector.body305
  %cmp.n309 = icmp eq i32 %20, %n.vec304
  br i1 %cmp.n309, label %._crit_edge.i.i.i153.i, label %.lr.ph.i.i.i150.i.preheader350

.lr.ph.i.i.i150.i.preheader350:                   ; preds = %.lr.ph.i.i.i150.i.preheader, %middle.block308
  %.0302.i.i.i151.i.ph = phi i32 [ %i.jj, %.lr.ph.i.i.i150.i.preheader ], [ %i.jk, %middle.block308 ]
  br label %.lr.ph.i.i.i150.i

.lr.ph.i.i.i150.i:                                ; preds = %.lr.ph.i.i.i150.i.preheader350, %.lr.ph.i.i.i150.i
  %.0302.i.i.i151.i = phi i32 [ %i.js, %.lr.ph.i.i.i150.i ], [ %.0302.i.i.i151.i.ph, %.lr.ph.i.i.i150.i.preheader350 ] ; 2 uses
  %i.jq = zext i32 %.0302.i.i.i151.i to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jq
  store ptr null, ptr %i.jr, align 8, !tbaa !34
  %i.js = add i32 %.0302.i.i.i151.i, 1            ; 2 uses
  %.not33.i.i.i152.i = icmp ugt i32 %i.js, %i.jc
  br i1 %.not33.i.i.i152.i, label %._crit_edge.i.i.i153.i, label %.lr.ph.i.i.i150.i, !llvm.loop !59

._crit_edge.i.i.i153.i:                           ; preds = %.lr.ph.i.i.i150.i, %middle.block308, %bb.am
  store i32 %i.jf, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i153.i, %.preheader.i
  %.pre.i.i.i148.pre447.i = phi ptr [ %i.ji, %._crit_edge.i.i.i153.i ], [ %.pre.i.i.i148.pre448.i, %.preheader.i ]
  %.pre.i.i.i.i205420.i = phi ptr [ %i.ji, %._crit_edge.i.i.i153.i ], [ %.pre.i.i.i.i205421.i, %.preheader.i ]
  %.pre.i.i.i175399.i = phi ptr [ %i.ji, %._crit_edge.i.i.i153.i ], [ %.pre.i.i.i175400.i, %.preheader.i ]
  %.pre.i.i.i193375.i = phi ptr [ %i.ji, %._crit_edge.i.i.i153.i ], [ %.pre.i.i.i193376.i, %.preheader.i ]
  %.pre.i.i.i157358.i = phi ptr [ %i.ji, %._crit_edge.i.i.i153.i ], [ %.pre.i.i.i157359.i, %.preheader.i ]
  %.pre.i.i.i148345.i = phi ptr [ %i.ji, %._crit_edge.i.i.i153.i ], [ %.pre.i.i.i148.i, %.preheader.i ] ; 2 uses
  %i.jt = zext nneg i32 %i.jc to i64              ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i148345.i, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i154.i = icmp eq ptr %i.jv, null
  br i1 %.not34.i.i.i154.i, label %bb.ao, label %weight.exit155.i

bb.ao:                                            ; preds = %bb.an
  %i.jw = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.jx = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 7 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jt
  store ptr %i.jw, ptr %i.jy, align 8, !tbaa !34
  br label %weight.exit155.i

weight.exit155.i:                                 ; preds = %bb.ao, %bb.an
  %.pre.i.i.i148.pre446.i = phi ptr [ %.pre.i.i.i148.pre447.i, %bb.an ], [ %i.jx, %bb.ao ] ; 3 uses
  %.pre.i.i.i.i205419.i = phi ptr [ %.pre.i.i.i.i205420.i, %bb.an ], [ %i.jx, %bb.ao ] ; 3 uses
  %.pre.i.i.i175398.i = phi ptr [ %.pre.i.i.i175399.i, %bb.an ], [ %i.jx, %bb.ao ] ; 3 uses
  %.pre.i.i.i193374.i = phi ptr [ %.pre.i.i.i193375.i, %bb.an ], [ %i.jx, %bb.ao ] ; 3 uses
  %.pre.i.i.i157361.i = phi ptr [ %.pre.i.i.i157358.i, %bb.an ], [ %i.jx, %bb.ao ] ; 3 uses
  %.pre.i.i.i148344.i = phi ptr [ %.pre.i.i.i148345.i, %bb.an ], [ %i.jx, %bb.ao ] ; 3 uses
  %i.jz = phi ptr [ %i.jv, %bb.an ], [ %i.jw, %bb.ao ]
  %i.ka = zext nneg i32 %i.jd to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !40
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !21
  %i.ke = icmp sgt i32 %i.kd, -1
  br i1 %i.ke, label %approx_halfway.exit216.thread.i, label %bb.ap

bb.ap:                                            ; preds = %weight.exit155.i
  %i.kf = load ptr, ptr %.283287.i, align 8, !tbaa !22
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !60 ; 2 uses
  %.not89283.i = icmp eq ptr %i.kh, null
  br i1 %.not89283.i, label %approx_halfway.exit216.thread.i, label %.lr.ph285.i

.lr.ph285.i:                                      ; preds = %bb.ap, %bb.av
  %.pre.i.i.i148.pre444.i = phi ptr [ %.pre.i.i.i148.pre430.i, %bb.av ], [ %.pre.i.i.i148.pre446.i, %bb.ap ] ; 2 uses
  %.pre.i.i.i.i205418.i = phi ptr [ %.pre.i.i.i.i205408.i, %bb.av ], [ %.pre.i.i.i.i205419.i, %bb.ap ] ; 2 uses
  %.pre.i.i.i175397.i = phi ptr [ %.pre.i.i.i175389.i, %bb.av ], [ %.pre.i.i.i175398.i, %bb.ap ] ; 2 uses
  %.pre.i.i.i193373.i = phi ptr [ %.pre.i.i.i193369.i, %bb.av ], [ %.pre.i.i.i193374.i, %bb.ap ] ; 2 uses
  %.pre.i.i.i157.i = phi ptr [ %.pre.i.i.i157354.i, %bb.av ], [ %.pre.i.i.i157361.i, %bb.ap ] ; 3 uses
  %.pre.i.i.i148342.i = phi ptr [ %.pre.i.i.i148341.i, %bb.av ], [ %.pre.i.i.i148344.i, %bb.ap ]
  %.074284.i = phi ptr [ %i.lq, %bb.av ], [ %i.kh, %bb.ap ] ; 3 uses
  %i.ki = load ptr, ptr %.074284.i, align 8, !tbaa !22 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8
  %i.kk = and i64 %i.kj, 8589934592
  %.not90.i = icmp eq i64 %i.kk, 0
  br i1 %.not90.i, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %.lr.ph285.i
  %i.kl = getelementptr i8, ptr %i.ki, i64 72
  %.074.val105.val.i = load i32, ptr %i.kl, align 8, !tbaa !28 ; 2 uses
  %i.km = udiv i32 %.074.val105.val.i, 65532      ; 6 uses
  %i.kn = urem i32 %.074.val105.val.i, 65532
  %i.ko = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i156.i = icmp ugt i32 %i.ko, %i.km
  br i1 %.not.i.i.i156.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kp = add nuw nsw i32 %i.km, 1                ; 2 uses
  %i.kq = shl nuw nsw i32 %i.kp, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i157.i, i64 noundef %i.kr) #20 ; 8 uses
  store ptr %i.ks, ptr @commit_weight.3, align 8, !tbaa !18
  %i.kt = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i158.i = icmp ugt i32 %i.kt, %i.km
  br i1 %.not331.i.i.i158.i, label %._crit_edge.i.i.i162.i, label %.lr.ph.i.i.i159.i.preheader

.lr.ph.i.i.i159.i.preheader:                      ; preds = %bb.ar
  %21 = sub nuw i32 %i.km, %i.kt                  ; 2 uses
  %22 = add nuw nsw i32 %21, 1                    ; 2 uses
  %min.iters.check292 = icmp samesign ult i32 %21, 3
  br i1 %min.iters.check292, label %.lr.ph.i.i.i159.i.preheader344, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph.i.i.i159.i.preheader
  %n.vec294 = and i32 %22, 262140                 ; 3 uses
  %i.ku = add i32 %i.kt, %n.vec294
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i32 [ 0, %vector.ph293 ], [ %index.next297, %vector.body295 ] ; 2 uses
  %i.kv = add i32 %i.kt, %index296
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.kx, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.ky, align 8, !tbaa !34
  %index.next297 = add nuw i32 %index296, 4       ; 2 uses
  %i.kz = icmp eq i32 %index.next297, %n.vec294
  br i1 %i.kz, label %middle.block298, label %vector.body295, !llvm.loop !61

middle.block298:                                  ; preds = %vector.body295
  %cmp.n299 = icmp eq i32 %22, %n.vec294
  br i1 %cmp.n299, label %._crit_edge.i.i.i162.i, label %.lr.ph.i.i.i159.i.preheader344

.lr.ph.i.i.i159.i.preheader344:                   ; preds = %.lr.ph.i.i.i159.i.preheader, %middle.block298
  %.0302.i.i.i160.i.ph = phi i32 [ %i.kt, %.lr.ph.i.i.i159.i.preheader ], [ %i.ku, %middle.block298 ]
  br label %.lr.ph.i.i.i159.i

.lr.ph.i.i.i159.i:                                ; preds = %.lr.ph.i.i.i159.i.preheader344, %.lr.ph.i.i.i159.i
  %.0302.i.i.i160.i = phi i32 [ %i.lc, %.lr.ph.i.i.i159.i ], [ %.0302.i.i.i160.i.ph, %.lr.ph.i.i.i159.i.preheader344 ] ; 2 uses
  %i.la = zext i32 %.0302.i.i.i160.i to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.la
  store ptr null, ptr %i.lb, align 8, !tbaa !34
  %i.lc = add i32 %.0302.i.i.i160.i, 1            ; 2 uses
  %.not33.i.i.i161.i = icmp ugt i32 %i.lc, %i.km
  br i1 %.not33.i.i.i161.i, label %._crit_edge.i.i.i162.i, label %.lr.ph.i.i.i159.i, !llvm.loop !62

._crit_edge.i.i.i162.i:                           ; preds = %.lr.ph.i.i.i159.i, %middle.block298, %bb.ar
  store i32 %i.kp, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i.i162.i, %bb.aq
  %.pre.i.i.i148.pre443.i = phi ptr [ %i.ks, %._crit_edge.i.i.i162.i ], [ %.pre.i.i.i148.pre444.i, %bb.aq ]
  %.pre.i.i.i.i205417.i = phi ptr [ %i.ks, %._crit_edge.i.i.i162.i ], [ %.pre.i.i.i.i205418.i, %bb.aq ]
  %.pre.i.i.i175396.i = phi ptr [ %i.ks, %._crit_edge.i.i.i162.i ], [ %.pre.i.i.i175397.i, %bb.aq ]
  %.pre.i.i.i193372.i = phi ptr [ %i.ks, %._crit_edge.i.i.i162.i ], [ %.pre.i.i.i193373.i, %bb.aq ]
  %.pre.i.i.i157356.i = phi ptr [ %i.ks, %._crit_edge.i.i.i162.i ], [ %.pre.i.i.i157.i, %bb.aq ] ; 2 uses
  %i.ld = zext nneg i32 %i.km to i64              ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i157356.i, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i163.i = icmp eq ptr %i.lf, null
  br i1 %.not34.i.i.i163.i, label %bb.at, label %weight.exit164.i

bb.at:                                            ; preds = %bb.as
  %i.lg = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.lh = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 6 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.ld
  store ptr %i.lg, ptr %i.li, align 8, !tbaa !34
  br label %weight.exit164.i

weight.exit164.i:                                 ; preds = %bb.at, %bb.as
  %.pre.i.i.i148.pre442.i = phi ptr [ %.pre.i.i.i148.pre443.i, %bb.as ], [ %i.lh, %bb.at ] ; 3 uses
  %.pre.i.i.i.i205416.i = phi ptr [ %.pre.i.i.i.i205417.i, %bb.as ], [ %i.lh, %bb.at ] ; 3 uses
  %.pre.i.i.i175395.i = phi ptr [ %.pre.i.i.i175396.i, %bb.as ], [ %i.lh, %bb.at ] ; 3 uses
  %.pre.i.i.i166.i = phi ptr [ %.pre.i.i.i193372.i, %bb.as ], [ %i.lh, %bb.at ] ; 4 uses
  %.pre.i.i.i184.i = phi ptr [ %.pre.i.i.i157356.i, %bb.as ], [ %i.lh, %bb.at ] ; 4 uses
  %i.lj = phi ptr [ %i.lf, %bb.as ], [ %i.lg, %bb.at ]
  %i.lk = zext nneg i32 %i.kn to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !40
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !21
  %i.lo = icmp sgt i32 %i.ln, -1
  br i1 %i.lo, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %weight.exit164.i, %.lr.ph285.i
  %.pre.i.i.i148.pre430.i = phi ptr [ %.pre.i.i.i148.pre442.i, %weight.exit164.i ], [ %.pre.i.i.i148.pre444.i, %.lr.ph285.i ] ; 3 uses
  %.pre.i.i.i.i205408.i = phi ptr [ %.pre.i.i.i.i205416.i, %weight.exit164.i ], [ %.pre.i.i.i.i205418.i, %.lr.ph285.i ] ; 3 uses
  %.pre.i.i.i175389.i = phi ptr [ %.pre.i.i.i175395.i, %weight.exit164.i ], [ %.pre.i.i.i175397.i, %.lr.ph285.i ] ; 3 uses
  %.pre.i.i.i193369.i = phi ptr [ %.pre.i.i.i166.i, %weight.exit164.i ], [ %.pre.i.i.i193373.i, %.lr.ph285.i ] ; 3 uses
  %.pre.i.i.i157354.i = phi ptr [ %.pre.i.i.i184.i, %weight.exit164.i ], [ %.pre.i.i.i157.i, %.lr.ph285.i ] ; 3 uses
  %.pre.i.i.i148341.i = phi ptr [ %.pre.i.i.i184.i, %weight.exit164.i ], [ %.pre.i.i.i148342.i, %.lr.ph285.i ] ; 3 uses
  br i1 %.not94.i, label %bb.av, label %approx_halfway.exit216.thread.i

bb.av:                                            ; preds = %bb.au
  %i.lp = getelementptr inbounds nuw i8, ptr %.074284.i, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !25 ; 2 uses
  %.not89.i = icmp eq ptr %i.lq, null
  br i1 %.not89.i, label %approx_halfway.exit216.thread.i, label %.lr.ph285.i, !llvm.loop !63

bb.aw:                                            ; preds = %weight.exit164.i
  %i.lr = and i64 %i.ja, 17179869184
  %.not91.i = icmp eq i64 %i.lr, 0
  %.074.val104.i = load ptr, ptr %.074284.i, align 8, !tbaa !22
  %i.ls = getelementptr i8, ptr %.074.val104.i, i64 72
  %.074.val104.val.i = load i32, ptr %i.ls, align 8, !tbaa !28 ; 3 uses
  %i.lt = udiv i32 %.074.val104.val.i, 65532      ; 11 uses
  %i.lu = urem i32 %.074.val104.val.i, 65532
  %i.lv = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i165.i = icmp ugt i32 %i.lv, %i.lt    ; 2 uses
  br i1 %.not91.i, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i.i.i165.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lw = add nuw nsw i32 %i.lt, 1                ; 3 uses
  %i.lx = shl nuw nsw i32 %i.lw, 3
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i166.i, i64 noundef %i.ly) #20 ; 7 uses
  store ptr %i.lz, ptr @commit_weight.3, align 8, !tbaa !18
  %i.ma = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i167.i = icmp ugt i32 %i.ma, %i.lt
  br i1 %.not331.i.i.i167.i, label %._crit_edge.i.i.i171.i, label %.lr.ph.i.i.i168.i.preheader

.lr.ph.i.i.i168.i.preheader:                      ; preds = %bb.ay
  %23 = sub nuw i32 %i.lt, %i.ma                  ; 2 uses
  %24 = add nuw nsw i32 %23, 1                    ; 2 uses
  %min.iters.check262 = icmp samesign ult i32 %23, 3
  br i1 %min.iters.check262, label %.lr.ph.i.i.i168.i.preheader347, label %vector.ph263

vector.ph263:                                     ; preds = %.lr.ph.i.i.i168.i.preheader
  %n.vec264 = and i32 %24, 262140                 ; 3 uses
  %i.mb = add i32 %i.ma, %n.vec264
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i32 [ 0, %vector.ph263 ], [ %index.next267, %vector.body265 ] ; 2 uses
  %i.mc = add i32 %i.ma, %index266
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.me, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.mf, align 8, !tbaa !34
  %index.next267 = add nuw i32 %index266, 4       ; 2 uses
  %i.mg = icmp eq i32 %index.next267, %n.vec264
  br i1 %i.mg, label %middle.block268, label %vector.body265, !llvm.loop !64

middle.block268:                                  ; preds = %vector.body265
  %cmp.n269 = icmp eq i32 %24, %n.vec264
  br i1 %cmp.n269, label %._crit_edge.i.i.i171.i, label %.lr.ph.i.i.i168.i.preheader347

.lr.ph.i.i.i168.i.preheader347:                   ; preds = %.lr.ph.i.i.i168.i.preheader, %middle.block268
  %.0302.i.i.i169.i.ph = phi i32 [ %i.ma, %.lr.ph.i.i.i168.i.preheader ], [ %i.mb, %middle.block268 ]
  br label %.lr.ph.i.i.i168.i

.lr.ph.i.i.i168.i:                                ; preds = %.lr.ph.i.i.i168.i.preheader347, %.lr.ph.i.i.i168.i
  %.0302.i.i.i169.i = phi i32 [ %i.mj, %.lr.ph.i.i.i168.i ], [ %.0302.i.i.i169.i.ph, %.lr.ph.i.i.i168.i.preheader347 ] ; 2 uses
  %i.mh = zext i32 %.0302.i.i.i169.i to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mh
  store ptr null, ptr %i.mi, align 8, !tbaa !34
  %i.mj = add i32 %.0302.i.i.i169.i, 1            ; 2 uses
  %.not33.i.i.i170.i = icmp ugt i32 %i.mj, %i.lt
  br i1 %.not33.i.i.i170.i, label %._crit_edge.i.i.i171.i, label %.lr.ph.i.i.i168.i, !llvm.loop !65

._crit_edge.i.i.i171.i:                           ; preds = %.lr.ph.i.i.i168.i, %middle.block268, %bb.ay
  store i32 %i.lw, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i.i171.i, %bb.ax
  %.pre.i.i.i148.pre441.i = phi ptr [ %i.lz, %._crit_edge.i.i.i171.i ], [ %.pre.i.i.i148.pre442.i, %bb.ax ]
  %.pre.i.i.i.i205415.i = phi ptr [ %i.lz, %._crit_edge.i.i.i171.i ], [ %.pre.i.i.i.i205416.i, %bb.ax ]
  %.pre.i.i.i175394.i = phi ptr [ %i.lz, %._crit_edge.i.i.i171.i ], [ %.pre.i.i.i175395.i, %bb.ax ]
  %i.mk = phi i32 [ %i.lw, %._crit_edge.i.i.i171.i ], [ %i.lv, %bb.ax ]
  %i.ml = phi ptr [ %i.lz, %._crit_edge.i.i.i171.i ], [ %.pre.i.i.i166.i, %bb.ax ]
  %i.mm = zext nneg i32 %i.lt to i64              ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mm
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i172.i = icmp eq ptr %i.mo, null
  br i1 %.not34.i.i.i172.i, label %bb.ba, label %weight.exit173.i

bb.ba:                                            ; preds = %bb.az
  %i.mp = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.mq = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 4 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mm
  store ptr %i.mp, ptr %i.mr, align 8, !tbaa !34
  %.pre388.i = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  br label %weight.exit173.i

weight.exit173.i:                                 ; preds = %bb.ba, %bb.az
  %.pre.i.i.i148.pre440.i = phi ptr [ %.pre.i.i.i148.pre441.i, %bb.az ], [ %i.mq, %bb.ba ]
  %.pre.i.i.i.i205414.i = phi ptr [ %.pre.i.i.i.i205415.i, %bb.az ], [ %i.mq, %bb.ba ]
  %.pre.i.i.i175.i = phi ptr [ %.pre.i.i.i175394.i, %bb.az ], [ %i.mq, %bb.ba ] ; 2 uses
  %i.ms = phi i32 [ %i.mk, %bb.az ], [ %.pre388.i, %bb.ba ]
  %i.mt = phi ptr [ %i.mo, %bb.az ], [ %i.mp, %bb.ba ]
  %i.mu = urem i32 %.074.val104.val.i, 65532
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !40
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !21
  %i.mz = add nsw i32 %i.my, 1
  %.283.val101.i = load ptr, ptr %.283287.i, align 8, !tbaa !22
  %i.na = getelementptr i8, ptr %.283.val101.i, i64 72
  %.283.val101.val.i = load i32, ptr %i.na, align 8, !tbaa !28 ; 2 uses
  %i.nb = udiv i32 %.283.val101.val.i, 65532      ; 6 uses
  %i.nc = urem i32 %.283.val101.val.i, 65532
  %.not.i.i.i174.i = icmp ugt i32 %i.ms, %i.nb
  br i1 %.not.i.i.i174.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %weight.exit173.i
  %i.nd = add nuw nsw i32 %i.nb, 1                ; 2 uses
  %i.ne = shl nuw nsw i32 %i.nd, 3
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i175.i, i64 noundef %i.nf) #20 ; 6 uses
  store ptr %i.ng, ptr @commit_weight.3, align 8, !tbaa !18
  %i.nh = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i176.i = icmp ugt i32 %i.nh, %i.nb
  br i1 %.not331.i.i.i176.i, label %._crit_edge.i.i.i180.i, label %.lr.ph.i.i.i177.i.preheader

.lr.ph.i.i.i177.i.preheader:                      ; preds = %bb.bb
  %25 = sub nuw i32 %i.nb, %i.nh                  ; 2 uses
  %26 = add nuw nsw i32 %25, 1                    ; 2 uses
  %min.iters.check252 = icmp samesign ult i32 %25, 3
  br i1 %min.iters.check252, label %.lr.ph.i.i.i177.i.preheader346, label %vector.ph253

vector.ph253:                                     ; preds = %.lr.ph.i.i.i177.i.preheader
  %n.vec254 = and i32 %26, 262140                 ; 3 uses
  %i.ni = add i32 %i.nh, %n.vec254
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph253
  %index256 = phi i32 [ 0, %vector.ph253 ], [ %index.next257, %vector.body255 ] ; 2 uses
  %i.nj = add i32 %i.nh, %index256
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.nl, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.nm, align 8, !tbaa !34
  %index.next257 = add nuw i32 %index256, 4       ; 2 uses
  %i.nn = icmp eq i32 %index.next257, %n.vec254
  br i1 %i.nn, label %middle.block258, label %vector.body255, !llvm.loop !66

middle.block258:                                  ; preds = %vector.body255
  %cmp.n259 = icmp eq i32 %26, %n.vec254
  br i1 %cmp.n259, label %._crit_edge.i.i.i180.i, label %.lr.ph.i.i.i177.i.preheader346

.lr.ph.i.i.i177.i.preheader346:                   ; preds = %.lr.ph.i.i.i177.i.preheader, %middle.block258
  %.0302.i.i.i178.i.ph = phi i32 [ %i.nh, %.lr.ph.i.i.i177.i.preheader ], [ %i.ni, %middle.block258 ]
  br label %.lr.ph.i.i.i177.i

.lr.ph.i.i.i177.i:                                ; preds = %.lr.ph.i.i.i177.i.preheader346, %.lr.ph.i.i.i177.i
  %.0302.i.i.i178.i = phi i32 [ %i.nq, %.lr.ph.i.i.i177.i ], [ %.0302.i.i.i178.i.ph, %.lr.ph.i.i.i177.i.preheader346 ] ; 2 uses
  %i.no = zext i32 %.0302.i.i.i178.i to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.no
  store ptr null, ptr %i.np, align 8, !tbaa !34
  %i.nq = add i32 %.0302.i.i.i178.i, 1            ; 2 uses
  %.not33.i.i.i179.i = icmp ugt i32 %i.nq, %i.nb
  br i1 %.not33.i.i.i179.i, label %._crit_edge.i.i.i180.i, label %.lr.ph.i.i.i177.i, !llvm.loop !67

._crit_edge.i.i.i180.i:                           ; preds = %.lr.ph.i.i.i177.i, %middle.block258, %bb.bb
  store i32 %i.nd, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i.i.i180.i, %weight.exit173.i
  %.pre.i.i.i148.pre439.i = phi ptr [ %i.ng, %._crit_edge.i.i.i180.i ], [ %.pre.i.i.i148.pre440.i, %weight.exit173.i ]
  %.pre.i.i.i.i205413.i = phi ptr [ %i.ng, %._crit_edge.i.i.i180.i ], [ %.pre.i.i.i.i205414.i, %weight.exit173.i ]
  %.pre.i.i.i175404.i = phi ptr [ %i.ng, %._crit_edge.i.i.i180.i ], [ %.pre.i.i.i175.i, %weight.exit173.i ] ; 2 uses
  %i.nr = zext nneg i32 %i.nb to i64              ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i175404.i, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i181.i = icmp eq ptr %i.nt, null
  br i1 %.not34.i.i.i181.i, label %bb.bd, label %weight_set.exit182.i

bb.bd:                                            ; preds = %bb.bc
  %i.nu = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.nv = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 4 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nr
  store ptr %i.nu, ptr %i.nw, align 8, !tbaa !34
  br label %weight_set.exit182.i

weight_set.exit182.i:                             ; preds = %bb.bd, %bb.bc
  %.pre.i.i.i148.pre438.i = phi ptr [ %.pre.i.i.i148.pre439.i, %bb.bc ], [ %i.nv, %bb.bd ]
  %.pre.i.i.i.i205426.i = phi ptr [ %.pre.i.i.i.i205413.i, %bb.bc ], [ %i.nv, %bb.bd ]
  %.pre.i.i.i175403.i = phi ptr [ %.pre.i.i.i175404.i, %bb.bc ], [ %i.nv, %bb.bd ] ; 2 uses
  %i.nx = phi ptr [ %i.nt, %bb.bc ], [ %i.nu, %bb.bd ]
  %i.ny = zext nneg i32 %i.nc to i64
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.ny
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !40
  store i32 %i.mz, ptr %i.oa, align 4, !tbaa !21
  %i.ob = add nsw i32 %.5289.i, 1
  br label %bb.bl

bb.be:                                            ; preds = %bb.aw
  br i1 %.not.i.i.i165.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oc = add nuw nsw i32 %i.lt, 1                ; 3 uses
  %i.od = shl nuw nsw i32 %i.oc, 3
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = tail call ptr @xrealloc(ptr noundef nonnull %.pre.i.i.i184.i, i64 noundef %i.oe) #20 ; 8 uses
  store ptr %i.of, ptr @commit_weight.3, align 8, !tbaa !18
  %i.og = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i185.i = icmp ugt i32 %i.og, %i.lt
  br i1 %.not331.i.i.i185.i, label %._crit_edge.i.i.i189.i, label %.lr.ph.i.i.i186.i.preheader

.lr.ph.i.i.i186.i.preheader:                      ; preds = %bb.bf
  %27 = sub nuw i32 %i.lt, %i.og                  ; 2 uses
  %28 = add nuw nsw i32 %27, 1                    ; 2 uses
  %min.iters.check282 = icmp samesign ult i32 %27, 3
  br i1 %min.iters.check282, label %.lr.ph.i.i.i186.i.preheader349, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph.i.i.i186.i.preheader
  %n.vec284 = and i32 %28, 262140                 ; 3 uses
  %i.oh = add i32 %i.og, %n.vec284
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i32 [ 0, %vector.ph283 ], [ %index.next287, %vector.body285 ] ; 2 uses
  %i.oi = add i32 %i.og, %index286
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.oj ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.ok, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.ol, align 8, !tbaa !34
  %index.next287 = add nuw i32 %index286, 4       ; 2 uses
  %i.om = icmp eq i32 %index.next287, %n.vec284
  br i1 %i.om, label %middle.block288, label %vector.body285, !llvm.loop !68

middle.block288:                                  ; preds = %vector.body285
  %cmp.n289 = icmp eq i32 %28, %n.vec284
  br i1 %cmp.n289, label %._crit_edge.i.i.i189.i, label %.lr.ph.i.i.i186.i.preheader349

.lr.ph.i.i.i186.i.preheader349:                   ; preds = %.lr.ph.i.i.i186.i.preheader, %middle.block288
  %.0302.i.i.i187.i.ph = phi i32 [ %i.og, %.lr.ph.i.i.i186.i.preheader ], [ %i.oh, %middle.block288 ]
  br label %.lr.ph.i.i.i186.i

.lr.ph.i.i.i186.i:                                ; preds = %.lr.ph.i.i.i186.i.preheader349, %.lr.ph.i.i.i186.i
  %.0302.i.i.i187.i = phi i32 [ %i.op, %.lr.ph.i.i.i186.i ], [ %.0302.i.i.i187.i.ph, %.lr.ph.i.i.i186.i.preheader349 ] ; 2 uses
  %i.on = zext i32 %.0302.i.i.i187.i to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.on
  store ptr null, ptr %i.oo, align 8, !tbaa !34
  %i.op = add i32 %.0302.i.i.i187.i, 1            ; 2 uses
  %.not33.i.i.i188.i = icmp ugt i32 %i.op, %i.lt
  br i1 %.not33.i.i.i188.i, label %._crit_edge.i.i.i189.i, label %.lr.ph.i.i.i186.i, !llvm.loop !69

._crit_edge.i.i.i189.i:                           ; preds = %.lr.ph.i.i.i186.i, %middle.block288, %bb.bf
  store i32 %i.oc, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i.i189.i, %bb.be
  %.pre.i.i.i148.pre437.i = phi ptr [ %i.of, %._crit_edge.i.i.i189.i ], [ %.pre.i.i.i148.pre442.i, %bb.be ]
  %.pre.i.i.i.i205412.i = phi ptr [ %i.of, %._crit_edge.i.i.i189.i ], [ %.pre.i.i.i.i205416.i, %bb.be ]
  %.pre.i.i.i175393.i = phi ptr [ %i.of, %._crit_edge.i.i.i189.i ], [ %.pre.i.i.i175395.i, %bb.be ]
  %.pre.i.i.i193370.i = phi ptr [ %i.of, %._crit_edge.i.i.i189.i ], [ %.pre.i.i.i166.i, %bb.be ]
  %i.oq = phi i32 [ %i.oc, %._crit_edge.i.i.i189.i ], [ %i.lv, %bb.be ]
  %i.or = phi ptr [ %i.of, %._crit_edge.i.i.i189.i ], [ %.pre.i.i.i184.i, %bb.be ]
  %i.os = zext nneg i32 %i.lt to i64              ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.os
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i190.i = icmp eq ptr %i.ou, null
  br i1 %.not34.i.i.i190.i, label %bb.bh, label %weight.exit191.i

bb.bh:                                            ; preds = %bb.bg
  %i.ov = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ow = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 5 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.os
  store ptr %i.ov, ptr %i.ox, align 8, !tbaa !34
  %.pre368.i = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  br label %weight.exit191.i

weight.exit191.i:                                 ; preds = %bb.bh, %bb.bg
  %.pre.i.i.i148.pre436.i = phi ptr [ %.pre.i.i.i148.pre437.i, %bb.bg ], [ %i.ow, %bb.bh ]
  %.pre.i.i.i.i205411.i = phi ptr [ %.pre.i.i.i.i205412.i, %bb.bg ], [ %i.ow, %bb.bh ]
  %.pre.i.i.i175392.i = phi ptr [ %.pre.i.i.i175393.i, %bb.bg ], [ %i.ow, %bb.bh ]
  %.pre.i.i.i193.i = phi ptr [ %.pre.i.i.i193370.i, %bb.bg ], [ %i.ow, %bb.bh ] ; 2 uses
  %i.oy = phi i32 [ %i.oq, %bb.bg ], [ %.pre368.i, %bb.bh ]
  %i.oz = phi ptr [ %i.ou, %bb.bg ], [ %i.ov, %bb.bh ]
  %i.pa = zext nneg i32 %i.lu to i64
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !40
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !21
  %.283.val.i = load ptr, ptr %.283287.i, align 8, !tbaa !22
  %i.pe = getelementptr i8, ptr %.283.val.i, i64 72
  %.283.val.val.i = load i32, ptr %i.pe, align 8, !tbaa !28 ; 2 uses
  %i.pf = udiv i32 %.283.val.val.i, 65532         ; 6 uses
  %i.pg = urem i32 %.283.val.val.i, 65532
  %.not.i.i.i192.i = icmp ugt i32 %i.oy, %i.pf
  br i1 %.not.i.i.i192.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %weight.exit191.i
  %i.ph = add nuw nsw i32 %i.pf, 1                ; 2 uses
  %i.pi = shl nuw nsw i32 %i.ph, 3
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i193.i, i64 noundef %i.pj) #20 ; 7 uses
  store ptr %i.pk, ptr @commit_weight.3, align 8, !tbaa !18
  %i.pl = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i194.i = icmp ugt i32 %i.pl, %i.pf
  br i1 %.not331.i.i.i194.i, label %._crit_edge.i.i.i198.i, label %.lr.ph.i.i.i195.i.preheader

.lr.ph.i.i.i195.i.preheader:                      ; preds = %bb.bi
  %29 = sub nuw i32 %i.pf, %i.pl                  ; 2 uses
  %30 = add nuw nsw i32 %29, 1                    ; 2 uses
  %min.iters.check272 = icmp samesign ult i32 %29, 3
  br i1 %min.iters.check272, label %.lr.ph.i.i.i195.i.preheader348, label %vector.ph273

vector.ph273:                                     ; preds = %.lr.ph.i.i.i195.i.preheader
  %n.vec274 = and i32 %30, 262140                 ; 3 uses
  %i.pm = add i32 %i.pl, %n.vec274
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i32 [ 0, %vector.ph273 ], [ %index.next277, %vector.body275 ] ; 2 uses
  %i.pn = add i32 %i.pl, %index276
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.po ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.pp, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.pq, align 8, !tbaa !34
  %index.next277 = add nuw i32 %index276, 4       ; 2 uses
  %i.pr = icmp eq i32 %index.next277, %n.vec274
  br i1 %i.pr, label %middle.block278, label %vector.body275, !llvm.loop !70

middle.block278:                                  ; preds = %vector.body275
  %cmp.n279 = icmp eq i32 %30, %n.vec274
  br i1 %cmp.n279, label %._crit_edge.i.i.i198.i, label %.lr.ph.i.i.i195.i.preheader348

.lr.ph.i.i.i195.i.preheader348:                   ; preds = %.lr.ph.i.i.i195.i.preheader, %middle.block278
  %.0302.i.i.i196.i.ph = phi i32 [ %i.pl, %.lr.ph.i.i.i195.i.preheader ], [ %i.pm, %middle.block278 ]
  br label %.lr.ph.i.i.i195.i

.lr.ph.i.i.i195.i:                                ; preds = %.lr.ph.i.i.i195.i.preheader348, %.lr.ph.i.i.i195.i
  %.0302.i.i.i196.i = phi i32 [ %i.pu, %.lr.ph.i.i.i195.i ], [ %.0302.i.i.i196.i.ph, %.lr.ph.i.i.i195.i.preheader348 ] ; 2 uses
  %i.ps = zext i32 %.0302.i.i.i196.i to i64
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.ps
  store ptr null, ptr %i.pt, align 8, !tbaa !34
  %i.pu = add i32 %.0302.i.i.i196.i, 1            ; 2 uses
  %.not33.i.i.i197.i = icmp ugt i32 %i.pu, %i.pf
  br i1 %.not33.i.i.i197.i, label %._crit_edge.i.i.i198.i, label %.lr.ph.i.i.i195.i, !llvm.loop !71

._crit_edge.i.i.i198.i:                           ; preds = %.lr.ph.i.i.i195.i, %middle.block278, %bb.bi
  store i32 %i.ph, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i.i.i198.i, %weight.exit191.i
  %.pre.i.i.i148.pre435.i = phi ptr [ %i.pk, %._crit_edge.i.i.i198.i ], [ %.pre.i.i.i148.pre436.i, %weight.exit191.i ]
  %.pre.i.i.i.i205410.i = phi ptr [ %i.pk, %._crit_edge.i.i.i198.i ], [ %.pre.i.i.i.i205411.i, %weight.exit191.i ]
  %.pre.i.i.i175391.i = phi ptr [ %i.pk, %._crit_edge.i.i.i198.i ], [ %.pre.i.i.i175392.i, %weight.exit191.i ]
  %.pre.i.i.i193380.i = phi ptr [ %i.pk, %._crit_edge.i.i.i198.i ], [ %.pre.i.i.i193.i, %weight.exit191.i ] ; 2 uses
  %i.pv = zext nneg i32 %i.pf to i64              ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i193380.i, i64 %i.pv
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i199.i = icmp eq ptr %i.px, null
  br i1 %.not34.i.i.i199.i, label %bb.bk, label %weight_set.exit200.i

bb.bk:                                            ; preds = %bb.bj
  %i.py = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.pz = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 5 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.pv
  store ptr %i.py, ptr %i.qa, align 8, !tbaa !34
  br label %weight_set.exit200.i

weight_set.exit200.i:                             ; preds = %bb.bk, %bb.bj
  %.pre.i.i.i148.pre434.i = phi ptr [ %.pre.i.i.i148.pre435.i, %bb.bj ], [ %i.pz, %bb.bk ]
  %.pre.i.i.i.i205409.i = phi ptr [ %.pre.i.i.i.i205410.i, %bb.bj ], [ %i.pz, %bb.bk ]
  %.pre.i.i.i175390.i = phi ptr [ %.pre.i.i.i175391.i, %bb.bj ], [ %i.pz, %bb.bk ]
  %.pre.i.i.i193379.i = phi ptr [ %.pre.i.i.i193380.i, %bb.bj ], [ %i.pz, %bb.bk ]
  %i.qb = phi ptr [ %i.px, %bb.bj ], [ %i.py, %bb.bk ]
  %i.qc = zext nneg i32 %i.pg to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !40
  store i32 %i.pd, ptr %i.qe, align 4, !tbaa !21
  br label %bb.bl

bb.bl:                                            ; preds = %weight_set.exit200.i, %weight_set.exit182.i
  %.pre.i.i.i148.pre433.i = phi ptr [ %.pre.i.i.i148.pre434.i, %weight_set.exit200.i ], [ %.pre.i.i.i148.pre438.i, %weight_set.exit182.i ] ; 3 uses
  %.pre.i.i.i.i205.i = phi ptr [ %.pre.i.i.i.i205409.i, %weight_set.exit200.i ], [ %.pre.i.i.i.i205426.i, %weight_set.exit182.i ] ; 4 uses
  %.pre.i.i.i175402.i = phi ptr [ %.pre.i.i.i175390.i, %weight_set.exit200.i ], [ %.pre.i.i.i175403.i, %weight_set.exit182.i ] ; 2 uses
  %.pre.i.i.i193378.i = phi ptr [ %.pre.i.i.i193379.i, %weight_set.exit200.i ], [ %.pre.i.i.i175403.i, %weight_set.exit182.i ] ; 6 uses
  %.6.i = phi i32 [ %.5289.i, %weight_set.exit200.i ], [ %i.ob, %weight_set.exit182.i ] ; 3 uses
  br i1 %.not92.i, label %bb.bm, label %approx_halfway.exit216.thread.i

bb.bm:                                            ; preds = %bb.bl
  %.283.val108.i = load ptr, ptr %.283287.i, align 8, !tbaa !22 ; 2 uses
  %i.qf = load i64, ptr %.283.val108.i, align 8
  %i.qg = and i64 %i.qf, 17179869184
  %.not.i201.i = icmp eq i64 %i.qg, 0
  br i1 %.not.i201.i, label %bb.bn, label %approx_halfway.exit216.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.qh = getelementptr i8, ptr %.283.val108.i, i64 72
  %.val.val.i203.i = load i32, ptr %i.qh, align 8, !tbaa !28 ; 2 uses
  %i.qi = udiv i32 %.val.val.i203.i, 65532        ; 6 uses
  %i.qj = urem i32 %.val.val.i203.i, 65532
  %i.qk = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i.i204.i = icmp ugt i32 %i.qk, %i.qi
  br i1 %.not.i.i.i.i204.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ql = add nuw nsw i32 %i.qi, 1                ; 2 uses
  %i.qm = shl nuw nsw i32 %i.ql, 3
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i.i205.i, i64 noundef %i.qn) #20 ; 5 uses
  store ptr %i.qo, ptr @commit_weight.3, align 8, !tbaa !18
  %i.qp = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i.i206.i = icmp ugt i32 %i.qp, %i.qi
  br i1 %.not331.i.i.i.i206.i, label %._crit_edge.i.i.i.i210.i, label %.lr.ph.i.i.i.i207.i.preheader

.lr.ph.i.i.i.i207.i.preheader:                    ; preds = %bb.bo
  %31 = sub nuw i32 %i.qi, %i.qp                  ; 2 uses
  %32 = add nuw nsw i32 %31, 1                    ; 2 uses
  %min.iters.check242 = icmp samesign ult i32 %31, 3
  br i1 %min.iters.check242, label %.lr.ph.i.i.i.i207.i.preheader345, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph.i.i.i.i207.i.preheader
  %n.vec244 = and i32 %32, 262140                 ; 3 uses
  %i.qq = add i32 %i.qp, %n.vec244
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph243
  %index246 = phi i32 [ 0, %vector.ph243 ], [ %index.next247, %vector.body245 ] ; 2 uses
  %i.qr = add i32 %i.qp, %index246
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.qs ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.qt, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.qu, align 8, !tbaa !34
  %index.next247 = add nuw i32 %index246, 4       ; 2 uses
  %i.qv = icmp eq i32 %index.next247, %n.vec244
  br i1 %i.qv, label %middle.block248, label %vector.body245, !llvm.loop !72

middle.block248:                                  ; preds = %vector.body245
  %cmp.n249 = icmp eq i32 %32, %n.vec244
  br i1 %cmp.n249, label %._crit_edge.i.i.i.i210.i, label %.lr.ph.i.i.i.i207.i.preheader345

.lr.ph.i.i.i.i207.i.preheader345:                 ; preds = %.lr.ph.i.i.i.i207.i.preheader, %middle.block248
  %.0302.i.i.i.i208.i.ph = phi i32 [ %i.qp, %.lr.ph.i.i.i.i207.i.preheader ], [ %i.qq, %middle.block248 ]
  br label %.lr.ph.i.i.i.i207.i

.lr.ph.i.i.i.i207.i:                              ; preds = %.lr.ph.i.i.i.i207.i.preheader345, %.lr.ph.i.i.i.i207.i
  %.0302.i.i.i.i208.i = phi i32 [ %i.qy, %.lr.ph.i.i.i.i207.i ], [ %.0302.i.i.i.i208.i.ph, %.lr.ph.i.i.i.i207.i.preheader345 ] ; 2 uses
  %i.qw = zext i32 %.0302.i.i.i.i208.i to i64
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.qw
  store ptr null, ptr %i.qx, align 8, !tbaa !34
  %i.qy = add i32 %.0302.i.i.i.i208.i, 1          ; 2 uses
  %.not33.i.i.i.i209.i = icmp ugt i32 %i.qy, %i.qi
  br i1 %.not33.i.i.i.i209.i, label %._crit_edge.i.i.i.i210.i, label %.lr.ph.i.i.i.i207.i, !llvm.loop !73

._crit_edge.i.i.i.i210.i:                         ; preds = %.lr.ph.i.i.i.i207.i, %middle.block248, %bb.bo
  store i32 %i.ql, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i210.i, %bb.bn
  %.pre.i.i.i148.pre432.i = phi ptr [ %i.qo, %._crit_edge.i.i.i.i210.i ], [ %.pre.i.i.i148.pre433.i, %bb.bn ]
  %.pre.i.i.i.i205424.i = phi ptr [ %i.qo, %._crit_edge.i.i.i.i210.i ], [ %.pre.i.i.i.i205.i, %bb.bn ] ; 2 uses
  %i.qz = zext nneg i32 %i.qi to i64              ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i205424.i, i64 %i.qz
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i.i211.i = icmp eq ptr %i.rb, null
  br i1 %.not34.i.i.i.i211.i, label %bb.bq, label %weight.exit.i212.i

bb.bq:                                            ; preds = %bb.bp
  %i.rc = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.rd = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 3 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.qz
  store ptr %i.rc, ptr %i.re, align 8, !tbaa !34
  br label %weight.exit.i212.i

weight.exit.i212.i:                               ; preds = %bb.bq, %bb.bp
  %.pre.i.i.i148.pre431.i = phi ptr [ %.pre.i.i.i148.pre432.i, %bb.bp ], [ %i.rd, %bb.bq ]
  %.pre.i.i.i.i205423.i = phi ptr [ %.pre.i.i.i.i205424.i, %bb.bp ], [ %i.rd, %bb.bq ] ; 5 uses
  %i.rf = phi ptr [ %i.rb, %bb.bp ], [ %i.rc, %bb.bq ]
  %i.rg = zext nneg i32 %i.qj to i64
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %i.rg
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !40
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !21
  %i.rk = shl nsw i32 %i.rj, 1
  %i.rl = sub nsw i32 %i.rk, %.2                  ; 2 uses
  %i.rm = add i32 %i.rl, 1
  %switch.i214.i = icmp ult i32 %i.rm, 3
  %i.rn = tail call i32 @llvm.abs.i32(i32 %i.rl, i1 true)
  %.not261.i = icmp slt i32 %i.rn, %i.eu
  %or.cond293.i = select i1 %switch.i214.i, i1 true, i1 %.not261.i
  br i1 %or.cond293.i, label %do_find_bisection.exit.thread.thread, label %approx_halfway.exit216.thread.i

approx_halfway.exit216.thread.i:                  ; preds = %bb.av, %bb.au, %weight.exit.i212.i, %bb.bm, %bb.bl, %bb.ap, %weight.exit155.i
  %.pre.i.i.i148.pre445.i = phi ptr [ %.pre.i.i.i148.pre433.i, %bb.bl ], [ %.pre.i.i.i148.pre446.i, %weight.exit155.i ], [ %.pre.i.i.i148.pre433.i, %bb.bm ], [ %.pre.i.i.i148.pre431.i, %weight.exit.i212.i ], [ %.pre.i.i.i148.pre446.i, %bb.ap ], [ %.pre.i.i.i148.pre430.i, %bb.au ], [ %.pre.i.i.i148.pre430.i, %bb.av ] ; 6 uses
  %.pre.i.i.i.i205422.i = phi ptr [ %.pre.i.i.i.i205.i, %bb.bl ], [ %.pre.i.i.i.i205419.i, %weight.exit155.i ], [ %.pre.i.i.i.i205.i, %bb.bm ], [ %.pre.i.i.i.i205423.i, %weight.exit.i212.i ], [ %.pre.i.i.i.i205419.i, %bb.ap ], [ %.pre.i.i.i.i205408.i, %bb.au ], [ %.pre.i.i.i.i205408.i, %bb.av ]
  %.pre.i.i.i175401.i = phi ptr [ %.pre.i.i.i175402.i, %bb.bl ], [ %.pre.i.i.i175398.i, %weight.exit155.i ], [ %.pre.i.i.i175402.i, %bb.bm ], [ %.pre.i.i.i.i205423.i, %weight.exit.i212.i ], [ %.pre.i.i.i175398.i, %bb.ap ], [ %.pre.i.i.i175389.i, %bb.au ], [ %.pre.i.i.i175389.i, %bb.av ]
  %.pre.i.i.i193377.i = phi ptr [ %.pre.i.i.i193378.i, %bb.bl ], [ %.pre.i.i.i193374.i, %weight.exit155.i ], [ %.pre.i.i.i193378.i, %bb.bm ], [ %.pre.i.i.i.i205423.i, %weight.exit.i212.i ], [ %.pre.i.i.i193374.i, %bb.ap ], [ %.pre.i.i.i193369.i, %bb.au ], [ %.pre.i.i.i193369.i, %bb.av ]
  %.pre.i.i.i157360.i = phi ptr [ %.pre.i.i.i193378.i, %bb.bl ], [ %.pre.i.i.i157361.i, %weight.exit155.i ], [ %.pre.i.i.i193378.i, %bb.bm ], [ %.pre.i.i.i.i205423.i, %weight.exit.i212.i ], [ %.pre.i.i.i157361.i, %bb.ap ], [ %.pre.i.i.i157354.i, %bb.au ], [ %.pre.i.i.i157354.i, %bb.av ]
  %.pre.i.i.i148343.i = phi ptr [ %.pre.i.i.i193378.i, %bb.bl ], [ %.pre.i.i.i148344.i, %weight.exit155.i ], [ %.pre.i.i.i193378.i, %bb.bm ], [ %.pre.i.i.i.i205423.i, %weight.exit.i212.i ], [ %.pre.i.i.i148344.i, %bb.ap ], [ %.pre.i.i.i148341.i, %bb.au ], [ %.pre.i.i.i148341.i, %bb.av ]
  %.7.ph.i = phi i32 [ %.6.i, %bb.bl ], [ %.5289.i, %weight.exit155.i ], [ %.6.i, %bb.bm ], [ %.6.i, %weight.exit.i212.i ], [ %.5289.i, %bb.ap ], [ %.5289.i, %bb.au ], [ %.5289.i, %bb.av ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.283287.i, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !25 ; 2 uses
  %.not88.i = icmp eq ptr %i.rp, null
  br i1 %.not88.i, label %..loopexit_crit_edge.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %approx_halfway.exit216.thread.i, %..loopexit_crit_edge.i
  %.pre.i.i.i.i205421.i.be = phi ptr [ %.pre.i.i.i.i205422.i, %approx_halfway.exit216.thread.i ], [ %.pre.i.i.i148.pre445.i, %..loopexit_crit_edge.i ]
  %.pre.i.i.i175400.i.be = phi ptr [ %.pre.i.i.i175401.i, %approx_halfway.exit216.thread.i ], [ %.pre.i.i.i148.pre445.i, %..loopexit_crit_edge.i ]
  %.pre.i.i.i193376.i.be = phi ptr [ %.pre.i.i.i193377.i, %approx_halfway.exit216.thread.i ], [ %.pre.i.i.i148.pre445.i, %..loopexit_crit_edge.i ]
  %.pre.i.i.i157359.i.be = phi ptr [ %.pre.i.i.i157360.i, %approx_halfway.exit216.thread.i ], [ %.pre.i.i.i148.pre445.i, %..loopexit_crit_edge.i ]
  %.pre.i.i.i148.i.be = phi ptr [ %.pre.i.i.i148343.i, %approx_halfway.exit216.thread.i ], [ %.pre.i.i.i148.pre445.i, %..loopexit_crit_edge.i ]
  %.283287.i.be = phi ptr [ %i.rp, %approx_halfway.exit216.thread.i ], [ %.037.lcssa152, %..loopexit_crit_edge.i ]
  br label %.preheader.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i, %.preheader263.._crit_edge_crit_edge.i
  %.037.lcssa152164 = phi ptr [ %.037.lcssa152165, %.preheader263.._crit_edge_crit_edge.i ], [ %.037.lcssa152, %..loopexit_crit_edge.i ] ; 7 uses
  %.0.lcssa154162 = phi i32 [ %.0.lcssa154163, %.preheader263.._crit_edge_crit_edge.i ], [ %.2, %..loopexit_crit_edge.i ] ; 3 uses
  %i.rq = phi ptr [ %i.er, %.preheader263.._crit_edge_crit_edge.i ], [ %i.o, %..loopexit_crit_edge.i ] ; 4 uses
  %.not273.i155160 = phi i1 [ %.not273.i155161, %.preheader263.._crit_edge_crit_edge.i ], [ false, %..loopexit_crit_edge.i ] ; 2 uses
  %.pre-phi.i = phi i32 [ %.pre460.i, %.preheader263.._crit_edge_crit_edge.i ], [ %i.et, %..loopexit_crit_edge.i ]
  %.not87.i = icmp eq i32 %.pre-phi.i, 0
  br i1 %.not87.i, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %._crit_edge.i
  br i1 %.not273.i155160, label %do_find_bisection.exit.thread65, label %.lr.ph.i217.i

.lr.ph.i217.i:                                    ; preds = %bb.br, %bb.bw
  %.027.i.i = phi ptr [ %i.tb, %bb.bw ], [ %.037.lcssa152164, %bb.br ] ; 3 uses
  %.01726.i.i = phi i32 [ %.2.i218.i, %bb.bw ], [ -1, %bb.br ] ; 3 uses
  %.01825.i.i = phi ptr [ %.220.i.i, %bb.bw ], [ %.037.lcssa152164, %bb.br ] ; 2 uses
  %i.rr = load ptr, ptr %.027.i.i, align 8, !tbaa !22 ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8
  %i.rt = and i64 %i.rs, 17179869184
  %.not23.i.i = icmp eq i64 %i.rt, 0
  br i1 %.not23.i.i, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %.lr.ph.i217.i
  %i.ru = getelementptr i8, ptr %i.rr, i64 72
  %.0.val.val.i.i = load i32, ptr %i.ru, align 8, !tbaa !28 ; 2 uses
  %i.rv = udiv i32 %.0.val.val.i.i, 65532         ; 6 uses
  %i.rw = urem i32 %.0.val.val.i.i, 65532
  %i.rx = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i.i220.i = icmp ugt i32 %i.rx, %i.rv
  %.pre.i.i.i.i221.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  br i1 %.not.i.i.i.i220.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ry = add nuw nsw i32 %i.rv, 1                ; 2 uses
  %i.rz = shl nuw nsw i32 %i.ry, 3
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i.i221.i, i64 noundef %i.sa) #20 ; 4 uses
  store ptr %i.sb, ptr @commit_weight.3, align 8, !tbaa !18
  %i.sc = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i.i222.i = icmp ugt i32 %i.sc, %i.rv
  br i1 %.not331.i.i.i.i222.i, label %._crit_edge.i.i.i.i226.i, label %.lr.ph.i.i.i.i223.i.preheader

.lr.ph.i.i.i.i223.i.preheader:                    ; preds = %bb.bt
  %33 = sub nuw i32 %i.rv, %i.sc                  ; 2 uses
  %34 = add nuw nsw i32 %33, 1                    ; 2 uses
  %min.iters.check322 = icmp samesign ult i32 %33, 3
  br i1 %min.iters.check322, label %.lr.ph.i.i.i.i223.i.preheader342, label %vector.ph323

vector.ph323:                                     ; preds = %.lr.ph.i.i.i.i223.i.preheader
  %n.vec324 = and i32 %34, 262140                 ; 3 uses
  %i.sd = add i32 %i.sc, %n.vec324
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i32 [ 0, %vector.ph323 ], [ %index.next327, %vector.body325 ] ; 2 uses
  %i.se = add i32 %i.sc, %index326
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.sf ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.sg, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.sh, align 8, !tbaa !34
  %index.next327 = add nuw i32 %index326, 4       ; 2 uses
  %i.si = icmp eq i32 %index.next327, %n.vec324
  br i1 %i.si, label %middle.block328, label %vector.body325, !llvm.loop !75

middle.block328:                                  ; preds = %vector.body325
  %cmp.n329 = icmp eq i32 %34, %n.vec324
  br i1 %cmp.n329, label %._crit_edge.i.i.i.i226.i, label %.lr.ph.i.i.i.i223.i.preheader342

.lr.ph.i.i.i.i223.i.preheader342:                 ; preds = %.lr.ph.i.i.i.i223.i.preheader, %middle.block328
  %.0302.i.i.i.i224.i.ph = phi i32 [ %i.sc, %.lr.ph.i.i.i.i223.i.preheader ], [ %i.sd, %middle.block328 ]
  br label %.lr.ph.i.i.i.i223.i

.lr.ph.i.i.i.i223.i:                              ; preds = %.lr.ph.i.i.i.i223.i.preheader342, %.lr.ph.i.i.i.i223.i
  %.0302.i.i.i.i224.i = phi i32 [ %i.sl, %.lr.ph.i.i.i.i223.i ], [ %.0302.i.i.i.i224.i.ph, %.lr.ph.i.i.i.i223.i.preheader342 ] ; 2 uses
  %i.sj = zext i32 %.0302.i.i.i.i224.i to i64
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.sj
  store ptr null, ptr %i.sk, align 8, !tbaa !34
  %i.sl = add i32 %.0302.i.i.i.i224.i, 1          ; 2 uses
  %.not33.i.i.i.i225.i = icmp ugt i32 %i.sl, %i.rv
  br i1 %.not33.i.i.i.i225.i, label %._crit_edge.i.i.i.i226.i, label %.lr.ph.i.i.i.i223.i, !llvm.loop !76

._crit_edge.i.i.i.i226.i:                         ; preds = %.lr.ph.i.i.i.i223.i, %middle.block328, %bb.bt
  store i32 %i.ry, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i226.i, %bb.bs
  %i.sm = phi ptr [ %i.sb, %._crit_edge.i.i.i.i226.i ], [ %.pre.i.i.i.i221.i, %bb.bs ]
  %i.sn = zext nneg i32 %i.rv to i64              ; 2 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sn
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i.i227.i = icmp eq ptr %i.sp, null
  br i1 %.not34.i.i.i.i227.i, label %bb.bv, label %weight.exit.i228.i

bb.bv:                                            ; preds = %bb.bu
  %i.sq = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.sr = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.sn
  store ptr %i.sq, ptr %i.ss, align 8, !tbaa !34
  br label %weight.exit.i228.i

weight.exit.i228.i:                               ; preds = %bb.bv, %bb.bu
  %i.st = phi ptr [ %i.sp, %bb.bu ], [ %i.sq, %bb.bv ]
  %i.su = zext nneg i32 %i.rw to i64
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.su
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !40
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !21 ; 2 uses
  %i.sy = sub nsw i32 %.0.lcssa154162, %i.sx
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.sy, i32 %i.sx) ; 2 uses
  %i.sz = icmp sgt i32 %spec.select.i.i, %.01726.i.i
  %.119.i.i = select i1 %i.sz, ptr %.027.i.i, ptr %.01825.i.i
  %.1.i.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i.i, i32 %.01726.i.i)
  br label %bb.bw

bb.bw:                                            ; preds = %weight.exit.i228.i, %.lr.ph.i217.i
  %.220.i.i = phi ptr [ %.119.i.i, %weight.exit.i228.i ], [ %.01825.i.i, %.lr.ph.i217.i ] ; 2 uses
  %.2.i218.i = phi i32 [ %.1.i.i, %weight.exit.i228.i ], [ %.01726.i.i, %.lr.ph.i217.i ]
  %i.ta = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !25 ; 2 uses
  %.not.i219.i = icmp eq ptr %i.tb, null
  br i1 %.not.i219.i, label %do_find_bisection.exit, label %.lr.ph.i217.i, !llvm.loop !77

bb.bx:                                            ; preds = %._crit_edge.i
  %i.tc = sext i32 %.0.lcssa154162 to i64
  %i.td = tail call ptr @xcalloc(i64 noundef %i.tc, i64 noundef 16) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.read_bisect_paths.str, i64 24, i1 false)
  br i1 %.not273.i155160, label %best_bisection_sorted.exit.i, label %.lr.ph.i229.i

.lr.ph.i229.i:                                    ; preds = %bb.bx, %bb.cc
  %.051.i.i = phi ptr [ %i.us, %bb.cc ], [ %.037.lcssa152164, %bb.bx ] ; 3 uses
  %.04050.i.i = phi i32 [ %.141.i.i, %bb.cc ], [ 0, %bb.bx ] ; 3 uses
  %i.te = load ptr, ptr %.051.i.i, align 8, !tbaa !22 ; 2 uses
  %i.tf = load i64, ptr %i.te, align 8
  %i.tg = and i64 %i.tf, 17179869184
  %.not47.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not47.i.i, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %.lr.ph.i229.i
  %i.th = getelementptr i8, ptr %i.te, i64 72
  %.0.val.val.i232.i = load i32, ptr %i.th, align 8, !tbaa !28 ; 2 uses
  %i.ti = udiv i32 %.0.val.val.i232.i, 65532      ; 6 uses
  %i.tj = urem i32 %.0.val.val.i232.i, 65532
  %i.tk = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i.i233.i = icmp ugt i32 %i.tk, %i.ti
  %.pre.i.i.i.i234.i = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  br i1 %.not.i.i.i.i233.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.tl = add nuw nsw i32 %i.ti, 1                ; 2 uses
  %i.tm = shl nuw nsw i32 %i.tl, 3
  %i.tn = zext nneg i32 %i.tm to i64
  %i.to = tail call ptr @xrealloc(ptr noundef %.pre.i.i.i.i234.i, i64 noundef %i.tn) #20 ; 4 uses
  store ptr %i.to, ptr @commit_weight.3, align 8, !tbaa !18
  %i.tp = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i.i235.i = icmp ugt i32 %i.tp, %i.ti
  br i1 %.not331.i.i.i.i235.i, label %._crit_edge.i.i.i.i239.i, label %.lr.ph.i.i.i.i236.i.preheader

.lr.ph.i.i.i.i236.i.preheader:                    ; preds = %bb.bz
  %35 = sub nuw i32 %i.ti, %i.tp                  ; 2 uses
  %36 = add nuw nsw i32 %35, 1                    ; 2 uses
  %min.iters.check312 = icmp samesign ult i32 %35, 3
  br i1 %min.iters.check312, label %.lr.ph.i.i.i.i236.i.preheader343, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph.i.i.i.i236.i.preheader
  %n.vec314 = and i32 %36, 262140                 ; 3 uses
  %i.tq = add i32 %i.tp, %n.vec314
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i32 [ 0, %vector.ph313 ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.tr = add i32 %i.tp, %index316
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.tt, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.tu, align 8, !tbaa !34
  %index.next317 = add nuw i32 %index316, 4       ; 2 uses
  %i.tv = icmp eq i32 %index.next317, %n.vec314
  br i1 %i.tv, label %middle.block318, label %vector.body315, !llvm.loop !78

middle.block318:                                  ; preds = %vector.body315
  %cmp.n319 = icmp eq i32 %36, %n.vec314
  br i1 %cmp.n319, label %._crit_edge.i.i.i.i239.i, label %.lr.ph.i.i.i.i236.i.preheader343

.lr.ph.i.i.i.i236.i.preheader343:                 ; preds = %.lr.ph.i.i.i.i236.i.preheader, %middle.block318
  %.0302.i.i.i.i237.i.ph = phi i32 [ %i.tp, %.lr.ph.i.i.i.i236.i.preheader ], [ %i.tq, %middle.block318 ]
  br label %.lr.ph.i.i.i.i236.i

.lr.ph.i.i.i.i236.i:                              ; preds = %.lr.ph.i.i.i.i236.i.preheader343, %.lr.ph.i.i.i.i236.i
  %.0302.i.i.i.i237.i = phi i32 [ %i.ty, %.lr.ph.i.i.i.i236.i ], [ %.0302.i.i.i.i237.i.ph, %.lr.ph.i.i.i.i236.i.preheader343 ] ; 2 uses
  %i.tw = zext i32 %.0302.i.i.i.i237.i to i64
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.tw
  store ptr null, ptr %i.tx, align 8, !tbaa !34
  %i.ty = add i32 %.0302.i.i.i.i237.i, 1          ; 2 uses
  %.not33.i.i.i.i238.i = icmp ugt i32 %i.ty, %i.ti
  br i1 %.not33.i.i.i.i238.i, label %._crit_edge.i.i.i.i239.i, label %.lr.ph.i.i.i.i236.i, !llvm.loop !79

._crit_edge.i.i.i.i239.i:                         ; preds = %.lr.ph.i.i.i.i236.i, %middle.block318, %bb.bz
  store i32 %i.tl, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i239.i, %bb.by
  %i.tz = phi ptr [ %i.to, %._crit_edge.i.i.i.i239.i ], [ %.pre.i.i.i.i234.i, %bb.by ]
  %i.ua = zext nneg i32 %i.ti to i64              ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ua
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i.i240.i = icmp eq ptr %i.uc, null
  br i1 %.not34.i.i.i.i240.i, label %bb.cb, label %weight.exit.i241.i

bb.cb:                                            ; preds = %bb.ca
  %i.ud = tail call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.ue = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.ua
  store ptr %i.ud, ptr %i.uf, align 8, !tbaa !34
  br label %weight.exit.i241.i

weight.exit.i241.i:                               ; preds = %bb.cb, %bb.ca
  %i.ug = phi ptr [ %i.uc, %bb.ca ], [ %i.ud, %bb.cb ]
  %i.uh = zext nneg i32 %i.tj to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.uh
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !40
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !21 ; 2 uses
  %i.ul = sub nsw i32 %.0.lcssa154162, %i.uk
  %spec.select.i242.i = tail call i32 @llvm.smin.i32(i32 %i.ul, i32 %i.uk)
  %i.um = load ptr, ptr %.051.i.i, align 8, !tbaa !22
  %i.un = sext i32 %.04050.i.i to i64
  %i.uo = getelementptr inbounds [16 x i8], ptr %i.td, i64 %i.un ; 2 uses
  store ptr %i.um, ptr %i.uo, align 8, !tbaa !80
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store i32 %spec.select.i242.i, ptr %i.up, align 8, !tbaa !82
  %i.uq = add nsw i32 %.04050.i.i, 1
  br label %bb.cc

bb.cc:                                            ; preds = %weight.exit.i241.i, %.lr.ph.i229.i
  %.141.i.i = phi i32 [ %i.uq, %weight.exit.i241.i ], [ %.04050.i.i, %.lr.ph.i229.i ] ; 6 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 8
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !25 ; 2 uses
  %.not.i230.i = icmp eq ptr %i.us, null
  br i1 %.not.i230.i, label %._crit_edge.i.i, label %.lr.ph.i229.i, !llvm.loop !83

._crit_edge.i.i:                                  ; preds = %bb.cc
  %i.ut = icmp ugt i32 %.141.i.i, 1
  br i1 %i.ut, label %bb.cd, label %sane_qsort.exit.i.i

bb.cd:                                            ; preds = %._crit_edge.i.i
  %i.uu = sext i32 %.141.i.i to i64
  tail call void @qsort(ptr noundef %i.td, i64 noundef range(i64 -2147483648, 2147483648) %i.uu, i64 noundef 16, ptr noundef nonnull @compare_commit_dist) #20
  br label %sane_qsort.exit.i.i

sane_qsort.exit.i.i:                              ; preds = %bb.cd, %._crit_edge.i.i
  %i.uv = icmp sgt i32 %.141.i.i, 0
  br i1 %i.uv, label %.lr.ph54.i.i, label %._crit_edge55.i.i

.lr.ph54.i.i:                                     ; preds = %sane_qsort.exit.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ux = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.uy = add nsw i32 %.141.i.i, -1
  %i.uz = zext nneg i32 %i.uy to i64
  %wide.trip.count.i.i = zext nneg i32 %.141.i.i to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cj, %.lr.ph54.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph54.i.i ], [ %indvars.iv.next.i.i, %bb.cj ] ; 3 uses
  %.153.i.i = phi ptr [ %.037.lcssa152164, %.lr.ph54.i.i ], [ %.2.i231.i, %bb.cj ] ; 3 uses
  %i.va = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %indvars.iv.i.i ; 3 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !80
  store i64 0, ptr %i.uw, align 8, !tbaa !84
  %i.vc = load ptr, ptr %i.ux, align 8, !tbaa !87 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.vc, @strbuf_slopbuf
  br i1 %.not9.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i8 0, ptr %i.vc, align 1, !tbaa !88
  br label %strbuf_setlen.exit.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.vd = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !88
  %.not10.i.i.i = icmp eq i8 %i.vd, 0
  br i1 %.not10.i.i.i, label %strbuf_setlen.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit.i.i:                           ; preds = %bb.cg, %bb.cf
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !82
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.31, i32 noundef %i.vf) #20
  %i.vg = load ptr, ptr %i.ux, align 8, !tbaa !87
  call void @add_name_decoration(i32 noundef 0, ptr noundef %i.vg, ptr noundef %i.vb) #20
  %i.vh = load ptr, ptr %i.va, align 8, !tbaa !80
  store ptr %i.vh, ptr %.153.i.i, align 8, !tbaa !22
  %i.vi = icmp samesign ult i64 %indvars.iv.i.i, %i.uz
  br i1 %i.vi, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %strbuf_setlen.exit.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %.153.i.i, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !25
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %strbuf_setlen.exit.i.i
  %.2.i231.i = phi ptr [ %i.vk, %bb.ci ], [ %.153.i.i, %strbuf_setlen.exit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge55.i.i, label %bb.ce, !llvm.loop !89

._crit_edge55.i.i:                                ; preds = %bb.cj, %sane_qsort.exit.i.i
  %.1.lcssa.i.i = phi ptr [ %.037.lcssa152164, %sane_qsort.exit.i.i ], [ %.2.i231.i, %bb.cj ] ; 2 uses
  %.not46.i.i = icmp eq ptr %.1.lcssa.i.i, null
  br i1 %.not46.i.i, label %best_bisection_sorted.exit.i, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge55.i.i
  %i.vl = getelementptr inbounds nuw i8, ptr %.1.lcssa.i.i, i64 8 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !25
  call void @commit_list_free(ptr noundef %i.vm) #20
  store ptr null, ptr %i.vl, align 8, !tbaa !25
  br label %best_bisection_sorted.exit.i

best_bisection_sorted.exit.i:                     ; preds = %bb.ck, %._crit_edge55.i.i, %bb.bx
  call void @strbuf_release(ptr noundef nonnull %4) #20
  call void @free(ptr noundef %i.td) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %do_find_bisection.exit

do_find_bisection.exit:                           ; preds = %bb.bw, %best_bisection_sorted.exit.i
  %.3.i = phi ptr [ %.037.lcssa152164, %best_bisection_sorted.exit.i ], [ %.220.i.i, %bb.bw ] ; 3 uses
  %.not44 = icmp eq ptr %.3.i, null
  br i1 %.not44, label %do_find_bisection.exit.thread65, label %do_find_bisection.exit.thread

do_find_bisection.exit.thread:                    ; preds = %do_find_bisection.exit
  %.pre86 = and i32 %3, 1
  %i.vn = icmp eq i32 %.pre86, 0
  br i1 %i.vn, label %do_find_bisection.exit.thread.thread, label %bb.cl

do_find_bisection.exit.thread.thread:             ; preds = %weight.exit.i.i, %weight.exit.i212.i, %do_find_bisection.exit.thread
  %.3.i64170 = phi ptr [ %.3.i, %do_find_bisection.exit.thread ], [ %.283287.i, %weight.exit.i212.i ], [ %.182278.i, %weight.exit.i.i ]
  %.037.lcssa153169 = phi ptr [ %.037.lcssa152164, %do_find_bisection.exit.thread ], [ %.037.lcssa152, %weight.exit.i212.i ], [ %.138, %weight.exit.i.i ] ; 3 uses
  %i.vo = phi ptr [ %i.rq, %do_find_bisection.exit.thread ], [ %i.o, %weight.exit.i212.i ], [ %i.o, %weight.exit.i.i ]
  %i.vp = load ptr, ptr %.3.i64170, align 8, !tbaa !22
  store ptr %i.vp, ptr %.037.lcssa153169, align 8, !tbaa !22
  %i.vq = getelementptr inbounds nuw i8, ptr %.037.lcssa153169, i64 8 ; 2 uses
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !25
  call void @commit_list_free(ptr noundef %i.vr) #20
  store ptr null, ptr %i.vq, align 8, !tbaa !25
  br label %bb.cl

bb.cl:                                            ; preds = %do_find_bisection.exit.thread.thread, %do_find_bisection.exit.thread
  %i.vs = phi ptr [ %i.rq, %do_find_bisection.exit.thread ], [ %i.vo, %do_find_bisection.exit.thread.thread ]
  %.040 = phi ptr [ %.3.i, %do_find_bisection.exit.thread ], [ %.037.lcssa153169, %do_find_bisection.exit.thread.thread ] ; 2 uses
  %.040.val = load ptr, ptr %.040, align 8, !tbaa !22
  %i.vt = getelementptr i8, ptr %.040.val, i64 72
  %.040.val.val = load i32, ptr %i.vt, align 8, !tbaa !28 ; 2 uses
  %i.vu = udiv i32 %.040.val.val, 65532           ; 6 uses
  %i.vv = urem i32 %.040.val.val, 65532
  %i.vw = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i.i.i48 = icmp ugt i32 %i.vw, %i.vu
  %.pre.i.i.i49 = load ptr, ptr @commit_weight.3, align 8, !tbaa !18 ; 2 uses
  br i1 %.not.i.i.i48, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.vx = add nuw nsw i32 %i.vu, 1                ; 2 uses
  %i.vy = shl nuw nsw i32 %i.vx, 3
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = call ptr @xrealloc(ptr noundef %.pre.i.i.i49, i64 noundef %i.vz) #20 ; 4 uses
  store ptr %i.wa, ptr @commit_weight.3, align 8, !tbaa !18
  %i.wb = load i32, ptr @commit_weight.2, align 8, !tbaa !12 ; 5 uses
  %.not331.i.i.i50 = icmp ugt i32 %i.wb, %i.vu
  br i1 %.not331.i.i.i50, label %._crit_edge.i.i.i54, label %.lr.ph.i.i.i51.preheader

.lr.ph.i.i.i51.preheader:                         ; preds = %bb.cm
  %37 = sub nuw i32 %i.vu, %i.wb                  ; 2 uses
  %38 = add nuw nsw i32 %37, 1                    ; 2 uses
  %min.iters.check332 = icmp samesign ult i32 %37, 3
  br i1 %min.iters.check332, label %.lr.ph.i.i.i51.preheader341, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph.i.i.i51.preheader
  %n.vec334 = and i32 %38, 262140                 ; 3 uses
  %i.wc = add i32 %i.wb, %n.vec334
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i32 [ 0, %vector.ph333 ], [ %index.next337, %vector.body335 ] ; 2 uses
  %i.wd = add i32 %i.wb, %index336
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.we ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store <2 x ptr> splat (ptr null), ptr %i.wf, align 8, !tbaa !34
  store <2 x ptr> splat (ptr null), ptr %i.wg, align 8, !tbaa !34
  %index.next337 = add nuw i32 %index336, 4       ; 2 uses
  %i.wh = icmp eq i32 %index.next337, %n.vec334
  br i1 %i.wh, label %middle.block338, label %vector.body335, !llvm.loop !90

middle.block338:                                  ; preds = %vector.body335
  %cmp.n339 = icmp eq i32 %38, %n.vec334
  br i1 %cmp.n339, label %._crit_edge.i.i.i54, label %.lr.ph.i.i.i51.preheader341

.lr.ph.i.i.i51.preheader341:                      ; preds = %.lr.ph.i.i.i51.preheader, %middle.block338
  %.0302.i.i.i52.ph = phi i32 [ %i.wb, %.lr.ph.i.i.i51.preheader ], [ %i.wc, %middle.block338 ]
  br label %.lr.ph.i.i.i51

.lr.ph.i.i.i51:                                   ; preds = %.lr.ph.i.i.i51.preheader341, %.lr.ph.i.i.i51
  %.0302.i.i.i52 = phi i32 [ %i.wk, %.lr.ph.i.i.i51 ], [ %.0302.i.i.i52.ph, %.lr.ph.i.i.i51.preheader341 ] ; 2 uses
  %i.wi = zext i32 %.0302.i.i.i52 to i64
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.wi
  store ptr null, ptr %i.wj, align 8, !tbaa !34
  %i.wk = add i32 %.0302.i.i.i52, 1               ; 2 uses
  %.not33.i.i.i53 = icmp ugt i32 %i.wk, %i.vu
  br i1 %.not33.i.i.i53, label %._crit_edge.i.i.i54, label %.lr.ph.i.i.i51, !llvm.loop !91

._crit_edge.i.i.i54:                              ; preds = %.lr.ph.i.i.i51, %middle.block338, %bb.cm
  store i32 %i.vx, ptr @commit_weight.2, align 8, !tbaa !12
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i.i54, %bb.cl
  %i.wl = phi ptr [ %i.wa, %._crit_edge.i.i.i54 ], [ %.pre.i.i.i49, %bb.cl ]
  %i.wm = zext nneg i32 %i.vu to i64              ; 2 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.wm
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i.i55 = icmp eq ptr %i.wo, null
  br i1 %.not34.i.i.i55, label %bb.co, label %weight.exit

bb.co:                                            ; preds = %bb.cn
  %i.wp = call ptr @xcalloc(i64 noundef 65532, i64 noundef 8) #20 ; 2 uses
  %i.wq = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.wm
  store ptr %i.wp, ptr %i.wr, align 8, !tbaa !34
  br label %weight.exit

weight.exit:                                      ; preds = %bb.cn, %bb.co
  %i.ws = phi ptr [ %i.wo, %bb.cn ], [ %i.wp, %bb.co ]
  %i.wt = zext nneg i32 %i.vv to i64
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %i.wt
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !40
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !21
  store i32 %i.ww, ptr %1, align 4, !tbaa !21
  br label %do_find_bisection.exit.thread65

do_find_bisection.exit.thread65:                  ; preds = %bb.br, %weight.exit, %do_find_bisection.exit
  %i.wx = phi ptr [ %i.vs, %weight.exit ], [ %i.rq, %do_find_bisection.exit ], [ %i.rq, %bb.br ]
  %.141 = phi ptr [ %.040, %weight.exit ], [ null, %do_find_bisection.exit ], [ null, %bb.br ]
  store ptr %.141, ptr %0, align 8, !tbaa !19
  call void @free(ptr noundef %i.wx) #20
  %i.wy = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %.not.i57 = icmp eq i32 %i.wy, 0
  br i1 %.not.i57, label %clear_commit_weight.exit, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %do_find_bisection.exit.thread65
  %i.wz = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  %i.xa = load i32, ptr @commit_weight.2, align 8, !tbaa !12
  %i.xb = zext i32 %i.xa to i64
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i60, %.lr.ph.i58 ], [ 0, %.lr.ph.i58.preheader ] ; 2 uses
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %indvars.iv.i59
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !34
  call void @free(ptr noundef %i.xd) #20
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %i.xe = icmp samesign ult i64 %indvars.iv.next.i60, %i.xb
  br i1 %i.xe, label %.lr.ph.i58, label %clear_commit_weight.exit, !llvm.loop !92

clear_commit_weight.exit:                         ; preds = %.lr.ph.i58, %do_find_bisection.exit.thread65
  store i32 0, ptr @commit_weight.2, align 8, !tbaa !12
  %i.xf = load ptr, ptr @commit_weight.3, align 8, !tbaa !18
  call void @free(ptr noundef %i.xf) #20
  store ptr null, ptr @commit_weight.3, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @commit_list_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @filter_skipped(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !19
  store ptr null, ptr %1, align 8, !tbaa !19
  %.not = icmp eq ptr %4, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not49 = icmp eq ptr %3, null                  ; 4 uses
  br i1 %.not49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @skipped_revs, i64 8), align 8, !tbaa !93
  %.not50 = icmp eq i64 %i.b, 0
  br i1 %.not50, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not5162 = icmp eq ptr %0, null
  br i1 %.not5162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not52 = icmp eq i32 %2, 0
  br i1 %.not52, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.f
  %.03864.us.us = phi ptr [ %i.d, %bb.f ], [ %0, %.lr.ph.split.us ] ; 4 uses
  %.04063.us.us = phi ptr [ %i.c, %bb.f ], [ %1, %.lr.ph.split.us ]
  %i.c = getelementptr inbounds nuw i8, ptr %.03864.us.us, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !25
  %i.e = load ptr, ptr %.03864.us.us, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = tail call i32 @oid_array_lookup(ptr noundef nonnull @skipped_revs, ptr noundef nonnull %i.f) #20
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  store ptr %.03864.us.us, ptr %.04063.us.us, align 8, !tbaa !19
  %.not51.us.us = icmp eq ptr %i.d, null
  br i1 %.not51.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !96

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.m
  %.03565.us = phi ptr [ %.237.us, %bb.m ], [ %i.a, %.lr.ph.split.us ] ; 2 uses
  %.03864.us = phi ptr [ %i.j, %bb.m ], [ %0, %.lr.ph.split.us ] ; 5 uses
  %.04063.us = phi ptr [ %.242.us, %bb.m ], [ %1, %.lr.ph.split.us ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03864.us, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !25
  %i.k = load ptr, ptr %.03864.us, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = tail call i32 @oid_array_lookup(ptr noundef nonnull @skipped_revs, ptr noundef nonnull %i.l) #20
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = load i32, ptr %4, align 4, !tbaa !21
  %.not55.us = icmp eq i32 %i.o, 0                ; 2 uses
  br i1 %i.n, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split
  br i1 %.not55.us, label %.thread.loopexit84, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.03864.us, ptr %.03565.us, align 8, !tbaa !19
  br i1 %.not49, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i32, ptr %3, align 4, !tbaa !21
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %3, align 4, !tbaa !21
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph.split.us.split
  br i1 %.not55.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %4, align 4, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
