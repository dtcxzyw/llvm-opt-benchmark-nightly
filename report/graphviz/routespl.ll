Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/routespl?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cycles_t = type { %union.anon.0, ptr, ptr }
%union.anon.0 = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.Ppoly_t = type { ptr, i64 }
%struct.pointf_s = type { double, double }
%struct.nodes_t = type { %union.anon.1, ptr, ptr }
%union.anon.1 = type { %struct.list_t_ }

@.str = private unnamed_addr constant [20 x i8] c"cannot allocate ps\0A\00", align 1
@routeinit = internal unnamed_addr global i32 0, align 4
@nedges = internal unnamed_addr global i32 0, align 4
@nboxes = internal unnamed_addr global i64 0, align 8
@Verbose = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/graphviz/graphviz/lib/common/routespl.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"[Graphviz] %s:%d: %04d-%02d-%02d %02d:%02d:%02d \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"routesplines: %d edges, %zu boxes %.2f sec\00", align 1
@Concentrate = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"in routesplines, cannot find NORMAL edge\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"in routesplines, illegal values of prev %d and next %d, line %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"in routesplines, edge is a loop at %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"in routesplines, Pshortestpath failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"in routesplines, Proutespline failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"spline [%.03f, %.03f] -- [%.03f, %.03f] is horizontal; will be trivially bounded\00", align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"spline [%.03f, %.03f] -- [%.03f, %.03f] is vertical; will be trivially bounded\00", align 1
@.str.14 = private unnamed_addr constant [109 x i8] c"Unable to reclaim box space in spline routing for edge \22%s\22 -> \22%s\22. Something is probably seriously wrong.\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"in checkpath, box 0 has LL coord > UR coord\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"in checkpath, box %zu has LL coord > UR coord\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"in checkpath, boxes %zu and %zu don't touch\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"%zu boxes:\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"%zu (%.5g, %.5g), (%.5g, %.5g)\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"start port: (%.5g, %.5g), tangent angle: %.5g, %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"constrained\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"not constrained\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"end port: (%.5g, %.5g), tangent angle: %.5g, %s\0A\00", align 1
@__const.find_all_cycles.cycles = private unnamed_addr constant %struct.cycles_t { %union.anon.0 zeroinitializer, ptr @nodes_delete, ptr null }, align 8

; Function Attrs: nounwind uwtable
define noundef ptr @simpleSplineRoute(double %0, double %1, double %2, double %3, ptr %4, i64 %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.Ppoly_t, align 8            ; 4 uses
  %9 = alloca %struct.Ppoly_t, align 8            ; 7 uses
  %10 = alloca %struct.Ppoly_t, align 8           ; 6 uses
  %11 = alloca [2 x %struct.pointf_s], align 16   ; 7 uses
  %12 = alloca [2 x %struct.pointf_s], align 8    ; 2 uses
  store ptr %4, ptr %8, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store double %0, ptr %11, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %1, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %2, ptr %i.c, align 16, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %3, ptr %i.d, align 8, !tbaa !11
  %i.e = call i32 @Pshortestpath(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %9) #17
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %9, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = load i64, ptr %i.h, align 8
  call void @make_polyline(ptr %i.g, i64 %i.i, ptr noundef nonnull %10) #17
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !16   ; 10 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %gv_calloc.exit.thread, label %bb.e

gv_calloc.exit.thread:                            ; preds = %bb.d
  %i.k = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #18
  br label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %mul.ov.i = icmp ugt i64 %i.j, 576460752303423487
  br i1 %mul.ov.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.5, i64 noundef %i.j, i64 noundef 32) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 32) #18 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.q = shl nuw i64 %i.j, 5
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.6, i64 noundef %i.q) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %8, align 8, !tbaa !19     ; 8 uses
  %.not39 = icmp eq i64 %i.j, 1
  br i1 %.not39, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.t = add nsw i64 %i.j, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i64 %i.j, 2
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %i.t, -2
  br label %bb.i

._crit_edge.loopexit.peel.begin.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.peel.begin, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.peel.begin.loopexit.unr-lcssa, %.lr.ph.split
  %.02329.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %i.aw, %._crit_edge.loopexit.peel.begin.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod41 = trunc i64 %i.t to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.02329.epil.init ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.02329.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = add nuw i64 %.02329.epil.init, 1         ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !21
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %.epil.preheader, %._crit_edge.loopexit.peel.begin.loopexit.unr-lcssa, %.lr.ph
  %i.aa = phi i64 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.peel.begin.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.j
  %i.ag = select i1 %i.af, i64 0, i64 %i.ae
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %gv_calloc.exit.thread, %._crit_edge.loopexit.peel.begin
  %i.ai = phi ptr [ %i.k, %gv_calloc.exit.thread ], [ %i.n, %._crit_edge.loopexit.peel.begin ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.aj = load ptr, ptr %9, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = call i32 @Proutespline(ptr noundef %i.ai, i64 noundef %i.j, ptr %i.aj, i64 %i.al, ptr noundef nonnull %12, ptr noundef nonnull %10) #17
  %i.an = icmp sgt i32 %i.am, -1
  call void @free(ptr noundef %i.ai) #17
  br i1 %i.an, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.i, %.lr.ph.split.new
  %.02329 = phi i64 [ 0, %.lr.ph.split.new ], [ %i.aw, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.1, %bb.i ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.02329 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.02329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = or disjoint i64 %.02329, 1              ; 3 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !21
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ar ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !21
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = add nuw i64 %.02329, 2                  ; 4 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !21
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.peel.begin.loopexit.unr-lcssa, label %bb.i, !llvm.loop !78

bb.j:                                             ; preds = %._crit_edge, %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16 ; 4 uses
  %i.ba = call noalias ptr @calloc(i64 noundef %i.az, i64 noundef 16) #18 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %.not34 = icmp eq i64 %i.az, 0
  br i1 %.not34, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %.preheader
  %i.bc = load ptr, ptr %10, align 8, !tbaa !19
  %i.bd = shl nuw i64 %i.az, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bc, i64 %i.bd, i1 false)
  br label %._crit_edge32

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str) #17
  br label %bb.l

._crit_edge32:                                    ; preds = %.lr.ph31, %.preheader
  store i64 %i.az, ptr %6, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge32, %bb.a, %._crit_edge
  %.2 = phi ptr [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.k ], [ %i.ba, %._crit_edge32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @Pshortestpath(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @make_polyline(ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc noundef ptr @gv_calloc(i64 noundef %0, i64 noundef range(i64 8, 49) %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.a = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef %1) #18
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.5, i64 noundef %0, i64 noundef %1) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #18 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.g = mul i64 %1, %0
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.6, i64 noundef %i.g) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.f:                                             ; preds = %.thread, %bb.d
  %i.i = phi ptr [ %i.a, %.thread ], [ %i.d, %bb.d ]
  ret ptr %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @Proutespline(ptr noundef, i64 noundef, ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @routesplinesinit() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @routeinit, align 4, !tbaa !25 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @routeinit, align 4, !tbaa !25
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr @nedges, align 4, !tbaa !25
  store i64 0, ptr @nboxes, align 8, !tbaa !24
  %i.d = load i8, ptr @Verbose, align 1, !tbaa !26
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @start_timer() #17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

declare void @start_timer() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @routesplinesterm() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i32, ptr @routeinit, align 4, !tbaa !25 ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr @routeinit, align 4, !tbaa !25
  %i.d = icmp slt i32 %i.b, 2
  %i.e = load i8, ptr @Verbose, align 1
  %i.f = icmp ne i8 %i.e, 0
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @flockfile(ptr noundef %i.g) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = tail call i64 @time(ptr noundef null) #17
  store i64 %i.h, ptr %i.a, align 8, !tbaa !24
  %i.i = call ptr @localtime(ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = add nsw i32 %i.l, 1900
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = add nsw i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  %i.w = load i32, ptr %i.i, align 8, !tbaa !34
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 45), i32 noundef 235, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.w) #19 ; 0 uses
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.z = load i32, ptr @nedges, align 4, !tbaa !25
  %i.aa = load i64, ptr @nboxes, align 8, !tbaa !24
  %i.ab = call double @elapsed_sec() #17
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.3, i32 noundef %i.z, i64 noundef %i.aa, double noundef %i.ab) #19 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc = call i32 @fputc(i32 10, ptr %i.ad)     ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @funlockfile(ptr noundef %i.ae) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare double @elapsed_sec() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @routesplines(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @routesplines_(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @routesplines_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Ppoly_t, align 8            ; 5 uses
  %4 = alloca %struct.Ppoly_t, align 8            ; 9 uses
  %5 = alloca %struct.Ppoly_t, align 8            ; 6 uses
  %6 = alloca [2 x %struct.pointf_s], align 16    ; 5 uses
  %7 = alloca [2 x %struct.pointf_s], align 16    ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.Ppoly_t, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i64 0, ptr %1, align 8, !tbaa !24
  %i.c = load i32, ptr @nedges, align 4, !tbaa !25
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @nedges, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 28 uses
  %i.g = load i64, ptr @nboxes, align 8, !tbaa !24
  %i.h = add i64 %i.g, %i.f
  store i64 %i.h, ptr @nboxes, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.0396451 = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %.not452 = icmp eq ptr %.0396451, null
  br i1 %.not452, label %.critedge417, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %.0396 = load ptr, ptr %i.j, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %.0396, null
  br i1 %.not, label %.critedge417, label %.lr.ph, !llvm.loop !79

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0396453 = phi ptr [ %.0396, %bb.b ], [ %.0396451, %bb.a ] ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0396453, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load i8, ptr %i.m, align 8, !tbaa !98
  %.not407 = icmp eq i8 %i.n, 0
  br i1 %.not407, label %.critedge, label %bb.b

.critedge417:                                     ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.7) #17
  br label %.critedge419

.critedge:                                        ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 44 uses
  %.not254.i = icmp eq i64 %i.f, 0                ; 4 uses
  br i1 %.not254.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %.critedge
  %.0204.lcssa.i = phi i64 [ 0, %.critedge ], [ %.1.i, %bb.e ] ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !52 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !53 ; 3 uses
  %i.t = fcmp ogt double %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.f

