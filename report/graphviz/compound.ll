Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/compound?download=true
inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bezier = type { ptr, i64, i32, i32, %struct.pointf_s, %struct.pointf_s }
%struct.pointf_s = type { double, double }

@.str = private unnamed_addr constant [6 x i8] c"lhead\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ltail\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s -> %s: spline size > 1 not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s -> %s: head not inside head cluster %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s -> %s: tail is inside head cluster %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s -> %s: tail not inside tail cluster %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s -> %s: head is inside tail cluster %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"cluster named %s not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [89 x i8] c"segment [(%.5g, %.5g),(%.5g,%.5g)] does not intersect box ll=(%.5g,%.5g),ur=(%.5g,%.5g)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @dot_compoundEdges(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.bezier, align 8             ; 16 uses
  %2 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  %i.a = tail call ptr @mkClustMap(ptr noundef %0) #10 ; 3 uses
  %i.b = tail call ptr @agfstnode(ptr noundef %0) #10 ; 2 uses
  %.not28 = icmp eq ptr %i.b, null
  br i1 %.not28, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph31, %._crit_edge
  %.029 = phi ptr [ %i.b, %.lr.ph31 ], [ %i.kx, %._crit_edge ] ; 2 uses
  %i.j = call ptr @agfstout(ptr noundef %0, ptr noundef nonnull %.029) #10 ; 2 uses
  %.not1423 = icmp eq ptr %i.j, null
  br i1 %.not1423, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %makeCompoundEdge.exit
  %.01324 = phi ptr [ %i.kw, %makeCompoundEdge.exit ], [ %i.j, %bb.b ] ; 25 uses
  %i.k = call ptr @agget(ptr noundef nonnull %.01324, ptr noundef nonnull @.str) #10 ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %getCluster.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i8, ptr %i.k, align 1, !tbaa !24
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %getCluster.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @findCluster(ptr noundef %i.a, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %getCluster.exit.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.k) #10
  br label %getCluster.exit.i

getCluster.exit.i:                                ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph
  %.0.i.i = phi ptr [ null, %.lr.ph ], [ null, %bb.c ], [ null, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = call ptr @agget(ptr noundef nonnull %.01324, ptr noundef nonnull @.str.1) #10 ; 4 uses
  %.not.i235.i = icmp eq ptr %i.p, null
  br i1 %.not.i235.i, label %getCluster.exit237.i, label %bb.f

bb.f:                                             ; preds = %getCluster.exit.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %getCluster.exit237.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr @findCluster(ptr noundef %i.a, ptr noundef nonnull %i.p) #10 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %getCluster.exit237.thread.i

getCluster.exit237.thread.i:                      ; preds = %bb.g
  %i.u = icmp ne ptr %.0.i.i, null
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.p) #10
  br label %getCluster.exit237.i

getCluster.exit237.i:                             ; preds = %bb.h, %bb.f, %getCluster.exit.i
  %.not268.i = icmp eq ptr %.0.i.i, null
  br i1 %.not268.i, label %makeCompoundEdge.exit, label %bb.i

bb.i:                                             ; preds = %getCluster.exit237.i, %getCluster.exit237.thread.i
  %i.v = phi i1 [ %i.u, %getCluster.exit237.thread.i ], [ true, %getCluster.exit237.i ]
  %i.w = phi i1 [ true, %getCluster.exit237.thread.i ], [ false, %getCluster.exit237.i ]
  %.0.i236257.i = phi ptr [ %i.s, %getCluster.exit237.thread.i ], [ null, %getCluster.exit237.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.01324, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42  ; 3 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %makeCompoundEdge.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !45
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr %.01324, align 8
  %i.af = and i32 %i.ae, 3
  %i.ag = icmp eq i32 %i.af, 3
  %i.ah = select i1 %i.ag, i64 56, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %.01324, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ak = call ptr @agnameof(ptr noundef %i.aj) #10
  %i.al = load i32, ptr %.01324, align 8
  %i.am = and i32 %i.al, 3
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = select i1 %i.an, i64 56, i64 -8
  %i.ap = getelementptr inbounds i8, ptr %.01324, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = call ptr @agnameof(ptr noundef %i.aq) #10
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.2, ptr noundef %i.ak, ptr noundef %i.ar) #10
  br label %makeCompoundEdge.exit

