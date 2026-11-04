Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/main?download=true
inline.NumInlined: 50
inline.NumDeleted: 4
begin_hunk_0
@.str.48 = private unnamed_addr constant [53 x i8] c"--with-oniguruma=builtin CC=/opt-bench/work/jq/clang\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"run-tests\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"jq: Unknown option -%c\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"jq: Unknown option --%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"NO_COLOR\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"JQ_COLORS\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"Failed to set $JQ_COLORS\0A\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"~/.jq\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"$ORIGIN/../lib/jq\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"$ORIGIN/../lib\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"JQ_LIBRARY_PATH\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"jq: error: out of memory\0A\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"JQ_ORIGIN\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"VERSION_DIR\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"jq: %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"jq: program file contains NUL bytes\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"PROGRAM_ORIGIN\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"positional\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"ARGS\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"JQ_BUILD_CONFIGURATION\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"jq: parse error: %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"jq: ignoring parse error: %s\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.75 = private unnamed_addr constant [38 x i8] c"jq: error: writing output failed: %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"Use jq --help for help with command-line options,\0A\00", align 1
@.str.77 = private unnamed_addr constant [61 x i8] c"or see the jq manpage, or online docs at https://jqlang.org\0A\00", align 1
@.str.78 = private unnamed_addr constant [587 x i8] c"jq - commandline JSON processor [version %s]\0A\0AUsage:\09jq [options] <jq filter> [file...]\0A\09jq [options] --args <jq filter> [strings...]\0A\09jq [options] --jsonargs <jq filter> [JSON_TEXTS...]\0A\0Ajq is a tool for processing JSON inputs, applying the given filter to\0Aits JSON text inputs and producing the filter's results as JSON on\0Astandard output.\0A\0AThe simplest filter is ., which copies jq's input to its output\0Aunmodified except for formatting. For more advanced filters see\0Athe jq(1) manpage (\22man jq\22) and/or https://jqlang.org/.\0A\0AExample:\0A\0A\09$ echo '{\22foo\22: 0}' | jq .\0A\09{\0A\09  \22foo\22: 0\0A\09}\0A\0A\00", align 1
@.str.79 = private unnamed_addr constant [49 x i8] c"For listing the command options, use jq --help.\0A\00", align 1
@.str.80 = private unnamed_addr constant [2373 x i8] c"Command options:\0A  -n, --null-input          use `null` as the single input value;\0A  -R, --raw-input           read each line as string instead of JSON;\0A  -s, --slurp               read all inputs into an array and use it as\0A                            the single input value;\0A  -c, --compact-output      compact instead of pretty-printed output;\0A  -r, --raw-output          output strings without escapes and quotes;\0A      --raw-output0         implies -r and output NUL after each output;\0A  -j, --join-output         implies -r and output without newline after\0A                            each output;\0A  -a, --ascii-output        output strings by only ASCII characters\0A                            using escape sequences;\0A  -S, --sort-keys           sort keys of each object on output;\0A  -C, --color-output        colorize JSON output;\0A  -M, --monochrome-output   disable colored output;\0A      --tab                 use tabs for indentation;\0A      --indent n            use n spaces for indentation (max 7 spaces);\0A      --unbuffered          flush output stream after each output;\0A      --stream              parse the input value in streaming fashion;\0A      --stream-errors       implies --stream and report parse error as\0A                            an array;\0A      --seq                 parse input/output as application/json-seq;\0A  -f, --from-file           load the filter from a file;\0A  -L, --library-path dir    search modules from the directory;\0A      --arg name value      set $name to the string value;\0A      --argjson name value  set $name to the JSON value;\0A      --slurpfile name file set $name to an array of JSON values read\0A                            from the file;\0A      --rawfile name file   set $name to string contents of file;\0A      --args                consume remaining arguments as positional\0A                            string values;\0A      --jsonargs            consume remaining arguments as positional\0A                            JSON values;\0A  -e, --exit-status         set exit status code based on the output;\0A  -V, --version             show the version;\0A  --build-configuration     show jq's build configuration;\0A  -h, --help                show the help;\0A  --                        terminates argument processing;\0A\0ANamed arguments are also available as $ARGS.named[], while\0Apositional arguments are available as $ARGS.positional[].\0A\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"DEBUG:\00", align 1
@.str.83 = private unnamed_addr constant [62 x i8] c"Cannot dump a string containing NUL with --raw-output0 option\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"jq: error (at %s): %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [38 x i8] c"jq: error (at %s) (not a string): %s\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 23 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr null, ptr %i.b, align 8, !tbaa !21
  %i.e = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str) #19 ; 0 uses
  %i.f = tail call i32 @onig_set_parse_depth_limit(i32 noundef 1024) #19 ; 0 uses
  %i.g = tail call { i64, ptr } @jv_array() #19   ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  %i.j = tail call { i64, ptr } @jv_object() #19  ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0        ; 3 uses
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 3 uses
  %i.m = tail call ptr @jq_init() #19             ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !23
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @perror(ptr noundef nonnull @.str.1) #20
  br label %.thread1104

bb.c:                                             ; preds = %bb.a
  store i32 513, ptr %i.c, align 4, !tbaa !13
  %i.o = tail call ptr @jq_util_input_init(ptr noundef null, ptr noundef null) #19
  store ptr %i.o, ptr %i.b, align 8, !tbaa !21
  %i.p = tail call { i64, ptr } @jv_null() #19    ; 2 uses
  %i.q = extractvalue { i64, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.s = icmp sgt i32 %0, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = add nsw i32 %0, -2                       ; 3 uses
  %i.u = add nsw i32 %0, -1                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.loopexit
  %.04661400 = phi i32 [ 0, %.lr.ph ], [ %.3469, %.loopexit ] ; 25 uses
  %.04721399 = phi i32 [ 0, %.lr.ph ], [ %.1473, %.loopexit ] ; 7 uses
  %.04791398 = phi i32 [ 0, %.lr.ph ], [ %.3482, %.loopexit ] ; 6 uses
  %.sroa.13377.01397 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.13377.1, %.loopexit ] ; 11 uses
  %.sroa.0370.01396 = phi i64 [ %i.h, %.lr.ph ], [ %.sroa.0370.1, %.loopexit ] ; 11 uses
  %.sroa.26.01395 = phi ptr [ %i.l, %.lr.ph ], [ %.sroa.26.9, %.loopexit ] ; 35 uses
  %.sroa.0337.01394 = phi i64 [ %i.k, %.lr.ph ], [ %.sroa.0337.9, %.loopexit ] ; 35 uses
  %.04851393 = phi ptr [ null, %.lr.ph ], [ %.1486, %.loopexit ] ; 7 uses
  %.04881392 = phi i32 [ 0, %.lr.ph ], [ %.3491, %.loopexit ] ; 21 uses
  %.04921391 = phi i32 [ 0, %.lr.ph ], [ %.3495, %.loopexit ] ; 22 uses
  %.04961390 = phi i32 [ 0, %.lr.ph ], [ %.1497, %.loopexit ] ; 5 uses
  %.04981389 = phi i32 [ 0, %.lr.ph ], [ %.3501, %.loopexit ] ; 25 uses
  %.sroa.11.01388 = phi ptr [ %i.r, %.lr.ph ], [ %.sroa.11.4, %.loopexit ] ; 26 uses
  %.sroa.0312.01387 = phi i64 [ %i.q, %.lr.ph ], [ %.sroa.0312.4, %.loopexit ] ; 26 uses
  %.05031386 = phi i32 [ 1, %.lr.ph ], [ %i.le, %.loopexit ] ; 39 uses
  %.not = icmp eq i32 %.04961390, 0
  br i1 %.not, label %bb.e, label %isoptish.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %.05031386 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25   ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !26
  %i.z = icmp eq i8 %i.y, 45
  br i1 %i.z, label %bb.f, label %isoptish.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !26  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 45                    ; 3 uses
  br i1 %i.ac, label %isoptish.exit.thread887.tail, label %isoptish.exit

isoptish.exit:                                    ; preds = %bb.f
  %i.ad = tail call ptr @__ctype_b_loc() #21
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28
  %i.af = zext i8 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !30
  %i.ai = and i16 %i.ah, 1024
  %.not524 = icmp eq i16 %i.ai, 0
  br i1 %.not524, label %isoptish.exit.thread, label %isoptish.exit.thread887.tail.thread

isoptish.exit.thread:                             ; preds = %bb.e, %isoptish.exit, %bb.d
  %.not614 = icmp eq ptr %.04851393, null
  br i1 %.not614, label %bb.g, label %bb.h

bb.g:                                             ; preds = %isoptish.exit.thread
  %i.aj = sext i32 %.05031386 to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  br label %.loopexit

