inline.NumInlined: 27
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PairHeap = type { ptr, i64, i64 }
%struct.Pair = type { i64, i64, double }
%struct.pairs_t = type { %union.anon, ptr, %struct.Pair }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@gv_sort_compar = internal thread_local unnamed_addr global ptr null, align 8
@gv_sort_arg = internal thread_local unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define hidden void @closest_pairs2graph(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [24 x i8], align 16                 ; 4 uses
  %5 = alloca [24 x i8], align 16                 ; 4 uses
  %6 = alloca %struct.PairHeap, align 8           ; 12 uses
  %7 = alloca %struct.Pair, align 8               ; 9 uses
  %8 = alloca %struct.pairs_t, align 8            ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %i.a = sext i32 %1 to i64                       ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %.not.i.i = icmp eq i32 %1, 0                   ; 4 uses
  br i1 %.not.i.i, label %._crit_edge.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #21 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %gv_calloc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.g = shl nuw nsw i64 %i.a, 3
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, i64 noundef %i.g) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.d
  %i.i = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #21 ; 9 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %gv_calloc.exit.i
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.l = shl nuw nsw i64 %i.a, 3
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.2, i64 noundef %i.l) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.g:                                             ; preds = %gv_calloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.n = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #21 ; 27 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %gv_calloc.exit96.i

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.q = shl nuw nsw i64 %i.a, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.2, i64 noundef %i.q) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit96.i:                               ; preds = %bb.g
  %i.s = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8) #21 ; 9 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %gv_calloc.exit96.i
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.a, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %vec.ind, ptr %i.u, align 8, !tbaa !11
  store <2 x i64> %step.add, ptr %i.v, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader87

.lr.ph.i.preheader87:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.0138.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

bb.i:                                             ; preds = %gv_calloc.exit96.i
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.y = shl nuw nsw i64 %i.a, 3
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.2, i64 noundef %i.y) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_compar) ; 2 uses
  store ptr @cmp, ptr %i.aa, align 8, !tbaa !17
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_arg) ; 2 uses
  store ptr %0, ptr %i.ab, align 8, !tbaa !17
  %.not201.i = icmp eq i32 %1, 1                  ; 3 uses
  br i1 %.not201.i, label %.lr.ph140.preheader.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  tail call void @qsort(ptr noundef nonnull %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 8, ptr noundef nonnull @gv_sort_compar_wrapper) #18
  br label %.lr.ph140.preheader.i

._crit_edge.i.thread.i:                           ; preds = %bb.a
  %i.ac = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.ad = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ae = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.af = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_compar)
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_arg)
  store ptr null, ptr %i.ag, align 8, !tbaa !17
  store ptr null, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #21 ; 2 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !18
  br label %.preheader.i

.lr.ph140.preheader.i:                            ; preds = %bb.j, %._crit_edge.i
  store ptr null, ptr %i.aa, align 8, !tbaa !17
  store ptr null, ptr %i.ab, align 8, !tbaa !17
  %i.ak = add nsw i64 %i.a, -1                    ; 5 uses
  %xtraiter = and i64 %i.a, 3
  %i.al = icmp ult i32 %1, 4
  br i1 %i.al, label %.lr.ph140.i.epil.preheader, label %.lr.ph140.preheader.i.new

.lr.ph140.preheader.i.new:                        ; preds = %.lr.ph140.preheader.i
  %unroll_iter = and i64 %i.a, 2147483644
  br label %.lr.ph140.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader87, %.lr.ph.i
  %.0138.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.0138.i.ph, %.lr.ph.i.preheader87 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0138.i
  store i64 %.0138.i, ptr %i.am, align 8, !tbaa !11
  %i.an = add nuw i64 %.0138.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

._crit_edge141.i.unr-lcssa:                       ; preds = %.lr.ph140.i
  %i.ao = and i32 %1, 3
  %lcmp.mod.not = icmp eq i32 %i.ao, 0
  br i1 %lcmp.mod.not, label %._crit_edge141.i, label %.lr.ph140.i.epil.preheader

.lr.ph140.i.epil.preheader:                       ; preds = %._crit_edge141.i.unr-lcssa, %.lr.ph140.preheader.i
  %.080139.i.epil.init = phi i64 [ 0, %.lr.ph140.preheader.i ], [ %i.dx, %._crit_edge141.i.unr-lcssa ]
  %i.ap = and i32 %1, 3
  %lcmp.mod88 = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph140.i.epil

.lr.ph140.i.epil:                                 ; preds = %.lr.ph140.i.epil, %.lr.ph140.i.epil.preheader
  %.080139.i.epil = phi i64 [ %i.at, %.lr.ph140.i.epil ], [ %.080139.i.epil.init, %.lr.ph140.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph140.i.epil ], [ 0, %.lr.ph140.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.080139.i.epil
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ar
  store i64 %.080139.i.epil, ptr %i.as, align 8, !tbaa !11
  %i.at = add nuw i64 %.080139.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge141.i, label %.lr.ph140.i.epil, !llvm.loop !21

._crit_edge141.i:                                 ; preds = %.lr.ph140.i.epil, %._crit_edge141.i.unr-lcssa
  %i.au = add nsw i64 %i.a, -1                    ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !24
  br i1 %.not201.i, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge141.i
  %i.ax = tail call noalias ptr @calloc(i64 noundef %i.au, i64 noundef 24) #21 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %.lr.ph.split.preheader.i.i

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ba = mul nuw nsw i64 %i.au, 24
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.2, i64 noundef %i.ba) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph.split.preheader.i.i:                       ; preds = %bb.k
  store ptr %i.ax, ptr %6, align 8, !tbaa !18
  %.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !11 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i
  %.pre33.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25 ; 2 uses
  %xtraiter89 = and i64 %i.ak, 1
  %i.bc = icmp eq i32 %1, 2
  br i1 %i.bc, label %.lr.ph.split.i.i.epil.preheader, label %.lr.ph.split.preheader.i.i.new

.lr.ph.split.preheader.i.i.new:                   ; preds = %.lr.ph.split.preheader.i.i
  %unroll_iter95 = and i64 %i.ak, -2
  br label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge141.i
  %i.bd = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #21 ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !18
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.split.i.i
  %lcmp.mod93.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod93.not, label %.preheader.preheader.i.i, label %.lr.ph.split.i.i.epil.preheader

