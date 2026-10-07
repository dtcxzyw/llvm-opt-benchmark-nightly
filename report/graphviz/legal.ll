Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/legal?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %union.anon, ptr, ptr }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"trying to delete a non-line\0A\00", align 1
@Verbose = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0Aintersection at %.3f %.3f\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"seg#%d : (%.3f, %.3f) (%.3f, %.3f)\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Plegal_arrangement(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %2 = alloca %struct.anon, align 8               ; 24 uses
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not.i, label %.thread.i72.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef 48) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 48) #17 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.i = mul nuw nsw i64 %i.c, 48
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef %i.i) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

.thread.i72.thread:                               ; preds = %bb.a
  %i.k = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 48) #17
  %i.l = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  br label %._crit_edge.thread.i

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %1, 4
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.06085 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %i.r = add i64 %i.q, %.06085
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !43
  %i.x = add i64 %i.w, %i.r
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !43
  %i.ad = add i64 %i.ac, %i.x
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.aj = add i64 %i.ai, %i.ad                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !25

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.06085.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %lcmp.mod241 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.06085.epil = phi i64 [ %.06085.epil.init, %.lr.ph.epil.preheader ], [ %i.ao, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43
  %i.ao = add i64 %i.an, %.06085.epil             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa239 = phi i64 [ %i.aj, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ] ; 15 uses
  %.not.i69 = icmp eq i64 %.lcssa239, 0           ; 2 uses
  br i1 %.not.i69, label %.thread.i72, label %bb.f

.thread.i72:                                      ; preds = %._crit_edge
  %i.ap = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #17
  br label %.lr.ph102.preheader

bb.f:                                             ; preds = %._crit_edge
  %mul.ov.i71 = icmp ugt i64 %.lcssa239, 576460752303423487
  br i1 %mul.ov.i71, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str, i64 noundef %.lcssa239, i64 noundef 32) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.as = tail call noalias ptr @calloc(i64 noundef %.lcssa239, i64 noundef 32) #17 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.i, label %.lr.ph102.preheader

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.av = shl nuw i64 %.lcssa239, 5
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.1, i64 noundef %i.av) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

.lr.ph102.preheader:                              ; preds = %bb.h, %.thread.i72
  %i.ax = phi ptr [ %i.ap, %.thread.i72 ], [ %i.as, %bb.h ] ; 10 uses
  %wide.trip.count125 = zext nneg i32 %1 to i64
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %._crit_edge94
  %indvars.iv122 = phi i64 [ 0, %.lr.ph102.preheader ], [ %indvars.iv.next123, %._crit_edge94 ] ; 3 uses
  %.062101 = phi i32 [ 0, %.lr.ph102.preheader ], [ %.1.lcssa, %._crit_edge94 ] ; 2 uses
  %i.ay = sext i32 %.062101 to i64                ; 3 uses
  %i.az = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %indvars.iv122 ; 5 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %.not104 = icmp eq i64 %i.be, 0
  br i1 %.not104, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph102
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !46
  br label %bb.j

._crit_edge94.loopexit:                           ; preds = %bb.j
  %i.bg = trunc nsw i64 %indvars.iv.next119 to i32
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %.lr.ph102
  %.pre-phi = phi i64 [ %indvars.iv.next119, %._crit_edge94.loopexit ], [ %i.ay, %.lr.ph102 ]
  %.1.lcssa = phi i32 [ %i.bg, %._crit_edge94.loopexit ], [ %.062101, %.lr.ph102 ]
  %i.bh = phi <2 x double> [ %i.br, %._crit_edge94.loopexit ], [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph102 ]
  %i.bi = phi <2 x double> [ %i.bs, %._crit_edge94.loopexit ], [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph102 ]
  %i.bj = getelementptr [32 x i8], ptr %i.ax, i64 %.pre-phi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.bh, ptr %i.bm, align 8, !tbaa !18
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x double> %i.bi, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !18
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !27

