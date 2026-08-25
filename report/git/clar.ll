Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/clar?download=true
inline.NumInlined: 70
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.296 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.298 = private unnamed_addr constant [18 x i8] c"remove_duplicates\00", align 1
@.str.299 = private unnamed_addr constant [7 x i8] c"sort_u\00", align 1
@.str.300 = private unnamed_addr constant [19 x i8] c"remove_empty_items\00", align 1
@.str.301 = private unnamed_addr constant [32 x i8] c"unsorted_string_list_has_string\00", align 1
@.str.302 = private unnamed_addr constant [33 x i8] c"unsorted_string_list_delete_item\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.304 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.306 = private unnamed_addr constant [6 x i8] c"pushf\00", align 1
@.str.307 = private unnamed_addr constant [6 x i8] c"pushl\00", align 1
@.str.308 = private unnamed_addr constant [6 x i8] c"pushv\00", align 1
@.str.309 = private unnamed_addr constant [31 x i8] c"splice_just_initialized_strvec\00", align 1
@.str.310 = private unnamed_addr constant [34 x i8] c"splice_with_same_size_replacement\00", align 1
@.str.311 = private unnamed_addr constant [32 x i8] c"splice_with_smaller_replacement\00", align 1
@.str.312 = private unnamed_addr constant [31 x i8] c"splice_with_bigger_replacement\00", align 1
@.str.313 = private unnamed_addr constant [30 x i8] c"splice_with_empty_replacement\00", align 1
@.str.314 = private unnamed_addr constant [27 x i8] c"splice_with_empty_original\00", align 1
@.str.315 = private unnamed_addr constant [15 x i8] c"splice_at_tail\00", align 1
@.str.316 = private unnamed_addr constant [16 x i8] c"replace_at_head\00", align 1
@.str.317 = private unnamed_addr constant [16 x i8] c"replace_at_tail\00", align 1
@.str.318 = private unnamed_addr constant [19 x i8] c"replace_in_between\00", align 1
@.str.319 = private unnamed_addr constant [23 x i8] c"replace_with_substring\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"remove_at_head\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"remove_at_tail\00", align 1
@.str.322 = private unnamed_addr constant [18 x i8] c"remove_in_between\00", align 1
@.str.323 = private unnamed_addr constant [16 x i8] c"pop_empty_array\00", align 1
@.str.324 = private unnamed_addr constant [20 x i8] c"pop_non_empty_array\00", align 1
@.str.325 = private unnamed_addr constant [19 x i8] c"split_empty_string\00", align 1
@.str.326 = private unnamed_addr constant [18 x i8] c"split_single_item\00", align 1
@.str.327 = private unnamed_addr constant [21 x i8] c"split_multiple_items\00", align 1
@.str.328 = private unnamed_addr constant [22 x i8] c"split_whitespace_only\00", align 1
@.str.329 = private unnamed_addr constant [39 x i8] c"split_multiple_consecutive_whitespaces\00", align 1
@.str.330 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.331 = private unnamed_addr constant [12 x i8] c"empty_input\00", align 1
@.str.332 = private unnamed_addr constant [17 x i8] c"no_newline_start\00", align 1
@.str.333 = private unnamed_addr constant [14 x i8] c"newline_start\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"no_body_text\00", align 1
@.str.335 = private unnamed_addr constant [21 x i8] c"body_text_no_divider\00", align 1
@.str.336 = private unnamed_addr constant [26 x i8] c"body_no_divider_2nd_block\00", align 1
@.str.337 = private unnamed_addr constant [17 x i8] c"body_and_divider\00", align 1
@.str.338 = private unnamed_addr constant [21 x i8] c"non_trailer_in_block\00", align 1
@.str.339 = private unnamed_addr constant [22 x i8] c"too_many_non_trailers\00", align 1
@.str.340 = private unnamed_addr constant [32 x i8] c"one_non_trailer_no_git_trailers\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@.str.342 = private unnamed_addr constant [10 x i8] c"authority\00", align 1
@.str.343 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.344 = private unnamed_addr constant [19 x i8] c"port_normalization\00", align 1
@.str.345 = private unnamed_addr constant [15 x i8] c"general_escape\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c"high_bit\00", align 1
@.str.347 = private unnamed_addr constant [12 x i8] c"utf8_escape\00", align 1
@.str.348 = private unnamed_addr constant [14 x i8] c"username_pass\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.350 = private unnamed_addr constant [5 x i8] c"dots\00", align 1
@.str.351 = private unnamed_addr constant [12 x i8] c"equivalents\00", align 1
@.str.352 = private unnamed_addr constant [10 x i8] c"parse_scp\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"parse_url_form\00", align 1
@.str.354 = private unnamed_addr constant [32 x i8] c"parse_strips_query_and_fragment\00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"strnwidth_chinese\00", align 1
@.str.356 = private unnamed_addr constant [17 x i8] c"strwidth_chinese\00", align 1
@.str.357 = private unnamed_addr constant [26 x i8] c"strnwidth_japanese_korean\00", align 1
@.str.358 = private unnamed_addr constant [24 x i8] c"strnwidth_cjk_with_ansi\00", align 1
@.str.359 = private unnamed_addr constant [18 x i8] c"strbuf_utf8_align\00", align 1
@.str.360 = private unnamed_addr constant [52 x i8] c"Fatal error: a cleanup method raised an exception.\0A\00", align 1
@.str.361 = private unnamed_addr constant [16 x i8] c"  %d) Failure:\0A\00", align 1
@.str.362 = private unnamed_addr constant [17 x i8] c"%s::%s [%s:%lu]\0A\00", align 1
@.str.364 = private unnamed_addr constant [27 x i8] c"Failed to allocate error.\0A\00", align 1
@.str.365 = private unnamed_addr constant [31 x i8] c"Failed to compute description.\00", align 1
@.str.366 = private unnamed_addr constant [27 x i8] c"Failed to allocate buffer.\00", align 1
@__func__.clar_tempdir_shutdown = private unnamed_addr constant [22 x i8] c"clar_tempdir_shutdown\00", align 1
@.str.367 = private unnamed_addr constant [34 x i8] c"Function call failed: chdir(\22..\22)\00", align 1
@.str.368 = private unnamed_addr constant [31 x i8] c"Failed to build tempdir path.\0A\00", align 1
@.str.369 = private unnamed_addr constant [41 x i8] c"Failed to change into tempdir '%s': %s.\0A\00", align 1
@__const.build_tempdir_path.path_tail = private unnamed_addr constant [16 x i8] c"clar_tmp_XXXXXX\00", align 16
@.str.370 = private unnamed_addr constant [9 x i8] c"CLAR_TMP\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.374 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00", align 1
@.str.375 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"Loaded %d suites:\0A\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"1..%d\0A\00", align 1
@.str.381 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.382 = private unnamed_addr constant [43 x i8] c"Failed to open the summary file '%s': %s.\0A\00", align 1
@.str.383 = private unnamed_addr constant [29 x i8] c"Failed to allocate summary.\0A\00", align 1
@.str.384 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"testcase\00", align 1
@.str.386 = private unnamed_addr constant [10 x i8] c"testsuite\00", align 1
@.str.387 = private unnamed_addr constant [11 x i8] c"testsuites\00", align 1
@.str.388 = private unnamed_addr constant [28 x i8] c"written summary file to %s\0A\00", align 1
@.str.389 = private unnamed_addr constant [14 x i8] c"<testsuites>\0A\00", align 1
@.str.390 = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@.str.391 = private unnamed_addr constant [105 x i8] c"\09<testsuite id=\22%d\22 name=\22%s\22 hostname=\22localhost\22 timestamp=\22%s\22 tests=\22%d\22 failures=\22%d\22 errors=\22%d\22>\0A\00", align 1
@.str.392 = private unnamed_addr constant [51 x i8] c"\09\09<testcase name=\22%s\22 classname=\22%s\22 time=\22%.2f\22>\0A\00", align 1
@.str.393 = private unnamed_addr constant [51 x i8] c"\09\09\09<failure type=\22%s\22><![CDATA[%s\0A%s]]></failure>\0A\00", align 1
@.str.394 = private unnamed_addr constant [16 x i8] c"\09\09\09<skipped />\0A\00", align 1
@.str.395 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.396 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.397 = private unnamed_addr constant [9 x i8] c"%s</%s>\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"Test suites (use -s<name> to run just one):\00", align 1
@str.1 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@str.2 = private unnamed_addr constant [80 x i8] c"  -sname        Run only the suite with `name` (can go to individual test name)\00", align 1
@str.3 = private unnamed_addr constant [46 x i8] c"  -iname        Include the suite with `name`\00", align 1
@str.4 = private unnamed_addr constant [46 x i8] c"  -xname        Exclude the suite with `name`\00", align 1
@str.5 = private unnamed_addr constant [54 x i8] c"  -v            Increase verbosity (show suite names)\00", align 1
@str.6 = private unnamed_addr constant [50 x i8] c"  -q            Decrease verbosity, inverse to -v\00", align 1
@str.7 = private unnamed_addr constant [45 x i8] c"  -Q            Quit as soon as a test fails\00", align 1
@str.8 = private unnamed_addr constant [46 x i8] c"  -t            Display results in tap format\00", align 1
@str.9 = private unnamed_addr constant [34 x i8] c"  -l            Print suite names\00", align 1
@str.10 = private unnamed_addr constant [62 x i8] c"  -r[filename]  Write summary file (to the optional filename)\00", align 1
@str.11 = private unnamed_addr constant [7 x i8] c"notrun\00", align 1
@str.12 = private unnamed_addr constant [8 x i8] c"skipped\00", align 1
@str.13 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@str.14 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@str.15 = private unnamed_addr constant [8 x i8] c"    ---\00", align 1
@str.16 = private unnamed_addr constant [14 x i8] c"    reason: |\00", align 1
@str.17 = private unnamed_addr constant [8 x i8] c"    at:\00", align 1
@str.18 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@str.19 = private unnamed_addr constant [8 x i8] c"    ...\00", align 1
@str.20 = private unnamed_addr constant [60 x i8] c"Started (test status codes: OK='.' FAILURE='F' SKIPPED='S')\00", align 1
@str.21 = private unnamed_addr constant [15 x i8] c"TAP version 13\00", align 1
@str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@switch.table.clar_run_test = private unnamed_addr constant [4 x i8] c".FSN", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cl_trace_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 352), align 8, !tbaa !12
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 360), align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clar_test_init(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.preheader, label %clar_parse_args.exit

.preheader:                                       ; preds = %bb.a, %bb.at
  %.076111.i = phi i32 [ %i.ds, %bb.at ], [ 1, %bb.a ] ; 9 uses
  %i.b = sext i32 %.076111.i to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 10 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.e, 45
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22    ; 2 uses
  switch i8 %i.g, label %bb.as [
    i8 0, label %bb.c
    i8 115, label %bb.d
    i8 105, label %bb.d
    i8 120, label %bb.d
    i8 113, label %bb.z
    i8 81, label %bb.ac
    i8 116, label %bb.af
    i8 108, label %bb.ai
    i8 118, label %bb.al
    i8 114, label %bb.ao
  ]

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.h = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.h)
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %i.k = icmp eq i8 %i.j, 61
  %i.l = select i1 %i.k, i64 3, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l ; 2 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #27 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %.076111.i, 1                ; 3 uses
  %i.q = icmp eq i32 %i.p, %0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.r)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.177.i = phi i32 [ %i.p, %bb.g ], [ %.076111.i, %bb.d ]
  %.075.i = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.d ] ; 4 uses
  %.072.i = phi i64 [ %i.v, %bb.g ], [ %i.n, %bb.d ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %bb.h
  %.073109.i = phi i64 [ 0, %bb.h ], [ %i.aq, %.thread.i ] ; 3 uses
  %.074108.i = phi i32 [ 0, %bb.h ], [ %.2.i, %.thread.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw [64 x i8], ptr @_clar_suites, i64 %.073109.i ; 4 uses
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !23  ; 2 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #27 ; 4 uses
  %i.z = tail call i64 @llvm.umin.i64(i64 %.072.i, i64 %i.y)
  %i.aa = tail call i32 @strncmp(ptr noundef nonnull %.075.i, ptr noundef nonnull %i.x, i64 noundef %i.z) #27
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %.not89.i = icmp ult i64 %.072.i, %i.y
  %i.ac = icmp ugt i64 %.072.i, %i.y
  br i1 %i.ac, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.075.i, i64 %i.y ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  %.not90.i = icmp eq i8 %i.ae, 58
  br i1 %.not90.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ad, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %.not91.i = icmp eq i8 %i.ag, 58
  br i1 %.not91.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.ah = add nsw i32 %.074108.i, 1               ; 2 uses
  switch i8 %i.g, label %bb.w [
    i8 115, label %bb.n
    i8 105, label %bb.u
    i8 120, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #28 ; 6 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.27)
  unreachable

bb.p:                                             ; preds = %bb.n
  store i64 %.073109.i, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.075.i, ptr %i.ak, align 8, !tbaa !29
  %2 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 72), align 8, !tbaa !30
  %i.al = icmp eq ptr %2, null
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 72), align 8, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 80), align 8, !tbaa !31 ; 2 uses
  %.not92.i = icmp eq ptr %3, null
  br i1 %.not92.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 1, ptr %i.an, align 8, !tbaa !33
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 80), align 8, !tbaa !31
  br label %bb.w