bb.h:                                             ; preds = %isoptish.exit.thread
  %.not615 = icmp eq i32 %.04881392, 0
  br i1 %.not615, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = sext i32 %.05031386 to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = call { i64, ptr } @jv_string(ptr noundef %i.ao) #19 ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0
  %i.ar = extractvalue { i64, ptr } %i.ap, 1
  %i.as = call { i64, ptr } @jv_array_append(i64 %.sroa.0370.01396, ptr %.sroa.13377.01397, i64 %i.aq, ptr %i.ar) #19 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %.not616 = icmp eq i32 %.04921391, 0
  br i1 %.not616, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = sext i32 %.05031386 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %i.ay = call { i64, ptr } @jv_parse(ptr noundef %i.ax) #19 ; 2 uses
  %i.az = extractvalue { i64, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %i.bb = call i32 @jv_get_kind(i64 %i.az, ptr %i.ba) #19
  %.not1118 = icmp eq i32 %i.bb, 0
  br i1 %.not1118, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite618 = call i64 @fwrite(ptr nonnull @.str.2, i64 43, i64 1, ptr %i.bc) #20 ; 0 uses
  call fastcc void @die()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bd = call { i64, ptr } @jv_array_append(i64 %.sroa.0370.01396, ptr %.sroa.13377.01397, i64 %i.az, ptr %i.ba) #19 ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.bh = sext i32 %.05031386 to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25
  call void @jq_util_input_add_input(ptr noundef %i.bg, ptr noundef %i.bj) #19
  %i.bk = add nsw i32 %.04721399, 1
  br label %.loopexit

isoptish.exit.thread887.tail:                     ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.loopexit, label %isoptish.exit.thread887.tail.thread

isoptish.exit.thread887.tail.thread:              ; preds = %isoptish.exit, %isoptish.exit.thread887.tail
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %storemerge = select i1 %i.ac, ptr %i.bo, ptr %i.aa
  %.promoted = load i32, ptr %i.c, align 4
  br label %bb.o

bb.o:                                             ; preds = %isoptish.exit.thread887.tail.thread, %isoption.exit715
  %i.bp = phi i32 [ %.promoted, %isoptish.exit.thread887.tail.thread ], [ %i.lc, %isoption.exit715 ] ; 13 uses
  %.14801384 = phi i32 [ %.04791398, %isoptish.exit.thread887.tail.thread ], [ %i.ld, %isoption.exit715 ] ; 37 uses
  %.08701375 = phi ptr [ %storemerge, %isoptish.exit.thread887.tail.thread ], [ %.2872, %isoption.exit715 ] ; 51 uses
  br i1 %i.ac, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load i8, ptr %.08701375, align 1, !tbaa !26
  switch i8 %i.bq, label %bb.co [
    i8 115, label %bb.q
    i8 114, label %bb.s
    i8 106, label %bb.v
    i8 99, label %bb.x
    i8 67, label %bb.z
    i8 77, label %bb.ab
    i8 97, label %bb.ad
    i8 83, label %bb.ag
    i8 82, label %bb.ai
    i8 110, label %bb.ak
    i8 102, label %bb.am
    i8 76, label %bb.ao
    i8 98, label %bb.aw
    i8 101, label %bb.bk
    i8 104, label %isoption.exit799
    i8 86, label %isoption.exit806
  ]

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !26
  %.not13.i = icmp eq i8 %i.bs, 0
  %spec.store.select.i = select i1 %.not13.i, ptr null, ptr %i.br
  br label %isoption.exit.a

bb.r:                                             ; preds = %bb.o
  %i.bt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(6) @.str.4) #22
  %.not11.i = icmp eq i32 %i.bt, 0
  br i1 %.not11.i, label %isoption.exit.a, label %bb.t

isoption.exit.a:                                  ; preds = %bb.r, %bb.q
  %.3873 = phi ptr [ %spec.store.select.i, %bb.q ], [ null, %bb.r ]
  %i.bu = or i32 %.14801384, 1
  br label %isoption.exit715

bb.s:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26
  %.not13.i623 = icmp eq i8 %i.bw, 0
  %spec.store.select.i624 = select i1 %.not13.i623, ptr null, ptr %i.bv
  br label %isoption.exit628

bb.t:                                             ; preds = %bb.r
  %i.bx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(11) @.str.5) #22
  %.not11.i627 = icmp eq i32 %i.bx, 0
  br i1 %.not11.i627, label %isoption.exit628, label %bb.u

isoption.exit628:                                 ; preds = %bb.t, %bb.s
  %.4874 = phi ptr [ %spec.store.select.i624, %bb.s ], [ null, %bb.t ]
  %i.by = or i32 %.14801384, 8
  br label %isoption.exit715

bb.u:                                             ; preds = %bb.t
  %i.bz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(12) @.str.6) #22
  %.not11.i630 = icmp eq i32 %i.bz, 0
  br i1 %.not11.i630, label %isoption.exit633, label %bb.w

isoption.exit633:                                 ; preds = %bb.u
  %i.ca = or i32 %.14801384, 1048
  br label %isoption.exit715.thread

bb.v:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26
  %.not13.i635 = icmp eq i8 %i.cc, 0
  %spec.store.select.i636 = select i1 %.not13.i635, ptr null, ptr %i.cb
  br label %isoption.exit640

bb.w:                                             ; preds = %bb.u
  %i.cd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(12) @.str.7) #22
  %.not11.i639 = icmp eq i32 %i.cd, 0
  br i1 %.not11.i639, label %isoption.exit640, label %bb.y

isoption.exit640:                                 ; preds = %bb.w, %bb.v
  %.6876 = phi ptr [ %spec.store.select.i636, %bb.v ], [ null, %bb.w ]
  %i.ce = or i32 %.14801384, 1032
  br label %isoption.exit715

bb.x:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !26
  %.not13.i642 = icmp eq i8 %i.cg, 0
  %spec.store.select.i643 = select i1 %.not13.i642, ptr null, ptr %i.cf
  br label %isoption.exit647

bb.y:                                             ; preds = %bb.w
  %i.ch = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(15) @.str.8) #22
  %.not11.i646 = icmp eq i32 %i.ch, 0
  br i1 %.not11.i646, label %isoption.exit647, label %bb.aa

isoption.exit647:                                 ; preds = %bb.y, %bb.x
  %.7877 = phi ptr [ %spec.store.select.i643, %bb.x ], [ null, %bb.y ]
  %i.ci = and i32 %i.bp, -1858                    ; 2 uses
  store i32 %i.ci, ptr %i.c, align 4, !tbaa !13
  br label %isoption.exit715

bb.z:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !26
  %.not13.i649 = icmp eq i8 %i.ck, 0
  %spec.store.select.i650 = select i1 %.not13.i649, ptr null, ptr %i.cj
  br label %isoption.exit654

bb.aa:                                            ; preds = %bb.y
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(13) @.str.9) #22
  %.not11.i653 = icmp eq i32 %i.cl, 0
  br i1 %.not11.i653, label %isoption.exit654, label %bb.ac

isoption.exit654:                                 ; preds = %bb.aa, %bb.z
  %.8878 = phi ptr [ %spec.store.select.i650, %bb.z ], [ null, %bb.aa ]
  %i.cm = or i32 %.14801384, 64
  br label %isoption.exit715

bb.ab:                                            ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !26
  %.not13.i656 = icmp eq i8 %i.co, 0
  %spec.store.select.i657 = select i1 %.not13.i656, ptr null, ptr %i.cn
  br label %isoption.exit661

bb.ac:                                            ; preds = %bb.aa
  %i.cp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(18) @.str.10) #22
  %.not11.i660 = icmp eq i32 %i.cp, 0
  br i1 %.not11.i660, label %isoption.exit661, label %bb.ae

isoption.exit661:                                 ; preds = %bb.ac, %bb.ab
  %.9 = phi ptr [ %spec.store.select.i657, %bb.ab ], [ null, %bb.ac ]
  %i.cq = or i32 %.14801384, 128
  br label %isoption.exit715

bb.ad:                                            ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !26
  %.not13.i663 = icmp eq i8 %i.cs, 0
  %spec.store.select.i664 = select i1 %.not13.i663, ptr null, ptr %i.cr
  br label %isoption.exit668

bb.ae:                                            ; preds = %bb.ac
  %i.ct = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(13) @.str.11) #22
  %.not11.i667 = icmp eq i32 %i.ct, 0
  br i1 %.not11.i667, label %isoption.exit668, label %bb.af

isoption.exit668:                                 ; preds = %bb.ae, %bb.ad
  %.10879 = phi ptr [ %spec.store.select.i664, %bb.ad ], [ null, %bb.ae ]
  %i.cu = or i32 %.14801384, 32
  br label %isoption.exit715

bb.af:                                            ; preds = %bb.ae
  %i.cv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(11) @.str.12) #22
  %.not11.i670 = icmp eq i32 %i.cv, 0
  br i1 %.not11.i670, label %isoption.exit673, label %bb.ah

isoption.exit673:                                 ; preds = %bb.af
  %i.cw = or i32 %.14801384, 2048
  br label %isoption.exit715.thread

bb.ag:                                            ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !26
  %.not13.i675 = icmp eq i8 %i.cy, 0
  %spec.store.select.i676 = select i1 %.not13.i675, ptr null, ptr %i.cx
  br label %isoption.exit680

bb.ah:                                            ; preds = %bb.af
  %i.cz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(10) @.str.13) #22
  %.not11.i679 = icmp eq i32 %i.cz, 0
  br i1 %.not11.i679, label %isoption.exit680, label %bb.aj

isoption.exit680:                                 ; preds = %bb.ah, %bb.ag
  %.12881 = phi ptr [ %spec.store.select.i676, %bb.ag ], [ null, %bb.ah ]
  %i.da = or i32 %.14801384, 256
  br label %isoption.exit715

bb.ai:                                            ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !26
  %.not13.i682 = icmp eq i8 %i.dc, 0
  %spec.store.select.i683 = select i1 %.not13.i682, ptr null, ptr %i.db
  br label %isoption.exit687

bb.aj:                                            ; preds = %bb.ah
  %i.dd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(10) @.str.14) #22
  %.not11.i686 = icmp eq i32 %i.dd, 0
  br i1 %.not11.i686, label %isoption.exit687, label %bb.al

