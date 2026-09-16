Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/ns?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.18 = type { %union.anon.19, ptr, ptr }
%union.anon.19 = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.anon.16 = type { %union.anon.17, ptr, %struct.dfs_state_t }
%union.anon.17 = type { %struct.list_t_ }
%struct.dfs_state_t = type { ptr, ptr, i32, i32, i32 }
%struct.anon.9 = type { %union.anon.10, ptr, %struct.state_t.11 }
%union.anon.10 = type { %struct.list_t_ }
%struct.state_t.11 = type { ptr, ptr, i32, i32 }
%struct.anon.7 = type { %union.anon.8, ptr, %struct.dfs_state_t }
%union.anon.8 = type { %struct.list_t_ }
%struct.anon.5 = type { %union.anon.6, ptr, %struct.state_t }
%union.anon.6 = type { %struct.list_t_ }
%struct.state_t = type { ptr, ptr, ptr, i32, i32 }
%struct.anon.3 = type { %union.anon.4, ptr, %struct.tst_t }
%union.anon.4 = type { %struct.list_t_ }
%struct.tst_t = type { ptr, i32, i32, i32 }
%struct.anon.1 = type { %union.anon.2, ptr, ptr }
%union.anon.2 = type { %struct.list_t_ }
%struct.network_simplex_ctx_t = type { ptr, %struct.anon, i64, i64, i64, i32 }
%struct.anon = type { %union.anon, ptr, ptr }
%union.anon = type { %struct.list_t_ }
%struct.anon.14 = type { %union.anon.15, ptr, ptr }
%union.anon.15 = type { %struct.list_t_ }
%struct.anon.12 = type { %union.anon.13, ptr, ptr }
%union.anon.13 = type { %struct.list_t_ }

@__const.rank2.ns = private unnamed_addr constant [18 x i8] c"network simplex: \00", align 16
@Verbose = external local_unnamed_addr global i8, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s %zu nodes %zu edges maxiter=%d balance=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s%zu nodes %zu edges %d iter %.2f sec\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"searchsize\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"trouble in init_rank\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\09%s %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"list element type is not a pointer, but `free` used as destructor\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"add_tree_edge: missing tree edge\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"add_tree_edge: empty outedge list\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"add_tree_edge: empty inedge list\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"overflow when computing edge weight sum\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"update: mismatched lca in treeupdates\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"invalidate_path: skipped over LCA\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"TBbalance\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"max\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @rank2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.anon.18, align 8            ; 19 uses
  %5 = alloca %struct.anon.16, align 8            ; 26 uses
  %6 = alloca %struct.anon.9, align 8             ; 22 uses
  %7 = alloca %struct.anon.7, align 8             ; 26 uses
  %8 = alloca %struct.anon.5, align 8             ; 26 uses
  %9 = alloca %struct.anon.3, align 8             ; 31 uses
  %10 = alloca %struct.anon.1, align 8            ; 18 uses
  %i.a = alloca [18 x i8], align 16               ; 6 uses
  %11 = alloca %struct.network_simplex_ctx_t, align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.a, ptr noundef nonnull align 16 dereferenceable(18) @__const.rank2.ns, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %11, i8 0, i64 88, i1 false)
  %i.b = load i8, ptr @Verbose, align 1, !tbaa !10
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %.0115.i = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %.not6.i = icmp eq ptr %.0115.i, null
  br i1 %.not6.i, label %graphSize.exit, label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %bb.b, %._crit_edge.i
  %.0119.i = phi ptr [ %.011.i, %._crit_edge.i ], [ %.0115.i, %bb.b ]
  %.0128.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %.0137.i = phi i64 [ %12, %._crit_edge.i ], [ 0, %bb.b ]
  %12 = add i64 %.0137.i, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0119.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35
  %.not141.i = icmp eq ptr %i.i, null
  br i1 %.not141.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph11.i
  %.1.lcssa.i = phi i64 [ %.0128.i, %.lr.ph11.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.011.i = load ptr, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %graphSize.exit, label %.lr.ph11.i, !llvm.loop !67

.lr.ph.i:                                         ; preds = %.lr.ph11.i, %.lr.ph.i
  %.03.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %.lr.ph11.i ]
  %.12.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.0128.i, %.lr.ph11.i ]
  %i.k = add i64 %.12.i, 1                        ; 2 uses
  %i.l = add i64 %.03.i, 1                        ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %.not14.i = icmp eq ptr %i.n, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !68

graphSize.exit:                                   ; preds = %._crit_edge.i, %bb.b
  %.013.lcssa.i = phi i64 [ 0, %bb.b ], [ %12, %._crit_edge.i ]
  %.012.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !127
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i64 noundef %.013.lcssa.i, i64 noundef %.012.lcssa.i, i32 noundef %2, i32 noundef %1) #18 ; 0 uses
  call void @start_timer() #17
  br label %bb.c

bb.c:                                             ; preds = %graphSize.exit, %bb.a
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 21 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.3.0..sroa_idx.i, i8 0, i64 80, i1 false)
  store ptr %0, ptr %11, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %.04366.i = load ptr, ptr %i.s, align 8, !tbaa !18 ; 2 uses
  %.not67.i = icmp eq ptr %.04366.i, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 6 uses
  br i1 %.not67.i, label %._crit_edge104.i, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.d

._crit_edge71.i:                                  ; preds = %bb.e
  store i64 %i.ab, ptr %.phi.trans.insert.i, align 8, !tbaa !129
  br label %._crit_edge104.i

._crit_edge104.i:                                 ; preds = %bb.c, %._crit_edge71.i
  %i.u = phi i64 [ %i.ab, %._crit_edge71.i ], [ 0, %bb.c ]
  call void @gv_list_reserve_(ptr noundef nonnull %.sroa.3.0..sroa_idx.i, i64 noundef %i.u, i64 noundef 8) #17
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  %.03982.i = load ptr, ptr %i.w, align 8, !tbaa !18 ; 2 uses
  %.not4583.i = icmp eq ptr %.03982.i, null
  br i1 %.not4583.i, label %init_graph.exit.thread, label %.lr.ph87.i

