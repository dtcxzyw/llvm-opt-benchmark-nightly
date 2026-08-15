inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitarray_t = type { %union.anon.0, i64 }
%union.anon.0 = type { ptr }
%struct.rk_state_ = type { [624 x i64], i32 }

@.str = private unnamed_addr constant [76 x i8] c"circuit model not yet supported in Gmode=sgd, reverting to shortpath model\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"mds model not yet supported in Gmode=sgd, reverting to shortpath model\0A\00", align 1
@Verbose = external local_unnamed_addr global i8, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"calculating shortest paths and setting up stress terms:\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" %.2f sec\0A\00", align 1
@Epsilon = external local_unnamed_addr global double, align 8
@MaxIter = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"solving model:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %.3f\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\0Afinished in %.2f sec\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"%s:%d: claimed unreachable code was reached\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/graphviz/graphviz/lib/neatogen/sgd.c\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @sgd(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [16 x i8], align 16                 ; 4 uses
  %3 = alloca %struct.bitarray_t, align 8         ; 5 uses
  %4 = alloca %struct.bitarray_t, align 8         ; 5 uses
  %5 = alloca %struct.bitarray_t, align 8         ; 5 uses
  %6 = alloca %struct.bitarray_t, align 8         ; 14 uses
  %7 = alloca %struct.bitarray_t, align 8         ; 13 uses
  %8 = alloca %struct.rk_state_, align 8          ; 4 uses
  switch i32 %1, label %bb.c [
    i32 1, label %.sink.split
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.str.sink = phi ptr [ @.str.1, %bb.b ], [ @.str, %bb.a ]
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull %.str.sink) #14
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ %1, %bb.a ], [ 0, %.sink.split ]
  %i.a = tail call i32 @agnnodes(ptr noundef %0) #14 ; 19 uses
  %i.b = load i8, ptr @Verbose, align 1, !tbaa !8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.2, i64 55, i64 1, ptr %i.c) #15 ; 0 uses
  tail call void @start_timer() #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = icmp sgt i32 %i.a, 0                     ; 3 uses
  br i1 %i.e, label %.lr.ph, label %.thread.i

.lr.ph:                                           ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i32 %i.a, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.aq

._crit_edge.unr-lcssa:                            ; preds = %bb.aq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0134185.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1135.1, %._crit_edge.unr-lcssa ]
  %.0136184.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1137.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod335 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod335)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 163
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40
  %i.q = icmp ugt i8 %i.p, 1
  %.neg = xor i32 %.0134185.epil.init, -1
  %i.r = add i32 %i.a, %.neg
  %i.s = select i1 %i.q, i32 0, i32 %i.r
  %.1137.epil = add nsw i32 %i.s, %.0136184.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.1137.lcssa = phi i32 [ %.1137.1, %._crit_edge.unr-lcssa ], [ %.1137.epil, %.epil.preheader ] ; 4 uses
  %i.t = sext i32 %.1137.lcssa to i64             ; 3 uses
  %.not.i = icmp eq i32 %.1137.lcssa, 0
  br i1 %.not.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e, %._crit_edge
  %i.u = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #16
  br label %gv_calloc.exit

bb.f:                                             ; preds = %._crit_edge
  %mul.ov.i = icmp slt i32 %.1137.lcssa, 0
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.7, i64 noundef %i.t, i64 noundef 16) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 16) #16 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %gv_calloc.exit

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.aa = shl nuw nsw i64 %i.t, 4
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.8, i64 noundef %i.aa) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.h
  %.0136.lcssa295 = phi i32 [ 0, %.thread.i ], [ %.1137.lcssa, %bb.h ] ; 5 uses
  %i.ac = phi ptr [ %i.u, %.thread.i ], [ %i.x, %bb.h ] ; 16 uses
  %i.ad = tail call ptr @agfstnode(ptr noundef %0) #14 ; 2 uses
  %.not205.i = icmp eq ptr %i.ad, null
  br i1 %.not205.i, label %._crit_edge211.i, label %.lr.ph210.i

._crit_edge211.i:                                 ; preds = %._crit_edge.i, %gv_calloc.exit
  %.0137.lcssa.i = phi i64 [ 0, %gv_calloc.exit ], [ %.1138.lcssa.i, %._crit_edge.i ] ; 8 uses
  %.0.lcssa.i = phi i64 [ 0, %gv_calloc.exit ], [ %i.ch, %._crit_edge.i ] ; 7 uses
  %i.ae = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #16 ; 16 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %gv_alloc.exit.i

bb.j:                                             ; preds = %._crit_edge211.i
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.8, i64 noundef 48) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_alloc.exit.i:                                  ; preds = %._crit_edge211.i
  %i.ai = add i64 %.0.lcssa.i, 1                  ; 5 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %gv_calloc.exit.thread.i, label %bb.k

gv_calloc.exit.thread.i:                          ; preds = %gv_alloc.exit.i
  %i.aj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.o

bb.k:                                             ; preds = %gv_alloc.exit.i
  %mul.ov.i.i = icmp ugt i64 %i.ai, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.7, i64 noundef %i.ai, i64 noundef 8) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ao = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 8) #16 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.n, label %gv_calloc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ar = shl nuw i64 %i.ai, 3
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.8, i64 noundef %i.ar) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  store ptr %i.ao, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.av = icmp samesign ult i64 %.0.lcssa.i, 65
  br i1 %i.av, label %bitarray_new.exit.i, label %bb.o

bb.o:                                             ; preds = %gv_calloc.exit.i, %gv_calloc.exit.thread.i
  %i.aw = phi ptr [ %i.aj, %gv_calloc.exit.thread.i ], [ %i.ao, %gv_calloc.exit.i ]
  %i.ax = phi ptr [ %i.al, %gv_calloc.exit.thread.i ], [ %i.au, %gv_calloc.exit.i ]
  %i.ay = phi ptr [ %i.ak, %gv_calloc.exit.thread.i ], [ %i.at, %gv_calloc.exit.i ]
  %i.az = lshr i64 %.0.lcssa.i, 3
  %i.ba = and i64 %.0.lcssa.i, 7
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add nuw nsw i64 %i.az, %i.bc            ; 2 uses
  %i.be = tail call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 1) #16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.p, label %bitarray_new.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.8, i64 noundef %i.bd) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bitarray_new.exit.i:                              ; preds = %bb.o, %gv_calloc.exit.i
  %i.bi = phi ptr [ %i.ao, %gv_calloc.exit.i ], [ %i.aw, %bb.o ]
  %i.bj = phi ptr [ %i.au, %gv_calloc.exit.i ], [ %i.ax, %bb.o ] ; 4 uses
  %i.bk = phi ptr [ %i.at, %gv_calloc.exit.i ], [ %i.ay, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ null, %gv_calloc.exit.i ], [ %i.be, %bb.o ]
  store ptr %.sroa.0.0.i.i, ptr %i.bj, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  store i64 %.0.lcssa.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !52
  %.not.i162.i = icmp eq i64 %.0137.lcssa.i, 0
  br i1 %.not.i162.i, label %.thread.i170.i, label %bb.q

bb.q:                                             ; preds = %bitarray_new.exit.i
  %mul.ov.i164.i = icmp ugt i64 %.0137.lcssa.i, 2305843009213693951
  br i1 %mul.ov.i164.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.7, i64 noundef %.0137.lcssa.i, i64 noundef 8) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bn = tail call noalias ptr @calloc(i64 noundef %.0137.lcssa.i, i64 noundef 8) #16 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bq = shl nuw i64 %.0137.lcssa.i, 3
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.8, i64 noundef %i.bq) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

.thread.i170.i:                                   ; preds = %bitarray_new.exit.i
  %i.bs = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !53
  %i.bu = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit171.i

bb.u:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !53
  %i.bw = tail call noalias ptr @calloc(i64 noundef %.0137.lcssa.i, i64 noundef 4) #16 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.v, label %gv_calloc.exit171.i