isoption.exit687:                                 ; preds = %bb.aj, %bb.ai
  %.13882 = phi ptr [ %spec.store.select.i683, %bb.ai ], [ null, %bb.aj ]
  %i.de = or i32 %.14801384, 2
  br label %isoption.exit715

bb.ak:                                            ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %.08701375, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !26
  %.not13.i689 = icmp eq i8 %i.dg, 0
  %spec.store.select.i690 = select i1 %.not13.i689, ptr null, ptr %i.df
  br label %isoption.exit694

bb.al:                                            ; preds = %bb.aj
  %i.dh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(11) @.str.15) #22
end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %.not598, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %isoption.exit767
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite599 = call i64 @fwrite(ptr nonnull @.str.33, i64 65, i64 1, ptr %i.hq) #20 ; 0 uses
  call fastcc void @die()
  unreachable

bb.bv:                                            ; preds = %isoption.exit767
  %i.hr = call { i64, ptr } @jv_copy(i64 %.sroa.0337.01394, ptr %.sroa.26.01395) #19 ; 2 uses
  %i.hs = extractvalue { i64, ptr } %i.hr, 0
  %i.ht = extractvalue { i64, ptr } %i.hr, 1
  %i.hu = sext i32 %.05031386 to i64
  %i.hv = getelementptr [8 x i8], ptr %1, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 8      ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !25
  %i.hy = call { i64, ptr } @jv_string(ptr noundef %i.hx) #19 ; 2 uses
  %i.hz = extractvalue { i64, ptr } %i.hy, 0
  %i.ia = extractvalue { i64, ptr } %i.hy, 1
  %i.ib = call i32 @jv_object_has(i64 %i.hs, ptr %i.ht, i64 %i.hz, ptr %i.ia) #19
  %.not600 = icmp eq i32 %i.ib, 0
  br i1 %.not600, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.ic = getelementptr i8, ptr %i.hv, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !25
  %i.ie = call { i64, ptr } @jv_parse(ptr noundef %i.id) #19 ; 2 uses
  %i.if = extractvalue { i64, ptr } %i.ie, 0      ; 2 uses
  %i.ig = extractvalue { i64, ptr } %i.ie, 1      ; 2 uses
  %i.ih = call i32 @jv_get_kind(i64 %i.if, ptr %i.ig) #19
  %.not1120 = icmp eq i32 %i.ih, 0
  br i1 %.not1120, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ii = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite602 = call i64 @fwrite(ptr nonnull @.str.34, i64 42, i64 1, ptr %i.ii) #20 ; 0 uses
  call fastcc void @die()
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.ij = load ptr, ptr %i.hw, align 8, !tbaa !25
  %i.ik = call { i64, ptr } @jv_string(ptr noundef %i.ij) #19 ; 2 uses
  %i.il = extractvalue { i64, ptr } %i.ik, 0
  %i.im = extractvalue { i64, ptr } %i.ik, 1
  %i.in = call { i64, ptr } @jv_object_set(i64 %.sroa.0337.01394, ptr %.sroa.26.01395, i64 %i.il, ptr %i.im, i64 %i.if, ptr %i.ig) #19 ; 2 uses
  %i.io = extractvalue { i64, ptr } %i.in, 0
  %i.ip = extractvalue { i64, ptr } %i.in, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.sroa.0337.3 = phi i64 [ %.sroa.0337.01394, %bb.bv ], [ %i.io, %bb.by ]
  %.sroa.26.3 = phi ptr [ %.sroa.26.01395, %bb.bv ], [ %i.ip, %bb.by ]
  %i.iq = add nsw i32 %.05031386, 2
  br label %isoption.exit715.thread

bb.ca:                                            ; preds = %bb.bt
  %i.ir = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(8) @.str.35) #22
  %.not11.i769 = icmp eq i32 %i.ir, 0
  br i1 %.not11.i769, label %isoption.exit772, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.is = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(10) @.str.36) #22
  %.not11.i774 = icmp eq i32 %i.is, 0
  br i1 %.not11.i774, label %isoption.exit772, label %bb.ch

isoption.exit772:                                 ; preds = %bb.cb, %bb.ca
  %.0.i7681017 = phi i32 [ 1, %bb.ca ], [ 0, %bb.cb ]
  %i.it = phi ptr [ @.str.35, %bb.ca ], [ @.str.36, %bb.cb ] ; 3 uses
  %.not563 = icmp slt i32 %.05031386, %i.t
  br i1 %.not563, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %isoption.exit772
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.iv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.37, ptr noundef nonnull %i.it, ptr noundef nonnull %i.it) #23 ; 0 uses
  call fastcc void @die()
  unreachable

bb.cd:                                            ; preds = %isoption.exit772
  %i.iw = call { i64, ptr } @jv_copy(i64 %.sroa.0337.01394, ptr %.sroa.26.01395) #19 ; 2 uses
  %i.ix = extractvalue { i64, ptr } %i.iw, 0
  %i.iy = extractvalue { i64, ptr } %i.iw, 1
  %i.iz = sext i32 %.05031386 to i64
  %i.ja = getelementptr [8 x i8], ptr %1, i64 %i.iz ; 3 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 8      ; 3 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !25
  %i.jd = call { i64, ptr } @jv_string(ptr noundef %i.jc) #19 ; 2 uses
  %i.je = extractvalue { i64, ptr } %i.jd, 0
  %i.jf = extractvalue { i64, ptr } %i.jd, 1
  %i.jg = call i32 @jv_object_has(i64 %i.ix, ptr %i.iy, i64 %i.je, ptr %i.jf) #19
  %.not564 = icmp eq i32 %i.jg, 0
  br i1 %.not564, label %bb.ce, label %.thread1029

bb.ce:                                            ; preds = %bb.cd
  %i.jh = getelementptr i8, ptr %i.ja, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !25
  %i.jj = call { i64, ptr } @jv_load_file(ptr noundef %i.ji, i32 noundef %.0.i7681017) #19 ; 2 uses
  %i.jk = extractvalue { i64, ptr } %i.jj, 0      ; 3 uses
  %i.jl = extractvalue { i64, ptr } %i.jj, 1      ; 3 uses
  %i.jm = call i32 @jv_get_kind(i64 %i.jk, ptr %i.jl) #19
  %.not1119 = icmp eq i32 %i.jm, 0
  br i1 %.not1119, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jn = load ptr, ptr %i.jb, align 8, !tbaa !25
  %i.jo = call { i64, ptr } @jv_string(ptr noundef %i.jn) #19 ; 2 uses
  %i.jp = extractvalue { i64, ptr } %i.jo, 0
  %i.jq = extractvalue { i64, ptr } %i.jo, 1
  %i.jr = call { i64, ptr } @jv_object_set(i64 %.sroa.0337.01394, ptr %.sroa.26.01395, i64 %i.jp, ptr %i.jq, i64 %i.jk, ptr %i.jl) #19 ; 2 uses
  %i.js = extractvalue { i64, ptr } %i.jr, 0
  %i.jt = extractvalue { i64, ptr } %i.jr, 1
  br label %.thread1029

.thread1029:                                      ; preds = %bb.cd, %bb.cf
  %.sroa.0337.5 = phi i64 [ %.sroa.0337.01394, %bb.cd ], [ %i.js, %bb.cf ]
  %.sroa.26.5 = phi ptr [ %.sroa.26.01395, %bb.cd ], [ %i.jt, %bb.cf ]
  %i.ju = add nsw i32 %.05031386, 2
  br label %isoption.exit715.thread

bb.cg:                                            ; preds = %bb.ce
  %i.jv = getelementptr i8, ptr %i.ja, i64 16
  %i.jw = call { i64, ptr } @jv_invalid_get_msg(i64 %i.jk, ptr %i.jl) #19 ; 2 uses
  %i.jx = extractvalue { i64, ptr } %i.jw, 0      ; 2 uses
  %i.jy = extractvalue { i64, ptr } %i.jw, 1      ; 2 uses
  %i.jz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ka = load ptr, ptr %i.jb, align 8, !tbaa !25
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !25
  %i.kc = call ptr @jv_string_value(i64 %i.jx, ptr %i.jy) #19
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jz, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.it, ptr noundef %i.ka, ptr noundef %i.kb, ptr noundef %i.kc) #23 ; 0 uses
  call void @jv_free(i64 %i.jx, ptr %i.jy) #19
  br label %.thread1104

bb.ch:                                            ; preds = %bb.cb
  %i.ke = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(18) @.str.39) #22
  %.not11.i779 = icmp eq i32 %i.ke, 0
  br i1 %.not11.i779, label %isoption.exit782, label %bb.ci

isoption.exit782:                                 ; preds = %bb.ch
  %i.kf = or i32 %.14801384, 32768
  br label %isoption.exit715.thread

bb.ci:                                            ; preds = %bb.ch
  %i.kg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(16) @.str.40) #22
  %.not11.i784 = icmp eq i32 %i.kg, 0
  br i1 %.not11.i784, label %isoption.exit715.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(12) @.str.41) #22
  %.not11.i789 = icmp eq i32 %i.kh, 0
  br i1 %.not11.i789, label %isoption.exit792, label %bb.ck

isoption.exit792:                                 ; preds = %bb.cj
  %i.ki = or i32 %.04981389, 1
  br label %isoption.exit715.thread

bb.ck:                                            ; preds = %bb.cj
  %i.kj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(5) @.str.42) #22
  %.not11.i798 = icmp eq i32 %i.kj, 0
  br i1 %.not11.i798, label %isoption.exit799, label %bb.cl

