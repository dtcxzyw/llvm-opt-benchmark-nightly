Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddZddLin?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@empty = internal unnamed_addr global ptr null, align 8
@zdd_entry = external local_unnamed_addr global ptr, align 8
@zddTotalNumberSwapping = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"Change in size after identity transformation! From %d to %d\0A\00", align 1
@zddTotalNumberLinearTr = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Error: cuddZddSwapInPlace out of memory\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddZddLinearSifting(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  store ptr %i.d, ptr @empty, align 8, !tbaa !26
  %i.e = sext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #9 ; 5 uses
  store ptr %i.g, ptr @zdd_entry, align 8, !tbaa !52
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.i, align 8, !tbaa !53
  br label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #9 ; 8 uses
  %i.k = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.k, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.l = icmp sgt i32 %i.b, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.q = icmp eq i32 %i.b, 1
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.r, align 8, !tbaa !53
  br label %cuddZddLinearAux.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.x, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !28
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.aj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !44

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod148 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.epil.init
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [56 x i8], ptr %i.p, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.epil.init
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !28
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.as = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  tail call void @qsort(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef 4, ptr noundef nonnull @cuddZddUniqueCompare) #10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !55
  %.82 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.au)
  %i.av = icmp sgt i32 %.82, 0
  br i1 %i.av, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %cuddZddLinearAux.exit.thread
  %indvars.iv100 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next101, %cuddZddLinearAux.exit.thread ] ; 2 uses
  %i.ba = load i32, ptr @zddTotalNumberSwapping, align 4, !tbaa !28
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !56
  %.not = icmp slt i32 %i.ba, %i.bb
  br i1 %.not, label %bb.f, label %._crit_edge86

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv100
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28 ; 10 uses
  %i.bi = icmp slt i32 %i.bh, %1
  %i.bj = icmp sgt i32 %i.bh, %2
  %or.cond = or i1 %i.bi, %i.bj
  br i1 %or.cond, label %cuddZddLinearAux.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load i32, ptr %i.ay, align 8, !tbaa !31 ; 4 uses
  %i.bl = icmp eq i32 %i.bh, %1
  br i1 %i.bl, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bm = tail call fastcc ptr @cuddZddLinearDown(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef null) ; 8 uses
  %magicptr174.i = ptrtoint ptr %i.bm to i64
  switch i64 %magicptr174.i, label %.lr.ph.i.i [
    i64 -1, label %cuddZddLinearBackward.exit.thread.i
    i64 0, label %cuddZddLinearAux.exit.thread
  ]

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.035.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.bm, %bb.h ] ; 2 uses
  %.02634.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.bk, %bb.h ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %.02634.i.i) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %.lr.ph38.i.i, label %.lr.ph.i.i, !llvm.loop !45

.lr.ph38.i.i:                                     ; preds = %.lr.ph.i.i, %bb.n
  %.137.i.i = phi ptr [ %i.cl, %bb.n ], [ %i.bm, %.lr.ph.i.i ] ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !34
  %i.bt = icmp eq i32 %i.bs, %spec.select.i.i
  br i1 %i.bt, label %cuddZddLinearBackward.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph38.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !36
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = load i32, ptr %.137.i.i, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !38
  %i.ca = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.bx, i32 noundef %i.bz)
  %.not30.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not30.i.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cb = load i32, ptr %.137.i.i, align 8, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !38
  %i.ce = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef %i.cd) #10
  %.not31.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not31.i.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = load i32, ptr %i.bu, align 8, !tbaa !36
  %i.cg = icmp eq i32 %i.cf, 2
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %.137.i.i, align 8, !tbaa !37
  %i.ci = load i32, ptr %i.cc, align 4, !tbaa !38
  %i.cj = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %i.ci)
  %.not32.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not32.i.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.cl, null
  br i1 %.not29.i.i, label %cuddZddLinearBackward.exit.i, label %.lr.ph38.i.i, !llvm.loop !46