.lr.ph.i:                                         ; preds = %.critedge, %bb.e
  %.0203244.i = phi i64 [ %i.ak, %bb.e ], [ 0, %.critedge ] ; 2 uses
  %.0204243.i = phi i64 [ %.1.i, %bb.e ], [ 0, %.critedge ] ; 4 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0203244.i ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !55
  %i.z = fsub double %i.w, %i.y
  %i.aa = tail call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp olt double %i.aa, 1.000000e-02
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ad = load double, ptr %i.u, align 8, !tbaa !52
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !53
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp olt double %i.ag, 1.000000e-02
  br i1 %i.ah, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0204243.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !tbaa.struct !99
  %i.aj = add i64 %.0204243.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.1.i = phi i64 [ %.0204243.i, %.lr.ph.i ], [ %.0204243.i, %bb.c ], [ %i.aj, %bb.d ] ; 2 uses
  %i.ak = add nuw i64 %.0203244.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !80

bb.f:                                             ; preds = %._crit_edge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 6 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %i.ap = fcmp ogt double %i.am, %i.ao
  br i1 %i.ap, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not251.i = icmp ugt i64 %.0204.lcssa.i, 1
  br i1 %.not251.i, label %.lr.ph253.i, label %.critedge.i

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.15) #17
  tail call fastcc void @printpath(ptr noundef %0)
  br label %.critedge419

.lr.ph253.i:                                      ; preds = %.preheader.i, %overlap.exit239.thread.i
  %i.aq = phi double [ %i.ff, %overlap.exit239.thread.i ], [ %i.am, %.preheader.i ]
  %i.ar = phi double [ %i.fg, %overlap.exit239.thread.i ], [ %i.ao, %.preheader.i ]
  %i.as = phi double [ %i.fh, %overlap.exit239.thread.i ], [ %i.q, %.preheader.i ]
  %i.at = phi double [ %i.fi, %overlap.exit239.thread.i ], [ %i.s, %.preheader.i ]
  %i.au = phi i64 [ %i.fj, %overlap.exit239.thread.i ], [ 1, %.preheader.i ] ; 5 uses
  %.0201252.i = phi i64 [ %i.au, %overlap.exit239.thread.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0201252.i ; 9 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.au ; 8 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 7 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !53 ; 2 uses
  %i.ba = fcmp ogt double %i.ax, %i.az
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph253.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 9 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !54 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 11 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !55 ; 2 uses
  %i.bf = fcmp ogt double %i.bc, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.lr.ph253.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.16, i64 noundef %i.au) #17
  tail call fastcc void @printpath(ptr noundef %0)
  br label %.critedge419

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 4 uses
  %i.bh = fcmp olt double %i.at, %i.ax            ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  %i.bj = fcmp ogt double %i.as, %i.az            ; 3 uses
  %i.bk = zext i1 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 8 uses
  %i.bm = fcmp olt double %i.ar, %i.bc            ; 2 uses
  %i.bn = zext i1 %i.bm to i32                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 10 uses
  %i.bp = fcmp ogt double %i.aq, %i.be            ; 2 uses
  %i.bq = zext i1 %i.bp to i32                    ; 4 uses
  %i.br = add nuw nsw i32 %i.bk, %i.bi
  %i.bs = add nuw nsw i32 %i.br, %i.bn
  %i.bt = add nuw nsw i32 %i.bs, %i.bq            ; 3 uses
  %i.bu = icmp ne i32 %i.bt, 0                    ; 2 uses
  %i.bv = load i8, ptr @Verbose, align 1
  %i.bw = icmp ne i8 %i.bv, 0
  %or.cond.i = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond.i, label %.thread.i, label %bb.k

.thread.i:                                        ; preds = %bb.j
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.17, i64 noundef %.0201252.i, i64 noundef %i.au) #19 ; 0 uses
  tail call fastcc void @printpath(ptr noundef %0)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.bu, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %bb.k, %.thread.i
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = load double, ptr %i.bg, align 8, !tbaa !53
  %i.ca = load double, ptr %i.aw, align 8, !tbaa !52
  store double %i.ca, ptr %i.bg, align 8, !tbaa !53
  store double %i.bz, ptr %i.aw, align 8, !tbaa !52
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = load double, ptr %i.av, align 8, !tbaa !52
  %i.cc = load double, ptr %i.ay, align 8, !tbaa !53
  store double %i.cc, ptr %i.av, align 8, !tbaa !52
  store double %i.cb, ptr %i.ay, align 8, !tbaa !53
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !55
  %i.ce = load double, ptr %i.bb, align 8, !tbaa !54
  store double %i.ce, ptr %i.bl, align 8, !tbaa !55
  store double %i.cd, ptr %i.bb, align 8, !tbaa !54
  br label %bb.t

bb.r:                                             ; preds = %bb.p
end_hunk_0
begin_hunk_1_@routesplines_:bb.a
  br label %overlap.exit239.i

overlap.exit239.i:                                ; preds = %bb.at, %bb.as, %bb.aq, %bb.ao
  %.0.i235.i = phi double [ %i.et, %bb.at ], [ %i.es, %bb.as ], [ %i.en, %bb.ao ], [ %i.eq, %bb.aq ] ; 2 uses
  %i.eu = fcmp ogt double %.0.i.i, 0.000000e+00
  %i.ev = fcmp ogt double %.0.i235.i, 0.000000e+00
  %or.cond4.i = and i1 %i.eu, %i.ev
  br i1 %or.cond4.i, label %bb.au, label %overlap.exit239.thread.i

bb.au:                                            ; preds = %overlap.exit239.i
  %i.ew = fcmp olt double %.0.i.i, %.0.i235.i
  br i1 %i.ew, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.ex = fsub double %i.dr, %i.dq
  %i.ey = fsub double %i.dt, %i.ds
  %i.ez = fcmp ogt double %i.ex, %i.ey
  %i.fa = fcmp olt double %i.dr, %i.dt            ; 2 uses
  br i1 %i.ez, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  br i1 %i.fa, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store double %i.ds, ptr %i.bg, align 8, !tbaa !53
  br label %overlap.exit239.thread.i

bb.ay:                                            ; preds = %bb.aw
  store double %i.dt, ptr %i.av, align 8, !tbaa !52
  br label %overlap.exit239.thread.i

bb.az:                                            ; preds = %bb.av
  br i1 %i.fa, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store double %i.dr, ptr %i.aw, align 8, !tbaa !52
  br label %overlap.exit239.thread.i

bb.bb:                                            ; preds = %bb.az
  store double %i.dq, ptr %i.ay, align 8, !tbaa !53
  br label %overlap.exit239.thread.i

bb.bc:                                            ; preds = %bb.au
  %i.fb = fsub double %i.eg, %i.ef
  %i.fc = fsub double %i.ei, %i.eh
  %i.fd = fcmp ogt double %i.fb, %i.fc
  %i.fe = fcmp olt double %i.eg, %i.ei            ; 2 uses
  br i1 %i.fd, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.fe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store double %i.eh, ptr %i.bl, align 8, !tbaa !55
  br label %overlap.exit239.thread.i

bb.bf:                                            ; preds = %bb.bd
  store double %i.ei, ptr %i.bo, align 8, !tbaa !54
  br label %overlap.exit239.thread.i

bb.bg:                                            ; preds = %bb.bc
  br i1 %i.fe, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.eg, ptr %i.bb, align 8, !tbaa !54
  br label %overlap.exit239.thread.i

bb.bi:                                            ; preds = %bb.bg
  store double %i.ef, ptr %i.bd, align 8, !tbaa !55
  br label %overlap.exit239.thread.i

overlap.exit239.thread.i:                         ; preds = %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %overlap.exit239.i, %overlap.exit.i
  %i.ff = phi double [ %i.eh, %overlap.exit.i ], [ %i.eh, %bb.ba ], [ %i.eh, %bb.bb ], [ %i.eh, %bb.ax ], [ %i.eh, %bb.ay ], [ %i.eg, %bb.bh ], [ %i.eh, %bb.bi ], [ %i.eh, %bb.be ], [ %i.eh, %bb.bf ], [ %i.eh, %overlap.exit239.i ]
  %i.fg = phi double [ %i.ei, %overlap.exit.i ], [ %i.ei, %bb.ba ], [ %i.ei, %bb.bb ], [ %i.ei, %bb.ax ], [ %i.ei, %bb.ay ], [ %i.ei, %bb.bh ], [ %i.ef, %bb.bi ], [ %i.ei, %bb.be ], [ %i.ei, %bb.bf ], [ %i.ei, %overlap.exit239.i ]
  %i.fh = phi double [ %i.ds, %overlap.exit.i ], [ %i.dr, %bb.ba ], [ %i.ds, %bb.bb ], [ %i.ds, %bb.ax ], [ %i.ds, %bb.ay ], [ %i.ds, %bb.bh ], [ %i.ds, %bb.bi ], [ %i.ds, %bb.be ], [ %i.ds, %bb.bf ], [ %i.ds, %overlap.exit239.i ]
  %i.fi = phi double [ %i.dt, %overlap.exit.i ], [ %i.dt, %bb.ba ], [ %i.dq, %bb.bb ], [ %i.dt, %bb.ax ], [ %i.dt, %bb.ay ], [ %i.dt, %bb.bh ], [ %i.dt, %bb.bi ], [ %i.dt, %bb.be ], [ %i.dt, %bb.bf ], [ %i.dt, %overlap.exit239.i ]
  %i.fj = add nuw i64 %i.au, 1                    ; 2 uses
  %exitcond258.not.i = icmp eq i64 %i.fj, %.0204.lcssa.i
  br i1 %exitcond258.not.i, label %.critedge.loopexit.i, label %.lr.ph253.i, !llvm.loop !82