isoption.exit799:                                 ; preds = %bb.p, %bb.ck
  call fastcc void @usage(i32 noundef 0, i32 noundef 0)
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.kk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(8) @.str.43) #22
  %.not11.i805 = icmp eq i32 %i.kk, 0
  br i1 %.not11.i805, label %isoption.exit806, label %bb.cm

isoption.exit806:                                 ; preds = %bb.p, %bb.cl
  %i.kl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef nonnull @.str.45) ; 0 uses
  br label %.thread1104

bb.cm:                                            ; preds = %bb.cl
  %i.km = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(20) @.str.46) #22
  %.not11.i808 = icmp eq i32 %i.km, 0
  br i1 %.not11.i808, label %isoption.exit811, label %bb.cn

isoption.exit811:                                 ; preds = %bb.cm
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @.str.48) ; 0 uses
  br label %.thread1104

bb.cn:                                            ; preds = %bb.cm
  %i.kn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.08701375, ptr noundef nonnull dereferenceable(10) @.str.49) #22
  %.not11.i813 = icmp eq i32 %i.kn, 0
  br i1 %.not11.i813, label %isoption.exit816, label %bb.cp

isoption.exit816:                                 ; preds = %bb.cn
  %i.ko = add nsw i32 %.05031386, 1               ; 2 uses
  %i.kp = and i32 %.14801384, 32768
  %.not562 = icmp eq i32 %i.kp, 0
  %i.kq = and i32 %.04981389, 1
  %i.kr = select i1 %.not562, i32 %i.kq, i32 1
  %i.ks = sub nsw i32 %0, %i.ko
  %i.kt = sext i32 %i.ko to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kt
  %i.kv = call i32 @jq_testsuite(i64 %.sroa.0312.01387, ptr %.sroa.11.01388, i32 noundef %i.kr, i32 noundef %i.ks, ptr noundef %i.ku) #19
  br label %.thread1104

bb.co:                                            ; preds = %bb.p
  %i.kw = load ptr, ptr @stderr, align 8, !tbaa !15
  %2 = load i8, ptr %.08701375, align 1, !tbaa !26
  %i.kx = sext i8 %2 to i32
  %i.ky = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kw, ptr noundef nonnull @.str.50, i32 noundef %i.kx) #23 ; 0 uses
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.kz = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.la = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kz, ptr noundef nonnull @.str.51, ptr noundef nonnull %.08701375) #23 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  call fastcc void @die()
  unreachable

isoption.exit715.thread:                          ; preds = %bb.ax, %bb.aw, %isoption.exit633, %isoption.exit673, %bb.av, %bb.as, %bb.ci, %isoption.exit720, %bb.bg, %isoption.exit730, %isoption.exit735, %isoption.exit740, %bb.bm, %bb.bs, %bb.bz, %.thread1029, %isoption.exit782, %bb.bn, %isoption.exit792
  %.3506.ph = phi i32 [ %.05031386, %isoption.exit633 ], [ %.05031386, %isoption.exit792 ], [ %.05031386, %bb.bn ], [ %.05031386, %isoption.exit782 ], [ %i.ju, %.thread1029 ], [ %i.iq, %bb.bz ], [ %i.ho, %bb.bs ], [ %.05031386, %bb.bm ], [ %.05031386, %isoption.exit673 ], [ %.05031386, %isoption.exit740 ], [ %.05031386, %isoption.exit735 ], [ %.05031386, %isoption.exit730 ], [ %i.fc, %bb.bg ], [ %.05031386, %isoption.exit720 ], [ %.05031386, %bb.ci ], [ %.05031386, %bb.as ], [ %i.ef, %bb.av ], [ %.05031386, %bb.aw ], [ %.05031386, %bb.ax ]
  %.sroa.0312.3.ph = phi i64 [ %.sroa.0312.01387, %isoption.exit633 ], [ %.sroa.0312.01387, %isoption.exit792 ], [ %.sroa.0312.01387, %bb.bn ], [ %.sroa.0312.01387, %isoption.exit782 ], [ %.sroa.0312.01387, %.thread1029 ], [ %.sroa.0312.01387, %bb.bz ], [ %.sroa.0312.01387, %bb.bs ], [ %.sroa.0312.01387, %bb.bm ], [ %.sroa.0312.01387, %isoption.exit673 ], [ %.sroa.0312.01387, %isoption.exit740 ], [ %.sroa.0312.01387, %isoption.exit735 ], [ %.sroa.0312.01387, %isoption.exit730 ], [ %.sroa.0312.01387, %bb.bg ], [ %.sroa.0312.01387, %isoption.exit720 ], [ %.sroa.0312.01387, %bb.ci ], [ %i.ec, %bb.as ], [ %i.eq, %bb.av ], [ %.sroa.0312.01387, %bb.aw ], [ %.sroa.0312.01387, %bb.ax ]
  %.sroa.11.3.ph = phi ptr [ %.sroa.11.01388, %isoption.exit633 ], [ %.sroa.11.01388, %isoption.exit792 ], [ %.sroa.11.01388, %bb.bn ], [ %.sroa.11.01388, %isoption.exit782 ], [ %.sroa.11.01388, %.thread1029 ], [ %.sroa.11.01388, %bb.bz ], [ %.sroa.11.01388, %bb.bs ], [ %.sroa.11.01388, %bb.bm ], [ %.sroa.11.01388, %isoption.exit673 ], [ %.sroa.11.01388, %isoption.exit740 ], [ %.sroa.11.01388, %isoption.exit735 ], [ %.sroa.11.01388, %isoption.exit730 ], [ %.sroa.11.01388, %bb.bg ], [ %.sroa.11.01388, %isoption.exit720 ], [ %.sroa.11.01388, %bb.ci ], [ %i.ed, %bb.as ], [ %i.er, %bb.av ], [ %.sroa.11.01388, %bb.aw ], [ %.sroa.11.01388, %bb.ax ]
  %.2500.ph = phi i32 [ %.04981389, %isoption.exit633 ], [ %i.ki, %isoption.exit792 ], [ %.04981389, %bb.bn ], [ %.04981389, %isoption.exit782 ], [ %.04981389, %.thread1029 ], [ %.04981389, %bb.bz ], [ %.04981389, %bb.bs ], [ %.04981389, %bb.bm ], [ %.04981389, %isoption.exit673 ], [ %.04981389, %isoption.exit740 ], [ %.04981389, %isoption.exit735 ], [ %.04981389, %isoption.exit730 ], [ %.04981389, %bb.bg ], [ %.04981389, %isoption.exit720 ], [ 3, %bb.ci ], [ %.04981389, %bb.as ], [ %.04981389, %bb.av ], [ %.04981389, %bb.aw ], [ %.04981389, %bb.ax ]
  %.2494.ph = phi i32 [ %.04921391, %isoption.exit633 ], [ %.04921391, %isoption.exit792 ], [ 1, %bb.bn ], [ %.04921391, %isoption.exit782 ], [ %.04921391, %.thread1029 ], [ %.04921391, %bb.bz ], [ %.04921391, %bb.bs ], [ 0, %bb.bm ], [ %.04921391, %isoption.exit673 ], [ %.04921391, %isoption.exit740 ], [ %.04921391, %isoption.exit735 ], [ %.04921391, %isoption.exit730 ], [ %.04921391, %bb.bg ], [ %.04921391, %isoption.exit720 ], [ %.04921391, %bb.ci ], [ %.04921391, %bb.as ], [ %.04921391, %bb.av ], [ %.04921391, %bb.aw ], [ %.04921391, %bb.ax ]
  %.2490.ph = phi i32 [ %.04881392, %isoption.exit633 ], [ %.04881392, %isoption.exit792 ], [ 0, %bb.bn ], [ %.04881392, %isoption.exit782 ], [ %.04881392, %.thread1029 ], [ %.04881392, %bb.bz ], [ %.04881392, %bb.bs ], [ 1, %bb.bm ], [ %.04881392, %isoption.exit673 ], [ %.04881392, %isoption.exit740 ], [ %.04881392, %isoption.exit735 ], [ %.04881392, %isoption.exit730 ], [ %.04881392, %bb.bg ], [ %.04881392, %isoption.exit720 ], [ %.04881392, %bb.ci ], [ %.04881392, %bb.as ], [ %.04881392, %bb.av ], [ %.04881392, %bb.aw ], [ %.04881392, %bb.ax ]
  %.sroa.0337.7.ph = phi i64 [ %.sroa.0337.01394, %isoption.exit633 ], [ %.sroa.0337.01394, %isoption.exit792 ], [ %.sroa.0337.01394, %bb.bn ], [ %.sroa.0337.01394, %isoption.exit782 ], [ %.sroa.0337.5, %.thread1029 ], [ %.sroa.0337.3, %bb.bz ], [ %.sroa.0337.2, %bb.bs ], [ %.sroa.0337.01394, %bb.bm ], [ %.sroa.0337.01394, %isoption.exit673 ], [ %.sroa.0337.01394, %isoption.exit740 ], [ %.sroa.0337.01394, %isoption.exit735 ], [ %.sroa.0337.01394, %isoption.exit730 ], [ %.sroa.0337.01394, %bb.bg ], [ %.sroa.0337.01394, %isoption.exit720 ], [ %.sroa.0337.01394, %bb.ci ], [ %.sroa.0337.01394, %bb.as ], [ %.sroa.0337.01394, %bb.av ], [ %.sroa.0337.01394, %bb.aw ], [ %.sroa.0337.01394, %bb.ax ]
  %.sroa.26.7.ph = phi ptr [ %.sroa.26.01395, %isoption.exit633 ], [ %.sroa.26.01395, %isoption.exit792 ], [ %.sroa.26.01395, %bb.bn ], [ %.sroa.26.01395, %isoption.exit782 ], [ %.sroa.26.5, %.thread1029 ], [ %.sroa.26.3, %bb.bz ], [ %.sroa.26.2, %bb.bs ], [ %.sroa.26.01395, %bb.bm ], [ %.sroa.26.01395, %isoption.exit673 ], [ %.sroa.26.01395, %isoption.exit740 ], [ %.sroa.26.01395, %isoption.exit735 ], [ %.sroa.26.01395, %isoption.exit730 ], [ %.sroa.26.01395, %bb.bg ], [ %.sroa.26.01395, %isoption.exit720 ], [ %.sroa.26.01395, %bb.ci ], [ %.sroa.26.01395, %bb.as ], [ %.sroa.26.01395, %bb.av ], [ %.sroa.26.01395, %bb.aw ], [ %.sroa.26.01395, %bb.ax ]
  %.2481.ph = phi i32 [ %i.ca, %isoption.exit633 ], [ %.14801384, %isoption.exit792 ], [ %.14801384, %bb.bn ], [ %i.kf, %isoption.exit782 ], [ %.14801384, %.thread1029 ], [ %.14801384, %bb.bz ], [ %.14801384, %bb.bs ], [ %.14801384, %bb.bm ], [ %i.cw, %isoption.exit673 ], [ %.14801384, %isoption.exit740 ], [ %.14801384, %isoption.exit735 ], [ %i.ge, %isoption.exit730 ], [ %.14801384, %bb.bg ], [ %.14801384, %isoption.exit720 ], [ %.14801384, %bb.ci ], [ %.14801384, %bb.as ], [ %.14801384, %bb.av ], [ %.14801384, %bb.aw ], [ %.14801384, %bb.ax ]
  %.2468.ph = phi i32 [ %.04661400, %isoption.exit633 ], [ %.04661400, %isoption.exit792 ], [ %.04661400, %bb.bn ], [ %.04661400, %isoption.exit782 ], [ %.04661400, %.thread1029 ], [ %.04661400, %bb.bz ], [ %.04661400, %bb.bs ], [ %.04661400, %bb.bm ], [ %.04661400, %isoption.exit673 ], [ %i.gi, %isoption.exit740 ], [ %i.gg, %isoption.exit735 ], [ %.04661400, %isoption.exit730 ], [ %.04661400, %bb.bg ], [ %.04661400, %isoption.exit720 ], [ %.04661400, %bb.ci ], [ %.04661400, %bb.as ], [ %.04661400, %bb.av ], [ %.04661400, %bb.aw ], [ %.04661400, %bb.ax ]
  %i.lb = freeze i32 %.2481.ph
  br label %.loopexit