bb.j:                                             ; preds = %.lr.ph93, %bb.j
  %indvars.iv118 = phi i64 [ %i.ay, %.lr.ph93 ], [ %indvars.iv.next119, %bb.j ] ; 2 uses
  %.091 = phi i64 [ 0, %.lr.ph93 ], [ %i.bw, %bb.j ] ; 2 uses
  %i.bn = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %.lr.ph93 ], [ %i.br, %bb.j ]
  %i.bo = phi <2 x double> [ splat (double f0xFFEFFFFFFFFFFFFF), %.lr.ph93 ], [ %i.bs, %bb.j ]
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.091
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !18 ; 3 uses
  %i.br = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bn, <2 x double> %i.bq) ; 2 uses
  %i.bs = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bo, <2 x double> %i.bq) ; 2 uses
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %indvars.iv118 ; 3 uses
  store <2 x double> %i.bq, ptr %i.bt, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.ba, ptr %i.bu, align 8, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr null, ptr %i.bv, align 8, !tbaa !47
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, 1 ; 3 uses
  %i.bw = add nuw i64 %.091, 1                    ; 2 uses
  %exitcond121.not = icmp eq i64 %i.bw, %i.be
  br i1 %exitcond121.not, label %._crit_edge94.loopexit, label %bb.j, !llvm.loop !28

._crit_edge103:                                   ; preds = %._crit_edge94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  br i1 %.not.i69, label %._crit_edge.thread.i, label %3

._crit_edge.thread.i:                             ; preds = %.thread.i72.thread, %._crit_edge103
  %i.bx = phi ptr [ %i.k, %.thread.i72.thread ], [ %i.f, %._crit_edge103 ]
  %i.by = phi ptr [ %i.l, %.thread.i72.thread ], [ %i.ax, %._crit_edge103 ]
  %i.bz = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #17 ; 2 uses
  tail call void @qsort(ptr noundef %i.bz, i64 noundef 0, i64 noundef 8, ptr noundef nonnull @gt) #18
  br label %.thread104.i

3:                                                ; preds = %._crit_edge103
  %mul.ov.i.i = icmp ugt i64 %.lcssa239, 2305843009213693951
  br i1 %mul.ov.i.i, label %4, label %bb.k

4:                                                ; preds = %3
  %5 = load ptr, ptr @stderr, align 8, !tbaa !10
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i64 noundef %.lcssa239, i64 noundef 8) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.k:                                             ; preds = %3
  %i.ca = tail call noalias ptr @calloc(i64 noundef %.lcssa239, i64 noundef 8) #17 ; 7 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.l, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k
  %min.iters.check = icmp ult i64 %.lcssa239, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader236, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.lcssa239, 2305843009213693948 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %i.ax, <2 x i64> %vec.ind
  %wide.gep228 = getelementptr inbounds nuw [32 x i8], ptr %i.ax, <2 x i64> %step.add
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cc, align 8, !tbaa !22
  store <2 x ptr> %wide.gep228, ptr %i.cd, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.lcssa239, %n.vec
  br i1 %cmp.n, label %.lr.ph125.i, label %.lr.ph.i.preheader236

.lr.ph.i.preheader236:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.080115.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.cg = shl nuw i64 %.lcssa239, 3
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.1, i64 noundef %i.cg) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

.lr.ph125.i:                                      ; preds = %.lr.ph.i, %middle.block
  tail call void @qsort(ptr noundef nonnull %i.ca, i64 noundef %.lcssa239, i64 noundef 8, ptr noundef nonnull @gt) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.m

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader236, %.lr.ph.i
  %.080115.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %.080115.i.ph, %.lr.ph.i.preheader236 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %.080115.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.080115.i
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !22
  %i.cn = add nuw nsw i64 %.080115.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, %.lcssa239
  br i1 %exitcond.not.i, label %.lr.ph125.i, label %.lr.ph.i, !llvm.loop !30