.critedge.loopexit.i:                             ; preds = %overlap.exit239.thread.i
  %.pre.i = load double, ptr %i.p, align 8, !tbaa !52
  %.pre259.pre.i = load double, ptr %i.r, align 8, !tbaa !53
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.fk = phi double [ %.pre259.pre.i, %.critedge.loopexit.i ], [ %i.s, %.preheader.i ] ; 3 uses
  %i.fl = phi double [ %.pre.i, %.critedge.loopexit.i ], [ %i.q, %.preheader.i ] ; 4 uses
  %i.fm = load double, ptr %0, align 8, !tbaa !56 ; 4 uses
  %i.fn = fcmp olt double %i.fm, %i.fl
  br i1 %i.fn, label %.critedge._crit_edge.i, label %bb.bj

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre260.i = load double, ptr %i.al, align 8, !tbaa !54
  br label %bb.bm

bb.bj:                                            ; preds = %.critedge.i
  %i.fo = fcmp ogt double %i.fm, %i.fk
  %.pre261.i = load double, ptr %i.al, align 8, !tbaa !54 ; 5 uses
  br i1 %i.fo, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !57 ; 3 uses
  %i.fr = fcmp olt double %i.fq, %.pre261.i
  br i1 %i.fr, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load double, ptr %i.an, align 8, !tbaa !55
  %i.ft = fcmp ogt double %i.fq, %i.fs
  %i.fu = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 1
  br i1 %i.ft, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %.critedge._crit_edge.i
  %i.fw = phi double [ %.pre260.i, %.critedge._crit_edge.i ], [ %.pre261.i, %bb.bl ], [ %.pre261.i, %bb.bk ], [ %.pre261.i, %bb.bj ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !57
  %i.fz = load double, ptr %i.an, align 8, !tbaa !55
  %i.ga = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fy, i64 1
  %i.gc = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.fw, i64 1
  %i.ge = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gb, <2 x double> %i.gd)
  %i.gf = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.fz, i64 1
  %i.gh = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ge, <2 x double> %i.gg) ; 2 uses
  store <2 x double> %i.gh, ptr %0, align 8, !tbaa !20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.gi = phi double [ %i.fw, %bb.bm ], [ %.pre261.i, %bb.bl ]
  %i.gj = phi <2 x double> [ %i.gh, %bb.bm ], [ %i.fv, %bb.bl ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gl = getelementptr [32 x i8], ptr %i.p, i64 %.0204.lcssa.i ; 4 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 -32
  %.phi.trans.insert.i = getelementptr i8, ptr %i.gl, i64 -16
  %.pre263.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !53 ; 2 uses
  %i.gn = load <2 x double>, ptr %i.gk, align 8, !tbaa !20 ; 4 uses
  %i.go = load <2 x double>, ptr %i.gm, align 8, !tbaa !20 ; 3 uses
  %i.gp = extractelement <2 x double> %i.gn, i64 0 ; 2 uses
  %i.gq = extractelement <2 x double> %i.go, i64 0
  %i.gr = fcmp olt double %i.gp, %i.gq
  %i.gs = fcmp ogt double %i.gp, %.pre263.i
  %or.cond294.i = select i1 %i.gr, i1 true, i1 %i.gs
  %i.gt = extractelement <2 x double> %i.gn, i64 1 ; 2 uses
  %i.gu = extractelement <2 x double> %i.go, i64 1
  %i.gv = fcmp olt double %i.gt, %i.gu
  %or.cond630 = select i1 %or.cond294.i, i1 true, i1 %i.gv
  br i1 %or.cond630, label %._crit_edge262.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gw = getelementptr i8, ptr %i.gl, i64 -8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !55
  %i.gy = fcmp ogt double %i.gt, %i.gx
  br i1 %i.gy, label %._crit_edge262.i, label %bb.bp

._crit_edge262.i:                                 ; preds = %bb.bn, %bb.bo
  %i.gz = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.gn, <2 x double> %i.go)
  %i.ha = getelementptr i8, ptr %i.gl, i64 -8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !55
  %i.hc = insertelement <2 x double> poison, double %.pre263.i, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.hb, i64 1
  %i.he = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.gz, <2 x double> %i.hd) ; 2 uses
  store <2 x double> %i.he, ptr %i.gk, align 8, !tbaa !20
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge262.i, %bb.bo
  %i.hf = phi <2 x double> [ %i.he, %._crit_edge262.i ], [ %i.gn, %bb.bo ]
  %i.hg = shl i64 %i.f, 3                         ; 4 uses
  %.not.i420 = icmp eq i64 %i.hg, 0
  br i1 %.not.i420, label %.thread.i421, label %bb.bq

.thread.i421:                                     ; preds = %bb.bp
  %i.hh = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #18
  br label %gv_calloc.exit

bb.bq:                                            ; preds = %bb.bp
  %mul.ov.i = icmp ugt i64 %i.hg, 1152921504606846975
  br i1 %mul.ov.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.5, i64 noundef %i.hg, i64 noundef 16) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.hk = tail call noalias ptr @calloc(i64 noundef %i.hg, i64 noundef 16) #18 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.bt, label %gv_calloc.exit

bb.bt:                                            ; preds = %bb.bs
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hn = shl i64 %i.f, 7
  %i.ho = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.6, i64 noundef %i.hn) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i421, %bb.bs
  %i.hp = phi ptr [ %i.hh, %.thread.i421 ], [ %i.hk, %bb.bs ] ; 26 uses
  %i.hq = icmp ugt i64 %i.f, 1                    ; 2 uses
  br i1 %i.hq, label %bb.bu, label %.loopexit443

bb.bu:                                            ; preds = %gv_calloc.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !54
  %i.ht = fcmp ogt double %i.gi, %i.hs
  br i1 %i.ht, label %.preheader442.preheader, label %.loopexit443

.preheader442.preheader:                          ; preds = %bb.bu
  %xtraiter = and i64 %i.f, 1
  %unroll_iter = and i64 %i.f, -2
  br label %.preheader442

.preheader442:                                    ; preds = %.preheader442, %.preheader442.preheader
  %.0388454 = phi i64 [ 0, %.preheader442.preheader ], [ %i.ii, %.preheader442 ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader442.preheader ], [ %niter.next.1, %.preheader442 ]
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0388454 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !55
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !54
  %i.hz = fneg double %i.hy
  store double %i.hz, ptr %i.hv, align 8, !tbaa !55
  %i.ia = fneg double %i.hw
  store double %i.ia, ptr %i.hx, align 8, !tbaa !54
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0388454 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 56 ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !55
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 40 ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !54
  %i.ig = fneg double %i.if
  store double %i.ig, ptr %i.ic, align 8, !tbaa !55
  %i.ih = fneg double %i.id
  store double %i.ih, ptr %i.ie, align 8, !tbaa !54
  %i.ii = add nuw i64 %.0388454, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit443.loopexit.unr-lcssa, label %.preheader442, !llvm.loop !83

.loopexit443.loopexit.unr-lcssa:                  ; preds = %.preheader442
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit443, label %.preheader442.epil.preheader

.preheader442.epil.preheader:                     ; preds = %.loopexit443.loopexit.unr-lcssa
  %lcmp.mod679 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod679)
  %i.ij = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !55
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !54
  %i.io = fneg double %i.in
  store double %i.io, ptr %i.ik, align 8, !tbaa !55
  %i.ip = fneg double %i.il
  store double %i.ip, ptr %i.im, align 8, !tbaa !54
  br label %.loopexit443

.loopexit443:                                     ; preds = %.preheader442.epil.preheader, %.loopexit443.loopexit.unr-lcssa, %gv_calloc.exit, %bb.bu
  %.0395 = phi i1 [ false, %gv_calloc.exit ], [ false, %bb.bu ], [ true, %.loopexit443.loopexit.unr-lcssa ], [ true, %.preheader442.epil.preheader ]
  %i.iq = load i32, ptr %.0396453, align 8
  %i.ir = and i32 %i.iq, 3                        ; 2 uses
  %i.is = icmp eq i32 %i.ir, 3
  %i.it = getelementptr inbounds nuw i8, ptr %.0396453, i64 64 ; 2 uses
  %i.iu = select i1 %i.is, ptr %.0396453, ptr %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !62
  %i.ix = icmp eq i32 %i.ir, 2
  %i.iy = getelementptr inbounds i8, ptr %.0396453, i64 -64 ; 3 uses
  %i.iz = select i1 %i.ix, ptr %.0396453, ptr %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !62
  %.not409 = icmp eq ptr %i.iw, %i.jb
  br i1 %.not409, label %bb.ck, label %.preheader441

.preheader441:                                    ; preds = %.loopexit443
  br i1 %.not254.i, label %._crit_edge472, label %.lr.ph457.preheader

.lr.ph457.preheader:                              ; preds = %.preheader441
  %i.jc = getelementptr i8, ptr %i.hp, i64 16     ; 2 uses
  br i1 %i.hq, label %.lr.ph457.peel.next.sink.split, label %.thread581

.lr.ph457.peel.next.sink.split:                   ; preds = %.lr.ph457.preheader
  %i.jd = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.je = load double, ptr %i.jd, align 8, !tbaa !54
  %i.jf = load double, ptr %i.al, align 8, !tbaa !54
  %i.jg = fcmp ogt double %i.je, %i.jf            ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %. = select i1 %i.jg, double %i.fk, double %i.fl
  %.663.a = select i1 %i.jg, ptr %i.al, ptr %i.an
  %.664.a = select i1 %i.jg, ptr %i.r, ptr %i.p
  %.665 = select i1 %i.jg, ptr %i.an, ptr %i.al
  store double %., ptr %i.hp, align 8, !tbaa !10
  %storemerge661 = load double, ptr %.663.a, align 8, !tbaa !20
  store double %storemerge661, ptr %i.jh, align 8, !tbaa !11
  %storemerge = load double, ptr %.664.a, align 8, !tbaa !20
  store double %storemerge, ptr %i.jc, align 8, !tbaa !10
  %.sink = load double, ptr %.665, align 8, !tbaa !20
  %i.ji = getelementptr i8, ptr %i.hp, i64 24
  store double %.sink, ptr %i.ji, align 8, !tbaa !11
  br label %.lr.ph457.peel.next.preheader