isoption.exit715:                                 ; preds = %bb.aw, %isoption.exit628, %isoption.exit640, %isoption.exit654, %isoption.exit668, %isoption.exit680, %isoption.exit694, %isoption.exit747, %isoption.exit701, %isoption.exit687, %isoption.exit661, %isoption.exit647, %isoption.exit.a
  %i.lc = phi i32 [ %i.bp, %isoption.exit.a ], [ %i.bp, %isoption.exit628 ], [ %i.bp, %isoption.exit747 ], [ %i.bp, %isoption.exit640 ], [ %i.ci, %isoption.exit647 ], [ %i.bp, %isoption.exit654 ], [ %i.bp, %isoption.exit661 ], [ %i.bp, %isoption.exit668 ], [ %i.bp, %bb.aw ], [ %i.bp, %isoption.exit680 ], [ %i.bp, %isoption.exit687 ], [ %i.bp, %isoption.exit694 ], [ %i.bp, %isoption.exit701 ]
  %.2872 = phi ptr [ %.3873, %isoption.exit.a ], [ %.4874, %isoption.exit628 ], [ %.23, %isoption.exit747 ], [ %.6876, %isoption.exit640 ], [ %.7877, %isoption.exit647 ], [ %.8878, %isoption.exit654 ], [ %.9, %isoption.exit661 ], [ %.10879, %isoption.exit668 ], [ %i.es, %bb.aw ], [ %.12881, %isoption.exit680 ], [ %.13882, %isoption.exit687 ], [ %.14, %isoption.exit694 ], [ %.15883, %isoption.exit701 ] ; 2 uses
  %.2481 = phi i32 [ %i.bu, %isoption.exit.a ], [ %i.by, %isoption.exit628 ], [ %i.gm, %isoption.exit747 ], [ %i.ce, %isoption.exit640 ], [ %.14801384, %isoption.exit647 ], [ %i.cm, %isoption.exit654 ], [ %i.cq, %isoption.exit661 ], [ %i.cu, %isoption.exit668 ], [ %.14801384, %bb.aw ], [ %i.da, %isoption.exit680 ], [ %i.de, %isoption.exit687 ], [ %i.di, %isoption.exit694 ], [ %i.dm, %isoption.exit701 ]
  %i.ld = freeze i32 %.2481                       ; 2 uses
  %.not526 = icmp eq ptr %.2872, null
  br i1 %.not526, label %.loopexit, label %bb.o, !llvm.loop !17

