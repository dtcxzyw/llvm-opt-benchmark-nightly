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
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = sext i32 %2 to i64                       ; 6 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %.critedge.preheader.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %2, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4) #13 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.h = shl nuw nsw i64 %i.b, 2
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.1, i64 noundef %i.h) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.j, align 8, !tbaa !14
  %i.k = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 8) #13 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %.preheader138.lr.ph.split.us

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !32
  %i.n = shl nuw nsw i64 %i.b, 3
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.1, i64 noundef %i.n) #11 ; 0 uses
  tail call fastcc void @graphviz_exit() #12
  unreachable

.critedge.preheader.thread:                       ; preds = %bb.a
  %i.p = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !14
  %i.r = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #13
  br label %.critedge125

.preheader138.lr.ph.split.us:                     ; preds = %bb.f
  %wide.trip.count164 = zext nneg i32 %2 to i64   ; 9 uses
  %i.s = add nsw i64 %wide.trip.count164, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count164, 1
  %i.t = icmp eq i64 %i.s, 0
  %unroll_iter = and i64 %wide.trip.count164, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod233 = trunc i32 %2 to i1
  br label %.preheader138.us

.preheader138.us:                                 ; preds = %bb.h, %.preheader138.lr.ph.split.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %bb.h ], [ 0, %.preheader138.lr.ph.split.us ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv161
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv161
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 3 uses
  br i1 %i.t, label %.epil.preheader, label %.preheader138.us.new

.preheader138.us.new:                             ; preds = %.preheader138.us, %.preheader138.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader138.us.new ], [ 0, %.preheader138.us ] ; 4 uses
  %.0113140.us = phi double [ %i.ah, %.preheader138.us.new ], [ 0.000000e+00, %.preheader138.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader138.us.new ], [ 0, %.preheader138.us ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !18 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !18
  %i.ab = tail call nsz double @llvm.fabs.f64(double %i.z)
  %i.ac = tail call nsz double @llvm.maxnum.f64(double %.0113140.us, double %i.ab)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  store double %i.ae, ptr %i.af, align 8, !tbaa !18
  %i.ag = tail call nsz double @llvm.fabs.f64(double %i.ae)
  %i.ah = tail call nsz double @llvm.maxnum.f64(double %i.ac, double %i.ag) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader138.us.new, !llvm.loop !21

bb.h:                                             ; preds = %._crit_edge.us
  %i.ai = fdiv double 1.000000e+00, %.lcssa231
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv161
  store double %i.ai, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv161
  %i.al = trunc nuw nsw i64 %indvars.iv161 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !20
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.critedge.preheader, label %.preheader138.us, !llvm.loop !22

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader138.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader138.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader138.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.0113140.us.epil.init = phi double [ 0.000000e+00, %.preheader138.us ], [ %i.ah, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.epil.init
  %i.an = load double, ptr %i.am, align 8, !tbaa !18 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  store double %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = tail call nsz double @llvm.fabs.f64(double %i.an)
  %i.aq = tail call nsz double @llvm.maxnum.f64(double %.0113140.us.epil.init, double %i.ap)
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa231 = phi double [ %i.ah, %._crit_edge.us.unr-lcssa ], [ %i.aq, %.epil.preheader ] ; 2 uses
  %i.ar = fcmp ogt double %.lcssa231, 0.000000e+00
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
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %i.av = phi ptr [ %i.e, %.preheader.preheader ], [ %i.cv, %.critedge ] ; 7 uses
  %i.aw = phi ptr [ %i.a, %.preheader.preheader ], [ %i.cw, %.critedge ] ; 6 uses
  %indvars.iv173 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next174, %.critedge ] ; 6 uses
  %indvars.iv166.a = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next167, %.critedge ] ; 18 uses
  %.0108158 = phi i32 [ 0, %.preheader.preheader ], [ %.2110.lcssa, %.critedge ] ; 2 uses
  %i.ax = shl nuw nsw i64 %indvars.iv166.a, 3
  %i.ay = add nuw i64 %i.ax, 8                    ; 2 uses
  %i.az = icmp slt i64 %indvars.iv166.a, %i.b
  br i1 %i.az, label %.lr.ph.preheader, label %bb.j

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ba = sub nsw i64 %wide.trip.count164, %indvars.iv166.a
  %xtraiter234.a = and i64 %i.ba, 1
  %lcmp.mod235.not.a = icmp eq i64 %xtraiter234.a, 0
  br i1 %lcmp.mod235.not.a, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv166.a
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv166.a
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !18
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bd
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = fmul double %i.bi, %i.bk                ; 2 uses
  %i.bm = fcmp ogt double %i.bl, 0.000000e+00     ; 2 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv166.a to i32
  %.2110.prol = select i1 %i.bm, i32 %i.bn, i32 %.0108158 ; 2 uses
  %.1107.prol = select i1 %i.bm, double %i.bl, double 0.000000e+00 ; 2 uses
  %indvars.iv.next169.prol = add nuw nsw i64 %indvars.iv166.a, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.2110.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %.2110.prol, %.lr.ph.prol ]
  %.1107.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %.1107.prol, %.lr.ph.prol ]
  %indvars.iv168.unr = phi i64 [ %indvars.iv166.a, %.lr.ph.preheader ], [ %indvars.iv.next169.prol, %.lr.ph.prol ]
  %.0106145.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1107.prol, %.lr.ph.prol ]
  %.1109144.unr = phi i32 [ %.0108158, %.lr.ph.preheader ], [ %.2110.prol, %.lr.ph.prol ]
  %i.bo = icmp eq i64 %i.s, %indvars.iv166.a
  br i1 %i.bo, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.2110.lcssa = phi i32 [ %.2110.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.2110.1, %.lr.ph ] ; 3 uses
  %.1107.lcssa = phi double [ %.1107.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1107.1, %.lr.ph ]
  %i.bp = fcmp ugt double %.1107.lcssa, 0.000000e+00
  br i1 %i.bp, label %bb.l, label %.thread

