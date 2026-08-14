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
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 4 uses
  %4 = alloca %struct.PairHeap, align 8           ; 12 uses
  %5 = alloca %struct.Pair, align 8               ; 9 uses
  %6 = alloca %struct.pairs_t, align 8            ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %i.c = sext i32 %1 to i64                       ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.not.i.i = icmp eq i32 %1, 0                   ; 4 uses
  br i1 %.not.i.i, label %._crit_edge.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) #21 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %gv_calloc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.i = shl nuw nsw i64 %i.c, 3
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.2, i64 noundef %i.i) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.d
  %i.k = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) #21 ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %gv_calloc.exit.i
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.n = shl nuw nsw i64 %i.c, 3
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.2, i64 noundef %i.n) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

bb.g:                                             ; preds = %gv_calloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.p = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) #21 ; 27 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %gv_calloc.exit96.i

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.s = shl nuw nsw i64 %i.c, 3
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef %i.s) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit96.i:                               ; preds = %bb.g
  %i.u = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8) #21 ; 9 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %gv_calloc.exit96.i
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.c, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %vec.ind, ptr %i.w, align 8, !tbaa !11
  store <2 x i64> %step.add, ptr %i.x, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader87

.lr.ph.i.preheader87:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.0138.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

bb.i:                                             ; preds = %gv_calloc.exit96.i
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aa = shl nuw nsw i64 %i.c, 3
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.2, i64 noundef %i.aa) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %i.ac = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_compar) ; 2 uses
  store ptr @cmp, ptr %i.ac, align 8, !tbaa !17
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_arg) ; 2 uses
  store ptr %0, ptr %i.ad, align 8, !tbaa !17
  %.not201.i = icmp eq i32 %1, 1                  ; 3 uses
  br i1 %.not201.i, label %.lr.ph140.preheader.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  tail call void @qsort(ptr noundef nonnull %i.p, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 8, ptr noundef nonnull @gv_sort_compar_wrapper) #18
  br label %.lr.ph140.preheader.i

._crit_edge.i.thread.i:                           ; preds = %bb.a
  %i.ae = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.af = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ag = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.ah = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #21
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_compar)
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @gv_sort_arg)
  store ptr null, ptr %i.ai, align 8, !tbaa !17
  store ptr null, ptr %i.aj, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #21 ; 2 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !18
  br label %.preheader.i

.lr.ph140.preheader.i:                            ; preds = %bb.j, %._crit_edge.i
  store ptr null, ptr %i.ac, align 8, !tbaa !17
  store ptr null, ptr %i.ad, align 8, !tbaa !17
  %xtraiter = and i64 %i.c, 3
  %i.am = icmp ult i32 %1, 4
  br i1 %i.am, label %.lr.ph140.i.epil.preheader, label %.lr.ph140.preheader.i.new

.lr.ph140.preheader.i.new:                        ; preds = %.lr.ph140.preheader.i
  %unroll_iter = and i64 %i.c, 2147483644
  br label %.lr.ph140.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader87, %.lr.ph.i
  %.0138.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.0138.i.ph, %.lr.ph.i.preheader87 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.0138.i
  store i64 %.0138.i, ptr %i.an, align 8, !tbaa !11
  %i.ao = add nuw i64 %.0138.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

._crit_edge141.i.unr-lcssa:                       ; preds = %.lr.ph140.i
  %i.ap = and i32 %1, 3
  %lcmp.mod.not = icmp eq i32 %i.ap, 0
  br i1 %lcmp.mod.not, label %._crit_edge141.i, label %.lr.ph140.i.epil.preheader

.lr.ph140.i.epil.preheader:                       ; preds = %._crit_edge141.i.unr-lcssa, %.lr.ph140.preheader.i
  %.080139.i.epil.init = phi i64 [ 0, %.lr.ph140.preheader.i ], [ %i.dy, %._crit_edge141.i.unr-lcssa ]
  %i.aq = and i32 %1, 3
  %lcmp.mod88 = icmp ne i32 %i.aq, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph140.i.epil