.lr.ph.split.i.i.epil.preheader:                  ; preds = %.preheader.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.split.preheader.i.i
  %.epil.init = phi double [ %.pre33.i.i, %.lr.ph.split.preheader.i.i ], [ %i.cb, %.preheader.preheader.i.i.loopexit.unr-lcssa ]
  %.epil.init92 = phi i64 [ %.pre.i.i, %.lr.ph.split.preheader.i.i ], [ %i.bz, %.preheader.preheader.i.i.loopexit.unr-lcssa ]
  %.02830.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %i.bx, %.preheader.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.02830.i.i.epil.init
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !25
  %i.bj = fsub double %i.bi, %.epil.init
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.02830.i.i.epil.init ; 3 uses
  store i64 %.epil.init92, ptr %i.bk, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bg, ptr %.sroa.4.0..sroa_idx.i.i.epil, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store double %i.bj, ptr %.sroa.5.0..sroa_idx.i.i.epil, align 8, !tbaa !25
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.split.i.i.epil.preheader, %.preheader.preheader.i.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %i.bl = phi i64 [ 0, %._crit_edge.i.i ], [ %i.au, %.preheader.preheader.i.i.loopexit.unr-lcssa ], [ %i.au, %.lr.ph.split.i.i.epil.preheader ] ; 7 uses
  %i.bm = phi ptr [ %i.bd, %._crit_edge.i.i ], [ %i.ax, %.preheader.preheader.i.i.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.split.i.i.epil.preheader ] ; 9 uses
  %i.bn = lshr i64 %i.bl, 1
  br label %.preheader.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.preheader.i.i.new
  %i.bo = phi double [ %.pre33.i.i, %.lr.ph.split.preheader.i.i.new ], [ %i.cb, %.lr.ph.split.i.i ]
  %i.bp = phi i64 [ %.pre.i.i, %.lr.ph.split.preheader.i.i.new ], [ %i.bz, %.lr.ph.split.i.i ]
  %.02830.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.new ], [ %i.bx, %.lr.ph.split.i.i ] ; 3 uses
  %niter96 = phi i64 [ 0, %.lr.ph.split.preheader.i.i.new ], [ %niter96.next.1, %.lr.ph.split.i.i ]
  %i.bq = or disjoint i64 %.02830.i.i, 1          ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11 ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !25 ; 2 uses
  %i.bv = fsub double %i.bu, %i.bo
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %.02830.i.i ; 3 uses
  store i64 %i.bp, ptr %i.bw, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bs, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store double %i.bv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !25
  %i.bx = add nuw i64 %.02830.i.i, 2              ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !25 ; 3 uses
  %i.cc = fsub double %i.cb, %i.bu
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bq ; 3 uses
  store i64 %i.bs, ptr %i.cd, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.bz, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store double %i.cc, ptr %.sroa.5.0..sroa_idx.i.i.1, align 8, !tbaa !25
  %niter96.next.1 = add nuw i64 %niter96, 2       ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %.preheader.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.split.i.i, !llvm.loop !27

.preheader.i.i:                                   ; preds = %heapify.exit.i.i, %.preheader.preheader.i.i
  %.031.i.i = phi i64 [ %i.df, %heapify.exit.i.i ], [ %i.bn, %.preheader.preheader.i.i ] ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %.preheader.i.i
  %.036.i.i.i = phi i64 [ %.138.i.i.i, %bb.x ], [ %.031.i.i, %.preheader.i.i ] ; 5 uses
  %i.ce = shl i64 %.036.i.i.i, 1                  ; 5 uses
  %i.cf = or disjoint i64 %i.ce, 1                ; 3 uses
  %i.cg = icmp ult i64 %i.ce, %i.au
  br i1 %i.cg, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !28 ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.036.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !28 ; 2 uses
  %i.cn = fcmp olt double %i.cj, %i.cm
  br i1 %i.cn, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = fcmp oeq double %i.cj, %i.cm
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = tail call i32 @rand() #18
  %i.cq = and i32 %i.cp, 1
  %.not.i29.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i29.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.037.i.i.i = phi i64 [ %.036.i.i.i, %bb.q ], [ %i.ce, %bb.p ], [ %i.ce, %bb.n ] ; 4 uses
  %i.cr = icmp ult i64 %i.cf, %i.au
  br i1 %i.cr, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.cf
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !28 ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.037.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !28 ; 2 uses
  %i.cy = fcmp olt double %i.cu, %i.cx
  br i1 %i.cy, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = fcmp oeq double %i.cu, %i.cx
  br i1 %i.cz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.da = tail call i32 @rand() #18
  %i.db = and i32 %i.da, 1
  %.not45.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not45.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %.138.i.i.i = phi i64 [ %i.cf, %bb.v ], [ %.037.i.i.i, %bb.u ], [ %.037.i.i.i, %bb.t ], [ %.037.i.i.i, %bb.r ] ; 3 uses
  %i.dc = icmp eq i64 %.138.i.i.i, %.036.i.i.i
  br i1 %i.dc, label %heapify.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.138.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.036.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.m

heapify.exit.i.i:                                 ; preds = %bb.w
  %i.df = add nsw i64 %.031.i.i, -1
  %.not.i102.i = icmp eq i64 %.031.i.i, 0
  br i1 %.not.i102.i, label %initHeap.exit.i, label %.preheader.i.i, !llvm.loop !31

initHeap.exit.i:                                  ; preds = %heapify.exit.i.i
  br i1 %.not201.i, label %.preheader.i, label %.lr.ph143.i.preheader

.lr.ph143.i.preheader:                            ; preds = %initHeap.exit.i
  %i.dg = add nsw i64 %i.a, -2
  %xtraiter97 = and i64 %i.ak, 3                  ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 3
  br i1 %i.dh, label %.lr.ph143.i.epil.preheader, label %.lr.ph143.i.preheader.new