bb.m:                                             ; preds = %bb.fk, %.lr.ph125.i
  %.079123.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.nk, %bb.fk ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.079123.i ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16
  %i.ct = icmp eq ptr %i.cp, %i.cs
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 -32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cx = phi ptr [ %i.cv, %bb.n ], [ %i.cw, %bb.o ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.fj, %bb.p
  %i.cz = phi i1 [ true, %bb.p ], [ false, %bb.fj ]
  %.075121.i = phi ptr [ %i.cx, %bb.p ], [ %i.nb, %bb.fj ] ; 12 uses
  %.0120.i = phi ptr [ %i.cx, %bb.p ], [ %i.nj, %bb.fj ] ; 2 uses
  %i.da = load double, ptr %i.cp, align 8, !tbaa !23 ; 2 uses
  %i.db = load double, ptr %.0120.i, align 8, !tbaa !23 ; 2 uses
  %i.dc = fcmp ogt double %i.da, %i.db
  br i1 %i.dc, label %gt.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = fcmp olt double %i.da, %i.db
  br i1 %i.dd, label %.critedge.preheader.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load double, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0120.i, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !24 ; 2 uses
  %i.dh = fcmp ogt double %i.de, %i.dg
  br i1 %i.dh, label %gt.exit.thread.i, label %gt.exit.i

gt.exit.i:                                        ; preds = %bb.s
  %i.di = fcmp olt double %i.de, %i.dg
  br i1 %i.di, label %.critedge.preheader.i, label %bb.fg

.critedge.preheader.i:                            ; preds = %gt.exit.i, %bb.r
  %.val91116.i = load i64, ptr %i.ci, align 8, !tbaa !51
  %.not88117.not.i = icmp eq i64 %.val91116.i, 0
  br i1 %.not88117.not.i, label %.critedge._crit_edge.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.critedge.preheader.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.075121.i, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.075121.i, i64 32 ; 6 uses
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i, %.lr.ph119.i
  %.073118.i = phi i64 [ 0, %.lr.ph119.i ], [ %i.mk, %.critedge.i ] ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !tbaa !52
  %i.dm = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.073118.i) #18
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load <2 x double>, ptr %i.do, align 8, !tbaa !18 ; 7 uses
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !24 ; 13 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21 ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !17
  %i.dw = icmp eq ptr %i.do, %i.dv                ; 9 uses
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.in.i.i.i = phi ptr [ %i.dx, %bb.u ], [ %i.dy, %bb.v ]
  %i.dz = load <2 x double>, ptr %.in.i.i.i, align 8, !tbaa !18
  %i.ea = load <2 x double>, ptr %.075121.i, align 8, !tbaa !18 ; 15 uses
  %i.eb = load ptr, ptr %i.dj, align 8, !tbaa !21 ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !17
  %i.ee = icmp ne ptr %.075121.i, %i.ed           ; 7 uses
  br i1 %i.ee, label %sgnarea.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %sgnarea.exit.i.i

sgnarea.exit.i.i:                                 ; preds = %bb.x, %bb.w
  %.in46.i.i.i = phi ptr [ %i.ef, %bb.x ], [ %i.dk, %bb.w ]
  %i.eg = load <2 x double>, ptr %.in46.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.eh = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x double> %i.eg, <2 x double> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ej = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fsub <2 x double> %i.ei, %i.ej
  %i.el = insertelement <2 x double> %i.dq, double %i.dr, i64 1
  %i.em = fsub <2 x double> %i.dz, %i.el          ; 2 uses
  %i.en = shufflevector <2 x double> %i.ea, <2 x double> %i.eg, <2 x i32> <i32 3, i32 1>
  %i.eo = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fsub <2 x double> %i.en, %i.ep
  %i.er = fneg <2 x double> %i.ek
  %i.es = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x double> %i.es, %i.er
  %i.eu = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.eq, <2 x double> %i.et) ; 2 uses
  %i.ew = fcmp olt <2 x double> %i.ev, zeroinitializer
  %i.ex = fcmp ogt <2 x double> %i.ev, zeroinitializer
  %i.ey = zext <2 x i1> %i.ex to <2 x i8>
  %i.ez = select <2 x i1> %i.ew, <2 x i8> splat (i8 -1), <2 x i8> %i.ey ; 2 uses
  %i.fa = extractelement <2 x i8> %i.ez, i64 0    ; 2 uses
  %i.fb = extractelement <2 x i8> %i.ez, i64 1    ; 3 uses
  %narrow = mul nsw i8 %i.fa, %i.fb               ; 2 uses
  %i.fc = icmp sgt i8 %narrow, 0
  br i1 %i.fc, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %sgnarea.exit.i.i
  %i.fd = icmp slt i8 %narrow, 0
  br i1 %i.fd, label %bb.z, label %bb.az

