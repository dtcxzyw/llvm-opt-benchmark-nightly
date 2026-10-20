Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddAnneal?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Unexpected condition in ddJumping\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cuddAnnealing(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sub i32 %2, %1
  %i.b = add i32 %i.a, 1                          ; 5 uses
  %i.c = tail call i32 @cuddSifting(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.m, align 8, !tbaa !47
  br label %bb.au

bb.d:                                             ; preds = %bb.b
  %i.n = sub i32 %i.f, %i.h                       ; 7 uses
  %.not9.i = icmp slt i32 %2, %1                  ; 3 uses
  br i1 %.not9.i, label %.copyOrder.exit_crit_edge, label %.lr.ph.i

.copyOrder.exit_crit_edge:                        ; preds = %bb.d
  %.pre = sext i32 %1 to i64
  br label %copyOrder.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count.i = zext i32 %i.b to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.p, i64 %i.q
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 4 %invariant.gep.i, i64 %i.r, i1 false), !tbaa !49
  br label %copyOrder.exit

copyOrder.exit:                                   ; preds = %.copyOrder.exit_crit_edge, %.lr.ph.i
  %.pre-phi = phi i64 [ %.pre, %.copyOrder.exit_crit_edge ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %i.s = sitofp i32 %i.n to double
  %i.t = fmul nnan double %i.s, 6.000000e-01
  %i.u = mul i32 %i.b, 15
  %i.v = add nsw i32 %i.n, 10
  %i.w = add nsw i32 %i.n, 20
  %i.x = add nsw i32 %i.n, 30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aa = add i32 %2, 1
  %i.ab = sub i32 %i.aa, %1
  %wide.trip.count.i133 = zext i32 %i.ab to i64   ; 2 uses
  %i.ac = shl nuw nsw i64 %wide.trip.count.i133, 2
  br label %.outer

.outer:                                           ; preds = %bb.ap, %copyOrder.exit
  %.0112.ph = phi i32 [ %.1113.lcssa, %bb.ap ], [ %i.n, %copyOrder.exit ]
  %.0108.ph = phi i32 [ %.0107, %bb.ap ], [ %i.v, %copyOrder.exit ]
  %.0107.ph = phi i32 [ %.0106, %bb.ap ], [ %i.w, %copyOrder.exit ]
  %.0106.ph = phi i32 [ %.0105, %bb.ap ], [ %i.n, %copyOrder.exit ]
  %.0105.ph = phi i32 [ %.1113.lcssa, %bb.ap ], [ %i.x, %copyOrder.exit ]
  %.0102.ph = phi i32 [ %.1103.lcssa, %bb.ap ], [ %i.n, %copyOrder.exit ]
  %.0101.ph = phi double [ %i.et, %bb.ap ], [ %i.t, %copyOrder.exit ]
  %.098.ph = phi i32 [ %i.fa, %bb.ap ], [ %i.u, %copyOrder.exit ] ; 3 uses
  %i.ad = icmp sgt i32 %.098.ph, 0
  br label %bb.e

bb.e:                                             ; preds = %.outer, %.critedge._crit_edge
  %.0112 = phi i32 [ %.1113.lcssa, %.critedge._crit_edge ], [ %.0112.ph, %.outer ]
  %.0108 = phi i32 [ %.0107, %.critedge._crit_edge ], [ %.0108.ph, %.outer ] ; 3 uses
  %.0107 = phi i32 [ %.0106, %.critedge._crit_edge ], [ %.0107.ph, %.outer ] ; 3 uses
  %.0106 = phi i32 [ %.0105, %.critedge._crit_edge ], [ %.0106.ph, %.outer ] ; 3 uses
  %.0105 = phi i32 [ %.1113.lcssa, %.critedge._crit_edge ], [ %.0105.ph, %.outer ] ; 3 uses
  %.0102 = phi i32 [ %.1103.lcssa, %.critedge._crit_edge ], [ %.0102.ph, %.outer ] ; 2 uses
  %.0101 = phi double [ %i.et, %.critedge._crit_edge ], [ %.0101.ph, %.outer ] ; 5 uses
  %i.ae = fcmp ogt double %.0101, 1.000000e+00
  br i1 %i.ae, label %.critedge.preheader, label %stopping_criterion.exit

stopping_criterion.exit:                          ; preds = %bb.e
  %i.af = icmp ne i32 %.0108, %.0107
  %i.ag = icmp ne i32 %.0108, %.0106
  %or.cond.i.not150 = or i1 %i.af, %i.ag
  %i.ah = icmp ne i32 %.0108, %.0105
  %or.cond8.i.not = or i1 %or.cond.i.not150, %i.ah
  br i1 %or.cond8.i.not, label %.critedge.preheader, label %bb.aq

.critedge.preheader:                              ; preds = %stopping_criterion.exit, %bb.e
  br i1 %i.ad, label %.lr.ph, label %.critedge._crit_edge

.lr.ph:                                           ; preds = %.critedge.preheader, %copyOrder.exit139
  %.0100164 = phi i32 [ %i.es, %copyOrder.exit139 ], [ 0, %.critedge.preheader ]
  %.1103163 = phi i32 [ %.2104, %copyOrder.exit139 ], [ %.0102, %.critedge.preheader ] ; 2 uses
  %i.ai = tail call i64 @Cudd_Random() #8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = srem i32 %i.aj, %i.b                    ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph
  %i.al = tail call i64 @Cudd_Random() #8
  %i.am = trunc i64 %i.al to i32
  %i.an = srem i32 %i.am, %i.b                    ; 3 uses
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g, !llvm.loop !40

bb.g:                                             ; preds = %bb.f
  %i.ap = add nsw i32 %i.ak, %1                   ; 2 uses
  %i.aq = add nsw i32 %i.an, %1                   ; 2 uses
  %i.ar = icmp sgt i32 %i.ak, %i.an               ; 2 uses
  %spec.select = select i1 %i.ar, i32 %i.aq, i32 %i.ap ; 5 uses
  %spec.select126 = select i1 %i.ar, i32 %i.ap, i32 %i.aq ; 5 uses
  %i.as = tail call i64 @Cudd_Random() #8
  %i.at = sitofp i64 %i.as to double
  %i.au = fdiv double %i.at, f0x41DFFFFFEA400000  ; 2 uses
  %i.av = fcmp olt double %i.au, 4.000000e-01
  br i1 %i.av, label %bb.h, label %ddExchange.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %spec.select) #8
  %i.ax = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %spec.select126) #8
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !28
  %i.az = load i32, ptr %i.g, align 8, !tbaa !29
  %i.ba = sub i32 %i.ay, %i.az                    ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %bb.h
  %.0167.i = phi i32 [ %spec.select, %bb.h ], [ %.1168.i, %bb.ab ] ; 10 uses
  %.0165.i = phi i32 [ %spec.select126, %bb.h ], [ %.1166.i, %bb.ab ] ; 6 uses
  %.0162.i = phi ptr [ null, %bb.h ], [ %.sink229.i, %bb.ab ] ; 5 uses
  %.0161.i = phi i32 [ %i.aw, %bb.h ], [ %i.cl, %bb.ab ] ; 11 uses
  %.0160.i = phi i32 [ %i.ax, %bb.h ], [ %i.cm, %bb.ab ] ; 5 uses
  %.0.i128 = phi i32 [ %i.ba, %bb.h ], [ %spec.select.i129, %bb.ab ] ; 2 uses
  %i.bb = icmp eq i32 %.0161.i, %.0160.i
  br i1 %i.bb, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.0167.i, i32 noundef %.0161.i) #8 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %siftBackwardProb.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 8 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %siftBackwardProb.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.0167.i, ptr %i.be, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %.0161.i, ptr %i.bg, align 4, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %.0162.i, ptr %i.bi, align 8, !tbaa !36
  %i.bj = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.0161.i, i32 noundef %.0165.i) #8 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i130, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 8 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.lr.ph.i130, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %.0161.i, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %.0165.i, ptr %i.bn, align 4, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 %i.bj, ptr %i.bo, align 4, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.be, ptr %i.bp, align 8, !tbaa !36
  %i.bq = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.0167.i, i32 noundef %.0161.i) #8 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i130, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.lr.ph.i130, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.0167.i, ptr %i.bs, align 8, !tbaa !33
  br label %bb.z