.thread:                                          ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #10
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv168 = phi i64 [ %indvars.iv.next169.1, %.lr.ph ], [ %indvars.iv168.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0106145 = phi double [ %.1107.1, %.lr.ph ], [ %.0106145.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.1109144 = phi i32 [ %.2110.1, %.lr.ph ], [ %.1109144.unr, %.lr.ph.prol.loopexit ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv168
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !20
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !16
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv166.a
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !18
  %i.bx = tail call double @llvm.fabs.f64(double %i.bw)
  %i.by = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bs
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = fmul double %i.bx, %i.bz                ; 2 uses
  %i.cb = fcmp olt double %.0106145, %i.ca        ; 2 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv168 to i32
  %.2110 = select i1 %i.cb, i32 %i.cc, i32 %.1109144
  %.1107 = select i1 %i.cb, double %i.ca, double %.0106145 ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next169
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !20
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !16
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv166.a
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !18
  %i.ck = tail call double @llvm.fabs.f64(double %i.cj)
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.cf
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !18
  %i.cn = fmul double %i.ck, %i.cm                ; 2 uses
  %i.co = fcmp olt double %.1107, %i.cn           ; 2 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv.next169 to i32
  %.2110.1 = select i1 %i.co, i32 %i.cp, i32 %.2110 ; 2 uses
  %.1107.1 = select i1 %i.co, double %i.cn, double %.1107 ; 2 uses
  %indvars.iv.next169.1 = add nuw nsw i64 %indvars.iv168, 2 ; 2 uses
  %exitcond172.not.1 = icmp eq i64 %indvars.iv.next169.1, %wide.trip.count171
  br i1 %exitcond172.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !23

bb.j:                                             ; preds = %.preheader
  tail call void @free(ptr noundef %i.k) #10
  %.not.i132 = icmp eq ptr %i.aw, null
  br i1 %.not.i132, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  tail call void @free_array(ptr noundef nonnull %i.aw) #10
  %.pre188.a = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %.sink.split

bb.l:                                             ; preds = %._crit_edge
  %i.cq = zext i32 %.2110.lcssa to i64
  %.not122 = icmp eq i64 %indvars.iv166.a, %i.cq
  br i1 %.not122, label %.lr.ph150.us.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv166.a ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.cr, align 4
  %i.cs = sext i32 %.2110.lcssa to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !20
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !20
  store i32 %.sroa.0.0.copyload, ptr %i.ct, align 4
  %.pre189 = load ptr, ptr %0, align 8, !tbaa !13
  %.pre190 = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %.lr.ph150.us.preheader

.lr.ph150.us.preheader:                           ; preds = %bb.l, %bb.m
  %i.cv = phi ptr [ %.pre190, %bb.m ], [ %i.av, %bb.l ] ; 4 uses
  %i.cw = phi ptr [ %.pre189, %bb.m ], [ %i.aw, %bb.l ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv166.a
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !20
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !16 ; 7 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv166.a
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166.a, 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.db, i64 %i.at
  %scevgep220 = getelementptr i8, ptr %i.db, i64 %i.ay
  %i.de = xor i64 %indvars.iv166.a, -1
  %i.df = add nsw i64 %i.de, %wide.trip.count164  ; 3 uses
  %min.iters.check = icmp ult i64 %i.df, 4
  %n.vec = and i64 %i.df, -4                      ; 3 uses
  %i.dg = add i64 %indvars.iv173, %n.vec
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br label %.lr.ph150.us

.lr.ph150.us:                                     ; preds = %.lr.ph150.us.preheader, %._crit_edge151.us
  %indvars.iv180 = phi i64 [ %indvars.iv173, %.lr.ph150.us.preheader ], [ %indvars.iv.next181, %._crit_edge151.us ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv180
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !16 ; 7 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv166.a ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !18
  %i.do = fdiv double %i.dn, %i.dd                ; 2 uses
  store double %i.do, ptr %i.dm, align 8, !tbaa !18
  %i.dp = fneg double %i.do                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph150.us
  %i.dq = getelementptr nuw i8, ptr %i.dl, i64 %i.ay
  %i.dr = getelementptr i8, ptr %i.dl, i64 %i.at
  %bound0 = icmp ult ptr %i.dq, %scevgep
  %bound1 = icmp ult ptr %scevgep220, %i.dr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dp, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = add nuw i64 %indvars.iv173, %index      ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <2 x double>, ptr %i.dt, align 8, !tbaa !18, !alias.scope !33
  %wide.load221.a = load <2 x double>, ptr %i.du, align 8, !tbaa !18, !alias.scope !33
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ds ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load222 = load <2 x double>, ptr %i.dv, align 8, !tbaa !18, !alias.scope !34, !noalias !33
  %wide.load223 = load <2 x double>, ptr %i.dw, align 8, !tbaa !18, !alias.scope !34, !noalias !33
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load222)
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load221.a, <2 x double> %wide.load223)
  store <2 x double> %i.dx, ptr %i.dv, align 8, !tbaa !18, !alias.scope !34, !noalias !33
  store <2 x double> %i.dy, ptr %i.dw, align 8, !tbaa !18, !alias.scope !34, !noalias !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge151.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph150.us, %middle.block
  %indvars.iv175.ph = phi i64 [ %indvars.iv173, %vector.memcheck ], [ %indvars.iv173, %.lr.ph150.us ], [ %i.dg, %middle.block ] ; 6 uses
  %i.ea = sub i64 %wide.trip.count164, %indvars.iv175.ph
  %xtraiter236 = and i64 %i.ea, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv175.ph
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv175.ph ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !18
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.ec, double %i.ee)
  store double %i.ef, ptr %i.ed, align 8, !tbaa !18
  %indvars.iv.next176.prol = add nuw nsw i64 %indvars.iv175.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv175.unr = phi i64 [ %indvars.iv175.ph, %scalar.ph.preheader ], [ %indvars.iv.next176.prol, %scalar.ph.prol ]
  %i.eg = icmp eq i64 %indvars.iv175.ph, %i.au
  br i1 %i.eg, label %._crit_edge151.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176.1, %scalar.ph ], [ %indvars.iv175.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv175
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv175 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !18
  %i.el = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.ei, double %i.ek)
  store double %i.el, ptr %i.ej, align 8, !tbaa !18
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next176
  %i.en = load double, ptr %i.em, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next176 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !18
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.en, double %i.ep)
  store double %i.eq, ptr %i.eo, align 8, !tbaa !18
  %indvars.iv.next176.1 = add nuw nsw i64 %indvars.iv175, 2 ; 2 uses
  %exitcond179.not.1 = icmp eq i64 %indvars.iv.next176.1, %wide.trip.count183
  br i1 %exitcond179.not.1, label %._crit_edge151.us, label %scalar.ph, !llvm.loop !28

