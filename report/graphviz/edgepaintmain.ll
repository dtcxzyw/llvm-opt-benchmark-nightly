Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/edgepaintmain?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ingraph_state = type { %union.anon, i32, i32, ptr, ptr, i8, i32 }
%union.anon = type { ptr }

@Files = internal unnamed_addr global ptr null, align 8
@fname = internal unnamed_addr global ptr null, align 8
@Verbose = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [64 x i8] c"/opt-bench/work/graphviz/graphviz/cmd/edgepaint/edgepaintmain.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"[Graphviz] %s:%d: %04d-%02d-%02d %02d:%02d:%02d \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Process graph %s in file %s\00", align 1
@outfile = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"lab\00", align 1
@init.opts = internal constant [7 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.5, i32 1, [4 x i8] zeroinitializer, ptr null, i32 128, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.6, i32 1, [4 x i8] zeroinitializer, ptr null, i32 129, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.7, i32 1, [4 x i8] zeroinitializer, ptr null, i32 130, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.8, i32 1, [4 x i8] zeroinitializer, ptr null, i32 131, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.9, i32 1, [4 x i8] zeroinitializer, ptr null, i32 132, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.10, i32 0, [4 x i8] zeroinitializer, ptr null, i32 133, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"accuracy\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"color_scheme\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"random_seed\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"share_endpoint\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"a:c:r:l:o:s:v?\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"ccuracy=\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ngle=\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"olor_scheme=\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"andom_seed=\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"ightness=\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"hare_endpoint\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"option -%c unrecognized.\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"%s:%d: claimed unreachable code was reached\0A\00", align 1
@optopt = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"--accuracy option must be a positive real number.\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"--angle option must be a positive real number between 0 and 90.\0A\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"--color_scheme option must be a known color scheme.\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"invalid --lightness=%s option.\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"--random_seed option must be an integer.\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [50 x i8] c"Usage: %s <options> gv file with 2D coordinates.\0A\00", align 1
@.str.30 = private unnamed_addr constant [112 x i8] c"Find a color assignment of the edges, such that edges that cross at small angle have as different as possible.\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Options are: \0A\00", align 1
@.str.32 = private unnamed_addr constant [141 x i8] c" --accuracy=e      : accuracy with which to find the maximally different coloring for each node with regard to its neighbors. Default 0.01.\0A\00", align 1
@.str.33 = private unnamed_addr constant [115 x i8] c" --angle=a         : if edge crossing is less than that angle a, then make the edge colors different. Default 15.\0A\00", align 1
@.str.34 = private unnamed_addr constant [142 x i8] c" --random_seed=s   : random seed to use. s must be an integer. If s is negative, we do -s iterations with different seeds and pick the best.\0A\00", align 1
@.str.35 = private unnamed_addr constant [94 x i8] c" --color_scheme=c  : palette used. The string c should be \22rgb\22, \22gray\22, \22lab\22 (default); or\0A\00", align 1
@.str.36 = private unnamed_addr constant [90 x i8] c"       a comma-separated list of RGB colors in hex (e.g., \22#ff0000,#aabbed,#eeffaa\22); or\0A\00", align 1
@.str.37 = private unnamed_addr constant [123 x i8] c"       a string specifying a Brewer color scheme (e.g., \22accent7\22; see https://graphviz.org/doc/info/colors.html#brewer).\0A\00", align 1
@.str.38 = private unnamed_addr constant [135 x i8] c" --lightness=l1,l2 : only applied for LAB color scheme: l1 must be integer >=0, l2 integer <=100, and l1 <=l2. By default we use 0,70\0A\00", align 1
@.str.39 = private unnamed_addr constant [135 x i8] c" --share_endpoint  :  if this option is specified, edges that shares an end point are not considered in conflict if they are close to\0A\00", align 1
@.str.40 = private unnamed_addr constant [86 x i8] c"       parallel but is on the opposite ends of the shared point (around 180 degree).\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c" -v               : verbose\0A\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c" -o fname         :  write output to file fname (stdout)\0A\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"%s: could not open file %s for %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Graph %s contains loops or multiedges\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [2 x i32], align 8                ; 5 uses
  %2 = alloca %struct.ingraph_state, align 8      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i64 300647710720, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.i = load ptr, ptr %1, align 8, !tbaa !16     ; 9 uses
  store ptr null, ptr @outfile, align 8, !tbaa !11
  store i8 0, ptr @Verbose, align 1, !tbaa !17
  store double 1.000000e-02, ptr %i.d, align 8, !tbaa !19
  store double 1.500000e+01, ptr %i.e, align 8, !tbaa !19
  store i32 123, ptr %i.f, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.k = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @init.opts, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.thread105.i
  %.021 = phi i32 [ %.122, %.thread105.i ], [ 0, %bb.a ] ; 7 uses
  %.020 = phi ptr [ %.1, %.thread105.i ], [ @.str.4, %bb.a ] ; 8 uses
  %i.m = phi i32 [ %i.bo, %.thread105.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr @optarg, align 8, !tbaa !16 ; 19 uses
  switch i32 %i.m, label %.thread82.i [
    i32 97, label %bb.b
    i32 99, label %bb.d
    i32 114, label %bb.e
    i32 108, label %bb.f
    i32 115, label %bb.g
    i32 130, label %bb.u
    i32 132, label %bb.w
    i32 131, label %bb.z
    i32 133, label %.thread105.i
    i32 63, label %bb.h
    i32 111, label %bb.k
    i32 118, label %bb.o
    i32 128, label %bb.p
    i32 129, label %bb.r
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(9) @.str.12, i64 noundef 8) #13
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.thread85.i, label %bb.c

.thread85.i:                                      ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(6) @.str.13, i64 noundef 5) #13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread89.i, label %.thread.i

.thread89.i:                                      ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  br label %bb.r

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(13) @.str.14, i64 noundef 12) #13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread93.i, label %.thread.i