.lr.ph143.i.preheader.new:                        ; preds = %.lr.ph143.i.preheader
  %unroll_iter101 = and i64 %i.ak, -4
  br label %.lr.ph143.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i, %.lr.ph140.preheader.i.new
  %.080139.i = phi i64 [ 0, %.lr.ph140.preheader.i.new ], [ %i.dx, %.lr.ph140.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph140.preheader.i.new ], [ %niter.next.3, %.lr.ph140.i ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.080139.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dj
  store i64 %.080139.i, ptr %i.dk, align 8, !tbaa !11
  %i.dl = or disjoint i64 %.080139.i, 1           ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dn
  store i64 %i.dl, ptr %i.do, align 8, !tbaa !11
  %i.dp = or disjoint i64 %.080139.i, 2           ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dr
  store i64 %i.dp, ptr %i.ds, align 8, !tbaa !11
  %i.dt = or disjoint i64 %.080139.i, 3           ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.dv
  store i64 %i.dt, ptr %i.dw, align 8, !tbaa !11
  %i.dx = add nuw i64 %.080139.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge141.i.unr-lcssa, label %.lr.ph140.i, !llvm.loop !32

.lr.ph145.split.preheader.i.unr-lcssa:            ; preds = %.lr.ph143.i
  %lcmp.mod99.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %.lr.ph145.split.preheader.i, label %.lr.ph143.i.epil.preheader

.lr.ph143.i.epil.preheader:                       ; preds = %.lr.ph145.split.preheader.i.unr-lcssa, %.lr.ph143.i.preheader
  %.081142.i.epil.init = phi i64 [ 1, %.lr.ph143.i.preheader ], [ %i.ex, %.lr.ph145.split.preheader.i.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph143.i.epil

.lr.ph143.i.epil:                                 ; preds = %.lr.ph143.i.epil, %.lr.ph143.i.epil.preheader
  %.081142.i.epil = phi i64 [ %i.ed, %.lr.ph143.i.epil ], [ %.081142.i.epil.init, %.lr.ph143.i.epil.preheader ] ; 2 uses
  %epil.iter98 = phi i64 [ %epil.iter98.next, %.lr.ph143.i.epil ], [ 0, %.lr.ph143.i.epil.preheader ]
  %i.dy = getelementptr [8 x i8], ptr %i.n, i64 %.081142.i.epil ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11
  %i.eb = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.eb
  store i64 %i.ea, ptr %i.ec, align 8, !tbaa !11
  %i.ed = add nuw i64 %.081142.i.epil, 1
  %epil.iter98.next = add i64 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i64 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %.lr.ph145.split.preheader.i, label %.lr.ph143.i.epil, !llvm.loop !33

.lr.ph145.split.preheader.i:                      ; preds = %.lr.ph143.i.epil, %.lr.ph145.split.preheader.i.unr-lcssa
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %i.ee = add nsw i64 %i.bl, -1
  %xtraiter103 = and i64 %i.bl, 3                 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 3
  br i1 %i.ef, label %.lr.ph145.split.i.epil.preheader, label %.lr.ph145.split.preheader.i.new

.lr.ph145.split.preheader.i.new:                  ; preds = %.lr.ph145.split.preheader.i
  %unroll_iter109 = and i64 %i.bl, -4
  br label %.lr.ph145.split.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i, %.lr.ph143.i.preheader.new
  %.081142.i = phi i64 [ 1, %.lr.ph143.i.preheader.new ], [ %i.ex, %.lr.ph143.i ] ; 5 uses
  %niter102 = phi i64 [ 0, %.lr.ph143.i.preheader.new ], [ %niter102.next.3, %.lr.ph143.i ]
  %i.eg = getelementptr [8 x i8], ptr %i.n, i64 %.081142.i ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !11
  %i.ej = load i64, ptr %i.eg, align 8, !tbaa !11 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ej
  store i64 %i.ei, ptr %i.ek, align 8, !tbaa !11
  %i.el = getelementptr [8 x i8], ptr %i.n, i64 %.081142.i
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !11 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.en
  store i64 %i.ej, ptr %i.eo, align 8, !tbaa !11
  %i.ep = getelementptr [8 x i8], ptr %i.n, i64 %.081142.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !11 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.er
  store i64 %i.en, ptr %i.es, align 8, !tbaa !11
  %i.et = getelementptr [8 x i8], ptr %i.n, i64 %.081142.i
  %i.eu = getelementptr i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !11
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ev
  store i64 %i.er, ptr %i.ew, align 8, !tbaa !11
  %i.ex = add nuw i64 %.081142.i, 4               ; 2 uses
  %niter102.next.3 = add nuw i64 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.lr.ph145.split.preheader.i.unr-lcssa, label %.lr.ph143.i, !llvm.loop !34

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph145.split.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod107.not, label %.preheader.i, label %.lr.ph145.split.i.epil.preheader

.lr.ph145.split.i.epil.preheader:                 ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph145.split.preheader.i
  %.epil.init106 = phi i64 [ %.pre.i, %.lr.ph145.split.preheader.i ], [ %i.gc, %.preheader.i.loopexit.unr-lcssa ]
  %.082144.i.epil.init = phi i64 [ 0, %.lr.ph145.split.preheader.i ], [ %i.ga, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph145.split.i.epil

.lr.ph145.split.i.epil:                           ; preds = %.lr.ph145.split.i.epil, %.lr.ph145.split.i.epil.preheader
  %i.ey = phi i64 [ %i.fb, %.lr.ph145.split.i.epil ], [ %.epil.init106, %.lr.ph145.split.i.epil.preheader ]
  %.082144.i.epil = phi i64 [ %i.ez, %.lr.ph145.split.i.epil ], [ %.082144.i.epil.init, %.lr.ph145.split.i.epil.preheader ]
  %epil.iter104 = phi i64 [ %epil.iter104.next, %.lr.ph145.split.i.epil ], [ 0, %.lr.ph145.split.i.epil.preheader ]
  %i.ez = add nuw i64 %.082144.i.epil, 1          ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !11 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ey
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !11
  %epil.iter104.next = add i64 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i64 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %.preheader.i, label %.lr.ph145.split.i.epil, !llvm.loop !35

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph145.split.i.epil, %initHeap.exit.i, %._crit_edge.i.thread.i
  %i.fd = phi ptr [ %i.ai, %._crit_edge.i.thread.i ], [ %i.av, %initHeap.exit.i ], [ %i.av, %.lr.ph145.split.i.epil ], [ %i.av, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %i.fe = phi i64 [ -1, %._crit_edge.i.thread.i ], [ %i.bl, %initHeap.exit.i ], [ %i.bl, %.lr.ph145.split.i.epil ], [ %i.bl, %.preheader.i.loopexit.unr-lcssa ]
  %i.ff = phi ptr [ %i.ae, %._crit_edge.i.thread.i ], [ %i.n, %initHeap.exit.i ], [ %i.n, %.lr.ph145.split.i.epil ], [ %i.n, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %i.fg = phi ptr [ %i.ac, %._crit_edge.i.thread.i ], [ %i.d, %initHeap.exit.i ], [ %i.d, %.lr.ph145.split.i.epil ], [ %i.d, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %i.fh = phi ptr [ %i.ad, %._crit_edge.i.thread.i ], [ %i.i, %initHeap.exit.i ], [ %i.i, %.lr.ph145.split.i.epil ], [ %i.i, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %i.fi = phi ptr [ %i.af, %._crit_edge.i.thread.i ], [ %i.s, %initHeap.exit.i ], [ %i.s, %.lr.ph145.split.i.epil ], [ %i.s, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.val156190199.i = phi ptr [ %i.aj, %._crit_edge.i.thread.i ], [ %i.bm, %initHeap.exit.i ], [ %i.bm, %.lr.ph145.split.i.epil ], [ %i.bm, %.preheader.i.loopexit.unr-lcssa ]
  %i.fj = icmp sgt i32 %2, 0
  br i1 %i.fj, label %.lr.ph147.i, label %find_closest_pairs.exit

.lr.ph147.i:                                      ; preds = %.preheader.i
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %bb.y

.lr.ph145.split.i:                                ; preds = %.lr.ph145.split.i, %.lr.ph145.split.preheader.i.new
  %i.fn = phi i64 [ %.pre.i, %.lr.ph145.split.preheader.i.new ], [ %i.gc, %.lr.ph145.split.i ]
  %.082144.i = phi i64 [ 0, %.lr.ph145.split.preheader.i.new ], [ %i.ga, %.lr.ph145.split.i ] ; 4 uses
  %niter110 = phi i64 [ 0, %.lr.ph145.split.preheader.i.new ], [ %niter110.next.3, %.lr.ph145.split.i ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.082144.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fn
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !11
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.082144.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !11 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fq
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !11
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.082144.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !11 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fu
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !11
  %i.ga = add nuw i64 %.082144.i, 4               ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ga
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !11 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fy
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !11
  %niter110.next.3 = add nuw i64 %niter110, 4     ; 2 uses
  %niter110.ncmp.3 = icmp eq i64 %niter110.next.3, %unroll_iter109
  br i1 %niter110.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph145.split.i, !llvm.loop !36

bb.y:                                             ; preds = %bb.ar, %.lr.ph147.i
  %.083146.i = phi i32 [ 0, %.lr.ph147.i ], [ %i.it, %bb.ar ]
  %i.ge = load i64, ptr %i.fd, align 8, !tbaa !23 ; 3 uses
  %.not136.i = icmp eq i64 %i.ge, 0
  %.val.pre.pre157.i = load ptr, ptr %6, align 8, !tbaa !18 ; 12 uses
  br i1 %.not136.i, label %find_closest_pairs.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i = load i64, ptr %.val.pre.pre157.i, align 8, !tbaa !11 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.pre.pre157.i, i64 8
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !11 ; 6 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.pre.pre157.i, i64 16
  %.sroa.13.0.copyload.i = load double, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !25
  %i.gf = getelementptr [24 x i8], ptr %.val.pre.pre157.i, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.pre.pre157.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i64 24, i1 false), !tbaa.struct !30
  %i.gh = add i64 %i.ge, -1                       ; 3 uses
  store i64 %i.gh, ptr %i.fd, align 8, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.al, %bb.z
  %.036.i.i104.i = phi i64 [ 0, %bb.z ], [ %.138.i.i106.i, %bb.al ] ; 5 uses
  %i.gi = shl i64 %.036.i.i104.i, 1               ; 5 uses
  %i.gj = or disjoint i64 %i.gi, 1                ; 3 uses
  %i.gk = icmp ult i64 %i.gi, %i.gh
  br i1 %i.gk, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %i.gi
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !28 ; 2 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %.036.i.i104.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !28 ; 2 uses
  %i.gr = fcmp olt double %i.gn, %i.gq
  br i1 %i.gr, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gs = fcmp oeq double %i.gn, %i.gq
  br i1 %i.gs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gt = call i32 @rand() #18
  %i.gu = and i32 %i.gt, 1
  %.not.i.i109.i = icmp eq i32 %i.gu, 0
  br i1 %.not.i.i109.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %.037.i.i105.i = phi i64 [ %.036.i.i104.i, %bb.ae ], [ %i.gi, %bb.ad ], [ %i.gi, %bb.ab ] ; 4 uses
  %i.gv = icmp ult i64 %i.gj, %i.gh
  br i1 %i.gv, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %i.gj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !28 ; 2 uses
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %.037.i.i105.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !28 ; 2 uses
  %i.hc = fcmp olt double %i.gy, %i.hb
  br i1 %i.hc, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hd = fcmp oeq double %i.gy, %i.hb
  br i1 %i.hd, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.he = call i32 @rand() #18
  %i.hf = and i32 %i.he, 1
  %.not45.i.i108.i = icmp eq i32 %i.hf, 0
  br i1 %.not45.i.i108.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.138.i.i106.i = phi i64 [ %i.gj, %bb.aj ], [ %.037.i.i105.i, %bb.ai ], [ %.037.i.i105.i, %bb.ah ], [ %.037.i.i105.i, %bb.af ] ; 3 uses
  %i.hg = icmp eq i64 %.138.i.i106.i, %.036.i.i104.i
  br i1 %i.hg, label %extractMax.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %.138.i.i106.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %.036.i.i104.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.aa

extractMax.exit.i:                                ; preds = %bb.ak
  store i64 %.sroa.0.0.copyload.i, ptr %i.fk, align 8, !tbaa !11
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  store double %.sroa.13.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !25
  %i.hj = call i64 @gv_list_append_slot_(ptr noundef nonnull %8, i64 noundef 24) #18
  %i.hk = load ptr, ptr %8, align 8, !tbaa !37
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.hj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i64 24, i1 false), !tbaa.struct !30
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.sroa.0.0.copyload.i
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !11 ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.sroa.9.0.copyload.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !11 ; 3 uses
  %.not.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %extractMax.exit.i
  %i.hq = getelementptr [8 x i8], ptr %i.ff, i64 %i.hn
  %i.hr = getelementptr i8, ptr %i.hq, i64 -8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11 ; 4 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.hs ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !11
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !11
  %i.hx = icmp ult i64 %i.hw, %i.hp
  br i1 %i.hx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i64 %i.hs, ptr %7, align 8, !tbaa !38
  store i64 %.sroa.9.0.copyload.i, ptr %i.fl, align 8, !tbaa !39
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.9.0.copyload.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !25
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hs
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !25
  %i.ic = fsub double %i.hz, %i.ib
  store double %i.ic, ptr %i.fm, align 8, !tbaa !28
  call fastcc void @insert(ptr noundef %6, ptr noundef nonnull byval(%struct.Pair) align 8 %7)
  store i64 %.sroa.9.0.copyload.i, ptr %i.ht, align 8, !tbaa !11
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.9.0.copyload.i
  store i64 %i.hs, ptr %i.id, align 8, !tbaa !11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %extractMax.exit.i
  %i.ie = icmp ult i64 %i.hp, %i.fe
  br i1 %i.ie, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.hp
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !11 ; 4 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ih ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.ij
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !11
  %i.im = icmp ugt i64 %i.il, %i.hn
  br i1 %i.im, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i64 %.sroa.0.0.copyload.i, ptr %7, align 8, !tbaa !38
  store i64 %i.ih, ptr %i.fl, align 8, !tbaa !39
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ih
  %i.io = load double, ptr %i.in, align 8, !tbaa !25
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.0.copyload.i
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !25
  %i.ir = fsub double %i.io, %i.iq
  store double %i.ir, ptr %i.fm, align 8, !tbaa !28
  call fastcc void @insert(ptr noundef %6, ptr noundef nonnull byval(%struct.Pair) align 8 %7)
  store i64 %.sroa.0.0.copyload.i, ptr %i.ii, align 8, !tbaa !11
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.sroa.0.0.copyload.i
  store i64 %i.ih, ptr %i.is, align 8, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.it = add nuw nsw i32 %.083146.i, 1           ; 2 uses
  %exitcond154.not.i = icmp eq i32 %i.it, %2
  br i1 %exitcond154.not.i, label %.extractMax.exit.thread.loopexit_crit_edge.i, label %bb.y, !llvm.loop !40

.extractMax.exit.thread.loopexit_crit_edge.i:     ; preds = %bb.ar
  %.val.pre.pre.i = load ptr, ptr %6, align 8, !tbaa !18
  br label %find_closest_pairs.exit, !llvm.loop !40

find_closest_pairs.exit:                          ; preds = %bb.y, %.preheader.i, %.extractMax.exit.thread.loopexit_crit_edge.i
  %.val.i = phi ptr [ %.val156190199.i, %.preheader.i ], [ %.val.pre.pre.i, %.extractMax.exit.thread.loopexit_crit_edge.i ], [ %.val.pre.pre157.i, %bb.y ]
  call void @free(ptr noundef %i.fg) #18
  call void @free(ptr noundef %i.fh) #18
  call void @free(ptr noundef %i.ff) #18
  call void @free(ptr noundef %i.fi) #18
  call void @free(ptr noundef %.val.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %.not.i.i, label %.thread.i.i, label %bb.as

.thread.i.i:                                      ; preds = %find_closest_pairs.exit
  %i.iu = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #21
  br label %gv_calloc.exit.i11

bb.as:                                            ; preds = %find_closest_pairs.exit
  %mul.ov.i.i10 = icmp slt i32 %1, 0
  br i1 %mul.ov.i.i10, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.iv = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.iw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 4) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ix = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 4) #21 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.av, label %gv_calloc.exit.i11

bb.av:                                            ; preds = %bb.au
  %i.iz = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ja = shl nuw nsw i64 %i.a, 2
  %i.jb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iz, ptr noundef nonnull @.str.2, i64 noundef %i.ja) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit.i11:                               ; preds = %bb.au, %.thread.i.i
  %i.jc = phi ptr [ %i.iu, %.thread.i.i ], [ %i.ix, %bb.au ] ; 7 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.val.i12 = load i64, ptr %i.jd, align 8, !tbaa !41 ; 3 uses
  %i.je = shl i64 %.val.i12, 1
  %i.jf = add i64 %i.je, %i.a                     ; 11 uses
  %.not.i54.i = icmp eq i64 %i.jf, 0              ; 2 uses
  br i1 %.not.i54.i, label %.thread.i62.i, label %bb.aw

bb.aw:                                            ; preds = %gv_calloc.exit.i11
  %mul.ov.i56.i = icmp ugt i64 %i.jf, 4611686018427387903
  br i1 %mul.ov.i56.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jg, ptr noundef nonnull @.str.1, i64 noundef %i.jf, i64 noundef 4) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ji = call noalias ptr @calloc(i64 noundef %i.jf, i64 noundef 4) #21 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.az, label %gv_calloc.exit58.i

bb.az:                                            ; preds = %bb.ay
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jl = shl nuw i64 %i.jf, 2
  %i.jm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jk, ptr noundef nonnull @.str.2, i64 noundef %i.jl) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

.thread.i62.i:                                    ; preds = %gv_calloc.exit.i11
  %i.jn = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #21
  %i.jo = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #21
  br label %gv_calloc.exit63.i

gv_calloc.exit58.i:                               ; preds = %bb.ay
  %i.jp = call noalias ptr @calloc(i64 noundef %i.jf, i64 noundef 4) #21 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.ba, label %gv_calloc.exit63.i

bb.ba:                                            ; preds = %gv_calloc.exit58.i
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.js = shl nuw i64 %i.jf, 2
  %i.jt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jr, ptr noundef nonnull @.str.2, i64 noundef %i.js) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit63.i:                               ; preds = %gv_calloc.exit58.i, %.thread.i62.i
  %i.ju = phi ptr [ %i.jn, %.thread.i62.i ], [ %i.ji, %gv_calloc.exit58.i ] ; 2 uses
  %i.jv = phi ptr [ %i.jo, %.thread.i62.i ], [ %i.jp, %gv_calloc.exit58.i ] ; 4 uses
  br i1 %.not.i.i, label %.preheader83.i, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %gv_calloc.exit63.i
  %min.iters.check65 = icmp ult i32 %1, 8
  br i1 %min.iters.check65, label %.lr.ph.i13.preheader85, label %vector.ph66

vector.ph66:                                      ; preds = %.lr.ph.i13.preheader
  %n.vec67 = and i64 %i.a, -8                     ; 3 uses
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next70, %vector.body68 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %index69 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store <4 x i32> splat (i32 1), ptr %i.jw, align 4, !tbaa !43
  store <4 x i32> splat (i32 1), ptr %i.jx, align 4, !tbaa !43
  %index.next70 = add nuw i64 %index69, 8         ; 2 uses
  %i.jy = icmp eq i64 %index.next70, %n.vec67
  br i1 %i.jy, label %middle.block71, label %vector.body68, !llvm.loop !44

middle.block71:                                   ; preds = %vector.body68
  %cmp.n72 = icmp eq i64 %n.vec67, %i.a
  br i1 %cmp.n72, label %.preheader83.i, label %.lr.ph.i13.preheader85

.lr.ph.i13.preheader85:                           ; preds = %.lr.ph.i13.preheader, %middle.block71
  %.05184.i.ph = phi i64 [ 0, %.lr.ph.i13.preheader ], [ %n.vec67, %middle.block71 ]
  br label %.lr.ph.i13

.preheader83.i:                                   ; preds = %.lr.ph.i13, %middle.block71, %gv_calloc.exit63.i
  %.not100.i = icmp eq i64 %.val.i12, 0
  br i1 %.not100.i, label %.preheader.i16, label %.lr.ph86.i

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader85, %.lr.ph.i13
  %.05184.i = phi i64 [ %i.ka, %.lr.ph.i13 ], [ %.05184.i.ph, %.lr.ph.i13.preheader85 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.05184.i
  store i32 1, ptr %i.jz, align 4, !tbaa !43
  %i.ka = add nuw i64 %.05184.i, 1                ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %i.ka, %i.a
  br i1 %exitcond.not.i14, label %.preheader83.i, label %.lr.ph.i13, !llvm.loop !45

.preheader.i16:                                   ; preds = %.lr.ph86.i, %.preheader83.i
  br i1 %.not.i54.i, label %._crit_edge.i17, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.preheader.i16
  %min.iters.check75 = icmp ult i64 %i.jf, 8
  br i1 %min.iters.check75, label %.lr.ph88.i.preheader84, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph88.i.preheader
  %n.vec77 = and i64 %i.jf, -8                    ; 3 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next80, %vector.body78 ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index79 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.kb, align 4, !tbaa !46
  store <4 x float> splat (float 1.000000e+00), ptr %i.kc, align 4, !tbaa !46
  %index.next80 = add nuw i64 %index79, 8         ; 2 uses
  %i.kd = icmp eq i64 %index.next80, %n.vec77
  br i1 %i.kd, label %middle.block81, label %vector.body78, !llvm.loop !48

middle.block81:                                   ; preds = %vector.body78
  %cmp.n82 = icmp eq i64 %i.jf, %n.vec77
  br i1 %cmp.n82, label %._crit_edge.i17, label %.lr.ph88.i.preheader84

.lr.ph88.i.preheader84:                           ; preds = %.lr.ph88.i.preheader, %middle.block81
  %.04987.i.ph = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %n.vec77, %middle.block81 ]
  br label %.lr.ph88.i

.lr.ph86.i:                                       ; preds = %.preheader83.i, %.lr.ph86.i
  %.05085.i = phi i64 [ %i.kn, %.lr.ph86.i ], [ 0, %.preheader83.i ] ; 2 uses
  %i.ke = load ptr, ptr %8, align 8, !tbaa !37
  %i.kf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.05085.i) #18
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.ke, i64 %i.kf ; 2 uses
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.kg, align 8, !tbaa !11
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !11
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.sroa.0.0.copyload.i15 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !43
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !43
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.sroa.6.0.copyload.i ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !43
  %i.km = add nsw i32 %i.kl, 1
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !43
  %i.kn = add nuw i64 %.05085.i, 1                ; 2 uses
  %exitcond103.not.i = icmp eq i64 %i.kn, %.val.i12
  br i1 %exitcond103.not.i, label %.preheader.i16, label %.lr.ph86.i, !llvm.loop !49

._crit_edge.i17:                                  ; preds = %.lr.ph88.i, %middle.block81, %.preheader.i16
  br i1 %.not.i.i, label %gv_calloc.exit68.thread.i, label %bb.bb

gv_calloc.exit68.thread.i:                        ; preds = %._crit_edge.i17
  %i.ko = call noalias ptr @calloc(i64 noundef 0, i64 noundef 40) #21
  br label %._crit_edge93.i

bb.bb:                                            ; preds = %._crit_edge.i17
  %i.kp = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.a, i64 noundef 40) #21 ; 6 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.bc, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %bb.bb
  %i.kr = icmp eq i32 %1, 1
  br i1 %i.kr, label %.lr.ph92.i.epil.preheader, label %.lr.ph92.i.preheader.new