.lr.ph140.i.epil:                                 ; preds = %.lr.ph140.i.epil, %.lr.ph140.i.epil.preheader
  %.080139.i.epil = phi i64 [ %i.au, %.lr.ph140.i.epil ], [ %.080139.i.epil.init, %.lr.ph140.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph140.i.epil ], [ 0, %.lr.ph140.i.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.080139.i.epil
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.as
  store i64 %.080139.i.epil, ptr %i.at, align 8, !tbaa !11
  %i.au = add nuw i64 %.080139.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge141.i, label %.lr.ph140.i.epil, !llvm.loop !21

._crit_edge141.i:                                 ; preds = %.lr.ph140.i.epil, %._crit_edge141.i.unr-lcssa
  %i.av = add nsw i64 %i.c, -1                    ; 13 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !24
  br i1 %.not201.i, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge141.i
  %i.ay = tail call noalias ptr @calloc(i64 noundef %i.av, i64 noundef 24) #21 ; 7 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.l, label %.lr.ph.split.preheader.i.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bb = mul nuw nsw i64 %i.av, 24
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.2, i64 noundef %i.bb) #19 ; 0 uses
  tail call fastcc void @graphviz_exit() #20
  unreachable

.lr.ph.split.preheader.i.i:                       ; preds = %bb.k
  store ptr %i.ay, ptr %4, align 8, !tbaa !18
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !11 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre.i.i
  %.pre33.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25 ; 2 uses
  %xtraiter89 = and i64 %i.av, 1
  %i.bd = icmp eq i32 %1, 2
  br i1 %i.bd, label %.lr.ph.split.i.i.epil.preheader, label %.lr.ph.split.preheader.i.i.new

.lr.ph.split.preheader.i.i.new:                   ; preds = %.lr.ph.split.preheader.i.i
  %unroll_iter95 = and i64 %i.av, -2
  br label %.lr.ph.split.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge141.i
  %i.be = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 24) #21 ; 2 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !18
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.split.i.i
  %lcmp.mod93.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod93.not, label %.preheader.preheader.i.i, label %.lr.ph.split.i.i.epil.preheader

.lr.ph.split.i.i.epil.preheader:                  ; preds = %.preheader.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.split.preheader.i.i
  %.epil.init = phi double [ %.pre33.i.i, %.lr.ph.split.preheader.i.i ], [ %i.cc, %.preheader.preheader.i.i.loopexit.unr-lcssa ]
  %.epil.init92 = phi i64 [ %.pre.i.i, %.lr.ph.split.preheader.i.i ], [ %i.ca, %.preheader.preheader.i.i.loopexit.unr-lcssa ]
  %.02830.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.preheader.i.i ], [ %i.by, %.preheader.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.02830.i.i.epil.init
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25
  %i.bk = fsub double %i.bj, %.epil.init
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.02830.i.i.epil.init ; 3 uses
  store i64 %.epil.init92, ptr %i.bl, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i.i.epil, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store double %i.bk, ptr %.sroa.5.0..sroa_idx.i.i.epil, align 8, !tbaa !25
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.split.i.i.epil.preheader, %.preheader.preheader.i.i.loopexit.unr-lcssa, %._crit_edge.i.i
  %i.bm = phi i64 [ 0, %._crit_edge.i.i ], [ %i.av, %.preheader.preheader.i.i.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.split.i.i.epil.preheader ] ; 7 uses
  %i.bn = phi ptr [ %i.be, %._crit_edge.i.i ], [ %i.ay, %.preheader.preheader.i.i.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.split.i.i.epil.preheader ] ; 9 uses
  %i.bo = lshr i64 %i.bm, 1
  br label %.preheader.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.preheader.i.i.new
  %i.bp = phi double [ %.pre33.i.i, %.lr.ph.split.preheader.i.i.new ], [ %i.cc, %.lr.ph.split.i.i ]
  %i.bq = phi i64 [ %.pre.i.i, %.lr.ph.split.preheader.i.i.new ], [ %i.ca, %.lr.ph.split.i.i ]
  %.02830.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.new ], [ %i.by, %.lr.ph.split.i.i ] ; 3 uses
  %niter96 = phi i64 [ 0, %.lr.ph.split.preheader.i.i.new ], [ %niter96.next.1, %.lr.ph.split.i.i ]
  %i.br = or disjoint i64 %.02830.i.i, 1          ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !25 ; 2 uses
  %i.bw = fsub double %i.bv, %i.bp
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.02830.i.i ; 3 uses
  store i64 %i.bq, ptr %i.bx, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.bt, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store double %i.bw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !25
  %i.by = add nuw i64 %.02830.i.i, 2              ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.by
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11 ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !25 ; 3 uses
  %i.cd = fsub double %i.cc, %i.bv
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.br ; 3 uses
  store i64 %i.bt, ptr %i.ce, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %i.ca, ptr %.sroa.4.0..sroa_idx.i.i.1, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store double %i.cd, ptr %.sroa.5.0..sroa_idx.i.i.1, align 8, !tbaa !25
  %niter96.next.1 = add nuw i64 %niter96, 2       ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %.preheader.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.split.i.i, !llvm.loop !27