.thread93.i:                                      ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  br label %bb.u

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(12) @.str.15, i64 noundef 11) #13
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread101.i, label %.thread.i

.thread101.i:                                     ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  br label %bb.z

bb.f:                                             ; preds = %.lr.ph.i
  %i.aa = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(10) @.str.16, i64 noundef 9) #13
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread97.i, label %.thread.i

.thread97.i:                                      ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  br label %bb.w

bb.g:                                             ; preds = %.lr.ph.i
  %i.ad = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(14) @.str.17, i64 noundef 13) #13
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread105.i, label %.thread82.i

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.18, i32 noundef %i.m) #14 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = load i32, ptr @optopt, align 4, !tbaa !20 ; 2 uses
  switch i32 %i.ah, label %bb.j [
    i32 63, label %bb.i
    i32 0, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 0)
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.18, i32 noundef %i.ah) #14 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = load ptr, ptr @outfile, align 8, !tbaa !11 ; 2 uses
  %.not77.i = icmp eq ptr %i.ak, null
  br i1 %.not77.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = call i32 @fclose(ptr noundef nonnull %i.ak) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = call noalias ptr @fopen(ptr noundef %i.n, ptr noundef nonnull @.str.20) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %openFile.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.46, ptr noundef %i.i, ptr noundef %i.n, ptr noundef nonnull @.str.45) #14 ; 0 uses
  call void @perror(ptr noundef %i.n) #15
  call fastcc void @graphviz_exit(i32 noundef 1) #16
  unreachable

openFile.exit.i:                                  ; preds = %bb.m
  store ptr %i.am, ptr @outfile, align 8, !tbaa !11
  br label %.thread105.i

bb.o:                                             ; preds = %.lr.ph.i
  store i8 1, ptr @Verbose, align 1, !tbaa !17
  br label %.thread105.i

