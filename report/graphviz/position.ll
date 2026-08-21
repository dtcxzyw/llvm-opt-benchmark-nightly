Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/position?download=true
inline.NumInlined: 41
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Concentrate = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [8 x i8] c"nslimit\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"Edge length %f larger than maximum %d allowed.\0ACheck for overwide node(s).\0A\00", align 1
@G_margin = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"contain_nodes clust %s rank %d missing node\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dot_position(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %remove_aux_edges.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mark_lowclusters(ptr noundef nonnull %0) #14
  tail call fastcc void @set_ycoords(ptr noundef nonnull %0)
  %i.f = load i8, ptr @Concentrate, align 1, !tbaa !36, !range !37, !noundef !38
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @dot_concentrate(ptr noundef nonnull %0) #14 ; 2 uses
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.d, label %remove_aux_edges.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 340
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %.not57.i.i = icmp sgt i32 %i.k, %i.m
  br i1 %.not57.i.i, label %expand_leaves.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.n = sext i32 %i.k to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.preheader.i.i
  %i.o = phi ptr [ %i.i, %.preheader.preheader.i.i ], [ %i.dq, %bb.p ] ; 2 uses
  %indvars.iv65.i.i = phi i64 [ %i.n, %.preheader.preheader.i.i ], [ %indvars.iv.next66.i.i, %bb.p ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds [88 x i8], ptr %i.q, i64 %indvars.iv65.i.i ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !42   ; 7 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45   ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.s to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.w = icmp eq i32 %i.s, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 3 uses
  %.04050.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %.1.i.i.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 364
  store i32 %.04050.i.i, ptr %i.ab, align 4, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 233
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !54
  %i.ae = icmp eq i8 %i.ad, 6
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 344
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi i32 [ %i.ag, %bb.f ], [ 1, %bb.e ]
  %.1.i.i = add nsw i32 %.pn.i.i, %.04050.i.i     ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 364
  store i32 %.1.i.i, ptr %i.am, align 4, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 233
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !54
  %i.ap = icmp eq i8 %i.ao, 6
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i.i.1 = phi i32 [ %i.ar, %bb.h ], [ 1, %bb.g ]
  %.1.i.i.1 = add nsw i32 %.pn.i.i.1, %.1.i.i     ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !56

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.04050.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod189 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod189)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.epil.init
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 364
  store i32 %.04050.i.i.epil.init, ptr %i.aw, align 4, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 233
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !54
  %i.az = icmp eq i8 %i.ay, 6
  br i1 %i.az, label %bb.j, label %._crit_edge.i.i.loopexit.epilog-lcssa

bb.j:                                             ; preds = %.epil.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 344
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !55
  br label %._crit_edge.i.i.loopexit.epilog-lcssa

._crit_edge.i.i.loopexit.epilog-lcssa:            ; preds = %bb.j, %.epil.preheader
  %.pn.i.i.epil = phi i32 [ %i.bb, %bb.j ], [ 1, %.epil.preheader ]
  %.1.i.i.epil = add nsw i32 %.pn.i.i.epil, %.04050.i.i.epil.init
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.loopexit.unr-lcssa, %.preheader.i.i
  %.040.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.1.i.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.1.i.i.epil, %._crit_edge.i.i.loopexit.epilog-lcssa ] ; 5 uses
  %.not44.i.i = icmp sgt i32 %.040.lcssa.i.i, %i.s
  br i1 %.not44.i.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bc = add nsw i32 %.040.lcssa.i.i, 1          ; 2 uses
  %i.bd = sext i32 %i.bc to i64                   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.l

.thread.i.i.i:                                    ; preds = %bb.k
  %i.be = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #15
  br label %gv_calloc.exit.i.i