.lr.ph92.i.preheader.new:                         ; preds = %.lr.ph92.i.preheader
  %unroll_iter115 = and i64 %i.a, -2
  br label %.lr.ph92.i

bb.bc:                                            ; preds = %bb.bb
  %i.ks = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.kt = mul nuw nsw i64 %i.a, 40
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.2, i64 noundef %i.kt) #19 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader84, %.lr.ph88.i
  %.04987.i = phi i64 [ %i.kw, %.lr.ph88.i ], [ %.04987.i.ph, %.lr.ph88.i.preheader84 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.04987.i
  store float 1.000000e+00, ptr %i.kv, align 4, !tbaa !46
  %i.kw = add nuw i64 %.04987.i, 1                ; 2 uses
  %exitcond104.not.i = icmp eq i64 %i.kw, %i.jf
  br i1 %exitcond104.not.i, label %._crit_edge.i17, label %.lr.ph88.i, !llvm.loop !50

._crit_edge93.i.loopexit.unr-lcssa:               ; preds = %.lr.ph92.i
  %i.kx = and i32 %1, 1
  %lcmp.mod113.not = icmp eq i32 %i.kx, 0
  br i1 %lcmp.mod113.not, label %._crit_edge93.i, label %.lr.ph92.i.epil.preheader

.lr.ph92.i.epil.preheader:                        ; preds = %._crit_edge93.i.loopexit.unr-lcssa, %.lr.ph92.i.preheader
  %.091.i.epil.init = phi i64 [ 0, %.lr.ph92.i.preheader ], [ %i.lz, %._crit_edge93.i.loopexit.unr-lcssa ] ; 2 uses
  %.04890.i.epil.init = phi ptr [ %i.ju, %.lr.ph92.i.preheader ], [ %i.ly, %._crit_edge93.i.loopexit.unr-lcssa ] ; 2 uses
  %.05289.i.epil.init = phi ptr [ %i.jv, %.lr.ph92.i.preheader ], [ %i.lx, %._crit_edge93.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod114 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.ky = getelementptr inbounds nuw [40 x i8], ptr %i.kp, i64 %.091.i.epil.init ; 3 uses
  store i64 1, ptr %i.ky, align 8, !tbaa !51
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store ptr %.05289.i.epil.init, ptr %i.kz, align 8, !tbaa !56
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store ptr %.04890.i.epil.init, ptr %i.la, align 8, !tbaa !57
  %i.lb = trunc i64 %.091.i.epil.init to i32
  store i32 %i.lb, ptr %.04890.i.epil.init, align 4, !tbaa !43
  store float 0.000000e+00, ptr %.05289.i.epil.init, align 4, !tbaa !46
  br label %._crit_edge93.i

._crit_edge93.i:                                  ; preds = %.lr.ph92.i.epil.preheader, %._crit_edge93.i.loopexit.unr-lcssa, %gv_calloc.exit68.thread.i
  %i.lc = phi ptr [ %i.ko, %gv_calloc.exit68.thread.i ], [ %i.kp, %._crit_edge93.i.loopexit.unr-lcssa ], [ %i.kp, %.lr.ph92.i.epil.preheader ] ; 4 uses
  call void @free(ptr noundef %i.jc) #18
  %.val16.i94.i = load i64, ptr %i.jd, align 8, !tbaa !41 ; 2 uses
  %.not95.i = icmp eq i64 %.val16.i94.i, 0
  br i1 %.not95.i, label %._crit_edge, label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %._crit_edge93.i
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.le = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  br label %bb.bd

.lr.ph92.i:                                       ; preds = %.lr.ph92.i, %.lr.ph92.i.preheader.new
  %.091.i = phi i64 [ 0, %.lr.ph92.i.preheader.new ], [ %i.lz, %.lr.ph92.i ] ; 5 uses
  %.04890.i = phi ptr [ %i.ju, %.lr.ph92.i.preheader.new ], [ %i.ly, %.lr.ph92.i ] ; 3 uses
  %.05289.i = phi ptr [ %i.jv, %.lr.ph92.i.preheader.new ], [ %i.lx, %.lr.ph92.i ] ; 3 uses
  %niter116 = phi i64 [ 0, %.lr.ph92.i.preheader.new ], [ %niter116.next.1, %.lr.ph92.i ]
  %i.lg = getelementptr inbounds nuw [40 x i8], ptr %i.kp, i64 %.091.i ; 3 uses
  store i64 1, ptr %i.lg, align 8, !tbaa !51
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store ptr %.05289.i, ptr %i.lh, align 8, !tbaa !56
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %.04890.i, ptr %i.li, align 8, !tbaa !57
  %i.lj = trunc i64 %.091.i to i32
  store i32 %i.lj, ptr %.04890.i, align 4, !tbaa !43
  store float 0.000000e+00, ptr %.05289.i, align 4, !tbaa !46
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.091.i
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !43
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  %i.ln = getelementptr inbounds [4 x i8], ptr %.05289.i, i64 %i.lm ; 3 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %.04890.i, i64 %i.lm ; 3 uses
  %i.lp = or disjoint i64 %.091.i, 1              ; 3 uses
  %i.lq = getelementptr inbounds nuw [40 x i8], ptr %i.kp, i64 %i.lp ; 3 uses
  store i64 1, ptr %i.lq, align 8, !tbaa !51
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store ptr %i.ln, ptr %i.lr, align 8, !tbaa !56
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store ptr %i.lo, ptr %i.ls, align 8, !tbaa !57
  %i.lt = trunc i64 %i.lp to i32
  store i32 %i.lt, ptr %i.lo, align 4, !tbaa !43
  store float 0.000000e+00, ptr %i.ln, align 4, !tbaa !46
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.lp
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !43
  %i.lw = sext i32 %i.lv to i64                   ; 2 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lw ; 2 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.lw ; 2 uses
  %i.lz = add nuw i64 %.091.i, 2                  ; 2 uses
  %niter116.next.1 = add i64 %niter116, 2         ; 2 uses
  %niter116.ncmp.1 = icmp eq i64 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %._crit_edge93.i.loopexit.unr-lcssa, label %.lr.ph92.i, !llvm.loop !58

bb.bd:                                            ; preds = %add_edge.exit.i, %.lr.ph98.i
  %.val16.i96.i = phi i64 [ %.val16.i94.i, %.lr.ph98.i ], [ %.val16.i.i, %add_edge.exit.i ]
  %i.ma = load ptr, ptr %8, align 8, !tbaa !37
  %i.mb = add i64 %.val16.i96.i, -1
  %i.mc = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %i.mb) #18
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %i.ma, i64 %i.mc ; 2 uses
  %.sroa.0.0.copyload71.i = load i64, ptr %i.md, align 8, !tbaa !11 ; 2 uses
  %.sroa.6.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %.sroa.6.0.copyload73.i = load i64, ptr %.sroa.6.0..sroa_idx72.i, align 8, !tbaa !11 ; 2 uses
  %.val.i.i = load i64, ptr %i.jd, align 8, !tbaa !41
  %i.me = add i64 %.val.i.i, -1
  %i.mf = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %i.me) #18
  %i.mg = load ptr, ptr %i.ld, align 8, !tbaa !59 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %i.mg to i64
  switch i64 %magicptr.i.i, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  %i.mh = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.mi = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.mh) #22 ; 0 uses
  call void @abort() #23
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.mj = load ptr, ptr %8, align 8, !tbaa !37
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %i.mj, i64 %i.mf
  call void %i.mg(ptr noundef byval(%struct.Pair) align 8 %i.mk) #18, !inline_history !61
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  call void @gv_list_pop_back_(ptr noundef nonnull %8, ptr noundef nonnull %i.le, i64 noundef 24) #18
  %i.ml = trunc i64 %.sroa.0.0.copyload71.i to i32
  %i.mm = trunc i64 %.sroa.6.0.copyload73.i to i32 ; 2 uses
  %sext.i = shl i64 %.sroa.0.0.copyload71.i, 32
  %i.mn = ashr exact i64 %sext.i, 32
  %i.mo = getelementptr inbounds [40 x i8], ptr %i.lc, i64 %i.mn ; 4 uses
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !51 ; 4 uses
  %.not30.i.i = icmp eq i64 %i.mp, 0
  %.phi.trans.insert.i.i18 = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %.pre.i.i19 = load ptr, ptr %.phi.trans.insert.i.i18, align 8, !tbaa !57 ; 2 uses
  br i1 %.not30.i.i, label %._crit_edge.i.i21, label %.lr.ph.i.i