.thread581:                                       ; preds = %.lr.ph457.preheader
  store double %i.fl, ptr %i.hp, align 8, !tbaa !10
  %i.jj = load double, ptr %i.an, align 8, !tbaa !55
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store double %i.jj, ptr %i.jk, align 8, !tbaa !11
  %i.jl = load <2 x double>, ptr %i.p, align 8, !tbaa !20
  store <2 x double> %i.jl, ptr %i.jc, align 8, !tbaa !20
  %exitcond522.peel.not = icmp eq i64 %i.f, 1
  br i1 %exitcond522.peel.not, label %.lr.ph463.preheader, label %.lr.ph457.peel.next.preheader

.lr.ph457.peel.next.preheader:                    ; preds = %.lr.ph457.peel.next.sink.split, %.thread581
  br label %.lr.ph457.peel.next

.lr.ph457.peel.next:                              ; preds = %.lr.ph457.peel.next.preheader, %bb.bx
  %.0381456 = phi i64 [ %i.js, %bb.bx ], [ 1, %.lr.ph457.peel.next.preheader ] ; 4 uses
  %.0383455 = phi i64 [ %.1384, %bb.bx ], [ 2, %.lr.ph457.peel.next.preheader ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0381456 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !54
  %i.jp = getelementptr i8, ptr %i.jm, i64 -24
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !54
  %i.jr = fcmp ule double %i.jo, %i.jq            ; 3 uses
  %i.js = add nuw i64 %.0381456, 1                ; 4 uses
  %i.jt = icmp ult i64 %i.js, %i.f
  br i1 %i.jt, label %bb.bv, label %.thread588

bb.bv:                                            ; preds = %.lr.ph457.peel.next
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.js
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !54
  %i.jx = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0381456
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !54
  %i.ka = fcmp ogt double %i.jw, %i.jz            ; 2 uses
  %i.kb = select i1 %i.ka, i32 1, i32 -1
  %i.kc = xor i1 %i.jr, %i.ka
  br i1 %i.kc, label %.thread588, label %bb.bw

.thread588:                                       ; preds = %.lr.ph457.peel.next, %bb.bv
  %.0378591 = phi i32 [ %i.kb, %bb.bv ], [ 0, %.lr.ph457.peel.next ]
  %i.kd = icmp eq i32 %.0378591, -1
  %or.cond = select i1 %i.kd, i1 true, i1 %i.jr   ; 3 uses
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0381456 ; 3 uses
  %.sink645.in.idx = select i1 %or.cond, i64 0, i64 16
  %.sink645.in = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sink645.in.idx
  %.sink644 = select i1 %or.cond, i64 24, i64 8
  %.sink636 = select i1 %or.cond, i64 8, i64 24
  %.sink645 = load double, ptr %.sink645.in, align 8, !tbaa !20 ; 2 uses
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0383455 ; 4 uses
  store double %.sink645, ptr %i.kf, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sink644
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store double %i.kh, ptr %i.ki, align 8, !tbaa !11
  %i.kj = getelementptr i8, ptr %i.kf, i64 16
  store double %.sink645, ptr %i.kj, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 %.sink636
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !20
  %i.km = add i64 %.0383455, 2
  %i.kn = getelementptr i8, ptr %i.kf, i64 24
  store double %i.kl, ptr %i.kn, align 8, !tbaa !11
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.jr, label %.loopexit524, label %bb.bx

.loopexit524:                                     ; preds = %bb.bw
  tail call void @free(ptr noundef %i.hp) #17
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef 1, i32 noundef 378) #17
  br label %.critedge419

bb.bx:                                            ; preds = %.thread588, %bb.bw
  %.1384 = phi i64 [ %.0383455, %bb.bw ], [ %i.km, %.thread588 ] ; 2 uses
  %exitcond522.not = icmp eq i64 %i.js, %i.f
  br i1 %exitcond522.not, label %.lr.ph463.preheader, label %.lr.ph457.peel.next, !llvm.loop !84

.lr.ph463.preheader:                              ; preds = %bb.bx, %.thread581
  %.2385460.ph = phi i64 [ 2, %.thread581 ], [ %.1384, %bb.bx ]
  br label %.lr.ph463

.lr.ph463:                                        ; preds = %.lr.ph463.preheader, %bb.cj
  %.1382.in461 = phi i64 [ %.1382462, %bb.cj ], [ %i.f, %.lr.ph463.preheader ] ; 4 uses
  %.2385460 = phi i64 [ %.3386, %bb.cj ], [ %.2385460.ph, %.lr.ph463.preheader ] ; 8 uses
  %.1382462 = add i64 %.1382.in461, -1            ; 7 uses
  %i.ko = icmp ult i64 %.1382.in461, %i.f
  br i1 %i.ko, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph463
  %i.kp = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !54
  %i.ks = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382.in461
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !54
  %i.kv = fcmp ogt double %i.kr, %i.ku
  %i.kw = select i1 %i.kv, i32 -1, i32 1
  br label %bb.bz

end_hunk_1
begin_hunk_2_@routesplines_:bb.a
  br label %.critedge419

bb.ci:                                            ; preds = %bb.cf
  %i.ml = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.1382462 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.2385460 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mq = load double, ptr %i.mm, align 8, !tbaa !53
  %i.mr = load <2 x double>, ptr %i.mo, align 8, !tbaa !20
  store double %i.mq, ptr %i.mn, align 8, !tbaa !10
  store <2 x double> %i.mr, ptr %i.mp, align 8, !tbaa !20
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ml, i64 24
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !55 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mn, i64 24
  store double %i.mt, ptr %i.mu, align 8, !tbaa !11
  %i.mv = getelementptr i8, ptr %i.mn, i64 32
  %i.mw = getelementptr i8, ptr %i.mn, i64 40
  store double %i.mt, ptr %i.mw, align 8, !tbaa !11
  %i.mx = getelementptr i8, ptr %i.mn, i64 48
  %i.my = add i64 %.2385460, 4
  %i.mz = load <2 x double>, ptr %i.ml, align 8, !tbaa !20 ; 2 uses
  %i.na = extractelement <2 x double> %i.mz, i64 0
  store double %i.na, ptr %i.mv, align 8, !tbaa !10
  store <2 x double> %i.mz, ptr %i.mx, align 8, !tbaa !20
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ce, %bb.cd, %bb.ci, %bb.cg
  %.3386 = phi i64 [ %i.ln, %bb.cd ], [ %i.ly, %bb.ce ], [ %i.mj, %bb.cg ], [ %i.my, %bb.ci ] ; 8 uses
  br i1 %.not411, label %._crit_edge, label %.lr.ph463, !llvm.loop !85

bb.ck:                                            ; preds = %.loopexit443
  tail call void @free(ptr noundef %i.hp) #17
  %i.nb = load i32, ptr %.0396453, align 8
  %i.nc = and i32 %i.nb, 3
  %i.nd = icmp eq i32 %i.nc, 2
  %i.ne = select i1 %i.nd, ptr %.0396453, ptr %i.iy
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 56
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !62
  %i.nh = tail call ptr @agnameof(ptr noundef %i.ng) #17
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.9, ptr noundef %i.nh) #17
  br label %.critedge419

._crit_edge:                                      ; preds = %bb.cj
  br i1 %.0395, label %.lr.ph466.preheader, label %.loopexit438

.lr.ph466.preheader:                              ; preds = %._crit_edge
  %xtraiter680 = and i64 %i.f, 1
  %i.ni = icmp eq i64 %i.f, 1
  br i1 %i.ni, label %.lr.ph466.epil.preheader, label %.lr.ph466.preheader.new

.lr.ph466.preheader.new:                          ; preds = %.lr.ph466.preheader
  %unroll_iter683 = and i64 %i.f, -2
  br label %.lr.ph466

.preheader437.unr-lcssa:                          ; preds = %.lr.ph466
  %lcmp.mod681.not = icmp eq i64 %xtraiter680, 0
  br i1 %lcmp.mod681.not, label %.preheader437, label %.lr.ph466.epil.preheader

.lr.ph466.epil.preheader:                         ; preds = %.preheader437.unr-lcssa, %.lr.ph466.preheader
  %.0380465.epil.init = phi i64 [ 0, %.lr.ph466.preheader ], [ %i.of, %.preheader437.unr-lcssa ]
  %lcmp.mod682 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod682)
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0380465.epil.init ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24 ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !55
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !54
  %i.no = fneg double %i.nn
  store double %i.no, ptr %i.nk, align 8, !tbaa !55
  %i.np = fneg double %i.nl
  store double %i.np, ptr %i.nm, align 8, !tbaa !54
  br label %.preheader437

.preheader437:                                    ; preds = %.preheader437.unr-lcssa, %.lr.ph466.epil.preheader
  %.not503 = icmp eq i64 %.3386, 0
  br i1 %.not503, label %.loopexit438, label %.lr.ph468.preheader

.lr.ph468.preheader:                              ; preds = %.preheader437
  %xtraiter686 = and i64 %.3386, 3                ; 3 uses
  %i.nq = icmp ult i64 %.3386, 4
  br i1 %i.nq, label %.lr.ph468.epil.preheader, label %.lr.ph468.preheader.new

.lr.ph468.preheader.new:                          ; preds = %.lr.ph468.preheader
  %unroll_iter689 = and i64 %.3386, -4
  br label %.lr.ph468

.lr.ph466:                                        ; preds = %.lr.ph466, %.lr.ph466.preheader.new
  %.0380465 = phi i64 [ 0, %.lr.ph466.preheader.new ], [ %i.of, %.lr.ph466 ] ; 3 uses
  %niter684 = phi i64 [ 0, %.lr.ph466.preheader.new ], [ %niter684.next.1, %.lr.ph466 ]
  %i.nr = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0380465 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24 ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !55
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !54
  %i.nw = fneg double %i.nv
  store double %i.nw, ptr %i.ns, align 8, !tbaa !55
  %i.nx = fneg double %i.nt
  store double %i.nx, ptr %i.nu, align 8, !tbaa !54
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0380465 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 56 ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !55
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 40 ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !54
  %i.od = fneg double %i.oc
  store double %i.od, ptr %i.nz, align 8, !tbaa !55
  %i.oe = fneg double %i.oa
  store double %i.oe, ptr %i.ob, align 8, !tbaa !54
  %i.of = add nuw i64 %.0380465, 2                ; 2 uses
  %niter684.next.1 = add i64 %niter684, 2         ; 2 uses
  %niter684.ncmp.1 = icmp eq i64 %niter684.next.1, %unroll_iter683
  br i1 %niter684.ncmp.1, label %.preheader437.unr-lcssa, label %.lr.ph466, !llvm.loop !86