.loopexit:                                        ; preds = %isoption.exit715, %isoption.exit715.thread, %isoptish.exit.thread887.tail, %bb.i, %bb.n, %bb.m, %bb.g
  %.5508 = phi i32 [ %.05031386, %bb.i ], [ %.05031386, %bb.m ], [ %.05031386, %bb.n ], [ %.05031386, %bb.g ], [ %.05031386, %isoptish.exit.thread887.tail ], [ %.3506.ph, %isoption.exit715.thread ], [ %.05031386, %isoption.exit715 ]
  %.sroa.0312.4 = phi i64 [ %.sroa.0312.01387, %bb.i ], [ %.sroa.0312.01387, %bb.m ], [ %.sroa.0312.01387, %bb.n ], [ %.sroa.0312.01387, %bb.g ], [ %.sroa.0312.01387, %isoptish.exit.thread887.tail ], [ %.sroa.0312.3.ph, %isoption.exit715.thread ], [ %.sroa.0312.01387, %isoption.exit715 ] ; 2 uses
  %.sroa.11.4 = phi ptr [ %.sroa.11.01388, %bb.i ], [ %.sroa.11.01388, %bb.m ], [ %.sroa.11.01388, %bb.n ], [ %.sroa.11.01388, %bb.g ], [ %.sroa.11.01388, %isoptish.exit.thread887.tail ], [ %.sroa.11.3.ph, %isoption.exit715.thread ], [ %.sroa.11.01388, %isoption.exit715 ] ; 2 uses
  %.3501 = phi i32 [ %.04981389, %bb.i ], [ %.04981389, %bb.m ], [ %.04981389, %bb.n ], [ %.04981389, %bb.g ], [ %.04981389, %isoptish.exit.thread887.tail ], [ %.2500.ph, %isoption.exit715.thread ], [ %.04981389, %isoption.exit715 ] ; 2 uses
  %.1497 = phi i32 [ %.04961390, %bb.i ], [ %.04961390, %bb.m ], [ %.04961390, %bb.n ], [ %.04961390, %bb.g ], [ 1, %isoptish.exit.thread887.tail ], [ 0, %isoption.exit715.thread ], [ 0, %isoption.exit715 ]
  %.3495 = phi i32 [ %.04921391, %bb.i ], [ 1, %bb.m ], [ 0, %bb.n ], [ %.04921391, %bb.g ], [ %.04921391, %isoptish.exit.thread887.tail ], [ %.2494.ph, %isoption.exit715.thread ], [ %.04921391, %isoption.exit715 ]
  %.3491 = phi i32 [ 1, %bb.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ %.04881392, %bb.g ], [ %.04881392, %isoptish.exit.thread887.tail ], [ %.2490.ph, %isoption.exit715.thread ], [ %.04881392, %isoption.exit715 ]
  %.1486 = phi ptr [ %.04851393, %bb.i ], [ %.04851393, %bb.m ], [ %.04851393, %bb.n ], [ %i.al, %bb.g ], [ %.04851393, %isoptish.exit.thread887.tail ], [ %.04851393, %isoption.exit715.thread ], [ %.04851393, %isoption.exit715 ] ; 2 uses
  %.sroa.0337.9 = phi i64 [ %.sroa.0337.01394, %bb.i ], [ %.sroa.0337.01394, %bb.m ], [ %.sroa.0337.01394, %bb.n ], [ %.sroa.0337.01394, %bb.g ], [ %.sroa.0337.01394, %isoptish.exit.thread887.tail ], [ %.sroa.0337.7.ph, %isoption.exit715.thread ], [ %.sroa.0337.01394, %isoption.exit715 ] ; 2 uses
  %.sroa.26.9 = phi ptr [ %.sroa.26.01395, %bb.i ], [ %.sroa.26.01395, %bb.m ], [ %.sroa.26.01395, %bb.n ], [ %.sroa.26.01395, %bb.g ], [ %.sroa.26.01395, %isoptish.exit.thread887.tail ], [ %.sroa.26.7.ph, %isoption.exit715.thread ], [ %.sroa.26.01395, %isoption.exit715 ] ; 2 uses
  %.sroa.0370.1 = phi i64 [ %i.at, %bb.i ], [ %i.be, %bb.m ], [ %.sroa.0370.01396, %bb.n ], [ %.sroa.0370.01396, %bb.g ], [ %.sroa.0370.01396, %isoptish.exit.thread887.tail ], [ %.sroa.0370.01396, %isoption.exit715.thread ], [ %.sroa.0370.01396, %isoption.exit715 ] ; 2 uses
  %.sroa.13377.1 = phi ptr [ %i.au, %bb.i ], [ %i.bf, %bb.m ], [ %.sroa.13377.01397, %bb.n ], [ %.sroa.13377.01397, %bb.g ], [ %.sroa.13377.01397, %isoptish.exit.thread887.tail ], [ %.sroa.13377.01397, %isoption.exit715.thread ], [ %.sroa.13377.01397, %isoption.exit715 ] ; 2 uses
  %.3482 = phi i32 [ %.04791398, %bb.i ], [ %.04791398, %bb.m ], [ %.04791398, %bb.n ], [ %.04791398, %bb.g ], [ %.04791398, %isoptish.exit.thread887.tail ], [ %i.lb, %isoption.exit715.thread ], [ %i.ld, %isoption.exit715 ] ; 2 uses
  %.1473 = phi i32 [ %.04721399, %bb.i ], [ %.04721399, %bb.m ], [ %i.bk, %bb.n ], [ %.04721399, %bb.g ], [ %.04721399, %isoptish.exit.thread887.tail ], [ %.04721399, %isoption.exit715.thread ], [ %.04721399, %isoption.exit715 ] ; 2 uses
  %.3469 = phi i32 [ %.04661400, %bb.i ], [ %.04661400, %bb.m ], [ %.04661400, %bb.n ], [ %.04661400, %bb.g ], [ %.04661400, %isoptish.exit.thread887.tail ], [ %.2468.ph, %isoption.exit715.thread ], [ %.04661400, %isoption.exit715 ] ; 2 uses
  %i.le = add nsw i32 %.5508, 1                   ; 2 uses
  %i.lf = icmp slt i32 %i.le, %0
  br i1 %i.lf, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.lg = icmp eq i32 %.1473, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.sroa.0312.0.lcssa = phi i64 [ %i.q, %bb.c ], [ %.sroa.0312.4, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.11.0.lcssa = phi ptr [ %i.r, %bb.c ], [ %.sroa.11.4, %._crit_edge.loopexit ] ; 2 uses
  %.0498.lcssa = phi i32 [ 0, %bb.c ], [ %.3501, %._crit_edge.loopexit ] ; 3 uses
  %.0485.lcssa = phi ptr [ null, %bb.c ], [ %.1486, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.0337.0.lcssa = phi i64 [ %i.k, %bb.c ], [ %.sroa.0337.9, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.26.0.lcssa = phi ptr [ %i.l, %bb.c ], [ %.sroa.26.9, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0370.0.lcssa = phi i64 [ %i.h, %bb.c ], [ %.sroa.0370.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.13377.0.lcssa = phi ptr [ %i.i, %bb.c ], [ %.sroa.13377.1, %._crit_edge.loopexit ] ; 4 uses
  %.0479.lcssa = phi i32 [ 0, %bb.c ], [ %.3482, %._crit_edge.loopexit ] ; 18 uses
  %.0472.lcssa = phi i1 [ true, %bb.c ], [ %i.lg, %._crit_edge.loopexit ]
  %.0466.lcssa = phi i32 [ 0, %bb.c ], [ %.3469, %._crit_edge.loopexit ]
  %i.lh = call i32 @isatty(i32 noundef 1) #19
  %.not566 = icmp eq i32 %i.lh, 0
  br i1 %.not566, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge
  %i.li = load i32, ptr %i.c, align 4, !tbaa !13
  %i.lj = or i32 %i.li, 132                       ; 2 uses
  store i32 %i.lj, ptr %i.c, align 4, !tbaa !13
  %i.lk = call ptr @getenv(ptr noundef nonnull @.str.52) #19 ; 2 uses
  %.not567 = icmp eq ptr %i.lk, null
  br i1 %.not567, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !26
  %.not568 = icmp eq i8 %i.ll, 0
  br i1 %.not568, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lm = and i32 %i.lj, -5
  store i32 %i.lm, ptr %i.c, align 4, !tbaa !13
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cr, %bb.cs, %bb.ct, %._crit_edge
  %i.ln = and i32 %.0479.lcssa, 256
  %.not569 = icmp eq i32 %i.ln, 0
  br i1 %.not569, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lo = load i32, ptr %i.c, align 4, !tbaa !13
  %i.lp = or i32 %i.lo, 8
  store i32 %i.lp, ptr %i.c, align 4, !tbaa !13
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.lq = and i32 %.0479.lcssa, 32
  %.not570 = icmp eq i32 %i.lq, 0
  br i1 %.not570, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lr = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ls = or i32 %i.lr, 2
  store i32 %i.ls, ptr %i.c, align 4, !tbaa !13
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.lt = and i32 %.0479.lcssa, 64
  %.not571 = icmp eq i32 %i.lt, 0
  br i1 %.not571, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lu = load i32, ptr %i.c, align 4, !tbaa !13
  %i.lv = or i32 %i.lu, 4
  store i32 %i.lv, ptr %i.c, align 4, !tbaa !13
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.lw = and i32 %.0479.lcssa, 128
  %.not572 = icmp eq i32 %i.lw, 0
  br i1 %.not572, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lx = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ly = and i32 %i.lx, -5
  store i32 %i.ly, ptr %i.c, align 4, !tbaa !13
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.lz = call ptr @getenv(ptr noundef nonnull @.str.53) #19
  %i.ma = call i32 @jq_set_colors(ptr noundef %i.lz) #19
  %.not573 = icmp eq i32 %i.ma, 0
  br i1 %.not573, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.mb = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull @.str.54, i64 25, i64 1, ptr %i.mb) #20 ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.mc = call i32 @jv_get_kind(i64 %.sroa.0312.0.lcssa, ptr %.sroa.11.0.lcssa) #19
  %i.md = icmp eq i32 %i.mc, 1
  br i1 %i.md, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.me = call { i64, ptr } @jv_array() #19       ; 2 uses
  %i.mf = extractvalue { i64, ptr } %i.me, 0
  %i.mg = extractvalue { i64, ptr } %i.me, 1
  %i.mh = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.55) #19 ; 2 uses
  %i.mi = extractvalue { i64, ptr } %i.mh, 0
  %i.mj = extractvalue { i64, ptr } %i.mh, 1
  %i.mk = call { i64, ptr } @jv_array_append(i64 %i.mf, ptr %i.mg, i64 %i.mi, ptr %i.mj) #19 ; 2 uses
  %i.ml = extractvalue { i64, ptr } %i.mk, 0
  %i.mm = extractvalue { i64, ptr } %i.mk, 1
  %i.mn = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.56) #19 ; 2 uses
  %i.mo = extractvalue { i64, ptr } %i.mn, 0
  %i.mp = extractvalue { i64, ptr } %i.mn, 1
  %i.mq = call { i64, ptr } @jv_array_append(i64 %i.ml, ptr %i.mm, i64 %i.mo, ptr %i.mp) #19 ; 2 uses
  %i.mr = extractvalue { i64, ptr } %i.mq, 0
  %i.ms = extractvalue { i64, ptr } %i.mq, 1
  %i.mt = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.57) #19 ; 2 uses
  %i.mu = extractvalue { i64, ptr } %i.mt, 0
  %i.mv = extractvalue { i64, ptr } %i.mt, 1
  %i.mw = call { i64, ptr } @jv_array_append(i64 %i.mr, ptr %i.ms, i64 %i.mu, ptr %i.mv) #19 ; 2 uses
  %i.mx = extractvalue { i64, ptr } %i.mw, 0
  %i.my = extractvalue { i64, ptr } %i.mw, 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.sroa.0312.6 = phi i64 [ %i.mx, %bb.df ], [ %.sroa.0312.0.lcssa, %bb.de ]
  %.sroa.11.6 = phi ptr [ %i.my, %bb.df ], [ %.sroa.11.0.lcssa, %bb.de ]
  %i.mz = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.na = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.58) #19 ; 2 uses
  %i.nb = extractvalue { i64, ptr } %i.na, 0
  %i.nc = extractvalue { i64, ptr } %i.na, 1
  call void @jq_set_attr(ptr noundef %i.mz, i64 %i.nb, ptr %i.nc, i64 %.sroa.0312.6, ptr %.sroa.11.6) #19
  %i.nd = load ptr, ptr %1, align 8, !tbaa !25
  %i.ne = call noalias ptr @strdup(ptr noundef %i.nd) #19 ; 3 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ng = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite597 = call i64 @fwrite(ptr nonnull @.str.59, i64 25, i64 1, ptr %i.ng) #20 ; 0 uses
  call void @exit(i32 noundef 1) #24
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.nh = load ptr, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  %i.ni = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.60) #19 ; 2 uses
  %i.nj = extractvalue { i64, ptr } %i.ni, 0
  %i.nk = extractvalue { i64, ptr } %i.ni, 1
  %i.nl = call ptr @dirname(ptr noundef nonnull %i.ne) #19
  %i.nm = call { i64, ptr } @jv_string(ptr noundef %i.nl) #19 ; 2 uses
  %i.nn = extractvalue { i64, ptr } %i.nm, 0
  %i.no = extractvalue { i64, ptr } %i.nm, 1
  call void @jq_set_attr(ptr noundef %i.nh, i64 %i.nj, ptr %i.nk, i64 %i.nn, ptr %i.no) #19
  call void @free(ptr noundef nonnull %i.ne) #19
  %i.np = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.61) #19 ; 2 uses
  %i.nq = extractvalue { i64, ptr } %i.np, 0
  %i.nr = extractvalue { i64, ptr } %i.np, 1
  %i.ns = call { i64, ptr } @jv_string(ptr noundef nonnull @.str.45) #19 ; 2 uses
  %i.nt = extractvalue { i64, ptr } %i.ns, 0
  %i.nu = extractvalue { i64, ptr } %i.ns, 1
  call void @jq_set_attr(ptr noundef %i.nh, i64 %i.nq, ptr %i.nr, i64 %i.nt, ptr %i.nu) #19
  %.not574 = icmp eq ptr %.0485.lcssa, null
  %i.nv = and i32 %.0479.lcssa, 512
  %.not575 = icmp eq i32 %i.nv, 0                 ; 2 uses
  br i1 %.not574, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di
  br i1 %.not575, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.nw = call i32 @isatty(i32 noundef 1) #19
  %.not576 = icmp eq i32 %i.nw, 0
  br i1 %.not576, label %.thread, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nx = call i32 @isatty(i32 noundef 0) #19
  %.not577 = icmp eq i32 %i.nx, 0
  br i1 %.not577, label %.thread, label %bb.dm
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.vj = call i32 @jq_halted(ptr noundef %i.vc) #19
  %.not595 = icmp eq i32 %i.vj, 0
  br i1 %.not595, label %.outer, label %.critedge, !llvm.loop !19