bb.l:                                             ; preds = %bb.k
  %mul.ov.i.i.i = icmp slt i32 %.040.lcssa.i.i, -1
  br i1 %mul.ov.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.1, i64 noundef range(i64 -2147483647, 2147483648) %i.bd, i64 noundef 8) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bh = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483647, 2147483648) %i.bd, i64 noundef 8) #15 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.o, label %gv_calloc.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.bk = shl nuw nsw i64 %i.bd, 3
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.2, i64 noundef %i.bk) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.n, %.thread.i.i.i
  %i.bm = phi ptr [ %i.be, %.thread.i.i.i ], [ %i.bh, %bb.n ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 6 uses
  br i1 %i.t, label %.lr.ph55.i.i, label %._crit_edge56.i.i

.lr.ph55.i.i:                                     ; preds = %gv_calloc.exit.i.i
  %i.bp = zext nneg i32 %i.s to i64               ; 3 uses
  %xtraiter190 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.i.i, %.prol.preheader
  %indvars.iv62.i.i.prol = phi i64 [ %indvars.iv.next63.i.i.prol, %.prol.preheader ], [ %i.bp, %.lr.ph55.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph55.i.i ]
  %indvars.iv.next63.i.i.prol = add nsw i64 %indvars.iv62.i.i.prol, -1 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next63.i.i.prol
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 364
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bw
  store ptr %i.br, ptr %i.bx, align 8, !tbaa !46
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter190
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !60

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.i.i
  %indvars.iv62.i.i.unr = phi i64 [ %i.bp, %.lr.ph55.i.i ], [ %indvars.iv.next63.i.i.prol, %.prol.preheader ]
  %i.by = icmp ult i32 %i.s, 4
  br i1 %i.by, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new

.lr.ph55.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph55.i.i.new
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i.3, %.lr.ph55.i.i.new ], [ %indvars.iv62.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv62.i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !46 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 364
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cg
  store ptr %i.cb, ptr %i.ch, align 8, !tbaa !46
  %i.ci = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv62.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !46 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 364
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !47
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cp
  store ptr %i.ck, ptr %i.cq, align 8, !tbaa !46
  %i.cr = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv62.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 -24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 364
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cy
  store ptr %i.ct, ptr %i.cz, align 8, !tbaa !46
  %indvars.iv.next63.i.i.3 = add nsw i64 %indvars.iv62.i.i, -4 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next63.i.i.3
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !46 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 364
  %i.df = load i32, ptr %i.de, align 4, !tbaa !47
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.dg
  store ptr %i.db, ptr %i.dh, align 8, !tbaa !46
  %i.di = icmp sgt i64 %indvars.iv62.i.i, 4
  br i1 %i.di, label %.lr.ph55.i.i.new, label %._crit_edge56.i.i, !llvm.loop !62

._crit_edge56.i.i:                                ; preds = %.prol.loopexit, %.lr.ph55.i.i.new, %gv_calloc.exit.i.i
  store i32 %.040.lcssa.i.i, ptr %i.r, align 8, !tbaa !42
  %i.dj = sext i32 %.040.lcssa.i.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.dj
  store ptr null, ptr %i.dk, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.bo) #14
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 264
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !41
  %i.do = getelementptr inbounds [88 x i8], ptr %i.dn, i64 %indvars.iv65.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.bm, ptr %i.dp, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge56.i.i, %._crit_edge.i.i
  %i.dq = phi ptr [ %i.o, %._crit_edge.i.i ], [ %i.dl, %._crit_edge56.i.i ] ; 2 uses
  %indvars.iv.next66.i.i = add nsw i64 %indvars.iv65.i.i, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 340
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !40
  %i.dt = sext i32 %i.ds to i64
  %.not.not.i.i = icmp slt i64 %indvars.iv65.i.i, %i.dt
  br i1 %.not.not.i.i, label %.preheader.i.i, label %expand_leaves.exit, !llvm.loop !63

expand_leaves.exit:                               ; preds = %bb.p, %bb.d
  %i.du = tail call i32 @flat_edges(ptr noundef nonnull %0) #14
  %.not20 = icmp eq i32 %i.du, 0
  br i1 %.not20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %expand_leaves.exit
  tail call fastcc void @set_ycoords(ptr noundef nonnull %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %expand_leaves.exit
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i, i64 256
  %.07.i.i = load ptr, ptr %i.dv, align 8, !tbaa !46 ; 2 uses
  %.not8.i.i = icmp eq ptr %.07.i.i, null
  br i1 %.not8.i.i, label %allocate_aux_edges.exit.i, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.r, %gv_calloc.exit23.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %gv_calloc.exit23.i.i ], [ %.07.i.i, %bb.r ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !8  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 376
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !64
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !8  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 392
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !tbaa.struct !64
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !8  ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 272 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i22
  %indvars.iv.i.i23 = phi i64 [ %indvars.iv.next.i.i24, %bb.s ], [ 0, %.lr.ph.i.i22 ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i23
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !68
  %.not21.i.i = icmp eq ptr %i.eh, null
  %indvars.iv.next.i.i24 = add nuw nsw i64 %indvars.iv.i.i23, 1
  br i1 %.not21.i.i, label %.preheader.i.i25, label %bb.s, !llvm.loop !69

.preheader.i.i25:                                 ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 256 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !70
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i.i25
  %indvars.iv13.i.i = phi i64 [ %indvars.iv.next14.i.i, %bb.t ], [ 0, %.preheader.i.i25 ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv13.i.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !68
  %.not22.i.i = icmp eq ptr %i.el, null
  %indvars.iv.next14.i.i = add nuw nsw i64 %indvars.iv13.i.i, 1
  br i1 %.not22.i.i, label %bb.u, label %bb.t, !llvm.loop !71

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 264
  store i64 0, ptr %i.em, align 8, !tbaa !72
  %i.en = add nuw i64 %indvars.iv.i.i23, 4
  %i.eo = add i64 %i.en, %indvars.iv13.i.i
  %i.ep = and i64 %i.eo, 4294967295               ; 2 uses
  %i.eq = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483647, 2147483648) %i.ep, i64 noundef 8) #15 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %bb.v, label %gv_calloc.exit.i.i26

bb.v:                                             ; preds = %bb.u
  %i.es = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.et = shl nuw nsw i64 %i.ep, 3
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.es, ptr noundef nonnull @.str.2, i64 noundef %i.et) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit.i.i26:                             ; preds = %bb.u
  store ptr %i.eq, ptr %i.ei, align 8, !tbaa !70
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 280
  store i64 0, ptr %i.ev, align 8, !tbaa !73
  %i.ew = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #15 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.w, label %gv_calloc.exit23.i.i