bb.z:                                             ; preds = %bb.y
  br i1 %i.ee, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.in.i27.i.i = phi ptr [ %i.fe, %bb.aa ], [ %i.dk, %bb.z ]
  %i.ff = load <2 x double>, ptr %.in.i27.i.i, align 8, !tbaa !18
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fg = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %sgnarea.exit33.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fh = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %sgnarea.exit33.i.i

sgnarea.exit33.i.i:                               ; preds = %bb.ad, %bb.ac
  %.in46.i28.i.i = phi ptr [ %i.fg, %bb.ac ], [ %i.fh, %bb.ad ]
  %i.fi = fsub <2 x double> %i.ff, %i.ea          ; 2 uses
  %i.fj = load <2 x double>, ptr %.in46.i28.i.i, align 8, !tbaa !18 ; 2 uses
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.fl = fsub <2 x double> %i.fk, %i.eh
  %i.fm = shufflevector <2 x double> %i.fj, <2 x double> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.fn = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = fsub <2 x double> %i.fm, %i.fn
  %i.fp = fneg <2 x double> %i.fl
  %i.fq = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = fmul <2 x double> %i.fq, %i.fp
  %i.fs = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fo, <2 x double> %i.fr) ; 2 uses
  %i.fu = fcmp olt <2 x double> %i.ft, zeroinitializer
  %i.fv = fcmp ogt <2 x double> %i.ft, zeroinitializer
  %i.fw = zext <2 x i1> %i.fv to <2 x i8>
  %i.fx = select <2 x i1> %i.fu, <2 x i8> splat (i8 -1), <2 x i8> %i.fw ; 2 uses
  %i.fy = extractelement <2 x i8> %i.fx, i64 0
  %i.fz = extractelement <2 x i8> %i.fx, i64 1    ; 2 uses
  %narrow229 = mul nsw i8 %i.fy, %i.fz            ; 2 uses
  %i.ga = icmp sgt i8 %narrow229, 0
  br i1 %i.ga, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %sgnarea.exit33.i.i
  %i.gb = icmp slt i8 %narrow229, 0
  br i1 %i.gb, label %online.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ee, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gc = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gd = phi ptr [ %i.gc, %bb.ag ], [ %i.dk, %bb.af ] ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load double, ptr %i.gd, align 8, !tbaa !18 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.sroa.5.0.copyload.i.i.i = load double, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !18 ; 4 uses
  %i.ge = icmp eq i8 %i.fz, 0
  br i1 %i.ge, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gf = load ptr, ptr %i.dt, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@Plegal_arrangement:bb.a
bb.eg:                                            ; preds = %bb.dy
  %i.le = fcmp olt double %i.kt, %.sroa.0.0.i111.i.i
  br i1 %i.le, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.lf = fcmp olt double %.sroa.0.0.i111.i.i, %.sroa.05.0.copyload.i107.i.i
  br i1 %i.lf, label %online.exit120.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.lg = fcmp ogt double %.sroa.0.0.i111.i.i, %.sroa.05.0.copyload.i107.i.i
  %..i23.i115.i.i = sext i1 %i.lg to i32
  br label %online.exit120.i.i

bb.ej:                                            ; preds = %bb.eg
  %i.lh = fcmp ogt double %i.kt, %.sroa.0.0.i111.i.i
  br i1 %i.lh, label %bb.ek, label %online.exit120.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.li = fcmp ogt double %.sroa.0.0.i111.i.i, %.sroa.05.0.copyload.i107.i.i
  br i1 %i.li, label %online.exit120.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lj = fcmp olt double %.sroa.0.0.i111.i.i, %.sroa.05.0.copyload.i107.i.i
  %.15.i22.i114.i.i = sext i1 %i.lj to i32
  br label %online.exit120.i.i

online.exit120.i.i:                               ; preds = %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %between.exit.i116.i.i, %bb.dz, %online.exit86.i.i
  %i.lk = phi i32 [ %i.kn, %online.exit86.i.i ], [ %i.ld, %between.exit.i116.i.i ], [ 0, %bb.dz ], [ %.15.i22.i114.i.i, %bb.el ], [ %..i23.i115.i.i, %bb.ei ], [ 1, %bb.eh ], [ 1, %bb.ek ], [ 0, %bb.ej ]
  %i.ll = call fastcc i32 @intpoint(ptr noundef nonnull readonly %i.do, ptr noundef nonnull readonly %.075121.i, ptr noundef %i.a, ptr noundef %i.b, i32 noundef %i.lk)
  %.not.i92.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i92.i, label %.critedge.i, label %bb.em