bb.l:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !51 ; 27 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %i.av = load i32, ptr %.01324, align 8
  %i.aw = and i32 %i.av, 3                        ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = getelementptr inbounds i8, ptr %.01324, i64 -64 ; 3 uses
  %i.az = select i1 %i.ax, ptr %.01324, ptr %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50 ; 2 uses
  %i.bc = icmp eq i32 %i.aw, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.01324, i64 64 ; 2 uses
  %i.be = select i1 %i.bc, ptr %.01324, ptr %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 5 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !54 ; 2 uses
  %i.bk = load <2 x i32>, ptr %i.bi, align 8, !tbaa !55
  store <2 x i32> %i.bk, ptr %i.c, align 8, !tbaa !55
  br i1 %i.v, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load double, ptr %i.bq, align 8         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bt = load double, ptr %i.bs, align 8         ; 2 uses
  %i.bu = load double, ptr %i.bn, align 8, !tbaa !11 ; 4 uses
  %i.bv = fcmp ugt double %i.bu, %i.br
  br i1 %i.bv, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !12 ; 4 uses
  %i.by = fcmp ugt double %i.br, %i.bx
  br i1 %i.by, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13 ; 4 uses
  %i.cb = fcmp ugt double %i.ca, %i.bt
  br i1 %i.cb, label %.sink.split.i, label %inBoxf.exit.i

inBoxf.exit.i:                                    ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !14 ; 4 uses
  %i.ce = fcmp ugt double %i.bt, %i.cd
  br i1 %i.ce, label %.sink.split.i, label %bb.p

bb.p:                                             ; preds = %inBoxf.exit.i
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !56 ; 3 uses
  %i.cg = load double, ptr %i.cf, align 8         ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load double, ptr %i.ch, align 8         ; 3 uses
  %i.cj = fcmp ugt double %i.bu, %i.cg
  %i.ck = fcmp ugt double %i.cg, %i.bx
  %or.cond.i = or i1 %i.cj, %i.ck
  %i.cl = fcmp ugt double %i.ca, %i.ci
  %i.cm = fcmp ugt double %i.ci, %i.cd
  %i.cn = or i1 %i.cl, %i.cm
  %or.cond342.i = select i1 %or.cond.i, i1 true, i1 %i.cn
  br i1 %or.cond342.i, label %.preheader270.i, label %bb.q

.preheader270.i:                                  ; preds = %bb.p
  %i.co = add i64 %i.au, -1                       ; 5 uses
  %.not287.i = icmp eq i64 %i.co, 0
  br i1 %.not287.i, label %bb.t, label %.lr.ph.i

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !30 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load double, ptr %i.cr, align 8         ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cu = load double, ptr %i.ct, align 8         ; 2 uses
  %i.cv = fcmp ugt double %i.bu, %i.cs
  %i.cw = fcmp ugt double %i.cs, %i.bx
  %or.cond343.i = or i1 %i.cv, %i.cw
  %i.cx = fcmp ugt double %i.ca, %i.cu
  %i.cy = fcmp ugt double %i.cu, %i.cd
  %i.cz = or i1 %i.cx, %i.cy
  %or.cond345.i = select i1 %or.cond343.i, i1 true, i1 %i.cz
  br i1 %or.cond345.i, label %inBoxf.exit239.thread.i, label %.sink.split.i

inBoxf.exit239.thread.i:                          ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 3 uses
  %i.db = load double, ptr %i.da, align 8         ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.dd = load double, ptr %i.dc, align 8         ; 3 uses
  %i.de = fcmp ugt double %i.bu, %i.db
  %i.df = fcmp ugt double %i.db, %i.bx
  %or.cond346.i = or i1 %i.de, %i.df
  %i.dg = fcmp ugt double %i.ca, %i.dd
  %i.dh = fcmp ugt double %i.dd, %i.cd
  %i.di = or i1 %i.dg, %i.dh
  %or.cond348.i = select i1 %or.cond346.i, i1 true, i1 %i.di
  br i1 %or.cond348.i, label %inBoxf.exit240.thread.i, label %bb.x