bb.w:                                             ; preds = %gv_calloc.exit.i.i26
  %i.ey = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.ez = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ey, ptr noundef nonnull @.str.2, i64 noundef 32) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_calloc.exit23.i.i:                             ; preds = %gv_calloc.exit.i.i26
  store ptr %i.ew, ptr %i.ee, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ed, i64 240
  %.0.i.i = load ptr, ptr %i.fa, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %allocate_aux_edges.exit.loopexit.i, label %.lr.ph.i.i22, !llvm.loop !74

allocate_aux_edges.exit.loopexit.i:               ; preds = %gv_calloc.exit23.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %allocate_aux_edges.exit.i

allocate_aux_edges.exit.i:                        ; preds = %allocate_aux_edges.exit.loopexit.i, %bb.r
  %i.fb = phi ptr [ %.pre.i, %allocate_aux_edges.exit.loopexit.i ], [ %.val.i, %bb.r ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 264
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !75
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 129
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !83
  %i.fk = and i8 %i.fj, 1
  %.not.i5.i = icmp eq i8 %i.fk, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 352
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !84 ; 2 uses
  %.262.i.i = select i1 %.not.i5.i, i32 %i.fm, i32 5
  store i32 %i.fm, ptr %.sroa.0.i, align 8, !tbaa !85
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  store i32 %.262.i.i, ptr %i.fn, align 4, !tbaa !85
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 336
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !39 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 340
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !40
  %.not182223.i.i = icmp sgt i32 %i.fp, %i.fr
  br i1 %.not182223.i.i, label %make_LR_constraints.exit.i, label %.lr.ph226.preheader.i.i

.lr.ph226.preheader.i.i:                          ; preds = %allocate_aux_edges.exit.i
  %i.fs = sext i32 %i.fp to i64
  br label %.lr.ph226.i.i

.lr.ph226.i.i:                                    ; preds = %._crit_edge222.i.i, %.lr.ph226.preheader.i.i
  %i.ft = phi ptr [ %i.fb, %.lr.ph226.preheader.i.i ], [ %i.rs, %._crit_edge222.i.i ]
  %indvars.iv231.i.i = phi i64 [ %i.fs, %.lr.ph226.preheader.i.i ], [ %indvars.iv.next232.i.i, %._crit_edge222.i.i ] ; 4 uses
  %i.fu = getelementptr inbounds [88 x i8], ptr %i.fd, i64 %indvars.iv231.i.i ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !45
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 360
  store i32 0, ptr %i.ga, align 8, !tbaa !86
  %i.gb = load i32, ptr %i.fu, align 8, !tbaa !42
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph221.i.i, label %._crit_edge222.i.i

.lr.ph221.i.i:                                    ; preds = %.lr.ph226.i.i
  %1 = shl i64 %indvars.iv231.i.i, 2
  %i.gd = and i64 %1, 4
  %.sroa.0.i.0.i.0.i.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %i.gd
  %i.ge = load i32, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx, align 4, !tbaa !85
  %i.gf = sitofp i32 %i.ge to double
  br label %bb.x

.loopexit.i.i:                                    ; preds = %bb.aw, %bb.aq
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !42
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next.i9.i, %i.gh
  br i1 %i.gi, label %bb.x, label %._crit_edge222.loopexit.i.i, !llvm.loop !87

bb.x:                                             ; preds = %.loopexit.i.i, %.lr.ph221.i.i
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph221.i.i ], [ %indvars.iv.next.i9.i, %.loopexit.i.i ] ; 2 uses
  %.0162219.i.i = phi double [ 0.000000e+00, %.lr.ph221.i.i ], [ %.1163.i.i, %.loopexit.i.i ] ; 2 uses
  %i.gj = load ptr, ptr %i.fv, align 8, !tbaa !45 ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.i6.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !46 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 5 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !8  ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %i.gp = load double, ptr %i.go, align 8, !tbaa !88 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 368
  store double %i.gp, ptr %i.gq, align 8, !tbaa !89
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 328
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !90
  %.not183.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not183.i.i, label %bb.aa, label %.preheader.i7.i