bb.u:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 1, ptr %i.ao, align 8, !tbaa !33
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 0, ptr %i.ap, align 8, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.m
  br i1 %.not89.i, label %.thread.i, label %bb.x

.thread.i:                                        ; preds = %bb.w, %bb.l, %bb.k, %bb.i
  %.2.i = phi i32 [ %.074108.i, %bb.i ], [ %.074108.i, %bb.k ], [ %.074108.i, %bb.l ], [ %i.ah, %bb.w ] ; 2 uses
  %i.aq = add nuw nsw i64 %.073109.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aq, 27
  br i1 %exitcond.not.i, label %bb.x, label %bb.i, !llvm.loop !34

bb.x:                                             ; preds = %.thread.i, %bb.w
  %.3.i = phi i32 [ %.2.i, %.thread.i ], [ %i.ah, %bb.w ]
  %.not93.i = icmp eq i32 %.3.i, 0
  br i1 %.not93.i, label %bb.y, label %bb.at

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.28, ptr noundef nonnull %.075.i)
  unreachable

bb.z:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %.not88.i = icmp eq i8 %i.as, 0
  br i1 %.not88.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.at)
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  %i.av = add nsw i32 %i.au, -1
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  br label %bb.at

bb.ac:                                            ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !22
  %.not87.i = icmp eq i8 %i.ax, 0
  br i1 %.not87.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.ay)
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 44), align 4, !tbaa !37
  br label %bb.at