bb.bh:                                            ; preds = %.lr.ph.i.i
  %i.mq = add nuw i64 %.02328.i.i, 1              ; 2 uses
  %exitcond.not.i.i20 = icmp eq i64 %i.mq, %i.mp
  br i1 %exitcond.not.i.i20, label %._crit_edge.i.i21, label %.lr.ph.i.i, !llvm.loop !62

.lr.ph.i.i:                                       ; preds = %bb.bg, %bb.bh
  %.02328.i.i = phi i64 [ %i.mq, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i19, i64 %.02328.i.i
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !43
  %i.mt = icmp eq i32 %i.ms, %i.mm
  br i1 %i.mt, label %add_edge.exit.i, label %bb.bh

._crit_edge.i.i21:                                ; preds = %bb.bh, %bb.bg
  %i.mu = add i64 %i.mp, 1
  store i64 %i.mu, ptr %i.mo, align 8, !tbaa !51
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i19, i64 %i.mp
  store i32 %i.mm, ptr %i.mv, align 4, !tbaa !43
  %sext82.i = shl i64 %.sroa.6.0.copyload73.i, 32
  %i.mw = ashr exact i64 %sext82.i, 32
  %i.mx = getelementptr inbounds [40 x i8], ptr %i.lc, i64 %i.mw ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !57
  %i.na = load i64, ptr %i.mx, align 8, !tbaa !51 ; 2 uses
  %i.nb = add i64 %i.na, 1
  store i64 %i.nb, ptr %i.mx, align 8, !tbaa !51
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.na
  store i32 %i.ml, ptr %i.nc, align 4, !tbaa !43
  %i.nd = load ptr, ptr %i.lf, align 8, !tbaa !56
  %.not.i69.i = icmp eq ptr %i.nd, null
  br i1 %.not.i69.i, label %add_edge.exit.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i.i21
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !56 ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !46
  %i.nh = fadd float %i.ng, -1.000000e+00
  store float %i.nh, ptr %i.nf, align 4, !tbaa !46
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !56 ; 2 uses
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !46
  %i.nl = fadd float %i.nk, -1.000000e+00
  store float %i.nl, ptr %i.nj, align 4, !tbaa !46
  br label %add_edge.exit.i

add_edge.exit.i:                                  ; preds = %.lr.ph.i.i, %bb.bi, %._crit_edge.i.i21
  %.val16.i.i = load i64, ptr %i.jd, align 8, !tbaa !41 ; 2 uses
  %.not.i22 = icmp eq i64 %.val16.i.i, 0
  br i1 %.not.i22, label %._crit_edge, label %bb.bd, !llvm.loop !63

._crit_edge:                                      ; preds = %add_edge.exit.i, %._crit_edge93.i
  store ptr %i.lc, ptr %3, align 8, !tbaa !17
  call void @gv_list_clear_(ptr noundef nonnull %8, i64 noundef 24) #18
  call void @gv_list_free_(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.a
  %i.c = load double, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !25 ; 2 uses
  %i.g = fcmp olt double %i.c, %i.f
  %i.h = fcmp ogt double %i.c, %i.f
  %. = zext i1 %i.h to i32
  %.0 = select i1 %i.g, i32 -1, i32 %.
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly byval(%struct.Pair) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [24 x i8], align 16                 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %i.e = icmp eq i64 %i.b, %i.d
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !18  ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.b, 1                          ; 4 uses
  %i.g = icmp ugt i64 %i.f, 768614336404564650
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef %i.f, i64 noundef 24) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = mul i64 %i.b, 24                         ; 3 uses
  %i.k = mul i64 %i.b, 48                         ; 3 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %.pre40) #18
  br label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.d
  %i.m = tail call ptr @realloc(ptr noundef %.pre40, i64 noundef range(i64 0, -15) %i.k) #24 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, i64 noundef range(i64 0, -15) %i.k) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = icmp ugt i64 %i.k, %i.j
  br i1 %i.q, label %bb.i, label %gv_recalloc.exit

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.j, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.e, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.e ], [ %i.m, %bb.i ], [ %i.m, %bb.h ] ; 2 uses
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !18
  store i64 %i.f, ptr %i.c, align 8, !tbaa !24
  %.pre = load i64, ptr %i.a, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %gv_recalloc.exit, %bb.a
  %i.s = phi ptr [ %.0.i.i, %gv_recalloc.exit ], [ %.pre40, %bb.a ]
  %i.t = phi i64 [ %.pre, %gv_recalloc.exit ], [ %i.b, %bb.a ]
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.a, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !30
  %.not36 = icmp eq i64 %i.b, 0
  br i1 %.not36, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.critedge2
  %.037 = phi i64 [ %i.aa, %.critedge2 ], [ %i.b, %bb.j ] ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.037
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !28 ; 2 uses
  %i.aa = lshr i64 %.037, 1                       ; 5 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.ae = fcmp olt double %i.z, %i.ad
  br i1 %i.ae, label %.critedge2, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.af = fcmp oeq double %i.z, %i.ad
  br i1 %i.af, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call i32 @rand() #18
  %i.ah = and i32 %i.ag, 1
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %.critedge, label %..critedge2_crit_edge