._crit_edge151.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %.critedge, label %.lr.ph150.us, !llvm.loop !29

.critedge:                                        ; preds = %._crit_edge151.us
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond187.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count186
  br i1 %exitcond187.not, label %.critedge125, label %.preheader, !llvm.loop !30

.critedge125:                                     ; preds = %.critedge, %.critedge.preheader.thread, %.critedge.preheader
  %i.er = phi i32 [ -1, %.critedge.preheader.thread ], [ %i.as, %.critedge.preheader ], [ %i.as, %.critedge ]
  %i.es = phi ptr [ %i.q, %.critedge.preheader.thread ], [ %i.j, %.critedge.preheader ], [ %i.j, %.critedge ]
  %i.et = phi ptr [ %i.r, %.critedge.preheader.thread ], [ %i.k, %.critedge.preheader ], [ %i.k, %.critedge ]
  %i.eu = phi ptr [ %i.p, %.critedge.preheader.thread ], [ %i.e, %.critedge.preheader ], [ %i.cv, %.critedge ]
  %i.ev = phi ptr [ %i.a, %.critedge.preheader.thread ], [ %i.a, %.critedge.preheader ], [ %i.cw, %.critedge ] ; 2 uses
  tail call void @free(ptr noundef %i.et) #10
  %i.ew = sext i32 %i.er to i64                   ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !20
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !16
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.ew
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !18
  %i.fe = fcmp oeq double %i.fd, 0.000000e+00
  br i1 %i.fe, label %lu_free.exit135, label %bb.n