.lr.ph468:                                        ; preds = %.lr.ph468, %.lr.ph468.preheader.new
  %.0377467 = phi i64 [ 0, %.lr.ph468.preheader.new ], [ %i.ow, %.lr.ph468 ] ; 5 uses
  %niter690 = phi i64 [ 0, %.lr.ph468.preheader.new ], [ %niter690.next.3, %.lr.ph468 ]
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0377467
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !11
  %i.oj = fneg double %i.oi
  store double %i.oj, ptr %i.oh, align 8, !tbaa !11
  %i.ok = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0377467
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24 ; 2 uses
  %i.om = load double, ptr %i.ol, align 8, !tbaa !11
  %i.on = fneg double %i.om
  store double %i.on, ptr %i.ol, align 8, !tbaa !11
  %i.oo = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0377467
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40 ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !11
  %i.or = fneg double %i.oq
  store double %i.or, ptr %i.op, align 8, !tbaa !11
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0377467
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 56 ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !11
  %i.ov = fneg double %i.ou
  store double %i.ov, ptr %i.ot, align 8, !tbaa !11
  %i.ow = add nuw i64 %.0377467, 4                ; 2 uses
  %niter690.next.3 = add nuw i64 %niter690, 4     ; 2 uses
  %niter690.ncmp.3 = icmp eq i64 %niter690.next.3, %unroll_iter689
  br i1 %niter690.ncmp.3, label %.loopexit438.loopexit.unr-lcssa, label %.lr.ph468, !llvm.loop !87

.loopexit438.loopexit.unr-lcssa:                  ; preds = %.lr.ph468
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %.loopexit438, label %.lr.ph468.epil.preheader

.lr.ph468.epil.preheader:                         ; preds = %.loopexit438.loopexit.unr-lcssa, %.lr.ph468.preheader
  %.0377467.epil.init = phi i64 [ 0, %.lr.ph468.preheader ], [ %i.ow, %.loopexit438.loopexit.unr-lcssa ]
  %lcmp.mod688 = icmp ne i64 %xtraiter686, 0
  tail call void @llvm.assume(i1 %lcmp.mod688)
  br label %.lr.ph468.epil

.lr.ph468.epil:                                   ; preds = %.lr.ph468.epil, %.lr.ph468.epil.preheader
  %.0377467.epil = phi i64 [ %i.pb, %.lr.ph468.epil ], [ %.0377467.epil.init, %.lr.ph468.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph468.epil ], [ 0, %.lr.ph468.epil.preheader ]
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0377467.epil
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !11
  %i.pa = fneg double %i.oz
  store double %i.pa, ptr %i.oy, align 8, !tbaa !11
  %i.pb = add nuw i64 %.0377467.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter686
  br i1 %epil.iter.cmp.not, label %.loopexit438, label %.lr.ph468.epil, !llvm.loop !88

.loopexit438:                                     ; preds = %.loopexit438.loopexit.unr-lcssa, %.lr.ph468.epil, %.preheader437, %._crit_edge
  %.2385.lcssa593 = phi i64 [ %.3386, %._crit_edge ], [ 0, %.preheader437 ], [ %.3386, %.lr.ph468.epil ], [ %.3386, %.loopexit438.loopexit.unr-lcssa ] ; 2 uses
  %i.pc = add i64 %i.f, -1
  %xtraiter691 = and i64 %i.f, 3                  ; 3 uses
  %i.pd = icmp ult i64 %i.pc, 3
  br i1 %i.pd, label %.lr.ph471.epil.preheader, label %.loopexit438.new

.loopexit438.new:                                 ; preds = %.loopexit438
  %unroll_iter695 = and i64 %i.f, -4
  br label %.lr.ph471

._crit_edge472.loopexit.unr-lcssa:                ; preds = %.lr.ph471
  %lcmp.mod693.not = icmp eq i64 %xtraiter691, 0
  br i1 %lcmp.mod693.not, label %._crit_edge472, label %.lr.ph471.epil.preheader

.lr.ph471.epil.preheader:                         ; preds = %._crit_edge472.loopexit.unr-lcssa, %.loopexit438
  %.0376469.epil.init = phi i64 [ 0, %.loopexit438 ], [ %i.pw, %._crit_edge472.loopexit.unr-lcssa ]
  %lcmp.mod694 = icmp ne i64 %xtraiter691, 0
  tail call void @llvm.assume(i1 %lcmp.mod694)
  br label %.lr.ph471.epil

.lr.ph471.epil:                                   ; preds = %.lr.ph471.epil, %.lr.ph471.epil.preheader
  %.0376469.epil = phi i64 [ %i.pg, %.lr.ph471.epil ], [ %.0376469.epil.init, %.lr.ph471.epil.preheader ] ; 2 uses
  %epil.iter692 = phi i64 [ %epil.iter692.next, %.lr.ph471.epil ], [ 0, %.lr.ph471.epil.preheader ]
  %i.pe = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469.epil ; 2 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pe, align 8, !tbaa !52
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pf, align 8, !tbaa !53
  %i.pg = add nuw i64 %.0376469.epil, 1
  %epil.iter692.next = add i64 %epil.iter692, 1   ; 2 uses
  %epil.iter692.cmp.not = icmp eq i64 %epil.iter692.next, %xtraiter691
  br i1 %epil.iter692.cmp.not, label %._crit_edge472, label %.lr.ph471.epil, !llvm.loop !89

._crit_edge472:                                   ; preds = %._crit_edge472.loopexit.unr-lcssa, %.lr.ph471.epil, %.preheader441
  %.2385.lcssa593600 = phi i64 [ 0, %.preheader441 ], [ %.2385.lcssa593, %.lr.ph471.epil ], [ %.2385.lcssa593, %._crit_edge472.loopexit.unr-lcssa ]
  store ptr %i.hp, ptr %3, align 8, !tbaa !19
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %.2385.lcssa593600, ptr %i.ph, align 8, !tbaa !16
  store <2 x double> %i.gj, ptr %6, align 16, !tbaa !20
  %i.pi = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.hf, ptr %i.pi, align 16, !tbaa !20
  %i.pj = call i32 @Pshortestpath(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %4) #17
  %i.pk = icmp slt i32 %i.pj, 0
  br i1 %i.pk, label %bb.cl, label %bb.cm

.lr.ph471:                                        ; preds = %.lr.ph471, %.loopexit438.new
  %.0376469 = phi i64 [ 0, %.loopexit438.new ], [ %i.pw, %.lr.ph471 ] ; 5 uses
  %niter696 = phi i64 [ 0, %.loopexit438.new ], [ %niter696.next.3, %.lr.ph471 ]
  %i.pl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pl, align 8, !tbaa !52
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pm, align 8, !tbaa !53
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 32
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.po, align 8, !tbaa !52
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 48
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pp, align 8, !tbaa !53
  %i.pq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 64
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pr, align 8, !tbaa !52
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 80
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.ps, align 8, !tbaa !53
  %i.pt = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0376469 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 96
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.pu, align 8, !tbaa !52
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 112
  store double f0xFFEFFFFFFFFFFFFF, ptr %i.pv, align 8, !tbaa !53
  %i.pw = add nuw i64 %.0376469, 4                ; 2 uses
  %niter696.next.3 = add i64 %niter696, 4         ; 2 uses
  %niter696.ncmp.3 = icmp eq i64 %niter696.next.3, %unroll_iter695
  br i1 %niter696.ncmp.3, label %._crit_edge472.loopexit.unr-lcssa, label %.lr.ph471, !llvm.loop !90

bb.cl:                                            ; preds = %._crit_edge472
  call void @free(ptr noundef %i.hp) #17
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.10) #17
  br label %.critedge419

bb.cm:                                            ; preds = %._crit_edge472
  %.not415 = icmp eq i32 %2, 0
  br i1 %.not415, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.px = load ptr, ptr %4, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pz = load i64, ptr %i.py, align 8
  call void @make_polyline(ptr %i.px, i64 %i.pz, ptr noundef nonnull %5) #17
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %9 = load i64, ptr %i.ph, align 8, !tbaa !16
  %10 = call fastcc ptr @gv_calloc(i64 noundef %9, i64 noundef 32) ; 3 uses
  %11 = load i64, ptr %i.ph, align 8, !tbaa !16
  %.not505 = icmp eq i64 %11, 0
  br i1 %.not505, label %._crit_edge476, label %.lr.ph475

._crit_edge476:                                   ; preds = %.lr.ph475, %bb.co
  %.lcssa = phi i64 [ 0, %bb.co ], [ %15, %.lr.ph475 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !64, !range !65, !noundef !66
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.cp, label %bb.cq

.lr.ph475:                                        ; preds = %bb.co, %.lr.ph475
  %.0375473.a = phi i64 [ %12, %.lr.ph475 ], [ 0, %bb.co ] ; 3 uses
  %i.qd = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.0375473.a ; 2 uses
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.0375473.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qd, ptr noundef nonnull align 8 dereferenceable(16) %i.qe, i64 16, i1 false), !tbaa.struct !21
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %12 = add nuw i64 %.0375473.a, 1                ; 3 uses
  %13 = load i64, ptr %i.ph, align 8, !tbaa !16
  %14 = urem i64 %12, %13
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qf, ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i64 16, i1 false), !tbaa.struct !21
  %15 = load i64, ptr %i.ph, align 8, !tbaa !16   ; 2 uses
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %.lr.ph475, label %._crit_edge476, !llvm.loop !91