bb.af:                                            ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %.not86.i = icmp eq i8 %i.ba, 0
  br i1 %.not86.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bb = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.bb)
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 40), align 8, !tbaa !38
  br label %bb.at

bb.ai:                                            ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22
  %.not85.i = icmp eq i8 %i.bd, 0
  br i1 %.not85.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.be = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.be)
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.bf = load ptr, ptr @_clar_suites, align 16, !tbaa !23
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 0, ptr noundef %i.bf) ; 0 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 64), align 16, !tbaa !23
  %i.bi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 1, ptr noundef %i.bh) ; 0 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 128), align 16, !tbaa !23
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 2, ptr noundef %i.bj) ; 0 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 192), align 16, !tbaa !23
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 3, ptr noundef %i.bl) ; 0 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 256), align 16, !tbaa !23
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 4, ptr noundef %i.bn) ; 0 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 320), align 16, !tbaa !23
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 5, ptr noundef %i.bp) ; 0 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 384), align 16, !tbaa !23
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 6, ptr noundef %i.br) ; 0 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 448), align 16, !tbaa !23
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 7, ptr noundef %i.bt) ; 0 uses
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 512), align 16, !tbaa !23
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 8, ptr noundef %i.bv) ; 0 uses
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 576), align 16, !tbaa !23
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 9, ptr noundef %i.bx) ; 0 uses
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 640), align 16, !tbaa !23
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 10, ptr noundef %i.bz) ; 0 uses
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 704), align 16, !tbaa !23
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 11, ptr noundef %i.cb) ; 0 uses
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 768), align 16, !tbaa !23
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 12, ptr noundef %i.cd) ; 0 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 832), align 16, !tbaa !23
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 13, ptr noundef %i.cf) ; 0 uses
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 896), align 16, !tbaa !23
  %i.ci = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 14, ptr noundef %i.ch) ; 0 uses
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 960), align 16, !tbaa !23
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 15, ptr noundef %i.cj) ; 0 uses
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1024), align 16, !tbaa !23
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 16, ptr noundef %i.cl) ; 0 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1088), align 16, !tbaa !23
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 17, ptr noundef %i.cn) ; 0 uses
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1152), align 16, !tbaa !23
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 18, ptr noundef %i.cp) ; 0 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1216), align 16, !tbaa !23
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 19, ptr noundef %i.cr) ; 0 uses
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1280), align 16, !tbaa !23
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 20, ptr noundef %i.ct) ; 0 uses
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1344), align 16, !tbaa !23
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 21, ptr noundef %i.cv) ; 0 uses
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1408), align 16, !tbaa !23
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 22, ptr noundef %i.cx) ; 0 uses
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1472), align 16, !tbaa !23
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 23, ptr noundef %i.cz) ; 0 uses
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1536), align 16, !tbaa !23
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 24, ptr noundef %i.db) ; 0 uses
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1600), align 16, !tbaa !23
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 25, ptr noundef %i.dd) ; 0 uses
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1664), align 16, !tbaa !23
  %i.dg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 26, ptr noundef %i.df) ; 0 uses
  tail call void @exit(i32 noundef 0) #29
  unreachable

bb.al:                                            ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !22
  %.not84.i = icmp eq i8 %i.di, 0
  br i1 %.not84.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dj = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.dj)
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  br label %bb.at

bb.ao:                                            ; preds = %bb.b
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 52), align 4, !tbaa !39
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 56), align 8, !tbaa !40
  tail call void @free(ptr noundef %i.dm) #30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !22
  %.not83.i = icmp eq i8 %i.do, 0
  br i1 %.not83.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dp = tail call noalias ptr @strdup(ptr noundef nonnull %i.dn) #30 ; 2 uses
  store ptr %i.dp, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 56), align 8, !tbaa !40
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.1)
  unreachable

bb.ar:                                            ; preds = %bb.ao
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 56), align 8, !tbaa !40
  br label %bb.at

bb.as:                                            ; preds = %bb.b
  %i.dr = load ptr, ptr %1, align 8, !tbaa !21
  tail call fastcc void @clar_usage(ptr noundef %i.dr)
  unreachable

bb.at:                                            ; preds = %bb.ar, %bb.ap, %bb.an, %bb.ah, %bb.ae, %bb.ab, %bb.x
  %.278.i = phi i32 [ %.076111.i, %bb.ap ], [ %.076111.i, %bb.ar ], [ %.076111.i, %bb.ab ], [ %.076111.i, %bb.ae ], [ %.076111.i, %bb.ah ], [ %.076111.i, %bb.an ], [ %.177.i, %bb.x ]
  %i.ds = add nsw i32 %.278.i, 1                  ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %0
  br i1 %i.dt, label %.preheader, label %clar_parse_args.exit, !llvm.loop !41