bb.q:                                             ; preds = %bb.i
  %i.bu = icmp eq i32 %.0167.i, %.0160.i
  %i.bv = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.0167.i, i32 noundef %.0161.i) #8 ; 3 uses
  %i.bw = icmp eq i32 %i.bv, 0                    ; 2 uses
  br i1 %i.bu, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %i.bw, label %siftBackwardProb.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %siftBackwardProb.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.0167.i, ptr %i.bx, align 8, !tbaa !33
  br label %bb.z

bb.u:                                             ; preds = %bb.q
  br i1 %i.bw, label %siftBackwardProb.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 8 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %siftBackwardProb.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.0167.i, ptr %i.bz, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %.0161.i, ptr %i.cb, align 4, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %i.bv, ptr %i.cc, align 4, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %.0162.i, ptr %i.cd, align 8, !tbaa !36
  %i.ce = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.0160.i, i32 noundef %.0165.i) #8 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i130, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.lr.ph.i130, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %.0160.i, ptr %i.cg, align 8, !tbaa !33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t, %bb.p
  %.sink229.i = phi ptr [ %i.bx, %bb.t ], [ %i.cg, %bb.y ], [ %i.bs, %bb.p ] ; 8 uses
  %.0161.sink.i = phi i32 [ %.0161.i, %bb.t ], [ %.0165.i, %bb.y ], [ %.0161.i, %bb.p ]
  %.sink.i = phi i32 [ %i.bv, %bb.t ], [ %i.ce, %bb.y ], [ %i.bq, %bb.p ] ; 3 uses
  %.0162.sink.i = phi ptr [ %.0162.i, %bb.t ], [ %i.bz, %bb.y ], [ %i.bl, %bb.p ]
  %.1168.i = phi i32 [ %.0165.i, %bb.t ], [ %.0161.i, %bb.y ], [ %.0165.i, %bb.p ] ; 2 uses
  %.1166.i = phi i32 [ %.0167.i, %bb.t ], [ %.0160.i, %bb.y ], [ %.0167.i, %bb.p ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink229.i, i64 4
  store i32 %.0161.sink.i, ptr %i.ci, align 4, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink229.i, i64 12
  store i32 %.sink.i, ptr %i.cj, align 4, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink229.i, i64 16
  store ptr %.0162.sink.i, ptr %i.ck, align 8, !tbaa !36
  %i.cl = tail call i32 @cuddNextHigh(ptr noundef %0, i32 noundef %.1168.i) #8 ; 2 uses
  %i.cm = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.1166.i) #8 ; 4 uses
  %i.cn = icmp sgt i32 %i.cl, %spec.select126
  br i1 %i.cn, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = sitofp i32 %.sink.i to double
  %i.cp = sitofp i32 %.0.i128 to double
  %i.cq = fmul nnan double %i.cp, 1.100000e+00
  %i.cr = fcmp olt double %i.cq, %i.co
  br i1 %i.cr, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %spec.select.i129 = tail call i32 @llvm.smin.i32(i32 %.sink.i, i32 %.0.i128)
  br label %bb.i

