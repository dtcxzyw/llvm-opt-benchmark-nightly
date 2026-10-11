Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shortest?download=true
inline.NumInlined: 19
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %union.anon, ptr, %struct.triangle_t }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.triangle_t = type { i32, [3 x %struct.tedge_t] }
%struct.tedge_t = type { ptr, ptr, i64 }
%struct.pointnlink_t = type { ptr, ptr }
%struct.deque_t = type { ptr, i64, i64, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"lib/pathplan/%s:%d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/graphviz/graphviz/lib/pathplan/shortest.c\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot realloc pnls\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot realloc pnlps\00", align 1
@tris = internal global %struct.anon zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot realloc dq.pnls\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"source point not in any triangle\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"destination point not in any triangle\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"cannot find triangle path\00", align 1
@ops = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"triangulation failed\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cannot realloc tris\00", align 1
@opn = internal unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"cannot realloc ops\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @Pshortestpath(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.pointnlink_t], align 16 ; 7 uses
  %4 = alloca %struct.deque_t, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 16) #13 ; 18 uses
  %i.d = icmp ne i64 %i.b, 0                      ; 2 uses
  %i.e = icmp eq ptr %i.c, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @.str.2) #14 ; 0 uses
  br label %bb.cf

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #13 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  %or.cond3 = and i1 %i.d, %i.i
  br i1 %or.cond3, label %bb.d, label %.preheader295

.preheader295:                                    ; preds = %bb.c
  %tris.val267298 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51
  %.not351 = icmp eq i64 %tris.val267298, 0
  br i1 %.not351, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 100, ptr noundef nonnull @.str.3) #14 ; 0 uses
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.cf

._crit_edge:                                      ; preds = %bb.g, %.preheader295
  tail call void @gv_list_clear_(ptr noundef nonnull @tris, i64 noundef 80) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.a, align 8, !tbaa !49   ; 9 uses
  %i.o = shl i64 %i.n, 1                          ; 2 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !52
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.o, i64 noundef 8) #13 ; 22 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !16
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %.preheader295, %bb.g
  %.0210299 = phi i64 [ %i.w, %bb.g ], [ 0, %.preheader295 ] ; 2 uses
  %i.r = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0210299) #12
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 32), align 8, !tbaa !54 ; 2 uses
  %magicptr = ptrtoint ptr %i.s to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.4, i64 66, i64 1, ptr %i.t) #15 ; 0 uses
  tail call void @abort() #16
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr @tris, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %i.r
  tail call void %i.s(ptr noundef byval(%struct.triangle_t) align 8 %i.v) #12
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.w = add nuw i64 %.0210299, 1                 ; 2 uses
  %tris.val267 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51
  %i.x = icmp ult i64 %i.w, %tris.val267
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !36

bb.h:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, ptr noundef nonnull @.str.5) #14 ; 0 uses
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

bb.i:                                             ; preds = %._crit_edge
  %i.aa = and i64 %i.n, 9223372036854775807       ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = add nsw i64 %i.aa, -1                   ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !21
  %.pre = load ptr, ptr %0, align 8, !tbaa !55    ; 8 uses
  switch i64 %i.n, label %.lr.ph304.preheader.new [
    i64 0, label %._crit_edge305.thread
    i64 1, label %.lr.ph304.epil.preheader
  ]

.lr.ph304.preheader.new:                          ; preds = %bb.i
  %unroll_iter = and i64 %i.n, -2
  br label %.lr.ph304

._crit_edge305.thread:                            ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 -16
  %.sroa.6.0..sroa_idx410 = getelementptr inbounds nuw i8, ptr %.pre, i64 -8
  br label %bb.j

.lr.ph304:                                        ; preds = %.lr.ph304, %.lr.ph304.preheader.new
  %.0225302 = phi double [ +inf, %.lr.ph304.preheader.new ], [ %.1226.1, %.lr.ph304 ] ; 2 uses
  %.0227301 = phi i64 [ -1, %.lr.ph304.preheader.new ], [ %.1228.fr.1, %.lr.ph304 ]
  %.0229300 = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %i.am, %.lr.ph304 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph304.preheader.new ], [ %niter.next.1, %.lr.ph304 ]
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.0229300
  %i.ag = load double, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %i.ah = fcmp ogt double %.0225302, %i.ag        ; 2 uses
  %.1228 = select i1 %i.ah, i64 %.0229300, i64 %.0227301
  %.1228.fr = freeze i64 %.1228
  %.1226 = select i1 %i.ah, double %i.ag, double %.0225302 ; 2 uses
  %i.ai = or disjoint i64 %.0229300, 1            ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !57 ; 2 uses
  %i.al = fcmp ogt double %.1226, %i.ak           ; 2 uses
  %.1228.1 = select i1 %i.al, i64 %i.ai, i64 %.1228.fr
  %.1228.fr.1 = freeze i64 %.1228.1               ; 3 uses
  %.1226.1 = select i1 %i.al, double %i.ak, double %.1226 ; 2 uses
  %i.am = add nuw i64 %.0229300, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge305.unr-lcssa, label %.lr.ph304, !llvm.loop !37