bb.d:                                             ; preds = %bb.e, %.lr.ph70.i
  %.lcssa227232 = phi i64 [ 0, %.lr.ph70.i ], [ %.lcssa227231, %bb.e ] ; 2 uses
  %i.x = phi i64 [ 0, %.lr.ph70.i ], [ %i.ab, %bb.e ]
  %.04368.i = phi ptr [ %.04366.i, %.lr.ph70.i ], [ %.043.i, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %.04368.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  store i64 0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = add i64 %i.x, 1                         ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %.not4863.i = icmp eq ptr %i.ae, null
  br i1 %.not4863.i, label %bb.e, label %.lr.ph.i52

._crit_edge.i53:                                  ; preds = %.lr.ph.i52
  store i64 %i.ah, ptr %i.t, align 8, !tbaa !130
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i53, %bb.d
  %.lcssa227231 = phi i64 [ %i.ah, %._crit_edge.i53 ], [ %.lcssa227232, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %.043.i = load ptr, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %.not.i54 = icmp eq ptr %.043.i, null
  br i1 %.not.i54, label %._crit_edge71.i, label %bb.d, !llvm.loop !69

.lr.ph.i52:                                       ; preds = %bb.d, %.lr.ph.i52
  %i.ag = phi i64 [ %i.ah, %.lr.ph.i52 ], [ %.lcssa227232, %bb.d ]
  %.04264.i = phi i64 [ %i.ai, %.lr.ph.i52 ], [ 0, %bb.d ]
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = add i64 %.04264.i, 1                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  %.not48.i = icmp eq ptr %i.ak, null
  br i1 %.not48.i, label %._crit_edge.i53, label %.lr.ph.i52, !llvm.loop !70

.lr.ph87.i:                                       ; preds = %._crit_edge104.i, %gv_calloc.exit53.i
  %.03985.i = phi ptr [ %.039.i, %gv_calloc.exit53.i ], [ %.03982.i, %._crit_edge104.i ]
  %.04084.i = phi i1 [ %.141.lcssa112.i, %gv_calloc.exit53.i ], [ true, %._crit_edge104.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03985.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 456 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !131
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 256
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 2 uses
  %.not4674.i = icmp eq ptr %i.aq, null
  br i1 %.not4674.i, label %.thread.i, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph87.i, %.lr.ph78.i
  %i.ar = phi i32 [ %i.at, %.lr.ph78.i ], [ 0, %.lr.ph87.i ]
  %i.as = phi ptr [ %i.bw, %.lr.ph78.i ], [ %i.aq, %.lr.ph87.i ] ; 4 uses
  %.076.i = phi i64 [ %i.bu, %.lr.ph78.i ], [ 0, %.lr.ph87.i ] ; 2 uses
  %.14175.i = phi i1 [ %spec.select.i, %.lr.ph78.i ], [ %.04084.i, %.lr.ph87.i ]
  %i.at = add nuw nsw i32 %i.ar, 1                ; 2 uses
  store i32 %i.at, ptr %i.an, align 8, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  store i32 0, ptr %i.aw, align 8, !tbaa !132
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 220
  store i32 -1, ptr %i.ax, align 4, !tbaa !47
  %i.ay = load i32, ptr %i.as, align 8
  %i.az = and i32 %i.ay, 3                        ; 2 uses
  %i.ba = icmp eq i32 %i.az, 2
  %i.bb = select i1 %i.ba, i64 56, i64 -8
  %i.bc = getelementptr inbounds i8, ptr %i.as, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 360
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !52
  %i.bi = icmp eq i32 %i.az, 3
  %i.bj = select i1 %i.bi, i64 56, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !52
  %i.bq = sub nsw i32 %i.bh, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 228
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !53
  %i.bt = icmp sge i32 %i.bq, %i.bs
  %spec.select.i = select i1 %i.bt, i1 %.14175.i, i1 false ; 3 uses
  %i.bu = add i64 %.076.i, 1                      ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %.not46.i = icmp eq ptr %i.bw, null
  br i1 %.not46.i, label %._crit_edge79.i, label %.lr.ph78.i, !llvm.loop !71

._crit_edge79.i:                                  ; preds = %.lr.ph78.i
  %i.bx = add i64 %.076.i, 2                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge79.i
  %i.by = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #19
  br label %gv_calloc.exit.i

bb.f:                                             ; preds = %._crit_edge79.i
  %mul.ov.i.i = icmp ugt i64 %i.bx, 2305843009213693951
  br i1 %mul.ov.i.i, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !127
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.4, i64 noundef %i.bx, i64 noundef 8) #18 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

.thread.i:                                        ; preds = %bb.f, %.lr.ph87.i
  %.141.lcssa113119.i = phi i1 [ %spec.select.i, %bb.f ], [ %.04084.i, %.lr.ph87.i ]
  %.0.lcssa114118.i = phi i64 [ %i.bx, %bb.f ], [ 1, %.lr.ph87.i ] ; 2 uses
  %i.cb = call noalias ptr @calloc(i64 noundef %.0.lcssa114118.i, i64 noundef 8) #19 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.h, label %gv_calloc.exit.i

bb.h:                                             ; preds = %.thread.i
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !127
  %i.ce = shl nuw i64 %.0.lcssa114118.i, 3
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.5, i64 noundef %i.ce) #18 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit.i:                                 ; preds = %.thread.i, %.thread.i.i
  %.141.lcssa112.i = phi i1 [ %spec.select.i, %.thread.i.i ], [ %.141.lcssa113119.i, %.thread.i ] ; 2 uses
  %i.cg = phi ptr [ %i.by, %.thread.i.i ], [ %i.cb, %.thread.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.am, i64 408
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw i8, ptr %i.am, i64 416
  store i64 0, ptr %i.ci, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 272
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %gv_calloc.exit.i
  %.1.i = phi i64 [ 0, %gv_calloc.exit.i ], [ %i.cn, %bb.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.1.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !35
  %.not47.i = icmp eq ptr %i.cm, null
  %i.cn = add i64 %.1.i, 1                        ; 6 uses
  br i1 %.not47.i, label %bb.j, label %bb.i, !llvm.loop !72

bb.j:                                             ; preds = %bb.i
  %.not.i49.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i49.i, label %.thread.i52.i, label %bb.k

.thread.i52.i:                                    ; preds = %bb.j
  %i.co = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #19
  br label %gv_calloc.exit53.i

bb.k:                                             ; preds = %bb.j
  %mul.ov.i51.i = icmp ugt i64 %i.cn, 2305843009213693951
  br i1 %mul.ov.i51.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !127
  %i.cq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.4, i64 noundef %i.cn, i64 noundef 8) #18 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cr = call noalias ptr @calloc(i64 noundef %i.cn, i64 noundef 8) #19 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.n, label %gv_calloc.exit53.i

bb.n:                                             ; preds = %bb.m
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !127
  %i.cu = shl nuw i64 %i.cn, 3
  %i.cv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.5, i64 noundef %i.cu) #18 ; 0 uses
  call fastcc void @graphviz_exit() #20
  unreachable

gv_calloc.exit53.i:                               ; preds = %bb.m, %.thread.i52.i
  %i.cw = phi ptr [ %i.co, %.thread.i52.i ], [ %i.cr, %bb.m ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 424
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  store i64 0, ptr %i.cy, align 8, !tbaa !57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %.039.i = load ptr, ptr %i.cz, align 8, !tbaa !18 ; 2 uses
  %.not45.i = icmp eq ptr %.039.i, null
  br i1 %.not45.i, label %init_graph.exit, label %.lr.ph87.i, !llvm.loop !73

init_graph.exit:                                  ; preds = %gv_calloc.exit53.i
  br i1 %.141.lcssa112.i, label %init_graph.exit.thread, label %bb.o

bb.o:                                             ; preds = %init_graph.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  %i.da = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !129
  call void @gv_list_reserve_(ptr noundef nonnull %10, i64 noundef %i.da, i64 noundef 8) #17
  %i.db = load ptr, ptr %11, align 8, !tbaa !133
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 256
  %.05066.i = load ptr, ptr %i.de, align 8, !tbaa !18 ; 2 uses
  %.not67.i55 = icmp eq ptr %.05066.i, null
  br i1 %.not67.i55, label %.preheader65.i, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  br label %bb.p

.preheader65.i:                                   ; preds = %bb.r, %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %.val6376.i = load i64, ptr %i.dg, align 8, !tbaa !59
  %.not5677.i = icmp eq i64 %.val6376.i, 0
  br i1 %.not5677.i, label %._crit_edge.i58, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.preheader65.i
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 4 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.r, %.lr.ph.i56
  %.05068.i = phi ptr [ %.05066.i, %.lr.ph.i56 ], [ %.050.i, %bb.r ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.05068.i, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 456
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !131
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.05068.i, ptr %i.df, align 8, !tbaa !61
  %i.dn = call i64 @gv_list_append_slot_(ptr noundef nonnull %10, i64 noundef 8) #17
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !61
  %i.dp = load ptr, ptr %10, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !18
  %.pre.i59 = load ptr, ptr %i.di, align 8, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dr = phi ptr [ %i.dj, %bb.p ], [ %.pre.i59, %bb.q ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 240
  %.050.i = load ptr, ptr %i.ds, align 8, !tbaa !18 ; 2 uses
  %.not.i57 = icmp eq ptr %.050.i, null
  br i1 %.not.i57, label %.preheader65.i, label %bb.p, !llvm.loop !74

.loopexit64.i:                                    ; preds = %bb.u, %.preheader.i
  %.val63.i = load i64, ptr %i.dg, align 8, !tbaa !59
  %.not56.i = icmp eq i64 %.val63.i, 0
  br i1 %.not56.i, label %._crit_edge.i58, label %bb.s, !llvm.loop !75

bb.s:                                             ; preds = %.loopexit64.i, %.lr.ph79.i
  %.04778.i = phi i64 [ 0, %.lr.ph79.i ], [ %13, %.loopexit64.i ]
  call void @gv_list_pop_front_(ptr noundef nonnull %10, ptr noundef nonnull %i.dh, i64 noundef 8) #17
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !16 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 360 ; 2 uses
  store i32 0, ptr %i.dw, align 8, !tbaa !52
  %13 = add i64 %.04778.i, 1                      ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 256
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !40 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !35 ; 2 uses
  %.not6169.i = icmp eq ptr %i.dz, null
  br i1 %.not6169.i, label %.preheader.i, label %.lr.ph71.i

.preheader.i:                                     ; preds = %.lr.ph71.i, %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 272
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !34
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !35 ; 2 uses
  %.not6273.i = icmp eq ptr %i.ec, null
  br i1 %.not6273.i, label %.loopexit64.i, label %.lr.ph75.i

.lr.ph71.i:                                       ; preds = %bb.s, %.lr.ph71.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph71.i ], [ 0, %bb.s ]
  %.72.i = phi i32 [ %..i, %.lr.ph71.i ], [ 0, %bb.s ]
  %i.ed = phi ptr [ %i.eu, %.lr.ph71.i ], [ %i.dz, %bb.s ] ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = and i32 %i.ee, 3
  %i.eg = icmp eq i32 %i.ef, 3
  %i.eh = select i1 %i.eg, i64 56, i64 120
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 360
  %i.en = load i32, ptr %i.em, align 8, !tbaa !52
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 228
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !53
  %i.es = add nsw i32 %i.er, %i.en
  %..i = call i32 @llvm.smax.i32(i32 %.72.i, i32 %i.es) ; 2 uses
  store i32 %..i, ptr %i.dw, align 8, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next.i
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !35 ; 2 uses
  %.not61.i = icmp eq ptr %i.eu, null
  br i1 %.not61.i, label %.preheader.i, label %.lr.ph71.i, !llvm.loop !76

.lr.ph75.i:                                       ; preds = %.preheader.i, %bb.u
  %i.ev = phi ptr [ %i.fu, %bb.u ], [ %i.dv, %.preheader.i ]
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %bb.u ], [ 0, %.preheader.i ]
  %i.ew = phi ptr [ %i.fy, %bb.u ], [ %i.ec, %.preheader.i ] ; 5 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = and i32 %i.ex, 3
  %i.ez = icmp eq i32 %i.ey, 2
  %i.fa = getelementptr inbounds i8, ptr %i.ew, i64 -64 ; 2 uses
  %i.fb = select i1 %i.ez, ptr %i.ew, ptr %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !51
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 456 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !131 ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !131
  %i.fj = icmp slt i32 %i.fh, 2
  br i1 %i.fj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph75.i
  %i.fk = load i32, ptr %i.ew, align 8
  %i.fl = and i32 %i.fk, 3
  %i.fm = icmp eq i32 %i.fl, 2
  %i.fn = select i1 %i.fm, ptr %i.ew, ptr %i.fa
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !51
  store ptr %i.fp, ptr %i.dh, align 8, !tbaa !61
  %i.fq = call i64 @gv_list_append_slot_(ptr noundef nonnull %10, i64 noundef 8) #17
  %i.fr = load ptr, ptr %i.dh, align 8, !tbaa !61
  %i.fs = load ptr, ptr %10, align 8, !tbaa !10
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !18
  %.pre95.i = load ptr, ptr %i.du, align 8, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph75.i
  %i.fu = phi ptr [ %i.ev, %.lr.ph75.i ], [ %.pre95.i, %bb.t ] ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 272
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !34
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.next93.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 2 uses
  %.not62.i = icmp eq ptr %i.fy, null
  br i1 %.not62.i, label %.loopexit64.i, label %.lr.ph75.i, !llvm.loop !77

._crit_edge.i58:                                  ; preds = %.loopexit64.i, %.preheader65.i
  %.047.lcssa.i = phi i64 [ 0, %.preheader65.i ], [ %13, %.loopexit64.i ]
  %i.fz = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !129
  %.not57.i = icmp eq i64 %.047.lcssa.i, %i.fz
  br i1 %.not57.i, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i58
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.6) #17
  %i.ga = load ptr, ptr %11, align 8, !tbaa !133
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 256
  %.04680.i = load ptr, ptr %i.gd, align 8, !tbaa !18 ; 2 uses
  %.not5881.i = icmp eq ptr %.04680.i, null
  br i1 %.not5881.i, label %.loopexit.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.v, %bb.x
  %.04682.i = phi ptr [ %.046.i, %bb.x ], [ %.04680.i, %bb.v ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.04682.i, i64 16 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 456
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !131
  %.not60.i = icmp eq i32 %i.gh, 0
  br i1 %.not60.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph84.i
  %i.gi = call ptr @agnameof(ptr noundef nonnull %.04682.i) #17
  %i.gj = load ptr, ptr %i.ge, align 8, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 456
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !131
  %i.gm = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef %i.gi, i32 noundef %i.gl) #17 ; 0 uses
  %.pre96.i = load ptr, ptr %i.ge, align 8, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph84.i
  %i.gn = phi ptr [ %i.gf, %.lr.ph84.i ], [ %.pre96.i, %bb.w ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 240
  %.046.i = load ptr, ptr %i.go, align 8, !tbaa !18 ; 2 uses
  %.not58.i = icmp eq ptr %.046.i, null
  br i1 %.not58.i, label %.loopexit.i, label %.lr.ph84.i, !llvm.loop !78

.loopexit.i:                                      ; preds = %bb.x, %bb.v, %._crit_edge.i58
  %.val85.i = load i64, ptr %i.dg, align 8, !tbaa !59
  %.not90.i = icmp eq i64 %.val85.i, 0
  br i1 %.not90.i, label %init_rank.exit, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.loopexit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 32
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph88.i
  %.086.i = phi i64 [ 0, %.lr.ph88.i ], [ %i.gx, %bb.ab ] ; 2 uses
  %i.gq = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.086.i) #17 ; 2 uses
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !134 ; 2 uses
  %magicptr.i = ptrtoint ptr %i.gr to i64
  switch i64 %magicptr.i, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.gs = load ptr, ptr %10, align 8, !tbaa !10
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gq
  %.0.copyload.i = load ptr, ptr %i.gt, align 8
  call void @free(ptr noundef %.0.copyload.i) #17
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gu = load ptr, ptr %10, align 8, !tbaa !10
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gq
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !18
  call void %i.gr(ptr noundef %i.gw) #17, !inline_history !79
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.gx = add nuw i64 %.086.i, 1                  ; 2 uses
  %.val.i = load i64, ptr %i.dg, align 8, !tbaa !59
  %i.gy = icmp ult i64 %i.gx, %.val.i
  br i1 %i.gy, label %bb.y, label %init_rank.exit, !llvm.loop !80

init_rank.exit:                                   ; preds = %bb.ab, %.loopexit.i
  call void @gv_list_clear_(ptr noundef nonnull %10, i64 noundef 8) #17
  call void @gv_list_free_(ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %init_graph.exit.thread

init_graph.exit.thread:                           ; preds = %._crit_edge104.i, %init_rank.exit, %init_graph.exit
  %i.gz = icmp sgt i32 %3, -1
  %spec.select = select i1 %i.gz, i32 %3, i32 30
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  store i32 %spec.select, ptr %i.ha, align 8, !tbaa !135
  %i.hb = load ptr, ptr %11, align 8, !tbaa !133
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 256
  %.040159.i = load ptr, ptr %i.he, align 8, !tbaa !18 ; 3 uses
  %.not160.i = icmp eq ptr %.040159.i, null       ; 2 uses
  br i1 %.not160.i, label %._crit_edge.i62, label %.lr.ph.i60

._crit_edge.i62:                                  ; preds = %.lr.ph.i60, %init_graph.exit.thread
  %i.hf = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !129 ; 5 uses
  %.not.i.i63 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i63, label %.thread.i.i68, label %bb.ac

.thread.i.i68:                                    ; preds = %._crit_edge.i62
  %i.hg = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #19
  br label %gv_calloc.exit.i65

bb.ac:                                            ; preds = %._crit_edge.i62
  %mul.ov.i.i64 = icmp ugt i64 %i.hf, 2305843009213693951
  br i1 %mul.ov.i.i64, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !127
end_hunk_0
begin_hunk_1_@rank2:bb.a
bb.cw:                                            ; preds = %bb.cv, %bb.cu, %STsetFind.exit185.i.i.i, %bb.co
  %.4.i.i.i = phi ptr [ %.3224.i.i.i, %bb.co ], [ %i.zw, %bb.cv ], [ %.3224.i.i.i, %bb.cu ], [ %.3224.i.i.i, %STsetFind.exit185.i.i.i ] ; 2 uses
  %indvars.iv.next252.i.i.i = add nsw i64 %indvars.iv251.i.i.i, 1 ; 3 uses
  %i.adj = trunc nsw i64 %indvars.iv.next252.i.i.i to i32
  store i32 %i.adj, ptr %i.vz, align 4, !tbaa !161
  %i.adk = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %indvars.iv.next252.i.i.i
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !35 ; 2 uses
  %.not117.i.i.i = icmp eq ptr %i.adl, null
  br i1 %.not117.i.i.i, label %._crit_edge.i.i69.i, label %bb.cn, !llvm.loop !94

._crit_edge.i.i69.i:                              ; preds = %bb.cw, %.preheader200.i.i.i
  %.3.lcssa.i.i.i = phi ptr [ %.1.lcssa.i.i.i, %.preheader200.i.i.i ], [ %.4.i.i.i, %bb.cw ]
  %.val125.i.i.i = load i64, ptr %i.rz, align 8, !tbaa !59
  %i.adm = add i64 %.val125.i.i.i, -1
  %i.adn = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %i.adm) #17
  %i.ado = load ptr, ptr %i.sa, align 8, !tbaa !163 ; 2 uses
  %magicptr123.i.i.i = ptrtoint ptr %i.ado to i64
  switch i64 %magicptr123.i.i.i, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i69.i
  %i.adp = load ptr, ptr @stderr, align 8, !tbaa !127
  %fwrite120.i.i.i = call i64 @fwrite(ptr nonnull @.str.8, i64 66, i64 1, ptr %i.adp) #21 ; 0 uses
  call void @abort() #22
  unreachable

bb.cy:                                            ; preds = %._crit_edge.i.i69.i
  %i.adq = load ptr, ptr %8, align 8, !tbaa !10
  %i.adr = getelementptr inbounds nuw [32 x i8], ptr %i.adq, i64 %i.adn
  call void %i.ado(ptr noundef byval(%struct.state_t) align 8 %i.adr) #17, !inline_history !91
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %._crit_edge.i.i69.i
  call void @gv_list_pop_back_(ptr noundef nonnull %8, ptr noundef nonnull %i.ry, i64 noundef 32) #17
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.thread187.i.i.i, %.thread.i.i71.i, %bb.cb
  %.6.i.i.i = phi ptr [ %.0106229.i.i.i, %bb.cb ], [ %.3.lcssa.i.i.i, %bb.cz ], [ %.1222.i.i.i, %.thread.i.i71.i ], [ %.3224.i.i.i, %.thread187.i.i.i ] ; 2 uses
  %.val128.i.i.i = load i64, ptr %i.rz, align 8, !tbaa !59 ; 2 uses
  %.not.i.i70.i = icmp eq i64 %.val128.i.i.i, 0
  br i1 %.not.i.i70.i, label %inter_tree_edge.exit.i, label %.lr.ph231.i.i.i

inter_tree_edge.exit.i:                           ; preds = %bb.da, %STsetFind.exit.i.i.i
  %.0106.lcssa.i.i.i = phi ptr [ null, %STsetFind.exit.i.i.i ], [ %.6.i.i.i, %bb.da ] ; 12 uses
  call void @gv_list_clear_(ptr noundef nonnull %8, i64 noundef 32) #17
  call void @gv_list_free_(ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.not51.i = icmp eq ptr %.0106.lcssa.i.i.i, null
  br i1 %.not51.i, label %merge_trees.exit.thread99.i, label %bb.db

bb.db:                                            ; preds = %inter_tree_edge.exit.i
  %i.ads = load i32, ptr %.0106.lcssa.i.i.i, align 8 ; 2 uses
  %i.adt = and i32 %i.ads, 3                      ; 2 uses
  %i.adu = icmp eq i32 %i.adt, 3
  %i.adv = getelementptr inbounds nuw i8, ptr %.0106.lcssa.i.i.i, i64 64 ; 2 uses
  %i.adw = select i1 %i.adu, ptr %.0106.lcssa.i.i.i, ptr %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 56
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !51
  %i.adz = getelementptr i8, ptr %i.ady, i64 16
  %.val35.i.i = load ptr, ptr %i.adz, align 8, !tbaa !16
  %i.aea = getelementptr inbounds nuw i8, ptr %.val35.i.i, i64 440
  %.01.i.i.i = load ptr, ptr %i.aea, align 8, !tbaa !157 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.01.i.i.i, i64 24 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !149 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.aec, null
  %.not113.i.i.i = icmp eq ptr %i.aec, %.01.i.i.i
  %or.cond4.i.i.i = or i1 %.not2.i.i.i, %.not113.i.i.i
  br i1 %or.cond4.i.i.i, label %STsetFind.exit.i.i, label %.lr.ph.i.i73.i

.lr.ph.i.i73.i:                                   ; preds = %bb.db, %bb.dc
  %i.aed = phi ptr [ %.pre.i.i.i, %bb.dc ], [ %i.aec, %bb.db ] ; 2 uses
  %i.aee = phi ptr [ %.phi.trans.insert.i.i.i, %bb.dc ], [ %i.aeb, %bb.db ]
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 24
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !149 ; 5 uses
  %.not12.i.i.i = icmp eq ptr %i.aeg, null
  br i1 %.not12.i.i.i, label %STsetFind.exit.loopexit.i.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i73.i
  store ptr %i.aeg, ptr %i.aee, align 8, !tbaa !149
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aeg, i64 24 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !149 ; 3 uses
  %.not.i.i74.i = icmp eq ptr %.pre.i.i.i, null
  %.not11.i.i.i = icmp eq ptr %.pre.i.i.i, %i.aeg
  %or.cond.i.i75.i = or i1 %.not.i.i74.i, %.not11.i.i.i
  br i1 %or.cond.i.i75.i, label %STsetFind.exit.loopexit.i.i, label %.lr.ph.i.i73.i, !llvm.loop !90

STsetFind.exit.loopexit.i.i:                      ; preds = %bb.dc, %.lr.ph.i.i73.i
  %.0.lcssa.i.ph.i.i = phi ptr [ %i.aed, %.lr.ph.i.i73.i ], [ %i.aeg, %bb.dc ]
  %.pre.i.i = load i32, ptr %.0106.lcssa.i.i.i, align 8 ; 2 uses
  %.pre56.i.i = and i32 %.pre.i.i, 3
  br label %STsetFind.exit.i.i

STsetFind.exit.i.i:                               ; preds = %STsetFind.exit.loopexit.i.i, %bb.db
  %i.aeh = phi i32 [ %.pre.i.i, %STsetFind.exit.loopexit.i.i ], [ %i.ads, %bb.db ]
  %.pre-phi.i.i = phi i32 [ %.pre56.i.i, %STsetFind.exit.loopexit.i.i ], [ %i.adt, %bb.db ]
  %.0.lcssa.i.i.i = phi ptr [ %.0.lcssa.i.ph.i.i, %STsetFind.exit.loopexit.i.i ], [ %.01.i.i.i, %bb.db ] ; 3 uses
  %i.aei = icmp eq i32 %.pre-phi.i.i, 2
  %i.aej = getelementptr inbounds i8, ptr %.0106.lcssa.i.i.i, i64 -64 ; 2 uses
  %i.aek = select i1 %i.aei, ptr %.0106.lcssa.i.i.i, ptr %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 56
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !51
  %i.aen = getelementptr i8, ptr %i.aem, i64 16
  %.val.i.i = load ptr, ptr %i.aen, align 8, !tbaa !16
  %i.aeo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 440
  %.01.i37.i.i = load ptr, ptr %i.aeo, align 8, !tbaa !157 ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.01.i37.i.i, i64 24 ; 2 uses
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !149 ; 3 uses
  %.not2.i38.i.i = icmp eq ptr %i.aeq, null
  %.not113.i39.i.i = icmp eq ptr %i.aeq, %.01.i37.i.i
  %or.cond4.i40.i.i = or i1 %.not2.i38.i.i, %.not113.i39.i.i
  br i1 %or.cond4.i40.i.i, label %STsetFind.exit49.i.i, label %.lr.ph.i41.i.i

.lr.ph.i41.i.i:                                   ; preds = %STsetFind.exit.i.i, %bb.dd
  %i.aer = phi ptr [ %.pre.i44.i.i, %bb.dd ], [ %i.aeq, %STsetFind.exit.i.i ] ; 2 uses
  %i.aes = phi ptr [ %.phi.trans.insert.i43.i.i, %bb.dd ], [ %i.aep, %STsetFind.exit.i.i ]
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aer, i64 24
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !149 ; 5 uses
  %.not12.i42.i.i = icmp eq ptr %i.aeu, null
  br i1 %.not12.i42.i.i, label %STsetFind.exit49.i.loopexit.i, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph.i41.i.i
  store ptr %i.aeu, ptr %i.aes, align 8, !tbaa !149
  %.phi.trans.insert.i43.i.i = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24 ; 2 uses
  %.pre.i44.i.i = load ptr, ptr %.phi.trans.insert.i43.i.i, align 8, !tbaa !149 ; 3 uses
  %.not.i45.i.i = icmp eq ptr %.pre.i44.i.i, null
  %.not11.i46.i.i = icmp eq ptr %.pre.i44.i.i, %i.aeu
  %or.cond.i47.i.i = or i1 %.not.i45.i.i, %.not11.i46.i.i
  br i1 %or.cond.i47.i.i, label %STsetFind.exit49.i.loopexit.i, label %.lr.ph.i41.i.i, !llvm.loop !90

STsetFind.exit49.i.loopexit.i:                    ; preds = %bb.dd, %.lr.ph.i41.i.i
  %.0.lcssa.i48.i.ph.i = phi ptr [ %i.aeu, %bb.dd ], [ %i.aer, %.lr.ph.i41.i.i ]
  %.pre226.i = load i32, ptr %.0106.lcssa.i.i.i, align 8
  br label %STsetFind.exit49.i.i

STsetFind.exit49.i.i:                             ; preds = %STsetFind.exit49.i.loopexit.i, %STsetFind.exit.i.i
  %i.aev = phi i32 [ %i.aeh, %STsetFind.exit.i.i ], [ %.pre226.i, %STsetFind.exit49.i.loopexit.i ]
  %.0.lcssa.i48.i.i = phi ptr [ %.01.i37.i.i, %STsetFind.exit.i.i ], [ %.0.lcssa.i48.i.ph.i, %STsetFind.exit49.i.loopexit.i ] ; 2 uses
  %i.aew = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16
  %.val36.i.i = load i64, ptr %i.aew, align 8, !tbaa !155
  %.not52.i.i = icmp eq i64 %.val36.i.i, -1
  %i.aex = and i32 %i.aev, 3                      ; 2 uses
  %i.aey = icmp eq i32 %i.aex, 2
  %i.aez = select i1 %i.aey, ptr %.0106.lcssa.i.i.i, ptr %i.aej
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 56
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !51
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 16
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !16
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 360
  %i.aff = load i32, ptr %i.afe, align 8, !tbaa !52 ; 3 uses
  %i.afg = icmp eq i32 %i.aex, 3
  %i.afh = select i1 %i.afg, ptr %.0106.lcssa.i.i.i, ptr %i.adv
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 56
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !51
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !16
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 360
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !52
  %i.afo = getelementptr inbounds nuw i8, ptr %.0106.lcssa.i.i.i, i64 16
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !16
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 228
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !53
  %i.afs = add i32 %i.afr, %i.afn                 ; 3 uses
  %.not.i76.i = icmp eq i32 %i.aff, %i.afs        ; 2 uses
  br i1 %.not52.i.i, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %STsetFind.exit49.i.i
  br i1 %.not.i76.i, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aft = sub i32 %i.aff, %i.afs
  br label %.sink.split.i.i

bb.dg:                                            ; preds = %STsetFind.exit49.i.i
  br i1 %.not.i76.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.neg.i.i = sub i32 %i.afs, %i.aff
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.dh, %bb.df
  %.0.lcssa.i48.sink.i.i = phi ptr [ %.0.lcssa.i48.i.i, %bb.dh ], [ %.0.lcssa.i.i.i, %bb.df ]
  %.neg.sink.i.i = phi i32 [ %.neg.i.i, %bb.dh ], [ %i.aft, %bb.df ]
  %i.afu = load ptr, ptr %.0.lcssa.i48.sink.i.i, align 8, !tbaa !138
  call fastcc void @tree_adjust(ptr noundef %i.afu, ptr noundef null, i32 noundef %.neg.sink.i.i)
  br label %bb.di

bb.di:                                            ; preds = %.sink.split.i.i, %bb.dg, %bb.de
  %i.afv = call fastcc i32 @add_tree_edge(ptr noundef nonnull %11, ptr noundef nonnull %.0106.lcssa.i.i.i)
  %.not34.i.i = icmp eq i32 %i.afv, 0
  br i1 %.not34.i.i, label %.preheader.i78.i, label %merge_trees.exit.thread99.i

.preheader.i78.i:                                 ; preds = %bb.di, %.preheader.i78.i
  %.032.i.i.i = phi ptr [ %i.afx, %.preheader.i78.i ], [ %.0.lcssa.i.i.i, %bb.di ] ; 10 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 24
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !149 ; 3 uses
  %.not.i50.i.i = icmp eq ptr %i.afx, null
  %.not36.i.i.i = icmp eq ptr %i.afx, %.032.i.i.i
  %or.cond.i51.i.i = or i1 %.not.i50.i.i, %.not36.i.i.i
  br i1 %or.cond.i51.i.i, label %.critedge.i.i.i.preheader, label %.preheader.i78.i, !llvm.loop !95

.critedge.i.i.i.preheader:                        ; preds = %.preheader.i78.i
  %14 = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 24
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.031.i.i.i = phi ptr [ %i.afz, %.critedge.i.i.i ], [ %.0.lcssa.i48.i.i, %.critedge.i.i.i.preheader ] ; 9 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 24
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !149 ; 3 uses
  %.not37.i.i.i = icmp eq ptr %i.afz, null
  %.not38.i.i.i = icmp eq ptr %i.afz, %.031.i.i.i
  %or.cond39.i.i.i = or i1 %.not37.i.i.i, %.not38.i.i.i
  br i1 %or.cond39.i.i.i, label %.critedge2.i.i.i, label %.critedge.i.i.i, !llvm.loop !96

.critedge2.i.i.i:                                 ; preds = %.critedge.i.i.i
  %i.aga = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 24
  %i.agb = icmp eq ptr %.032.i.i.i, %.031.i.i.i
  br i1 %i.agb, label %bb.dn, label %bb.dj

bb.dj:                                            ; preds = %.critedge2.i.i.i
  %i.agc = getelementptr i8, ptr %.031.i.i.i, i64 16
  %.031.val.i.i.i = load i64, ptr %i.agc, align 8, !tbaa !155
  %.not40.i.i.i = icmp eq i64 %.031.val.i.i.i, -1
  br i1 %.not40.i.i.i, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.agd = getelementptr i8, ptr %.032.i.i.i, i64 16
  %.032.val.i.i.i = load i64, ptr %i.agd, align 8, !tbaa !155
  %.not41.i.i.i = icmp eq i64 %.032.val.i.i.i, -1
  br i1 %.not41.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.age = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 8
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !148
  %i.agg = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 8
  %i.agh = load i32, ptr %i.agg, align 8, !tbaa !148
  %i.agi = icmp slt i32 %i.agf, %i.agh
  %.032..031.i.i.i = select i1 %i.agi, ptr %.032.i.i.i, ptr %.031.i.i.i
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %bb.dj
  %.0.i.i.i = phi ptr [ %.032..031.i.i.i, %bb.dl ], [ %.031.i.i.i, %bb.dk ], [ %.032.i.i.i, %bb.dj ] ; 4 uses
  store ptr %.0.i.i.i, ptr %i.aga, align 8, !tbaa !149
  store ptr %.0.i.i.i, ptr %14, align 8, !tbaa !149
  %i.agj = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 8
  %i.agk = load i32, ptr %i.agj, align 8, !tbaa !148
  %i.agl = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 8
  %i.agm = load i32, ptr %i.agl, align 8, !tbaa !148
  %i.agn = add nsw i32 %i.agm, %i.agk
  %i.ago = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.agn, ptr %i.ago, align 8, !tbaa !148
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.critedge2.i.i.i
  %.0.i77.ph.i = phi ptr [ %.032.i.i.i, %.critedge2.i.i.i ], [ %.0.i.i.i, %bb.dm ]
  %i.agp = getelementptr inbounds nuw i8, ptr %.0.i77.ph.i, i64 16
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !155
  %i.agr = load ptr, ptr %i.pb, align 8, !tbaa !153 ; 7 uses
  %.pre.i79.i = load i64, ptr %i.pf, align 8, !tbaa !154 ; 5 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dt, %bb.dn
  %.038.i.i = phi i64 [ %i.agq, %bb.dn ], [ %.140.i.i, %bb.dt ] ; 7 uses
  %i.ags = shl i64 %.038.i.i, 1                   ; 2 uses
  %i.agt = add i64 %i.ags, 2                      ; 3 uses
  %i.agu = or disjoint i64 %i.ags, 1              ; 3 uses
  %i.agv = icmp ult i64 %i.agu, %.pre.i79.i
  br i1 %i.agv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.agu
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !150
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !148
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %.038.i.i
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !150
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahd = load i32, ptr %i.ahc, align 8, !tbaa !148
  %i.ahe = icmp slt i32 %i.agz, %i.ahd
  %spec.select.i.i = select i1 %i.ahe, i64 %i.agu, i64 %.038.i.i
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.039.i.i = phi i64 [ %.038.i.i, %bb.do ], [ %spec.select.i.i, %bb.dp ] ; 3 uses
  %i.ahf = icmp ult i64 %i.agt, %.pre.i79.i
  br i1 %i.ahf, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.agt
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !150
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !148
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %.039.i.i
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !150
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !148
  %i.aho = icmp slt i32 %i.ahj, %i.ahn
  %spec.select43.i.i = select i1 %i.aho, i64 %i.agt, i64 %.039.i.i
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.140.i.i = phi i64 [ %.039.i.i, %bb.dq ], [ %spec.select43.i.i, %bb.dr ] ; 5 uses
  %.not.i80.i = icmp eq i64 %.140.i.i, %.038.i.i
  br i1 %.not.i80.i, label %merge_trees.exit.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %.038.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ahp, align 8 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %.140.i.i ; 2 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !150
  store ptr %i.ahr, ptr %i.ahp, align 8, !tbaa !150
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ahq, align 8
  %i.ahs = load ptr, ptr %i.ahp, align 8, !tbaa !150
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 16
  store i64 %.038.i.i, ptr %i.aht, align 8, !tbaa !155
  %.cast.i.i = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr
  %i.ahu = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 16
  store i64 %.140.i.i, ptr %i.ahu, align 8, !tbaa !155
  %i.ahv = icmp ult i64 %.140.i.i, %.pre.i79.i
  br i1 %i.ahv, label %bb.do, label %merge_trees.exit.i, !llvm.loop !88

merge_trees.exit.i:                               ; preds = %bb.dt, %bb.ds
  %i.ahw = icmp ugt i64 %.pre.i79.i, 1
  br i1 %i.ahw, label %bb.bo, label %merge_trees.exit.thread99.i

merge_trees.exit.thread99.i:                      ; preds = %merge_trees.exit.i, %bb.di, %inter_tree_edge.exit.i, %STbuildheap.exit.preheader.i, %bb.bg
  %.045154.i = phi i64 [ %.045164.i, %bb.bg ], [ %.val170.i, %STbuildheap.exit.preheader.i ], [ %.val170.i, %inter_tree_edge.exit.i ], [ %.val170.i, %bb.di ], [ %.val170.i, %merge_trees.exit.i ] ; 2 uses
  %.044.i = phi ptr [ null, %bb.bg ], [ %i.pb, %STbuildheap.exit.preheader.i ], [ %i.pb, %inter_tree_edge.exit.i ], [ %i.pb, %bb.di ], [ %i.pb, %merge_trees.exit.i ]
  %.not52.i = phi i1 [ false, %bb.bg ], [ true, %STbuildheap.exit.preheader.i ], [ true, %merge_trees.exit.i ], [ false, %bb.di ], [ false, %inter_tree_edge.exit.i ]
  %.4.i = phi i32 [ 2, %bb.bg ], [ 0, %STbuildheap.exit.preheader.i ], [ 0, %merge_trees.exit.i ], [ 2, %bb.di ], [ 1, %inter_tree_edge.exit.i ]
  call void @free(ptr noundef %.044.i) #17
  %.not182.i = icmp eq i64 %.045154.i, 0
  br i1 %.not182.i, label %._crit_edge181.i, label %.lr.ph180.i

._crit_edge181.i:                                 ; preds = %.lr.ph180.i, %merge_trees.exit.thread99.i
  call void @free(ptr noundef %i.ho) #17
  br i1 %.not52.i, label %bb.du, label %feasible_tree.exit

.lr.ph180.i:                                      ; preds = %merge_trees.exit.thread99.i, %.lr.ph180.i
  %.0179.i = phi i64 [ %i.ahz, %.lr.ph180.i ], [ 0, %merge_trees.exit.thread99.i ] ; 2 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.0179.i
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !150
  call void @free(ptr noundef %i.ahy) #17
  %i.ahz = add nuw i64 %.0179.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ahz, %.045154.i
  br i1 %exitcond.not.i, label %._crit_edge181.i, label %.lr.ph180.i, !llvm.loop !97

bb.du:                                            ; preds = %._crit_edge181.i
  %i.aia = load ptr, ptr %11, align 8, !tbaa !133
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !16
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 256
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 40, i1 false)
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !16 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 440
  store ptr null, ptr %i.aih, align 8, !tbaa !62
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 448
  store i32 1, ptr %i.aii, align 8, !tbaa !63
  %i.aij = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 7 uses
  store ptr %i.aie, ptr %i.aij, align 8, !tbaa !18
  %.sroa.455.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  store ptr null, ptr %.sroa.455.0..sroa_idx.i.i.i, align 8, !tbaa !35
  %.sroa.556.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %.sroa.657.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %.sroa.758.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %.sroa.859.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 2 uses
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %.sroa.556.0..sroa_idx.i.i.i, align 8
  %i.aik = call i64 @gv_list_append_slot_(ptr noundef nonnull %7, i64 noundef 32) #17
  %i.ail = load ptr, ptr %7, align 8, !tbaa !10
  %i.aim = getelementptr inbounds nuw [32 x i8], ptr %i.ail, i64 %i.aik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aim, ptr noundef nonnull align 8 dereferenceable(32) %i.aij, i64 32, i1 false), !tbaa.struct !178
  %i.ain = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %.val86102.i.i.i = load i64, ptr %i.ain, align 8, !tbaa !59 ; 2 uses
  %.not103.i.i.i = icmp eq i64 %.val86102.i.i.i, 0
  br i1 %.not103.i.i.i, label %dfs_range_init.exit.i.i, label %.lr.ph.i.i81.i