inBoxf.exit240.thread.i:                          ; preds = %inBoxf.exit239.thread.i
  %i.dj = call fastcc { double, double } @boxIntersectf(double %i.cg, double %i.ci, double %i.db, double %i.dd, ptr noundef nonnull %i.bn) ; 2 uses
  %i.dk = extractvalue { double, double } %i.dj, 0 ; 2 uses
  %i.dl = extractvalue { double, double } %i.dj, 1 ; 2 uses
  %i.dm = load ptr, ptr %i.as, align 8, !tbaa !56 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store double %i.dk, ptr %i.dn, align 8, !tbaa !15
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  store double %i.dl, ptr %.sroa.639.0..sroa_idx.i, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load <2 x double>, ptr %i.da, align 8
  %i.dq = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dl, i64 1 ; 2 uses
  %i.ds = fadd <2 x double> %i.dr, %i.dp
  %i.dt = fmul <2 x double> %i.ds, splat (double 5.000000e-01) ; 3 uses
  store <2 x double> %i.dt, ptr %i.do, align 8, !tbaa !15
  %i.du = load <2 x double>, ptr %i.da, align 8
  %i.dv = fadd <2 x double> %i.dt, %i.du
  %i.dw = fmul <2 x double> %i.dv, splat (double 5.000000e-01)
  store <2 x double> %i.dw, ptr %i.dm, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dy = fadd <2 x double> %i.dr, %i.dt
  %i.dz = fmul <2 x double> %i.dy, splat (double 5.000000e-01)
  store <2 x double> %i.dz, ptr %i.dx, align 8, !tbaa !15
  %i.ea = load i32, ptr %i.bh, align 4, !tbaa !54 ; 2 uses
  %.not224.i = icmp eq i32 %i.ea, 0
  br i1 %.not224.i, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %inBoxf.exit240.thread.i
  %i.eb = call i64 @arrowEndClip(ptr noundef nonnull %.01324, ptr noundef nonnull %i.dm, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i32 noundef %i.ea) #10
  %i.ec = add i64 %i.eb, 3
  br label %.thread.i

.lr.ph.i:                                         ; preds = %.preheader270.i, %bb.s
  %.1204272.i = phi i64 [ %i.eg, %bb.s ], [ 0, %.preheader270.i ] ; 3 uses
  %i.ed = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.1204272.i
  %i.ef = call fastcc i32 @splineIntersectf(ptr noundef %i.ee, ptr noundef nonnull %i.bn)
  %.not222.i = icmp eq i32 %i.ef, 0
  br i1 %.not222.i, label %bb.s, label %._crit_edge.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.eg = add i64 %.1204272.i, 3                  ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.co
  br i1 %i.eh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.s, %.lr.ph.i
  %.1204.lcssa.i = phi i64 [ %.1204272.i, %.lr.ph.i ], [ %i.eg, %bb.s ] ; 3 uses
  %i.ei = icmp eq i64 %.1204.lcssa.i, %i.co
  br i1 %i.ei, label %._crit_edge.i.._crit_edge.thread.i_crit_edge, label %bb.u

._crit_edge.i.._crit_edge.thread.i_crit_edge:     ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge, %.preheader270.i
  %3 = phi ptr [ %.pre, %._crit_edge.i.._crit_edge.thread.i_crit_edge ], [ %i.cf, %.preheader270.i ]
  %4 = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.co ; 2 uses
  %i.ek = load double, ptr %4, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.em = load double, ptr %i.el, align 8
  %i.en = load double, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ep = load double, ptr %i.eo, align 8
  %i.eq = call fastcc { double, double } @boxIntersectf(double %i.ek, double %i.em, double %i.en, double %i.ep, ptr noundef nonnull %i.bn) ; 2 uses
  %i.er = extractvalue { double, double } %i.eq, 0
  %i.es = extractvalue { double, double } %i.eq, 1
  store double %i.er, ptr %i.d, align 8, !tbaa !15
  store double %i.es, ptr %.sroa.430.0..sroa_idx.i, align 8, !tbaa !15
  br label %.thread.i

bb.u:                                             ; preds = %._crit_edge.i
  %i.et = load i32, ptr %i.bh, align 4, !tbaa !54 ; 2 uses
  %.not223.i = icmp eq i32 %i.et, 0
  br i1 %.not223.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.ev = call i64 @arrowEndClip(ptr noundef nonnull %.01324, ptr noundef %i.eu, i64 noundef 0, i64 noundef %.1204.lcssa.i, ptr noundef nonnull %1, i32 noundef %i.et) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2205.i = phi i64 [ %i.ev, %bb.v ], [ %.1204.lcssa.i, %bb.u ]
  %i.ew = add i64 %.2205.i, 3
  br label %.thread.i