clar_parse_args.exit:                             ; preds = %bb.at, %bb.a
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 40), align 8, !tbaa !38
  switch i32 %i.du, label %bb.aw [
    i32 0, label %bb.au
    i32 1, label %clar_print_clap_init.exit.sink.split.i
  ]

bb.au:                                            ; preds = %clar_parse_args.exit
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %clar_print_init.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.376, i32 noundef 27) ; 0 uses
  br label %clar_print_clap_init.exit.sink.split.i

bb.aw:                                            ; preds = %clar_parse_args.exit
  tail call void @abort() #29
end_hunk_0
begin_hunk_1_@clar_tempdir_init:bb.a
  br label %bb.r

is_valid_tmp_path.exit.3.i.i:                     ; preds = %bb.q
  %i.ah = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ab) #27
  %i.ai = icmp ugt i64 %i.ah, 4095
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.ai, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %is_valid_tmp_path.exit.3.i.i, %is_valid_tmp_path.exit.thread.3.i.i, %bb.n
  %i.aj = tail call ptr @getenv(ptr noundef nonnull @.str.374) #30 ; 5 uses
  %.not23.4.i.i = icmp eq ptr %i.aj, null
  br i1 %.not23.4.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ak = call i32 @stat(ptr noundef nonnull readonly %i.aj, ptr noundef nonnull %2) #30
  %.not.i.4.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.4.i.i, label %bb.t, label %is_valid_tmp_path.exit.thread.4.i.i

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.c, align 8, !tbaa !48
  %i.am = and i32 %i.al, 61440
  %i.an = icmp eq i32 %i.am, 16384
  br i1 %i.an, label %bb.u, label %is_valid_tmp_path.exit.thread.4.i.i

bb.u:                                             ; preds = %bb.t
  %i.ao = tail call i32 @access(ptr noundef nonnull readonly %i.aj, i32 noundef 2) #30
  %.not3.i.4.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not3.i.4.i.i, label %is_valid_tmp_path.exit.4.i.i, label %is_valid_tmp_path.exit.thread.4.i.i

is_valid_tmp_path.exit.thread.4.i.i:              ; preds = %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.v

is_valid_tmp_path.exit.4.i.i:                     ; preds = %bb.u
  %i.ap = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aj) #27
  %i.aq = icmp ugt i64 %i.ap, 4095
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.aq, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %is_valid_tmp_path.exit.4.i.i, %is_valid_tmp_path.exit.thread.4.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ar = call i32 @stat(ptr noundef nonnull @.str.375, ptr noundef nonnull %1) #30
  %.not.i25.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i25.i.i, label %bb.w, label %is_valid_tmp_path.exit28.thread.i.i

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !48
  %i.au = and i32 %i.at, 61440
  %i.av = icmp eq i32 %i.au, 16384
  br i1 %i.av, label %bb.x, label %is_valid_tmp_path.exit28.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.aw = tail call i32 @access(ptr noundef nonnull @.str.375, i32 noundef 2) #30
  %.not3.i27.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not3.i27.i.i, label %is_valid_tmp_path.exit28.i.i, label %is_valid_tmp_path.exit28.thread.i.i

is_valid_tmp_path.exit28.thread.i.i:              ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.ax = call i32 @stat(ptr noundef nonnull @.str.56, ptr noundef nonnull %0) #30
  %.not.i29.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i29.i.i, label %bb.y, label %find_tmp_path.exit.i

is_valid_tmp_path.exit28.i.i:                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.aa

bb.y:                                             ; preds = %is_valid_tmp_path.exit28.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !48
  %i.ba = and i32 %i.az, 61440
  %i.bb = icmp eq i32 %i.ba, 16384
  br i1 %i.bb, label %bb.z, label %find_tmp_path.exit.i

bb.z:                                             ; preds = %bb.y
  %i.bc = tail call i32 @access(ptr noundef nonnull @.str.56, i32 noundef 2) #30
  %.not3.i31.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not3.i31.i.i, label %is_valid_tmp_path.exit32.i.i, label %find_tmp_path.exit.i

is_valid_tmp_path.exit32.i.i:                     ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %bb.aa

find_tmp_path.exit.i:                             ; preds = %bb.z, %bb.y, %is_valid_tmp_path.exit28.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %bb.ae

bb.aa:                                            ; preds = %is_valid_tmp_path.exit32.i.i, %is_valid_tmp_path.exit28.i.i, %is_valid_tmp_path.exit.4.i.i, %is_valid_tmp_path.exit.3.i.i, %is_valid_tmp_path.exit.2.i.i, %is_valid_tmp_path.exit.1.i.i, %is_valid_tmp_path.exit.i.i
  %.lcssa.i.sink.i = phi ptr [ @.str.56, %is_valid_tmp_path.exit32.i.i ], [ @.str.375, %is_valid_tmp_path.exit28.i.i ], [ %i.d, %is_valid_tmp_path.exit.i.i ], [ %i.l, %is_valid_tmp_path.exit.1.i.i ], [ %i.t, %is_valid_tmp_path.exit.2.i.i ], [ %i.ab, %is_valid_tmp_path.exit.3.i.i ], [ %i.aj, %is_valid_tmp_path.exit.4.i.i ]
  %i.bd = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @_clar_tempdir, ptr noundef nonnull dereferenceable(1) %.lcssa.i.sink.i, i64 noundef 4095) #30 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_clar_tempdir, i64 4095), align 1, !tbaa !22
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @_clar_tempdir) #27 ; 4 uses
  %i.bf = add i64 %i.be, -4080
  %i.bg = icmp ult i64 %i.bf, -4097
  br i1 %i.bg, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr i8, ptr @_clar_tempdir, i64 %i.be ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.bj, 47
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = add nsw i64 %i.be, 1
  store i8 47, ptr %i.bh, align 1, !tbaa !22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i = phi i64 [ %i.bk, %bb.ac ], [ %i.be, %bb.ab ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr @_clar_tempdir, i64 %.0.i
  %i.bm = sub nsw i64 4096, %.0.i
  %i.bn = tail call ptr @strncpy(ptr noundef nonnull %i.bl, ptr noundef nonnull dereferenceable(16) @__const.build_tempdir_path.path_tail, i64 noundef %i.bm) #30 ; 0 uses
  %i.bo = tail call ptr @mkdtemp(ptr noundef nonnull @_clar_tempdir) #30
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ae, label %build_tempdir_path.exit

build_tempdir_path.exit:                          ; preds = %bb.ad
  %i.bq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @_clar_tempdir) #27
  store i64 %i.bq, ptr @_clar_tempdir_len, align 8, !tbaa !51
  br label %bb.af

