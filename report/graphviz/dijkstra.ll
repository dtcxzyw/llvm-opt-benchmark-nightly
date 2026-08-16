inline.NumInlined: 64
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.agxbuf = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }
%struct.ingraph_state = type { %union.anon, i32, i32, ptr, ptr, i8, i32 }
%union.anon = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@Files = internal unnamed_addr global ptr null, align 8
@Dtoset = external local_unnamed_addr global ptr, align 8
@Nodes = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: no node %s in graph %s in %s\0A\00", align 1
@CmdName = internal unnamed_addr global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@opterr = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"adp?\00", align 1
@setall = internal unnamed_addr global i1 false, align 1
@doDirected = internal unnamed_addr global i1 false, align 1
@doPath = internal unnamed_addr global i1 false, align 1
@optopt = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: option -%c unrecognized\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s:%d: claimed unreachable code was reached\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/graphviz/graphviz/cmd/tools/dijkstra.c\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: no node specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@MyDisc = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr } { i32 0, i32 0, i32 -1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @cmpf }, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@len_sym = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"dijkstra\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%.3lf\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"maxdist\00", align 1
@str = private unnamed_addr constant [243 x i8] c"Usage: dijkstra [-ap?] <node> [<file> <node> <file>]\0A  -a - for nodes in a different component, set dist very large\0A  -d - use forward directed edges\0A  -p - attach shortest path info\0A  -? - print usage\0AIf no files are specified, stdin is used\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.agxbuf, align 8             ; 31 uses
  %3 = alloca %struct.agxbuf, align 8             ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.ingraph_state, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  store ptr %i.c, ptr @CmdName, align 8, !tbaa !9
  store i32 0, ptr @opterr, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.d = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #18
  switch i32 %i.d, label %bb.h [
    i32 -1, label %bb.j
    i32 97, label %bb.i
    i32 100, label %bb.c
    i32 112, label %bb.d
    i32 63, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.e = load i32, ptr @optopt, align 4, !tbaa !12 ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 63, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 0) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.g = load ptr, ptr @CmdName, align 8, !tbaa !9
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef %i.g, i32 noundef %i.e) #20 ; 0 uses
  %puts.i28.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 261) #20 ; 0 uses
  tail call void @abort() #21
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %doPath.sink.i = phi ptr [ @doPath, %bb.d ], [ @doDirected, %bb.c ], [ @setall, %bb.b ]
  store i1 true, ptr %doPath.sink.i, align 1
  br label %bb.b, !llvm.loop !15