._crit_edge305.unr-lcssa:                         ; preds = %.lr.ph304
  %lcmp.mod.not = trunc i64 %i.n to i1
  br i1 %lcmp.mod.not, label %.lr.ph304.epil.preheader, label %._crit_edge305

.lr.ph304.epil.preheader:                         ; preds = %bb.i, %._crit_edge305.unr-lcssa
  %.0225302.epil.init = phi double [ +inf, %bb.i ], [ %.1226.1, %._crit_edge305.unr-lcssa ]
  %.0227301.epil.init = phi i64 [ -1, %bb.i ], [ %.1228.fr.1, %._crit_edge305.unr-lcssa ]
  %.0229300.epil.init = phi i64 [ 0, %bb.i ], [ %i.am, %._crit_edge305.unr-lcssa ] ; 2 uses
  %lcmp.mod427 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod427)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.0229300.epil.init
  %i.ao = load double, ptr %i.an, align 8, !tbaa !57
  %i.ap = fcmp ogt double %.0225302.epil.init, %i.ao
  %.1228.epil = select i1 %i.ap, i64 %.0229300.epil.init, i64 %.0227301.epil.init
  %.1228.fr.epil = freeze i64 %.1228.epil
  br label %._crit_edge305

._crit_edge305:                                   ; preds = %._crit_edge305.unr-lcssa, %.lr.ph304.epil.preheader
  %.1228.fr.lcssa = phi i64 [ %.1228.fr.1, %._crit_edge305.unr-lcssa ], [ %.1228.fr.epil, %.lr.ph304.epil.preheader ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %.1228.fr.lcssa ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ar = icmp eq i64 %.1228.fr.lcssa, 0
  %spec.select = select i1 %i.ar, i64 %i.n, i64 %.1228.fr.lcssa
  %i.as = add i64 %.1228.fr.lcssa, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge305, %._crit_edge305.thread
  %.sroa.6.0.copyload415.in = phi ptr [ %.sroa.6.0..sroa_idx410, %._crit_edge305.thread ], [ %.sroa.6.0..sroa_idx, %._crit_edge305 ]
  %.sroa.020.0.copyload414.in = phi ptr [ %i.ae, %._crit_edge305.thread ], [ %i.aq, %._crit_edge305 ]
  %.0227.lcssa413 = phi i64 [ 0, %._crit_edge305.thread ], [ %i.as, %._crit_edge305 ]
  %i.at = phi i64 [ -1, %._crit_edge305.thread ], [ %spec.select, %._crit_edge305 ]
  %.sroa.020.0.copyload414 = load double, ptr %.sroa.020.0.copyload414.in, align 8, !tbaa !23 ; 3 uses
  %.sroa.6.0.copyload415 = load double, ptr %.sroa.6.0.copyload415.in, align 8, !tbaa !23 ; 2 uses
  %i.au = getelementptr [16 x i8], ptr %.pre, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -16
  %.sroa.017.0.copyload = load double, ptr %i.av, align 8, !tbaa !23 ; 2 uses
  %i.aw = urem i64 %.0227.lcssa413, %i.n
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ay = fcmp oeq double %.sroa.017.0.copyload, %.sroa.020.0.copyload414
  %i.az = fcmp oeq double %.sroa.020.0.copyload414, %.sroa.0.0.copyload
  %or.cond260 = select i1 %i.ay, i1 %i.az, i1 false
  %i.ba = fcmp ogt double %.sroa.5.0.copyload, %.sroa.6.0.copyload415
  %or.cond261 = select i1 %or.cond260, i1 %i.ba, i1 false
  br i1 %or.cond261, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.519.0..sroa_idx = getelementptr i8, ptr %i.au, i64 -8
  %.sroa.519.0.copyload = load double, ptr %.sroa.519.0..sroa_idx, align 8, !tbaa !23
  %i.bb = tail call i32 @ccw(double %.sroa.017.0.copyload, double %.sroa.519.0.copyload, double %.sroa.020.0.copyload414, double %.sroa.6.0.copyload415, double %.sroa.0.0.copyload, double %.sroa.5.0.copyload) #12
  %.not = icmp eq i32 %i.bb, 1
  %.pre371 = load i64, ptr %i.a, align 8, !tbaa !49 ; 5 uses
  br i1 %.not, label %.preheader293, label %bb.m

.preheader293:                                    ; preds = %bb.k
  %.not353 = icmp eq i64 %.pre371, 0
  br i1 %.not353, label %.loopexit292, label %bb.l

bb.l:                                             ; preds = %.preheader293
  %.pre370 = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  store ptr %.pre370, ptr %i.c, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.bc, align 8, !tbaa !58
  store ptr %i.c, ptr %i.h, align 8, !tbaa !27
  %exitcond361.peel.not = icmp eq i64 %.pre371, 1
  br i1 %exitcond361.peel.not, label %.loopexit292, label %.lr.ph309.peel.next

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.bd = phi i64 [ %i.n, %bb.j ], [ %.pre371, %bb.k ] ; 4 uses
  %.not245312 = icmp eq i64 %i.bd, 0
  br i1 %.not245312, label %.loopexit292, label %.lr.ph317

.lr.ph317:                                        ; preds = %bb.m
  %i.be = add i64 %i.bd, -1
  %.pre372.pre = load ptr, ptr %0, align 8, !tbaa !55 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph317, %bb.r
  %.0211314 = phi i64 [ 0, %.lr.ph317 ], [ %.1212, %bb.r ] ; 5 uses
  %.1230.in313 = phi i64 [ %i.bd, %.lr.ph317 ], [ %.1230315, %bb.r ] ; 2 uses
  %.1230315 = add i64 %.1230.in313, -1            ; 5 uses
  %i.bf = icmp ult i64 %.1230315, %i.be
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.pre372.pre, i64 %.1230315 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.pre372.pre, i64 %.1230.in313 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !57
  %i.bk = fcmp oeq double %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !59
  %i.bp = fcmp oeq double %i.bm, %i.bo
  br i1 %i.bp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.pre372.pre, i64 %.1230315
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.0211314 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !26
  %i.bs = urem i64 %.0211314, %i.bd
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0211314
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !27
  %i.bw = add i64 %.0211314, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1212 = phi i64 [ %.0211314, %bb.p ], [ %i.bw, %bb.q ] ; 2 uses
  %.not245 = icmp eq i64 %.1230315, 0
  br i1 %.not245, label %.loopexit292, label %bb.n, !llvm.loop !38

.lr.ph309.peel.next:                              ; preds = %bb.l, %bb.u
  %.2308 = phi i64 [ %.3, %bb.u ], [ 1, %bb.l ]   ; 5 uses
  %.2231306 = phi i64 [ %i.co, %bb.u ], [ 1, %bb.l ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.pre370, i64 %.2231306 ; 4 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !57
  %i.bz = getelementptr i8, ptr %i.bx, i64 -16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !57
  %i.cb = fcmp oeq double %i.by, %i.ca
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph309.peel.next
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !59
  %i.ce = getelementptr i8, ptr %i.bx, i64 -8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !59
  %i.cg = fcmp oeq double %i.cd, %i.cf
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph309.peel.next
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.pre370, i64 %.2231306
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.2308 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = urem i64 %.2308, %.pre371
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2308
  store ptr %i.ci, ptr %i.cm, align 8, !tbaa !27
  %i.cn = add i64 %.2308, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.3 = phi i64 [ %.2308, %bb.s ], [ %i.cn, %bb.t ] ; 2 uses
  %i.co = add nuw i64 %.2231306, 1                ; 2 uses
  %exitcond361.not = icmp eq i64 %i.co, %.pre371
  br i1 %exitcond361.not, label %.loopexit292, label %.lr.ph309.peel.next, !llvm.loop !39

.loopexit292:                                     ; preds = %bb.u, %bb.r, %bb.l, %.preheader293, %bb.m
  %.4 = phi i64 [ %.1212, %bb.r ], [ 0, %bb.m ], [ 0, %.preheader293 ], [ 1, %bb.l ], [ %.3, %bb.u ]
  %i.cp = tail call fastcc i32 @triangulate(ptr noundef %i.h, i64 noundef %.4)
  %.not246 = icmp eq i32 %i.cp, 0
  br i1 %.not246, label %.preheader291, label %bb.v

.preheader291:                                    ; preds = %.loopexit292
  %tris.val266321 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  %.not354 = icmp eq i64 %tris.val266321, 0
  br i1 %.not354, label %._crit_edge327.thread, label %.lr.ph323

bb.v:                                             ; preds = %.loopexit292
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

.loopexit290:                                     ; preds = %connecttris.exit, %.lr.ph323
  %tris.val266 = phi i64 [ %tris.val266375, %.lr.ph323 ], [ %tris.val265, %connecttris.exit ] ; 3 uses
  %i.cq = icmp ult i64 %i.cs, %tris.val266
  br i1 %i.cq, label %.lr.ph323, label %.preheader289, !llvm.loop !40

.preheader289:                                    ; preds = %.loopexit290
  %i.cr = icmp eq i64 %tris.val266, 0
  br i1 %i.cr, label %._crit_edge327.thread, label %.lr.ph326

.lr.ph323:                                        ; preds = %.preheader291, %.loopexit290
  %tris.val266375 = phi i64 [ %tris.val266, %.loopexit290 ], [ %tris.val266321, %.preheader291 ] ; 2 uses
  %.0220322 = phi i64 [ %i.cs, %.loopexit290 ], [ 0, %.preheader291 ] ; 7 uses
  %i.cs = add nuw i64 %.0220322, 1                ; 4 uses
  %i.ct = icmp ult i64 %i.cs, %tris.val266375
  br i1 %i.ct, label %.preheader.i.preheader, label %.loopexit290

.preheader.i.preheader:                           ; preds = %.lr.ph323, %connecttris.exit
  %.0219320 = phi i64 [ %i.gd, %connecttris.exit ], [ %i.cs, %.lr.ph323 ] ; 7 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.ak
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ak ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.cu = load ptr, ptr @tris, align 8, !tbaa !18
  %i.cv = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.cw = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load ptr, ptr @tris, align 8, !tbaa !18
  %i.cy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.cz = getelementptr inbounds nuw [80 x i8], ptr %i.cx, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %indvars.iv.i ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !26 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !26 ; 2 uses
  %i.dh = icmp eq ptr %i.dd, %i.dg
  br i1 %i.dh, label %bb.w, label %.preheader._crit_edge.i

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  %.pre32.i = load ptr, ptr %.pre.i, align 8, !tbaa !26
  br label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !26 ; 2 uses
  %i.do = icmp eq ptr %i.dk, %i.dn
  br i1 %i.do, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader._crit_edge.i
  %i.dp = phi ptr [ %.pre32.i, %.preheader._crit_edge.i ], [ %i.dn, %bb.w ]
  %i.dq = icmp eq ptr %i.dd, %i.dp
  br i1 %i.dq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !30
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.du = icmp eq ptr %i.dt, %i.dg
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 %.0219320, ptr %i.dv, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store i64 %.0220322, ptr %i.dw, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dx = load ptr, ptr @tris, align 8, !tbaa !18
  %i.dy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load ptr, ptr @tris, align 8, !tbaa !18
  %i.eb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.ec = getelementptr inbounds nuw [80 x i8], ptr %i.ea, i64 %i.eb ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv.i ; 4 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !29
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !26 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !29
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26 ; 2 uses
  %i.ek = icmp eq ptr %i.eg, %i.ej
  br i1 %i.ek, label %bb.ab, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !tbaa !30
  %.pre35.i = load ptr, ptr %.pre34.i, align 8, !tbaa !26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !30
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !30
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !26 ; 2 uses
  %i.er = icmp eq ptr %i.en, %i.eq
  br i1 %i.er, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.es = phi ptr [ %.pre35.i, %._crit_edge.i ], [ %i.eq, %bb.ab ]
  %i.et = icmp eq ptr %i.eg, %i.es
  br i1 %i.et, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !30
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.ex = icmp eq ptr %i.ew, %i.ej
  br i1 %i.ex, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.0219320, ptr %i.ey, align 8, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store i64 %.0220322, ptr %i.ez, align 8, !tbaa !31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fa = load ptr, ptr @tris, align 8, !tbaa !18
  %i.fb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0220322) #12
  %i.fc = getelementptr inbounds nuw [80 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load ptr, ptr @tris, align 8, !tbaa !18
  %i.fe = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.0219320) #12
  %i.ff = getelementptr inbounds nuw [80 x i8], ptr %i.fd, i64 %i.fe ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %indvars.iv.i ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !29
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !26 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !29
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !26 ; 2 uses
  %i.fn = icmp eq ptr %i.fj, %i.fm
  br i1 %i.fn, label %bb.ag, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.af
  %.phi.trans.insert37.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %.pre38.i = load ptr, ptr %.phi.trans.insert37.i, align 8, !tbaa !30
  %.pre39.i = load ptr, ptr %.pre38.i, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !30
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !30
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !26 ; 2 uses
  %i.fu = icmp eq ptr %i.fq, %i.ft
  br i1 %i.fu, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge36.i
  %i.fv = phi ptr [ %.pre39.i, %._crit_edge36.i ], [ %i.ft, %bb.ag ]
  %i.fw = icmp eq ptr %i.fj, %i.fv
  br i1 %i.fw, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !30
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !26
  %i.ga = icmp eq ptr %i.fz, %i.fm
  br i1 %i.ga, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 %.0219320, ptr %i.gb, align 8, !tbaa !31
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  store i64 %.0220322, ptr %i.gc, align 8, !tbaa !31
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %connecttris.exit, label %.preheader.i, !llvm.loop !41

connecttris.exit:                                 ; preds = %bb.ak
  %i.gd = add nuw i64 %.0219320, 1                ; 2 uses
  %tris.val265 = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %tris.val265
  br i1 %i.ge, label %.preheader.i.preheader, label %.loopexit290, !llvm.loop !42

.lr.ph326:                                        ; preds = %.preheader289, %bb.al
  %.1221325 = phi i64 [ %i.gg, %bb.al ], [ 0, %.preheader289 ] ; 3 uses
  %i.gf = tail call fastcc i32 @pointintri(i64 noundef %.1221325, ptr noundef %1)
  %.not247 = trunc nuw i32 %i.gf to i1
  %tris.val263.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 3 uses
  br i1 %.not247, label %._crit_edge327, label %bb.al

bb.al:                                            ; preds = %.lr.ph326
  %i.gg = add nuw i64 %.1221325, 1                ; 3 uses
  %i.gh = icmp ult i64 %i.gg, %tris.val263.pre.pre
  br i1 %i.gh, label %.lr.ph326, label %._crit_edge327, !llvm.loop !43

._crit_edge327:                                   ; preds = %bb.al, %.lr.ph326
  %.1221.lcssa = phi i64 [ %i.gg, %bb.al ], [ %.1221325, %.lr.ph326 ] ; 6 uses
  %i.gi = icmp eq i64 %.1221.lcssa, %tris.val263.pre.pre
  br i1 %i.gi, label %._crit_edge327.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge327
  %.not356 = icmp eq i64 %tris.val263.pre.pre, 0
  br i1 %.not356, label %._crit_edge334.thread, label %.preheader.a

.preheader.a:                                     ; preds = %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph333

._crit_edge327.thread:                            ; preds = %.preheader291, %.preheader289, %._crit_edge327
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 182, ptr noundef nonnull @.str.6) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