.preheader.i7.i:                                  ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 320
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !91
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !68 ; 2 uses
  %.not184211.i.i = icmp eq ptr %i.gv, null
  br i1 %.not184211.i.i, label %._crit_edge.i.i28, label %.lr.ph.i8.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.z
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 112
  %.pre235.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !88
  %.pre236.pre.i.i = load ptr, ptr %i.fv, align 8, !tbaa !45
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %._crit_edge.loopexit.i.i, %.preheader.i7.i
  %.pre236.i.i = phi ptr [ %i.gj, %.preheader.i7.i ], [ %.pre236.pre.i.i, %._crit_edge.loopexit.i.i ]
  %i.gw = phi double [ %i.gp, %.preheader.i7.i ], [ %.pre235.i.i, %._crit_edge.loopexit.i.i ]
  %.0161.lcssa.i.i = phi double [ 0.000000e+00, %.preheader.i7.i ], [ %.1.i.i27, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi ptr [ %i.gn, %.preheader.i7.i ], [ %i.ho, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 112
  %i.gy = fadd double %i.gw, %.0161.lcssa.i.i     ; 2 uses
  store double %i.gy, ptr %i.gx, align 8, !tbaa !88
  br label %bb.aa

.lr.ph.i8.i:                                      ; preds = %.preheader.i7.i, %bb.z
  %i.gz = phi ptr [ %i.ho, %bb.z ], [ %i.gn, %.preheader.i7.i ]
  %i.ha = phi ptr [ %i.ht, %bb.z ], [ %i.gv, %.preheader.i7.i ] ; 4 uses
  %.0160213.i.i = phi i64 [ %i.hp, %bb.z ], [ 0, %.preheader.i7.i ]
  %.0161212.i.i = phi double [ %.1.i.i27, %bb.z ], [ 0.000000e+00, %.preheader.i7.i ] ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8
  %i.hc = and i32 %i.hb, 3                        ; 2 uses
  %i.hd = icmp eq i32 %i.hc, 3
  %i.he = select i1 %i.hd, i64 56, i64 120
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !92
  %i.hh = icmp eq i32 %i.hc, 2
  %i.hi = select i1 %i.hh, i64 56, i64 -8
  %i.hj = getelementptr inbounds i8, ptr %i.ha, i64 %i.hi
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !92
  %i.hl = icmp eq ptr %i.hg, %i.hk
  br i1 %i.hl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i8.i
  %i.hm = tail call double @selfRightSpace(ptr noundef nonnull %i.ha) #14
  %i.hn = fadd double %.0161212.i.i, %i.hm
  %.pre.i.i = load ptr, ptr %i.gm, align 8, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i8.i
  %i.ho = phi ptr [ %.pre.i.i, %bb.y ], [ %i.gz, %.lr.ph.i8.i ] ; 4 uses
  %.1.i.i27 = phi double [ %i.hn, %bb.y ], [ %.0161212.i.i, %.lr.ph.i8.i ] ; 2 uses
  %i.hp = add i64 %.0160213.i.i, 1                ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 320
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !91
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hp
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !68 ; 2 uses
  %.not184.i.i = icmp eq ptr %i.ht, null
  br i1 %.not184.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i8.i, !llvm.loop !94

bb.aa:                                            ; preds = %._crit_edge.i.i28, %bb.x
  %i.hu = phi double [ %i.gy, %._crit_edge.i.i28 ], [ %i.gp, %bb.x ]
  %i.hv = phi ptr [ %.lcssa.i.i, %._crit_edge.i.i28 ], [ %i.gn, %bb.x ]
  %i.hw = phi ptr [ %.pre236.i.i, %._crit_edge.i.i28 ], [ %i.gj, %bb.x ]
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i6.i, 1 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next.i9.i
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !46 ; 3 uses
  %.not185.i.i = icmp eq ptr %i.hy, null
  br i1 %.not185.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !95
  %i.id = fadd double %i.hu, %i.ic
  %i.ie = fadd double %i.id, %i.gf                ; 4 uses
  %i.if = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 128) #15 ; 7 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ac, label %gv_alloc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ih = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.ii = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.2, i64 noundef 128) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit.i.i.i:                              ; preds = %bb.ab
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  store i32 3, ptr %i.ij, align 8
  store i32 2, ptr %i.if, align 8
  %i.ik = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 240) #15 ; 4 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.ad, label %gv_alloc.exit22.i.i.i

bb.ad:                                            ; preds = %gv_alloc.exit.i.i.i
  %i.im = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.in = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.2, i64 noundef 240) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit22.i.i.i:                            ; preds = %gv_alloc.exit.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.ik, ptr %i.io, align 8, !tbaa !96
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 120
  store ptr %i.gl, ptr %i.ip, align 8, !tbaa !92
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  store ptr %i.hy, ptr %i.iq, align 8, !tbaa !92
  %i.ir = fcmp ogt double %i.ie, f0x41DFFFFFFFC00000
  br i1 %i.ir, label %bb.ae, label %make_aux_edge.exit.i.i

bb.ae:                                            ; preds = %gv_alloc.exit22.i.i.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.3, double noundef %i.ie, i32 noundef 2147483647) #14
  br label %make_aux_edge.exit.i.i