bb.o:                                             ; preds = %bb.g
  %i.cm = icmp eq i32 %i.bh, %2
  br i1 %i.cm, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.cn = tail call fastcc ptr @cuddZddLinearUp(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1, ptr noundef null) ; 8 uses
  %magicptr175.i = ptrtoint ptr %i.cn to i64
  switch i64 %magicptr175.i, label %.lr.ph.i122.i [
    i64 -1, label %cuddZddLinearBackward.exit.thread.i
    i64 0, label %cuddZddLinearAux.exit.thread
  ]

.lr.ph.i122.i:                                    ; preds = %bb.p, %.lr.ph.i122.i
  %.035.i123.i = phi ptr [ %i.cr, %.lr.ph.i122.i ], [ %i.cn, %bb.p ] ; 2 uses
  %.02634.i124.i = phi i32 [ %spec.select.i125.i, %.lr.ph.i122.i ], [ %i.bk, %bb.p ]
  %i.co = getelementptr inbounds nuw i8, ptr %.035.i123.i, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !34
  %spec.select.i125.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %.02634.i124.i) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.035.i123.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !35 ; 2 uses
  %.not.i126.i = icmp eq ptr %i.cr, null
  br i1 %.not.i126.i, label %.lr.ph38.i128.i, label %.lr.ph.i122.i, !llvm.loop !45

.lr.ph38.i128.i:                                  ; preds = %.lr.ph.i122.i, %bb.v
  %.137.i129.i = phi ptr [ %i.dm, %bb.v ], [ %i.cn, %.lr.ph.i122.i ] ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.137.i129.i, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !34
  %i.cu = icmp eq i32 %i.ct, %spec.select.i125.i
  br i1 %i.cu, label %.preheader.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph38.i128.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.137.i129.i, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !36
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cy = load i32, ptr %.137.i129.i, align 8, !tbaa !37
  %i.cz = getelementptr inbounds nuw i8, ptr %.137.i129.i, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !38
  %i.db = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.cy, i32 noundef %i.da)
  %.not30.i134.i = icmp eq i32 %i.db, 0
  br i1 %.not30.i134.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dc = load i32, ptr %.137.i129.i, align 8, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %.137.i129.i, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !38
  %i.df = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %i.de) #10
  %.not31.i130.i = icmp eq i32 %i.df, 0
  br i1 %.not31.i130.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = load i32, ptr %i.cv, align 8, !tbaa !36
  %i.dh = icmp eq i32 %i.dg, 2
  br i1 %i.dh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = load i32, ptr %.137.i129.i, align 8, !tbaa !37
  %i.dj = load i32, ptr %i.dd, align 4, !tbaa !38
  %i.dk = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.di, i32 noundef %i.dj)
  %.not32.i133.i = icmp eq i32 %i.dk, 0
  br i1 %.not32.i133.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = getelementptr inbounds nuw i8, ptr %.137.i129.i, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !35 ; 2 uses
  %.not29.i131.i = icmp eq ptr %i.dm, null
  br i1 %.not29.i131.i, label %.preheader.i, label %.lr.ph38.i128.i, !llvm.loop !46

bb.w:                                             ; preds = %bb.o
  %i.dn = sub nsw i32 %i.bh, %1
  %i.do = sub nsw i32 %2, %i.bh
  %i.dp = icmp sgt i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.dq = tail call fastcc ptr @cuddZddLinearDown(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %2, ptr noundef null) ; 9 uses
  %i.dr = icmp eq ptr %i.dq, inttoptr (i64 -1 to ptr)
  br i1 %i.dr, label %cuddZddLinearBackward.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = tail call fastcc ptr @cuddZddUndoMoves(ptr noundef nonnull %0, ptr noundef %i.dq)
  %i.dt = tail call fastcc ptr @cuddZddLinearUp(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %1, ptr noundef %i.ds) ; 8 uses
  %magicptr176.i = ptrtoint ptr %i.dt to i64
  switch i64 %magicptr176.i, label %.lr.ph.i137.i [
    i64 -1, label %cuddZddLinearBackward.exit.thread.i
    i64 0, label %cuddZddLinearBackward.exit.i
  ]