bb.v:                                             ; preds = %bb.u
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bz = shl nuw nsw i64 %.0137.lcssa.i, 2
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.8, i64 noundef %i.bz) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit171.i:                              ; preds = %bb.u, %.thread.i170.i
  %i.cb = phi ptr [ %i.bt, %.thread.i170.i ], [ %i.bv, %bb.u ] ; 4 uses
  %i.cc = phi ptr [ %i.bu, %.thread.i170.i ], [ %i.bw, %bb.u ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 4 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !54
  store i64 %.0.lcssa.i, ptr %i.ae, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0.lcssa.i
  store i64 %.0137.lcssa.i, ptr %i.ce, align 8, !tbaa !52
  %i.cf = tail call ptr @agfstnode(ptr noundef %0) #14 ; 2 uses
  %.not157220.i = icmp eq ptr %i.cf, null
  br i1 %.not157220.i, label %._crit_edge225.i, label %.lr.ph224.i

.lr.ph224.i:                                      ; preds = %gv_calloc.exit171.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  br label %bb.w

.lr.ph210.i:                                      ; preds = %gv_calloc.exit, %._crit_edge.i
  %.0208.i = phi i64 [ %i.ch, %._crit_edge.i ], [ 0, %gv_calloc.exit ]
  %.0137207.i = phi i64 [ %.1138.lcssa.i, %._crit_edge.i ], [ 0, %gv_calloc.exit ] ; 2 uses
  %.0140206.i = phi ptr [ %i.cj, %._crit_edge.i ], [ %i.ad, %gv_calloc.exit ] ; 3 uses
  %i.ch = add i64 %.0208.i, 1                     ; 2 uses
  %i.ci = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.0140206.i) #14 ; 2 uses
  %.not159202.i = icmp eq ptr %i.ci, null
  br i1 %.not159202.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph210.i
  %.1138.lcssa.i = phi i64 [ %.0137207.i, %.lr.ph210.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.cj = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0140206.i) #14 ; 2 uses
  %.not.i155 = icmp eq ptr %i.cj, null
  br i1 %.not.i155, label %._crit_edge211.i, label %.lr.ph210.i, !llvm.loop !56

.lr.ph.i:                                         ; preds = %.lr.ph210.i, %.lr.ph.i
  %.1138204.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.0137207.i, %.lr.ph210.i ]
  %.0147203.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.ci, %.lr.ph210.i ] ; 4 uses
  %i.ck = load i32, ptr %.0147203.i, align 8
  %i.cl = and i32 %i.ck, 3                        ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 3
  %i.cn = select i1 %i.cm, i64 56, i64 120
  %i.co = getelementptr inbounds nuw i8, ptr %.0147203.i, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !58
  %i.cq = icmp eq i32 %i.cl, 2
  %i.cr = select i1 %i.cq, i64 56, i64 -8
  %i.cs = getelementptr inbounds i8, ptr %.0147203.i, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58
  %.not160.i = icmp ne ptr %i.cp, %i.ct
  %i.cu = zext i1 %.not160.i to i64
  %spec.select.i = add i64 %.1138204.i, %i.cu     ; 2 uses
  %i.cv = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0147203.i, ptr noundef nonnull %.0140206.i) #14 ; 2 uses
  %.not159.i = icmp eq ptr %i.cv, null
  br i1 %.not159.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !62

._crit_edge225.i:                                 ; preds = %._crit_edge218.i, %gv_calloc.exit171.i
  %.3.lcssa.i = phi i64 [ 0, %gv_calloc.exit171.i ], [ %.4.lcssa.i, %._crit_edge218.i ]
  %.1.lcssa.i = phi i64 [ 0, %gv_calloc.exit171.i ], [ %i.dv, %._crit_edge218.i ]
  %i.cw = load ptr, ptr %i.bk, align 8, !tbaa !47 ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.1.lcssa.i
  store i64 %.3.lcssa.i, ptr %i.cx, align 8, !tbaa !52
  switch i32 %.1, label %bb.ap [
    i32 0, label %extract_adjacency.exit
    i32 2, label %bb.ad
  ]

bb.w:                                             ; preds = %._crit_edge218.i, %.lr.ph224.i
  %.1223.i = phi i64 [ 0, %.lr.ph224.i ], [ %i.dv, %._crit_edge218.i ] ; 5 uses
  %.3222.i = phi i64 [ 0, %.lr.ph224.i ], [ %.4.lcssa.i, %._crit_edge218.i ] ; 3 uses
  %.0152221.i = phi ptr [ %i.cf, %.lr.ph224.i ], [ %i.dw, %._crit_edge218.i ] ; 5 uses
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.1223.i
  store i64 %.3222.i, ptr %i.cz, align 8, !tbaa !52
  %i.da = getelementptr inbounds nuw i8, ptr %.0152221.i, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 163
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !40
  %i.de = icmp ugt i8 %i.dd, 1
  %i.df = load i64, ptr %i.cg, align 8, !tbaa !63
  %i.dg = icmp ult i64 %i.df, 65
  br i1 %i.dg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.bj, align 8, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi ptr [ %i.dh, %bb.x ], [ %i.bj, %bb.w ] ; 2 uses
  %i.di = trunc i64 %.1223.i to i8
  %i.dj = and i8 %i.di, 7
  %i.dk = shl nuw i8 1, %i.dj                     ; 2 uses
  br i1 %i.de, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dl = lshr i64 %.1223.i, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = or i8 %i.dn, %i.dk
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !8
  br label %bitarray_set.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dp = xor i8 %i.dk, -1
  %i.dq = lshr i64 %.1223.i, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.dt = and i8 %i.ds, %i.dp
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !8
  br label %bitarray_set.exit.i

bitarray_set.exit.i:                              ; preds = %bb.aa, %bb.z
  %i.du = tail call ptr @agfstedge(ptr noundef %0, ptr noundef nonnull %.0152221.i) #14 ; 2 uses
  %.not158214.i = icmp eq ptr %i.du, null
  br i1 %.not158214.i, label %._crit_edge218.i, label %.lr.ph217.i

._crit_edge218.i:                                 ; preds = %bb.ac, %bitarray_set.exit.i
  %.4.lcssa.i = phi i64 [ %.3222.i, %bitarray_set.exit.i ], [ %.5.i, %bb.ac ] ; 2 uses
  %i.dv = add i64 %.1223.i, 1                     ; 2 uses
  %i.dw = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.0152221.i) #14 ; 2 uses
  %.not157.i = icmp eq ptr %i.dw, null
  br i1 %.not157.i, label %._crit_edge225.i, label %bb.w, !llvm.loop !64

.lr.ph217.i:                                      ; preds = %bitarray_set.exit.i, %bb.ac
  %.4216.i = phi i64 [ %.5.i, %bb.ac ], [ %.3222.i, %bitarray_set.exit.i ] ; 4 uses
  %.0153215.i = phi ptr [ %i.ey, %bb.ac ], [ %i.du, %bitarray_set.exit.i ] ; 5 uses
  %i.dx = load i32, ptr %.0153215.i, align 8
  %i.dy = and i32 %i.dx, 3                        ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 3
  %i.ea = select i1 %i.dz, i64 56, i64 120
  %i.eb = getelementptr inbounds nuw i8, ptr %.0153215.i, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !58 ; 3 uses
  %i.ed = icmp eq i32 %i.dy, 2
  %i.ee = select i1 %i.ed, i64 56, i64 -8
  %i.ef = getelementptr inbounds i8, ptr %.0153215.i, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !58 ; 2 uses
  %i.eh = icmp eq ptr %i.ec, %i.eg
  br i1 %i.eh, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph217.i
  %i.ei = icmp eq ptr %i.ec, %.0152221.i
  %..i = select i1 %i.ei, ptr %i.eg, ptr %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %..i, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 164
  %i.em = load i32, ptr %i.el, align 4, !tbaa !65
  %i.en = sext i32 %i.em to i64
  %i.eo = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.4216.i
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !52
  %i.eq = getelementptr inbounds nuw i8, ptr %.0153215.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !12
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 184
  %i.et = load double, ptr %i.es, align 8, !tbaa !66
  %i.eu = fptrunc double %i.et to float
  %i.ev = load ptr, ptr %i.cd, align 8, !tbaa !54
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.4216.i
  store float %i.eu, ptr %i.ew, align 4, !tbaa !72
  %i.ex = add i64 %.4216.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph217.i
  %.5.i = phi i64 [ %.4216.i, %.lr.ph217.i ], [ %i.ex, %bb.ab ] ; 2 uses
  %i.ey = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.0153215.i, ptr noundef nonnull %.0152221.i) #14 ; 2 uses
  %.not158.i = icmp eq ptr %i.ey, null
  br i1 %.not158.i, label %._crit_edge218.i, label %.lr.ph217.i, !llvm.loop !74