bb.ae:                                            ; preds = %find_tmp_path.exit.i, %bb.aa, %bb.ad
  tail call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.368)
  unreachable

bb.af:                                            ; preds = %build_tempdir_path.exit, %bb.a
  %i.br = tail call i32 @chdir(ptr noundef nonnull @_clar_tempdir) #30
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = tail call ptr @__errno_location() #31
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !42
  %i.bu = tail call ptr @strerror(i32 noundef %i.bt) #30
  tail call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.369, ptr noundef nonnull @_clar_tempdir, ptr noundef %i.bu)
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bv = tail call i64 @clock() #30
  %i.bw = tail call i64 @time(ptr noundef null) #30
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = tail call i32 @getpid() #30
  %i.bz = shl i32 %i.by, 16
  %i.ca = trunc i64 %i.bx to i32
  %i.cb = xor i32 %i.bz, %i.ca
  tail call void @srand(i32 noundef %i.cb) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @clar_test_run() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 72), align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader.preheader, label %.preheader9

.preheader.preheader:                             ; preds = %bb.a
  tail call fastcc void @clar_run_suite(ptr noundef nonnull @_clar_suites, ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 64), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 128), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 192), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 256), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 320), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 384), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 448), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 512), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 576), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 640), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 704), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 768), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 832), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 896), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 960), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1024), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1088), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1152), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1216), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1280), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1344), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1408), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1472), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1536), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1600), ptr noundef null)
  tail call fastcc void @clar_run_suite(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar_suites, i64 1664), ptr noundef null)
  br label %.loopexit

.preheader9:                                      ; preds = %bb.a, %.preheader9
  %.011 = phi ptr [ %i.g, %.preheader9 ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = load i64, ptr %.011, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw [64 x i8], ptr @_clar_suites, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call fastcc void @clar_run_suite(ptr noundef nonnull %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %.loopexit, label %.preheader9, !llvm.loop !52

.loopexit:                                        ; preds = %.preheader9, %.preheader.preheader
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 28), align 4, !tbaa !53
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clar_run_suite(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 44), align 4, !tbaa !37
  %i.f = icmp ne i32 %i.e, 0
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 28), align 4
  %i.h = icmp ne i32 %i.g, 0
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 36), align 4, !tbaa !55
  %i.k = add nsw i32 %i.j, 1                      ; 2 uses
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 36), align 4, !tbaa !55
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 40), align 8, !tbaa !38
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %clar_print_onsuite.exit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %i.i) ; 0 uses
  br label %clar_print_onsuite.exit

bb.f:                                             ; preds = %bb.c
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 48), align 8, !tbaa !36
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %clar_print_onsuite.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef range(i32 -2147483647, -2147483648) %i.k, ptr noundef %i.i) ; 0 uses
  br label %clar_print_onsuite.exit

bb.h:                                             ; preds = %bb.c
  tail call void @abort() #29
  unreachable

clar_print_onsuite.exit:                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 16), align 8, !tbaa !56
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 8), align 8, !tbaa !57
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 352), align 8, !tbaa !12 ; 2 uses
  %.not60 = icmp eq ptr %i.t, null
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %clar_print_onsuite.exit
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 360), align 8, !tbaa !20
  tail call void %i.t(i32 noundef 0, ptr noundef %i.s, ptr noundef null, ptr noundef %i.u) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %clar_print_onsuite.exit
  %.not61 = icmp eq ptr %1, null
  br i1 %.not61, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %0, align 8, !tbaa !23
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #27 ; 2 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 2 uses
  %.not62 = icmp ugt i64 %i.x, %i.w
  br i1 %.not62, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.049 = phi ptr [ %i.y, %bb.l ], [ %i.ab, %bb.m ] ; 6 uses
  %i.z = load i8, ptr %.049, align 1, !tbaa !22
  %i.aa = icmp eq i8 %i.z, 58
  %i.ab = getelementptr inbounds nuw i8, ptr %.049, i64 1
  br i1 %i.aa, label %bb.m, label %bb.n, !llvm.loop !58

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.049) #27 ; 3 uses
  %.not63 = icmp eq i64 %i.ac, 0
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %.049, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.ag = icmp eq i8 %i.af, 36                    ; 2 uses
  %i.ah = sext i1 %i.ag to i64
  %spec.select = add i64 %i.ac, %i.ah
  %not. = xor i1 %i.ag, true
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k, %bb.j
  %.2 = phi ptr [ null, %bb.j ], [ %.049, %bb.n ], [ null, %bb.k ], [ %.049, %bb.o ] ; 2 uses
  %.147 = phi i64 [ 0, %bb.j ], [ 0, %bb.n ], [ %i.x, %bb.k ], [ %spec.select, %bb.o ] ; 3 uses
  %.1 = phi i1 [ true, %bb.j ], [ true, %bb.n ], [ true, %bb.k ], [ %not., %bb.o ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59 ; 3 uses
  %.not73 = icmp eq i64 %i.aj, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %.not65 = icmp eq ptr %.2, null
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not65, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.1, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.v
  %.04871.us.us = phi i64 [ %i.bd, %bb.v ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.04871.us.us ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60 ; 2 uses
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 8), align 8, !tbaa !57
  %i.ao = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #28 ; 8 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.split.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.split.us
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 16), align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !61
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !65
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 32), align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.as, ptr %i.at, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i32 3, ptr %i.au, align 8, !tbaa !68
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 88), align 8, !tbaa !69
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 88), align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70 ; 2 uses
  %.not69.us.us = icmp eq ptr %i.ax, null
  br i1 %.not69.us.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.ao, ptr %i.ay, align 8, !tbaa !71
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70
  tail call fastcc void @clar_run_test(ptr noundef nonnull %0, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al)
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 44), align 4, !tbaa !37
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 28), align 4
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond3.us.us = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond3.us.us, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = add nuw i64 %.04871.us.us, 1            ; 2 uses
  %i.be = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !72

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.ac
  %i.bg = phi i64 [ %i.bz, %bb.ac ], [ %i.aj, %.lr.ph.split.us ]
  %.04871.us = phi i64 [ %i.ca, %bb.ac ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.04871.us ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 3 uses
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #27
  %.not68.us = icmp eq i64 %i.bj, %.147
  br i1 %.not68.us, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %.lr.ph.split.us.split
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 8), align 8, !tbaa !57
  %i.bk = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #28 ; 8 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.split.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 16), align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !61
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !65
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 32), align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 3, ptr %i.bq, align 8, !tbaa !68
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 88), align 8, !tbaa !69
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 88), align 8, !tbaa !69
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70 ; 2 uses
end_hunk_1
begin_hunk_2_@clar_test_shutdown:bb.a
  %.09.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.09.i.i.i, null
  br i1 %.not.i.i.i, label %clar_print_shutdown.exit, label %.lr.ph20.i.i.i, !llvm.loop !76