.lr.ph.i137.i:                                    ; preds = %bb.y, %.lr.ph.i137.i
  %.035.i138.i = phi ptr [ %i.dx, %.lr.ph.i137.i ], [ %i.dt, %bb.y ] ; 2 uses
  %.02634.i139.i = phi i32 [ %spec.select.i140.i, %.lr.ph.i137.i ], [ %i.bk, %bb.y ]
  %i.du = getelementptr inbounds nuw i8, ptr %.035.i138.i, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !34
  %spec.select.i140.i = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %.02634.i139.i) ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.035.i138.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !35 ; 2 uses
  %.not.i141.i = icmp eq ptr %i.dx, null
  br i1 %.not.i141.i, label %.lr.ph38.i143.i, label %.lr.ph.i137.i, !llvm.loop !45

.lr.ph38.i143.i:                                  ; preds = %.lr.ph.i137.i, %bb.ae
  %.137.i144.i = phi ptr [ %i.es, %bb.ae ], [ %i.dt, %.lr.ph.i137.i ] ; 8 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.137.i144.i, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !34
  %i.ea = icmp eq i32 %i.dz, %spec.select.i140.i
  br i1 %i.ea, label %cuddZddLinearBackward.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph38.i143.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.137.i144.i, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !36
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ee = load i32, ptr %.137.i144.i, align 8, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %.137.i144.i, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38
  %i.eh = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.ee, i32 noundef %i.eg)
  %.not30.i149.i = icmp eq i32 %i.eh, 0
  br i1 %.not30.i149.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ei = load i32, ptr %.137.i144.i, align 8, !tbaa !37
  %i.ej = getelementptr inbounds nuw i8, ptr %.137.i144.i, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !38
  %i.el = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.ei, i32 noundef %i.ek) #10
  %.not31.i145.i = icmp eq i32 %i.el, 0
  br i1 %.not31.i145.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = load i32, ptr %i.eb, align 8, !tbaa !36
  %i.en = icmp eq i32 %i.em, 2
  br i1 %i.en, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i32, ptr %.137.i144.i, align 8, !tbaa !37
  %i.ep = load i32, ptr %i.ej, align 4, !tbaa !38
  %i.eq = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.eo, i32 noundef %i.ep)
  %.not32.i148.i = icmp eq i32 %i.eq, 0
  br i1 %.not32.i148.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.er = getelementptr inbounds nuw i8, ptr %.137.i144.i, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35 ; 2 uses
  %.not29.i146.i = icmp eq ptr %i.es, null
  br i1 %.not29.i146.i, label %cuddZddLinearBackward.exit.i, label %.lr.ph38.i143.i, !llvm.loop !46

bb.af:                                            ; preds = %bb.w
  %i.et = tail call fastcc ptr @cuddZddLinearUp(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %1, ptr noundef null) ; 9 uses
  %i.eu = icmp eq ptr %i.et, inttoptr (i64 -1 to ptr)
  br i1 %i.eu, label %cuddZddLinearBackward.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ev = tail call fastcc ptr @cuddZddUndoMoves(ptr noundef nonnull %0, ptr noundef %i.et)
  %i.ew = tail call fastcc ptr @cuddZddLinearDown(ptr noundef nonnull %0, i32 noundef %i.bh, i32 noundef %2, ptr noundef %i.ev) ; 8 uses
  %magicptr177.i = ptrtoint ptr %i.ew to i64
  switch i64 %magicptr177.i, label %.lr.ph.i152.i [
    i64 -1, label %cuddZddLinearBackward.exit.thread.i
    i64 0, label %.preheader.i
  ]