bb.j:                                             ; preds = %bb.b
  %i.k = load i32, ptr @optind, align 4, !tbaa !12 ; 4 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = icmp eq i32 %0, %i.k
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.p = load ptr, ptr @CmdName, align 8, !tbaa !9
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.5, ptr noundef %i.p) #20 ; 0 uses
  %puts.i30.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = sub nsw i32 %0, %i.k                     ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = lshr i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 2                      ; 5 uses
  %mul.ov.i.i = icmp slt i32 %i.r, 0
  br i1 %mul.ov.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.9, i64 noundef %i.u, i64 noundef 8) #20 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 8) #22 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.aa = shl nuw nsw i64 %i.u, 3
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.10, i64 noundef %i.aa) #20 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  store ptr %i.x, ptr @Files, align 8, !tbaa !17
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 8) #22 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.q, label %.lr.ph.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.af = shl nuw nsw i64 %i.u, 3
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.10, i64 noundef %i.af) #20 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  store ptr %i.ac, ptr @Nodes, align 8, !tbaa !17
  %i.ah = xor i32 %i.k, -1
  %i.ai = add i32 %0, %i.ah
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, 1
  %wide.trip.count.i = zext nneg i32 %i.ak to i64 ; 5 uses
  %min.iters.check = icmp eq i32 %i.aj, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %.idx = shl nuw i64 %index, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %wide.vec = load <4 x ptr>, ptr %i.am, align 8, !tbaa !9 ; 2 uses
  %strided.vec = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec141 = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  store <2 x ptr> %strided.vec, ptr %i.an, align 8, !tbaa !9
  %i.ao = icmp eq <2 x ptr> %strided.vec141, splat (ptr null)
  %i.ap = select <2 x i1> %i.ao, <2 x ptr> <ptr @.str.6, ptr @.str.6>, <2 x ptr> %strided.vec141
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x ptr> %i.ap, ptr %i.aq, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %init.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv37.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.al, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.lr.ph.i ], [ %indvars.iv37.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9  ; 2 uses
  %.not27.i = icmp eq ptr %i.aw, null
  %spec.select.i = select i1 %.not27.i, ptr @.str.6, ptr %i.aw
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  store ptr %spec.select.i, ptr %i.ax, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 2
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %init.exit, label %.lr.ph.i, !llvm.loop !23

init.exit:                                        ; preds = %.lr.ph.i, %middle.block
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %wide.trip.count.i
  store ptr null, ptr %i.ay, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %wide.trip.count.i
  store ptr null, ptr %i.az, align 8, !tbaa !9
  %i.ba = call ptr @newIngraph(ptr noundef nonnull %4, ptr noundef nonnull %i.x) #18 ; 0 uses
  %i.bb = load ptr, ptr @Dtoset, align 8, !tbaa !24
  %i.bc = call ptr @dtopen(ptr noundef nonnull @MyDisc, ptr noundef %i.bb) #18 ; 24 uses
  %i.bd = call ptr @nextGraph(ptr noundef nonnull %4) #18 ; 2 uses
  %.not85 = icmp eq ptr %i.bd, null
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %init.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.cp
  %i.bk = phi ptr [ %i.bd, %.lr.ph ], [ %i.kw, %bb.cp ] ; 20 uses
  %.087 = phi i64 [ 0, %.lr.ph ], [ %i.kv, %bb.cp ] ; 3 uses
  %.01486 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.cp ]
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.bm = call ptr %i.bl(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 64) #18 ; 0 uses
  %i.bn = load ptr, ptr @Nodes, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.087
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.bq = call ptr @agnode(ptr noundef nonnull %i.bk, ptr noundef %i.bp, i32 noundef 0) #18 ; 3 uses
  %.not17 = icmp eq ptr %i.bq, null
  br i1 %.not17, label %bb.co, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = call ptr @agattr_text(ptr noundef nonnull %i.bk, i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef null) #18
  store ptr %i.br, ptr @len_sym, align 8, !tbaa !31
  call void @aginit(ptr noundef nonnull %i.bk, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef 40, i32 noundef 1) #18
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  %.val.i = load ptr, ptr %i.bs, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !43
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.bv = call ptr %i.bu(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bq, i32 noundef 1) #18, !inline_history !48 ; 0 uses
  %.b.i = load i1, ptr @doDirected, align 1
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.bx = call ptr %i.bw(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 128) #18, !inline_history !48 ; 4 uses
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.bz = call ptr %i.by(ptr noundef nonnull %i.bc, ptr noundef %i.bx, i32 noundef 2) #18, !inline_history !48 ; 0 uses
  %.not3468.i = icmp eq ptr %i.bx, null           ; 2 uses
  br i1 %.b.i, label %.preheader.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.s
  br i1 %.not3468.i, label %.loopexit55.i, label %.lr.ph63.i

.preheader.i:                                     ; preds = %bb.s
  br i1 %.not3468.i, label %.loopexit55.i, label %.lr.ph69.i

.loopexit.i:                                      ; preds = %update.exit.i, %.lr.ph69.i
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.cb = call ptr %i.ca(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 128) #18, !inline_history !49 ; 3 uses
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.cd = call ptr %i.cc(ptr noundef nonnull %i.bc, ptr noundef %i.cb, i32 noundef 2) #18, !inline_history !49 ; 0 uses
  %.not34.i = icmp eq ptr %i.cb, null
  br i1 %.not34.i, label %.loopexit55.i, label %.lr.ph69.i, !llvm.loop !50