bb.ad:                                            ; preds = %._crit_edge225.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ez = load i64, ptr %i.ae, align 8, !tbaa !55 ; 9 uses
  %i.fa = icmp ult i64 %i.ez, 65
  br i1 %i.fa, label %bitarray_new.exit179.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = lshr i64 %i.ez, 3
  %i.fc = and i64 %i.ez, 7
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = zext i1 %i.fd to i64
  %i.ff = add nuw nsw i64 %i.fb, %i.fe            ; 4 uses
  %i.fg = tail call noalias ptr @calloc(i64 noundef %i.ff, i64 noundef 1) #16 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.8, i64 noundef %i.ff) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.fg, ptr %6, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.fl = tail call noalias ptr @calloc(i64 noundef %i.ff, i64 noundef 1) #16 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ah, label %bitarray_new.exit179.thread.i

bitarray_new.exit179.thread.i:                    ; preds = %bb.ag
  store ptr %i.fl, ptr %7, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fn, align 8
  br label %.lr.ph254.i

bb.ah:                                            ; preds = %bb.ag
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.fp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.8, i64 noundef %i.ff) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bitarray_new.exit179.i:                           ; preds = %bb.ad
  store ptr null, ptr %6, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ez, ptr %i.fq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %7, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.ez, ptr %i.fr, align 8
  %.not256.i = icmp eq i64 %i.ez, 0
  br i1 %.not256.i, label %bitarray_reset.exit.i, label %.lr.ph254.i

.lr.ph254.i:                                      ; preds = %bitarray_new.exit179.i, %bitarray_new.exit179.thread.i
  %i.fs = phi ptr [ %i.fn, %bitarray_new.exit179.thread.i ], [ %i.fr, %bitarray_new.exit179.i ] ; 4 uses
  %i.ft = phi ptr [ %i.fk, %bitarray_new.exit179.thread.i ], [ %i.fq, %bitarray_new.exit179.i ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %i.cw, align 8, !tbaa !52
  br label %bb.ak

.loopexit.i:                                      ; preds = %bitarray_set.exit191.i, %._crit_edge251.i
  %i.fx = phi i64 [ %i.ho, %._crit_edge251.i ], [ %i.kq, %bitarray_set.exit191.i ]
  %exitcond.not.i = icmp eq i64 %i.gg, %i.ez
  br i1 %exitcond.not.i, label %._crit_edge255.i, label %bb.ak, !llvm.loop !75

._crit_edge255.i:                                 ; preds = %.loopexit.i
  %.pre268.i = load i64, ptr %i.ft, align 8, !tbaa !63
  %i.fy = icmp ugt i64 %.pre268.i, 64
  br i1 %i.fy, label %bb.ai, label %bitarray_reset.exit.i

bb.ai:                                            ; preds = %._crit_edge255.i
  %i.fz = load ptr, ptr %6, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.fz) #14
  br label %bitarray_reset.exit.i

bitarray_reset.exit.i:                            ; preds = %bb.ai, %._crit_edge255.i, %bitarray_new.exit179.i
  %i.ga = phi ptr [ %i.fs, %bb.ai ], [ %i.fs, %._crit_edge255.i ], [ %i.fr, %bitarray_new.exit179.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !63
  %i.gc = icmp ugt i64 %i.gb, 64
  br i1 %i.gc, label %bb.aj, label %bitarray_reset.exit180.i

bb.aj:                                            ; preds = %bitarray_reset.exit.i
  %i.gd = load ptr, ptr %7, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.gd) #14
  br label %bitarray_reset.exit180.i

bitarray_reset.exit180.i:                         ; preds = %bb.aj, %bitarray_reset.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %extract_adjacency.exit