..critedge2_crit_edge:                            ; preds = %bb.l
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !18
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %.lr.ph
  %i.ai = phi ptr [ %.pre41, %..critedge2_crit_edge ], [ %i.w, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.037 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !tbaa.struct !30
  %i.al = load ptr, ptr %0, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 16 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !64

.critedge:                                        ; preds = %bb.l, %bb.k, %.critedge2, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #8 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @gv_sort_compar_wrapper(ptr noundef %0, ptr noundef %1) #13 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_compar)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_arg)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = tail call i32 %i.b(ptr noundef %0, ptr noundef %1, ptr noundef %i.d) #18
  ret i32 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #14

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare hidden void @gv_list_pop_back_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { cold }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { cold noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!10, !10, i64 0}
!18 = !{!19, !10, i64 0}
!19 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16}
!20 = distinct !{!20, !14, !16, !15}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!19, !12, i64 8}
!24 = !{!19, !12, i64 16}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = distinct !{!27, !14}
!28 = !{!29, !26, i64 16}
!29 = !{!"", !12, i64 0, !12, i64 8, !26, i64 16}
!30 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !25}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !14}
!37 = !{!6, !6, i64 0}
!38 = !{!29, !12, i64 0}
!39 = !{!29, !12, i64 8}
!40 = distinct !{!40, !14}
!41 = !{!42, !12, i64 16}
!42 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!43 = !{!5, !5, i64 0}
!44 = distinct !{!44, !14, !15, !16}
!45 = distinct !{!45, !14, !16, !15}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !6, i64 0}
!48 = distinct !{!48, !14, !15, !16}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14, !16, !15}
!51 = !{!52, !12, i64 0}
!52 = !{!"", !12, i64 0, !53, i64 8, !54, i64 16, !54, i64 24, !55, i64 32}
!53 = !{!"p1 int", !10, i64 0}
!54 = !{!"p1 float", !10, i64 0}
!55 = !{!"p1 omnipotent char", !10, i64 0}
!56 = !{!52, !54, i64 16}
!57 = !{!52, !53, i64 8}
!58 = distinct !{!58, !14}
!59 = !{!60, !10, i64 32}
!60 = !{!"", !6, i64 0, !10, i64 32, !29, i64 40}
!61 = distinct !{null, null}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
end_hunk_0
