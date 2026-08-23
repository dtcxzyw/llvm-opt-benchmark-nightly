Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/lu?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @lu_decompose(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @new_array(i32 noundef %2, i32 noundef %2, double noundef 0.000000e+00) #10 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = sext i32 %2 to i64                       ; 6 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %.critedge.preheader.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %2, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #13 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.h = shl nuw nsw i64 %i.b, 2
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.1, i64 noundef %i.h) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.j, align 8, !tbaa !16
  %i.k = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) #13 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %.preheader138.lr.ph.split.us

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.n = shl nuw nsw i64 %i.b, 3
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.1, i64 noundef %i.n) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

.critedge.preheader.thread:                       ; preds = %bb.a
  %i.p = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !16
  %i.r = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  br label %.critedge125

.preheader138.lr.ph.split.us:                     ; preds = %bb.f
  %wide.trip.count164 = zext nneg i32 %2 to i64   ; 9 uses
  %i.s = add nsw i64 %wide.trip.count164, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count164, 1
  %i.t = icmp eq i64 %i.s, 0
  %unroll_iter = and i64 %wide.trip.count164, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod232 = trunc i32 %2 to i1
  br label %.preheader138.us

.preheader138.us:                                 ; preds = %bb.h, %.preheader138.lr.ph.split.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %bb.h ], [ 0, %.preheader138.lr.ph.split.us ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv161
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv161
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 3 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader138.us.new

.preheader138.us.new:                             ; preds = %.preheader138.us, %.preheader138.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader138.us.new ], [ 0, %.preheader138.us ] ; 4 uses
  %.0113140.us = phi double [ %i.ah, %.preheader138.us.new ], [ 0.000000e+00, %.preheader138.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader138.us.new ], [ 0, %.preheader138.us ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !19 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !19
  %i.ab = tail call nsz double @llvm.fabs.f64(double %i.z)
  %i.ac = tail call nsz double @llvm.maxnum.f64(double %.0113140.us, double %i.ab)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  store double %i.ae, ptr %i.af, align 8, !tbaa !19
  %i.ag = tail call nsz double @llvm.fabs.f64(double %i.ae)
  %i.ah = tail call nsz double @llvm.maxnum.f64(double %i.ac, double %i.ag) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader138.us.new, !llvm.loop !21

bb.h:                                             ; preds = %._crit_edge.us
  %i.ai = fdiv double 1.000000e+00, %.lcssa230
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv161
  store double %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv161
  %i.al = trunc nuw nsw i64 %indvars.iv161 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !23
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.critedge.preheader, label %.preheader138.us, !llvm.loop !24

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader138.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader138.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader138.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.0113140.us.epil.init = phi double [ 0.000000e+00, %.preheader138.us ], [ %i.ah, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.epil.init
  %i.an = load double, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  store double %i.an, ptr %i.ao, align 8, !tbaa !19
  %i.ap = tail call nsz double @llvm.fabs.f64(double %i.an)
  %i.aq = tail call nsz double @llvm.maxnum.f64(double %.0113140.us.epil.init, double %i.ap)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa230 = phi double [ %i.ah, %._crit_edge.us.unr-lcssa ], [ %i.aq, %.epil.preheader ] ; 2 uses
  %i.ar = fcmp ogt double %.lcssa230, 0.000000e+00
  br i1 %i.ar, label %bb.h, label %bb.i

.critedge.preheader:                              ; preds = %bb.h
  %i.as = add nsw i32 %2, -1                      ; 3 uses
  %.not123156 = icmp sgt i32 %2, 1
  br i1 %.not123156, label %.preheader.preheader, label %.critedge125

.preheader.preheader:                             ; preds = %.critedge.preheader
  %wide.trip.count186 = zext nneg i32 %i.as to i64
  %wide.trip.count171 = zext nneg i32 %2 to i64
  %wide.trip.count183 = zext nneg i32 %2 to i64   ; 2 uses
  %i.at = shl nuw nsw i64 %wide.trip.count164, 3  ; 2 uses
  %i.au = add nsw i64 %wide.trip.count164, -1
  br label %.preheader

bb.i:                                             ; preds = %._crit_edge.us
  tail call void @free(ptr noundef %i.k) #10
  tail call void @free_array(ptr noundef nonnull %i.a) #10
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !16
  br label %.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %i.av = phi ptr [ %i.e, %.preheader.preheader ], [ %i.cw, %.critedge ] ; 7 uses
  %i.aw = phi ptr [ %i.a, %.preheader.preheader ], [ %i.cx, %.critedge ] ; 6 uses
  %indvars.iv173 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next174, %.critedge ] ; 6 uses
  %indvars.iv166 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next167, %.critedge ] ; 18 uses
  %.0108158 = phi i32 [ 0, %.preheader.preheader ], [ %.2110.lcssa, %.critedge ] ; 2 uses
  %i.ax = xor i64 %indvars.iv166, -1
  %i.ay = add nsw i64 %i.ax, %wide.trip.count164  ; 3 uses
  %i.az = shl nuw nsw i64 %indvars.iv166, 3
  %3 = add nuw i64 %i.az, 8                       ; 2 uses
  %i.ba = icmp slt i64 %indvars.iv166, %i.b
  br i1 %i.ba, label %.lr.ph.preheader, label %bb.j

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bb = sub nsw i64 %wide.trip.count164, %indvars.iv166
  %xtraiter233 = and i64 %i.bb, 1
  %lcmp.mod234.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod234.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv166
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !23
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv166
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !19
  %i.bj = tail call double @llvm.fabs.f64(double %i.bi)
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.be
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !19
  %i.bm = fmul double %i.bj, %i.bl                ; 2 uses
  %i.bn = fcmp ogt double %i.bm, 0.000000e+00     ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv166 to i32
  %.2110.prol = select i1 %i.bn, i32 %i.bo, i32 %.0108158 ; 2 uses
  %.1107.prol = select i1 %i.bn, double %i.bm, double 0.000000e+00 ; 2 uses
  %indvars.iv.next169.prol = add nuw nsw i64 %indvars.iv166, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2110.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2110.prol, %.lr.ph.prol ]
  %.1107.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %.1107.prol, %.lr.ph.prol ]
  %indvars.iv168.unr = phi i64 [ %indvars.iv166, %.lr.ph.preheader ], [ %indvars.iv.next169.prol, %.lr.ph.prol ]
  %.0106145.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1107.prol, %.lr.ph.prol ]
  %.1109144.unr = phi i32 [ %.0108158, %.lr.ph.preheader ], [ %.2110.prol, %.lr.ph.prol ]
  %i.bp = icmp eq i64 %i.s, %indvars.iv166
  br i1 %i.bp, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.2110.lcssa = phi i32 [ %.2110.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2110.1, %.lr.ph ] ; 3 uses
  %.1107.lcssa = phi double [ %.1107.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1107.1, %.lr.ph ]
  %i.bq = fcmp ugt double %.1107.lcssa, 0.000000e+00
  br i1 %i.bq, label %bb.l, label %.thread