lu_free.exit135:                                  ; preds = %.critedge125
  tail call void @free_array(ptr noundef nonnull %i.ev) #10
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %lu_free.exit135, %bb.i
  %.pre.sink = phi ptr [ %.pre, %bb.i ], [ %i.ff, %lu_free.exit135 ], [ %.pre188.a, %bb.k ], [ %i.av, %bb.j ]
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free_array(ptr noundef nonnull %i.b) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %wide.trip.count66 = zext nneg i32 %3 to i64
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %._crit_edge
  %indvars.iv63 = phi i64 [ 0, %.preheader48.lr.ph ], [ %indvars.iv.next64, %._crit_edge ] ; 7 uses
  %.not = icmp eq i64 %indvars.iv63, 0
  br i1 %.not, label %.preheader48.._crit_edge_crit_edge, label %.lr.ph

.preheader48.._crit_edge_crit_edge:               ; preds = %.preheader48
  %.pre = load i32, ptr %i.c, align 4, !tbaa !20
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader48
  %i.d = load ptr, ptr %0, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv63
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20   ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 5 uses
  %xtraiter = and i64 %indvars.iv63, 3            ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv63, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %indvars.iv63, 9223372036854775804
  br label %bb.c

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.n = zext nneg i32 %3 to i64
  %i.o = zext nneg i32 %3 to i64
  br label %.preheader

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.04449.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod83 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod83)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.04449.epil = phi double [ %.04449.epil.init, %.epil.preheader ], [ %i.t, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = tail call double @llvm.fmuladd.f64(double %i.q, double %i.s, double %.04449.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.preheader48.._crit_edge_crit_edge
  %i.u = phi i32 [ %.pre, %.preheader48.._crit_edge_crit_edge ], [ %i.f, %bb.b ], [ %i.f, %._crit_edge.loopexit.unr-lcssa ]
  %.044.lcssa = phi double [ 0.000000e+00, %.preheader48.._crit_edge_crit_edge ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ], [ %i.t, %bb.b ]
  %i.v = icmp eq i32 %i.u, %2
  %i.w = uitofp i1 %i.v to double
  %i.x = fsub double %i.w, %.044.lcssa
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv63
  store double %i.x, ptr %i.y, align 8, !tbaa !18
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %.preheader.lr.ph, label %.preheader48, !llvm.loop !38

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %.04449 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.as, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.aa = load double, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ac, double %.04449)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !18
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ah, double %i.ad)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.am, double %i.ai)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !18
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.an) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !39

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge55
  %indvars.iv68.a = phi i64 [ %i.n, %.preheader.lr.ph ], [ %indvars.iv.next69.a, %._crit_edge55 ] ; 4 uses
  %indvars.iv.next69.a = add nsw i64 %indvars.iv68.a, -1 ; 4 uses
  %i.at = icmp slt i64 %indvars.iv68.a, %i.o
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next69.a
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  br i1 %i.at, label %.lr.ph54, label %._crit_edge55

._crit_edge60:                                    ; preds = %._crit_edge55, %bb.a
end_hunk_0