make_aux_edge.exit.i.i:                           ; preds = %bb.ae, %gv_alloc.exit22.i.i.i
  %.0.i.i.i = phi double [ f0x41DFFFFFFFC00000, %bb.ae ], [ %i.ie, %gv_alloc.exit22.i.i.i ] ; 2 uses
  %i.is = fcmp ult double %.0.i.i.i, 0.000000e+00
  %.in.v.i.i.i = select i1 %i.is, double -5.000000e-01, double 5.000000e-01
  %.in.i.i.i = fadd double %.0.i.i.i, %.in.v.i.i.i
  %i.it = fptosi double %.in.i.i.i to i32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 228
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !98
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 212
  store i32 0, ptr %i.iv, align 4, !tbaa !104
  %i.iw = tail call ptr @fast_edge(ptr noundef nonnull %i.if) #14 ; 0 uses
  %i.ix = fadd double %.0162219.i.i, %i.ie
  %i.iy = fptosi double %i.ix to i32              ; 2 uses
  %i.iz = load ptr, ptr %i.hz, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 360
  store i32 %i.iy, ptr %i.ja, align 8, !tbaa !86
  %i.jb = sitofp i32 %i.iy to double
  %.pre237.i.i = load ptr, ptr %i.gm, align 8, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %make_aux_edge.exit.i.i, %bb.aa
  %i.jc = phi ptr [ %.pre237.i.i, %make_aux_edge.exit.i.i ], [ %i.hv, %bb.aa ] ; 2 uses
  %.1163.i.i = phi double [ %i.jb, %make_aux_edge.exit.i.i ], [ %.0162219.i.i, %bb.aa ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 152
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !105 ; 2 uses
  %.not186.i.i = icmp eq ptr %i.je, null
  br i1 %.not186.i.i, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 392
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !106 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !68 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !68 ; 4 uses
  %i.jk = load i32, ptr %i.jh, align 8            ; 3 uses
  %i.jl = and i32 %i.jk, 3
  %i.jm = icmp eq i32 %i.jl, 2
  %i.jn = select i1 %i.jm, i64 56, i64 -8
  %i.jo = getelementptr inbounds i8, ptr %i.jh, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !92
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 364
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !47
  %i.ju = load i32, ptr %i.jj, align 8            ; 3 uses
  %i.jv = and i32 %i.ju, 3
  %i.jw = icmp eq i32 %i.jv, 2
  %i.jx = select i1 %i.jw, i64 56, i64 -8
  %i.jy = getelementptr inbounds i8, ptr %i.jj, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !92
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 364
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !47
  %i.ke = icmp sgt i32 %i.jt, %i.kd               ; 4 uses
  %spec.select.i.i = select i1 %i.ke, ptr %i.jj, ptr %i.jh ; 2 uses
  %spec.select190.i.i = select i1 %i.ke, ptr %i.jh, ptr %i.jj ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !8  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 228
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !98
end_hunk_0
begin_hunk_1_@dot_position:bb.a
  %i.nk = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.nl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nk, ptr noundef nonnull @.str.2, i64 noundef 240) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit22.i200.i.i:                         ; preds = %gv_alloc.exit.i199.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store ptr %i.ni, ptr %i.nm, align 8, !tbaa !96
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 120
  store ptr %i.mk, ptr %i.nn, align 8, !tbaa !92
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  store ptr %i.mo, ptr %i.no, align 8, !tbaa !92
  %i.np = fcmp ogt double %i.mz, f0x41DFFFFFFFC00000
  br i1 %i.np, label %bb.ap, label %make_aux_edge.exit204.i.i

bb.ap:                                            ; preds = %gv_alloc.exit22.i200.i.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.3, double noundef %i.mz, i32 noundef 2147483647) #14
  br label %make_aux_edge.exit204.i.i

make_aux_edge.exit204.i.i:                        ; preds = %bb.ap, %gv_alloc.exit22.i200.i.i
  %.0.i201.i.i = phi double [ f0x41DFFFFFFFC00000, %bb.ap ], [ %i.mz, %gv_alloc.exit22.i200.i.i ] ; 2 uses
  %i.nq = fcmp ult double %.0.i201.i.i, 0.000000e+00
  %.in.v.i202.i.i = select i1 %i.nq, double -5.000000e-01, double 5.000000e-01
  %.in.i203.i.i = fadd double %.0.i201.i.i, %.in.v.i202.i.i
  %i.nr = fptosi double %.in.i203.i.i to i32
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 228
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !98
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ni, i64 212
  store i32 %i.nc, ptr %i.nt, align 4, !tbaa !104
  %i.nu = tail call ptr @fast_edge(ptr noundef nonnull %i.nd) #14 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %make_aux_edge.exit204.i.i, %bb.al, %bb.af
  %i.nv = load ptr, ptr %i.gm, align 8, !tbaa !8  ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 296
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !107
  %.not228.i.i = icmp eq i64 %i.nx, 0
  br i1 %.not228.i.i, label %.loopexit.i.i, label %.lr.ph217.i.i

