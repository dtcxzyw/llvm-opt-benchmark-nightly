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
  %min.iters.check482 = icmp ult i32 %i.w, 6
  br i1 %min.iters.check482, label %.lr.ph.i.preheader, label %vector.memcheck483

vector.memcheck483:                               ; preds = %.lr.ph.preheader.i
  %i.ab = add nsw i64 %i.aa, %wide.trip.count.i
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = getelementptr i8, ptr %1, i64 %i.ac
  %6 = add nsw i64 %i.v, %wide.trip.count.i
  %7 = shl nsw i64 %6, 3
  %i.ae = getelementptr i8, ptr %1, i64 %7
  %bound0484 = icmp ult ptr %invariant.gep.i, %i.ae
  %bound1485 = icmp ult ptr %invariant.gep79.i, %i.ad
  %found.conflict486 = and i1 %bound0484, %bound1485
  br i1 %found.conflict486, label %.lr.ph.i.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %vector.memcheck483
  %n.vec488 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next495, %vector.body489 ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index490 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %wide.load491 = load <2 x ptr>, ptr %i.af, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  %wide.load492 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  %i.ah = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %index490 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %wide.load493 = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !37, !alias.scope !41
  %wide.load494 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !37, !alias.scope !41
  store <2 x ptr> %wide.load493, ptr %i.af, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  store <2 x ptr> %wide.load494, ptr %i.ag, align 8, !tbaa !37, !alias.scope !40, !noalias !41
  store <2 x ptr> %wide.load491, ptr %i.ah, align 8, !tbaa !37, !alias.scope !41
  store <2 x ptr> %wide.load492, ptr %i.ai, align 8, !tbaa !37, !alias.scope !41
  %index.next495 = add nuw i64 %index490, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next495, %n.vec488
  br i1 %i.aj, label %middle.block496, label %vector.body489, !llvm.loop !12

