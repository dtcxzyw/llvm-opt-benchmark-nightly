inline.NumInlined: 7
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %union.anon, ptr, double }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.anon.0 = type { %union.anon.1, ptr, double }
%union.anon.1 = type { %struct.list_t_ }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [52 x i8] c"The gv file contains no or improper 2D coordinates\0A\00", align 1
@Verbose = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cos = %f, nz2 = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"The edge conflict graph has %d nodes and %zu edges\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"e,\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"s,\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%lf,%lf\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @edge_distinct_coloring(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.anon, align 8               ; 33 uses
  %8 = alloca %struct.anon.0, align 8             ; 33 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca double, align 8                   ; 8 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 8 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !8
  %i.k = fdiv double %3, 1.800000e+02
  %i.l = fmul double %i.k, 3.141590e+00
  %i.m = tail call double @cos(double noundef %i.l) #11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr null, ptr %i.g, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store ptr null, ptr %i.i, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  %i.n = call ptr @SparseMatrix_import_dot(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %i.e, i32 noundef 1) #11 ; 4 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !8
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.q = call i64 @fwrite(ptr nonnull @.str, i64 51, i64 1, ptr %i.p) #12 ; 0 uses
  br label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16   ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !22   ; 5 uses
  %.not151 = icmp eq i64 %i.w, 0
  br i1 %.not151, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %i.w, 1
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.w, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.093118.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.097117.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod218 = trunc i64 %i.w to i1
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.093118.epil.init
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23   ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.093118.epil.init ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !23
  %.not110.epil = icmp eq i32 %i.z, %i.ab
  br i1 %.not110.epil, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.epil.preheader
  %i.ac = sext i32 %.097117.epil.init to i64      ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ac
  store i32 %i.z, ptr %i.ad, align 4, !tbaa !23
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !23
  %i.af = add nsw i32 %.097117.epil.init, 1
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ac
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %.lr.ph.epil.preheader, %bb.c
  %.097.lcssa = phi i32 [ 0, %bb.c ], [ %.198.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %bb.d ], [ %.097117.epil.init, %.lr.ph.epil.preheader ] ; 9 uses
  %i.ah = load i8, ptr @Verbose, align 1, !tbaa !24
  %.not103 = icmp eq i8 %i.ah, 0
  br i1 %.not103, label %bb.i, label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %.093118 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.az, %bb.g ] ; 4 uses
  %.097117 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.198.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.093118
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.093118 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23
  %.not110 = icmp eq i32 %i.aj, %i.al
  br i1 %.not110, label %.lr.ph.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = sext i32 %.097117 to i64                ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.am
  store i32 %i.aj, ptr %i.an, align 4, !tbaa !23
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !23
  %i.ap = add nsw i32 %.097117, 1
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.am
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !23
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.e
  %.198 = phi i32 [ %i.ap, %bb.e ], [ %.097117, %.lr.ph ] ; 3 uses
  %9 = or disjoint i64 %.093118, 1                ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %9
  %i.ar = load i32, ptr %10, align 4, !tbaa !23   ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %9 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %.not110.1 = icmp eq i32 %i.ar, %i.at
  br i1 %.not110.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.1
  %i.au = sext i32 %.198 to i64                   ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.au
  store i32 %i.ar, ptr %i.av, align 4, !tbaa !23
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !23
  %i.ax = add nsw i32 %.198, 1
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.au
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %.198.1 = phi i32 [ %i.ax, %bb.f ], [ %.198, %.lr.ph.1 ] ; 3 uses
  %i.az = add nuw i64 %.093118, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !25

bb.h:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ba, ptr noundef nonnull @.str.1, double noundef %i.m, i32 noundef %.097.lcssa) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.bc = call ptr @SparseMatrix_new(i32 noundef %.097.lcssa, i32 noundef %.097.lcssa, i64 noundef 1, i32 noundef 1, i32 noundef 1) #11 ; 5 uses
  %i.bd = call i32 @Import_dot_splines(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #11
  %.not104 = icmp eq i32 %i.bd, 0
  br i1 %.not104, label %.preheader111, label %bb.m

.preheader111:                                    ; preds = %bb.i
  %i.be = icmp sgt i32 %.097.lcssa, 0
  br i1 %i.be, label %.lr.ph139, label %.loopexit112

.lr.ph139:                                        ; preds = %.preheader111
  %i.bf = icmp eq i32 %5, 0
  %i.bg = zext nneg i32 %.097.lcssa to i64        ; 2 uses
  %wide.trip.count187 = zext nneg i32 %.097.lcssa to i64 ; 4 uses
  br i1 %i.bf, label %.lr.ph139.split.us, label %.lr.ph139.split

.lr.ph139.split.us:                               ; preds = %.lr.ph139, %.loopexit.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.loopexit.us ], [ 0, %.lr.ph139 ] ; 4 uses
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %.loopexit.us ], [ 1, %.lr.ph139 ] ; 2 uses
  %.3137.us = phi ptr [ %.4.lcssa.us, %.loopexit.us ], [ %i.bc, %.lr.ph139 ] ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 3 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next185, %i.bg
  br i1 %i.bh, label %.lr.ph135.us, label %.loopexit.us