.lr.ph.i152.i:                                    ; preds = %bb.ag, %.lr.ph.i152.i
  %.035.i153.i = phi ptr [ %i.fa, %.lr.ph.i152.i ], [ %i.ew, %bb.ag ] ; 2 uses
  %.02634.i154.i = phi i32 [ %spec.select.i155.i, %.lr.ph.i152.i ], [ %i.bk, %bb.ag ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.035.i153.i, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !34
  %spec.select.i155.i = tail call i32 @llvm.smin.i32(i32 %i.ey, i32 %.02634.i154.i) ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.035.i153.i, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !35 ; 2 uses
  %.not.i156.i = icmp eq ptr %i.fa, null
  br i1 %.not.i156.i, label %.lr.ph38.i158.i, label %.lr.ph.i152.i, !llvm.loop !45

.lr.ph38.i158.i:                                  ; preds = %.lr.ph.i152.i, %bb.am
  %.137.i159.i = phi ptr [ %i.fv, %bb.am ], [ %i.ew, %.lr.ph.i152.i ] ; 8 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.137.i159.i, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !34
  %i.fd = icmp eq i32 %i.fc, %spec.select.i155.i
  br i1 %i.fd, label %cuddZddLinearBackward.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph38.i158.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.137.i159.i, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !36
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fh = load i32, ptr %.137.i159.i, align 8, !tbaa !37
  %i.fi = getelementptr inbounds nuw i8, ptr %.137.i159.i, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !38
  %i.fk = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.fh, i32 noundef %i.fj)
  %.not30.i164.i = icmp eq i32 %i.fk, 0
  br i1 %.not30.i164.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fl = load i32, ptr %.137.i159.i, align 8, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %.137.i159.i, i64 4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !38
  %i.fo = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.fl, i32 noundef %i.fn) #10
  %.not31.i160.i = icmp eq i32 %i.fo, 0
  br i1 %.not31.i160.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load i32, ptr %i.fe, align 8, !tbaa !36
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fr = load i32, ptr %.137.i159.i, align 8, !tbaa !37
  %i.fs = load i32, ptr %i.fm, align 4, !tbaa !38
  %i.ft = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %i.fr, i32 noundef %i.fs)
  %.not32.i163.i = icmp eq i32 %i.ft, 0
  br i1 %.not32.i163.i, label %cuddZddLinearBackward.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fu = getelementptr inbounds nuw i8, ptr %.137.i159.i, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !35 ; 2 uses
  %.not29.i161.i = icmp eq ptr %i.fv, null
  br i1 %.not29.i161.i, label %cuddZddLinearBackward.exit.i, label %.lr.ph38.i158.i, !llvm.loop !46

cuddZddLinearBackward.exit.i:                     ; preds = %bb.am, %.lr.ph38.i158.i, %bb.ae, %.lr.ph38.i143.i, %bb.n, %.lr.ph38.i.i, %bb.y
  %.093.i = phi ptr [ %i.dt, %bb.ae ], [ null, %bb.y ], [ null, %bb.n ], [ null, %.lr.ph38.i.i ], [ %i.dt, %.lr.ph38.i143.i ], [ %i.et, %.lr.ph38.i158.i ], [ %i.et, %bb.am ] ; 2 uses
  %.0.i = phi ptr [ %i.dq, %bb.ae ], [ %i.dq, %bb.y ], [ %i.bm, %bb.n ], [ %i.bm, %.lr.ph38.i.i ], [ %i.dq, %.lr.ph38.i143.i ], [ %i.ew, %.lr.ph38.i158.i ], [ %i.ew, %bb.am ] ; 2 uses
  %.not117189.i = icmp eq ptr %.0.i, null
  br i1 %.not117189.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %cuddZddLinearBackward.exit.i
  %.promoted191.i = load ptr, ptr %i.az, align 8, !tbaa !39
  br label %bb.an