middle.block496:                                  ; preds = %vector.body489
  %cmp.n497 = icmp eq i64 %n.vec488, %wide.trip.count.i
  br i1 %cmp.n497, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck483, %.lr.ph.preheader.i, %middle.block496
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck483 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec488, %middle.block496 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.ak = load ptr, ptr %gep.i.prol, align 8, !tbaa !37
  %gep80.i.prol = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.i.ph ; 2 uses
  %i.al = load ptr, ptr %gep80.i.prol, align 8, !tbaa !37
  store ptr %i.al, ptr %gep.i.prol, align 8, !tbaa !37
  store ptr %i.ak, ptr %gep80.i.prol, align 8, !tbaa !37
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.am = add nsw i64 %wide.trip.count.i, -1
  %i.an = icmp eq i64 %indvars.iv.i.ph, %i.am
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph67.i
  %i.ao = icmp sgt i32 %i.x, 0
  %i.ap = sub i32 %.05265.i, %i.x                 ; 5 uses
  br i1 %i.ao, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.aq = sext i32 %.05364.i to i64               ; 2 uses
  %i.ar = sext i32 %i.ap to i64                   ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.x to i64 ; 7 uses
  %invariant.gep81.i = getelementptr [8 x i8], ptr %1, i64 %i.aq ; 5 uses
  %invariant.gep83.i = getelementptr [8 x i8], ptr %1, i64 %i.ar ; 5 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.i
  %i.as = add nsw i64 %i.aq, %wide.trip.count73.i
  %i.at = shl nsw i64 %i.as, 3
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = add nsw i64 %i.ar, %wide.trip.count73.i
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %bound0 = icmp ult ptr %invariant.gep81.i, %i.ax
  %bound1 = icmp ult ptr %invariant.gep83.i, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %index ; 3 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16     ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  %wide.load472 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %index ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 2 uses
  %wide.load473 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !37, !alias.scope !46
  %wide.load474 = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !37, !alias.scope !46
  store <2 x ptr> %wide.load473, ptr %i.ay, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  store <2 x ptr> %wide.load474, ptr %i.az, align 8, !tbaa !37, !alias.scope !45, !noalias !46
  store <2 x ptr> %wide.load, ptr %i.ba, align 8, !tbaa !37, !alias.scope !46
  store <2 x ptr> %wide.load472, ptr %i.bb, align 8, !tbaa !37, !alias.scope !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br i1 %cmp.n, label %._crit_edge63.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph62.i, %middle.block
  %indvars.iv70.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph62.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter553 = and i64 %wide.trip.count73.i, 1
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep82.i.prol = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %indvars.iv70.i.ph ; 2 uses
  %i.bd = load ptr, ptr %gep82.i.prol, align 8, !tbaa !37
  %gep84.i.prol = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %indvars.iv70.i.ph ; 2 uses
  %i.be = load ptr, ptr %gep84.i.prol, align 8, !tbaa !37
  store ptr %i.be, ptr %gep82.i.prol, align 8, !tbaa !37
  store ptr %i.bd, ptr %gep84.i.prol, align 8, !tbaa !37
  %indvars.iv.next71.i.prol = or disjoint i64 %indvars.iv70.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv70.i.unr = phi i64 [ %indvars.iv70.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next71.i.prol, %scalar.ph.prol ]
  %i.bf = add nsw i64 %wide.trip.count73.i, -1
  %i.bg = icmp eq i64 %indvars.iv70.i.ph, %i.bf
  br i1 %i.bg, label %._crit_edge63.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i.1, %scalar.ph ], [ %indvars.iv70.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep82.i = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %indvars.iv70.i ; 2 uses
  %i.bh = load ptr, ptr %gep82.i, align 8, !tbaa !37
  %gep84.i = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %indvars.iv70.i ; 2 uses
  %i.bi = load ptr, ptr %gep84.i, align 8, !tbaa !37
  store ptr %i.bi, ptr %gep82.i, align 8, !tbaa !37
  store ptr %i.bh, ptr %gep84.i, align 8, !tbaa !37
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %gep82.i.1 = getelementptr [8 x i8], ptr %invariant.gep81.i, i64 %indvars.iv.next71.i ; 2 uses
  %i.bj = load ptr, ptr %gep82.i.1, align 8, !tbaa !37
  %gep84.i.1 = getelementptr [8 x i8], ptr %invariant.gep83.i, i64 %indvars.iv.next71.i ; 2 uses
  %i.bk = load ptr, ptr %gep84.i.1, align 8, !tbaa !37
  store ptr %i.bk, ptr %gep82.i.1, align 8, !tbaa !37
  store ptr %i.bj, ptr %gep84.i.1, align 8, !tbaa !37
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i64 %indvars.iv.next71.i.1, %wide.trip.count73.i
  br i1 %exitcond74.not.i.1, label %._crit_edge63.i, label %scalar.ph, !llvm.loop !17

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.bl = load ptr, ptr %gep.i, align 8, !tbaa !37
  %gep80.i = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.i ; 2 uses
  %i.bm = load ptr, ptr %gep80.i, align 8, !tbaa !37
  store ptr %i.bm, ptr %gep.i, align 8, !tbaa !37
  store ptr %i.bl, ptr %gep80.i, align 8, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bn = load ptr, ptr %gep.i.1, align 8, !tbaa !37
  %gep80.i.1 = getelementptr [8 x i8], ptr %invariant.gep79.i, i64 %indvars.iv.next.i ; 2 uses
  %i.bo = load ptr, ptr %gep80.i.1, align 8, !tbaa !37
  store ptr %i.bo, ptr %gep.i.1, align 8, !tbaa !37
  store ptr %i.bn, ptr %gep80.i.1, align 8, !tbaa !37
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block496, %.preheader59.i
  %i.bp = add nsw i32 %i.w, %.05364.i
  br label %._crit_edge63.i

._crit_edge63.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i, %.preheader.i
  %.154.i = phi i32 [ %i.bp, %._crit_edge.i ], [ %.05364.i, %.preheader.i ], [ %.05364.i, %middle.block ], [ %.05364.i, %scalar.ph ], [ %.05364.i, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1.i = phi i32 [ %.05265.i, %._crit_edge.i ], [ %i.ap, %.preheader.i ], [ %i.ap, %middle.block ], [ %i.ap, %scalar.ph ], [ %i.ap, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.bq = icmp sgt i32 %.1.i, %i.m
  %i.br = icmp sgt i32 %i.m, %.154.i
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph67.i, label %exchange.exit, !llvm.loop !19

exchange.exit:                                    ; preds = %._crit_edge63.i, %bb.r
  %i.bt = add i32 %i.p, %share__optind.promoted422
  %i.bu = sub i32 %i.bt, %i.m
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  br i1 %.not217, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %exchange.exit
  %share__optind.promoted422.sink = phi i32 [ %i.bu, %exchange.exit ], [ %share__optind.promoted422, %bb.s ] ; 2 uses
  store i32 %share__optind.promoted422.sink, ptr @first_nonopt, align 4, !tbaa !38
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.s
  %i.bv = phi i32 [ %i.p, %bb.s ], [ %share__optind.promoted422.sink, %.sink.split ]
  %i.bw = icmp slt i32 %share__optind.promoted422, %0
  br i1 %i.bw, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.bx = sext i32 %share__optind.promoted422 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge3
  %i.by = phi i32 [ %share__optind.promoted422, %.lr.ph.preheader ], [ %i.cf, %.critedge3 ]
  %indvars.iv = phi i64 [ %i.bx, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge3 ] ; 3 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !37 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %.not219 = icmp eq i8 %i.cb, 45
  br i1 %.not219, label %bb.u, label %.critedge3

bb.u:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !39
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %.critedge3, label %.critedge.loopexit.split.loop.exit450

.critedge3:                                       ; preds = %.lr.ph, %bb.u
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cf = trunc i64 %indvars.iv.next to i32       ; 3 uses
  store i32 %i.cf, ptr @share__optind, align 4, !tbaa !38
  %exitcond.not = icmp eq i32 %0, %i.cf
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !20

.critedge.loopexit.split.loop.exit450:            ; preds = %bb.u
  %i.cg = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge3, %.critedge.loopexit.split.loop.exit450, %bb.t
  %i.ch = phi i32 [ %share__optind.promoted422, %bb.t ], [ %i.by, %.critedge.loopexit.split.loop.exit450 ], [ %0, %.critedge3 ]
  %.lcssa340 = phi i32 [ %share__optind.promoted422, %bb.t ], [ %i.cg, %.critedge.loopexit.split.loop.exit450 ], [ %0, %.critedge3 ] ; 2 uses
  store i32 %.lcssa340, ptr @last_nonopt, align 4, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %bb.p
  %i.ci = phi i32 [ %.lcssa340, %.critedge ], [ %i.m, %bb.p ] ; 11 uses
  %i.cj = phi i32 [ %i.bv, %.critedge ], [ %i.p, %bb.p ] ; 6 uses
  %i.ck = phi i32 [ %i.ch, %.critedge ], [ %share__optind.promoted422, %bb.p ] ; 7 uses
  %.not220 = icmp eq i32 %i.ck, %0
  br i1 %.not220, label %.thread427, label %sub_0

sub_0:                                            ; preds = %bb.v
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1
  %.not364 = icmp eq i8 %i.co, 45
  br i1 %.not364, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cq = load i8, ptr %i.cp, align 1
  %.not365 = icmp eq i8 %i.cq, 45
  br i1 %.not365, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.w, label %.tail.thread

bb.w:                                             ; preds = %.tail
  %i.cu = add nsw i32 %i.ck, 1                    ; 4 uses
  %.not222 = icmp eq i32 %i.cj, %i.ci             ; 2 uses
  %.not223 = icmp eq i32 %i.ci, %i.cu
  %or.cond265 = select i1 %.not222, i1 true, i1 %.not223
  br i1 %or.cond265, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = icmp sge i32 %i.ck, %i.ci
  %i.cw = icmp sgt i32 %i.ci, %i.cj
  %i.cx = and i1 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph67.preheader.i267, label %exchange.exit296

.lr.ph67.preheader.i267:                          ; preds = %bb.x
  %i.cy = sext i32 %i.ci to i64                   ; 2 uses
  %invariant.gep79.i268 = getelementptr [8 x i8], ptr %1, i64 %i.cy ; 5 uses
  br label %.lr.ph67.i269

.lr.ph67.i269:                                    ; preds = %._crit_edge63.i274, %.lr.ph67.preheader.i267
  %.05265.i270 = phi i32 [ %.1.i276, %._crit_edge63.i274 ], [ %i.cu, %.lr.ph67.preheader.i267 ] ; 3 uses
  %.05364.i271 = phi i32 [ %.154.i275, %._crit_edge63.i274 ], [ %i.cj, %.lr.ph67.preheader.i267 ] ; 8 uses
  %i.cz = sub nsw i32 %.05265.i270, %i.ci         ; 5 uses
  %i.da = sub nsw i32 %i.ci, %.05364.i271         ; 5 uses
  %i.db = icmp sgt i32 %i.cz, %i.da
  br i1 %i.db, label %.preheader.i286, label %.preheader59.i272

.preheader59.i272:                                ; preds = %.lr.ph67.i269
  %i.dc = icmp sgt i32 %i.cz, 0
  br i1 %i.dc, label %.lr.ph.preheader.i277, label %._crit_edge.i273

.lr.ph.preheader.i277:                            ; preds = %.preheader59.i272
  %i.dd = sext i32 %.05364.i271 to i64            ; 2 uses
  %wide.trip.count.i278 = zext nneg i32 %i.cz to i64 ; 7 uses
  %invariant.gep.i279 = getelementptr [8 x i8], ptr %1, i64 %i.dd ; 5 uses
  %min.iters.check529 = icmp ult i32 %i.cz, 6
  br i1 %min.iters.check529, label %.lr.ph.i280.preheader, label %vector.memcheck530

vector.memcheck530:                               ; preds = %.lr.ph.preheader.i277
  %i.de = add nsw i64 %i.dd, %wide.trip.count.i278
  %i.df = shl nsw i64 %i.de, 3
  %i.dg = getelementptr i8, ptr %1, i64 %i.df
  %8 = add nsw i64 %i.cy, %wide.trip.count.i278
  %9 = shl nsw i64 %8, 3
  %i.dh = getelementptr i8, ptr %1, i64 %9
  %bound0531 = icmp ult ptr %invariant.gep.i279, %i.dh
  %bound1532 = icmp ult ptr %invariant.gep79.i268, %i.dg
  %found.conflict533 = and i1 %bound0531, %bound1532
  br i1 %found.conflict533, label %.lr.ph.i280.preheader, label %vector.ph534

vector.ph534:                                     ; preds = %vector.memcheck530
  %n.vec535 = and i64 %wide.trip.count.i278, 2147483644 ; 3 uses
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next542, %vector.body536 ] ; 3 uses
  %i.di = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %index537 ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16     ; 2 uses
  %wide.load538 = load <2 x ptr>, ptr %i.di, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  %wide.load539 = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  %i.dk = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %index537 ; 3 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16     ; 2 uses
  %wide.load540 = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !37, !alias.scope !48
  %wide.load541 = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !37, !alias.scope !48
  store <2 x ptr> %wide.load540, ptr %i.di, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  store <2 x ptr> %wide.load541, ptr %i.dj, align 8, !tbaa !37, !alias.scope !47, !noalias !48
  store <2 x ptr> %wide.load538, ptr %i.dk, align 8, !tbaa !37, !alias.scope !48
  store <2 x ptr> %wide.load539, ptr %i.dl, align 8, !tbaa !37, !alias.scope !48
  %index.next542 = add nuw i64 %index537, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next542, %n.vec535
  br i1 %i.dm, label %middle.block543, label %vector.body536, !llvm.loop !24

middle.block543:                                  ; preds = %vector.body536
  %cmp.n544 = icmp eq i64 %n.vec535, %wide.trip.count.i278
  br i1 %cmp.n544, label %._crit_edge.i273, label %.lr.ph.i280.preheader

.lr.ph.i280.preheader:                            ; preds = %vector.memcheck530, %.lr.ph.preheader.i277, %middle.block543
  %indvars.iv.i281.ph = phi i64 [ 0, %vector.memcheck530 ], [ 0, %.lr.ph.preheader.i277 ], [ %n.vec535, %middle.block543 ] ; 5 uses
  %xtraiter555 = and i64 %wide.trip.count.i278, 1
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %.lr.ph.i280.prol.loopexit, label %.lr.ph.i280.prol

.lr.ph.i280.prol:                                 ; preds = %.lr.ph.i280.preheader
  %gep.i282.prol = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.i281.ph ; 2 uses
  %i.dn = load ptr, ptr %gep.i282.prol, align 8, !tbaa !37
  %gep80.i283.prol = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %indvars.iv.i281.ph ; 2 uses
  %i.do = load ptr, ptr %gep80.i283.prol, align 8, !tbaa !37
  store ptr %i.do, ptr %gep.i282.prol, align 8, !tbaa !37
  store ptr %i.dn, ptr %gep80.i283.prol, align 8, !tbaa !37
  %indvars.iv.next.i284.prol = or disjoint i64 %indvars.iv.i281.ph, 1
  br label %.lr.ph.i280.prol.loopexit

.lr.ph.i280.prol.loopexit:                        ; preds = %.lr.ph.i280.prol, %.lr.ph.i280.preheader
  %indvars.iv.i281.unr = phi i64 [ %indvars.iv.i281.ph, %.lr.ph.i280.preheader ], [ %indvars.iv.next.i284.prol, %.lr.ph.i280.prol ]
  %i.dp = add nsw i64 %wide.trip.count.i278, -1
  %i.dq = icmp eq i64 %indvars.iv.i281.ph, %i.dp
  br i1 %i.dq, label %._crit_edge.i273, label %.lr.ph.i280

.preheader.i286:                                  ; preds = %.lr.ph67.i269
  %i.dr = icmp sgt i32 %i.da, 0
  %i.ds = sub i32 %.05265.i270, %i.da             ; 5 uses
  br i1 %i.dr, label %.lr.ph62.i287, label %._crit_edge63.i274

.lr.ph62.i287:                                    ; preds = %.preheader.i286
  %i.dt = sext i32 %.05364.i271 to i64            ; 2 uses
  %i.du = sext i32 %i.ds to i64                   ; 2 uses
  %wide.trip.count73.i288 = zext nneg i32 %i.da to i64 ; 7 uses
  %invariant.gep81.i289 = getelementptr [8 x i8], ptr %1, i64 %i.dt ; 5 uses
  %invariant.gep83.i290 = getelementptr [8 x i8], ptr %1, i64 %i.du ; 5 uses
  %min.iters.check505 = icmp ult i32 %i.da, 8
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.memcheck506

vector.memcheck506:                               ; preds = %.lr.ph62.i287
  %i.dv = add nsw i64 %i.dt, %wide.trip.count73.i288
  %i.dw = shl nsw i64 %i.dv, 3
  %i.dx = getelementptr i8, ptr %1, i64 %i.dw
  %i.dy = add nsw i64 %i.du, %wide.trip.count73.i288
  %i.dz = shl nsw i64 %i.dy, 3
  %i.ea = getelementptr i8, ptr %1, i64 %i.dz
  %bound0507 = icmp ult ptr %invariant.gep81.i289, %i.ea
  %bound1508 = icmp ult ptr %invariant.gep83.i290, %i.dx
  %found.conflict509 = and i1 %bound0507, %bound1508
  br i1 %found.conflict509, label %scalar.ph504.preheader, label %vector.ph510

vector.ph510:                                     ; preds = %vector.memcheck506
  %n.vec511 = and i64 %wide.trip.count73.i288, 2147483644 ; 3 uses
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph510
  %index513 = phi i64 [ 0, %vector.ph510 ], [ %index.next518, %vector.body512 ] ; 3 uses
  %i.eb = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %index513 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  %wide.load514 = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  %wide.load515 = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  %i.ed = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %index513 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 16     ; 2 uses
  %wide.load516 = load <2 x ptr>, ptr %i.ed, align 8, !tbaa !37, !alias.scope !50
  %wide.load517 = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !37, !alias.scope !50
  store <2 x ptr> %wide.load516, ptr %i.eb, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  store <2 x ptr> %wide.load517, ptr %i.ec, align 8, !tbaa !37, !alias.scope !49, !noalias !50
  store <2 x ptr> %wide.load514, ptr %i.ed, align 8, !tbaa !37, !alias.scope !50
  store <2 x ptr> %wide.load515, ptr %i.ee, align 8, !tbaa !37, !alias.scope !50
  %index.next518 = add nuw i64 %index513, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next518, %n.vec511
  br i1 %i.ef, label %middle.block519, label %vector.body512, !llvm.loop !28

middle.block519:                                  ; preds = %vector.body512
  %cmp.n520 = icmp eq i64 %n.vec511, %wide.trip.count73.i288
  br i1 %cmp.n520, label %._crit_edge63.i274, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %vector.memcheck506, %.lr.ph62.i287, %middle.block519
  %indvars.iv70.i291.ph = phi i64 [ 0, %vector.memcheck506 ], [ 0, %.lr.ph62.i287 ], [ %n.vec511, %middle.block519 ] ; 5 uses
  %xtraiter557 = and i64 %wide.trip.count73.i288, 1
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %scalar.ph504.prol.loopexit, label %scalar.ph504.prol

scalar.ph504.prol:                                ; preds = %scalar.ph504.preheader
  %gep82.i292.prol = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %indvars.iv70.i291.ph ; 2 uses
  %i.eg = load ptr, ptr %gep82.i292.prol, align 8, !tbaa !37
  %gep84.i293.prol = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %indvars.iv70.i291.ph ; 2 uses
  %i.eh = load ptr, ptr %gep84.i293.prol, align 8, !tbaa !37
  store ptr %i.eh, ptr %gep82.i292.prol, align 8, !tbaa !37
  store ptr %i.eg, ptr %gep84.i293.prol, align 8, !tbaa !37
  %indvars.iv.next71.i294.prol = or disjoint i64 %indvars.iv70.i291.ph, 1
  br label %scalar.ph504.prol.loopexit

scalar.ph504.prol.loopexit:                       ; preds = %scalar.ph504.prol, %scalar.ph504.preheader
  %indvars.iv70.i291.unr = phi i64 [ %indvars.iv70.i291.ph, %scalar.ph504.preheader ], [ %indvars.iv.next71.i294.prol, %scalar.ph504.prol ]
  %i.ei = add nsw i64 %wide.trip.count73.i288, -1
  %i.ej = icmp eq i64 %indvars.iv70.i291.ph, %i.ei
  br i1 %i.ej, label %._crit_edge63.i274, label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.prol.loopexit, %scalar.ph504
  %indvars.iv70.i291 = phi i64 [ %indvars.iv.next71.i294.1, %scalar.ph504 ], [ %indvars.iv70.i291.unr, %scalar.ph504.prol.loopexit ] ; 4 uses
  %gep82.i292 = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %indvars.iv70.i291 ; 2 uses
  %i.ek = load ptr, ptr %gep82.i292, align 8, !tbaa !37
  %gep84.i293 = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %indvars.iv70.i291 ; 2 uses
  %i.el = load ptr, ptr %gep84.i293, align 8, !tbaa !37
  store ptr %i.el, ptr %gep82.i292, align 8, !tbaa !37
  store ptr %i.ek, ptr %gep84.i293, align 8, !tbaa !37
  %indvars.iv.next71.i294 = add nuw nsw i64 %indvars.iv70.i291, 1 ; 2 uses
  %gep82.i292.1 = getelementptr [8 x i8], ptr %invariant.gep81.i289, i64 %indvars.iv.next71.i294 ; 2 uses
  %i.em = load ptr, ptr %gep82.i292.1, align 8, !tbaa !37
  %gep84.i293.1 = getelementptr [8 x i8], ptr %invariant.gep83.i290, i64 %indvars.iv.next71.i294 ; 2 uses
  %i.en = load ptr, ptr %gep84.i293.1, align 8, !tbaa !37
  store ptr %i.en, ptr %gep82.i292.1, align 8, !tbaa !37
  store ptr %i.em, ptr %gep84.i293.1, align 8, !tbaa !37
  %indvars.iv.next71.i294.1 = add nuw nsw i64 %indvars.iv70.i291, 2 ; 2 uses
  %exitcond74.not.i295.1 = icmp eq i64 %indvars.iv.next71.i294.1, %wide.trip.count73.i288
  br i1 %exitcond74.not.i295.1, label %._crit_edge63.i274, label %scalar.ph504, !llvm.loop !29

.lr.ph.i280:                                      ; preds = %.lr.ph.i280.prol.loopexit, %.lr.ph.i280
  %indvars.iv.i281 = phi i64 [ %indvars.iv.next.i284.1, %.lr.ph.i280 ], [ %indvars.iv.i281.unr, %.lr.ph.i280.prol.loopexit ] ; 4 uses
  %gep.i282 = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.i281 ; 2 uses
  %i.eo = load ptr, ptr %gep.i282, align 8, !tbaa !37
  %gep80.i283 = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %indvars.iv.i281 ; 2 uses
  %i.ep = load ptr, ptr %gep80.i283, align 8, !tbaa !37
  store ptr %i.ep, ptr %gep.i282, align 8, !tbaa !37
  store ptr %i.eo, ptr %gep80.i283, align 8, !tbaa !37
  %indvars.iv.next.i284 = add nuw nsw i64 %indvars.iv.i281, 1 ; 2 uses
  %gep.i282.1 = getelementptr [8 x i8], ptr %invariant.gep.i279, i64 %indvars.iv.next.i284 ; 2 uses
  %i.eq = load ptr, ptr %gep.i282.1, align 8, !tbaa !37
  %gep80.i283.1 = getelementptr [8 x i8], ptr %invariant.gep79.i268, i64 %indvars.iv.next.i284 ; 2 uses
  %i.er = load ptr, ptr %gep80.i283.1, align 8, !tbaa !37
  store ptr %i.er, ptr %gep.i282.1, align 8, !tbaa !37
  store ptr %i.eq, ptr %gep80.i283.1, align 8, !tbaa !37
  %indvars.iv.next.i284.1 = add nuw nsw i64 %indvars.iv.i281, 2 ; 2 uses
  %exitcond.not.i285.1 = icmp eq i64 %indvars.iv.next.i284.1, %wide.trip.count.i278
  br i1 %exitcond.not.i285.1, label %._crit_edge.i273, label %.lr.ph.i280, !llvm.loop !30

._crit_edge.i273:                                 ; preds = %.lr.ph.i280.prol.loopexit, %.lr.ph.i280, %middle.block543, %.preheader59.i272
  %i.es = add nsw i32 %i.cz, %.05364.i271
  br label %._crit_edge63.i274

._crit_edge63.i274:                               ; preds = %scalar.ph504.prol.loopexit, %scalar.ph504, %middle.block519, %._crit_edge.i273, %.preheader.i286
  %.154.i275 = phi i32 [ %i.es, %._crit_edge.i273 ], [ %.05364.i271, %.preheader.i286 ], [ %.05364.i271, %middle.block519 ], [ %.05364.i271, %scalar.ph504 ], [ %.05364.i271, %scalar.ph504.prol.loopexit ] ; 2 uses
  %.1.i276 = phi i32 [ %.05265.i270, %._crit_edge.i273 ], [ %i.ds, %.preheader.i286 ], [ %i.ds, %middle.block519 ], [ %i.ds, %scalar.ph504 ], [ %i.ds, %scalar.ph504.prol.loopexit ] ; 2 uses
  %i.et = icmp sgt i32 %.1.i276, %i.ci
  %i.eu = icmp sgt i32 %i.ci, %.154.i275
  %i.ev = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %i.ev, label %.lr.ph67.i269, label %exchange.exit296, !llvm.loop !19

exchange.exit296:                                 ; preds = %._crit_edge63.i274, %bb.x
  %i.ew = add i32 %i.cj, %i.cu
  %i.ex = sub i32 %i.ew, %i.ci
  br label %.sink.split454

bb.y:                                             ; preds = %bb.w
  br i1 %.not222, label %.sink.split454, label %bb.z

.sink.split454:                                   ; preds = %bb.y, %exchange.exit296
  %.sink455 = phi i32 [ %i.ex, %exchange.exit296 ], [ %i.cu, %bb.y ] ; 2 uses
  store i32 %.sink455, ptr @first_nonopt, align 4, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %.sink.split454, %bb.y
  %i.ey = phi i32 [ %i.cj, %bb.y ], [ %.sink455, %.sink.split454 ]
  store i32 %0, ptr @last_nonopt, align 4, !tbaa !38
  store i32 %0, ptr @share__optind, align 4, !tbaa !38
  br label %.thread427

.thread427:                                       ; preds = %bb.v, %bb.z
  %i.ez = phi i32 [ %i.ey, %bb.z ], [ %i.cj, %bb.v ] ; 2 uses
  %i.fa = phi i32 [ %0, %bb.z ], [ %i.ci, %bb.v ]
  %.not263 = icmp eq i32 %i.ez, %i.fa
end_hunk_0
