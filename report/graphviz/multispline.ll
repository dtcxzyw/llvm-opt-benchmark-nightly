Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/multispline?download=true
inline.NumInlined: 116
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.item = type { %struct.dtlink_s_, [2 x i32], i32 }
%struct.dtlink_s_ = type { ptr, %union.anon }
%union.anon = type { ptr }
%struct.tgraph = type { ptr, i64, ptr, i32 }
%struct.pointf_s = type { double, double }
%struct.Ppoly_t = type { ptr, i64 }
%struct.Ipair = type { %struct.dtlink_s_, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@Dtoset = external local_unnamed_addr global ptr, align 8
@itemdisc = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr } { i32 16, i32 8, i32 0, [4 x i8] zeroinitializer, ptr @newItem, ptr @free, ptr @cmpItem }, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Heap overflow\0A\00", align 1
@ipairdisc = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr } { i32 16, i32 4, i32 0, [4 x i8] zeroinitializer, ptr @newIpair, ptr @free, ptr @cmpIpair }, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"Could not create control points for multiple spline for edge (%s,%s)\0A\00", align 1
@Concentrate = external local_unnamed_addr global i8, align 1
@sinfo = internal global { ptr, ptr, i8, i8, [6 x i8] } { ptr @swap_ends_p, ptr @spline_merge, i8 0, i8 0, [6 x i8] zeroinitializer }, align 8
@Verbose = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"spline %s %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @freeRouter(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i32 @dtclose(ptr noundef %i.h) #18 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %freeTriGraph.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.07.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.p) #18
  %i.q = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.r = load i64, ptr %i.k, align 8, !tbaa !19
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i, label %freeTriGraph.exit, !llvm.loop !63

freeTriGraph.exit:                                ; preds = %.lr.ph.i, %bb.a
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.t) #18
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.v) #18
  tail call void @free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #1

declare i32 @dtclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noalias nonnull ptr @mkRouter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.item, align 8               ; 6 uses
  %3 = alloca %struct.item, align 8               ; 6 uses
  %4 = alloca %struct.item, align 8               ; 6 uses
  %5 = alloca %struct.tgraph, align 8             ; 10 uses
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef range(i64 4, 81) 80) #19 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.1, i64 noundef 80) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = add nsw i32 %1, 1                        ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %gv_calloc.exit.thread, label %bb.c

gv_calloc.exit.thread:                            ; preds = %gv_alloc.exit
  %i.g = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #19
  br label %bbox.exit.thread.thread