bb.ac:                                            ; preds = %bb.aa, %bb.z
  %.not.i = icmp slt i32 %i.cm, %spec.select
  br i1 %.not.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %i.cm, i32 noundef %.1166.i) #8 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i130, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = tail call ptr @cuddDynamicAllocNode(ptr noundef %0) #8 ; 6 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.lr.ph.i130, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.cm, ptr %i.cu, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %.1166.i, ptr %i.cw, align 4, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %i.cs, ptr %i.cx, align 4, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %.sink229.i, ptr %i.cy, align 8, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.2.i = phi ptr [ %i.cu, %bb.af ], [ %.sink229.i, %bb.ac ] ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.038.i.i = phi i32 [ %i.ba, %bb.ag ], [ %spec.select.i.i, %bb.ah ]
  %.02737.i.i = phi ptr [ %.2.i, %bb.ag ], [ %i.dc, %bb.ah ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !35
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.da, i32 %.038.i.i) ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.02737.i.i, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %bb.ai, label %bb.ah, !llvm.loop !0

bb.ai:                                            ; preds = %bb.ah
  %i.dd = icmp eq i32 %spec.select.i.i, %i.ba
  br i1 %i.dd, label %bb.aj, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ai
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !28
  %.pre43.i.i = load i32, ptr %i.g, align 8, !tbaa !29
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.de = tail call i64 @Cudd_Random() #8
  %i.df = sitofp i64 %i.de to double
  %i.dg = fdiv double %i.df, f0x41DFFFFFEA400000
  %i.dh = load i32, ptr %i.e, align 4, !tbaa !28  ; 2 uses
  %i.di = load i32, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.dj = add i32 %i.ba, %i.di
  %i.dk = sub i32 %i.dh, %i.dj
  %i.dl = uitofp i32 %i.dk to double
  %i.dm = fneg double %i.dl
  %i.dn = fdiv double %i.dm, %.0101
  %i.do = tail call double @exp(double noundef %i.dn) #8
  %i.dp = fcmp olt double %i.dg, %i.do
  br i1 %i.dp, label %siftBackwardProb.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i.i
  %i.dq = phi i32 [ %.pre43.i.i, %._crit_edge.i.i ], [ %i.di, %bb.aj ]
  %i.dr = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.dh, %bb.aj ]
  %i.ds = sub i32 %i.dr, %i.dq
  %i.dt = icmp eq i32 %i.ds, %spec.select.i.i
  br i1 %i.dt, label %siftBackwardProb.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak, %bb.al
  %.12839.i.i = phi ptr [ %i.dz, %bb.al ], [ %.2.i, %bb.ak ] ; 3 uses
  %i.du = load i32, ptr %.12839.i.i, align 8, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %.12839.i.i, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !34
  %i.dx = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %i.du, i32 noundef %i.dw) #8 ; 2 uses
  %.not34.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not34.i.i, label %.lr.ph.i130, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.12839.i.i, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !36 ; 2 uses
  %.not33.i.i = icmp eq ptr %i.dz, null
  %i.ea = icmp eq i32 %i.dx, %spec.select.i.i
  %or.cond.i.i = select i1 %.not33.i.i, i1 true, i1 %i.ea
  br i1 %or.cond.i.i, label %siftBackwardProb.exit.i, label %.lr.ph.i.i, !llvm.loop !1