.lr.ph69.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %i.ce = phi ptr [ %i.cb, %.loopexit.i ], [ %i.bx, %.preheader.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i8 1, ptr %i.ch, align 8, !tbaa !51
  %i.ci = call ptr @agfstout(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.ce) #18 ; 2 uses
  %.not3564.i = icmp eq ptr %i.ci, null
  br i1 %.not3564.i, label %.loopexit.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph69.i, %update.exit.i
  %.065.i = phi ptr [ %i.di, %update.exit.i ], [ %i.ci, %.lr.ph69.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.065.i, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !51, !range !54, !noundef !55
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %update.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph67.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cq = load ptr, ptr @len_sym, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %getlength.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = call ptr @agxget(ptr noundef nonnull %.065.i, ptr noundef nonnull %i.cq) #18 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !56
  %.not7.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not7.i.i, label %getlength.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = call double @strtod(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.cu = fcmp olt double %i.ct, 0.000000e+00
  %i.cv = load ptr, ptr %i.b, align 8
  %i.cw = icmp eq ptr %i.cv, %i.cr
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond.i.i, label %bb.w, label %getlength.exit.i

bb.w:                                             ; preds = %bb.v
  br label %getlength.exit.i

getlength.exit.i:                                 ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i.i = phi double [ 1.000000e+00, %bb.w ], [ %i.ct, %bb.v ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.val26.i.i = load ptr, ptr %i.cf, align 8, !tbaa !33
  %i.cx = getelementptr i8, ptr %.val26.i.i, i64 16
  %.val26.val.i.i = load double, ptr %i.cx, align 8, !tbaa !43
  %i.cy = fadd double %.0.i.i, %.val26.val.i.i    ; 3 uses
  %.val25.i.i = load ptr, ptr %i.cl, align 8, !tbaa !33 ; 2 uses
  %i.cz = getelementptr i8, ptr %.val25.i.i, i64 16 ; 2 uses
  %.val25.val.i.i = load double, ptr %i.cz, align 8, !tbaa !43 ; 2 uses
  %i.da = call noundef i1 @llvm.is.fpclass.f64(double %.val25.val.i.i, /* (pzero) */ i32 64)
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %getlength.exit.i
  store double %i.cy, ptr %i.cz, align 8, !tbaa !43
  %.b23.i.i = load i1, ptr @doPath, align 1
  br i1 %.b23.i.i, label %.sink.split.sink.split.i.i, label %.sink.split.i.i

bb.y:                                             ; preds = %getlength.exit.i
  %i.db = fcmp olt double %i.cy, %.val25.val.i.i
  br i1 %i.db, label %bb.z, label %update.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.dd = call ptr %i.dc(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ck, i32 noundef 2) #18, !inline_history !57 ; 0 uses
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !33 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  store double %i.cy, ptr %i.de, align 8, !tbaa !43
  %.b.i.i = load i1, ptr @doPath, align 1
  br i1 %.b.i.i, label %.sink.split.sink.split.i.i, label %.sink.split.i.i

.sink.split.sink.split.i.i:                       ; preds = %bb.z, %bb.x
  %.val.sink.i.i = phi ptr [ %.val25.i.i, %bb.x ], [ %.val.i.i, %bb.z ]
  %i.df = getelementptr inbounds nuw i8, ptr %.val.sink.i.i, i64 24
  store ptr %i.ce, ptr %i.df, align 8, !tbaa !58
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.sink.split.i.i, %bb.z, %bb.x
  %i.dg = load ptr, ptr %i.bc, align 8, !tbaa !25
  %i.dh = call ptr %i.dg(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ck, i32 noundef 1) #18, !inline_history !57 ; 0 uses
  br label %update.exit.i

update.exit.i:                                    ; preds = %.sink.split.i.i, %bb.y, %.lr.ph67.i
end_hunk_0