bb.ak:                                            ; preds = %.loopexit.i, %.lr.ph254.i
  %i.ge = phi i64 [ %.pre.i, %.lr.ph254.i ], [ %i.fx, %.loopexit.i ] ; 3 uses
  %.0151253.i = phi i64 [ 0, %.lr.ph254.i ], [ %i.gg, %.loopexit.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0151253.i ; 2 uses
  %i.gg = add nuw i64 %.0151253.i, 1              ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.gg ; 4 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !52 ; 3 uses
  %i.gj = icmp ult i64 %i.ge, %i.gi
  br i1 %i.gj, label %.lr.ph232.i, label %._crit_edge233.i

.lr.ph232.i:                                      ; preds = %bb.ak
  %i.gk = load ptr, ptr %i.cb, align 8, !tbaa !53
  %.pre260.i = load ptr, ptr %6, align 8
  br label %bb.al

._crit_edge233.loopexit.i:                        ; preds = %bb.am
  %.pre262.i = load i64, ptr %i.gf, align 8, !tbaa !52
  br label %._crit_edge233.i

._crit_edge233.i:                                 ; preds = %._crit_edge233.loopexit.i, %bb.ak
  %i.gl = phi i64 [ %i.gi, %bb.ak ], [ %i.hk, %._crit_edge233.loopexit.i ] ; 2 uses
  %i.gm = phi i64 [ %i.ge, %bb.ak ], [ %.pre262.i, %._crit_edge233.loopexit.i ] ; 3 uses
  %.0149.lcssa.i = phi i32 [ 0, %bb.ak ], [ %.1150.i, %._crit_edge233.loopexit.i ] ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  br i1 %i.gn, label %.lr.ph250.i, label %._crit_edge251.i

.lr.ph250.i:                                      ; preds = %._crit_edge233.i
  %i.go = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 3 uses
  %i.gp = load ptr, ptr %6, align 8               ; 2 uses
  %i.gq = load ptr, ptr %i.cd, align 8, !tbaa !54 ; 2 uses
  %i.gr = sitofp i32 %.0149.lcssa.i to float
  br label %bb.an

bb.al:                                            ; preds = %bb.am, %.lr.ph232.i
  %i.gs = phi i64 [ %i.gi, %.lr.ph232.i ], [ %i.hk, %bb.am ]
  %i.gt = phi ptr [ %.pre260.i, %.lr.ph232.i ], [ %i.hl, %bb.am ] ; 4 uses
  %.0148230.i = phi i64 [ %i.ge, %.lr.ph232.i ], [ %i.hm, %bb.am ] ; 2 uses
  %.0149229.i = phi i32 [ 0, %.lr.ph232.i ], [ %.1150.i, %bb.am ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.0148230.i
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !52 ; 2 uses
  %i.gw = load i64, ptr %i.ft, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.gt, ptr %5, align 8
  store i64 %i.gw, ptr %i.fu, align 8
  %i.gx = icmp ult i64 %i.gw, 65                  ; 2 uses
  %.0.i181.i = select i1 %i.gx, ptr %5, ptr %i.gt
  %i.gy = lshr i64 %i.gv, 3                       ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i181.i, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !8
  %i.hb = trunc i64 %i.gv to i8
  %i.hc = and i8 %i.hb, 7                         ; 2 uses
  %i.hd = lshr i8 %i.ha, %i.hc
  %i.he = trunc i8 %i.hd to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.he, label %bb.am, label %bitarray_set.exit183.i

bitarray_set.exit183.i:                           ; preds = %bb.al
  %spec.select196.i = select i1 %i.gx, ptr %6, ptr %i.gt
  %i.hf = shl nuw i8 1, %i.hc
  %i.hg = getelementptr inbounds nuw i8, ptr %spec.select196.i, i64 %i.gy ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !8
  %i.hi = or i8 %i.hh, %i.hf
  store i8 %i.hi, ptr %i.hg, align 1, !tbaa !8
  %i.hj = add nsw i32 %.0149229.i, 1
  %.pre259.i = load ptr, ptr %6, align 8
  %.pre261.i = load i64, ptr %i.gh, align 8, !tbaa !52
  br label %bb.am

bb.am:                                            ; preds = %bitarray_set.exit183.i, %bb.al
  %i.hk = phi i64 [ %i.gs, %bb.al ], [ %.pre261.i, %bitarray_set.exit183.i ] ; 3 uses
  %i.hl = phi ptr [ %i.gt, %bb.al ], [ %.pre259.i, %bitarray_set.exit183.i ]
  %.1150.i = phi i32 [ %.0149229.i, %bb.al ], [ %i.hj, %bitarray_set.exit183.i ] ; 2 uses
  %i.hm = add nuw i64 %.0148230.i, 1              ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hk
  br i1 %i.hn, label %bb.al, label %._crit_edge233.loopexit.i, !llvm.loop !76

._crit_edge251.loopexit.i:                        ; preds = %._crit_edge247.i
  %.pre267.i = load i64, ptr %i.gf, align 8, !tbaa !52
  br label %._crit_edge251.i

._crit_edge251.i:                                 ; preds = %._crit_edge251.loopexit.i, %._crit_edge233.i
  %i.ho = phi i64 [ %i.jk, %._crit_edge251.loopexit.i ], [ %i.gl, %._crit_edge233.i ] ; 2 uses
  %i.hp = phi i64 [ %.pre267.i, %._crit_edge251.loopexit.i ], [ %i.gm, %._crit_edge233.i ] ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  br i1 %i.hq, label %bitarray_set.exit191.lr.ph.i, label %.loopexit.i

bitarray_set.exit191.lr.ph.i:                     ; preds = %._crit_edge251.i
  %i.hr = load ptr, ptr %i.cb, align 8, !tbaa !53
  br label %bitarray_set.exit191.i

bb.an:                                            ; preds = %._crit_edge247.i, %.lr.ph250.i
  %.0146248.i = phi i64 [ %i.gm, %.lr.ph250.i ], [ %i.jj, %._crit_edge247.i ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0146248.i
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !52
  %i.hu = getelementptr [8 x i8], ptr %i.cw, i64 %i.ht ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !52 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hu, i64 8      ; 3 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !52 ; 2 uses
  %i.hy = icmp ult i64 %i.hv, %i.hx
  br i1 %i.hy, label %.lr.ph241.preheader.i, label %._crit_edge242.thread.i

._crit_edge242.thread.i:                          ; preds = %bb.an
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0146248.i
  store float %i.gr, ptr %i.hz, align 4, !tbaa !72
  br label %._crit_edge247.i

.lr.ph241.preheader.i:                            ; preds = %bb.an
  %.pre264.i = load ptr, ptr %7, align 8
  br label %.lr.ph241.i

._crit_edge242.i:                                 ; preds = %bb.ao
  %.pre266.i = load i64, ptr %i.hu, align 8, !tbaa !52 ; 2 uses
  %i.ia = icmp ult i64 %.pre266.i, %i.jf
  %i.ib = add nsw i32 %.1143.i, %.0149.lcssa.i
  %i.ic = shl i32 %.1145.i, 1
  %i.id = sub i32 %i.ib, %i.ic
  %i.ie = sitofp i32 %i.id to float
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0146248.i
  store float %i.ie, ptr %i.if, align 4, !tbaa !72
  br i1 %i.ia, label %bitarray_set.exit189.i, label %._crit_edge247.i

.lr.ph241.i:                                      ; preds = %bb.ao, %.lr.ph241.preheader.i
  %i.ig = phi i64 [ %i.jf, %bb.ao ], [ %i.hx, %.lr.ph241.preheader.i ]
  %i.ih = phi ptr [ %i.jg, %bb.ao ], [ %.pre264.i, %.lr.ph241.preheader.i ] ; 4 uses
  %.0141239.i = phi i64 [ %i.jh, %bb.ao ], [ %i.hv, %.lr.ph241.preheader.i ] ; 2 uses
  %.0142238.i = phi i32 [ %.1143.i, %bb.ao ], [ 0, %.lr.ph241.preheader.i ] ; 2 uses
  %.0144237.i = phi i32 [ %.1145.i, %bb.ao ], [ 0, %.lr.ph241.preheader.i ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0141239.i
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !52 ; 2 uses
  %i.ik = load i64, ptr %i.fs, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.ih, ptr %4, align 8
  store i64 %i.ik, ptr %i.fv, align 8
  %i.il = icmp ult i64 %i.ik, 65                  ; 2 uses
  %.0.i184.i = select i1 %i.il, ptr %4, ptr %i.ih
  %i.im = lshr i64 %i.ij, 3                       ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i184.i, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8
  %i.ip = trunc i64 %i.ij to i8
  %i.iq = and i8 %i.ip, 7                         ; 3 uses
  %i.ir = lshr i8 %i.io, %i.iq
  %i.is = trunc i8 %i.ir to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.is, label %bb.ao, label %bitarray_set.exit186.i

bitarray_set.exit186.i:                           ; preds = %.lr.ph241.i
  %spec.select197.i = select i1 %i.il, ptr %7, ptr %i.ih
  %i.it = shl nuw i8 1, %i.iq
  %i.iu = getelementptr inbounds nuw i8, ptr %spec.select197.i, i64 %i.im ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !8
  %i.iw = or i8 %i.iv, %i.it
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !8
  %i.ix = add nsw i32 %.0142238.i, 1
  %i.iy = load i64, ptr %i.ft, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.gp, ptr %3, align 8
  store i64 %i.iy, ptr %i.fw, align 8
  %i.iz = icmp ult i64 %i.iy, 65
  %.0.i187.i = select i1 %i.iz, ptr %3, ptr %i.gp
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i187.i, i64 %i.im
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !8
  %i.jc = lshr i8 %i.jb, %i.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.jd = and i8 %i.jc, 1
  %i.je = zext nneg i8 %i.jd to i32
  %spec.select161.i = add nsw i32 %.0144237.i, %i.je
  %.pre263.i = load ptr, ptr %7, align 8
  %.pre265.i = load i64, ptr %i.hw, align 8, !tbaa !52
  br label %bb.ao

bb.ao:                                            ; preds = %bitarray_set.exit186.i, %.lr.ph241.i
  %i.jf = phi i64 [ %i.ig, %.lr.ph241.i ], [ %.pre265.i, %bitarray_set.exit186.i ] ; 3 uses
  %i.jg = phi ptr [ %i.ih, %.lr.ph241.i ], [ %.pre263.i, %bitarray_set.exit186.i ]
  %.1145.i = phi i32 [ %.0144237.i, %.lr.ph241.i ], [ %spec.select161.i, %bitarray_set.exit186.i ] ; 2 uses
  %.1143.i = phi i32 [ %.0142238.i, %.lr.ph241.i ], [ %i.ix, %bitarray_set.exit186.i ] ; 2 uses
  %i.jh = add nuw i64 %.0141239.i, 1              ; 2 uses
  %i.ji = icmp ult i64 %i.jh, %i.jf
  br i1 %i.ji, label %.lr.ph241.i, label %._crit_edge242.i, !llvm.loop !77

._crit_edge247.i:                                 ; preds = %bitarray_set.exit189.i, %._crit_edge242.i, %._crit_edge242.thread.i
  %i.jj = add nuw i64 %.0146248.i, 1              ; 2 uses
  %i.jk = load i64, ptr %i.gh, align 8, !tbaa !52 ; 2 uses
  %i.jl = icmp ult i64 %i.jj, %i.jk
  br i1 %i.jl, label %bb.an, label %._crit_edge251.loopexit.i, !llvm.loop !78

bitarray_set.exit189.i:                           ; preds = %._crit_edge242.i, %bitarray_set.exit189.i
  %.0139246.i = phi i64 [ %i.jz, %bitarray_set.exit189.i ], [ %.pre266.i, %._crit_edge242.i ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.0139246.i
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !52 ; 2 uses
  %i.jo = load i64, ptr %i.fs, align 8, !tbaa !63
  %i.jp = icmp ult i64 %i.jo, 65
  %i.jq = load ptr, ptr %7, align 8
  %spec.select198.i = select i1 %i.jp, ptr %7, ptr %i.jq
  %i.jr = trunc i64 %i.jn to i8
  %i.js = and i8 %i.jr, 7
  %i.jt = shl nuw i8 1, %i.js
  %i.ju = xor i8 %i.jt, -1
  %i.jv = lshr i64 %i.jn, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %spec.select198.i, i64 %i.jv ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !8
  %i.jy = and i8 %i.jx, %i.ju
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !8
  %i.jz = add nuw i64 %.0139246.i, 1              ; 2 uses
  %i.ka = load i64, ptr %i.hw, align 8, !tbaa !52
  %i.kb = icmp ult i64 %i.jz, %i.ka
  br i1 %i.kb, label %bitarray_set.exit189.i, label %._crit_edge247.i, !llvm.loop !79

bitarray_set.exit191.i:                           ; preds = %bitarray_set.exit191.i, %bitarray_set.exit191.lr.ph.i
  %.0136252.i = phi i64 [ %i.hp, %bitarray_set.exit191.lr.ph.i ], [ %i.kp, %bitarray_set.exit191.i ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.0136252.i
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !52 ; 2 uses
  %i.ke = load i64, ptr %i.ft, align 8, !tbaa !63
  %i.kf = icmp ult i64 %i.ke, 65
  %i.kg = load ptr, ptr %6, align 8
  %spec.select199.i = select i1 %i.kf, ptr %6, ptr %i.kg
  %i.kh = trunc i64 %i.kd to i8
  %i.ki = and i8 %i.kh, 7
  %i.kj = shl nuw i8 1, %i.ki
  %i.kk = xor i8 %i.kj, -1
  %i.kl = lshr i64 %i.kd, 3
  %i.km = getelementptr inbounds nuw i8, ptr %spec.select199.i, i64 %i.kl ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !8
  %i.ko = and i8 %i.kn, %i.kk
  store i8 %i.ko, ptr %i.km, align 1, !tbaa !8
  %i.kp = add nuw i64 %.0136252.i, 1              ; 2 uses
  %i.kq = load i64, ptr %i.gh, align 8, !tbaa !52 ; 2 uses
  %i.kr = icmp ult i64 %i.kp, %i.kq
  br i1 %i.kr, label %bitarray_set.exit191.i, label %.loopexit.i, !llvm.loop !80

bb.ap:                                            ; preds = %._crit_edge225.i
  %i.ks = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.kt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 130) #17 ; 0 uses
  tail call void @abort() #19
  unreachable

extract_adjacency.exit:                           ; preds = %._crit_edge225.i, %bitarray_reset.exit180.i
  br i1 %i.e, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %extract_adjacency.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count225 = zext nneg i32 %i.a to i64
  br label %bb.as

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.aq ] ; 3 uses
  %.0134185 = phi i32 [ 0, %.lr.ph.new ], [ %.1135.1, %bb.aq ] ; 2 uses
  %.0136184 = phi i32 [ 0, %.lr.ph.new ], [ %.1137.1, %bb.aq ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aq ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !12
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 163
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !40
  %i.lb = icmp ugt i8 %i.la, 1                    ; 2 uses
  %i.lc = add nsw i32 %.0134185, 1                ; 2 uses
  %i.ld = sub nsw i32 %i.a, %i.lc
  %i.le = select i1 %i.lb, i32 0, i32 %i.ld
  %.1137 = add nsw i32 %i.le, %.0136184
  %.1135 = select i1 %i.lb, i32 %.0134185, i32 %i.lc ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !39
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !12
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 163
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !40
  %i.lm = icmp ugt i8 %i.ll, 1                    ; 2 uses
  %i.ln = add nsw i32 %.1135, 1                   ; 2 uses
  %i.lo = sub nsw i32 %i.a, %i.ln
  %i.lp = select i1 %i.lm, i32 0, i32 %i.lo
  %.1137.1 = add nsw i32 %i.lp, %.1137            ; 3 uses
  %.1135.1 = select i1 %i.lm, i32 %.1135, i32 %i.ln ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.aq, !llvm.loop !81

._crit_edge189:                                   ; preds = %bb.au, %extract_adjacency.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.lr) #14
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.lt = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !63
  %i.lu = icmp ugt i64 %i.lt, 64
  br i1 %i.lu, label %bb.ar, label %free_adjacency.exit

bb.ar:                                            ; preds = %._crit_edge189
  %i.lv = load ptr, ptr %i.ls, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.lv) #14
  br label %free_adjacency.exit

free_adjacency.exit:                              ; preds = %._crit_edge189, %bb.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, i8 0, i64 16, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.lx) #14
  %i.ly = load ptr, ptr %i.cd, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.ly) #14
  tail call void @free(ptr noundef nonnull %i.ae) #14
  %i.lz = load i8, ptr @Verbose, align 1, !tbaa !8
  %.not151 = icmp eq i8 %i.lz, 0
  br i1 %.not151, label %bb.aw, label %bb.av

bb.as:                                            ; preds = %.lr.ph188, %bb.au
  %indvars.iv222 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next223, %bb.au ] ; 3 uses
  %.0139187 = phi i32 [ 0, %.lr.ph188 ], [ %.1140, %bb.au ] ; 3 uses
  %i.ma = load ptr, ptr %i.ku, align 8, !tbaa !12
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 184
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !17
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv222
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !39
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !12
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 163
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !40
  %i.mj = icmp ugt i8 %i.mi, 1
  br i1 %i.mj, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mk = sext i32 %.0139187 to i64
  %i.ml = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.mk
  %i.mm = trunc nuw nsw i64 %indvars.iv222 to i32
  %i.mn = tail call i32 @dijkstra_sgd(ptr noundef nonnull %i.ae, i32 noundef %i.mm, ptr noundef %i.ml) #14
  %i.mo = add nsw i32 %i.mn, %.0139187
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.1140 = phi i32 [ %.0139187, %bb.as ], [ %i.mo, %bb.at ]
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %._crit_edge189, label %bb.as, !llvm.loop !82