bb.c:                                             ; preds = %gv_alloc.exit
  %mul.ov.i = icmp slt i32 %1, -1
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str, i64 noundef %i.f, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #19 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %gv_calloc.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.m = shl nuw nsw i64 %i.f, 2
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.1, i64 noundef %i.m) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %bb.e
  %.not233 = icmp eq i32 %1, 0
  br i1 %.not233, label %bbox.exit.thread.thread, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %gv_calloc.exit, %bb.g
  %.01326.i = phi i32 [ %.1.lcssa.i, %bb.g ], [ 0, %gv_calloc.exit ] ; 2 uses
  %.01425.i = phi i32 [ %i.ba, %bb.g ], [ 0, %gv_calloc.exit ]
  %.01524.i = phi ptr [ %i.q, %bb.g ], [ %0, %gv_calloc.exit ] ; 2 uses
  %i.o = phi <2 x double> [ %i.ay, %bb.g ], [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit ] ; 4 uses
  %i.p = phi <2 x double> [ %i.az, %bb.g ], [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01524.i, i64 8
  %i.r = load ptr, ptr %.01524.i, align 8, !tbaa !80, !noalias !81 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30, !noalias !81 ; 6 uses
  %.not.i92 = icmp eq i64 %i.t, 0
  br i1 %.not.i92, label %bb.g, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph28.i
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !31, !noalias !81 ; 2 uses
  %min.iters.check = icmp eq i64 %i.t, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.t, -2                       ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat240 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat242 = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat244 = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi.a = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %vec.phi245.a = phi <2 x double> [ %broadcast.splat240, %vector.ph ], [ %i.aa, %vector.body ] ; 2 uses
  %vec.phi246.a = phi <2 x double> [ %broadcast.splat242, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %vec.phi247.a = phi <2 x double> [ %broadcast.splat244, %vector.ph ], [ %i.x, %vector.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %index
  %wide.vec.a = load <4 x double>, ptr %i.v, align 8, !tbaa !32, !noalias !81 ; 2 uses
  %strided.vec.a = shufflevector <4 x double> %wide.vec.a, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec248 = shufflevector <4 x double> %wide.vec.a, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.w = freeze <2 x double> %strided.vec.a       ; 3 uses
  %i.x = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi247.a, <2 x double> %i.w) ; 2 uses
  %i.y = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi246.a, <2 x double> %i.w) ; 2 uses
  %i.z = freeze <2 x double> %strided.vec248      ; 3 uses
  %i.aa = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi245.a, <2 x double> %i.z) ; 2 uses
  %i.ab = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi.a, <2 x double> %i.z) ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ac = fcmp uno <2 x double> %i.z, %i.w
  %i.ad = bitcast <2 x i1> %i.ac to i2
  %i.ae = icmp ne i2 %i.ad, 0                     ; 7 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %i.ah = select i1 %i.ae, <2 x double> %vec.phi.a, <2 x double> %i.ab
  %i.ai = select i1 %i.ae, <2 x double> %vec.phi245.a, <2 x double> %i.aa
  %i.aj = select i1 %i.ae, <2 x double> %vec.phi246.a, <2 x double> %i.y
  %i.ak = select i1 %i.ae, <2 x double> %vec.phi247.a, <2 x double> %i.x
  %i.al = select i1 %i.ae, i64 %index, i64 %n.vec
  %i.am = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.ah)
  %i.an = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %i.ai)
  %i.ao = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %i.aj)
  %i.ap = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %i.ak)
  %cmp.n = icmp ne i64 %i.t, %n.vec
  %.not268 = or i1 %cmp.n, %i.ae
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.an, i64 1 ; 2 uses
  %i.as = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.am, i64 1 ; 2 uses
  br i1 %.not268, label %scalar.ph.preheader, label %._crit_edge.i

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.017.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %middle.block ]
  %.ph = phi <2 x double> [ %i.o, %.lr.ph.i ], [ %i.ar, %middle.block ]
  %.ph271 = phi <2 x double> [ %i.p, %.lr.ph.i ], [ %i.at, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.au = phi <2 x double> [ %i.ar, %middle.block ], [ %i.bf, %scalar.ph ]
  %i.av = phi <2 x double> [ %i.at, %middle.block ], [ %i.bg, %scalar.ph ]
  %i.aw = trunc i64 %i.t to i32
  %i.ax = add i32 %.01326.i, %i.aw
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %.lr.ph28.i
  %.1.lcssa.i = phi i32 [ %i.ax, %._crit_edge.i ], [ %.01326.i, %.lr.ph28.i ] ; 3 uses
  %i.ay = phi <2 x double> [ %i.au, %._crit_edge.i ], [ %i.o, %.lr.ph28.i ] ; 2 uses
  %i.az = phi <2 x double> [ %i.av, %._crit_edge.i ], [ %i.p, %.lr.ph28.i ] ; 2 uses
  %i.ba = add nuw nsw i32 %.01425.i, 1            ; 2 uses
  %exitcond35.not.i = icmp eq i32 %i.ba, %1
  br i1 %exitcond35.not.i, label %bbox.exit, label %.lr.ph28.i, !llvm.loop !67

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017.i = phi i64 [ %i.bh, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bb = phi <2 x double> [ %i.bf, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.bc = phi <2 x double> [ %i.bg, %scalar.ph ], [ %.ph271, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.017.i
  %i.be = load <2 x double>, ptr %i.bd, align 8, !tbaa !32, !noalias !81 ; 2 uses
  %i.bf = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bb, <2 x double> %i.be) ; 2 uses
  %i.bg = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bc, <2 x double> %i.be) ; 2 uses
  %i.bh = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.t
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !68

bbox.exit:                                        ; preds = %bb.g
  %i.bi = fadd <2 x double> %i.ay, splat (double -3.200000e+01) ; 2 uses
  %i.bj = fadd <2 x double> %i.az, splat (double 3.200000e+01) ; 2 uses
  %i.bk = add nsw i32 %.1.lcssa.i, 4              ; 3 uses
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %.not.i93 = icmp eq i32 %i.bk, 0
  br i1 %.not.i93, label %.thread.i101, label %bbox.exit.thread

bbox.exit.thread:                                 ; preds = %bbox.exit
  %mul.ov.i95 = icmp slt i32 %.1.lcssa.i, -4
  br i1 %mul.ov.i95, label %bb.h, label %bbox.exit.thread.thread

bb.h:                                             ; preds = %bbox.exit.thread
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str, i64 noundef %i.bl, i64 noundef 16) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bbox.exit.thread.thread:                          ; preds = %gv_calloc.exit.thread, %gv_calloc.exit, %bbox.exit.thread
  %i.bo = phi i32 [ %i.bk, %bbox.exit.thread ], [ 4, %gv_calloc.exit ], [ 4, %gv_calloc.exit.thread ] ; 3 uses
  %i.bp = phi i64 [ %i.bl, %bbox.exit.thread ], [ 4, %gv_calloc.exit ], [ 4, %gv_calloc.exit.thread ] ; 3 uses
  %i.bq = phi ptr [ %i.j, %bbox.exit.thread ], [ %i.j, %gv_calloc.exit ], [ %i.g, %gv_calloc.exit.thread ]
  %i.br = phi i1 [ true, %bbox.exit.thread ], [ false, %gv_calloc.exit ], [ false, %gv_calloc.exit.thread ]
  %i.bs = phi <2 x double> [ %i.bi, %bbox.exit.thread ], [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit ], [ splat (double f0x7FEFFFFFFFFFFFFF), %gv_calloc.exit.thread ]
  %i.bt = phi <2 x double> [ %i.bj, %bbox.exit.thread ], [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit ], [ splat (double f0xFFEFFFFFFFFFFFFF), %gv_calloc.exit.thread ]
  %i.bu = tail call noalias ptr @calloc(i64 noundef %i.bp, i64 noundef 16) #19 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bbox.exit.thread.thread
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.bx = shl nuw nsw i64 %i.bp, 4
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.1, i64 noundef %i.bx) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