bb.p:                                             ; preds = %.thread85.i, %.lr.ph.i
  %.088.i = phi ptr [ %i.q, %.thread85.i ], [ %i.n, %.lr.ph.i ]
  %i.aq = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.088.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.d) #12
  %.not75.i = icmp eq i32 %i.aq, 1
  %i.ar = load double, ptr %i.d, align 8
  %i.as = fcmp ugt double %i.ar, 0.000000e+00
  %or.cond = select i1 %.not75.i, i1 %i.as, i1 false
  br i1 %or.cond, label %.thread105.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite76.i = call i64 @fwrite(ptr nonnull @.str.22, i64 50, i64 1, ptr %i.at) #15 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

bb.r:                                             ; preds = %.thread89.i, %.lr.ph.i
  %.092.i = phi ptr [ %i.t, %.thread89.i ], [ %i.n, %.lr.ph.i ]
  %i.au = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.092.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.e) #12
  %.not73.i = icmp eq i32 %i.au, 1
  br i1 %.not73.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = load double, ptr %i.e, align 8, !tbaa !19 ; 2 uses
  %i.aw = fcmp ugt double %i.av, 0.000000e+00
  %i.ax = fcmp ult double %i.av, 9.000000e+01
  %or.cond.i = and i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %.thread105.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite74.i = call i64 @fwrite(ptr nonnull @.str.23, i64 64, i64 1, ptr %i.ay) #15 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

bb.u:                                             ; preds = %.thread93.i, %.lr.ph.i
  %.096.i = phi ptr [ %i.w, %.thread93.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.az = call zeroext i1 @knownColorScheme(ptr noundef %.096.i) #12
  br i1 %i.az, label %.thread105.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite72.i = call i64 @fwrite(ptr nonnull @.str.24, i64 52, i64 1, ptr %i.ba) #15 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

bb.w:                                             ; preds = %.thread97.i, %.lr.ph.i
  %.0100.i = phi ptr [ %i.ac, %.thread97.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 70, ptr %i.c, align 4, !tbaa !20
  %i.bb = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.0100.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12
  %i.bc = icmp ne i32 %i.bb, 2
  %i.bd = load i32, ptr %i.b, align 4             ; 3 uses
  %i.be = icmp slt i32 %i.bd, 0
  %or.cond3.i = select i1 %i.bc, i1 true, i1 %i.be
  %i.bf = load i32, ptr %i.c, align 4             ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 100
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.bg
  %i.bh = icmp sgt i32 %i.bd, %i.bf
  %or.cond78.i = select i1 %or.cond5.i, i1 true, i1 %i.bh
  br i1 %or.cond78.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.26, ptr noundef %.0100.i) #14 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

bb.y:                                             ; preds = %bb.w
  store i32 %i.bd, ptr %i.g, align 8, !tbaa !20
  store i32 %i.bf, ptr %i.j, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread105.i

bb.z:                                             ; preds = %.thread101.i, %.lr.ph.i
  %.0104.i = phi ptr [ %i.z, %.thread101.i ], [ %i.n, %.lr.ph.i ]
  %i.bk = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %.0104.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.f) #12
  %.not.i = icmp eq i32 %i.bk, 1
  br i1 %.not.i, label %.thread105.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.28, i64 41, i64 1, ptr %i.bl) #15 ; 0 uses
  call fastcc void @usage(ptr noundef %i.i, i32 noundef 1)
  unreachable

.thread82.i:                                      ; preds = %bb.g, %.lr.ph.i
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef 231) #14 ; 0 uses
  call void @abort() #17
  unreachable