.lr.ph217.i.i:                                    ; preds = %bb.aq, %bb.aw
  %i.ny = phi ptr [ %i.ro, %bb.aw ], [ %i.nv, %bb.aq ]
  %.0215.i.i = phi i64 [ %i.rn, %bb.aw ], [ 0, %bb.aq ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 288
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !108
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %.0215.i.i
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !68 ; 4 uses
  %i.od = load i32, ptr %i.oc, align 8
  %i.oe = and i32 %i.od, 3                        ; 2 uses
  %i.of = icmp eq i32 %i.oe, 3
  %i.og = select i1 %i.of, i64 56, i64 120
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.og
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !92 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 364
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !47
  %i.on = icmp eq i32 %i.oe, 2
  %i.oo = select i1 %i.on, i64 56, i64 -8
  %i.op = getelementptr inbounds i8, ptr %i.oc, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !92 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 364
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !47
  %i.ov = icmp slt i32 %i.om, %i.ou               ; 2 uses
  %..i.i = select i1 %i.ov, ptr %i.oi, ptr %i.oq  ; 3 uses
  %.191.i.i = select i1 %i.ov, ptr %i.oq, ptr %i.oi ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %..i.i, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 112
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !88
  %i.pa = getelementptr inbounds nuw i8, ptr %.191.i.i, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 104
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !95
  %i.pe = fadd double %i.oz, %i.pd                ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 3 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 228
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !98
  %i.pj = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 352
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !84
  %i.pm = mul nsw i32 %i.pl, %i.pi
  %i.pn = sitofp i32 %i.pm to double
  %i.po = fadd double %i.pe, %i.pn
  %i.pp = fptosi double %i.po to i32              ; 3 uses
  %i.pq = tail call ptr @find_fast_edge(ptr noundef %..i.i, ptr noundef %.191.i.i) #14 ; 2 uses
  %.not187.i.i = icmp eq ptr %i.pq, null
  br i1 %.not187.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph217.i.i
  %i.pr = sitofp i32 %i.pp to double              ; 2 uses
  %i.ps = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 352
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !84
  %i.pv = sitofp i32 %i.pu to double
  %i.pw = fadd double %i.pe, %i.pv
  %i.px = load ptr, ptr %i.pf, align 8, !tbaa !8  ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 184
  %i.pz = load double, ptr %i.py, align 8, !tbaa !109 ; 2 uses
  %i.qa = fcmp ult double %i.pz, 0.000000e+00
  %.in.v.i.i = select i1 %i.qa, double -5.000000e-01, double 5.000000e-01
  %.in.i.i = fadd double %i.pz, %.in.v.i.i
  %i.qb = fptosi double %.in.i.i to i32
  %i.qc = sitofp i32 %i.qb to double
  %i.qd = fadd double %i.pw, %i.qc                ; 2 uses
  %i.qe = fcmp olt double %i.qd, %i.pr
  %i.qf = select i1 %i.qe, double %i.pr, double %i.qd
  %i.qg = fptosi double %i.qf to i32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !8  ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 228 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !98
  %.192.i.i = tail call i32 @llvm.smax.i32(i32 %i.qk, i32 %i.qg)
  store i32 %.192.i.i, ptr %i.qj, align 4, !tbaa !98
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 212 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !104
  %i.qn = getelementptr inbounds nuw i8, ptr %i.px, i64 212
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !104
  %i.qp = tail call i32 @llvm.smax.i32(i32 %i.qm, i32 %i.qo)
  store i32 %i.qp, ptr %i.ql, align 4, !tbaa !104
  br label %bb.aw

bb.as:                                            ; preds = %.lr.ph217.i.i
  %i.qq = load ptr, ptr %i.pf, align 8, !tbaa !8  ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 120
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !110
  %.not188.i.i = icmp eq ptr %i.qs, null
  br i1 %.not188.i.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.qt = sitofp i32 %i.pp to double
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 212
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !104
  %i.qw = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 128) #15 ; 7 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %bb.au, label %gv_alloc.exit.i205.i.i

bb.au:                                            ; preds = %bb.at
  %i.qy = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.qz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qy, ptr noundef nonnull @.str.2, i64 noundef 128) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit.i205.i.i:                           ; preds = %bb.at
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 64
  store i32 3, ptr %i.ra, align 8
  store i32 2, ptr %i.qw, align 8
  %i.rb = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 240) #15 ; 4 uses
  %i.rc = icmp eq ptr %i.rb, null
  br i1 %i.rc, label %bb.av, label %gv_alloc.exit22.i206.i.i

bb.av:                                            ; preds = %gv_alloc.exit.i205.i.i
  %i.rd = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.re = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rd, ptr noundef nonnull @.str.2, i64 noundef 240) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit22.i206.i.i:                         ; preds = %gv_alloc.exit.i205.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store ptr %i.rb, ptr %i.rf, align 8, !tbaa !96
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qw, i64 120
  store ptr %..i.i, ptr %i.rg, align 8, !tbaa !92
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qw, i64 56
  store ptr %.191.i.i, ptr %i.rh, align 8, !tbaa !92
  %i.ri = icmp slt i32 %i.pp, 0
  %.in.v.i208.i.i = select i1 %i.ri, double -5.000000e-01, double 5.000000e-01
  %.in.i209.i.i = fadd double %.in.v.i208.i.i, %i.qt
  %i.rj = fptosi double %.in.i209.i.i to i32
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rb, i64 228
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !98
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rb, i64 212
  store i32 %i.qv, ptr %i.rl, align 4, !tbaa !104
  %i.rm = tail call ptr @fast_edge(ptr noundef nonnull %i.qw) #14 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %gv_alloc.exit22.i206.i.i, %bb.as, %bb.ar
  %i.rn = add nuw i64 %.0215.i.i, 1               ; 2 uses
  %i.ro = load ptr, ptr %i.gm, align 8, !tbaa !8  ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 296
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !107
  %i.rr = icmp ult i64 %i.rn, %i.rq
  br i1 %i.rr, label %.lr.ph217.i.i, label %.loopexit.i.i, !llvm.loop !111

._crit_edge222.loopexit.i.i:                      ; preds = %.loopexit.i.i
  %.pre239.i.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %._crit_edge222.i.i

._crit_edge222.i.i:                               ; preds = %._crit_edge222.loopexit.i.i, %.lr.ph226.i.i
  %i.rs = phi ptr [ %.pre239.i.i, %._crit_edge222.loopexit.i.i ], [ %i.ft, %.lr.ph226.i.i ] ; 3 uses
  %indvars.iv.next232.i.i = add nsw i64 %indvars.iv231.i.i, 1
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 340
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !40
  %i.rv = sext i32 %i.ru to i64
  %.not182.not.i.i = icmp slt i64 %indvars.iv231.i.i, %i.rv
  br i1 %.not182.not.i.i, label %.lr.ph226.i.i, label %make_LR_constraints.exit.i, !llvm.loop !112