bb.j:                                             ; preds = %.lr.ph135.us, %bb.l
  %indvars.iv179 = phi i64 [ %indvars.iv177, %.lr.ph135.us ], [ %indvars.iv.next180, %bb.l ] ; 4 uses
  %.4133.us141 = phi ptr [ %.3137.us, %.lr.ph135.us ], [ %.5.us143, %bb.l ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv179
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv179
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !23
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !8   ; 4 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.cg
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.ci
  %i.bp = shl nsw i32 %i.bj, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = shl nsw i32 %i.bl, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bt
  %i.bv = call double @intersection_angle(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef %i.br, ptr noundef %i.bu) #11 ; 3 uses
  %i.bw = fcmp oge double %i.bv, -1.000000e+00
  %i.bx = call double @llvm.fabs.f64(double %i.bv)
  %unswitched.select.us = select i1 %i.bw, double %i.bx, double %i.bv ; 2 uses
  store double %unswitched.select.us, ptr %i.f, align 8, !tbaa !27
  %i.by = fcmp ogt double %unswitched.select.us, %i.m
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = trunc nuw nsw i64 %indvars.iv179 to i32
  %i.ca = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %.4133.us141, i32 noundef %i.cj, i32 noundef %i.bz, ptr noundef nonnull %i.f, i32 noundef 1) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.5.us143 = phi ptr [ %i.ca, %bb.k ], [ %.4133.us141, %bb.j ] ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count187
  br i1 %exitcond183.not, label %.loopexit.us, label %bb.j, !llvm.loop !29

.loopexit.us:                                     ; preds = %bb.l, %.lr.ph139.split.us
  %.4.lcssa.us = phi ptr [ %.3137.us, %.lr.ph139.split.us ], [ %.5.us143, %bb.l ] ; 2 uses
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %.loopexit112, label %.lr.ph139.split.us, !llvm.loop !30

.lr.ph135.us:                                     ; preds = %.lr.ph139.split.us
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv184
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv184
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.cf = shl nsw i32 %i.ce, 1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i32 %i.cc, 1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = trunc nuw nsw i64 %indvars.iv184 to i32
  br label %bb.j

bb.m:                                             ; preds = %bb.i
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !27
  %i.ck = icmp sgt i32 %.097.lcssa, 0
  br i1 %i.ck, label %.lr.ph130, label %.loopexit112

.lr.ph130:                                        ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.cp = icmp eq i32 %5, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.cs = zext nneg i32 %.097.lcssa to i64
  %wide.trip.count163 = zext nneg i32 %.097.lcssa to i64 ; 2 uses
  br label %bb.n

.loopexit115:                                     ; preds = %bb.aw, %bb.n
  %.195.lcssa = phi ptr [ %.094127, %bb.n ], [ %.2, %bb.aw ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %.loopexit112, label %bb.n, !llvm.loop !31

bb.n:                                             ; preds = %.lr.ph130, %.loopexit115
  %indvars.iv160 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next161, %.loopexit115 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph130 ], [ %indvars.iv.next, %.loopexit115 ] ; 2 uses
  %.094127 = phi ptr [ %i.bc, %.lr.ph130 ], [ %.195.lcssa, %.loopexit115 ] ; 2 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 3 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next161, %i.cs
  br i1 %i.ct, label %.lr.ph125, label %.loopexit115

.lr.ph125:                                        ; preds = %bb.n
  %i.cu = trunc nuw nsw i64 %indvars.iv160 to i32
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph125, %bb.aw
  %indvars.iv156 = phi i64 [ %indvars.iv, %.lr.ph125 ], [ %indvars.iv.next157, %bb.aw ] ; 3 uses
  %.195123 = phi ptr [ %.094127, %.lr.ph125 ], [ %.2, %bb.aw ] ; 2 uses
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv160
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !32 ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv156
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %.critedge.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(1) @.str.3) #14 ; 2 uses
  %.not124.i = icmp ne ptr %i.da, null            ; 3 uses
  br i1 %.not124.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  br label %.lr.ph.i

bb.r:                                             ; preds = %bb.p
  %i.dc = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(1) @.str.4) #14 ; 2 uses
  %.not125.i = icmp eq ptr %i.dc, null
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %spec.select.i = select i1 %.not125.i, ptr %i.cx, ptr %i.dd
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.q
  %.092.ph.i = phi ptr [ %spec.select.i, %bb.r ], [ %i.db, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i
  %.193159.i = phi ptr [ %.092.ph.i, %.lr.ph.i ], [ %i.du, %bb.w ] ; 2 uses
  %.097158.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dt, %bb.w ] ; 2 uses
  %.sroa.0.0157.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.w ] ; 2 uses
  %.sroa.7.0156.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.sroa.7.1.i, %bb.w ] ; 2 uses
  %i.de = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.193159.i, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.df = icmp eq i32 %i.de, 2
  br i1 %i.df, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp eq i32 %.097158.i, 0
  %or.cond.i = select i1 %.not124.i, i1 %i.dg, i1 false
  %i.dh = load double, ptr %i.a, align 8, !tbaa !27 ; 2 uses
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.di = load double, ptr %i.b, align 8, !tbaa !27
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store double %i.dh, ptr %i.cl, align 8, !tbaa !34
  %i.dj = call i64 @gv_list_append_slot_(ptr noundef nonnull %7, i64 noundef 8) #11
  %i.dk = load double, ptr %i.cl, align 8, !tbaa !34
  %i.dl = load ptr, ptr %7, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dj
  store double %i.dk, ptr %i.dm, align 8, !tbaa !27
  %i.dn = load double, ptr %i.b, align 8, !tbaa !27
  store double %i.dn, ptr %i.cl, align 8, !tbaa !34
  %i.do = call i64 @gv_list_append_slot_(ptr noundef nonnull %7, i64 noundef 8) #11
  %i.dp = load double, ptr %i.cl, align 8, !tbaa !34
  %i.dq = load ptr, ptr %7, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  store double %i.dp, ptr %i.dr, align 8, !tbaa !27
  br label %bb.w
end_hunk_0