bb.cp:                                            ; preds = %._crit_edge476
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !67 ; 2 uses
  %i.qj = call double @cos(double noundef %i.qi) #17
  store double %i.qj, ptr %7, align 16, !tbaa !10
  %i.qk = call double @sin(double noundef %i.qi) #17
  %i.ql = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.qk, ptr %i.ql, align 8, !tbaa !11
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %._crit_edge476
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !68, !range !65, !noundef !66
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !69 ; 2 uses
  %i.qr = call double @cos(double noundef %i.qq) #17
  %i.qs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qt = call double @sin(double noundef %i.qq) #17
  %i.qu = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qv = insertelement <2 x double> %i.qu, double %i.qt, i64 1
  %i.qw = fneg <2 x double> %i.qv
  store <2 x double> %i.qw, ptr %i.qs, align 16, !tbaa !20
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.qx = load ptr, ptr %4, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qz = load i64, ptr %i.qy, align 8
  %i.ra = call i32 @Proutespline(ptr noundef %10, i64 noundef %.lcssa, ptr %i.qx, i64 %i.qz, ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %i.rb = icmp sgt i32 %i.ra, -1
  call void @free(ptr noundef %10) #17
  br i1 %i.rb, label %.thread, label %bb.ct

.thread:                                          ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @free(ptr noundef %i.hp) #17
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge419

bb.cu:                                            ; preds = %.thread, %bb.cn
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !16 ; 6 uses
  %i.re = call noalias ptr @calloc(i64 noundef %i.rd, i64 noundef 16) #18 ; 15 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %bb.cv, label %.preheader436

.preheader436:                                    ; preds = %bb.cu
  %.not506 = icmp eq i64 %i.rd, 0
  br i1 %.not506, label %._crit_edge487, label %.lr.ph483

bb.cv:                                            ; preds = %bb.cu
  call void @free(ptr noundef %i.hp) #17
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str) #17
  br label %.critedge419

.lr.ph483:                                        ; preds = %.preheader436
  %i.rg = load ptr, ptr %5, align 8, !tbaa !19
  %i.rh = shl nuw i64 %i.rd, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.re, ptr align 8 %i.rg, i64 %i.rh, i1 false)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !11
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cx
  %i.rk = add nuw i64 %.0372481, 1                ; 2 uses
  %exitcond528.not.a = icmp eq i64 %i.rk, %i.rd
  br i1 %exitcond528.not.a, label %._crit_edge484, label %bb.cx, !llvm.loop !92

bb.cx:                                            ; preds = %.lr.ph483, %bb.cw
  %.0372481 = phi i64 [ 0, %.lr.ph483 ], [ %i.rk, %bb.cw ] ; 2 uses
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.re, i64 %.0372481
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !11
  %i.ro = fsub double %i.rj, %i.rn
  %i.rp = call double @llvm.fabs.f64(double %i.ro)
  %i.rq = fcmp ule double %i.rp, 1.000000e-04     ; 3 uses
  br i1 %i.rq, label %bb.cw, label %.thread427

._crit_edge484:                                   ; preds = %bb.cw
  %i.rr = load i8, ptr @Verbose, align 1
  %.not649 = icmp eq i8 %i.rr, 0
  br i1 %.not649, label %.lr.ph486, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge484
  %i.rs = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @flockfile(ptr noundef %i.rs) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.rt = call i64 @time(ptr noundef null) #17
  store i64 %i.rt, ptr %i.a, align 8, !tbaa !24
  %i.ru = call ptr @localtime(ptr noundef nonnull %i.a) #17 ; 6 uses
  %i.rv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 20
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !29
  %i.ry = add nsw i32 %i.rx, 1900
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !30
  %i.sb = add nsw i32 %i.sa, 1
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ru, i64 12
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !31
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !33
  %i.si = load i32, ptr %i.ru, align 8, !tbaa !34
  %i.sj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rv, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 45), i32 noundef 520, i32 noundef %i.ry, i32 noundef %i.sb, i32 noundef %i.sd, i32 noundef %i.sf, i32 noundef %i.sh, i32 noundef %i.si) #19 ; 0 uses
  %i.sk = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.sl = load double, ptr %i.re, align 8, !tbaa !10
  %i.sm = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !11
  %i.so = load i64, ptr %i.rc, align 8, !tbaa !16
  %i.sp = getelementptr [16 x i8], ptr %i.re, i64 %i.so ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 -16
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !10
  %i.ss = getelementptr i8, ptr %i.sp, i64 -8
  %i.st = load double, ptr %i.ss, align 8, !tbaa !11
  %i.su = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sk, ptr noundef nonnull @.str.12, double noundef %i.sl, double noundef %i.sn, double noundef %i.sr, double noundef %i.st) #19 ; 0 uses
  %i.sv = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc = call i32 @fputc(i32 10, ptr %i.sv)     ; 0 uses
  %i.sw = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @funlockfile(ptr noundef %i.sw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.pre536 = load i64, ptr %i.rc, align 8, !tbaa !16
  br label %.thread427

.thread427:                                       ; preds = %bb.cx, %bb.cy
  %i.sx = phi i64 [ %.pre536, %bb.cy ], [ %i.rd, %bb.cx ] ; 3 uses
  %i.sy = icmp ne i64 %i.sx, 0                    ; 2 uses
  %.not508 = icmp eq i64 %i.sx, 0
  br i1 %.not508, label %._crit_edge487, label %.lr.ph486

.lr.ph486:                                        ; preds = %._crit_edge484, %.thread427
  %i.sz = phi i1 [ %i.sy, %.thread427 ], [ true, %._crit_edge484 ]
  %.0373430609 = phi i1 [ %i.rq, %.thread427 ], [ true, %._crit_edge484 ] ; 2 uses
  %i.ta = phi i64 [ %i.sx, %.thread427 ], [ %i.rd, %._crit_edge484 ]
  %i.tb = load double, ptr %i.re, align 8, !tbaa !10
  br label %bb.da

bb.cz:                                            ; preds = %bb.da
  %i.tc = add nuw i64 %.0368485, 1                ; 2 uses
  %exitcond529.not = icmp eq i64 %i.tc, %i.ta
  br i1 %exitcond529.not, label %._crit_edge487, label %bb.da, !llvm.loop !93

bb.da:                                            ; preds = %.lr.ph486, %bb.cz
  %.0368485 = phi i64 [ 0, %.lr.ph486 ], [ %i.tc, %bb.cz ] ; 2 uses
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.re, i64 %.0368485
  %i.te = load double, ptr %i.td, align 8, !tbaa !10
  %i.tf = fsub double %i.tb, %i.te
  %i.tg = call double @llvm.fabs.f64(double %i.tf)
  %i.th = fcmp ogt double %i.tg, 1.000000e-04
  br i1 %i.th, label %.thread431, label %bb.cz

._crit_edge487:                                   ; preds = %bb.cz, %.preheader436, %.thread427
  %i.ti = phi i1 [ false, %.preheader436 ], [ %i.sy, %.thread427 ], [ %i.sz, %bb.cz ] ; 2 uses
  %.0373430605.a = phi i1 [ false, %.preheader436 ], [ %i.rq, %.thread427 ], [ %.0373430609, %bb.cz ]
  %i.tj = load i8, ptr @Verbose, align 1
  %i.tk = icmp ne i8 %i.tj, 0
  %or.cond14 = select i1 %i.ti, i1 %i.tk, i1 false
  br i1 %or.cond14, label %.thread431.thread, label %.thread431

.thread431.thread:                                ; preds = %._crit_edge487
  %i.tl = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @flockfile(ptr noundef %i.tl) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.tm = call i64 @time(ptr noundef null) #17
  store i64 %i.tm, ptr %i.b, align 8, !tbaa !24
  %i.tn = call ptr @localtime(ptr noundef nonnull %i.b) #17 ; 6 uses
  %i.to = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 20
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !29
  %i.tr = add nsw i32 %i.tq, 1900
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !30
  %i.tu = add nsw i32 %i.tt, 1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !31
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !32
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !33
  %i.ub = load i32, ptr %i.tn, align 8, !tbaa !34
  %i.uc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.to, ptr noundef nonnull @.str.2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 45), i32 noundef 534, i32 noundef %i.tr, i32 noundef %i.tu, i32 noundef %i.tw, i32 noundef %i.ty, i32 noundef %i.ua, i32 noundef %i.ub) #19 ; 0 uses
  %i.ud = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ue = load double, ptr %i.re, align 8, !tbaa !10
  %i.uf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !11
  %i.uh = load i64, ptr %i.rc, align 8, !tbaa !16
  %i.ui = getelementptr [16 x i8], ptr %i.re, i64 %i.uh ; 2 uses
  %i.uj = getelementptr i8, ptr %i.ui, i64 -16
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !10
  %i.ul = getelementptr i8, ptr %i.ui, i64 -8
  %i.um = load double, ptr %i.ul, align 8, !tbaa !11
  %i.un = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ud, ptr noundef nonnull @.str.13, double noundef %i.ue, double noundef %i.ug, double noundef %i.uk, double noundef %i.um) #19 ; 0 uses
  %i.uo = load ptr, ptr @stderr, align 8, !tbaa !18
  %fputc416 = call i32 @fputc(i32 10, ptr %i.uo)  ; 0 uses
  %i.up = load ptr, ptr @stderr, align 8, !tbaa !18
  call void @funlockfile(ptr noundef %i.up) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.preheader

.thread431:                                       ; preds = %bb.da, %._crit_edge487
  %.0373430604 = phi i1 [ %.0373430605.a, %._crit_edge487 ], [ %.0373430609, %bb.da ]
  %.0369434 = phi i1 [ %i.ti, %._crit_edge487 ], [ false, %bb.da ]
  %or.cond10 = or i1 %.0373430604, %.0369434
  br i1 %or.cond10, label %.preheader, label %.lr.ph498

.preheader:                                       ; preds = %.thread431.thread, %.thread431
  br i1 %.not254.i, label %._crit_edge499.thread, label %.lr.ph489

.lr.ph489:                                        ; preds = %.preheader
  %i.uq = load double, ptr %i.re, align 8, !tbaa !10 ; 10 uses
  %i.ur = add i64 %i.f, -1
  %xtraiter697 = and i64 %i.f, 3                  ; 3 uses
  %i.us = icmp ult i64 %i.ur, 3
  br i1 %i.us, label %.epil.preheader, label %.lr.ph489.new