make_LR_constraints.exit.i:                       ; preds = %._crit_edge222.i.i, %allocate_aux_edges.exit.i
  %i.rw = phi ptr [ %i.fb, %allocate_aux_edges.exit.i ], [ %i.rs, %._crit_edge222.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 256
  %.057.i.i = load ptr, ptr %i.rx, align 8, !tbaa !46 ; 2 uses
  %.not58.i.i = icmp eq ptr %.057.i.i, null
  br i1 %.not58.i.i, label %make_edge_pairs.exit.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %make_LR_constraints.exit.i, %.loopexit.i17.i
  %.059.i.i = phi ptr [ %.0.i18.i, %.loopexit.i17.i ], [ %.057.i.i, %make_LR_constraints.exit.i ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 16 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !8  ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 392
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !106 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.sb, null
  br i1 %.not48.i.i, label %.loopexit.i17.i, label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %.lr.ph60.i.i
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !68 ; 2 uses
  %.not4955.i.i = icmp eq ptr %i.sc, null
  br i1 %.not4955.i.i, label %.loopexit.i17.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.preheader.i10.i, %make_aux_edge.exit54.i.i
  %indvars.iv.i12.i = phi i64 [ %indvars.iv.next.i16.i, %make_aux_edge.exit54.i.i ], [ 0, %.preheader.i10.i ]
  %i.sd = phi ptr [ %i.vy, %make_aux_edge.exit54.i.i ], [ %i.sc, %.preheader.i10.i ] ; 10 uses
  %i.se = tail call ptr @virtual_node(ptr noundef nonnull %0) #14 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 216
  store i8 2, ptr %i.sh, align 8, !tbaa !113
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 16 ; 2 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !8  ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 72
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !114
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !115
  %i.so = fsub double %i.sl, %i.sn
  %i.sp = fptosi double %i.so to i32              ; 2 uses
  %.042.i.i = tail call i32 @llvm.smax.i32(i32 %i.sp, i32 0) ; 2 uses
  %i.sq = tail call i32 @llvm.smin.i32(i32 %i.sp, i32 0) ; 2 uses
  %i.sr = load i32, ptr %i.sd, align 8
  %i.ss = and i32 %i.sr, 3
  %i.st = icmp eq i32 %i.ss, 3
  %i.su = getelementptr inbounds nuw i8, ptr %i.sd, i64 64 ; 2 uses
  %i.sv = select i1 %i.st, ptr %i.sd, ptr %i.su
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !92
  %i.sy = add nuw nsw i32 %.042.i.i, 1
  %i.sz = uitofp nneg i32 %i.sy to double
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sj, i64 212
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !104
  %i.tc = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 128) #15 ; 7 uses
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %bb.ax, label %gv_alloc.exit.i.i13.i

bb.ax:                                            ; preds = %.lr.ph.i11.i
  %i.te = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.tf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.te, ptr noundef nonnull @.str.2, i64 noundef 128) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit.i.i13.i:                            ; preds = %.lr.ph.i11.i
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 64
  store i32 3, ptr %i.tg, align 8
  store i32 2, ptr %i.tc, align 8
  %i.th = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 240) #15 ; 4 uses
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %bb.ay, label %gv_alloc.exit22.i.i14.i

bb.ay:                                            ; preds = %gv_alloc.exit.i.i13.i
  %i.tj = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.tk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tj, ptr noundef nonnull @.str.2, i64 noundef 240) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit22.i.i14.i:                          ; preds = %gv_alloc.exit.i.i13.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store ptr %i.th, ptr %i.tl, align 8, !tbaa !96
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tc, i64 120
  store ptr %i.se, ptr %i.tm, align 8, !tbaa !92
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tc, i64 56
  store ptr %i.sx, ptr %i.tn, align 8, !tbaa !92
  %.in.i.i15.i = fadd double %i.sz, 5.000000e-01
  %i.to = fptosi double %.in.i.i15.i to i32
  %i.tp = getelementptr inbounds nuw i8, ptr %i.th, i64 228
  store i32 %i.to, ptr %i.tp, align 4, !tbaa !98
  %i.tq = getelementptr inbounds nuw i8, ptr %i.th, i64 212
  store i32 %i.tb, ptr %i.tq, align 4, !tbaa !104
  %i.tr = tail call ptr @fast_edge(ptr noundef nonnull %i.tc) #14 ; 0 uses
  %i.ts = load i32, ptr %i.sd, align 8
  %i.tt = and i32 %i.ts, 3
  %i.tu = icmp eq i32 %i.tt, 2
  %i.tv = getelementptr inbounds i8, ptr %i.sd, i64 -64 ; 2 uses
  %i.tw = select i1 %i.tu, ptr %i.sd, ptr %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 56
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !92
  %i.tz = sub i32 1, %i.sq                        ; 2 uses
  %i.ua = uitofp nneg i32 %i.tz to double         ; 2 uses
  %i.ub = load ptr, ptr %i.si, align 8, !tbaa !8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 212
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !104
  %i.ue = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 128) #15 ; 7 uses
  %i.uf = icmp eq ptr %i.ue, null
  br i1 %i.uf, label %bb.az, label %gv_alloc.exit.i50.i.i