bb.em:                                            ; preds = %online.exit120.i.i, %online.exit.i.i
  %i.lm = load double, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.ln = load double, ptr %i.b, align 8, !tbaa !18 ; 5 uses
  br i1 %i.dw, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.lo = load ptr, ptr %i.dt, align 8, !tbaa !16
  br label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.lp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.lq = phi ptr [ %i.lo, %bb.en ], [ %i.lp, %bb.eo ] ; 2 uses
  %.sroa.07.0.copyload.i121.i.i = load double, ptr %i.lq, align 8, !tbaa !18 ; 2 uses
  %.sroa.610.0..sroa_idx.i122.i.i = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.610.0.copyload.i123.i.i = load double, ptr %.sroa.610.0..sroa_idx.i122.i.i, align 8, !tbaa !18
  br i1 %i.ee, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.lr = load ptr, ptr %i.eb, align 8, !tbaa !16
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %i.ls = phi ptr [ %i.lr, %bb.eq ], [ %i.dk, %bb.ep ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load double, ptr %i.ls, align 8, !tbaa !18 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.sroa.6.0.copyload.i.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.lt = extractelement <2 x double> %i.dq, i64 0 ; 2 uses
  %i.lu = fcmp une double %i.lt, %.sroa.07.0.copyload.i121.i.i ; 2 uses
  %i.lv = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.lw = fcmp une double %i.lv, %.sroa.0.0.copyload.i.i.i ; 2 uses
  %or.cond.i.i.i = select i1 %i.lu, i1 %i.lw, i1 false
  br i1 %or.cond.i.i.i, label %bb.ey, label %bb.es

bb.es:                                            ; preds = %bb.er
  br i1 %i.lu, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.lx = fcmp oeq double %i.lt, %i.lm
  %i.ly = fcmp oeq double %i.dr, %i.ln
  %or.cond39.i.i.i = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %or.cond39.i.i.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.lz = fcmp oeq double %.sroa.07.0.copyload.i121.i.i, %i.lm
  %i.ma = fcmp oeq double %.sroa.610.0.copyload.i123.i.i, %i.ln
  %or.cond40.i.i.i = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond40.i.i.i, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  br i1 %i.lw, label %.critedge.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.mb = fcmp oeq double %i.lv, %i.lm
  %i.mc = extractelement <2 x double> %i.ea, i64 1
  %i.md = fcmp oeq double %i.mc, %i.ln
  %or.cond41.i.i.i = select i1 %i.mb, i1 %i.md, i1 false
  br i1 %or.cond41.i.i.i, label %.critedge.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.me = fcmp oeq double %.sroa.0.0.copyload.i.i.i, %i.lm
  %i.mf = fcmp oeq double %.sroa.6.0.copyload.i.i.i, %i.ln
  %or.cond42.i.i.i = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond42.i.i.i, label %.critedge.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu, %bb.er
  %i.mg = load i8, ptr @Verbose, align 1, !tbaa !52
  %i.mh = icmp ugt i8 %i.mg, 1
  br i1 %i.mh, label %bb.ez, label %bb.fl

bb.ez:                                            ; preds = %bb.ey
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.mj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mi, ptr noundef nonnull @.str.3, double noundef %i.lm, double noundef %i.ln) #15 ; 0 uses
  call fastcc void @putSeg(i32 noundef 1, ptr noundef nonnull readonly %i.do)
  call fastcc void @putSeg(i32 noundef 2, ptr noundef nonnull readonly %.075121.i)
  br label %bb.fl