.lr.ph333:                                        ; preds = %.preheader.a, %bb.am
  %.2222332 = phi i64 [ 0, %.preheader.a ], [ %i.gn, %bb.am ] ; 3 uses
  %i.gm = tail call fastcc i32 @pointintri(i64 noundef %.2222332, ptr noundef nonnull %i.gj)
  %.not248 = trunc nuw i32 %i.gm to i1
  %tris.val.pre.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @tris, i64 16), align 8, !tbaa !51 ; 2 uses
  br i1 %.not248, label %._crit_edge334, label %bb.am

bb.am:                                            ; preds = %.lr.ph333
  %i.gn = add nuw i64 %.2222332, 1                ; 3 uses
  %i.go = icmp ult i64 %i.gn, %tris.val.pre.pre
  br i1 %i.go, label %.lr.ph333, label %._crit_edge334, !llvm.loop !44

._crit_edge334:                                   ; preds = %bb.am, %.lr.ph333
  %.2222.lcssa.ph = phi i64 [ %i.gn, %bb.am ], [ %.2222332, %.lr.ph333 ] ; 3 uses
  %i.gp = icmp eq i64 %.2222.lcssa.ph, %tris.val.pre.pre
  br i1 %i.gp, label %._crit_edge334.thread, label %bb.an