..preheader_crit_edge.i:                          ; preds = %bb.an
  store ptr %.1190.i, ptr %i.az, align 8, !tbaa !39
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.v, %.lr.ph38.i128.i, %..preheader_crit_edge.i, %cuddZddLinearBackward.exit.i, %bb.ag
  %.093215.i = phi ptr [ %.093.i, %cuddZddLinearBackward.exit.i ], [ %.093.i, %..preheader_crit_edge.i ], [ %i.et, %bb.ag ], [ %i.cn, %.lr.ph38.i128.i ], [ %i.cn, %bb.v ] ; 2 uses
  %.not118192.i = icmp eq ptr %.093215.i, null
  br i1 %.not118192.i, label %cuddZddLinearAux.exit.thread, label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %.preheader.i
  %.promoted195.i = load ptr, ptr %i.az, align 8, !tbaa !39
  br label %bb.ao

bb.an:                                            ; preds = %bb.an, %.lr.ph.i
  %i.fw = phi ptr [ %.promoted191.i, %.lr.ph.i ], [ %.1190.i, %bb.an ]
  %.1190.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %i.fy, %bb.an ] ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.1190.i, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1190.i, i64 4
  store i32 0, ptr %i.fz, align 4, !tbaa !40
  %i.ga = getelementptr inbounds nuw i8, ptr %.1190.i, i64 8
  store ptr %i.fw, ptr %i.ga, align 8, !tbaa !41
  %.not117.i = icmp eq ptr %i.fy, null
  br i1 %.not117.i, label %..preheader_crit_edge.i, label %bb.an, !llvm.loop !47

bb.ao:                                            ; preds = %bb.ao, %.lr.ph194.i
  %i.gb = phi ptr [ %.promoted195.i, %.lr.ph194.i ], [ %.194193.i, %bb.ao ]
  %.194193.i = phi ptr [ %.093215.i, %.lr.ph194.i ], [ %i.gd, %bb.ao ] ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.194193.i, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.194193.i, i64 4
  store i32 0, ptr %i.ge, align 4, !tbaa !40
  %i.gf = getelementptr inbounds nuw i8, ptr %.194193.i, i64 8
  store ptr %i.gb, ptr %i.gf, align 8, !tbaa !41
  %.not118.i = icmp eq ptr %i.gd, null
  br i1 %.not118.i, label %..loopexit_crit_edge.i, label %bb.ao, !llvm.loop !48

cuddZddLinearBackward.exit.thread.i:              ; preds = %bb.ag, %bb.af, %bb.y, %bb.x, %bb.p, %bb.h, %bb.al, %bb.aj, %bb.ai, %bb.ad, %bb.ab, %bb.aa, %bb.u, %bb.s, %bb.r, %bb.m, %bb.k, %bb.j
  %.295.i = phi ptr [ %i.dt, %bb.ad ], [ null, %bb.m ], [ %i.et, %bb.al ], [ %i.cn, %bb.u ], [ null, %bb.j ], [ null, %bb.k ], [ %i.cn, %bb.r ], [ %i.cn, %bb.s ], [ %i.dt, %bb.aa ], [ %i.dt, %bb.ab ], [ %i.et, %bb.ai ], [ %i.et, %bb.aj ], [ %i.et, %bb.ag ], [ inttoptr (i64 -1 to ptr), %bb.p ], [ null, %bb.x ], [ null, %bb.h ], [ inttoptr (i64 -1 to ptr), %bb.af ], [ inttoptr (i64 -1 to ptr), %bb.y ] ; 2 uses
  %.2.i = phi ptr [ %i.dq, %bb.ad ], [ %i.bm, %bb.m ], [ %i.ew, %bb.al ], [ null, %bb.u ], [ %i.bm, %bb.j ], [ %i.bm, %bb.k ], [ null, %bb.r ], [ null, %bb.s ], [ %i.dq, %bb.aa ], [ %i.dq, %bb.ab ], [ %i.ew, %bb.ai ], [ %i.ew, %bb.aj ], [ inttoptr (i64 -1 to ptr), %bb.ag ], [ null, %bb.p ], [ inttoptr (i64 -1 to ptr), %bb.x ], [ inttoptr (i64 -1 to ptr), %bb.h ], [ null, %bb.af ], [ %i.dq, %bb.y ] ; 2 uses
  %magicptr.i = ptrtoint ptr %.2.i to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %.preheader180.i, label %bb.aq