.sink.split.i:                                    ; preds = %bb.q, %inBoxf.exit.i, %bb.o, %bb.n, %bb.m
  %.str.4.sink.i = phi ptr [ @.str.3, %inBoxf.exit.i ], [ @.str.3, %bb.o ], [ @.str.3, %bb.m ], [ @.str.3, %bb.n ], [ @.str.4, %bb.q ]
  %i.ex = call ptr @agnameof(ptr noundef %i.bg) #10
  %i.ey = load i32, ptr %.01324, align 8
  %i.ez = and i32 %i.ey, 3
  %i.fa = icmp eq i32 %i.ez, 2
  %i.fb = select i1 %i.fa, ptr %.01324, ptr %i.ay
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !50
  %i.fe = call ptr @agnameof(ptr noundef %i.fd) #10
  %i.ff = call ptr @agget(ptr noundef nonnull %.01324, ptr noundef nonnull @.str) #10
  call void (ptr, ...) @agwarningf(ptr noundef nonnull %.str.4.sink.i, ptr noundef %i.ex, ptr noundef %i.fe, ptr noundef %i.ff) #10
  %.pre.a = load i32, ptr %i.bh, align 4, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %inBoxf.exit239.thread.i, %bb.l
  %i.fg = phi i32 [ %.pre.a, %.sink.split.i ], [ %i.bj, %inBoxf.exit239.thread.i ], [ %i.bj, %bb.l ]
  %i.fh = add i64 %i.au, -1                       ; 2 uses
  %.not225.i = icmp eq i32 %i.fg, 0
  br i1 %.not225.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i64 16, i1 false), !tbaa.struct !16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.y, %bb.x, %bb.w, %bb.t, %bb.r, %inBoxf.exit240.thread.i
  %.6.i = phi i64 [ %i.fh, %bb.x ], [ %i.fh, %bb.y ], [ %i.ew, %bb.w ], [ %i.co, %bb.t ], [ %i.ec, %bb.r ], [ 3, %inBoxf.exit240.thread.i ] ; 7 uses
  br i1 %i.w, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %.thread.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i236257.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !30 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !30 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load double, ptr %i.fo, align 8         ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fr = load double, ptr %i.fq, align 8         ; 2 uses
  %i.fs = load double, ptr %i.fl, align 8, !tbaa !11 ; 4 uses
  %i.ft = fcmp ugt double %i.fs, %i.fp
  br i1 %i.ft, label %.sink.split366.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !12 ; 4 uses
  %i.fw = fcmp ugt double %i.fp, %i.fv
  br i1 %i.fw, label %.sink.split366.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !13 ; 4 uses
  %i.fz = fcmp ugt double %i.fy, %i.fr
  br i1 %i.fz, label %.sink.split366.i, label %inBoxf.exit245.i

inBoxf.exit245.i:                                 ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !14 ; 4 uses
  %i.gc = fcmp ugt double %i.fr, %i.gb
  br i1 %i.gc, label %.sink.split366.i, label %bb.ac

bb.ac:                                            ; preds = %inBoxf.exit245.i
  %i.gd = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.6.i ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8         ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load double, ptr %i.gg, align 8         ; 3 uses
  %i.gi = fcmp ugt double %i.fs, %i.gf
  %i.gj = fcmp ugt double %i.gf, %i.fv
  %or.cond357.i = or i1 %i.gi, %i.gj
  %i.gk = fcmp ugt double %i.fy, %i.gh
  %i.gl = fcmp ugt double %i.gh, %i.gb
  %i.gm = or i1 %i.gk, %i.gl
  %or.cond359.i = select i1 %or.cond357.i, i1 true, i1 %i.gm
  br i1 %or.cond359.i, label %.preheader269.i, label %bb.ad

.preheader269.i:                                  ; preds = %bb.ac
  %cond278.i = icmp eq i64 %.6.i, 0
  br i1 %cond278.i, label %._crit_edge281.i, label %.lr.ph280.i

bb.ad:                                            ; preds = %bb.ac
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !30 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load double, ptr %i.gp, align 8         ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gs = load double, ptr %i.gr, align 8         ; 2 uses
  %i.gt = fcmp ugt double %i.fs, %i.gq
  %i.gu = fcmp ugt double %i.gq, %i.fv
  %or.cond360.i = or i1 %i.gt, %i.gu
  %i.gv = fcmp ugt double %i.fy, %i.gs
  %i.gw = fcmp ugt double %i.gs, %i.gb
  %i.gx = or i1 %i.gv, %i.gw
  %or.cond362.i = select i1 %or.cond360.i, i1 true, i1 %i.gx
  br i1 %or.cond362.i, label %inBoxf.exit247.thread.i, label %.sink.split366.i