.thread:                                          ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #10
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv168 = phi i64 [ %indvars.iv.next169.1, %.lr.ph ], [ %indvars.iv168.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0106145 = phi double [ %.1107.1, %.lr.ph ], [ %.0106145.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.1109144 = phi i32 [ %.2110.1, %.lr.ph ], [ %.1109144.unr, %.lr.ph.prol.loopexit ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv168
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv166
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !19
  %i.by = tail call double @llvm.fabs.f64(double %i.bx)
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bt
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !19
  %i.cb = fmul double %i.by, %i.ca                ; 2 uses
  %i.cc = fcmp olt double %.0106145, %i.cb        ; 2 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv168 to i32
  %.2110 = select i1 %i.cc, i32 %i.cd, i32 %.1109144
  %.1107 = select i1 %i.cc, double %i.cb, double %.0106145 ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next169
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !23
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv166
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !19
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cg
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !19
  %i.co = fmul double %i.cl, %i.cn                ; 2 uses
  %i.cp = fcmp olt double %.1107, %i.co           ; 2 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.next169 to i32
  %.2110.1 = select i1 %i.cp, i32 %i.cq, i32 %.2110 ; 2 uses
  %.1107.1 = select i1 %i.cp, double %i.co, double %.1107 ; 2 uses
  %indvars.iv.next169.1 = add nuw nsw i64 %indvars.iv168, 2 ; 2 uses
  %exitcond172.not.1 = icmp eq i64 %indvars.iv.next169.1, %wide.trip.count171
  br i1 %exitcond172.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.j:                                             ; preds = %.preheader
  tail call void @free(ptr noundef %i.k) #10
  %.not.i132 = icmp eq ptr %i.aw, null
  br i1 %.not.i132, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  tail call void @free_array(ptr noundef nonnull %i.aw) #10
  %.pre188 = load ptr, ptr %i.j, align 8, !tbaa !16
  br label %.sink.split

bb.l:                                             ; preds = %._crit_edge
  %i.cr = zext i32 %.2110.lcssa to i64
  %.not122 = icmp eq i64 %indvars.iv166, %i.cr
  br i1 %.not122, label %.lr.ph150.us.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv166 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.cs, align 4
  %i.ct = sext i32 %.2110.lcssa to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !23
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !23
  store i32 %.sroa.0.0.copyload, ptr %i.cu, align 4
  %.pre189 = load ptr, ptr %0, align 8, !tbaa !8
  %.pre190 = load ptr, ptr %i.j, align 8, !tbaa !16
  br label %.lr.ph150.us.preheader

.lr.ph150.us.preheader:                           ; preds = %bb.l, %bb.m
  %i.cw = phi ptr [ %.pre190, %bb.m ], [ %i.av, %bb.l ] ; 4 uses
  %i.cx = phi ptr [ %.pre189, %bb.m ], [ %i.aw, %bb.l ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv166
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !23
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !17 ; 7 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv166
  %i.de = load double, ptr %i.dd, align 8, !tbaa !19
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %scevgep218 = getelementptr i8, ptr %i.dc, i64 %3
  %scevgep219 = getelementptr i8, ptr %i.dc, i64 %i.at
  %min.iters.check = icmp ult i64 %i.ay, 4
  %n.vec = and i64 %i.ay, -4                      ; 3 uses
  %i.df = add i64 %indvars.iv173, %n.vec
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br label %.lr.ph150.us

.lr.ph150.us:                                     ; preds = %.lr.ph150.us.preheader, %._crit_edge151.us
  %indvars.iv180 = phi i64 [ %indvars.iv173, %.lr.ph150.us.preheader ], [ %indvars.iv.next181, %._crit_edge151.us ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv180
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !23
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !17 ; 7 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv166 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !19
  %i.dn = fdiv double %i.dm, %i.de                ; 2 uses
  store double %i.dn, ptr %i.dl, align 8, !tbaa !19
  %i.do = fneg double %i.dn                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph150.us
  %scevgep = getelementptr nuw i8, ptr %i.dk, i64 %3
  %scevgep217 = getelementptr i8, ptr %i.dk, i64 %i.at
  %bound0 = icmp ult ptr %scevgep, %scevgep219
  %bound1 = icmp ult ptr %scevgep218, %scevgep217
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.do, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = add nuw i64 %indvars.iv173, %index      ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x double>, ptr %i.dq, align 8, !tbaa !19, !alias.scope !26
  %wide.load220 = load <2 x double>, ptr %i.dr, align 8, !tbaa !19, !alias.scope !26
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dp ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load221 = load <2 x double>, ptr %i.ds, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %wide.load222 = load <2 x double>, ptr %i.dt, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load221)
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load220, <2 x double> %wide.load222)
  store <2 x double> %i.du, ptr %i.ds, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge151.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph150.us, %middle.block
  %indvars.iv175.ph = phi i64 [ %indvars.iv173, %vector.memcheck ], [ %indvars.iv173, %.lr.ph150.us ], [ %i.df, %middle.block ] ; 6 uses
  %i.dx = sub i64 %wide.trip.count164, %indvars.iv175.ph
  %xtraiter235 = and i64 %i.dx, 1
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv175.ph
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !19
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv175.ph ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !19
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dz, double %i.eb)
  store double %i.ec, ptr %i.ea, align 8, !tbaa !19
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %scalar.ph.preheader ], [ %indvars.iv.next176.prol, %scalar.ph.prol ]
  %i.ed = icmp eq i64 %indvars.iv175.ph, %i.au
  br i1 %i.ed, label %._crit_edge151.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.1, %scalar.ph ], [ %indvars.iv175.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv175
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !19
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv175 ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !19
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.do, double %i.ef, double %i.eh)
  store double %i.ei, ptr %i.eg, align 8, !tbaa !19
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next176
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next176 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !19
  %i.en = tail call double @llvm.fmuladd.f64(double %i.do, double %i.ek, double %i.em)
  store double %i.en, ptr %i.el, align 8, !tbaa !19
  %indvars.iv.next176.1 = add nuw nsw i64 %indvars.iv175, 2 ; 2 uses
  %exitcond179.not.1 = icmp eq i64 %indvars.iv.next176.1, %wide.trip.count183
  br i1 %exitcond179.not.1, label %._crit_edge151.us, label %scalar.ph, !llvm.loop !34