.lr.ph.i.i81.i:                                   ; preds = %bb.du
  %i.aio = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.dv

bb.dv:                                            ; preds = %bb.ef, %.lr.ph.i.i81.i
  %.val86105.i.i.i = phi i64 [ %.val86102.i.i.i, %.lr.ph.i.i81.i ], [ %.val86.pr.i.i.i, %bb.ef ]
  %i.aip = load ptr, ptr %7, align 8, !tbaa !10
  %i.aiq = add i64 %.val86105.i.i.i, -1
  %i.air = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %7, i64 noundef %i.aiq) #17
  %i.ais = getelementptr inbounds nuw [32 x i8], ptr %i.aip, i64 %i.air ; 7 uses
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !180
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !16 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 424
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !56
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ais, i64 20 ; 2 uses
  %.promoted.i.i82.i = load i32, ptr %i.aiy, align 4, !tbaa !181
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ais, i64 8 ; 2 uses
  %i.aja = sext i32 %.promoted.i.i82.i to i64
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dx, %bb.dv
  %indvars.iv.i.i83.i = phi i64 [ %indvars.iv.next.i.i84.i, %bb.dx ], [ %i.aja, %bb.dv ] ; 2 uses
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.aix, i64 %indvars.iv.i.i83.i
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !35 ; 6 uses
  %.not75.i.i.i = icmp eq ptr %i.ajc, null
  br i1 %.not75.i.i.i, label %.preheader96.i.i.i, label %bb.dx, !llvm.loop !98

.preheader96.i.i.i:                               ; preds = %bb.dw
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiv, i64 408
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !54
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ais, i64 24 ; 2 uses
  %.promoted101.i.i.i = load i32, ptr %i.ajf, align 8, !tbaa !182
  %i.ajg = sext i32 %.promoted101.i.i.i to i64
  br label %bb.dy

end_hunk_1