._crit_edge334.thread:                            ; preds = %.preheader, %._crit_edge334
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gq, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @.str.7) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  br label %bb.ce

bb.an:                                            ; preds = %._crit_edge334
  %i.gs = tail call fastcc zeroext i1 @marktripath(i64 noundef %.1221.lcssa, i64 noundef %.2222.lcssa.ph)
  br i1 %i.gs, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gt = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @.str.8) #14 ; 0 uses
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.gv = tail call fastcc i32 @growops(i64 noundef 2)
  %.not249 = icmp eq i32 %i.gv, 0
  br i1 %.not249, label %bb.ap, label %bb.ce

bb.ap:                                            ; preds = %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.gw, align 8, !tbaa !49
  %i.gx = load ptr, ptr @ops, align 8, !tbaa !32  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %5 = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.gx, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.aq:                                            ; preds = %bb.an
  %i.gz = icmp eq i64 %.1221.lcssa, %.2222.lcssa.ph
  br i1 %i.gz, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef %i.p) #12
  tail call void @free(ptr noundef %i.h) #12
  tail call void @free(ptr noundef %i.c) #12
  %i.ha = load i64, ptr @opn, align 8, !tbaa !33
  %.not.i = icmp ult i64 %i.ha, 2
  %.pre380 = load ptr, ptr @ops, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hb = tail call dereferenceable_or_null(32) ptr @realloc(ptr noundef %.pre380, i64 noundef 32) #17 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %growops.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.hb, ptr @ops, align 8, !tbaa !32
  store i64 2, ptr @opn, align 8, !tbaa !33
  br label %bb.au