bb.f:                                             ; preds = %bb.a
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 32), align 8, !tbaa !66
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.380, i32 noundef %i.l) ; 0 uses
  br label %clar_print_shutdown.exit

bb.g:                                             ; preds = %bb.a
  tail call void @abort() #29
  unreachable

clar_print_shutdown.exit:                         ; preds = %.loopexit.i.i.i, %bb.d, %bb.f
  %i.n = load i8, ptr @_clar_tempdir, align 16, !tbaa !22
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %clar_tempdir_shutdown.exit, label %bb.h

bb.h:                                             ; preds = %clar_print_shutdown.exit
  %i.p = tail call i32 @chdir(ptr noundef nonnull @.str.57) #30
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %clar__assert.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, i64, i32, ptr, ptr, ...) @clar__failf(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.clar_tempdir_shutdown, i64 noundef 126, i32 noundef 1, ptr noundef nonnull @.str.367, ptr noundef null, ptr noundef null)
  br label %clar__assert.exit.i

clar__assert.exit.i:                              ; preds = %bb.i, %bb.h
  tail call fastcc void @fs_rm(ptr noundef nonnull @_clar_tempdir)
  br label %clar_tempdir_shutdown.exit

clar_tempdir_shutdown.exit:                       ; preds = %clar_print_shutdown.exit, %clar__assert.exit.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 52), align 4, !tbaa !39
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.v, label %bb.j

bb.j:                                             ; preds = %clar_tempdir_shutdown.exit
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 64), align 8, !tbaa !47 ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8        ; 10 uses
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.u = tail call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %.val.i, ptr noundef nonnull @.str.389) #30
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 88), align 8, !tbaa !69 ; 2 uses
  %.not58.i = icmp eq ptr %i.w, null
  br i1 %.not58.i, label %._crit_edge63.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.k, %bb.t
  %.03560.i = phi ptr [ %i.al, %bb.t ], [ null, %bb.k ] ; 2 uses
  %.03659.i = phi ptr [ %i.bf, %bb.t ], [ %i.w, %bb.k ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03659.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77   ; 2 uses
  %i.z = icmp eq ptr %.03560.i, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.03659.i, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !61 ; 3 uses
  br i1 %i.z, label %.lr.ph62._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph62.i
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.03560.i, ptr noundef nonnull dereferenceable(1) %.pre.i) #27
  %.not41.i = icmp eq i32 %i.aa, 0
  br i1 %.not41.i, label %bb.m, label %.lr.ph62._crit_edge.i

.lr.ph62._crit_edge.i:                            ; preds = %bb.l, %.lr.ph62.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.03659.i, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 32), align 8, !tbaa !66
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 28), align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.af = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %0) #30 ; 0 uses
  %i.ag = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 20, ptr noundef nonnull @.str.390, ptr noundef nonnull %0) #30
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %clar_summary_testsuite.exit.thread.i, label %clar_summary_testsuite.exit.i

clar_summary_testsuite.exit.thread.i:             ; preds = %.lr.ph62._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

clar_summary_testsuite.exit.i:                    ; preds = %.lr.ph62._crit_edge.i
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.391, i32 noundef 0, ptr noundef %.pre.i, ptr noundef nonnull %i.b, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef 0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %clar_summary_testsuite.exit._crit_edge.i

clar_summary_testsuite.exit._crit_edge.i:         ; preds = %clar_summary_testsuite.exit.i
  %.pre66.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %clar_summary_testsuite.exit._crit_edge.i, %bb.l
  %i.al = phi ptr [ %.pre66.i, %clar_summary_testsuite.exit._crit_edge.i ], [ %.pre.i, %bb.l ] ; 3 uses
  %i.am = load ptr, ptr %.03659.i, align 8, !tbaa !65
  %i.an = getelementptr inbounds nuw i8, ptr %.03659.i, i64 40
  %i.ao = load double, ptr %i.an, align 8, !tbaa !79
  %.val45.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.ap = call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %.val45.i, ptr noundef nonnull @.str.392, ptr noundef %i.am, ptr noundef %i.al, double noundef %i.ao) #30 ; 0 uses
  %.not4256.i = icmp eq ptr %i.y, null
  br i1 %.not4256.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %.03457.i = phi ptr [ %i.ax, %bb.n ], [ %i.y, %bb.m ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03457.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %.03457.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !82
  %.val46.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.au = call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %.val46.i, ptr noundef nonnull @.str.393, ptr noundef nonnull @.str.384, ptr noundef %i.ar, ptr noundef %i.at) #30
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.03457.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !83 ; 2 uses
  %.not42.i = icmp eq ptr %i.ax, null
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.03659.i, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !68
  %i.ba = icmp eq i32 %i.az, 2
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i
  %.val47.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bb = call i64 @fwrite(ptr nonnull @.str.394, i64 15, i64 1, ptr %.val47.i) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %.val50.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bc = call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %.val50.i, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.385) #30
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.03659.i, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !71 ; 3 uses
  %.not43.i = icmp eq ptr %i.bf, null             ; 2 uses
  br i1 %.not43.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(1) %i.bh) #27
  %.not44.i = icmp eq i32 %i.bi, 0
  br i1 %.not44.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val49.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bj = call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %.val49.i, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.386) #30
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not43.i, label %._crit_edge63.i, label %.lr.ph62.i

._crit_edge63.i:                                  ; preds = %bb.t, %bb.k
  %.val48.i = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bl = call noundef i32 (ptr, ptr, ...) @fprintf(ptr noundef %.val48.i, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.387) #30
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %._crit_edge63.i
  %i.bn = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bo = call i32 @fclose(ptr noundef %i.bn)
  %.not40.i = icmp eq i32 %i.bo, 0
  br i1 %.not40.i, label %clar_summary_shutdown.exit, label %.loopexit

clar_summary_shutdown.exit:                       ; preds = %bb.u
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.388, ptr noundef %i.bp) ; 0 uses
  call void @free(ptr noundef nonnull %i.s) #30
  br label %bb.v