._crit_edge151.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %.critedge, label %.lr.ph150.us, !llvm.loop !35

.critedge:                                        ; preds = %._crit_edge151.us
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond187.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count186
  br i1 %exitcond187.not, label %.critedge125, label %.preheader, !llvm.loop !36

.critedge125:                                     ; preds = %.critedge, %.critedge.preheader.thread, %.critedge.preheader
  %i.eo = phi i32 [ -1, %.critedge.preheader.thread ], [ %i.as, %.critedge.preheader ], [ %i.as, %.critedge ]
  %i.ep = phi ptr [ %i.q, %.critedge.preheader.thread ], [ %i.j, %.critedge.preheader ], [ %i.j, %.critedge ]
  %i.eq = phi ptr [ %i.r, %.critedge.preheader.thread ], [ %i.k, %.critedge.preheader ], [ %i.k, %.critedge ]
  %i.er = phi ptr [ %i.p, %.critedge.preheader.thread ], [ %i.e, %.critedge.preheader ], [ %i.cw, %.critedge ]
  %i.es = phi ptr [ %i.a, %.critedge.preheader.thread ], [ %i.a, %.critedge.preheader ], [ %i.cx, %.critedge ] ; 2 uses
  tail call void @free(ptr noundef %i.eq) #10
  %i.et = sext i32 %i.eo to i64                   ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !17
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.et
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !19
  %i.fb = fcmp oeq double %i.fa, 0.000000e+00
  br i1 %i.fb, label %lu_free.exit135, label %bb.n