growops.exit:                                     ; preds = %bb.as
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.he = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hd, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 441, ptr noundef nonnull @.str.11) #14 ; 0 uses
  br label %bb.ce

bb.au:                                            ; preds = %bb.ar, %bb.at
  %i.hf = phi ptr [ %.pre380, %bb.ar ], [ %i.hb, %bb.at ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.hg, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !61
  %6 = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !tbaa.struct !61
  store ptr %i.hf, ptr %2, align 8, !tbaa !55
  br label %bb.ce

bb.av:                                            ; preds = %bb.aq
  store ptr %1, ptr %3, align 16, !tbaa !26
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.hi, align 8, !tbaa !58
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %7, ptr %i.hj, align 16, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.hk, align 8, !tbaa !58
  %.not19.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not19.i.not, label %bb.aw, label %add2dq.exit

bb.aw:                                            ; preds = %bb.av
  %i.hl = load ptr, ptr %i.p, align 8, !tbaa !27
  store ptr %i.hl, ptr %i.hi, align 8, !tbaa !58
  br label %add2dq.exit

add2dq.exit:                                      ; preds = %bb.av, %bb.aw
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !20
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac
  store ptr %3, ptr %i.hm, align 8, !tbaa !27
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 %i.ac, ptr %i.hn, align 8, !tbaa !34
  %.not250343 = icmp eq i64 %.1221.lcssa, -1
  br i1 %.not250343, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %add2dq.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph345, %.loopexit
  %.3223344 = phi i64 [ %.1221.lcssa, %.lr.ph345 ], [ %i.mi, %.loopexit ] ; 2 uses
  %i.hp = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.ll, %.loopexit ] ; 8 uses
  %i.hq = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.lk, %.loopexit ] ; 7 uses
  %i.hr = phi i64 [ %i.ac, %.lr.ph345 ], [ %i.lj, %.loopexit ] ; 3 uses
  %i.hs = load ptr, ptr @tris, align 8, !tbaa !18
  %i.ht = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %.3223344) #12
  %i.hu = getelementptr inbounds nuw [80 x i8], ptr %i.hs, i64 %i.ht ; 9 uses
  store i32 2, ptr %i.hu, align 8, !tbaa !35
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24 ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !31 ; 2 uses
  %.not254 = icmp eq i64 %i.hw, -1
  br i1 %.not254, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hx = load ptr, ptr @tris, align 8, !tbaa !18
  %i.hy = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.hw) #12
  %i.hz = getelementptr inbounds nuw [80 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !35
  %i.ib = icmp eq i32 %i.ia, 1
  br i1 %i.ib, label %.thread.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !31 ; 2 uses
  %.not254.1 = icmp eq i64 %i.id, -1
  br i1 %.not254.1, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ie = load ptr, ptr @tris, align 8, !tbaa !18
  %i.if = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.id) #12
  %i.ig = getelementptr inbounds nuw [80 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !35
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %.thread.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !31 ; 2 uses
  %.not254.2 = icmp eq i64 %i.ik, -1
  br i1 %.not254.2, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.il = load ptr, ptr @tris, align 8, !tbaa !18
  %i.im = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.ik) #12
  %i.in = getelementptr inbounds nuw [80 x i8], ptr %i.il, i64 %i.im
  %i.io = load i32, ptr %i.in, align 8, !tbaa !35
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %.thread.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hp
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !27
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !26 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !27
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !26 ; 2 uses
  %i.iw = load double, ptr %7, align 8
  %i.ix = load double, ptr %i.ho, align 8
  %i.iy = load double, ptr %i.is, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ja = load double, ptr %i.iz, align 8
  %i.jb = load double, ptr %i.iv, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jd = load double, ptr %i.jc, align 8
  %i.je = call i32 @ccw(double %i.iw, double %i.ix, double %i.iy, double %i.ja, double %i.jb, double %i.jd) #12
  %i.jf = icmp eq i32 %i.je, 1                    ; 2 uses
  %i.jg = load ptr, ptr %i.it, align 8, !tbaa !27 ; 2 uses
  %. = select i1 %i.jf, ptr %i.jg, ptr %i.hj
  %.287 = select i1 %i.jf, ptr %i.hj, ptr %i.jg
  br label %bb.bg