.loopexit:                                        ; preds = %clar_summary_testsuite.exit.i, %bb.p, %bb.s, %.lr.ph.i, %bb.j, %clar_summary_testsuite.exit.thread.i, %._crit_edge63.i, %bb.u
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.bs = call i32 @fclose(ptr noundef %i.br)     ; 0 uses
  call void @free(ptr noundef nonnull %i.s) #30
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 56), align 8, !tbaa !40
  %i.bu = tail call ptr @__errno_location() #31
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !42
  %i.bw = call ptr @strerror(i32 noundef %i.bv) #30
  call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.3, ptr noundef %i.bt, ptr noundef %i.bw)
  unreachable

bb.v:                                             ; preds = %clar_summary_shutdown.exit, %clar_tempdir_shutdown.exit
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 72), align 8, !tbaa !30 ; 2 uses
  %.not1621 = icmp eq ptr %i.bx, null
  br i1 %.not1621, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %.lr.ph
  %.01522 = phi ptr [ %i.bz, %.lr.ph ], [ %i.bx, %bb.v ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01522, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32 ; 2 uses
  call void @free(ptr noundef nonnull %.01522) #30
  %.not16 = icmp eq ptr %i.bz, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %bb.v
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 88), align 8, !tbaa !69 ; 2 uses
  %.not1728 = icmp eq ptr %i.ca, null
  br i1 %.not1728, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge, %._crit_edge27
  %.01429 = phi ptr [ %i.ci, %._crit_edge27 ], [ %i.ca, %._crit_edge ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01429, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !77 ; 2 uses
  %.not1823 = icmp eq ptr %i.cc, null
  br i1 %.not1823, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph31, %.lr.ph26
  %.024 = phi ptr [ %i.cg, %.lr.ph26 ], [ %i.cc, %.lr.ph31 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.024, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !82
  call void @free(ptr noundef %i.ce) #30
  %i.cf = getelementptr inbounds nuw i8, ptr %.024, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !83 ; 2 uses
  call void @free(ptr noundef nonnull %.024) #30
  %.not18 = icmp eq ptr %i.cg, null
  br i1 %.not18, label %._crit_edge27, label %.lr.ph26, !llvm.loop !86

._crit_edge27:                                    ; preds = %.lr.ph26, %.lr.ph31
  %i.ch = getelementptr inbounds nuw i8, ptr %.01429, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !71 ; 2 uses
  call void @free(ptr noundef nonnull %.01429) #30
  %.not17 = icmp eq ptr %i.ci, null
  br i1 %.not17, label %._crit_edge32, label %.lr.ph31, !llvm.loop !87

._crit_edge32:                                    ; preds = %._crit_edge27, %._crit_edge
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 56), align 8, !tbaa !40
  call void @free(ptr noundef %i.cj) #30
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @clar_test(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @clar_test_init(i32 noundef %0, ptr noundef %1)
  %i.a = tail call i32 @clar_test_run()
  tail call void @clar_test_shutdown()
  ret i32 %i.a
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @clar__skip() local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.b, align 8, !tbaa !68
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 24), align 8, !tbaa !88
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 24), align 8, !tbaa !88
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 344), align 8, !tbaa !89
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @clar_print_onabort(ptr nonnull poison)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70
  tail call fastcc void @clar_report_errors(ptr noundef %i.f)
  tail call void @exit(i32 noundef 1) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 352), align 8, !tbaa !12 ; 2 uses
  %.not1.i = icmp eq ptr %i.g, null
  br i1 %.not1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 16), align 8, !tbaa !56
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 8), align 8, !tbaa !57
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 360), align 8, !tbaa !20
  tail call void %i.g(i32 noundef 6, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #30, !inline_history !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @longjmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_clar, i64 144), i32 noundef -1) #29
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @clar__failf(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ...) local_unnamed_addr #1 {
bb.a:
  %6 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.va_start.p0(ptr nonnull %6)
  call fastcc void @clar__failv(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.va_end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @clar__failv(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %7 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #28 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.364)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %i.d, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.a, ptr %i.i, align 8, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.a, ptr %i.g, align 8, !tbaa !91
  %i.j = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 104), align 8, !tbaa !21 ; 2 uses
  %i.k = icmp eq <2 x ptr> %i.j, splat (ptr null)
  %i.l = insertelement <2 x ptr> poison, ptr %0, i64 0
  %i.m = insertelement <2 x ptr> %i.l, ptr %1, i64 1
  %i.n = select <2 x i1> %i.k, <2 x ptr> %i.m, <2 x ptr> %i.j
  store <2 x ptr> %i.n, ptr %i.a, align 8, !tbaa !21
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 120), align 8, !tbaa !92 ; 2 uses
  %.not23 = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not23, i64 %2, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %4, ptr %i.r, align 8, !tbaa !80
  %.not24 = icmp eq ptr %5, null
  br i1 %.not24, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.va_copy.p0(ptr nonnull %7, ptr nonnull %6)
  %i.s = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %7) #30 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.365)
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.va_end.p0(ptr nonnull %7)
  %i.u = add nuw nsw i32 %i.s, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.v) #28 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !82
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @clar_abort(ptr noundef nonnull @.str.366)
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = call i32 @vsnprintf(ptr noundef nonnull %i.w, i64 noundef %i.v, ptr noundef nonnull %5, ptr noundef nonnull %6) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 96), align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.aa = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.g ]
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 28), align 4, !tbaa !53
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @_clar, i64 28), align 4, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i32 1, ptr %i.ad, align 8, !tbaa !68
end_hunk_2
begin_hunk_3_@clar_print_error:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = ptrtoint ptr %.01115.i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.t, ptr noundef nonnull %.01115.i.i) ; 0 uses
  %i.v = load i8, ptr %.0.i.i, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %clar_print_indented.exit.i, label %.lr.ph.i.i, !llvm.loop !111

clar_print_indented.exit.i:                       ; preds = %bb.e, %bb.b
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !105
  %i.x = tail call i32 @putc(i32 noundef 10, ptr noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82   ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %clar_print_clap_error.exit, label %bb.f

bb.f:                                             ; preds = %clar_print_indented.exit.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22
  %.not14.i7.i = icmp eq i8 %i.aa, 0
  br i1 %.not14.i7.i, label %clar_print_indented.exit13.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %bb.f, %bb.i
  %.01115.i9.i = phi ptr [ %.0.i11.i, %bb.i ], [ %i.z, %bb.f ] ; 5 uses
  %i.ab = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01115.i9.i, i32 noundef 10) #27 ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i8.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i8.i
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01115.i9.i) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %.01115.i9.i, i64 %i.ad
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i11.i = phi ptr [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 3 uses
  %i.af = ptrtoint ptr %.0.i11.i to i64
  %i.ag = ptrtoint ptr %.01115.i9.i to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.ai, ptr noundef nonnull %.01115.i9.i) ; 0 uses
  %i.ak = load i8, ptr %.0.i11.i, align 1, !tbaa !22
  %.not.i12.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i12.i, label %clar_print_indented.exit13.i, label %.lr.ph.i8.i, !llvm.loop !111