.thread105.i:                                     ; preds = %bb.p, %.lr.ph.i, %bb.g, %bb.u, %bb.z, %bb.y, %bb.s, %bb.o, %openFile.exit.i
  %.122 = phi i32 [ %.021, %bb.p ], [ %.021, %bb.s ], [ %.021, %bb.o ], [ %.021, %bb.z ], [ %.021, %bb.y ], [ %.021, %bb.u ], [ %.021, %openFile.exit.i ], [ 1, %bb.g ], [ 1, %.lr.ph.i ] ; 2 uses
  %.1 = phi ptr [ %.020, %bb.p ], [ %.020, %bb.s ], [ %.020, %bb.o ], [ %.020, %bb.z ], [ %.020, %bb.y ], [ %.096.i, %bb.u ], [ %.020, %openFile.exit.i ], [ %.020, %bb.g ], [ %.020, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !20
  %i.bo = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @init.opts, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.thread105.i, %bb.a
  %.223 = phi i32 [ 0, %bb.a ], [ %.122, %.thread105.i ]
  %.2 = phi ptr [ @.str.4, %bb.a ], [ %.1, %.thread105.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bq = load i32, ptr @optind, align 4, !tbaa !20 ; 2 uses
  %i.br = icmp sgt i32 %0, %i.bq
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  store ptr %i.bt, ptr @Files, align 8, !tbaa !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.bu = load ptr, ptr @outfile, align 8, !tbaa !11
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ad, label %init.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %i.bw, ptr @outfile, align 8, !tbaa !11
  br label %init.exit

init.exit:                                        ; preds = %bb.ac, %bb.ad
  %i.bx = load ptr, ptr @Files, align 8, !tbaa !23
  %i.by = call ptr @newIngraph(ptr noundef nonnull %2, ptr noundef %i.bx) #12 ; 0 uses
  %i.bz = call ptr @nextGraph(ptr noundef nonnull %2) #12 ; 2 uses
  %.not46 = icmp eq ptr %i.bz, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %init.exit, %clarify.exit.thread
  %i.ca = phi ptr [ %i.dw, %clarify.exit.thread ], [ %i.bz, %init.exit ] ; 9 uses
  %.048 = phi i32 [ %i.dv, %clarify.exit.thread ], [ 0, %init.exit ]
  %.01447 = phi ptr [ %i.ca, %clarify.exit.thread ], [ null, %init.exit ] ; 2 uses
  %.not17 = icmp eq ptr %.01447, null
  br i1 %.not17, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.cb = call i32 @agclose(ptr noundef nonnull %.01447) #12 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph
  %i.cc = call ptr @fileName(ptr noundef nonnull %2) #12
  store ptr %i.cc, ptr @fname, align 8, !tbaa !16
  %i.cd = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not18 = icmp eq i8 %i.cd, 0
  br i1 %.not18, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !11
  call void @flockfile(ptr noundef %i.ce) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.cf = call i64 @time(ptr noundef null) #12
  store i64 %i.cf, ptr %i.h, align 8, !tbaa !25
  %i.cg = call ptr @localtime(ptr noundef nonnull %i.h) #12 ; 6 uses
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27
  %i.ck = add nsw i32 %i.cj, 1900
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !28
  %i.cn = add nsw i32 %i.cm, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !31
  %i.cu = load i32, ptr %i.cg, align 8, !tbaa !32
  %i.cv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 48), i32 noundef 281, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef %i.cu) #14 ; 0 uses
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.cx = call ptr @agnameof(ptr noundef nonnull %i.ca) #12
  %i.cy = load ptr, ptr @fname, align 8, !tbaa !16
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.2, ptr noundef %i.cx, ptr noundef %i.cy) #14 ; 0 uses
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !11
  %fputc = call i32 @fputc(i32 10, ptr %i.da)     ; 0 uses
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !11
  call void @funlockfile(ptr noundef %i.db) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dc = load double, ptr %i.e, align 8, !tbaa !19
  %i.dd = load double, ptr %i.d, align 8, !tbaa !19
  %i.de = load i32, ptr %i.f, align 4, !tbaa !20
  %i.df = call ptr @agfstnode(ptr noundef nonnull %i.ca) #12 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.df, null
  br i1 %.not24.i.i, label %.loopexit.i, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.ah, %._crit_edge.i.i
  %.01625.i.i = phi ptr [ %i.dq, %._crit_edge.i.i ], [ %i.df, %bb.ah ] ; 3 uses
  %i.dg = call ptr @agfstout(ptr noundef nonnull %i.ca, ptr noundef nonnull %.01625.i.i) #12 ; 2 uses
  %.not1921.i.i = icmp eq ptr %i.dg, null
  br i1 %.not1921.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph27.i.i, %bb.ai
  %.123.i.i = phi ptr [ %i.dm, %bb.ai ], [ null, %.lr.ph27.i.i ]
  %.01722.i.i = phi ptr [ %i.dp, %bb.ai ], [ %i.dg, %.lr.ph27.i.i ] ; 3 uses
  %i.dh = load i32, ptr %.01722.i.i, align 8
  %i.di = and i32 %i.dh, 3
  %i.dj = icmp eq i32 %i.di, 2
  %i.dk = select i1 %i.dj, i64 56, i64 -8
  %i.dl = getelementptr inbounds i8, ptr %.01722.i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, %.01625.i.i
  %i.do = icmp eq ptr %i.dm, %.123.i.i
  %or.cond.i.i = or i1 %i.dn, %i.do
  br i1 %or.cond.i.i, label %checkG.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.dp = call ptr @agnxtout(ptr noundef nonnull %i.ca, ptr noundef nonnull %.01722.i.i) #12 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.dp, null
  br i1 %.not19.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !12