.outer:                                           ; preds = %.preheader, %.split
  %i.vk = phi ptr [ %.pre, %.split ], [ %i.tp, %.preheader ]
  %.0474.ph = phi i32 [ %.1475, %.split ], [ -1, %.preheader ] ; 4 uses
  %.12.ph = phi i32 [ %i.ve, %.split ], [ -4, %.preheader ] ; 3 uses
  %i.vl = call i32 @jq_util_input_errors(ptr noundef %i.vk) #19
  %i.vm = icmp eq i32 %i.vl, 0
  br i1 %i.vm, label %.lr.ph1411.preheader, label %.critedge

.lr.ph1411.preheader:                             ; preds = %.outer
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  br label %.lr.ph1411

.split1440.us:                                    ; preds = %.critedge9.us.us
  %i.vn = call { i64, ptr } @jv_invalid_get_msg(i64 %i.ty, ptr %i.tz) #19 ; 2 uses
  %i.vo = extractvalue { i64, ptr } %i.vn, 0      ; 2 uses
  %i.vp = extractvalue { i64, ptr } %i.vn, 1      ; 2 uses
  %i.vq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vr = call ptr @jv_string_value(i64 %i.vo, ptr %i.vp) #19
  %i.vs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vq, ptr noundef nonnull @.str.73, ptr noundef %i.vr) #23 ; 0 uses
  call void @jv_free(i64 %i.vo, ptr %i.vp) #19
  br label %.critedge

bb.el:                                            ; preds = %.critedge9
  %i.vt = call { i64, ptr } @jv_invalid_get_msg(i64 %i.uu, ptr %i.uv) #19 ; 2 uses
  %i.vu = extractvalue { i64, ptr } %i.vt, 0      ; 2 uses
  %i.vv = extractvalue { i64, ptr } %i.vt, 1      ; 2 uses
  %i.vw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.vx = call ptr @jv_string_value(i64 %i.vu, ptr %i.vv) #19
  %i.vy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vw, ptr noundef nonnull @.str.74, ptr noundef %i.vx) #23 ; 0 uses
  call void @jv_free(i64 %i.vu, ptr %i.vv) #19
  %i.vz = call i32 @jq_util_input_errors(ptr noundef %.pre) #19
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %.lr.ph1411, label %.critedge

.split.us.us..critedge.loopexit_crit_edge:        ; preds = %.split.us.us
  br label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %.outer, %.split, %bb.el, %bb.ek, %.outer.us, %bb.ei, %.outer.us.preheader, %.split.us.us..critedge.loopexit_crit_edge, %.split1440.us, %bb.ej
  %.3477 = phi i32 [ -1, %bb.ej ], [ %.0474.ph.us1928, %.split1440.us ], [ -1, %.outer.us.preheader ], [ %.0474.ph, %bb.el ], [ %.1475.us, %.split.us.us..critedge.loopexit_crit_edge ], [ %.0474.ph.us1928, %bb.ei ], [ %.1475.us, %.outer.us ], [ %.0474.ph, %bb.ek ], [ %.1475, %.split ], [ %.0474.ph, %.outer ]
  %.15 = phi i32 [ %i.us, %bb.ej ], [ 5, %.split1440.us ], [ -4, %.outer.us.preheader ], [ %.12.ph, %bb.el ], [ %i.ui, %.split.us.us..critedge.loopexit_crit_edge ], [ %.12.ph.us1929, %bb.ei ], [ %i.ui, %.outer.us ], [ %.12.ph, %bb.ek ], [ %i.ve, %.split ], [ %.12.ph, %.outer ]
  %i.wb = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.wc = call i32 @jq_util_input_errors(ptr noundef %i.wb) #19
  %.not596 = icmp eq i32 %i.wc, 0
  %spec.select621 = select i1 %.not596, i32 %.15, i32 2
  br label %.thread1104

.thread1104:                                      ; preds = %bb.dt, %bb.dr, %isoption.exit816, %isoption.exit811, %isoption.exit806, %bb.cg, %.critedge, %bb.dz, %bb.b
  %.sroa.0337.16 = phi i64 [ %i.k, %bb.b ], [ %.sroa.0337.15, %bb.dz ], [ %.sroa.0337.15, %.critedge ], [ %.sroa.0337.01394, %isoption.exit816 ], [ %.sroa.0337.01394, %bb.cg ], [ %.sroa.0337.01394, %isoption.exit806 ], [ %.sroa.0337.01394, %isoption.exit811 ], [ %.sroa.0337.0.lcssa, %bb.dr ], [ %.sroa.0337.0.lcssa, %bb.dt ]
  %.sroa.26.16 = phi ptr [ %i.l, %bb.b ], [ %.sroa.26.15, %bb.dz ], [ %.sroa.26.15, %.critedge ], [ %.sroa.26.01395, %isoption.exit816 ], [ %.sroa.26.01395, %bb.cg ], [ %.sroa.26.01395, %isoption.exit806 ], [ %.sroa.26.01395, %isoption.exit811 ], [ %.sroa.26.0.lcssa, %bb.dr ], [ %.sroa.26.0.lcssa, %bb.dt ]
  %.sroa.0370.5 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0370.4, %bb.dz ], [ %.sroa.0370.4, %.critedge ], [ %.sroa.0370.01396, %isoption.exit816 ], [ %.sroa.0370.01396, %bb.cg ], [ %.sroa.0370.01396, %isoption.exit806 ], [ %.sroa.0370.01396, %isoption.exit811 ], [ %.sroa.0370.0.lcssa, %bb.dr ], [ %.sroa.0370.0.lcssa, %bb.dt ]
  %.sroa.13377.5 = phi ptr [ %i.i, %bb.b ], [ %.sroa.13377.4, %bb.dz ], [ %.sroa.13377.4, %.critedge ], [ %.sroa.13377.01397, %isoption.exit816 ], [ %.sroa.13377.01397, %bb.cg ], [ %.sroa.13377.01397, %isoption.exit806 ], [ %.sroa.13377.01397, %isoption.exit811 ], [ %.sroa.13377.0.lcssa, %bb.dr ], [ %.sroa.13377.0.lcssa, %bb.dt ]
  %.5484 = phi i32 [ 0, %bb.b ], [ %.0479.lcssa, %bb.dz ], [ %.0479.lcssa, %.critedge ], [ %.14801384, %isoption.exit816 ], [ %.14801384, %bb.cg ], [ %.14801384, %isoption.exit806 ], [ %.14801384, %isoption.exit811 ], [ %.0479.lcssa, %bb.dr ], [ %.0479.lcssa, %bb.dt ]
  %.4478 = phi i32 [ -1, %bb.b ], [ -1, %bb.dz ], [ %.3477, %.critedge ], [ -1, %isoption.exit816 ], [ -1, %bb.cg ], [ -1, %isoption.exit806 ], [ -1, %isoption.exit811 ], [ -1, %bb.dr ], [ -1, %bb.dt ]
  %.16 = phi i32 [ 2, %bb.b ], [ 3, %bb.dz ], [ %spec.select621, %.critedge ], [ %i.kv, %isoption.exit816 ], [ 2, %bb.cg ], [ 0, %isoption.exit806 ], [ 0, %isoption.exit811 ], [ 2, %bb.dr ], [ 2, %bb.dt ]
  %i.wd = load ptr, ptr @stdout, align 8, !tbaa !15 ; 2 uses
  %i.we = call i32 @ferror(ptr noundef %i.wd) #19
  %i.wf = call i32 @fclose(ptr noundef %i.wd)
  %i.wg = or i32 %i.wf, %i.we
  %or.cond13.not = icmp eq i32 %i.wg, 0
  br i1 %or.cond13.not, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.thread1104
  %i.wh = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.wi = tail call ptr @__errno_location() #21
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !13
  %i.wk = call ptr @strerror(i32 noundef %i.wj) #19
  %i.wl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wh, ptr noundef nonnull @.str.75, ptr noundef %i.wk) #23 ; 0 uses
  br label %bb.en