.preheader.i.i:                                   ; preds = %heapify.exit.i.i, %.preheader.preheader.i.i
  %.031.i.i = phi i64 [ %i.dg, %heapify.exit.i.i ], [ %i.bo, %.preheader.preheader.i.i ] ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %.preheader.i.i
  %.036.i.i.i = phi i64 [ %.138.i.i.i, %bb.x ], [ %.031.i.i, %.preheader.i.i ] ; 5 uses
  %i.cf = shl i64 %.036.i.i.i, 1                  ; 5 uses
  %i.cg = or disjoint i64 %i.cf, 1                ; 3 uses
  %i.ch = icmp ult i64 %i.cf, %i.av
  br i1 %i.ch, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !28 ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.036.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !28 ; 2 uses
  %i.co = fcmp olt double %i.ck, %i.cn
  br i1 %i.co, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = fcmp oeq double %i.ck, %i.cn
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = tail call i32 @rand() #18
  %i.cr = and i32 %i.cq, 1
  %.not.i29.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i29.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.037.i.i.i = phi i64 [ %.036.i.i.i, %bb.q ], [ %i.cf, %bb.p ], [ %i.cf, %bb.n ] ; 4 uses
  %i.cs = icmp ult i64 %i.cg, %i.av
  br i1 %i.cs, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.cg
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !28 ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.037.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  %i.cz = fcmp olt double %i.cv, %i.cy
  br i1 %i.cz, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = fcmp oeq double %i.cv, %i.cy
  br i1 %i.da, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.db = tail call i32 @rand() #18
  %i.dc = and i32 %i.db, 1
  %.not45.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not45.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %.138.i.i.i = phi i64 [ %i.cg, %bb.v ], [ %.037.i.i.i, %bb.u ], [ %.037.i.i.i, %bb.t ], [ %.037.i.i.i, %bb.r ] ; 3 uses
  %i.dd = icmp eq i64 %.138.i.i.i, %.036.i.i.i
  br i1 %i.dd, label %heapify.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.138.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.036.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !tbaa.struct !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 16 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

heapify.exit.i.i:                                 ; preds = %bb.w
  %i.dg = add nsw i64 %.031.i.i, -1
  %.not.i102.i = icmp eq i64 %.031.i.i, 0
  br i1 %.not.i102.i, label %initHeap.exit.i, label %.preheader.i.i, !llvm.loop !31

initHeap.exit.i:                                  ; preds = %heapify.exit.i.i
  br i1 %.not201.i, label %.preheader.i, label %.lr.ph143.i.preheader