inBoxf.exit247.thread.i:                          ; preds = %bb.ad
  %i.gy = load i32, ptr %i.bh, align 4, !tbaa !54
  %.not231.i = icmp eq i32 %i.gy, 0
  br i1 %.not231.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %inBoxf.exit247.thread.i
  %i.gz = load double, ptr %i.d, align 8          ; 3 uses
  %i.ha = load double, ptr %.sroa.430.0..sroa_idx.i, align 8 ; 3 uses
  %i.hb = fcmp ugt double %i.fs, %i.gz
  %i.hc = fcmp ugt double %i.gz, %i.fv
  %or.cond363.i = or i1 %i.hb, %i.hc
  %i.hd = fcmp ugt double %i.fy, %i.ha
  %i.he = fcmp ugt double %i.ha, %i.gb
  %i.hf = or i1 %i.hd, %i.he
  %or.cond365.i = select i1 %or.cond363.i, i1 true, i1 %i.hf
  br i1 %or.cond365.i, label %inBoxf.exit248.thread.i, label %bb.aj

inBoxf.exit248.thread.i:                          ; preds = %bb.ae
  %i.hg = call fastcc { double, double } @boxIntersectf(double %i.gf, double %i.gh, double %i.gz, double %i.ha, ptr noundef nonnull %i.fl) ; 2 uses
  %i.hh = extractvalue { double, double } %i.hg, 0 ; 2 uses
  %i.hi = extractvalue { double, double } %i.hg, 1 ; 2 uses
  %i.hj = add i64 %.6.i, -3                       ; 4 uses
  %i.hk = load ptr, ptr %i.as, align 8, !tbaa !56 ; 3 uses
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.hj ; 2 uses
  store double %i.hh, ptr %i.hl, align 8, !tbaa !15
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store double %i.hi, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !15
  %i.hm = getelementptr [16 x i8], ptr %i.hk, i64 %.6.i ; 3 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 -16
  %i.ho = getelementptr i8, ptr %i.hm, i64 -32
  %i.hp = load <2 x double>, ptr %i.d, align 8
  %i.hq = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hi, i64 1 ; 2 uses
  %i.hs = fadd <2 x double> %i.hr, %i.hp
  %i.ht = fmul <2 x double> %i.hs, splat (double 5.000000e-01) ; 3 uses
  store <2 x double> %i.ht, ptr %i.hn, align 8, !tbaa !15
  %i.hu = load <2 x double>, ptr %i.d, align 8
  %i.hv = fadd <2 x double> %i.ht, %i.hu
  %i.hw = fmul <2 x double> %i.hv, splat (double 5.000000e-01)
  store <2 x double> %i.hw, ptr %i.hm, align 8, !tbaa !15
  %i.hx = fadd <2 x double> %i.hr, %i.ht
  %i.hy = fmul <2 x double> %i.hx, splat (double 5.000000e-01)
  store <2 x double> %i.hy, ptr %i.ho, align 8, !tbaa !15
  %i.hz = load i32, ptr %i.bi, align 8, !tbaa !58 ; 2 uses
  %.not232.i = icmp eq i32 %i.hz, 0
  br i1 %.not232.i, label %.thread264.i, label %bb.af

bb.af:                                            ; preds = %inBoxf.exit248.thread.i
  %i.ia = call i64 @arrowStartClip(ptr noundef nonnull %.01324, ptr noundef nonnull %i.hk, i64 noundef %i.hj, i64 noundef %i.hj, ptr noundef nonnull %1, i32 noundef %i.hz) #10
  br label %.thread264.i

.lr.ph280.i:                                      ; preds = %.preheader269.i, %bb.ag
  %.1279.i = phi i64 [ %i.ih, %bb.ag ], [ %.6.i, %.preheader269.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ib = load ptr, ptr %i.as, align 8, !tbaa !56 ; 4 uses
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %.1279.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i64 16, i1 false), !tbaa.struct !16
  %i.id = add i64 %.1279.i, -1                    ; 2 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !tbaa.struct !16
  %i.if = add i64 %.1279.i, -2                    ; 2 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i64 16, i1 false), !tbaa.struct !16
  %i.ih = add i64 %.1279.i, -3                    ; 6 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i64 16, i1 false), !tbaa.struct !16
  %i.ij = call fastcc i32 @splineIntersectf(ptr noundef nonnull %2, ptr noundef nonnull %i.fl)
  %.not227.i = icmp eq i32 %i.ij, 0
  br i1 %.not227.i, label %bb.ag, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph280.i
  %i.ik = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %.1279.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !16
  %i.im = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.id
end_hunk_0