bb.en:                                            ; preds = %.thread1104, %bb.em
  %.17 = phi i32 [ 2, %bb.em ], [ %.16, %.thread1104 ] ; 3 uses
  call void @jv_free(i64 %.sroa.0370.5, ptr %.sroa.13377.5) #19
  call void @jv_free(i64 %.sroa.0337.16, ptr %.sroa.26.16) #19
  call void @jq_util_input_free(ptr noundef nonnull %i.b) #19
  call void @jq_teardown(ptr noundef nonnull %i.a) #19
  %i.wm = and i32 %.5484, 4096
  %.not619 = icmp eq i32 %i.wm, 0
  br i1 %.not619, label %bb.eu, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.not620 = icmp eq i32 %.17, -4
  br i1 %.not620, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.wn = call i32 @llvm.abs.i32(i32 %.17, i1 true)
  call void @exit(i32 noundef %i.wn) #25
  unreachable

bb.eq:                                            ; preds = %bb.eo
  switch i32 %.4478, label %bb.et [
    i32 -1, label %bb.er
    i32 0, label %bb.es
  ]

bb.er:                                            ; preds = %bb.eq
  call void @exit(i32 noundef 4) #24
  unreachable

bb.es:                                            ; preds = %bb.eq
  call void @exit(i32 noundef 1) #24
  unreachable

bb.et:                                            ; preds = %bb.eq
  call void @exit(i32 noundef 0) #25
  unreachable

bb.eu:                                            ; preds = %bb.en
  %i.wo = call i32 @llvm.smax.i32(i32 %.17, i32 0)
  call void @exit(i32 noundef %i.wo) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @onig_set_parse_depth_limit(i32 noundef) local_unnamed_addr #3

declare { i64, ptr } @jv_array() local_unnamed_addr #3

declare { i64, ptr } @jv_object() local_unnamed_addr #3

declare ptr @jq_init() local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @jq_util_input_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, ptr } @jv_null() local_unnamed_addr #3

declare { i64, ptr } @jv_array_append(i64, ptr, i64, ptr) local_unnamed_addr #3

declare { i64, ptr } @jv_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i64, ptr } @jv_parse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @die() unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.76, i64 50, i64 1, ptr %i.a) #20 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 60, i64 1, ptr %i.b) #20 ; 0 uses
  tail call void @exit(i32 noundef 2) #24
  unreachable
}

declare void @jq_util_input_add_input(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @jv_get_kind(i64, ptr) local_unnamed_addr #3

declare { i64, ptr } @jq_realpath(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

declare i32 @jv_object_has(i64, ptr, i64, ptr) local_unnamed_addr #3

declare { i64, ptr } @jv_copy(i64, ptr) local_unnamed_addr #3

declare { i64, ptr } @jv_object_set(i64, ptr, i64, ptr, i64, ptr) local_unnamed_addr #3

declare { i64, ptr } @jv_load_file(ptr noundef, i32 noundef) local_unnamed_addr #3

declare { i64, ptr } @jv_invalid_get_msg(i64, ptr) local_unnamed_addr #3

declare ptr @jv_string_value(i64, ptr) local_unnamed_addr #3

declare void @jv_free(i64, ptr) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind uwtable
define internal fastcc void @usage(i32 noundef range(i32 0, 3) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %0, 0                        ; 2 uses
  %stdout.val = load ptr, ptr @stdout, align 8
  %stderr.val = load ptr, ptr @stderr, align 8
  %.0 = select i1 %i.a, ptr %stdout.val, ptr %stderr.val ; 2 uses
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.45) #19
  %.not = trunc nuw i32 %1 to i1                  ; 2 uses
  %. = select i1 %.not, i64 48, i64 2372
  %.str.80..str.79 = select i1 %.not, ptr @.str.79, ptr @.str.80
  %fwrite = tail call i64 @fwrite(ptr nonnull %.str.80..str.79, i64 %., i64 1, ptr %.0) ; 0 uses
  %i.c = icmp slt i32 %i.b, 0
  %or.cond = and i1 %i.a, %i.c
  %i.d = select i1 %or.cond, i32 2, i32 %0
  tail call void @exit(i32 noundef %i.d) #25
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @jq_testsuite(i64, ptr, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @jq_set_colors(ptr noundef) local_unnamed_addr #3

declare void @jq_set_attr(ptr noundef, i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @dirname(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare i32 @jv_string_length_bytes(i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @jq_compile_args(ptr noundef, ptr noundef, i64, ptr) local_unnamed_addr #3

declare void @jq_dump_disassembly(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jq_util_input_set_parser(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @jv_parser_new(i32 noundef) local_unnamed_addr #3

declare void @jq_set_input_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare { i64, ptr } @jq_util_input_next_input_cb(ptr noundef, ptr noundef) #3

declare void @jq_set_debug_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @debug_cb(ptr nofree noundef readonly captures(none) %0, i64 %1, ptr %2) #14 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !13
  %i.b = tail call { i64, ptr } @jv_array() #19   ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1
  %i.e = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.81) #19 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = extractvalue { i64, ptr } %i.e, 1
  %i.h = tail call { i64, ptr } @jv_array_append(i64 %i.c, ptr %i.d, i64 %i.f, ptr %i.g) #19 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = tail call { i64, ptr } @jv_array_append(i64 %i.i, ptr %i.j, i64 %1, ptr %2) #19 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.o = and i32 %i.a, -2
  tail call void @jv_dumpf(i64 %i.l, ptr %i.m, ptr noundef %i.n, i32 noundef %i.o) #19
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.p) ; 0 uses
  ret void
}

declare void @jq_set_stderr_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @stderr_cb(ptr nofree readonly captures(none) %0, i64 %1, ptr %2) #15 {
bb.a:
  %i.a = tail call i32 @jv_get_kind(i64 %1, ptr %2) #19
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @jv_string_value(i64 %1, ptr %2) #19
  %i.d = tail call { i64, ptr } @jv_copy(i64 %1, ptr %2) #19 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = tail call i32 @jv_string_length_bytes(i64 %i.e, ptr %i.f) #19
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.j = tail call i64 @fwrite(ptr noundef readonly %i.c, i64 noundef 1, i64 noundef range(i64 -2147483648, 2147483648) %i.h, ptr noundef %i.i) #20 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call { i64, ptr } @jv_dump_string(i64 %1, ptr %2, i32 noundef 0) #19 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.o = tail call ptr @jv_string_value(i64 %i.l, ptr %i.m) #19
  %fputs = tail call i32 @fputs(ptr %i.o, ptr %i.n) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi i64 [ %1, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.8.0 = phi ptr [ %2, %bb.b ], [ %i.m, %bb.c ]
  tail call void @jv_free(i64 %.sroa.02.0, ptr %.sroa.8.0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @process(ptr noundef %0, i64 %1, ptr %2, i32 noundef range(i32 0, 4) %3, i32 noundef %4, i32 noundef range(i32 0, 65536) %5) unnamed_addr #14 {
bb.a:
  tail call void @jq_start(ptr noundef %0, i64 %1, ptr %2, i32 noundef %3) #19
  %i.a = tail call { i64, ptr } @jq_next(ptr noundef %0) #19 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 6 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 6 uses
  %i.d = tail call i32 @jv_get_kind(i64 %i.b, ptr %i.c) #19
  %.not119128 = icmp eq i32 %i.d, 0
  br i1 %.not119128, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = and i32 %5, 8
  %.not107 = icmp eq i32 %i.e, 0
  %i.f = and i32 %5, 32
  %.not109 = icmp eq i32 %i.f, 0
  %i.g = and i32 %5, 16
  %.not110 = icmp eq i32 %i.g, 0                  ; 5 uses
  %i.h = and i32 %5, 16384
  %.not108 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = and i32 %5, 1024
  %.not116 = icmp eq i32 %i.i, 0                  ; 3 uses
  %i.j = and i32 %5, 2048
  %.not118 = icmp eq i32 %i.j, 0                  ; 4 uses
  br i1 %.not107, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not108, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.i
  %i.k = phi ptr [ %i.w, %bb.i ], [ %i.c, %.lr.ph.split.us ] ; 3 uses
  %i.l = phi i64 [ %i.v, %bb.i ], [ %i.b, %.lr.ph.split.us ] ; 3 uses
  %i.m = tail call i32 @jv_get_kind(i64 %i.l, ptr %i.k) #19
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us
  %i.o = tail call i32 @jv_get_kind(i64 %i.l, ptr %i.k) #19
  %i.p = icmp eq i32 %i.o, 1
  %spec.select.us.us = sext i1 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.split.us
  %.1.us.us = phi i32 [ -1, %.lr.ph.split.us.split.us ], [ %spec.select.us.us, %bb.b ]
  tail call void @jv_dump(i64 %i.l, ptr %i.k, i32 noundef %4) #19
  br i1 %.not116, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !15
  %fputc120.us.us = tail call i32 @fputc(i32 10, ptr %i.q) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not110, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !15
  %fputc121.us.us = tail call i32 @fputc(i32 0, ptr %i.r) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not118, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.t = tail call i32 @fflush(ptr noundef %i.s)  ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = tail call { i64, ptr } @jq_next(ptr noundef %0) #19 ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0        ; 3 uses
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 3 uses
  %i.x = tail call i32 @jv_get_kind(i64 %i.v, ptr %i.w) #19
  %.not119.us.us = icmp eq i32 %i.x, 0
  br i1 %.not119.us.us, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !31

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not116, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %bb.o
  %i.y = phi ptr [ %i.al, %bb.o ], [ %i.c, %.lr.ph.split.us.split ] ; 3 uses
  %i.z = phi i64 [ %i.ak, %bb.o ], [ %i.b, %.lr.ph.split.us.split ] ; 3 uses
  %i.aa = tail call i32 @jv_get_kind(i64 %i.z, ptr %i.y) #19
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.k, label %bb.j

end_hunk_2