bb.av:                                            ; preds = %free_adjacency.exit
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.mq = tail call double @elapsed_sec() #14
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mp, ptr noundef nonnull @.str.3, double noundef %i.mq) #17 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %free_adjacency.exit
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !83 ; 5 uses
  %i.mu = icmp sgt i32 %.0136.lcssa295, 1         ; 2 uses
  br i1 %i.mu, label %.lr.ph194.preheader, label %._crit_edge195

.lr.ph194.preheader:                              ; preds = %bb.aw
  %wide.trip.count230 = zext nneg i32 %.0136.lcssa295 to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.0136.lcssa295, 10
  br i1 %min.iters.check, label %.lr.ph194.preheader320, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph194.preheader
  %i.mv = add nsw i64 %wide.trip.count230, -1     ; 2 uses
  %i.mw = and i64 %i.mv, 7                        ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 0
  %i.my = select i1 %i.mx, i64 8, i64 %i.mw
  %n.vec = sub nsw i64 %i.mv, %i.my               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.of, %vector.body ] ; 2 uses
  %vec.phi315 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.og, %vector.body ] ; 2 uses
  %vec.phi316 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.oh, %vector.body ] ; 2 uses
  %vec.phi317 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.oi, %vector.body ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.ng = getelementptr [16 x i8], ptr %i.ac, i64 %index
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 44
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 60
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 76
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 92
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 108
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 124
  %i.no = getelementptr i8, ptr %i.ng, i64 140
  %i.np = load float, ptr %i.nh, align 4, !tbaa !83
  %i.nq = load float, ptr %i.ni, align 4, !tbaa !83
  %i.nr = load float, ptr %i.nj, align 4, !tbaa !83
  %i.ns = load float, ptr %i.nk, align 4, !tbaa !83
  %i.nt = insertelement <4 x float> poison, float %i.np, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.nq, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 2
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 3 ; 3 uses
  %i.nx = load float, ptr %i.nl, align 4, !tbaa !83
  %i.ny = load float, ptr %i.nm, align 4, !tbaa !83
  %i.nz = load float, ptr %i.nn, align 4, !tbaa !83
  %i.oa = load float, ptr %i.no, align 4, !tbaa !83
  %i.ob = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.oc = insertelement <4 x float> %i.ob, float %i.ny, i64 1
  %i.od = insertelement <4 x float> %i.oc, float %i.nz, i64 2
  %i.oe = insertelement <4 x float> %i.od, float %i.oa, i64 3 ; 3 uses
  %i.of = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.nw) ; 2 uses
  %i.og = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi315, <4 x float> %i.oe) ; 2 uses
  %i.oh = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi316, <4 x float> %i.nw) ; 2 uses
  %i.oi = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi317, <4 x float> %i.oe) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oj = fcmp uno <4 x float> %i.nw, %i.oe
  %i.ok = freeze <4 x i1> %i.oj
  %i.ol = bitcast <4 x i1> %i.ok to i4
  %i.om = icmp ne i4 %i.ol, 0                     ; 6 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  %i.oo = or i1 %i.om, %i.on
  br i1 %i.oo, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %i.op = select i1 %i.om, <4 x float> %vec.phi, <4 x float> %i.of
  %i.oq = select i1 %i.om, <4 x float> %vec.phi315, <4 x float> %i.og
  %i.or = select i1 %i.om, <4 x float> %vec.phi316, <4 x float> %i.oh
  %i.os = select i1 %i.om, <4 x float> %vec.phi317, <4 x float> %i.oi
  %i.ot = select i1 %i.om, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.op, <4 x float> %i.oq)
  %i.ou = tail call nsz float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax)
  %i.ov = add i64 %i.ot, 1
  %rdx.minmax318 = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.or, <4 x float> %i.os)
  %i.ow = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax318)
  br label %.lr.ph194.preheader320