.lr.ph489.new:                                    ; preds = %.lr.ph489
  %unroll_iter701 = and i64 %i.f, -4
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %.lr.ph489.new
  %.0365488 = phi i64 [ 0, %.lr.ph489.new ], [ %i.ve, %bb.db ] ; 5 uses
  %niter702 = phi i64 [ 0, %.lr.ph489.new ], [ %niter702.next.3, %bb.db ]
  %i.ut = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  store double %i.uq, ptr %i.ut, align 8, !tbaa !52
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store double %i.uq, ptr %i.uu, align 8, !tbaa !53
  %i.uv = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  store double %i.uq, ptr %i.uw, align 8, !tbaa !52
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 48
  store double %i.uq, ptr %i.ux, align 8, !tbaa !53
  %i.uy = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 64
  store double %i.uq, ptr %i.uz, align 8, !tbaa !52
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 80
  store double %i.uq, ptr %i.va, align 8, !tbaa !53
  %i.vb = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 96
  store double %i.uq, ptr %i.vc, align 8, !tbaa !52
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 112
  store double %i.uq, ptr %i.vd, align 8, !tbaa !53
  %i.ve = add nuw i64 %.0365488, 4                ; 2 uses
  %niter702.next.3 = add nuw i64 %niter702, 4     ; 2 uses
  %niter702.ncmp.3 = icmp eq i64 %niter702.next.3, %unroll_iter701
  br i1 %niter702.ncmp.3, label %._crit_edge499.thread.loopexit.unr-lcssa, label %bb.db, !llvm.loop !94

.lr.ph498:                                        ; preds = %.thread431, %.loopexit
  %.0364496 = phi double [ %i.vl, %.loopexit ], [ 1.000000e+01, %.thread431 ] ; 2 uses
  %.0394494 = phi i32 [ %i.vn, %.loopexit ], [ 0, %.thread431 ] ; 2 uses
  %i.vf = load i64, ptr %i.rc, align 8, !tbaa !16
  call fastcc void @limitBoxes(ptr noundef nonnull %i.p, i64 noundef %i.f, ptr noundef nonnull %i.re, i64 noundef %i.vf, double noundef %.0364496)
  br i1 %.not254.i, label %._crit_edge499.thread, label %.lr.ph492

.lr.ph492:                                        ; preds = %.lr.ph498, %bb.dd
  %.0490 = phi i64 [ %i.vk, %bb.dd ], [ 0, %.lr.ph498 ] ; 3 uses
  %i.vg = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0490 ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !52
  %.not.i422 = icmp eq i64 %i.vh, 9218868437227405311
  br i1 %.not.i422, label %.loopexit, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph492
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !53
  %.not.i424 = icmp eq i64 %i.vj, -4503599627370497
  br i1 %.not.i424, label %.loopexit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vk = add nuw i64 %.0490, 1                   ; 2 uses
  %exitcond531.not = icmp eq i64 %i.vk, %i.f
  br i1 %exitcond531.not, label %._crit_edge499.thread, label %.lr.ph492, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph492, %bb.dc
  %i.vl = fmul double %.0364496, 2.000000e+00
  %i.vm = icmp ne i64 %.0490, %i.f                ; 2 uses
  %i.vn = add nuw nsw i32 %.0394494, 1
  %i.vo = icmp samesign ult i32 %.0394494, 14
  %i.vp = select i1 %i.vm, i1 %i.vo, i1 false
  br i1 %i.vp, label %.lr.ph498, label %._crit_edge499, !llvm.loop !96

._crit_edge499:                                   ; preds = %.loopexit
  br i1 %i.vm, label %bb.de, label %._crit_edge499.thread

bb.de:                                            ; preds = %._crit_edge499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.vq = load i32, ptr %.0396453, align 8
  %i.vr = and i32 %i.vq, 3
  %i.vs = icmp eq i32 %i.vr, 3
  %i.vt = select i1 %i.vs, ptr %.0396453, ptr %i.it
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 56
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !62
  %i.vw = call ptr @agnameof(ptr noundef %i.vv) #17
  %i.vx = load i32, ptr %.0396453, align 8
  %i.vy = and i32 %i.vx, 3
  %i.vz = icmp eq i32 %i.vy, 2
  %i.wa = select i1 %i.vz, ptr %.0396453, ptr %i.iy
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 56
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !62
  %i.wd = call ptr @agnameof(ptr noundef %i.wc) #17
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.14, ptr noundef %i.vw, ptr noundef %i.wd) #17
  %i.we = load ptr, ptr %4, align 8
  %i.wf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.wg = load i64, ptr %i.wf, align 8
  call void @make_polyline(ptr %i.we, i64 %i.wg, ptr noundef nonnull %8) #17
  %i.wh = load ptr, ptr %8, align 8, !tbaa !19
  %i.wi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !16
  call fastcc void @limitBoxes(ptr noundef nonnull %i.p, i64 noundef %i.f, ptr noundef %i.wh, i64 noundef %i.wj, double noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %._crit_edge499.thread

._crit_edge499.thread.loopexit.unr-lcssa:         ; preds = %bb.db
  %lcmp.mod699.not = icmp eq i64 %xtraiter697, 0
  br i1 %lcmp.mod699.not, label %._crit_edge499.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge499.thread.loopexit.unr-lcssa, %.lr.ph489
  %.0365488.epil.init = phi i64 [ 0, %.lr.ph489 ], [ %i.ve, %._crit_edge499.thread.loopexit.unr-lcssa ]
  %lcmp.mod700 = icmp ne i64 %xtraiter697, 0
  call void @llvm.assume(i1 %lcmp.mod700)
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.epil.preheader
  %.0365488.epil = phi i64 [ %.0365488.epil.init, %.epil.preheader ], [ %i.wm, %bb.df ] ; 2 uses
  %epil.iter698 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter698.next, %bb.df ]
  %i.wk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.0365488.epil ; 2 uses
  store double %i.uq, ptr %i.wk, align 8, !tbaa !52
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store double %i.uq, ptr %i.wl, align 8, !tbaa !53
  %i.wm = add nuw i64 %.0365488.epil, 1
  %epil.iter698.next = add i64 %epil.iter698, 1   ; 2 uses
  %epil.iter698.cmp.not = icmp eq i64 %epil.iter698.next, %xtraiter697
  br i1 %epil.iter698.cmp.not, label %._crit_edge499.thread, label %bb.df, !llvm.loop !97

._crit_edge499.thread:                            ; preds = %.lr.ph498, %bb.dd, %._crit_edge499.thread.loopexit.unr-lcssa, %bb.df, %.preheader, %bb.de, %._crit_edge499
  %i.wn = load i64, ptr %i.rc, align 8, !tbaa !16
  store i64 %i.wn, ptr %1, align 8, !tbaa !24
  call void @free(ptr noundef %i.hp) #17
  br label %.critedge419

.critedge419:                                     ; preds = %bb.ct, %bb.i, %bb.g, %.loopexit524, %bb.ch, %bb.cv, %._crit_edge499.thread, %bb.cl, %bb.ck, %.critedge417
  %.5 = phi ptr [ null, %.critedge417 ], [ null, %.loopexit524 ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.ct ], [ %i.re, %._crit_edge499.thread ], [ null, %bb.cv ], [ null, %bb.ch ], [ null, %bb.g ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define noundef ptr @routepolylines(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @routesplines_(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @makeStraightEdge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.d, %bb.b ]  ; 2 uses
  %.019 = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]   ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 3 uses
  %.not = icmp eq ptr %.020, %i.d
  %.not22 = icmp eq ptr %i.d, null
  %or.cond = or i1 %.not, %.not22
  %i.e = add i64 %.019, 1
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !101

.critedge:                                        ; preds = %bb.b
  %.not.i = icmp eq i64 %.019, 0
  br i1 %.not.i, label %gv_calloc.exit.thread, label %bb.c

gv_calloc.exit.thread:                            ; preds = %.critedge
  %i.f = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #18
  br label %._crit_edge

bb.c:                                             ; preds = %.critedge
  %mul.ov.i = icmp ugt i64 %.019, 2305843009213693951
  br i1 %mul.ov.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.5, i64 noundef %.019, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @calloc(i64 noundef %.019, i64 noundef 8) #18 ; 8 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %.019, 3                    ; 3 uses
  %i.k = icmp ult i64 %.019, 4
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.019, 2305843009213693948
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.m = shl nuw i64 %.019, 3
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.6, i64 noundef %i.m) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %.123.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.024.epil = phi i64 [ %i.t, %.lr.ph.epil ], [ %.024.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.123.epil = phi ptr [ %i.s, %.lr.ph.epil ], [ %.123.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024.epil
  store ptr %.123.epil, ptr %i.o, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %.123.epil, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !104
  %i.t = add nuw i64 %.024.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !102

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %gv_calloc.exit.thread
  %i.u = phi ptr [ %i.f, %gv_calloc.exit.thread ], [ %i.i, %.lr.ph.epil ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @makeStraightEdges(ptr noundef %0, ptr noundef %i.u, i64 noundef %.019, i32 noundef %2, ptr noundef %3)
  tail call void @free(ptr noundef %i.u) #17
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ] ; 5 uses
  %.123 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  store ptr %.123, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %.123, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104  ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.024
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.al, ptr %i.an, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %i.as = add nuw i64 %.024, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !103
}

; Function Attrs: nounwind uwtable
define void @makeStraightEdges(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.cycles_t, align 8           ; 13 uses
  %6 = alloca %struct.cycles_t, align 8           ; 19 uses
  %7 = alloca [4 x %struct.pointf_s], align 16    ; 11 uses
  %8 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  %9 = alloca [4 x %struct.pointf_s], align 16    ; 7 uses
  %10 = alloca %struct.Ppoly_t, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !70     ; 12 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 3
  %i.e = select i1 %i.d, i64 56, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = icmp eq i32 %i.c, 2
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 -64 ; 2 uses
  %i.j = select i1 %i.h, ptr %i.a, ptr %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.x = load <2 x double>, ptr %i.p, align 8
  %i.y = load <2 x double>, ptr %i.s, align 8
  %i.z = fadd <2 x double> %i.x, %i.y             ; 8 uses
  store <2 x double> %i.z, ptr %7, align 16, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !21
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load <2 x double>, ptr %i.ab, align 8
  %i.ad = load <2 x double>, ptr %i.w, align 8
  %i.ae = fadd <2 x double> %i.ac, %i.ad          ; 8 uses
  store <2 x double> %i.ae, ptr %i.u, align 16, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !21
  %i.af = icmp eq i64 %2, 1
  %i.ag = load i8, ptr @Concentrate, align 1, !range !65
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp eq i32 %3, 4
  br i1 %i.ai, label %bb.c, label %bend.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) @__const.find_all_cycles.cycles, i64 48, i1 false), !noalias !117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) @__const.find_all_cycles.cycles, i64 48, i1 false)
  %i.aj = tail call ptr @agfstnode(ptr noundef %0) #17, !noalias !117 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.i.i, label %find_all_cycles.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  br label %bb.d