.preheader180.i:                                  ; preds = %cuddZddLinearBackward.exit.thread.i
  %.promoted.i = load ptr, ptr %i.az, align 8, !tbaa !39
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.preheader180.i
  %i.gg = phi ptr [ %.3.i, %bb.ap ], [ %.promoted.i, %.preheader180.i ]
  %.3.i = phi ptr [ %i.gi, %bb.ap ], [ %.2.i, %.preheader180.i ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !35 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.3.i, i64 4
  store i32 0, ptr %i.gj, align 4, !tbaa !40
  %i.gk = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  store ptr %i.gg, ptr %i.gk, align 8, !tbaa !41
  %.old1.not.i = icmp eq ptr %i.gi, null
  br i1 %.old1.not.i, label %.loopexit181.i, label %bb.ap

.loopexit181.i:                                   ; preds = %bb.ap
  store ptr %.3.i, ptr %i.az, align 8, !tbaa !39
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit181.i, %cuddZddLinearBackward.exit.thread.i
  %magicptr119.i = ptrtoint ptr %.295.i to i64
  %magicptr119.off.i = add i64 %magicptr119.i, -1
  %switch120.i = icmp ult i64 %magicptr119.off.i, -2
  br i1 %switch120.i, label %.preheader178.i, label %cuddZddLinearAux.exit

.preheader178.i:                                  ; preds = %bb.aq
  %.promoted188.i = load ptr, ptr %i.az, align 8, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.preheader178.i
  %i.gl = phi ptr [ %.396.i, %bb.ar ], [ %.promoted188.i, %.preheader178.i ]
  %.396.i = phi ptr [ %i.gn, %bb.ar ], [ %.295.i, %.preheader178.i ] ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.396.i, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !35 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.396.i, i64 4
  store i32 0, ptr %i.go, align 4, !tbaa !40
  %i.gp = getelementptr inbounds nuw i8, ptr %.396.i, i64 8
  store ptr %i.gl, ptr %i.gp, align 8, !tbaa !41
  %.old3.not.i = icmp eq ptr %i.gn, null
  br i1 %.old3.not.i, label %.loopexit179.i, label %bb.ar

..loopexit_crit_edge.i:                           ; preds = %bb.ao
  store ptr %.194193.i, ptr %i.az, align 8, !tbaa !39
  br label %cuddZddLinearAux.exit.thread

.loopexit179.i:                                   ; preds = %bb.ar
  store ptr %.396.i, ptr %i.az, align 8, !tbaa !39
  br label %cuddZddLinearAux.exit

cuddZddLinearAux.exit.thread:                     ; preds = %bb.h, %bb.p, %.preheader.i, %..loopexit_crit_edge.i, %bb.f
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.gq = load i32, ptr %i.at, align 8, !tbaa !55
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.gq)
  %i.gr = sext i32 %. to i64
  %i.gs = icmp slt i64 %indvars.iv.next101, %i.gr
  br i1 %i.gs, label %bb.e, label %._crit_edge86, !llvm.loop !49

._crit_edge86:                                    ; preds = %bb.e, %cuddZddLinearAux.exit.thread, %._crit_edge
  tail call void @free(ptr noundef %i.j) #10
  %i.gt = load ptr, ptr @zdd_entry, align 8, !tbaa !52 ; 2 uses
  %.not59 = icmp eq ptr %i.gt, null
  br i1 %.not59, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %._crit_edge86
  tail call void @free(ptr noundef nonnull %i.gt) #10
  store ptr null, ptr @zdd_entry, align 8, !tbaa !52
  br label %bb.aw