siftBackwardProb.exit.i:                          ; preds = %bb.al, %bb.ak, %bb.aj
  %.promoted.i = load ptr, ptr %i.y, align 8, !tbaa !37
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %siftBackwardProb.exit.i
  %.3195.i = phi ptr [ %.2.i, %siftBackwardProb.exit.i ], [ %i.ed, %bb.am ] ; 5 uses
  %i.eb = phi ptr [ %.promoted.i, %siftBackwardProb.exit.i ], [ %.3195.i, %bb.am ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.3195.i, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !36 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3195.i, i64 4
  store i32 0, ptr %i.ee, align 4, !tbaa !38
  %i.ef = getelementptr inbounds nuw i8, ptr %.3195.i, i64 8
  store ptr %i.eb, ptr %i.ef, align 8, !tbaa !39
  %.not186.i = icmp eq ptr %i.ed, null
  br i1 %.not186.i, label %ddExchange.exit.thread210, label %bb.am, !llvm.loop !41

siftBackwardProb.exit.thread.i:                   ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.k, %bb.j
  %.not187196.i = icmp eq ptr %.0162.i, null
  br i1 %.not187196.i, label %ddExchange.exit.thread, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %bb.ae, %bb.ad, %bb.x, %bb.w, %bb.o, %bb.n, %bb.m, %bb.l, %.lr.ph.i.i, %siftBackwardProb.exit.thread.i
  %.4221.i = phi ptr [ %.0162.i, %siftBackwardProb.exit.thread.i ], [ %i.bz, %bb.w ], [ %.2.i, %.lr.ph.i.i ], [ %i.bz, %bb.x ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ], [ %i.be, %bb.m ], [ %i.be, %bb.l ], [ %.sink229.i, %bb.ad ], [ %.sink229.i, %bb.ae ]
  %.promoted198.i = load ptr, ptr %i.y, align 8, !tbaa !37
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph.i130
  %i.eg = phi ptr [ %.promoted198.i, %.lr.ph.i130 ], [ %.5197.i, %bb.an ]
  %.5197.i = phi ptr [ %.4221.i, %.lr.ph.i130 ], [ %i.ei, %bb.an ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.5197.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !36 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.5197.i, i64 4
  store i32 0, ptr %i.ej, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %.5197.i, i64 8
  store ptr %i.eg, ptr %i.ek, align 8, !tbaa !39
  %.not187.i = icmp eq ptr %i.ei, null
  br i1 %.not187.i, label %..loopexit_crit_edge.i, label %bb.an, !llvm.loop !42

..loopexit_crit_edge.i:                           ; preds = %bb.an
  store ptr %.5197.i, ptr %i.y, align 8, !tbaa !37
  br label %ddExchange.exit.thread

ddExchange.exit.thread210:                        ; preds = %bb.am
  store ptr %.3195.i, ptr %i.y, align 8, !tbaa !37
  br label %bb.ao

ddExchange.exit:                                  ; preds = %bb.g
  %i.el = fcmp olt double %i.au, 7.600000e-01
  %spec.select126.spec.select = select i1 %i.el, i32 %spec.select126, i32 %spec.select
  %i.em = tail call fastcc i32 @ddJumpingAux(ptr noundef %0, i32 noundef %spec.select126.spec.select, i32 noundef %spec.select, i32 noundef %spec.select126, double noundef %.0101)
  %.not125 = icmp eq i32 %i.em, 0
  br i1 %.not125, label %ddExchange.exit.thread, label %bb.ao

ddExchange.exit.thread:                           ; preds = %ddExchange.exit, %siftBackwardProb.exit.thread.i, %..loopexit_crit_edge.i
  tail call void @free(ptr noundef %i.k) #8
  br label %bb.au

bb.ao:                                            ; preds = %ddExchange.exit.thread210, %ddExchange.exit
  %i.en = load i32, ptr %i.e, align 4, !tbaa !28
  %i.eo = load i32, ptr %i.g, align 8, !tbaa !29
  %i.ep = sub i32 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp sge i32 %i.ep, %.1103163
  %brmerge = or i1 %.not9.i, %i.eq
  %.1103.mux = tail call i32 @llvm.smin.i32(i32 %i.ep, i32 %.1103163)
  br i1 %brmerge, label %copyOrder.exit139, label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %bb.ao
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !48
  %invariant.gep.i134 = getelementptr [4 x i8], ptr %i.er, i64 %.pre-phi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr align 4 %invariant.gep.i134, i64 %i.ac, i1 false), !tbaa !49
  br label %copyOrder.exit139

copyOrder.exit139:                                ; preds = %.lr.ph.i132, %bb.ao
  %.2104 = phi i32 [ %.1103.mux, %bb.ao ], [ %i.ep, %.lr.ph.i132 ] ; 2 uses
  %i.es = add nuw nsw i32 %.0100164, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %.098.ph
  br i1 %exitcond.not, label %.critedge._crit_edge, label %.lr.ph, !llvm.loop !43

.critedge._crit_edge:                             ; preds = %copyOrder.exit139, %.critedge.preheader
  %.1113.lcssa = phi i32 [ %.0112, %.critedge.preheader ], [ %i.ep, %copyOrder.exit139 ] ; 4 uses
  %.1103.lcssa = phi i32 [ %.0102, %.critedge.preheader ], [ %.2104, %copyOrder.exit139 ] ; 2 uses
  %i.et = fmul double %.0101, 9.000000e-01        ; 4 uses
  %i.eu = fcmp ult double %i.et, 1.000000e+00
  br i1 %i.eu, label %bb.e, label %bb.ap, !llvm.loop !44

bb.ap:                                            ; preds = %.critedge._crit_edge
  %i.ev = tail call nnan double @llvm.log.f64(double %i.et)
  %i.ew = tail call double @log(double noundef %.0101) #8
  %i.ex = fdiv double %i.ev, %i.ew
  %i.ey = sitofp i32 %.098.ph to double
  %i.ez = fmul double %i.ex, %i.ey
  %i.fa = fptosi double %i.ez to i32
  br label %.outer, !llvm.loop !44

bb.aq:                                            ; preds = %stopping_criterion.exit
  br i1 %.not9.i, label %restoreOrder.exit.thread, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.aq
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 320
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i, %.lr.ph31.i
  %indvars.iv.i141 = phi i64 [ 0, %.lr.ph31.i ], [ %indvars.iv.next.i143, %._crit_edge.i ] ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !50
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i141
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !49
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !49 ; 2 uses
  %i.fi = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %i.fh) #8 ; 2 uses
  %i.fj = add nsw i64 %indvars.iv.i141, %.pre-phi ; 2 uses
  %i.fk = sext i32 %i.fi to i64
  %.not2325.i = icmp sgt i64 %i.fj, %i.fk
  br i1 %.not2325.i, label %._crit_edge.i, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ar, %bb.as
  %.027.i = phi i32 [ %i.fn, %bb.as ], [ %i.fi, %bb.ar ] ; 3 uses
  %.02026.i = phi i32 [ %.027.i, %bb.as ], [ %i.fh, %bb.ar ]
  %i.fl = tail call i32 @cuddSwapInPlace(ptr noundef %0, i32 noundef %.027.i, i32 noundef %.02026.i) #8
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i142
  %i.fn = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %.027.i) #8 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %.not23.i = icmp sgt i64 %i.fj, %i.fo
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i142, !llvm.loop !45