.thread.loopexit:                                 ; preds = %bb.bc, %bb.ba, %bb.ay
  %.cmp = phi i64 [ 1, %bb.ay ], [ 1, %bb.ba ], [ -2, %bb.bc ]
  %.0217338.lcssa.wide = phi i64 [ 0, %bb.ay ], [ 1, %bb.ba ], [ 2, %bb.bc ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ji = getelementptr [24 x i8], ptr %i.jh, i64 %.cmp
  %i.jj = getelementptr [24 x i8], ptr %i.ji, i64 %.0217338.lcssa.wide
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !30
  %i.jm = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %.0217338.lcssa.wide ; 4 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !29
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !26 ; 2 uses
  %i.jp = load ptr, ptr %i.jl, align 8, !tbaa !26 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !30
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !26 ; 2 uses
  %i.jt = load double, ptr %i.jo, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jv = load double, ptr %i.ju, align 8
  %i.jw = load double, ptr %i.jp, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jy = load double, ptr %i.jx, align 8
  %i.jz = load double, ptr %i.js, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.kb = load double, ptr %i.ka, align 8
  %i.kc = call i32 @ccw(double %i.jt, double %i.jv, double %i.jw, double %i.jy, double %i.jz, double %i.kb) #12
  %i.kd = icmp eq i32 %i.kc, 1
  br i1 %i.kd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread.loopexit
  %i.ke = load ptr, ptr %i.jq, align 8, !tbaa !30
  %i.kf = load ptr, ptr %i.jm, align 8, !tbaa !29
  br label %bb.bg

bb.bf:                                            ; preds = %.thread.loopexit
  %i.kg = load ptr, ptr %i.jm, align 8, !tbaa !29
  %i.kh = load ptr, ptr %i.jq, align 8, !tbaa !30
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %bb.be, %bb.bf
  %.0216 = phi ptr [ %., %bb.bd ], [ %i.kg, %bb.bf ], [ %i.ke, %bb.be ] ; 5 uses
  %.0215 = phi ptr [ %.287, %bb.bd ], [ %i.kh, %bb.bf ], [ %i.kf, %bb.be ] ; 7 uses
  %i.ki = icmp eq i64 %.3223344, %.1221.lcssa
  br i1 %i.ki, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %.not19.i268 = icmp ult i64 %i.hq, %i.hp
  br i1 %.not19.i268, label %add2dq.exit270, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !27
  %i.kl = getelementptr inbounds nuw i8, ptr %.0216, i64 8
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !58
  br label %add2dq.exit270

add2dq.exit270:                                   ; preds = %bb.bh, %bb.bi
  %i.km = add i64 %i.hq, 1                        ; 4 uses
  store i64 %i.km, ptr %i.ad, align 8, !tbaa !21
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.km
  store ptr %.0216, ptr %i.kn, align 8, !tbaa !27
  %.not19.i271 = icmp ult i64 %i.km, %i.hp
  br i1 %.not19.i271, label %add2dq.exit273, label %bb.bj

bb.bj:                                            ; preds = %add2dq.exit270
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hp
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !27
  %i.kq = getelementptr inbounds nuw i8, ptr %.0215, i64 8
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !58
  br label %add2dq.exit273

add2dq.exit273:                                   ; preds = %add2dq.exit270, %bb.bj
  %i.kr = add i64 %i.hp, -1                       ; 3 uses
  store i64 %i.kr, ptr %i.ab, align 8, !tbaa !20
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kr
  store ptr %.0215, ptr %i.ks, align 8, !tbaa !27
  br label %bb.bq

bb.bk:                                            ; preds = %bb.bg
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hp
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !27
  %.not255 = icmp eq ptr %i.ku, %.0215
  br i1 %.not255, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hq
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !27
  %.not256 = icmp eq ptr %i.kw, %.0215
  br i1 %.not256, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kx = call fastcc i64 @finddqsplit(ptr noundef %4, ptr noundef %.0215) ; 4 uses
  %.not19.i274 = icmp ult i64 %i.hq, %i.kx
  br i1 %.not19.i274, label %add2dq.exit276, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !27
  %i.la = getelementptr inbounds nuw i8, ptr %.0215, i64 8
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !58
  br label %add2dq.exit276

add2dq.exit276:                                   ; preds = %bb.bm, %bb.bn
  %i.lb = add i64 %i.kx, -1                       ; 3 uses
  store i64 %i.lb, ptr %i.ab, align 8, !tbaa !20
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lb
  store ptr %.0215, ptr %i.lc, align 8, !tbaa !27
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.kx, i64 %i.hr) ; 2 uses
  store i64 %spec.store.select, ptr %i.hn, align 8, !tbaa !34
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.ld = call fastcc i64 @finddqsplit(ptr noundef %4, ptr noundef %.0216) ; 4 uses
  %.not19.i277 = icmp ult i64 %i.ld, %i.hp
  br i1 %.not19.i277, label %add2dq.exit279, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ld
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !27
  %i.lg = getelementptr inbounds nuw i8, ptr %.0216, i64 8
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !58
  br label %add2dq.exit279