.lr.ph194.preheader320:                           ; preds = %.lr.ph194.preheader, %middle.block
  %indvars.iv227.ph = phi i64 [ 1, %.lr.ph194.preheader ], [ %i.ov, %middle.block ]
  %.0142192.ph = phi float [ %i.mt, %.lr.ph194.preheader ], [ %i.ou, %middle.block ]
  %.0143191.ph = phi float [ %i.mt, %.lr.ph194.preheader ], [ %i.ow, %middle.block ]
  br label %.lr.ph194

._crit_edge195:                                   ; preds = %.lr.ph194, %bb.aw
  %.0143.lcssa = phi float [ %i.mt, %bb.aw ], [ %i.qj, %.lr.ph194 ]
  %.0142.lcssa = phi float [ %i.mt, %bb.aw ], [ %i.qi, %.lr.ph194 ]
  %i.ox = insertelement <2 x float> poison, float %.0142.lcssa, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %.0143.lcssa, i64 1
  %i.oz = fpext <2 x float> %i.oy to <2 x double>
  %i.pa = load double, ptr @Epsilon, align 8, !tbaa !88
  %i.pb = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.pa, i64 1
  %i.pc = fdiv <2 x double> %i.pb, %i.oz          ; 2 uses
  %i.pd = extractelement <2 x double> %i.pc, i64 0 ; 2 uses
  %i.pe = extractelement <2 x double> %i.pc, i64 1
  %i.pf = fdiv double %i.pd, %i.pe
  %i.pg = tail call double @log(double noundef %i.pf) #14
  %i.ph = load i32, ptr @MaxIter, align 4, !tbaa !89
  %i.pi = add nsw i32 %i.ph, -1
  %i.pj = sitofp i32 %i.pi to double
  tail call void @initial_positions(ptr noundef %0, i32 noundef %i.a) #14
  %i.pk = shl nsw i32 %i.a, 1
  %i.pl = sext i32 %i.pk to i64                   ; 3 uses
  %.not.i157 = icmp eq i32 %i.a, 0
  br i1 %.not.i157, label %gv_calloc.exit166, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge195
  %mul.ov.i159 = icmp slt i32 %i.a, 0
  br i1 %mul.ov.i159, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.pm = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.pn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pm, ptr noundef nonnull @.str.7, i64 noundef %i.pl, i64 noundef 8) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.po = tail call noalias ptr @calloc(i64 noundef %i.pl, i64 noundef 8) #16 ; 6 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pq = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.pr = shl nuw nsw i64 %i.pl, 3
  %i.ps = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pq, ptr noundef nonnull @.str.8, i64 noundef %i.pr) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.pt = zext nneg i32 %i.a to i64               ; 2 uses
  %i.pu = tail call noalias ptr @calloc(i64 noundef %i.pt, i64 noundef 1) #16 ; 6 uses
  %i.pv = icmp eq ptr %i.pu, null
  br i1 %i.pv, label %bb.bc, label %.lr.ph199

bb.bc:                                            ; preds = %bb.bb
  %i.pw = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.px = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pw, ptr noundef nonnull @.str.8, i64 noundef %i.pt) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit166:                                ; preds = %._crit_edge195
  %i.py = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  %i.pz = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 1) #16
  br label %._crit_edge200

.lr.ph199:                                        ; preds = %bb.bb
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !12
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 184
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !17 ; 3 uses
  %wide.trip.count235 = zext nneg i32 %i.a to i64 ; 2 uses
  %xtraiter337 = and i64 %wide.trip.count235, 1
  %i.qe = icmp eq i32 %i.a, 1
  br i1 %i.qe, label %.epil.preheader336, label %.lr.ph199.new

.lr.ph199.new:                                    ; preds = %.lr.ph199
  %unroll_iter340 = and i64 %wide.trip.count235, 2147483646
  br label %bb.bd

.lr.ph194:                                        ; preds = %.lr.ph194.preheader320, %.lr.ph194
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %.lr.ph194 ], [ %indvars.iv227.ph, %.lr.ph194.preheader320 ] ; 2 uses
  %.0142192 = phi float [ %i.qi, %.lr.ph194 ], [ %.0142192.ph, %.lr.ph194.preheader320 ]
  %.0143191 = phi float [ %i.qj, %.lr.ph194 ], [ %.0143191.ph, %.lr.ph194.preheader320 ]
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv227
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !83 ; 2 uses
  %i.qi = tail call nsz float @llvm.minnum.f32(float %.0142192, float %i.qh) ; 2 uses
  %i.qj = tail call nsz float @llvm.maxnum.f32(float %.0143191, float %i.qh) ; 2 uses
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %._crit_edge195, label %.lr.ph194, !llvm.loop !90

._crit_edge200.loopexit.unr-lcssa:                ; preds = %bb.bd
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %._crit_edge200, label %.epil.preheader336

.epil.preheader336:                               ; preds = %._crit_edge200.loopexit.unr-lcssa, %.lr.ph199
  %indvars.iv232.epil.init = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next233.1, %._crit_edge200.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod339 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod339)
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv232.epil.init
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !39
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !12 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 176
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !91
  %.idx.epil = shl nuw nsw i64 %indvars.iv232.epil.init, 4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx.epil
  %i.qr = load <2 x double>, ptr %i.qp, align 8, !tbaa !88
  store <2 x double> %i.qr, ptr %i.qq, align 8, !tbaa !88
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 163
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !40
  %i.qu = icmp ult i8 %i.qt, 2
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %indvars.iv232.epil.init
  %i.qw = zext i1 %i.qu to i8
  store i8 %i.qw, ptr %i.qv, align 1, !tbaa !92
  br label %._crit_edge200

._crit_edge200:                                   ; preds = %.epil.preheader336, %._crit_edge200.loopexit.unr-lcssa, %gv_calloc.exit166
  %i.qx = phi ptr [ %i.pz, %gv_calloc.exit166 ], [ %i.pu, %._crit_edge200.loopexit.unr-lcssa ], [ %i.pu, %.epil.preheader336 ] ; 3 uses
  %i.qy = phi ptr [ %i.py, %gv_calloc.exit166 ], [ %i.po, %._crit_edge200.loopexit.unr-lcssa ], [ %i.po, %.epil.preheader336 ] ; 8 uses
  %i.qz = load i8, ptr @Verbose, align 1, !tbaa !8
  %.not152 = icmp eq i8 %i.qz, 0
  br i1 %.not152, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.bd, %.lr.ph199.new
  %indvars.iv232 = phi i64 [ 0, %.lr.ph199.new ], [ %indvars.iv.next233.1, %bb.bd ] ; 5 uses
  %niter341 = phi i64 [ 0, %.lr.ph199.new ], [ %niter341.next.1, %bb.bd ]
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv232
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !39
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !12 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 176
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !91
  %.idx = shl nuw nsw i64 %indvars.iv232, 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx
  %i.rh = load <2 x double>, ptr %i.rf, align 8, !tbaa !88
  store <2 x double> %i.rh, ptr %i.rg, align 8, !tbaa !88
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 163
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !40
  %i.rk = icmp ult i8 %i.rj, 2
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pu, i64 %indvars.iv232
  %i.rm = zext i1 %i.rk to i8
  store i8 %i.rm, ptr %i.rl, align 1, !tbaa !92
  %indvars.iv.next233 = or disjoint i64 %indvars.iv232, 1 ; 3 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.next233
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !39
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !12 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 176
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !91
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next233, 4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx.1
  %i.ru = load <2 x double>, ptr %i.rs, align 8, !tbaa !88
  store <2 x double> %i.ru, ptr %i.rt, align 8, !tbaa !88
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 163
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !40
  %i.rx = icmp ult i8 %i.rw, 2
  %i.ry = getelementptr inbounds nuw i8, ptr %i.pu, i64 %indvars.iv.next233
  %i.rz = zext i1 %i.rx to i8
  store i8 %i.rz, ptr %i.ry, align 1, !tbaa !92
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %niter341.next.1 = add i64 %niter341, 2         ; 2 uses
  %niter341.ncmp.1 = icmp eq i64 %niter341.next.1, %unroll_iter340
  br i1 %niter341.ncmp.1, label %._crit_edge200.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !93