.lr.ph143.i.preheader:                            ; preds = %initHeap.exit.i
  %i.dh = add nsw i64 %i.c, -2
  %xtraiter97 = and i64 %i.av, 3                  ; 3 uses
  %i.di = icmp ult i64 %i.dh, 3
  br i1 %i.di, label %.lr.ph143.i.epil.preheader, label %.lr.ph143.i.preheader.new

.lr.ph143.i.preheader.new:                        ; preds = %.lr.ph143.i.preheader
  %unroll_iter101 = and i64 %i.av, -4
  br label %.lr.ph143.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i, %.lr.ph140.preheader.i.new
  %.080139.i = phi i64 [ 0, %.lr.ph140.preheader.i.new ], [ %i.dy, %.lr.ph140.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph140.preheader.i.new ], [ %niter.next.3, %.lr.ph140.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.080139.i
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.dk
  store i64 %.080139.i, ptr %i.dl, align 8, !tbaa !11
  %i.dm = or disjoint i64 %.080139.i, 1           ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.do
  store i64 %i.dm, ptr %i.dp, align 8, !tbaa !11
  %i.dq = or disjoint i64 %.080139.i, 2           ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !11
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ds
  store i64 %i.dq, ptr %i.dt, align 8, !tbaa !11
  %i.du = or disjoint i64 %.080139.i, 3           ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !11
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.dw
  store i64 %i.du, ptr %i.dx, align 8, !tbaa !11
  %i.dy = add nuw i64 %.080139.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge141.i.unr-lcssa, label %.lr.ph140.i, !llvm.loop !32

.lr.ph145.split.preheader.i.unr-lcssa:            ; preds = %.lr.ph143.i
  %lcmp.mod99.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %.lr.ph145.split.preheader.i, label %.lr.ph143.i.epil.preheader

.lr.ph143.i.epil.preheader:                       ; preds = %.lr.ph145.split.preheader.i.unr-lcssa, %.lr.ph143.i.preheader
  %.081142.i.epil.init = phi i64 [ 1, %.lr.ph143.i.preheader ], [ %i.ey, %.lr.ph145.split.preheader.i.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph143.i.epil

.lr.ph143.i.epil:                                 ; preds = %.lr.ph143.i.epil, %.lr.ph143.i.epil.preheader
  %.081142.i.epil = phi i64 [ %i.ee, %.lr.ph143.i.epil ], [ %.081142.i.epil.init, %.lr.ph143.i.epil.preheader ] ; 2 uses
  %epil.iter98 = phi i64 [ %epil.iter98.next, %.lr.ph143.i.epil ], [ 0, %.lr.ph143.i.epil.preheader ]
  %i.dz = getelementptr [8 x i8], ptr %i.p, i64 %.081142.i.epil ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !11
  %i.ec = load i64, ptr %i.dz, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ec
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !11
  %i.ee = add nuw i64 %.081142.i.epil, 1
  %epil.iter98.next = add i64 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i64 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %.lr.ph145.split.preheader.i, label %.lr.ph143.i.epil, !llvm.loop !33

.lr.ph145.split.preheader.i:                      ; preds = %.lr.ph143.i.epil, %.lr.ph145.split.preheader.i.unr-lcssa
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !11 ; 2 uses
  %i.ef = add nsw i64 %i.bm, -1
  %xtraiter103 = and i64 %i.bm, 3                 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 3
  br i1 %i.eg, label %.lr.ph145.split.i.epil.preheader, label %.lr.ph145.split.preheader.i.new

.lr.ph145.split.preheader.i.new:                  ; preds = %.lr.ph145.split.preheader.i
  %unroll_iter109 = and i64 %i.bm, -4
  br label %.lr.ph145.split.i

.lr.ph143.i:                                      ; preds = %.lr.ph143.i, %.lr.ph143.i.preheader.new
  %.081142.i = phi i64 [ 1, %.lr.ph143.i.preheader.new ], [ %i.ey, %.lr.ph143.i ] ; 5 uses
  %niter102 = phi i64 [ 0, %.lr.ph143.i.preheader.new ], [ %niter102.next.3, %.lr.ph143.i ]
  %i.eh = getelementptr [8 x i8], ptr %i.p, i64 %.081142.i ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !11
  %i.ek = load i64, ptr %i.eh, align 8, !tbaa !11 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ek
  store i64 %i.ej, ptr %i.el, align 8, !tbaa !11
  %i.em = getelementptr [8 x i8], ptr %i.p, i64 %.081142.i
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !11 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eo
  store i64 %i.ek, ptr %i.ep, align 8, !tbaa !11
  %i.eq = getelementptr [8 x i8], ptr %i.p, i64 %.081142.i
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !11 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.es
  store i64 %i.eo, ptr %i.et, align 8, !tbaa !11
  %i.eu = getelementptr [8 x i8], ptr %i.p, i64 %.081142.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !11
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ew
  store i64 %i.es, ptr %i.ex, align 8, !tbaa !11
  %i.ey = add nuw i64 %.081142.i, 4               ; 2 uses
  %niter102.next.3 = add nuw i64 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.lr.ph145.split.preheader.i.unr-lcssa, label %.lr.ph143.i, !llvm.loop !34

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph145.split.i
  %lcmp.mod107.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod107.not, label %.preheader.i, label %.lr.ph145.split.i.epil.preheader

.lr.ph145.split.i.epil.preheader:                 ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph145.split.preheader.i
  %.epil.init106 = phi i64 [ %.pre.i, %.lr.ph145.split.preheader.i ], [ %i.gd, %.preheader.i.loopexit.unr-lcssa ]
  %.082144.i.epil.init = phi i64 [ 0, %.lr.ph145.split.preheader.i ], [ %i.gb, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph145.split.i.epil

.lr.ph145.split.i.epil:                           ; preds = %.lr.ph145.split.i.epil, %.lr.ph145.split.i.epil.preheader
  %i.ez = phi i64 [ %i.fc, %.lr.ph145.split.i.epil ], [ %.epil.init106, %.lr.ph145.split.i.epil.preheader ]
  %.082144.i.epil = phi i64 [ %i.fa, %.lr.ph145.split.i.epil ], [ %.082144.i.epil.init, %.lr.ph145.split.i.epil.preheader ]
  %epil.iter104 = phi i64 [ %epil.iter104.next, %.lr.ph145.split.i.epil ], [ 0, %.lr.ph145.split.i.epil.preheader ]
  %i.fa = add nuw i64 %.082144.i.epil, 1          ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !11 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ez
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !11
  %epil.iter104.next = add i64 %epil.iter104, 1   ; 2 uses
  %epil.iter104.cmp.not = icmp eq i64 %epil.iter104.next, %xtraiter103
  br i1 %epil.iter104.cmp.not, label %.preheader.i, label %.lr.ph145.split.i.epil, !llvm.loop !35

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph145.split.i.epil, %initHeap.exit.i, %._crit_edge.i.thread.i
  %i.fe = phi ptr [ %i.ak, %._crit_edge.i.thread.i ], [ %i.aw, %initHeap.exit.i ], [ %i.aw, %.lr.ph145.split.i.epil ], [ %i.aw, %.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %i.ff = phi i64 [ -1, %._crit_edge.i.thread.i ], [ %i.bm, %initHeap.exit.i ], [ %i.bm, %.lr.ph145.split.i.epil ], [ %i.bm, %.preheader.i.loopexit.unr-lcssa ]
  %i.fg = phi ptr [ %i.ag, %._crit_edge.i.thread.i ], [ %i.p, %initHeap.exit.i ], [ %i.p, %.lr.ph145.split.i.epil ], [ %i.p, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %i.fh = phi ptr [ %i.ae, %._crit_edge.i.thread.i ], [ %i.f, %initHeap.exit.i ], [ %i.f, %.lr.ph145.split.i.epil ], [ %i.f, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %i.fi = phi ptr [ %i.af, %._crit_edge.i.thread.i ], [ %i.k, %initHeap.exit.i ], [ %i.k, %.lr.ph145.split.i.epil ], [ %i.k, %.preheader.i.loopexit.unr-lcssa ] ; 3 uses
  %i.fj = phi ptr [ %i.ah, %._crit_edge.i.thread.i ], [ %i.u, %initHeap.exit.i ], [ %i.u, %.lr.ph145.split.i.epil ], [ %i.u, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.val156190199.i = phi ptr [ %i.al, %._crit_edge.i.thread.i ], [ %i.bn, %initHeap.exit.i ], [ %i.bn, %.lr.ph145.split.i.epil ], [ %i.bn, %.preheader.i.loopexit.unr-lcssa ]
  %i.fk = icmp sgt i32 %2, 0
  br i1 %i.fk, label %.lr.ph147.i, label %find_closest_pairs.exit

.lr.ph147.i:                                      ; preds = %.preheader.i
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

.lr.ph145.split.i:                                ; preds = %.lr.ph145.split.i, %.lr.ph145.split.preheader.i.new
  %i.fo = phi i64 [ %.pre.i, %.lr.ph145.split.preheader.i.new ], [ %i.gd, %.lr.ph145.split.i ]
  %.082144.i = phi i64 [ 0, %.lr.ph145.split.preheader.i.new ], [ %i.gb, %.lr.ph145.split.i ] ; 4 uses
  %niter110 = phi i64 [ 0, %.lr.ph145.split.preheader.i.new ], [ %niter110.next.3, %.lr.ph145.split.i ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.082144.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !11 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fo
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !11
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.082144.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fr
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !11
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.082144.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !11 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fv
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !11
  %i.gb = add nuw i64 %.082144.i, 4               ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !11 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fz
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !11
  %niter110.next.3 = add nuw i64 %niter110, 4     ; 2 uses
  %niter110.ncmp.3 = icmp eq i64 %niter110.next.3, %unroll_iter109
  br i1 %niter110.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph145.split.i, !llvm.loop !36

bb.y:                                             ; preds = %bb.ar, %.lr.ph147.i
  %.083146.i = phi i32 [ 0, %.lr.ph147.i ], [ %i.iu, %bb.ar ]
  %i.gf = load i64, ptr %i.fe, align 8, !tbaa !23 ; 3 uses
  %.not136.i = icmp eq i64 %i.gf, 0
  %.val.pre.pre157.i = load ptr, ptr %4, align 8, !tbaa !18 ; 12 uses
  br i1 %.not136.i, label %find_closest_pairs.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i = load i64, ptr %.val.pre.pre157.i, align 8, !tbaa !11 ; 6 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.pre.pre157.i, i64 8
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !11 ; 6 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.pre.pre157.i, i64 16
  %.sroa.13.0.copyload.i = load double, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !25
  %i.gg = getelementptr [24 x i8], ptr %.val.pre.pre157.i, i64 %i.gf
  %i.gh = getelementptr i8, ptr %i.gg, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.pre.pre157.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false), !tbaa.struct !30
  %i.gi = add i64 %i.gf, -1                       ; 3 uses
  store i64 %i.gi, ptr %i.fe, align 8, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.al, %bb.z
  %.036.i.i104.i = phi i64 [ 0, %bb.z ], [ %.138.i.i106.i, %bb.al ] ; 5 uses
  %i.gj = shl i64 %.036.i.i104.i, 1               ; 5 uses
  %i.gk = or disjoint i64 %i.gj, 1                ; 3 uses
  %i.gl = icmp ult i64 %i.gj, %i.gi
  br i1 %i.gl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load double, ptr %i.gn, align 8, !tbaa !28 ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %.val.pre.pre157.i, i64 %.036.i.i104.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !28 ; 2 uses
  %i.gs = fcmp olt double %i.go, %i.gr
  br i1 %i.gs, label %bb.af, label %bb.ac
end_hunk_0