cuddZddLinearAux.exit:                            ; preds = %.loopexit179.i, %bb.aq, %bb.c
  %.pr = load ptr, ptr @zdd_entry, align 8, !tbaa !52 ; 2 uses
  %.not60 = icmp eq ptr %.pr, null
  br i1 %.not60, label %bb.au, label %bb.at

bb.at:                                            ; preds = %cuddZddLinearAux.exit
  tail call void @free(ptr noundef nonnull %.pr) #10
  store ptr null, ptr @zdd_entry, align 8, !tbaa !52
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %cuddZddLinearAux.exit
  br i1 %i.k, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @free(ptr noundef nonnull %i.j) #10
  br label %bb.aw

bb.aw:                                            ; preds = %.thread, %bb.au, %bb.av, %bb.as, %._crit_edge86
  %.048 = phi i32 [ 1, %bb.as ], [ 1, %._crit_edge86 ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %.thread ]
  ret i32 %.048
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @cuddZddUniqueCompare(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cuddZddLinearDown(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %i.c = tail call i32 @cuddZddNextHigh(ptr noundef %0, i32 noundef %1) #10 ; 2 uses
  %.not70 = icmp sgt i32 %i.c, %2
  br i1 %.not70, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.074 = phi i32 [ %i.b, %.lr.ph ], [ %spec.select, %bb.k ] ; 2 uses
  %.05873 = phi i32 [ %i.c, %.lr.ph ], [ %i.z, %bb.k ] ; 6 uses
  %.05972 = phi ptr [ %3, %.lr.ph ], [ %i.j, %bb.k ] ; 3 uses
  %.06271 = phi i32 [ %1, %.lr.ph ], [ %.05873, %bb.k ] ; 4 uses
  %i.f = tail call i32 @cuddZddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.06271, i32 noundef %.05873) #10 ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %.06271, i32 noundef %.05873) ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #10 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.06271, ptr %i.j, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %.05873, ptr %i.l, align 4, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.05972, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !36
  %i.o = icmp sgt i32 %i.h, %i.f
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc i32 @cuddZddLinearInPlace(ptr noundef nonnull %0, i32 noundef %.06271, i32 noundef %.05873) ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph79, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not67 = icmp eq i32 %i.p, %i.f
  br i1 %.not67, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str, i32 noundef %i.f, i32 noundef %i.p) #10 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  store i32 1, ptr %i.n, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.057 = phi i32 [ %i.f, %bb.h ], [ %i.f, %bb.g ], [ %i.h, %bb.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %.057, ptr %i.t, align 4, !tbaa !34
  %i.u = sitofp i32 %.057 to double
  %i.v = sitofp i32 %.074 to double
  %i.w = load double, ptr %i.e, align 8, !tbaa !43
  %i.x = fmul double %i.w, %i.v
  %i.y = fcmp olt double %i.x, %i.u
  br i1 %i.y, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.057, i32 %.074)
  %i.z = tail call i32 @cuddZddNextHigh(ptr noundef nonnull %0, i32 noundef %.05873) #10 ; 2 uses
  %.not = icmp sgt i32 %i.z, %2
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !57

bb.l:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not6877 = icmp eq ptr %.05972, null
  br i1 %.not6877, label %.loopexit, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.f, %bb.l
  %.288 = phi ptr [ %.05972, %bb.l ], [ %i.j, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted = load ptr, ptr %i.aa, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph79, %bb.m
  %i.ab = phi ptr [ %.promoted, %.lr.ph79 ], [ %.378, %bb.m ]
  %.378 = phi ptr [ %.288, %.lr.ph79 ], [ %i.ad, %bb.m ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.378, i64 16
end_hunk_0