._crit_edge.i.i:                                  ; preds = %bb.ai, %.lr.ph27.i.i
  %i.dq = call ptr @agnxtnode(ptr noundef nonnull %i.ca, ptr noundef nonnull %.01625.i.i) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph27.i.i, !llvm.loop !13

checkG.exit.i:                                    ; preds = %.lr.ph.i.i
  %i.dr = call ptr @agnameof(ptr noundef nonnull %i.ca) #12
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.47, ptr noundef %i.dr) #12
  br label %clarify.exit.thread

.loopexit.i:                                      ; preds = %._crit_edge.i.i, %bb.ah
  call void @initDotIO(ptr noundef nonnull %i.ca) #12
  %i.ds = call ptr @edge_distinct_coloring(ptr noundef %.2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.ca, double noundef %i.dc, double noundef %i.dd, i32 noundef %.223, i32 noundef %i.de) #12 ; 2 uses
  %.not13.i = icmp eq ptr %i.ds, null
  br i1 %.not13.i, label %clarify.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i
  %i.dt = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.du = call i32 @agwrite(ptr noundef nonnull %i.ds, ptr noundef %i.dt) #12 ; 0 uses
  br label %clarify.exit.thread

clarify.exit.thread:                              ; preds = %.loopexit.i, %checkG.exit.i, %bb.aj
  %i.dv = phi i32 [ %.048, %bb.aj ], [ 1, %checkG.exit.i ], [ 1, %.loopexit.i ] ; 2 uses
  %i.dw = call ptr @nextGraph(ptr noundef nonnull %2) #12 ; 2 uses
  %.not = icmp eq ptr %i.dw, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %clarify.exit.thread, %init.exit
  %.0.lcssa = phi i32 [ 0, %init.exit ], [ %i.dv, %clarify.exit.thread ]
  call fastcc void @graphviz_exit(i32 noundef %.0.lcssa) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @newIngraph(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nextGraph(ptr noundef) local_unnamed_addr #2

declare i32 @agclose(ptr noundef) local_unnamed_addr #2

declare ptr @fileName(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @agnameof(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit(i32 noundef range(i32 0, 2) %0) unnamed_addr #5 {
bb.a:
  tail call void @exit(i32 noundef %0) #17
  unreachable
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @usage(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.29, ptr noundef %0) #14 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.30, i64 111, i64 1, ptr %i.c) #15 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %i.d) #15 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 140, i64 1, ptr %i.e) #15 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 114, i64 1, ptr %i.f) #15 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 141, i64 1, ptr %i.g) #15 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 93, i64 1, ptr %i.h) #15 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 89, i64 1, ptr %i.i) #15 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !11
end_hunk_0