.critedge.i:                                      ; preds = %bb.ex, %bb.ew, %bb.ev, %online.exit120.i.i, %online.exit.i.i, %sgnarea.exit33.i.i, %sgnarea.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.mk = add nuw i64 %.073118.i, 1               ; 2 uses
  %.val91.i = load i64, ptr %i.ci, align 8, !tbaa !51
  %.not88.i = icmp ult i64 %i.mk, %.val91.i
  br i1 %.not88.i, label %bb.t, label %.critedge._crit_edge.i, !llvm.loop !31

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %.critedge.preheader.i
  store ptr %.075121.i, ptr %i.cj, align 8, !tbaa !54
  %i.ml = call i64 @gv_list_append_slot_(ptr noundef nonnull %2, i64 noundef 8) #18
  %i.mm = load ptr, ptr %i.cj, align 8, !tbaa !54
  %i.mn = load ptr, ptr %2, align 8, !tbaa !52
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.ml
  store ptr %i.mm, ptr %i.mo, align 8, !tbaa !22
  %i.mp = getelementptr inbounds nuw i8, ptr %.075121.i, i64 24
  store ptr %.075121.i, ptr %i.mp, align 8, !tbaa !47
  br label %bb.fg

gt.exit.thread.i:                                 ; preds = %bb.s, %bb.q
  %i.mq = getelementptr inbounds nuw i8, ptr %.075121.i, i64 24 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !47 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %find_ints.exit.thread, label %bb.fa

find_ints.exit.thread:                            ; preds = %gt.exit.thread.i
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %findInside.exit

bb.fa:                                            ; preds = %gt.exit.thread.i
  store ptr %i.mr, ptr %i.cj, align 8, !tbaa !54
  %i.mt = call i64 @gv_list_find_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, ptr noundef nonnull %i.cj, i64 noundef 8) #18 ; 4 uses
  %i.mu = icmp eq i64 %i.mt, -1
  br i1 %i.mu, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.mv = load ptr, ptr %i.ck, align 8, !tbaa !55 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.mv to i64
  switch i64 %magicptr.i, label %bb.fd [
    i64 1, label %bb.fc
    i64 0, label %bb.fe
  ]

bb.fc:                                            ; preds = %bb.fb
  %i.mw = load ptr, ptr %2, align 8, !tbaa !52
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mt
  %.0.copyload8.i = load ptr, ptr %i.mx, align 8
  call void @free(ptr noundef %.0.copyload8.i) #18
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.my = load ptr, ptr %2, align 8, !tbaa !52
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mt
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !22
  call void %i.mv(ptr noundef %i.na) #18, !inline_history !32
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fb
  call void @gv_list_remove_(ptr noundef nonnull %2, i64 noundef %i.mt, i64 noundef 8) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fa
  store ptr null, ptr %i.mq, align 8, !tbaa !47
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.critedge._crit_edge.i, %gt.exit.i
  %i.nb = load ptr, ptr %i.co, align 8, !tbaa !22 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !21 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !17
  %i.ng = icmp eq ptr %i.nb, %i.nf
  br i1 %i.ng, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.nh = load ptr, ptr %i.nd, align 8, !tbaa !16
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.nj = phi ptr [ %i.nh, %bb.fh ], [ %i.ni, %bb.fi ]
  br i1 %i.cz, label %bb.q, label %bb.fk, !llvm.loop !33

bb.fk:                                            ; preds = %bb.fj
  %i.nk = add nuw nsw i64 %.079123.i, 1           ; 2 uses
  %exitcond137.not.i = icmp eq i64 %i.nk, %.lcssa239
  br i1 %exitcond137.not.i, label %.thread104.i, label %bb.m, !llvm.loop !34

bb.fl:                                            ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread104.i