bb.az:                                            ; preds = %gv_alloc.exit22.i.i14.i
  %i.ug = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.uh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ug, ptr noundef nonnull @.str.2, i64 noundef 128) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit.i50.i.i:                            ; preds = %gv_alloc.exit22.i.i14.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 64
  store i32 3, ptr %i.ui, align 8
  store i32 2, ptr %i.ue, align 8
  %i.uj = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 1, i64 noundef range(i64 8, 241) 240) #15 ; 4 uses
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %bb.ba, label %gv_alloc.exit22.i51.i.i

bb.ba:                                            ; preds = %gv_alloc.exit.i50.i.i
  %i.ul = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.um = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ul, ptr noundef nonnull @.str.2, i64 noundef 240) #16 ; 0 uses
  tail call fastcc void @graphviz_exit() #17
  unreachable

gv_alloc.exit22.i51.i.i:                          ; preds = %gv_alloc.exit.i50.i.i
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store ptr %i.uj, ptr %i.un, align 8, !tbaa !96
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ue, i64 120
  store ptr %i.se, ptr %i.uo, align 8, !tbaa !92
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 56
  store ptr %i.ty, ptr %i.up, align 8, !tbaa !92
  %i.uq = icmp slt i32 %i.tz, 0
  br i1 %i.uq, label %bb.bb, label %make_aux_edge.exit54.i.i

bb.bb:                                            ; preds = %gv_alloc.exit22.i51.i.i
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.3, double noundef %i.ua, i32 noundef 2147483647) #14
  br label %make_aux_edge.exit54.i.i

make_aux_edge.exit54.i.i:                         ; preds = %bb.bb, %gv_alloc.exit22.i51.i.i
  %.0.i52.i.i = phi double [ f0x41DFFFFFFFC00000, %bb.bb ], [ %i.ua, %gv_alloc.exit22.i51.i.i ]
  %.in.i53.i.i = fadd double %.0.i52.i.i, 5.000000e-01
  %i.ur = fptosi double %.in.i53.i.i to i32
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 228
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !98
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uj, i64 212
  store i32 %i.ud, ptr %i.ut, align 4, !tbaa !104
  %i.uu = tail call ptr @fast_edge(ptr noundef nonnull %i.ue) #14 ; 0 uses
  %i.uv = load i32, ptr %i.sd, align 8
  %i.uw = and i32 %i.uv, 3                        ; 2 uses
  %i.ux = icmp eq i32 %i.uw, 3
  %i.uy = select i1 %i.ux, ptr %i.sd, ptr %i.su
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 56
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !92
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 360
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !86
  %i.vf = xor i32 %.042.i.i, -1
  %i.vg = add i32 %i.ve, %i.vf
  %i.vh = icmp eq i32 %i.uw, 2
  %i.vi = select i1 %i.vh, ptr %i.sd, ptr %i.tv
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 56
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !92
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 360
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !86
  %i.vp = add i32 %i.sq, -1
  %i.vq = add i32 %i.vp, %i.vo
  %i.vr = tail call i32 @llvm.smin.i32(i32 %i.vg, i32 %i.vq)
  %i.vs = load ptr, ptr %i.sf, align 8, !tbaa !8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 360
  store i32 %i.vr, ptr %i.vt, align 8, !tbaa !86
  %indvars.iv.next.i16.i = add nuw nsw i64 %indvars.iv.i12.i, 1 ; 2 uses
  %i.vu = load ptr, ptr %i.ry, align 8, !tbaa !8  ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 392
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !106
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv.next.i16.i
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !68 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.vy, null
  br i1 %.not49.i.i, label %.loopexit.i17.i, label %.lr.ph.i11.i, !llvm.loop !116

.loopexit.i17.i:                                  ; preds = %make_aux_edge.exit54.i.i, %.preheader.i10.i, %.lr.ph60.i.i
  %i.vz = phi ptr [ %i.rz, %.lr.ph60.i.i ], [ %i.rz, %.preheader.i10.i ], [ %i.vu, %make_aux_edge.exit54.i.i ]
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 240
  %.0.i18.i = load ptr, ptr %i.wa, align 8, !tbaa !46 ; 2 uses
  %.not.i19.i = icmp eq ptr %.0.i18.i, null
  br i1 %.not.i19.i, label %make_edge_pairs.exit.loopexit.i, label %.lr.ph60.i.i, !llvm.loop !117

make_edge_pairs.exit.loopexit.i:                  ; preds = %.loopexit.i17.i
  %.pre30.i = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %make_edge_pairs.exit.i

make_edge_pairs.exit.i:                           ; preds = %make_edge_pairs.exit.loopexit.i, %make_LR_constraints.exit.i
  %i.wb = phi ptr [ %.pre30.i, %make_edge_pairs.exit.loopexit.i ], [ %i.rw, %make_LR_constraints.exit.i ] ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 236
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !118
  %i.we = icmp sgt i32 %i.wd, 0
  br i1 %i.we, label %bb.bc, label %pos_clusters.exit.i

bb.bc:                                            ; preds = %make_edge_pairs.exit.i
  tail call fastcc void @contain_clustnodes(ptr noundef nonnull %0)
end_hunk_1