lu_free.exit135:                                  ; preds = %.critedge125
  tail call void @free_array(ptr noundef nonnull %i.es) #10
  %i.fc = load ptr, ptr %i.ep, align 8, !tbaa !16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %lu_free.exit135, %bb.i
  %.pre.sink = phi ptr [ %.pre, %bb.i ], [ %i.fc, %lu_free.exit135 ], [ %.pre188, %bb.k ], [ %i.av, %bb.j ]
  tail call void @free(ptr noundef %.pre.sink) #10
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %.critedge125
  %.6 = phi i32 [ 1, %.critedge125 ], [ 0, %.sink.split ]
  ret i32 %.6
}

declare ptr @new_array(i32 noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @lu_free(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free_array(ptr noundef nonnull %i.b) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.d) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @lu_solve(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader48.lr.ph, label %._crit_edge60

.preheader48.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %wide.trip.count66 = zext nneg i32 %3 to i64
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %._crit_edge
  %indvars.iv63 = phi i64 [ 0, %.preheader48.lr.ph ], [ %indvars.iv.next64, %._crit_edge ] ; 7 uses
  %.not = icmp eq i64 %indvars.iv63, 0
  br i1 %.not, label %.preheader48.._crit_edge_crit_edge, label %.lr.ph

.preheader48.._crit_edge_crit_edge:               ; preds = %.preheader48
  %.pre = load i32, ptr %i.c, align 4, !tbaa !23
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader48
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv63
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23   ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 5 uses
  %xtraiter = and i64 %indvars.iv63, 3            ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv63, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv63, 9223372036854775804
  br label %bb.c

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.n = zext nneg i32 %3 to i64
  %i.o = zext nneg i32 %3 to i64
  br label %.preheader

end_hunk_0