add2dq.exit279:                                   ; preds = %bb.bo, %bb.bp
  %i.lh = add i64 %i.ld, 1                        ; 3 uses
  store i64 %i.lh, ptr %i.ad, align 8, !tbaa !21
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.lh
  store ptr %.0216, ptr %i.li, align 8, !tbaa !27
  %spec.store.select288 = call i64 @llvm.umin.i64(i64 %i.ld, i64 %i.hr) ; 2 uses
  store i64 %spec.store.select288, ptr %i.hn, align 8, !tbaa !34
  br label %bb.bq

bb.bq:                                            ; preds = %add2dq.exit279, %add2dq.exit276, %add2dq.exit273
  %i.lj = phi i64 [ %spec.store.select288, %add2dq.exit279 ], [ %spec.store.select, %add2dq.exit276 ], [ %i.hr, %add2dq.exit273 ]
  %i.lk = phi i64 [ %i.lh, %add2dq.exit279 ], [ %i.hq, %add2dq.exit276 ], [ %i.km, %add2dq.exit273 ]
  %i.ll = phi i64 [ %i.hp, %add2dq.exit279 ], [ %i.lb, %add2dq.exit276 ], [ %i.kr, %add2dq.exit273 ]
  %i.lm = load i64, ptr %i.hv, align 8, !tbaa !31 ; 2 uses
  %.not257 = icmp eq i64 %i.lm, -1
  br i1 %.not257, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ln = load ptr, ptr @tris, align 8, !tbaa !18
  %i.lo = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.lm) #12
  %i.lp = getelementptr inbounds nuw [80 x i8], ptr %i.ln, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !35
  %i.lr = icmp eq i32 %i.lq, 1
  br i1 %i.lr, label %.loopexit, label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !31 ; 2 uses
  %.not257.1 = icmp eq i64 %i.lt, -1
  br i1 %.not257.1, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lu = load ptr, ptr @tris, align 8, !tbaa !18
  %i.lv = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.lt) #12
  %i.lw = getelementptr inbounds nuw [80 x i8], ptr %i.lu, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !35
  %i.ly = icmp eq i32 %i.lx, 1
  br i1 %i.ly, label %.loopexit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.lz = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !31 ; 2 uses
  %.not257.2 = icmp eq i64 %i.ma, -1
  br i1 %.not257.2, label %._crit_edge346, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mb = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.mc = load ptr, ptr @tris, align 8, !tbaa !18
  %i.md = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 @tris, i64 noundef %i.ma) #12
  %i.me = getelementptr inbounds nuw [80 x i8], ptr %i.mc, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !35
  %i.mg = icmp eq i32 %i.mf, 1
  br i1 %i.mg, label %.loopexit, label %._crit_edge346

.loopexit:                                        ; preds = %bb.br, %bb.bt, %bb.bv
  %.lcssa359 = phi ptr [ %i.hu, %bb.br ], [ %i.hv, %bb.bt ], [ %i.mb, %bb.bv ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.lcssa359, i64 24
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !31 ; 2 uses
  %.not250 = icmp eq i64 %i.mi, -1
  br i1 %.not250, label %._crit_edge346, label %bb.ax, !llvm.loop !45

._crit_edge346:                                   ; preds = %bb.bu, %bb.bv, %.loopexit, %add2dq.exit
  call void @free(ptr noundef %i.p) #12
  br label %bb.bw
end_hunk_0
