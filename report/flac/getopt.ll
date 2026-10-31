Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/getopt?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@share__optarg = dso_local local_unnamed_addr global ptr null, align 8
@share__optind = dso_local local_unnamed_addr global i32 1, align 4
@share__opterr = dso_local local_unnamed_addr global i32 1, align 4
@share__optopt = dso_local local_unnamed_addr global i32 63, align 4
@share____getopt_initialized = internal unnamed_addr global i1 false, align 4
@nextchar = internal unnamed_addr global ptr null, align 8
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@ordering = internal unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal unnamed_addr global ptr null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @share___getopt_internal(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr @share__optarg, align 8, !tbaa !37
  %i.a = load i32, ptr @share__optind, align 4, !tbaa !38 ; 5 uses
  %i.b = icmp ne i32 %i.a, 0                      ; 2 uses
  %.b = load i1, ptr @share____getopt_initialized, align 4
  %or.cond = select i1 %i.b, i1 %.b, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr @share__optind, align 4, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi i32 [ 1, %bb.c ], [ %i.a, %bb.b ]    ; 3 uses
  store i32 %i.c, ptr @last_nonopt, align 4, !tbaa !38
  store i32 %i.c, ptr @first_nonopt, align 4, !tbaa !38
  store ptr null, ptr @nextchar, align 8, !tbaa !37
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.13) #5 ; 2 uses
  store ptr %i.d, ptr @posixly_correct, align 8, !tbaa !37
  %i.e = load i8, ptr %2, align 1, !tbaa !39
  switch i8 %i.e, label %bb.g [
    i8 45, label %bb.e
    i8 43, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr @ordering, align 4, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.thread

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr @ordering, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @ordering, align 4, !tbaa !38
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store i32 1, ptr @ordering, align 4, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.0.i = phi ptr [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %2, %bb.h ], [ %2, %bb.i ]
  store i1 true, ptr @share____getopt_initialized, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %.pre = load ptr, ptr @nextchar, align 8, !tbaa !37 ; 3 uses
  %i.h = icmp eq ptr %.pre, null
  br i1 %i.h, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.i = load i8, ptr %.pre, align 1, !tbaa !39
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.af

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %.0188424 = phi ptr [ %.0.i, %.thread ], [ %2, %bb.k ], [ %2, %bb.j ]
  %share__optind.promoted422 = phi i32 [ %i.c, %.thread ], [ %i.a, %bb.k ], [ %i.a, %bb.j ] ; 17 uses
  %i.k = load i32, ptr @last_nonopt, align 4, !tbaa !38 ; 2 uses
  %i.l = icmp sgt i32 %i.k, %share__optind.promoted422
  br i1 %i.l, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %share__optind.promoted422, ptr @last_nonopt, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.m = phi i32 [ %share__optind.promoted422, %bb.m ], [ %i.k, %bb.l ] ; 11 uses
  %i.n = load i32, ptr @first_nonopt, align 4, !tbaa !38 ; 2 uses
  %i.o = icmp sgt i32 %i.n, %share__optind.promoted422
  br i1 %i.o, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %share__optind.promoted422, ptr @first_nonopt, align 4, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.p = phi i32 [ %share__optind.promoted422, %bb.o ], [ %i.n, %bb.n ] ; 6 uses
  %i.q = load i32, ptr @ordering, align 4, !tbaa !38 ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %.not = icmp eq i32 %i.p, %i.m
  %.not217 = icmp eq i32 %i.m, %share__optind.promoted422 ; 2 uses
  %or.cond264 = or i1 %.not, %.not217
  br i1 %or.cond264, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = icmp sgt i32 %share__optind.promoted422, %i.m
  %i.t = icmp sgt i32 %i.m, %i.p
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph67.preheader.i, label %exchange.exit

.lr.ph67.preheader.i:                             ; preds = %bb.r
  %i.v = sext i32 %i.m to i64                     ; 2 uses
  %invariant.gep79.i = getelementptr [8 x i8], ptr %1, i64 %i.v ; 5 uses
  br label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %._crit_edge63.i, %.lr.ph67.preheader.i
  %.05265.i = phi i32 [ %.1.i, %._crit_edge63.i ], [ %share__optind.promoted422, %.lr.ph67.preheader.i ] ; 3 uses
  %.05364.i = phi i32 [ %.154.i, %._crit_edge63.i ], [ %i.p, %.lr.ph67.preheader.i ] ; 8 uses
  %i.w = sub nsw i32 %.05265.i, %i.m              ; 5 uses
  %i.x = sub nsw i32 %i.m, %.05364.i              ; 5 uses
  %i.y = icmp sgt i32 %i.w, %i.x
  br i1 %i.y, label %.preheader.i, label %.preheader59.i

.preheader59.i:                                   ; preds = %.lr.ph67.i
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader59.i
  %i.aa = sext i32 %.05364.i to i64               ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.w to i64  ; 7 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %1, i64 %i.aa ; 5 uses
  %min.iters.check483 = icmp ult i32 %i.w, 6
  br i1 %min.iters.check483, label %.lr.ph.i.preheader, label %vector.memcheck475

vector.memcheck475:                               ; preds = %.lr.ph.preheader.i
  %i.ab = add nsw i64 %i.aa, %wide.trip.count.i
  %i.ac = shl nsw i64 %i.ab, 3
  %scevgep476 = getelementptr i8, ptr %1, i64 %i.ac
  %6 = add nsw i64 %i.v, %wide.trip.count.i
  %7 = shl nsw i64 %6, 3
  %scevgep478 = getelementptr i8, ptr %1, i64 %7
  %bound0479 = icmp ult ptr %invariant.gep.i, %scevgep478
  %bound1480 = icmp ult ptr %invariant.gep79.i, %scevgep476
  %found.conflict481 = and i1 %bound0479, %bound1480
  br i1 %found.conflict481, label %.lr.ph.i.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %vector.memcheck475
  %n.vec485 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next492, %vector.body486 ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index487 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16     ; 2 uses
  %wide.load488 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  %wide.load489 = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  %i.af = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %index487 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %wide.load490 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !37, !alias.scope !41
  %wide.load491 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !37, !alias.scope !41
  store <2 x ptr> %wide.load490, ptr %i.ad, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  store <2 x ptr> %wide.load491, ptr %i.ae, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  store <2 x ptr> %wide.load488, ptr %i.af, align 8, !tbaa !37, !alias.scope !41
  store <2 x ptr> %wide.load489, ptr %i.ag, align 8, !tbaa !37, !alias.scope !41
  %index.next492 = add nuw i64 %index487, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next492, %n.vec485
  br i1 %i.ah, label %middle.block493, label %vector.body486, !llvm.loop !12

middle.block493:                                  ; preds = %vector.body486
  %cmp.n494 = icmp eq i64 %n.vec485, %wide.trip.count.i
  br i1 %cmp.n494, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck475, %.lr.ph.preheader.i, %middle.block493
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck475 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec485, %middle.block493 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.ai = load ptr, ptr %gep.i.prol, align 8, !tbaa !37
  %gep80.i.prol = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.aj = load ptr, ptr %gep80.i.prol, align 8, !tbaa !37
  store ptr %i.aj, ptr %gep.i.prol, align 8, !tbaa !37
  store ptr %i.ai, ptr %gep80.i.prol, align 8, !tbaa !37
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ak = add nsw i64 %wide.trip.count.i, -1
  %i.al = icmp eq i64 %indvars.iv.i.ph, %i.ak
  br i1 %i.al, label %._crit_edge.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph67.i
  %i.am = icmp sgt i32 %i.x, 0
  %i.an = sub i32 %.05265.i, %i.x                 ; 5 uses
  br i1 %i.am, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.ao = sext i32 %.05364.i to i64               ; 2 uses
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.x to i64 ; 7 uses
  %invariant.gep81.i = getelementptr [8 x i8], ptr %1, i64 %i.ao ; 5 uses
  %invariant.gep83.i = getelementptr [8 x i8], ptr %1, i64 %i.ap ; 5 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.i
  %i.aq = add nsw i64 %i.ao, %wide.trip.count73.i
  %i.ar = shl nsw i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.ar
  %i.as = add nsw i64 %i.ap, %wide.trip.count73.i
  %i.at = shl nsw i64 %i.as, 3
  %scevgep471 = getelementptr i8, ptr %1, i64 %i.at
  %bound0 = icmp ult ptr %invariant.gep81.i, %scevgep471
  %bound1 = icmp ult ptr %invariant.gep83.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %index ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16     ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.au, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  %wide.load472 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %index ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16     ; 2 uses
  %wide.load473 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !37, !alias.scope !46
  %wide.load474 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !37, !alias.scope !46
  store <2 x ptr> %wide.load473, ptr %i.au, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  store <2 x ptr> %wide.load474, ptr %i.av, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  store <2 x ptr> %wide.load, ptr %i.aw, align 8, !tbaa !37, !alias.scope !46
  store <2 x ptr> %wide.load472, ptr %i.ax, align 8, !tbaa !37, !alias.scope !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br i1 %cmp.n, label %._crit_edge63.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph62.i, %middle.block
  %indvars.iv70.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph62.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter544 = and i64 %wide.trip.count73.i, 1
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  br i1 %lcmp.mod545.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep82.i.prol = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %indvars.iv70.i.ph ; 2 uses
  %i.az = load ptr, ptr %gep82.i.prol, align 8, !tbaa !37
  %gep84.i.prol = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %indvars.iv70.i.ph ; 2 uses
  %i.ba = load ptr, ptr %gep84.i.prol, align 8, !tbaa !37
  store ptr %i.ba, ptr %gep82.i.prol, align 8, !tbaa !37
  store ptr %i.az, ptr %gep84.i.prol, align 8, !tbaa !37
  %indvars.iv.next71.i.prol = or disjoint i64 %indvars.iv70.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv70.i.unr = phi i64 [ %indvars.iv70.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next71.i.prol, %scalar.ph.prol ]
  %i.bb = add nsw i64 %wide.trip.count73.i, -1
  %i.bc = icmp eq i64 %indvars.iv70.i.ph, %i.bb
  br i1 %i.bc, label %._crit_edge63.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i.1, %scalar.ph ], [ %indvars.iv70.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep82.i = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %indvars.iv70.i ; 2 uses
  %i.bd = load ptr, ptr %gep82.i, align 8, !tbaa !37
  %gep84.i = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %indvars.iv70.i ; 2 uses
  %i.be = load ptr, ptr %gep84.i, align 8, !tbaa !37
  store ptr %i.be, ptr %gep82.i, align 8, !tbaa !37
  store ptr %i.bd, ptr %gep84.i, align 8, !tbaa !37
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %gep82.i.1 = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %indvars.iv.next71.i ; 2 uses
  %i.bf = load ptr, ptr %gep82.i.1, align 8, !tbaa !37
  %gep84.i.1 = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %indvars.iv.next71.i ; 2 uses
  %i.bg = load ptr, ptr %gep84.i.1, align 8, !tbaa !37
  store ptr %i.bg, ptr %gep82.i.1, align 8, !tbaa !37
  store ptr %i.bf, ptr %gep84.i.1, align 8, !tbaa !37
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i64 %indvars.iv.next71.i.1, %wide.trip.count73.i
  br i1 %exitcond74.not.i.1, label %._crit_edge63.i, label %scalar.ph, !llvm.loop !17

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bh = load ptr, ptr %gep.i, align 8, !tbaa !37
  %gep80.i = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.i ; 2 uses
  %i.bi = load ptr, ptr %gep80.i, align 8, !tbaa !37
  store ptr %i.bi, ptr %gep.i, align 8, !tbaa !37
  store ptr %i.bh, ptr %gep80.i, align 8, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bj = load ptr, ptr %gep.i.1, align 8, !tbaa !37
  %gep80.i.1 = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bk = load ptr, ptr %gep80.i.1, align 8, !tbaa !37
  store ptr %i.bk, ptr %gep.i.1, align 8, !tbaa !37
  store ptr %i.bj, ptr %gep80.i.1, align 8, !tbaa !37
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block493, %.preheader59.i
  %i.bl = add nsw i32 %i.w, %.05364.i
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i, %.preheader.i
  %.154.i = phi i32 [ %i.bl, %._crit_edge.i ], [ %.05364.i, %.preheader.i ], [ %.05364.i, %middle.block ], [ %.05364.i, %scalar.ph ], [ %.05364.i, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1.i = phi i32 [ %.05265.i, %._crit_edge.i ], [ %i.an, %.preheader.i ], [ %i.an, %middle.block ], [ %i.an, %scalar.ph ], [ %i.an, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.bm = icmp sgt i32 %.1.i, %i.m
  %i.bn = icmp sgt i32 %i.m, %.154.i
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.lr.ph67.i, label %exchange.exit, !llvm.loop !19

exchange.exit:                                    ; preds = %._crit_edge63.i, %bb.r
  %i.bp = add i32 %i.p, %share__optind.promoted422
  %i.bq = sub i32 %i.bp, %i.m
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  br i1 %.not217, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %exchange.exit
  %share__optind.promoted422.sink = phi i32 [ %i.bq, %exchange.exit ], [ %share__optind.promoted422, %bb.s ] ; 2 uses
  store i32 %share__optind.promoted422.sink, ptr @first_nonopt, align 4, !tbaa !38
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  %i.br = phi i32 [ %i.p, %bb.s ], [ %share__optind.promoted422.sink, %.sink.split ]
  %i.bs = icmp slt i32 %share__optind.promoted422, %0
  br i1 %i.bs, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.bt = sext i32 %share__optind.promoted422 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge3
  %i.bu = phi i32 [ %share__optind.promoted422, %.lr.ph.preheader ], [ %i.cb, %.critedge3 ]
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge3 ] ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39
  %.not219 = icmp eq i8 %i.bx, 45
  br i1 %.not219, label %bb.u, label %.critedge3

bb.u:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !39
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.critedge3, label %.critedge.loopexit.split.loop.exit450

.critedge3:                                       ; preds = %.lr.ph, %bb.u
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cb = trunc i64 %indvars.iv.next to i32       ; 3 uses
  store i32 %i.cb, ptr @share__optind, align 4, !tbaa !38
  %exitcond.not = icmp eq i32 %0, %i.cb
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !20

.critedge.loopexit.split.loop.exit450:            ; preds = %bb.u
  %i.cc = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge3, %.critedge.loopexit.split.loop.exit450, %bb.t
  %i.cd = phi i32 [ %share__optind.promoted422, %bb.t ], [ %i.bu, %.critedge.loopexit.split.loop.exit450 ], [ %0, %.critedge3 ]
  %.lcssa340 = phi i32 [ %share__optind.promoted422, %bb.t ], [ %i.cc, %.critedge.loopexit.split.loop.exit450 ], [ %0, %.critedge3 ] ; 2 uses
  store i32 %.lcssa340, ptr @last_nonopt, align 4, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.p
  %i.ce = phi i32 [ %.lcssa340, %.critedge ], [ %i.m, %bb.p ] ; 11 uses
  %i.cf = phi i32 [ %i.br, %.critedge ], [ %i.p, %bb.p ] ; 6 uses
  %i.cg = phi i32 [ %i.cd, %.critedge ], [ %share__optind.promoted422, %bb.p ] ; 7 uses
  %.not220 = icmp eq i32 %i.cg, %0
  br i1 %.not220, label %.thread427, label %sub_0

sub_0:                                            ; preds = %bb.v
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !37 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %.not364 = icmp eq i8 %i.ck, 45
  br i1 %.not364, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %.not365 = icmp eq i8 %i.cm, 45
  br i1 %.not365, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.w, label %.tail.thread

bb.w:                                             ; preds = %.tail
  %i.cq = add nsw i32 %i.cg, 1                    ; 4 uses
  %.not222 = icmp eq i32 %i.cf, %i.ce             ; 2 uses
  %.not223 = icmp eq i32 %i.ce, %i.cq
  %or.cond265 = select i1 %.not222, i1 true, i1 %.not223
  br i1 %or.cond265, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = icmp sge i32 %i.cg, %i.ce
  %i.cs = icmp sgt i32 %i.ce, %i.cf
  %i.ct = and i1 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph67.preheader.i267, label %exchange.exit296

.lr.ph67.preheader.i267:                          ; preds = %bb.x
  %i.cu = sext i32 %i.ce to i64                   ; 2 uses
  %invariant.gep79.i268 = getelementptr [8 x i8], ptr %1, i64 %i.cu ; 5 uses
  br label %.lr.ph67.i269

.lr.ph67.i269:                                    ; preds = %._crit_edge63.i274, %.lr.ph67.preheader.i267
  %.05265.i270 = phi i32 [ %.1.i276, %._crit_edge63.i274 ], [ %i.cq, %.lr.ph67.preheader.i267 ] ; 3 uses
  %.05364.i271 = phi i32 [ %.154.i275, %._crit_edge63.i274 ], [ %i.cf, %.lr.ph67.preheader.i267 ] ; 8 uses
  %i.cv = sub nsw i32 %.05265.i270, %i.ce         ; 5 uses
  %i.cw = sub nsw i32 %i.ce, %.05364.i271         ; 5 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.preheader.i286, label %.preheader59.i272

.preheader59.i272:                                ; preds = %.lr.ph67.i269
  %i.cy = icmp sgt i32 %i.cv, 0
  br i1 %i.cy, label %.lr.ph.preheader.i277, label %._crit_edge.i273

.lr.ph.preheader.i277:                            ; preds = %.preheader59.i272
  %i.cz = sext i32 %.05364.i271 to i64            ; 2 uses
  %wide.trip.count.i278 = zext nneg i32 %i.cv to i64 ; 7 uses
  %invariant.gep.i279 = getelementptr [8 x i8], ptr %1, i64 %i.cz ; 5 uses
  %min.iters.check524 = icmp ult i32 %i.cv, 6
  br i1 %min.iters.check524, label %.lr.ph.i280.preheader, label %vector.memcheck516

vector.memcheck516:                               ; preds = %.lr.ph.preheader.i277
  %i.da = add nsw i64 %i.cz, %wide.trip.count.i278
  %i.db = shl nsw i64 %i.da, 3
  %scevgep517 = getelementptr i8, ptr %1, i64 %i.db
  %8 = add nsw i64 %i.cu, %wide.trip.count.i278
  %9 = shl nsw i64 %8, 3
  %scevgep519 = getelementptr i8, ptr %1, i64 %9
  %bound0520 = icmp ult ptr %invariant.gep.i279, %scevgep519
  %bound1521 = icmp ult ptr %invariant.gep79.i268, %scevgep517
  %found.conflict522 = and i1 %bound0520, %bound1521
  br i1 %found.conflict522, label %.lr.ph.i280.preheader, label %vector.ph525

vector.ph525:                                     ; preds = %vector.memcheck516
  %n.vec526 = and i64 %wide.trip.count.i278, 2147483644 ; 3 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph525
  %index528 = phi i64 [ 0, %vector.ph525 ], [ %index.next533, %vector.body527 ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %index528 ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16     ; 2 uses
  %wide.load529 = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  %wide.load530 = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  %i.de = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %index528 ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16     ; 2 uses
  %wide.load531 = load <2 x ptr>, ptr %i.de, align 8, !tbaa !37, !alias.scope !48
  %wide.load532 = load <2 x ptr>, ptr %i.df, align 8, !tbaa !37, !alias.scope !48
  store <2 x ptr> %wide.load531, ptr %i.dc, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  store <2 x ptr> %wide.load532, ptr %i.dd, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  store <2 x ptr> %wide.load529, ptr %i.de, align 8, !tbaa !37, !alias.scope !48
  store <2 x ptr> %wide.load530, ptr %i.df, align 8, !tbaa !37, !alias.scope !48
  %index.next533 = add nuw i64 %index528, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next533, %n.vec526
  br i1 %i.dg, label %middle.block534, label %vector.body527, !llvm.loop !24

middle.block534:                                  ; preds = %vector.body527
  %cmp.n535 = icmp eq i64 %n.vec526, %wide.trip.count.i278
  br i1 %cmp.n535, label %._crit_edge.i273, label %.lr.ph.i280.preheader

.lr.ph.i280.preheader:                            ; preds = %vector.memcheck516, %.lr.ph.preheader.i277, %middle.block534
  %indvars.iv.i281.ph = phi i64 [ 0, %vector.memcheck516 ], [ 0, %.lr.ph.preheader.i277 ], [ %n.vec526, %middle.block534 ] ; 5 uses
  %xtraiter546 = and i64 %wide.trip.count.i278, 1
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph.i280.prol.loopexit, label %.lr.ph.i280.prol

.lr.ph.i280.prol:                                 ; preds = %.lr.ph.i280.preheader
  %gep.i282.prol = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.i281.ph ; 2 uses
  %i.dh = load ptr, ptr %gep.i282.prol, align 8, !tbaa !37
  %gep80.i283.prol = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %indvars.iv.i281.ph ; 2 uses
  %i.di = load ptr, ptr %gep80.i283.prol, align 8, !tbaa !37
  store ptr %i.di, ptr %gep.i282.prol, align 8, !tbaa !37
  store ptr %i.dh, ptr %gep80.i283.prol, align 8, !tbaa !37
  %indvars.iv.next.i284.prol = or disjoint i64 %indvars.iv.i281.ph, 1
  br label %.lr.ph.i280.prol.loopexit

.lr.ph.i280.prol.loopexit:                        ; preds = %.lr.ph.i280.prol, %.lr.ph.i280.preheader
  %indvars.iv.i281.unr = phi i64 [ %indvars.iv.i281.ph, %.lr.ph.i280.preheader ], [ %indvars.iv.next.i284.prol, %.lr.ph.i280.prol ]
  %i.dj = add nsw i64 %wide.trip.count.i278, -1
  %i.dk = icmp eq i64 %indvars.iv.i281.ph, %i.dj
  br i1 %i.dk, label %._crit_edge.i273, label %.lr.ph.i280

.preheader.i286:                                  ; preds = %.lr.ph67.i269
  %i.dl = icmp sgt i32 %i.cw, 0
  %i.dm = sub i32 %.05265.i270, %i.cw             ; 5 uses
  br i1 %i.dl, label %.lr.ph62.i287, label %._crit_edge63.i274

.lr.ph62.i287:                                    ; preds = %.preheader.i286
  %i.dn = sext i32 %.05364.i271 to i64            ; 2 uses
  %i.do = sext i32 %i.dm to i64                   ; 2 uses
  %wide.trip.count73.i288 = zext nneg i32 %i.cw to i64 ; 7 uses
  %invariant.gep81.i289 = getelementptr [8 x i8], ptr %1, i64 %i.dn ; 5 uses
  %invariant.gep83.i290 = getelementptr [8 x i8], ptr %1, i64 %i.do ; 5 uses
  %min.iters.check503 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check503, label %scalar.ph502.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %.lr.ph62.i287
  %i.dp = add nsw i64 %i.dn, %wide.trip.count73.i288
  %i.dq = shl nsw i64 %i.dp, 3
  %scevgep497 = getelementptr i8, ptr %1, i64 %i.dq
  %i.dr = add nsw i64 %i.do, %wide.trip.count73.i288
  %i.ds = shl nsw i64 %i.dr, 3
  %scevgep498 = getelementptr i8, ptr %1, i64 %i.ds
  %bound0499 = icmp ult ptr %invariant.gep81.i289, %scevgep498
  %bound1500 = icmp ult ptr %invariant.gep83.i290, %scevgep497
  %found.conflict501 = and i1 %bound0499, %bound1500
  br i1 %found.conflict501, label %scalar.ph502.preheader, label %vector.ph504

vector.ph504:                                     ; preds = %vector.memcheck496
  %n.vec505 = and i64 %wide.trip.count73.i288, 2147483644 ; 3 uses
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph504
  %index507 = phi i64 [ 0, %vector.ph504 ], [ %index.next512, %vector.body506 ] ; 3 uses
  %i.dt = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %index507 ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 16     ; 2 uses
  %wide.load508 = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  %wide.load509 = load <2 x ptr>, ptr %i.du, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %index507 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16     ; 2 uses
  %wide.load510 = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !37, !alias.scope !50
  %wide.load511 = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !37, !alias.scope !50
  store <2 x ptr> %wide.load510, ptr %i.dt, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  store <2 x ptr> %wide.load511, ptr %i.du, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  store <2 x ptr> %wide.load508, ptr %i.dv, align 8, !tbaa !37, !alias.scope !50
  store <2 x ptr> %wide.load509, ptr %i.dw, align 8, !tbaa !37, !alias.scope !50
  %index.next512 = add nuw i64 %index507, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.dx, label %middle.block513, label %vector.body506, !llvm.loop !28

middle.block513:                                  ; preds = %vector.body506
  %cmp.n514 = icmp eq i64 %n.vec505, %wide.trip.count73.i288
  br i1 %cmp.n514, label %._crit_edge63.i274, label %scalar.ph502.preheader

scalar.ph502.preheader:                           ; preds = %vector.memcheck496, %.lr.ph62.i287, %middle.block513
  %indvars.iv70.i291.ph = phi i64 [ 0, %vector.memcheck496 ], [ 0, %.lr.ph62.i287 ], [ %n.vec505, %middle.block513 ] ; 5 uses
  %xtraiter548 = and i64 %wide.trip.count73.i288, 1
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %scalar.ph502.prol.loopexit, label %scalar.ph502.prol

scalar.ph502.prol:                                ; preds = %scalar.ph502.preheader
  %gep82.i292.prol = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %indvars.iv70.i291.ph ; 2 uses
  %i.dy = load ptr, ptr %gep82.i292.prol, align 8, !tbaa !37
  %gep84.i293.prol = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %indvars.iv70.i291.ph ; 2 uses
  %i.dz = load ptr, ptr %gep84.i293.prol, align 8, !tbaa !37
  store ptr %i.dz, ptr %gep82.i292.prol, align 8, !tbaa !37
  store ptr %i.dy, ptr %gep84.i293.prol, align 8, !tbaa !37
  %indvars.iv.next71.i294.prol = or disjoint i64 %indvars.iv70.i291.ph, 1
  br label %scalar.ph502.prol.loopexit

scalar.ph502.prol.loopexit:                       ; preds = %scalar.ph502.prol, %scalar.ph502.preheader
  %indvars.iv70.i291.unr = phi i64 [ %indvars.iv70.i291.ph, %scalar.ph502.preheader ], [ %indvars.iv.next71.i294.prol, %scalar.ph502.prol ]
  %i.ea = add nsw i64 %wide.trip.count73.i288, -1
  %i.eb = icmp eq i64 %indvars.iv70.i291.ph, %i.ea
  br i1 %i.eb, label %._crit_edge63.i274, label %scalar.ph502

scalar.ph502:                                     ; preds = %scalar.ph502.prol.loopexit, %scalar.ph502
  %indvars.iv70.i291 = phi i64 [ %indvars.iv.next71.i294.1, %scalar.ph502 ], [ %indvars.iv70.i291.unr, %scalar.ph502.prol.loopexit ] ; 4 uses
  %gep82.i292 = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %indvars.iv70.i291 ; 2 uses
  %i.ec = load ptr, ptr %gep82.i292, align 8, !tbaa !37
  %gep84.i293 = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %indvars.iv70.i291 ; 2 uses
  %i.ed = load ptr, ptr %gep84.i293, align 8, !tbaa !37
  store ptr %i.ed, ptr %gep82.i292, align 8, !tbaa !37
  store ptr %i.ec, ptr %gep84.i293, align 8, !tbaa !37
  %indvars.iv.next71.i294 = add nuw nsw i64 %indvars.iv70.i291, 1 ; 2 uses
  %gep82.i292.1 = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %indvars.iv.next71.i294 ; 2 uses
  %i.ee = load ptr, ptr %gep82.i292.1, align 8, !tbaa !37
  %gep84.i293.1 = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %indvars.iv.next71.i294 ; 2 uses
  %i.ef = load ptr, ptr %gep84.i293.1, align 8, !tbaa !37
  store ptr %i.ef, ptr %gep82.i292.1, align 8, !tbaa !37
  store ptr %i.ee, ptr %gep84.i293.1, align 8, !tbaa !37
  %indvars.iv.next71.i294.1 = add nuw nsw i64 %indvars.iv70.i291, 2 ; 2 uses
  %exitcond74.not.i295.1 = icmp eq i64 %indvars.iv.next71.i294.1, %wide.trip.count73.i288
  br i1 %exitcond74.not.i295.1, label %._crit_edge63.i274, label %scalar.ph502, !llvm.loop !29

.lr.ph.i280:                                      ; preds = %.lr.ph.i280.prol.loopexit, %.lr.ph.i280
  %indvars.iv.i281 = phi i64 [ %indvars.iv.next.i284.1, %.lr.ph.i280 ], [ %indvars.iv.i281.unr, %.lr.ph.i280.prol.loopexit ] ; 4 uses
  %gep.i282 = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.i281 ; 2 uses
  %i.eg = load ptr, ptr %gep.i282, align 8, !tbaa !37
  %gep80.i283 = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %indvars.iv.i281 ; 2 uses
  %i.eh = load ptr, ptr %gep80.i283, align 8, !tbaa !37
  store ptr %i.eh, ptr %gep.i282, align 8, !tbaa !37
  store ptr %i.eg, ptr %gep80.i283, align 8, !tbaa !37
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i281, 1 ; 2 uses
  %gep.i282.1 = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.next.i284 ; 2 uses
  %i.ei = load ptr, ptr %gep.i282.1, align 8, !tbaa !37
  %gep80.i283.1 = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %indvars.iv.next.i284 ; 2 uses
  %i.ej = load ptr, ptr %gep80.i283.1, align 8, !tbaa !37
  store ptr %i.ej, ptr %gep.i282.1, align 8, !tbaa !37
  store ptr %i.ei, ptr %gep80.i283.1, align 8, !tbaa !37
  %indvars.iv.next.i284.1 = add nuw nsw i64 %indvars.iv.i281, 2 ; 2 uses
  %exitcond.not.i285.1 = icmp eq i64 %indvars.iv.next.i284.1, %wide.trip.count.i278
  br i1 %exitcond.not.i285.1, label %._crit_edge.i273, label %.lr.ph.i280, !llvm.loop !30

._crit_edge.i273:                                 ; preds = %.lr.ph.i280.prol.loopexit, %.lr.ph.i280, %middle.block534, %.preheader59.i272
  %i.ek = add nsw i32 %i.cv, %.05364.i271
  br label %._crit_edge63.i274

._crit_edge63.i274:                               ; preds = %scalar.ph502.prol.loopexit, %scalar.ph502, %middle.block513, %._crit_edge.i273, %.preheader.i286
  %.154.i275 = phi i32 [ %i.ek, %._crit_edge.i273 ], [ %.05364.i271, %.preheader.i286 ], [ %.05364.i271, %middle.block513 ], [ %.05364.i271, %scalar.ph502 ], [ %.05364.i271, %scalar.ph502.prol.loopexit ] ; 2 uses
  %.1.i276 = phi i32 [ %.05265.i270, %._crit_edge.i273 ], [ %i.dm, %.preheader.i286 ], [ %i.dm, %middle.block513 ], [ %i.dm, %scalar.ph502 ], [ %i.dm, %scalar.ph502.prol.loopexit ] ; 2 uses
  %i.el = icmp sgt i32 %.1.i276, %i.ce
  %i.em = icmp sgt i32 %i.ce, %.154.i275
  %i.en = select i1 %i.el, i1 %i.em, i1 false
  br i1 %i.en, label %.lr.ph67.i269, label %exchange.exit296, !llvm.loop !19

exchange.exit296:                                 ; preds = %._crit_edge63.i274, %bb.x
  %i.eo = add i32 %i.cf, %i.cq
  %i.ep = sub i32 %i.eo, %i.ce
  br label %.sink.split454

bb.y:                                             ; preds = %bb.w
  br i1 %.not222, label %.sink.split454, label %bb.z

.sink.split454:                                   ; preds = %bb.y, %exchange.exit296
  %.sink455 = phi i32 [ %i.ep, %exchange.exit296 ], [ %i.cq, %bb.y ] ; 2 uses
  store i32 %.sink455, ptr @first_nonopt, align 4, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %.sink.split454, %bb.y
  %i.eq = phi i32 [ %i.cf, %bb.y ], [ %.sink455, %.sink.split454 ]
  store i32 %0, ptr @last_nonopt, align 4, !tbaa !38
  store i32 %0, ptr @share__optind, align 4, !tbaa !38
  br label %.thread427

.thread427:                                       ; preds = %bb.v, %bb.z
  %i.er = phi i32 [ %i.eq, %bb.z ], [ %i.cf, %bb.v ] ; 2 uses
  %i.es = phi i32 [ %0, %bb.z ], [ %i.ce, %bb.v ]
  %.not263 = icmp eq i32 %i.er, %i.es
end_hunk_0