._crit_edge.i:                                    ; preds = %bb.as, %bb.ar
  %indvars.iv.next.i143 = add nuw nsw i64 %indvars.iv.i141, 1 ; 2 uses
  %exitcond.not.i144 = icmp eq i64 %indvars.iv.next.i143, %wide.trip.count.i133
  br i1 %exitcond.not.i144, label %restoreOrder.exit.thread, label %bb.ar, !llvm.loop !46

restoreOrder.exit.thread:                         ; preds = %._crit_edge.i, %bb.aq
  tail call void @free(ptr noundef %i.k) #8
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i142
  tail call void @free(ptr noundef %i.k) #8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %restoreOrder.exit.thread, %bb.a, %ddExchange.exit.thread, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %ddExchange.exit.thread ], [ 0, %bb.at ], [ 1, %restoreOrder.exit.thread ]
  ret i32 %.0
}

declare i32 @cuddSifting(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare i64 @Cudd_Random() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ddJumpingAux(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = sub i32 %i.b, %i.d                       ; 8 uses
  %i.f = tail call i32 @cuddNextLow(ptr noundef %0, i32 noundef %1) #8
  %i.g = icmp slt i32 %i.f, %2
  %i.h = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %1) #8
  %i.i = icmp sgt i32 %i.h, %3                    ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %1) #8 ; 2 uses
  %.not48.i = icmp sgt i32 %i.j, %3
  br i1 %.not48.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %.052.i = phi i32 [ %i.e, %.lr.ph.i ], [ %spec.select.i, %bb.g ] ; 2 uses
  %.03851.i = phi i32 [ %i.j, %.lr.ph.i ], [ %i.x, %bb.g ] ; 4 uses
  %.03950.i = phi ptr [ null, %.lr.ph.i ], [ %i.n, %bb.g ] ; 3 uses
  %.04249.i = phi i32 [ %1, %.lr.ph.i ], [ %.03851.i, %bb.g ] ; 2 uses
  %i.l = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.04249.i, i32 noundef %.03851.i) #8 ; 4 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #8 ; 12 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.04249.i, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.03851.i, ptr %i.p, align 4, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %i.l, ptr %i.q, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.03950.i, ptr %i.r, align 8, !tbaa !36
  %i.s = sitofp i32 %i.l to double
  %i.t = load double, ptr %i.k, align 8, !tbaa !57
  %i.u = sitofp i32 %.052.i to double
  %i.v = fmul double %i.t, %i.u
  %i.w = fcmp olt double %i.v, %i.s
  br i1 %i.w, label %ddJumpingDown.exit.preheader, label %bb.g