.thread.i101:                                     ; preds = %bbox.exit
  %i.bz = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #19
  %i.ca = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #19
  br label %.preheader

bb.j:                                             ; preds = %bbox.exit.thread.thread
  %i.cb = shl nsw i32 %i.bo, 1
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %mul.ov.i100 = icmp slt i32 %i.bo, 0
  br i1 %mul.ov.i100, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str, i64 noundef %i.cc, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cf = tail call noalias ptr @calloc(i64 noundef %i.cc, i64 noundef 4) #19 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %.preheader

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !28
  %i.ci = shl nuw nsw i64 %i.cc, 2
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.1, i64 noundef %i.ci) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

.lr.ph147.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph147

.preheader:                                       ; preds = %.thread.i101, %bb.l
  %i.ck = phi ptr [ %i.bz, %.thread.i101 ], [ %i.bu, %bb.l ] ; 13 uses
  %i.cl = phi i32 [ 0, %.thread.i101 ], [ %i.bo, %bb.l ] ; 6 uses
  %i.cm = phi i64 [ 0, %.thread.i101 ], [ %i.bp, %bb.l ] ; 4 uses
  %.not.i93129227 = phi i1 [ true, %.thread.i101 ], [ false, %bb.l ]
  %i.cn = phi ptr [ %i.j, %.thread.i101 ], [ %i.bq, %bb.l ] ; 3 uses
  %i.co = phi i1 [ true, %.thread.i101 ], [ %i.br, %bb.l ]
  %i.cp = phi ptr [ %i.ca, %.thread.i101 ], [ %i.cf, %bb.l ] ; 6 uses
  %i.cq = phi <2 x double> [ %i.bi, %.thread.i101 ], [ %i.bs, %bb.l ] ; 3 uses
  %i.cr = phi <2 x double> [ %i.bj, %.thread.i101 ], [ %i.bt, %bb.l ] ; 3 uses
  store <2 x double> %i.cq, ptr %i.ck, align 8, !tbaa !32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ct = extractelement <2 x double> %i.cr, i64 0
  store double %i.ct, ptr %i.cs, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cv = extractelement <2 x double> %i.cq, i64 1
  store double %i.cv, ptr %i.cu, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store <2 x double> %i.cr, ptr %i.cw, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cy = shufflevector <2 x double> %i.cq, <2 x double> %i.cr, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cy, ptr %i.cx, align 8, !tbaa !32
  store <4 x i32> <i32 0, i32 1, i32 1, i32 2>, ptr %i.cp, align 4, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> <i32 2, i32 3, i32 3, i32 0>, ptr %i.cz, align 4, !tbaa !37
  br i1 %i.co, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %._crit_edge
  %indvars.iv166 = phi i64 [ 0, %.lr.ph147.preheader ], [ %indvars.iv.next167, %._crit_edge ] ; 2 uses
  %.2146 = phi i32 [ 8, %.lr.ph147.preheader ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %.084145 = phi i32 [ 4, %.lr.ph147.preheader ], [ %.185.lcssa, %._crit_edge ] ; 4 uses
  %.089143 = phi ptr [ %0, %.lr.ph147.preheader ], [ %i.db, %._crit_edge ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv166
  store i32 %.084145, ptr %i.da, align 4, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %.089143, i64 8
  %i.dc = load ptr, ptr %.089143, align 8, !tbaa !80 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !30 ; 2 uses
  %.not138 = icmp eq i64 %i.de, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph147
  %i.df = sext i32 %.2146 to i64
  %i.dg = sext i32 %.084145 to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.dh = trunc nsw i64 %i.dn to i32
  %i.di = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph147
  %.185.lcssa = phi i32 [ %.084145, %.lr.ph147 ], [ %i.dh, %._crit_edge.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.2146, %.lr.ph147 ], [ %i.di, %._crit_edge.loopexit ]
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge148.loopexit, label %.lr.ph147, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv161 = phi i64 [ %i.dg, %.lr.ph.preheader ], [ %i.dn, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %i.df, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.dj = phi i64 [ %i.de, %.lr.ph.preheader ], [ %i.dw, %.lr.ph ]
  %.0141 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.dv, %.lr.ph ] ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.dl = trunc nsw i64 %indvars.iv161 to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !37
  %i.dm = icmp ult i64 %.0141, %i.dj
  %i.dn = add nsw i64 %indvars.iv161, 1           ; 3 uses
  %i.do = trunc nsw i64 %i.dn to i32
  %.084145.sink = select i1 %i.dm, i32 %i.do, i32 %.084145
  %i.dp = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  store i32 %.084145.sink, ptr %i.dq, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 2 uses
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.ck, i64 %indvars.iv161
  %i.ds = load ptr, ptr %i.dc, align 8, !tbaa !31
  %i.dt = getelementptr [16 x i8], ptr %i.ds, i64 %.0141
  %i.du = getelementptr i8, ptr %i.dt, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !38
  %i.dv = add i64 %.0141, 1                       ; 2 uses
  %i.dw = load i64, ptr %i.dd, align 8, !tbaa !30 ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.dw
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !70

._crit_edge148.loopexit:                          ; preds = %._crit_edge
  %i.dx = zext nneg i32 %1 to i64
  br label %._crit_edge148

._crit_edge148:                                   ; preds = %.preheader, %._crit_edge148.loopexit
  %.187.lcssa = phi i64 [ %i.dx, %._crit_edge148.loopexit ], [ 0, %.preheader ]
end_hunk_0