bb.be:                                            ; preds = %._crit_edge200
  %i.sa = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.sb = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %i.sa) #15 ; 0 uses
  tail call void @start_timer() #14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge200
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @rk_seed(i64 noundef 0, ptr noundef nonnull %8) #14
  %i.sc = load i32, ptr @MaxIter, align 4, !tbaa !89
  %i.sd = icmp sgt i32 %i.sc, 0
  br i1 %i.sd, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %bb.bf
  %i.se = zext nneg i32 %.0136.lcssa295 to i64    ; 3 uses
  %i.sf = fneg double %i.pg
  %i.sg = fdiv double %i.sf, %i.pj
  %i.sh = icmp sgt i32 %.0136.lcssa295, 0
  br label %bb.bg

._crit_edge207:                                   ; preds = %bb.bm, %bb.bf
  %i.si = load i8, ptr @Verbose, align 1, !tbaa !8
  %.not153 = icmp eq i8 %i.si, 0
  br i1 %.not153, label %bb.bo, label %bb.bn

bb.bg:                                            ; preds = %.lr.ph206, %bb.bm
  %.0146204 = phi i32 [ 0, %.lr.ph206 ], [ %i.vl, %bb.bm ] ; 2 uses
  br i1 %i.mu, label %.lr.ph.i168, label %fisheryates_shuffle.exit

.lr.ph.i168:                                      ; preds = %bb.bg, %.lr.ph.i168
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i168 ], [ %i.se, %bb.bg ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.sj = call i64 @rk_interval(i64 noundef %indvars.iv.next.i, ptr noundef nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.next.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.sk, i64 16, i1 false)
  %sext.i = shl i64 %i.sj, 32
  %i.sl = ashr exact i64 %sext.i, 28
  %i.sm = getelementptr inbounds i8, ptr %i.ac, i64 %i.sl ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sk, ptr noundef nonnull align 4 dereferenceable(16) %i.sm, i64 16, i1 false), !tbaa.struct !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sm, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.sn = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.sn, label %.lr.ph.i168, label %fisheryates_shuffle.exit, !llvm.loop !95

fisheryates_shuffle.exit:                         ; preds = %.lr.ph.i168, %bb.bg
  %i.so = uitofp nneg i32 %.0146204 to double
  %i.sp = fmul double %i.sg, %i.so
  %i.sq = call double @exp(double noundef %i.sp) #14
  %i.sr = fmul double %i.pd, %i.sq
  br i1 %i.sh, label %.lr.ph202, label %._crit_edge203.thread

._crit_edge203:                                   ; preds = %bb.bk
  %i.ss = load i8, ptr @Verbose, align 1, !tbaa !8
  %.not154 = icmp eq i8 %i.ss, 0
  br i1 %.not154, label %bb.bm, label %bb.bl

._crit_edge203.thread:                            ; preds = %fisheryates_shuffle.exit
  %i.st = load i8, ptr @Verbose, align 1, !tbaa !8
  %.not154297 = icmp eq i8 %i.st, 0
  br i1 %.not154297, label %bb.bm, label %.thread298

.thread298:                                       ; preds = %._crit_edge203.thread
  %i.su = load ptr, ptr @stderr, align 8, !tbaa !9
  br label %calculate_stress.exit

.lr.ph202:                                        ; preds = %fisheryates_shuffle.exit, %bb.bk
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %bb.bk ], [ 0, %fisheryates_shuffle.exit ] ; 2 uses
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv237 ; 3 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !96 ; 2 uses
  %i.sx = shl nsw i32 %i.sw, 1
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !97 ; 2 uses
  %i.tc = shl nsw i32 %i.tb, 1
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.td ; 3 uses
  %i.tf = load <2 x double>, ptr %i.sz, align 8, !tbaa !88 ; 2 uses
  %i.tg = load <2 x double>, ptr %i.te, align 8, !tbaa !88
  %i.th = fsub <2 x double> %i.tf, %i.tg          ; 3 uses
  %i.ti = extractelement <2 x double> %i.th, i64 0
  %i.tj = extractelement <2 x double> %i.th, i64 1
  %i.tk = call double @hypot(double noundef %i.ti, double noundef %i.tj) #14 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.tm = load <2 x float>, ptr %i.tl, align 4, !tbaa !72
  %i.tn = fpext <2 x float> %i.tm to <2 x double> ; 2 uses
  %i.to = extractelement <2 x double> %i.tn, i64 1
  %i.tp = fmul nsz double %i.sr, %i.to
  %i.tq = call nsz double @llvm.minnum.f64(double %i.tp, double 1.000000e+00)
  %i.tr = extractelement <2 x double> %i.tn, i64 0
  %i.ts = fsub double %i.tk, %i.tr
  %i.tt = fmul double %i.tq, %i.ts
  %i.tu = fmul double %i.tk, 2.000000e+00
  %i.tv = fdiv double %i.tt, %i.tu
  %i.tw = insertelement <2 x double> poison, double %i.tv, i64 0
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ty = fmul <2 x double> %i.th, %i.tx          ; 2 uses
  %i.tz = sext i32 %i.sw to i64
  %i.ua = getelementptr inbounds i8, ptr %i.qx, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !92, !range !98, !noundef !99
  %i.uc = trunc nuw i8 %i.ub to i1
  br i1 %i.uc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph202
  %i.ud = fsub <2 x double> %i.tf, %i.ty
  store <2 x double> %i.ud, ptr %i.sz, align 8, !tbaa !88
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph202
  %i.ue = sext i32 %i.tb to i64
  %i.uf = getelementptr inbounds i8, ptr %i.qx, i64 %i.ue
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !92, !range !98, !noundef !99
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ui = load <2 x double>, ptr %i.te, align 8, !tbaa !88
  %i.uj = fadd <2 x double> %i.ty, %i.ui
  store <2 x double> %i.uj, ptr %i.te, align 8, !tbaa !88
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next238, %i.se
  br i1 %exitcond241.not, label %._crit_edge203, label %.lr.ph202, !llvm.loop !100

bb.bl:                                            ; preds = %._crit_edge203
  %i.uk = load ptr, ptr @stderr, align 8, !tbaa !9
  br label %.lr.ph.i172

.lr.ph.i172:                                      ; preds = %bb.bl, %.lr.ph.i172
  %indvars.iv.i173 = phi i64 [ %indvars.iv.next.i174, %.lr.ph.i172 ], [ 0, %bb.bl ] ; 2 uses
  %.026.i = phi double [ %i.vi, %.lr.ph.i172 ], [ 0.000000e+00, %bb.bl ]
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.i173 ; 3 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !96
  %i.un = shl nsw i32 %i.um, 1
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !97
  %i.us = shl nsw i32 %i.ur, 1
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.ut
  %i.uv = load <2 x double>, ptr %i.up, align 8, !tbaa !88
  %i.uw = load <2 x double>, ptr %i.uu, align 8, !tbaa !88
  %i.ux = fsub <2 x double> %i.uv, %i.uw          ; 2 uses
  %i.uy = extractelement <2 x double> %i.ux, i64 0
  %i.uz = extractelement <2 x double> %i.ux, i64 1
  %i.va = call double @hypot(double noundef %i.uy, double noundef %i.uz) #14
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.vc = load <2 x float>, ptr %i.vb, align 4, !tbaa !72
  %i.vd = fpext <2 x float> %i.vc to <2 x double> ; 2 uses
  %i.ve = extractelement <2 x double> %i.vd, i64 0
  %i.vf = fsub double %i.va, %i.ve                ; 2 uses
  %i.vg = fmul double %i.vf, %i.vf
  %i.vh = extractelement <2 x double> %i.vd, i64 1
  %i.vi = call double @llvm.fmuladd.f64(double %i.vh, double %i.vg, double %.026.i) ; 2 uses
  %indvars.iv.next.i174 = add nuw nsw i64 %indvars.iv.i173, 1 ; 2 uses
  %exitcond.not.i175 = icmp eq i64 %indvars.iv.next.i174, %i.se
  br i1 %exitcond.not.i175, label %calculate_stress.exit, label %.lr.ph.i172, !llvm.loop !101