.thread104.i:                                     ; preds = %bb.fk, %bb.fl, %._crit_edge.thread.i
  %i.nl = phi ptr [ %i.f, %bb.fl ], [ %i.bx, %._crit_edge.thread.i ], [ %i.f, %bb.fk ] ; 6 uses
  %.not215 = phi i1 [ true, %bb.fl ], [ %.not.i, %._crit_edge.thread.i ], [ false, %bb.fk ]
  %i.nm = phi ptr [ %i.ax, %bb.fl ], [ %i.by, %._crit_edge.thread.i ], [ %i.ax, %bb.fk ] ; 4 uses
  %i.nn = phi ptr [ %i.ca, %bb.fl ], [ %i.bz, %._crit_edge.thread.i ], [ %i.ca, %bb.fk ]
  %not..not.not = phi i32 [ 0, %bb.fl ], [ 1, %._crit_edge.thread.i ], [ 1, %bb.fk ]
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val126.i = load i64, ptr %i.no, align 8, !tbaa !51
  %.not.i74 = icmp eq i64 %.val126.i, 0
  br i1 %.not.i74, label %find_ints.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.thread104.i
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fp, %.lr.ph128.i
  %.068127.i = phi i64 [ 0, %.lr.ph128.i ], [ %i.nx, %bb.fp ] ; 2 uses
  %i.nq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.068127.i) #18 ; 2 uses
  %i.nr = load ptr, ptr %i.np, align 8, !tbaa !55 ; 2 uses
  %magicptr90.i = ptrtoint ptr %i.nr to i64
  switch i64 %magicptr90.i, label %bb.fo [
    i64 1, label %bb.fn
    i64 0, label %bb.fp
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.ns = load ptr, ptr %2, align 8, !tbaa !52
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nq
  %.0.copyload.i = load ptr, ptr %i.nt, align 8
  call void @free(ptr noundef %.0.copyload.i) #18
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.nu = load ptr, ptr %2, align 8, !tbaa !52
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.nq
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !22
  call void %i.nr(ptr noundef %i.nw) #18, !inline_history !32
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.nx = add nuw i64 %.068127.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.no, align 8, !tbaa !51
  %i.ny = icmp ult i64 %i.nx, %.val.i
  br i1 %i.ny, label %bb.fm, label %find_ints.exit, !llvm.loop !35

find_ints.exit:                                   ; preds = %bb.fp, %.thread104.i
  call void @gv_list_clear_(ptr noundef nonnull %2, i64 noundef 8) #18
  call void @gv_list_free_(ptr noundef nonnull %2) #18
  call void @free(ptr noundef %i.nn) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.not215, label %findInside.exit, label %.lr.ph107.preheader.i

.lr.ph107.preheader.i:                            ; preds = %find_ints.exit
  %i.nz = zext nneg i32 %1 to i64                 ; 3 uses
  br label %.lr.ph107.i

.loopexit.i:                                      ; preds = %bb.gb, %.lr.ph107.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next113.i, %i.nz
  br i1 %exitcond116.not.i, label %findInside.exit, label %.lr.ph107.i, !llvm.loop !36

.lr.ph107.i:                                      ; preds = %.loopexit.i, %.lr.ph107.preheader.i
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph107.preheader.i ], [ %indvars.iv.next113.i, %.loopexit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph107.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv112.i
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !39 ; 3 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !46 ; 2 uses
  %.sroa.0.0.copyload.i = load double, ptr %i.oc, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !18
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 3 uses
  %i.od = icmp samesign ult i64 %indvars.iv.next113.i, %i.nz
  br i1 %i.od, label %.lr.ph.i75, label %.loopexit.i

.lr.ph.i75:                                       ; preds = %.lr.ph107.i
  %i.oe = getelementptr inbounds nuw [48 x i8], ptr %i.nl, i64 %indvars.iv112.i ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 24 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 32 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 40 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  br label %bb.fq

bb.fq:                                            ; preds = %bb.gb, %.lr.ph.i75
  %indvars.iv109.i = phi i64 [ %indvars.iv.i, %.lr.ph.i75 ], [ %indvars.iv.next110.i, %bb.gb ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv109.i
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !39 ; 3 uses
  %i.om = load double, ptr %i.of, align 8, !tbaa !56 ; 3 uses
  %i.on = getelementptr inbounds nuw [48 x i8], ptr %i.nl, i64 %indvars.iv109.i ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.oq = load double, ptr %i.op, align 8, !tbaa !57 ; 3 uses
  %i.or = fcmp ugt double %i.om, %i.oq            ; 2 uses
  %.pre.i = load double, ptr %i.oo, align 8, !tbaa !56 ; 4 uses
  %i.os = fcmp ult double %i.om, %.pre.i
  %or.cond127.i = select i1 %i.or, i1 true, i1 %i.os
  br i1 %or.cond127.i, label %bb.fw, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ot = load double, ptr %i.og, align 8, !tbaa !58 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !59 ; 2 uses
  %i.ow = fcmp ugt double %i.ot, %i.ov
  br i1 %i.ow, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !58 ; 2 uses
  %i.oz = fcmp ult double %i.ot, %i.oy
  br i1 %i.oz, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.pa = load double, ptr %i.oh, align 8, !tbaa !57 ; 2 uses
  %i.pb = fcmp ugt double %i.pa, %i.oq
  %i.pc = fcmp ult double %i.pa, %.pre.i
  %or.cond.i = or i1 %i.pb, %i.pc
  br i1 %or.cond.i, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pd = load double, ptr %i.oi, align 8, !tbaa !59 ; 2 uses
  %i.pe = fcmp ugt double %i.pd, %i.ov
  %i.pf = fcmp ult double %i.pd, %i.oy
  %or.cond98.i = or i1 %i.pe, %i.pf
  br i1 %or.cond98.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pg = load ptr, ptr %i.ol, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.pi = load i64, ptr %i.ph, align 8
  %i.pj = call zeroext i1 @in_poly(ptr %i.pg, i64 %i.pi, double %.sroa.0.0.copyload.i, double %.sroa.4.0.copyload.i) #18
  br i1 %i.pj, label %findInside.exit, label %bb.gb

bb.fw:                                            ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %i.pk = load double, ptr %i.oh, align 8, !tbaa !57 ; 2 uses
  %i.pl = fcmp ugt double %.pre.i, %i.pk
  %i.pm = fcmp ult double %.pre.i, %i.om
  %or.cond101.i = or i1 %i.pm, %i.pl
  br i1 %or.cond101.i, label %bb.gb, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.pn = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.po = load double, ptr %i.pn, align 8, !tbaa !58 ; 2 uses
  %i.pp = load double, ptr %i.oi, align 8, !tbaa !59 ; 2 uses
  %i.pq = fcmp ugt double %i.po, %i.pp
  br i1 %i.pq, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.pr = load double, ptr %i.og, align 8, !tbaa !58 ; 2 uses
  %i.ps = fcmp ult double %i.po, %i.pr
  %i.pt = fcmp ugt double %i.oq, %i.pk
  %i.pu = or i1 %i.pt, %i.ps
  %or.cond102.i = or i1 %i.or, %i.pu
  br i1 %or.cond102.i, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.pv = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !59 ; 2 uses
  %i.px = fcmp ugt double %i.pw, %i.pp
  %i.py = fcmp ult double %i.pw, %i.pr
  %or.cond100.i = or i1 %i.px, %i.py
  br i1 %or.cond100.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.pz = load ptr, ptr %i.ol, align 8, !tbaa !46 ; 2 uses
  %i.qa = load ptr, ptr %i.ob, align 8
  %i.qb = load i64, ptr %i.oj, align 8
  %i.qc = load double, ptr %i.pz, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qe = load double, ptr %i.qd, align 8
  %i.qf = call zeroext i1 @in_poly(ptr %i.qa, i64 %i.qb, double %i.qc, double %i.qe) #18
  br i1 %i.qf, label %findInside.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next110.i, %i.nz
  br i1 %exitcond.not.i76, label %.loopexit.i, label %bb.fq, !llvm.loop !37

findInside.exit:                                  ; preds = %.loopexit.i, %bb.fv, %bb.ga, %find_ints.exit, %find_ints.exit.thread
  %.sink216 = phi ptr [ %i.f, %find_ints.exit.thread ], [ %i.nl, %bb.fv ], [ %i.nl, %find_ints.exit ], [ %i.nl, %bb.ga ], [ %i.nl, %.loopexit.i ]
  %.sink = phi ptr [ %i.ax, %find_ints.exit.thread ], [ %i.nm, %bb.fv ], [ %i.nm, %find_ints.exit ], [ %i.nm, %bb.ga ], [ %i.nm, %.loopexit.i ]
  %.065 = phi i32 [ 0, %find_ints.exit.thread ], [ 0, %bb.fv ], [ %not..not.not, %find_ints.exit ], [ 0, %bb.ga ], [ 1, %.loopexit.i ]
  call void @free(ptr noundef %.sink216) #18
  call void @free(ptr noundef %.sink) #18
  ret i32 %.065
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
end_hunk_1