.preheader.i.i:                                   ; preds = %gv_alloc.exit.i.i
end_hunk_2
begin_hunk_3_@dfs:bb.a
  %i.aw = and i32 %i.av, 3
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = select i1 %i.ax, i64 56, i64 -8
  %i.az = getelementptr inbounds i8, ptr %.048, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  call fastcc void @dfs(ptr noundef %0, ptr noundef %i.ba, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %i.bb = call ptr @agnxtout(ptr noundef %0, ptr noundef nonnull %.048) #17 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %i.bc = getelementptr i8, ptr %2, i64 16
  %.val44 = load i64, ptr %i.bc, align 8, !tbaa !72 ; 2 uses
  %i.bd = icmp eq i64 %.val44, 0
  br i1 %i.bd, label %is_cycle_unique.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.be = add i64 %.val44, -1
  %i.bf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.be) #17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %magicptr = ptrtoint ptr %i.bh to i64
  switch i64 %magicptr, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %2, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %.0.copyload = load ptr, ptr %i.bj, align 8
  call void @free(ptr noundef %.0.copyload) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %2, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bf
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75
  call void %i.bh(ptr noundef %i.bm) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  call void @gv_list_pop_back_(ptr noundef nonnull %2, ptr noundef nonnull %i.ao, i64 noundef 8) #17
  br label %is_cycle_unique.exit

is_cycle_unique.exit:                             ; preds = %bb.d, %.lr.ph47.i.us, %._crit_edge, %bb.j, %bb.b, %gv_alloc.exit
  ret void
}

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden zeroext i1 @gv_list_contains_(ptr noundef byval(%struct.list_t_) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @gv_list_copy_(ptr dead_on_unwind writable sret(%struct.list_t_) align 8, ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @gv_list_pop_back_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { cold nounwind }
attributes #20 = { noreturn }
attributes #21 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"pointf_s", !8, i64 0, !8, i64 8}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTS8pointf_s", !12, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!"Ppoly_t", !13, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 8}
!17 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!15, !13, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{i64 0, i64 8, !20, i64 8, i64 8, !20}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = !{!14, !14, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!"p1 omnipotent char", !12, i64 0}
!28 = !{!"tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !14, i64 40, !27, i64 48}
!29 = !{!28, !5, i64 20}
!30 = !{!28, !5, i64 16}
!31 = !{!28, !5, i64 12}
!32 = !{!28, !5, i64 8}
!33 = !{!28, !5, i64 4}
!34 = !{!28, !5, i64 0}
!35 = !{!"_Bool", !4, i64 0}
!36 = !{!"port", !9, i64 0, !8, i64 16, !12, i64 24, !35, i64 32, !35, i64 33, !35, i64 34, !35, i64 35, !4, i64 36, !4, i64 37, !27, i64 40}
!37 = !{!"path", !36, i64 0, !36, i64 48, !14, i64 96, !12, i64 104, !12, i64 112}
!38 = !{!37, !14, i64 96}
!39 = !{!12, !12, i64 0}
!40 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !14, i64 8}
!41 = !{!"p1 _ZTS7Agrec_s", !12, i64 0}
!42 = !{!"Agobj_s", !40, i64 0, !41, i64 16}
!43 = !{!42, !41, i64 16}
!44 = !{!"Agrec_s", !27, i64 0, !41, i64 8}
!45 = !{!"p1 _ZTS7splines", !12, i64 0}
!46 = !{!"p1 _ZTS11textlabel_t", !12, i64 0}
!47 = !{!"p1 _ZTS8Agedge_s", !12, i64 0}
!48 = !{!"short", !4, i64 0}
!49 = !{!"Agedgeinfo_t", !44, i64 0, !45, i64 16, !36, i64 24, !36, i64 72, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !4, i64 152, !4, i64 153, !4, i64 154, !4, i64 155, !4, i64 156, !47, i64 160, !12, i64 168, !8, i64 176, !8, i64 184, !15, i64 192, !4, i64 208, !35, i64 209, !48, i64 210, !5, i64 212, !5, i64 216, !5, i64 220, !48, i64 224, !5, i64 228, !47, i64 232}
!50 = !{!37, !12, i64 104}
!51 = !{!"", !9, i64 0, !9, i64 16}
!52 = !{!51, !8, i64 0}
!53 = !{!51, !8, i64 16}
!54 = !{!51, !8, i64 8}
!55 = !{!51, !8, i64 24}
!56 = !{!37, !8, i64 0}
!57 = !{!37, !8, i64 8}
!58 = !{!"p1 _ZTS9dtlink_s_", !12, i64 0}
!59 = !{!"dtlink_s_", !58, i64 0, !4, i64 8}
!60 = !{!"p1 _ZTS8Agnode_s", !12, i64 0}
!61 = !{!"Agedge_s", !42, i64 0, !59, i64 24, !59, i64 40, !60, i64 56}
!62 = !{!61, !60, i64 56}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!37, !35, i64 33}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!37, !8, i64 16}
!68 = !{!37, !35, i64 81}
!69 = !{!37, !8, i64 64}
!70 = !{!47, !47, i64 0}
!71 = !{!"", !12, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!72 = !{!71, !14, i64 16}
!73 = !{!"", !4, i64 0, !12, i64 32, !12, i64 40}
!74 = !{!73, !12, i64 40}
!75 = !{!60, !60, i64 0}
!76 = !{!"", !4, i64 0, !12, i64 32, !60, i64 40}
!77 = !{!76, !12, i64 32}
!78 = distinct !{!78, !22, !23}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22, !100}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22, !23}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !63}
!89 = distinct !{!89, !63}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !63}
!98 = !{!49, !4, i64 152}
!99 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20}
!100 = !{!"llvm.loop.peeled.count", i32 3}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !63}
!103 = distinct !{!103, !22}
!104 = !{!49, !47, i64 232}
!105 = distinct !{!105, !"find_all_cycles"}
!106 = distinct !{!106, !105, !"find_all_cycles: argument 0"}
!107 = distinct !{!107, !22}
!108 = distinct !{null, null}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22, !23}
!111 = distinct !{!111, !22}
!112 = distinct !{null}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, !22}
!116 = distinct !{!116, !22}
!117 = !{!106}
!118 = !{!73, !12, i64 32}
!119 = !{!"Agdesc_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0}
!120 = !{!"p1 _ZTS5dt_s_", !12, i64 0}
!121 = !{!"p1 _ZTS17graphviz_node_set", !12, i64 0}
!122 = !{!"p1 _ZTS8Agraph_s", !12, i64 0}
!123 = !{!"p1 _ZTS8Agclos_s", !12, i64 0}
!124 = !{!"Agraph_s", !42, i64 0, !119, i64 24, !59, i64 32, !59, i64 48, !120, i64 64, !121, i64 72, !120, i64 80, !120, i64 88, !120, i64 96, !120, i64 104, !122, i64 112, !122, i64 120, !123, i64 128}
!125 = !{!124, !122, i64 120}
!126 = !{!"p1 _ZTS8layout_t", !12, i64 0}
!127 = !{!"p1 _ZTS5GVC_s", !12, i64 0}
!128 = !{!"any p2 pointer", !12, i64 0}
!129 = !{!"p2 _ZTS8Agnode_s", !128, i64 0}
!130 = !{!"p2 double", !128, i64 0}
!131 = !{!"any p3 pointer", !128, i64 0}
!132 = !{!"p3 double", !131, i64 0}
!133 = !{!"p2 _ZTS8Agraph_s", !128, i64 0}
!134 = !{!"p1 _ZTS6rank_t", !12, i64 0}
!135 = !{!"nlist_t", !129, i64 0, !14, i64 8}
!136 = !{!"Agraphinfo_t", !44, i64 0, !126, i64 16, !46, i64 24, !51, i64 32, !4, i64 64, !4, i64 128, !4, i64 129, !35, i64 130, !4, i64 131, !5, i64 132, !8, i64 136, !8, i64 144, !48, i64 152, !12, i64 160, !127, i64 168, !12, i64 176, !129, i64 184, !5, i64 192, !130, i64 200, !130, i64 208, !130, i64 216, !132, i64 224, !48, i64 232, !48, i64 234, !5, i64 236, !133, i64 240, !122, i64 248, !60, i64 256, !134, i64 264, !122, i64 272, !5, i64 280, !60, i64 288, !60, i64 296, !135, i64 304, !60, i64 320, !60, i64 328, !5, i64 336, !5, i64 340, !35, i64 344, !4, i64 345, !5, i64 348, !5, i64 352, !5, i64 356, !60, i64 360, !60, i64 368, !60, i64 376, !129, i64 384, !35, i64 392, !4, i64 393, !4, i64 394, !4, i64 395, !35, i64 396}
!137 = !{!136, !5, i64 352}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !22}
!142 = !{!37, !8, i64 48}
!143 = !{!37, !8, i64 56}
!144 = distinct !{!144, !22}
!145 = distinct !{!145, !22}
!146 = distinct !{!146, !22}
!147 = distinct !{!147, !22}
!148 = !{!76, !60, i64 40}
!149 = !{i64 0, i64 32, !26, i64 32, i64 8, !39, i64 40, i64 8, !75}
end_hunk_3