calculate_stress.exit:                            ; preds = %.lr.ph.i172, %.thread298
  %i.vj = phi ptr [ %i.su, %.thread298 ], [ %i.uk, %.lr.ph.i172 ]
  %.0.lcssa.i170 = phi double [ 0.000000e+00, %.thread298 ], [ %i.vi, %.lr.ph.i172 ]
  %i.vk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vj, ptr noundef nonnull @.str.5, double noundef %.0.lcssa.i170) #17 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge203.thread, %calculate_stress.exit, %._crit_edge203
  %i.vl = add nuw nsw i32 %.0146204, 1            ; 2 uses
  %i.vm = load i32, ptr @MaxIter, align 4, !tbaa !89
  %i.vn = icmp slt i32 %i.vl, %i.vm
  br i1 %i.vn, label %bb.bg, label %._crit_edge207, !llvm.loop !102

bb.bn:                                            ; preds = %._crit_edge207
  %i.vo = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.vp = call double @elapsed_sec() #14
  %i.vq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vo, ptr noundef nonnull @.str.6, double noundef %i.vp) #17 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge207
  call void @free(ptr noundef %i.ac) #14
  br i1 %i.e, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %bb.bo
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !12
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 184
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !17 ; 3 uses
  %wide.trip.count245 = zext nneg i32 %i.a to i64 ; 2 uses
  %xtraiter343 = and i64 %wide.trip.count245, 1
  %i.vv = icmp eq i32 %i.a, 1
  br i1 %i.vv, label %.epil.preheader342, label %.lr.ph210.new

.lr.ph210.new:                                    ; preds = %.lr.ph210
  %unroll_iter346 = and i64 %wide.trip.count245, 2147483646
  br label %bb.bp

._crit_edge211.loopexit.unr-lcssa:                ; preds = %bb.bp
  %lcmp.mod344.not = icmp eq i64 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %._crit_edge211, label %.epil.preheader342

.epil.preheader342:                               ; preds = %._crit_edge211.loopexit.unr-lcssa, %.lr.ph210
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next243.1, %._crit_edge211.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod345 = trunc i32 %i.a to i1
  call void @llvm.assume(i1 %lcmp.mod345)
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv242.epil.init
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !39
  %.idx292.epil = shl nuw nsw i64 %indvars.iv242.epil.init, 4
  %i.vy = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.idx292.epil
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !12
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 176
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !91
  %i.wd = load <2 x double>, ptr %i.vy, align 8, !tbaa !88
  store <2 x double> %i.wd, ptr %i.wc, align 8, !tbaa !88
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %.epil.preheader342, %._crit_edge211.loopexit.unr-lcssa, %bb.bo
  call void @free(ptr noundef %i.qy) #14
  call void @free(ptr noundef %i.qx) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void

bb.bp:                                            ; preds = %bb.bp, %.lr.ph210.new
  %indvars.iv242 = phi i64 [ 0, %.lr.ph210.new ], [ %indvars.iv.next243.1, %bb.bp ] ; 4 uses
  %niter347 = phi i64 [ 0, %.lr.ph210.new ], [ %niter347.next.1, %bb.bp ]
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv242
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !39
  %.idx292 = shl nuw nsw i64 %indvars.iv242, 4
  %i.wg = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.idx292
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !12
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 176
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !91
  %i.wl = load <2 x double>, ptr %i.wg, align 8, !tbaa !88
  store <2 x double> %i.wl, ptr %i.wk, align 8, !tbaa !88
  %indvars.iv.next243 = or disjoint i64 %indvars.iv242, 1 ; 2 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %indvars.iv.next243
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !39
  %.idx292.1 = shl nuw nsw i64 %indvars.iv.next243, 4
  %i.wo = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.idx292.1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !12
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 176
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !91
  %i.wt = load <2 x double>, ptr %i.wo, align 8, !tbaa !88
  store <2 x double> %i.wt, ptr %i.ws, align 8, !tbaa !88
  %indvars.iv.next243.1 = add nuw nsw i64 %indvars.iv242, 2 ; 2 uses
  %niter347.next.1 = add i64 %niter347, 2         ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %._crit_edge211.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !103
}

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @start_timer() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare hidden i32 @dijkstra_sgd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare double @elapsed_sec() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #5

declare void @initial_positions(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @rk_seed(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #7 {
bb.a:
  tail call void @exit(i32 noundef 1) #20
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #1

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

declare hidden i64 @rk_interval(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !16, i64 16}
!13 = !{!"Agobj_s", !14, i64 0, !16, i64 16}
!14 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !15, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 _ZTS7Agrec_s", !11, i64 0}
!17 = !{!18, !29, i64 184}
!18 = !{!"Agraphinfo_t", !19, i64 0, !21, i64 16, !22, i64 24, !23, i64 32, !6, i64 64, !6, i64 128, !6, i64 129, !26, i64 130, !6, i64 131, !5, i64 132, !25, i64 136, !25, i64 144, !27, i64 152, !11, i64 160, !28, i64 168, !11, i64 176, !29, i64 184, !5, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !32, i64 224, !27, i64 232, !27, i64 234, !5, i64 236, !34, i64 240, !35, i64 248, !36, i64 256, !37, i64 264, !35, i64 272, !5, i64 280, !36, i64 288, !36, i64 296, !38, i64 304, !36, i64 320, !36, i64 328, !5, i64 336, !5, i64 340, !26, i64 344, !6, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !29, i64 384, !26, i64 392, !6, i64 393, !6, i64 394, !6, i64 395, !26, i64 396}
!19 = !{!"Agrec_s", !20, i64 0, !16, i64 8}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!"p1 _ZTS8layout_t", !11, i64 0}
!22 = !{!"p1 _ZTS11textlabel_t", !11, i64 0}
!23 = !{!"", !24, i64 0, !24, i64 16}
!24 = !{!"pointf_s", !25, i64 0, !25, i64 8}
!25 = !{!"double", !6, i64 0}
!26 = !{!"_Bool", !6, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!"p1 _ZTS5GVC_s", !11, i64 0}
!29 = !{!"p2 _ZTS8Agnode_s", !30, i64 0}
!30 = !{!"any p2 pointer", !11, i64 0}
!31 = !{!"p2 double", !30, i64 0}
!32 = !{!"p3 double", !33, i64 0}
!33 = !{!"any p3 pointer", !30, i64 0}
!34 = !{!"p2 _ZTS8Agraph_s", !30, i64 0}
!35 = !{!"p1 _ZTS8Agraph_s", !11, i64 0}
!36 = !{!"p1 _ZTS8Agnode_s", !11, i64 0}
!37 = !{!"p1 _ZTS6rank_t", !11, i64 0}
!38 = !{!"nlist_t", !29, i64 0, !15, i64 8}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !6, i64 163}
!41 = !{!"Agnodeinfo_t", !19, i64 0, !42, i64 16, !11, i64 24, !24, i64 32, !25, i64 48, !25, i64 56, !23, i64 64, !25, i64 96, !25, i64 104, !25, i64 112, !25, i64 120, !25, i64 128, !22, i64 136, !22, i64 144, !11, i64 152, !6, i64 160, !6, i64 161, !26, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !43, i64 176, !25, i64 184, !6, i64 192, !26, i64 193, !36, i64 200, !36, i64 208, !6, i64 216, !15, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !36, i64 240, !36, i64 248, !44, i64 256, !44, i64 272, !44, i64 288, !44, i64 304, !44, i64 320, !35, i64 336, !5, i64 344, !36, i64 352, !5, i64 360, !5, i64 364, !25, i64 368, !44, i64 376, !44, i64 392, !44, i64 408, !44, i64 424, !46, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!42 = !{!"p1 _ZTS10shape_desc", !11, i64 0}
!43 = !{!"p1 double", !11, i64 0}
!44 = !{!"elist", !45, i64 0, !15, i64 8}
end_hunk_0