ddJumpingDown.exit.preheader:                     ; preds = %bb.g, %bb.f
  br label %ddJumpingDown.exit

bb.g:                                             ; preds = %bb.f
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.052.i)
  %i.x = tail call i32 @cuddNextHigh(ptr noundef nonnull %0, i32 noundef %.03851.i) #8 ; 2 uses
  %.not.i = icmp sgt i32 %i.x, %3
  br i1 %.not.i, label %ddJumpingDown.exit.preheader, label %bb.d, !llvm.loop !51

bb.h:                                             ; preds = %bb.e, %bb.d
  %.not4555.i = icmp eq ptr %.03950.i, null
  br i1 %.not4555.i, label %.loopexit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.promoted.i = load ptr, ptr %i.y, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph57.i
  %i.z = phi ptr [ %.promoted.i, %.lr.ph57.i ], [ %.256.i, %bb.i ]
  %.256.i = phi ptr [ %.03950.i, %.lr.ph57.i ], [ %i.ab, %bb.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.256.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.256.i, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %.256.i, i64 8
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !39
  %.not45.i = icmp eq ptr %i.ab, null
  br i1 %.not45.i, label %..loopexit_crit_edge.i, label %bb.i, !llvm.loop !52

..loopexit_crit_edge.i:                           ; preds = %bb.i
  store ptr %.256.i, ptr %i.y, align 8, !tbaa !37
  br label %.loopexit

ddJumpingDown.exit:                               ; preds = %ddJumpingDown.exit.preheader, %ddJumpingDown.exit
  %.038.i = phi i32 [ %spec.select.i58, %ddJumpingDown.exit ], [ %i.e, %ddJumpingDown.exit.preheader ]
  %.02737.i = phi ptr [ %i.ah, %ddJumpingDown.exit ], [ %i.n, %ddJumpingDown.exit.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02737.i, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %spec.select.i58 = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %.038.i) ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02737.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %.not.i59 = icmp eq ptr %i.ah, null
  br i1 %.not.i59, label %bb.j, label %ddJumpingDown.exit, !llvm.loop !0

bb.j:                                             ; preds = %ddJumpingDown.exit
  %i.ai = icmp eq i32 %spec.select.i58, %i.e
  br i1 %i.ai, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !28
  %.pre43.i = load i32, ptr %i.c, align 8, !tbaa !29
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i64 @Cudd_Random() #8
  %i.ak = sitofp i64 %i.aj to double
  %i.al = fdiv double %i.ak, f0x41DFFFFFEA400000
  %i.am = load i32, ptr %i.a, align 4, !tbaa !28  ; 2 uses
  %i.an = load i32, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.ao = add i32 %i.e, %i.an
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = uitofp i32 %i.ap to double
  %i.ar = fneg double %i.aq
  %i.as = fdiv double %i.ar, %4
  %i.at = tail call double @exp(double noundef %i.as) #8
  %i.au = fcmp olt double %i.al, %i.at
  br i1 %i.au, label %siftBackwardProb.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.av = phi i32 [ %.pre43.i, %._crit_edge.i ], [ %i.an, %bb.k ]
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.am, %bb.k ]
  %i.ax = sub i32 %i.aw, %i.av
  %i.ay = icmp eq i32 %i.ax, %spec.select.i58
  br i1 %i.ay, label %siftBackwardProb.exit.thread, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.l, %bb.m
  %.12839.i = phi ptr [ %i.be, %bb.m ], [ %i.n, %bb.l ] ; 3 uses
  %i.az = load i32, ptr %.12839.i, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %.12839.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %i.az, i32 noundef %i.bb) #8 ; 2 uses
  %.not34.i = icmp eq i32 %i.bc, 0
  br i1 %.not34.i, label %.lr.ph, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i60
  %i.bd = getelementptr inbounds nuw i8, ptr %.12839.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 2 uses
  %.not33.i = icmp eq ptr %i.be, null
  %i.bf = icmp eq i32 %i.bc, %spec.select.i58
  %or.cond.i = select i1 %.not33.i, i1 true, i1 %i.bf
  br i1 %or.cond.i, label %siftBackwardProb.exit.thread, label %.lr.ph.i60, !llvm.loop !1

bb.n:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call i32 @cuddNextLow(ptr noundef nonnull %0, i32 noundef %1) #8 ; 2 uses
  %.not48.i61 = icmp slt i32 %i.bg, %2
  br i1 %.not48.i61, label %.loopexit, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.i62
  %.052.i63 = phi i32 [ %i.e, %.lr.ph.i62 ], [ %spec.select.i67, %bb.s ] ; 2 uses
  %.03851.i64 = phi i32 [ %i.bg, %.lr.ph.i62 ], [ %i.bu, %bb.s ] ; 4 uses
  %.03950.i65 = phi ptr [ null, %.lr.ph.i62 ], [ %i.bk, %bb.s ] ; 3 uses
  %.04249.i66 = phi i32 [ %1, %.lr.ph.i62 ], [ %.03851.i64, %bb.s ] ; 2 uses
  %i.bi = tail call i32 @cuddSwapInPlace(ptr noundef nonnull %0, i32 noundef %.03851.i64, i32 noundef %.04249.i66) #8 ; 4 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @cuddDynamicAllocNode(ptr noundef nonnull %0) #8 ; 12 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.03851.i64, ptr %i.bk, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %.04249.i66, ptr %i.bm, align 4, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
end_hunk_0