clar_print_indented.exit13.i:                     ; preds = %bb.i, %bb.f
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !105
  %i.am = tail call i32 @putc(i32 noundef 10, ptr noundef %i.al) ; 0 uses
  br label %clar_print_clap_error.exit

clar_print_clap_error.exit:                       ; preds = %clar_print_indented.exit.i, %clar_print_indented.exit13.i
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !105
  %i.ao = tail call i32 @fflush(ptr noundef %i.an) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @abort() #29
  unreachable

bb.k:                                             ; preds = %bb.a, %clar_print_clap_error.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare ptr @mkdtemp(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #26

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { cold nounwind }
attributes #35 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !15, i64 352}
!13 = !{!"", !9, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !14, i64 56, !16, i64 64, !17, i64 72, !17, i64 80, !18, i64 88, !18, i64 96, !14, i64 104, !14, i64 112, !19, i64 120, !15, i64 128, !15, i64 136, !10, i64 144, !9, i64 344, !15, i64 352, !15, i64 360}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"p1 _ZTS12clar_summary", !15, i64 0}
!17 = !{!"p1 _ZTS13clar_explicit", !15, i64 0}
!18 = !{!"p1 _ZTS11clar_report", !15, i64 0}
!19 = !{!"long", !10, i64 0}
!20 = !{!13, !15, i64 360}
!21 = !{!14, !14, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !14, i64 0}
!24 = !{!"clar_suite", !14, i64 0, !25, i64 8, !25, i64 24, !26, i64 40, !19, i64 48, !9, i64 56}
!25 = !{!"clar_func", !14, i64 0, !15, i64 8}
!26 = !{!"p1 _ZTS9clar_func", !15, i64 0}
!27 = !{!28, !19, i64 0}
!28 = !{!"clar_explicit", !19, i64 0, !14, i64 8, !17, i64 16}
!29 = !{!28, !14, i64 8}
!30 = !{!13, !17, i64 72}
!31 = !{!13, !17, i64 80}
!32 = !{!28, !17, i64 16}
!33 = !{!24, !9, i64 56}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!13, !9, i64 48}
!37 = !{!13, !9, i64 44}
!38 = !{!13, !9, i64 40}
!39 = !{!13, !9, i64 52}
!40 = !{!13, !14, i64 56}
!41 = distinct !{!41, !35}
!42 = !{!9, !9, i64 0}
!43 = !{!44, !14, i64 0}
!44 = !{!"clar_summary", !14, i64 0, !45, i64 8}
!45 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!46 = !{!44, !45, i64 8}
!47 = !{!13, !16, i64 64}
!48 = !{!49, !9, i64 24}
!49 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !50, i64 72, !50, i64 88, !50, i64 104, !10, i64 120}
!50 = !{!"timespec", !19, i64 0, !19, i64 8}
!51 = !{!19, !19, i64 0}
!52 = distinct !{!52, !35}
!53 = !{!13, !9, i64 28}
!54 = !{!24, !26, i64 40}
!55 = !{!13, !9, i64 36}
!56 = !{!13, !14, i64 16}
!57 = !{!13, !14, i64 8}
!58 = distinct !{!58, !35}
!59 = !{!24, !19, i64 48}
!60 = !{!25, !14, i64 0}
!61 = !{!62, !14, i64 16}
!62 = !{!"clar_report", !14, i64 0, !9, i64 8, !14, i64 16, !9, i64 24, !19, i64 32, !63, i64 40, !64, i64 48, !64, i64 56, !18, i64 64}
!63 = !{!"double", !10, i64 0}
!64 = !{!"p1 _ZTS10clar_error", !15, i64 0}
!65 = !{!62, !14, i64 0}
!66 = !{!13, !9, i64 32}
!67 = !{!62, !9, i64 8}
!68 = !{!62, !9, i64 24}
!69 = !{!13, !18, i64 88}
!70 = !{!13, !18, i64 96}
!71 = !{!62, !18, i64 64}
!72 = distinct !{!72, !35}
!73 = !{!18, !18, i64 0}
!74 = !{!64, !64, i64 0}
!75 = distinct !{!75, !35}
!76 = distinct !{!76, !35}
!77 = !{!62, !64, i64 48}
!78 = !{!62, !19, i64 32}
!79 = !{!62, !63, i64 40}
!80 = !{!81, !14, i64 24}
!81 = !{!"clar_error", !14, i64 0, !14, i64 8, !19, i64 16, !14, i64 24, !14, i64 32, !64, i64 40}
!82 = !{!81, !14, i64 32}
!83 = !{!81, !64, i64 40}
!84 = distinct !{!84, !35}
!85 = distinct !{!85, !35}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = !{!13, !9, i64 24}
!89 = !{!13, !9, i64 344}
!90 = distinct !{null}
!91 = !{!62, !64, i64 56}
!92 = !{!13, !19, i64 120}
!93 = !{!81, !19, i64 16}
!94 = distinct !{!94, !35}
!95 = distinct !{!95, !35}
!96 = !{!97, !97, i64 0}
!97 = !{!"p1 int", !15, i64 0}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !35}
!100 = !{!15, !15, i64 0}
!101 = !{!13, !15, i64 128}
!102 = !{!13, !15, i64 136}
!103 = !{!13, !14, i64 104}
!104 = !{!13, !14, i64 112}
!105 = !{!45, !45, i64 0}
!106 = !{!107}
!107 = distinct !{!107, !108, !"vprintf: argument 0"}
!108 = distinct !{!108, !"vprintf"}
!109 = distinct !{null}
!110 = !{!25, !15, i64 8}
!111 = distinct !{!111, !35}
!112 = !{!81, !14, i64 0}
!113 = distinct !{!113, !35}
!114 = !{!81, !14, i64 8}
!115 = distinct !{null}
!116 = !{!117}
!117 = distinct !{!117, !118, !"vprintf: argument 0"}
!118 = distinct !{!118, !"vprintf"}
!119 = distinct !{!119, !35}
end_hunk_3
