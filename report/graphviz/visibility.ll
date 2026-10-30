Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/visibility?download=true
inline.NumInlined: 33
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @area2(double %0, double %1, double %2, double %3, double %4, double %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double %1, %3
  %i.b = fsub double %4, %2
  %i.c = fsub double %5, %3
  %i.d = fsub double %0, %2
  %i.e = fneg double %i.d
  %i.f = fmul double %i.c, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.f)
  ret double %i.g
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -1, 2) i32 @wind(double %0, double %1, double %2, double %3, double %4, double %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double %1, %3
  %i.b = fsub double %4, %2
  %i.c = fsub double %5, %3
  %i.d = fsub double %0, %2
  %i.e = fneg double %i.d
  %i.f = fmul double %i.c, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.f) ; 2 uses
  %i.h = fcmp ogt double %i.g, 1.000000e-04
  %i.i = fcmp olt double %i.g, -1.000000e-04
  %i.j = sext i1 %i.i to i32
  %i.k = select i1 %i.h, i32 1, i32 %i.j
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define double @dist2(double %0, double %1, double %2, double %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fsub double %0, %2                       ; 2 uses
  %i.b = fsub double %1, %3                       ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  ret double %i.d
}

; Function Attrs: nofree nounwind uwtable
define void @visibility(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 10 uses
  %i.c = add i32 %i.b, 2                          ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %mul.ov.i.i = icmp slt i32 %i.b, -2
  br i1 %mul.ov.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.d, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %i.c, 0
  %i.h = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.d, i64 noundef 8) #14 ; 15 uses
  %i.i = icmp eq ptr %i.h, null
  %or.cond3.i.i = and i1 %i.g, %i.i
  br i1 %or.cond3.i.i, label %bb.d, label %gv_calloc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.k = shl nuw nsw i64 %i.d, 3
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.1, i64 noundef %i.k) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.c
  %i.m = sext i32 %i.b to i64                     ; 12 uses
  %i.n = mul nsw i64 %i.m, %i.m                   ; 4 uses
  %mul.ov.i21.i = icmp samesign ugt i64 %i.n, 2305843009213693951
  br i1 %mul.ov.i21.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gv_calloc.exit.i
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.n, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.f:                                             ; preds = %gv_calloc.exit.i
  %i.q = icmp ne i32 %i.b, 0
  %i.r = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.n, i64 noundef 8) #14 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  %or.cond3.i22.i = and i1 %i.q, %i.s
  br i1 %or.cond3.i22.i, label %bb.g, label %gv_calloc.exit23.preheader.i

gv_calloc.exit23.preheader.i:                     ; preds = %bb.f
  %i.t = icmp sgt i32 %i.b, 0                     ; 2 uses
  br i1 %i.t, label %gv_calloc.exit23.preheader27.i, label %allocArray.exit

gv_calloc.exit23.preheader27.i:                   ; preds = %gv_calloc.exit23.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.u = icmp ult i32 %i.b, 8
  br i1 %i.u, label %gv_calloc.exit23.i.epil.preheader, label %gv_calloc.exit23.preheader27.i.new

gv_calloc.exit23.preheader27.i.new:               ; preds = %gv_calloc.exit23.preheader27.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %gv_calloc.exit23.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.w = shl nuw i64 %i.n, 3
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1, i64 noundef %i.w) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit23.i:                               ; preds = %gv_calloc.exit23.i, %gv_calloc.exit23.preheader27.i.new
  %indvars.iv.i = phi i64 [ 0, %gv_calloc.exit23.preheader27.i.new ], [ %indvars.iv.next.i.7, %gv_calloc.exit23.i ] ; 9 uses
  %.025.i = phi ptr [ %i.r, %gv_calloc.exit23.preheader27.i.new ], [ %i.au, %gv_calloc.exit23.i ] ; 2 uses
  %niter = phi i64 [ 0, %gv_calloc.exit23.preheader27.i.new ], [ %niter.next.7, %gv_calloc.exit23.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  store ptr %.025.i, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.025.i, i64 %i.m ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.m ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.m ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.m ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.m ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.al, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.m ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.m ; 2 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %allocArray.exit.loopexit.unr-lcssa, label %gv_calloc.exit23.i, !llvm.loop !26

allocArray.exit.loopexit.unr-lcssa:               ; preds = %gv_calloc.exit23.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %allocArray.exit, label %gv_calloc.exit23.i.epil.preheader

gv_calloc.exit23.i.epil.preheader:                ; preds = %allocArray.exit.loopexit.unr-lcssa, %gv_calloc.exit23.preheader27.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %gv_calloc.exit23.preheader27.i ], [ %indvars.iv.next.i.7, %allocArray.exit.loopexit.unr-lcssa ]
  %.025.i.epil.init = phi ptr [ %i.r, %gv_calloc.exit23.preheader27.i ], [ %i.au, %allocArray.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %gv_calloc.exit23.i.epil

gv_calloc.exit23.i.epil:                          ; preds = %gv_calloc.exit23.i.epil, %gv_calloc.exit23.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %gv_calloc.exit23.i.epil.preheader ], [ %indvars.iv.next.i.epil, %gv_calloc.exit23.i.epil ] ; 2 uses
  %.025.i.epil = phi ptr [ %.025.i.epil.init, %gv_calloc.exit23.i.epil.preheader ], [ %i.aw, %gv_calloc.exit23.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %gv_calloc.exit23.i.epil.preheader ], [ %epil.iter.next, %gv_calloc.exit23.i.epil ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.epil
  store ptr %.025.i.epil, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.025.i.epil, i64 %i.m
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %allocArray.exit, label %gv_calloc.exit23.i.epil, !llvm.loop !27

allocArray.exit:                                  ; preds = %allocArray.exit.loopexit.unr-lcssa, %gv_calloc.exit23.i.epil, %gv_calloc.exit23.preheader.i
  %i.ax = shl nsw i64 %i.m, 3
  %scevgep.i = getelementptr i8, ptr %i.h, i64 %i.ax
  %i.ay = add i32 %i.b, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.ay)
  %i.az = xor i32 %i.b, -1
  %i.ba = add i32 %smax.i, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bd, i1 false), !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.h, ptr %i.be, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  br i1 %i.t, label %.lr.ph67.i, label %compVis.exit

.lr.ph67.i:                                       ; preds = %allocArray.exit
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph67.i
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next71.i, %._crit_edge.i ] ; 8 uses
  %indvars72.i = trunc i64 %indvars.iv70.i to i32 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv70.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv70.i ; 3 uses
  %i.bo = sext i32 %i.bm to i64                   ; 3 uses
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.bo ; 3 uses
  %i.bq = load double, ptr %i.bn, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = load double, ptr %i.bp, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8
  %i.bw = fsub double %i.bq, %i.bt                ; 2 uses
  %i.bx = fsub double %i.bs, %i.bv                ; 2 uses
  %i.by = fmul double %i.bx, %i.bx
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.by)
  %i.ca = tail call double @llvm.sqrt.f64(double %i.bz) ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv70.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !31 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.bo
  store double %i.ca, ptr %i.cd, align 8, !tbaa !24
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bo
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv70.i
  store double %i.ca, ptr %i.cg, align 8, !tbaa !24
  %i.ch = add i32 %indvars72.i, -1                ; 2 uses
  %i.ci = icmp eq i32 %i.bm, %i.ch
  %i.cj = add i32 %indvars72.i, -2
  %.058.i = select i1 %i.ci, i32 %i.cj, i32 %i.ch ; 2 uses
  %i.ck = icmp sgt i32 %.058.i, -1
  br i1 %i.ck, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv70.i
  %1 = load i32, ptr %i.cl, align 4, !tbaa !22
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %2
  %i.cm = zext nneg i32 %.058.i to i64
  br label %bb.i

bb.i:                                             ; preds = %clear.exit.i, %.lr.ph.i
  %indvars.iv.i4 = phi i64 [ %i.cm, %.lr.ph.i ], [ %indvars.iv.next.i5, %clear.exit.i ] ; 7 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load <2 x double>, ptr %i.bn, align 8   ; 7 uses
  %i.cq = load double, ptr %i.br, align 8         ; 7 uses
  %i.cr = load <2 x double>, ptr %i.cn, align 8   ; 8 uses
  %i.cs = load double, ptr %i.co, align 8         ; 8 uses
  %i.ct = extractelement <2 x double> %i.cp, i64 0 ; 5 uses
  %i.cu = load <2 x double>, ptr %i.bp, align 8   ; 3 uses
  %i.cv = load double, ptr %i.bu, align 8
  %i.cw = load <2 x double>, ptr %3, align 8      ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x double> %i.cu, double %i.cq, i64 0 ; 3 uses
  %i.da = fsub <2 x double> %i.cy, %i.cz
  %i.db = shufflevector <2 x double> %i.cw, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.dc = shufflevector <2 x double> %i.cp, <2 x double> %i.cu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dd = fsub <2 x double> %i.db, %i.dc          ; 2 uses
  %i.de = shufflevector <2 x double> %i.cw, <2 x double> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.df = fsub <2 x double> %i.de, %i.cz          ; 2 uses
  %i.dg = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fsub <2 x double> %i.dg, %i.dc
  %i.di = fneg <2 x double> %i.dh
  %i.dj = fmul <2 x double> %i.df, %i.di
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.dd, <2 x double> %i.dj)
  %i.dl = fcmp uge <2 x double> %i.dk, splat (double -1.000000e-04) ; 2 uses
  %i.dm = fsub double %i.cv, %i.cq
  %foldExtExtBinop = fsub <2 x double> %i.cu, %i.cp
  %i.dn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.do = fneg double %i.dn
  %i.dp = extractelement <2 x double> %i.df, i64 0
  %i.dq = fmul double %i.dp, %i.do
  %i.dr = extractelement <2 x double> %i.dd, i64 0
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dr, double %i.dq)
  %i.dt = fcmp ogt double %i.ds, 1.000000e-04
  %i.du = extractelement <2 x i1> %i.dl, i64 0    ; 2 uses
  %i.dv = extractelement <2 x i1> %i.dl, i64 1    ; 2 uses
  %i.dw = select i1 %i.dv, i1 %i.du, i1 false
  %i.dx = select i1 %i.dv, i1 true, i1 %i.du
  %.0.i.i.i = select i1 %i.dt, i1 %i.dw, i1 %i.dx
  br i1 %.0.i.i.i, label %bb.j, label %clear.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dy = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !22
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = extractelement <2 x double> %i.cr, i64 0 ; 5 uses
  %i.ej = load <2 x double>, ptr %i.ec, align 8   ; 3 uses
  %i.ek = load double, ptr %i.eh, align 8
  %i.el = load <2 x double>, ptr %i.eg, align 8   ; 2 uses
  %i.em = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = insertelement <2 x double> %i.ej, double %i.cs, i64 0 ; 3 uses
  %i.ep = fsub <2 x double> %i.en, %i.eo          ; 4 uses
  %i.eq = shufflevector <2 x double> %i.el, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.er = shufflevector <2 x double> %i.cr, <2 x double> %i.ej, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.es = fsub <2 x double> %i.eq, %i.er          ; 2 uses
  %i.et = shufflevector <2 x double> %i.el, <2 x double> %i.eo, <2 x i32> <i32 1, i32 2>
  %i.eu = fsub <2 x double> %i.et, %i.eo          ; 2 uses
  %i.ev = fsub <2 x double> %i.dy, %i.er          ; 2 uses
  %i.ew = fneg <2 x double> %i.ev                 ; 3 uses
  %i.ex = fmul <2 x double> %i.eu, %i.ew
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.es, <2 x double> %i.ex)
  %i.ez = fcmp uge <2 x double> %i.ey, splat (double -1.000000e-04) ; 2 uses
  %i.fa = fsub double %i.ek, %i.cs
  %foldExtExtBinop12 = fsub <2 x double> %i.ej, %i.cr
  %i.fb = extractelement <2 x double> %foldExtExtBinop12, i64 0
  %i.fc = fneg double %i.fb
  %i.fd = extractelement <2 x double> %i.eu, i64 0
  %i.fe = fmul double %i.fd, %i.fc
  %i.ff = extractelement <2 x double> %i.es, i64 0
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ff, double %i.fe)
  %i.fh = fcmp ogt double %i.fg, 1.000000e-04
  %i.fi = extractelement <2 x i1> %i.ez, i64 0    ; 2 uses
  %i.fj = extractelement <2 x i1> %i.ez, i64 1    ; 2 uses
  %i.fk = select i1 %i.fj, i1 %i.fi, i1 false
  %i.fl = select i1 %i.fj, i1 true, i1 %i.fi
  %.0.i.i61.i = select i1 %i.fh, i1 %i.fk, i1 %i.fl
  br i1 %.0.i.i61.i, label %.lr.ph.preheader.i.i, label %clear.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.fm = fcmp une double %i.ct, %i.ei            ; 2 uses
  %i.fn = shufflevector <2 x double> %i.cr, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.fo = shufflevector <2 x double> %i.cr, <2 x double> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.fp = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.fq = insertelement <2 x double> %i.cr, double %i.cs, i64 1 ; 2 uses
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %intersect.exit.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !22
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.fu
  %i.fw = load <2 x double>, ptr %i.fr, align 8   ; 4 uses
  %i.fx = load <2 x double>, ptr %i.fv, align 8   ; 6 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 1 ; 4 uses
  %i.fz = extractelement <2 x double> %i.fx, i64 0 ; 4 uses
  %i.ga = fsub <2 x double> %i.fw, %i.fq          ; 2 uses
  %shift = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14 = fmul <2 x double> %shift, %i.ew
  %i.gb = extractelement <2 x double> %foldExtExtBinop14, i64 0
  %i.gc = extractelement <2 x double> %i.ga, i64 0
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.gc, double %i.gb) ; 2 uses
  %i.ge = fcmp ogt double %i.gd, 1.000000e-04
  %i.gf = fcmp olt double %i.gd, -1.000000e-04
  %i.gg = sext i1 %i.gf to i32
  %i.gh = select i1 %i.ge, i32 1, i32 %i.gg       ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.fm, label %.split.i.i, label %inBetween.exit.i.i

.split.i.i:                                       ; preds = %bb.l
  %i.gj = extractelement <2 x double> %i.fw, i64 0 ; 4 uses
  %i.gk = fcmp olt double %i.ct, %i.gj
  %i.gl = fcmp olt double %i.gj, %i.ei
  %or.cond.i.i.i = and i1 %i.gk, %i.gl
  %i.gm = fcmp olt double %i.ei, %i.gj
  %i.gn = fcmp olt double %i.gj, %i.ct
  %i.go = and i1 %i.gm, %i.gn
  %i.gp = or i1 %or.cond.i.i.i, %i.go
  br i1 %i.gp, label %clear.exit.i, label %bb.m

inBetween.exit.i.i:                               ; preds = %bb.l
  %i.gq = extractelement <2 x double> %i.fw, i64 1 ; 4 uses
  %i.gr = fcmp olt double %i.cq, %i.gq
  %i.gs = fcmp olt double %i.gq, %i.cs
  %or.cond20.i.i.i = and i1 %i.gr, %i.gs
  %i.gt = fcmp olt double %i.cs, %i.gq
  %i.gu = fcmp olt double %i.gq, %i.cq
  %i.gv = and i1 %i.gt, %i.gu
  %i.gw = or i1 %or.cond20.i.i.i, %i.gv
  br i1 %i.gw, label %clear.exit.i, label %bb.m

bb.m:                                             ; preds = %inBetween.exit.i.i, %.split.i.i, %.lr.ph.i.i
  %i.gx = fsub <2 x double> %i.fx, %i.fq          ; 2 uses
  %shift16 = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fmul <2 x double> %shift16, %i.ew
  %i.gy = extractelement <2 x double> %foldExtExtBinop17, i64 0
  %i.gz = extractelement <2 x double> %i.gx, i64 0
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.gz, double %i.gy) ; 2 uses
  %i.hb = fcmp ogt double %i.ha, 1.000000e-04
  %i.hc = fcmp olt double %i.ha, -1.000000e-04
  %i.hd = sext i1 %i.hc to i32
  %i.he = select i1 %i.hb, i32 1, i32 %i.hd       ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.n, label %intersect.exit.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.fm, label %.split43.i.i, label %inBetween.exit42.i.i

.split43.i.i:                                     ; preds = %bb.n
  %i.hg = fcmp olt double %i.ct, %i.fz
  %i.hh = fcmp olt double %i.fz, %i.ei
  %or.cond.i41.i.i = and i1 %i.hg, %i.hh
  %i.hi = fcmp olt double %i.ei, %i.fz
  %i.hj = fcmp olt double %i.fz, %i.ct
  %i.hk = and i1 %i.hi, %i.hj
  %i.hl = or i1 %or.cond.i41.i.i, %i.hk
  br i1 %i.hl, label %clear.exit.i, label %intersect.exit.i

inBetween.exit42.i.i:                             ; preds = %bb.n
  %i.hm = fcmp olt double %i.cq, %i.fy
  %i.hn = fcmp olt double %i.fy, %i.cs
  %or.cond20.i39.i.i = and i1 %i.hm, %i.hn
  %i.ho = fcmp olt double %i.cs, %i.fy
  %i.hp = fcmp olt double %i.fy, %i.cq
  %i.hq = and i1 %i.ho, %i.hp
  %i.hr = or i1 %or.cond20.i39.i.i, %i.hq
  br i1 %i.hr, label %clear.exit.i, label %intersect.exit.i

intersect.exit.i:                                 ; preds = %inBetween.exit42.i.i, %.split43.i.i, %bb.m
  %i.hs = fsub <2 x double> %i.fw, %i.fx          ; 2 uses
  %i.ht = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = fsub <2 x double> %i.fn, %i.ht
  %i.hv = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hw = fsub <2 x double> %i.fo, %i.hv
  %i.hx = extractelement <2 x double> %i.hs, i64 0
  %i.hy = fneg double %i.hx
  %i.hz = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x double> %i.hw, %i.ia
  %i.ic = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hu, <2 x double> %i.ib) ; 3 uses
  %i.ie = extractelement <2 x double> %i.id, i64 1
  %i.if = fcmp ogt double %i.ie, 1.000000e-04
  %i.ig = fcmp olt <2 x double> %i.id, splat (double -1.000000e-04) ; 2 uses
  %i.ih = extractelement <2 x i1> %i.ig, i64 1
  %i.ii = sext i1 %i.ih to i32
  %i.ij = select i1 %i.if, i32 1, i32 %i.ii
  %i.ik = extractelement <2 x double> %i.id, i64 0
  %i.il = fcmp ogt double %i.ik, 1.000000e-04
  %i.im = extractelement <2 x i1> %i.ig, i64 0
  %i.in = sext i1 %i.im to i32
  %i.io = select i1 %i.il, i32 1, i32 %i.in
  %i.ip = mul nsw i32 %i.he, %i.gh
  %i.iq = icmp slt i32 %i.ip, 0
  %i.ir = mul nsw i32 %i.ij, %i.io
  %i.is = icmp slt i32 %i.ir, 0
  %i.it = select i1 %i.iq, i1 %i.is, i1 false
  br i1 %i.it, label %clear.exit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %foldExtExtBinop19 = fmul <2 x double> %i.ep, %i.ep
  %i.iu = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.iv = extractelement <2 x double> %i.ev, i64 0 ; 2 uses
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iv, double %i.iu)
  %i.ix = tail call double @llvm.sqrt.f64(double %i.iw) ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i4
  store double %i.ix, ptr %i.iy, align 8, !tbaa !24
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i4
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !31
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv70.i
  store double %i.ix, ptr %i.jb, align 8, !tbaa !24
  br label %clear.exit.i

clear.exit.i:                                     ; preds = %intersect.exit.i, %inBetween.exit42.i.i, %.split43.i.i, %inBetween.exit.i.i, %.split.i.i, %.loopexit.i, %bb.j, %bb.i
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.jc = icmp sgt i64 %indvars.iv.i4, 0
  br i1 %i.jc, label %bb.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %clear.exit.i, %bb.h
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i3, label %compVis.exit, label %bb.h, !llvm.loop !29

compVis.exit:                                     ; preds = %._crit_edge.i, %allocArray.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @ptVis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, double %2, double %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %mul.ov.i = icmp slt i32 %i.b, -2
  br i1 %mul.ov.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ne i32 %i.i, 0
  %i.n = tail call noalias ptr @calloc(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.j, i64 noundef 8) #14 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  %or.cond3.i = and i1 %i.m, %i.o
  br i1 %or.cond3.i, label %bb.d, label %gv_calloc.exit

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.q = shl nuw nsw i64 %i.j, 3
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.1, i64 noundef %i.q) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit:                                   ; preds = %bb.c
  %i.s = icmp eq i32 %1, -2222
  br i1 %i.s, label %bb.e, label %polyhit.exit

bb.e:                                             ; preds = %gv_calloc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.u = load i32, ptr %0, align 8, !tbaa !38
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.i, %i.v
  br i1 %i.w, label %bb.g, label %polyhit.exit.thread153

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.ab
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22
  %i.af = sub nsw i32 %i.ae, %i.aa
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call zeroext i1 @in_poly(ptr %i.ac, i64 %i.ag, double %2, double %3) #15
  br i1 %i.ah, label %polyhit.exit.thread, label %bb.f, !llvm.loop !34

polyhit.exit.thread:                              ; preds = %bb.g
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.h

polyhit.exit:                                     ; preds = %gv_calloc.exit
  %i.aj = icmp sgt i32 %1, -1
  br i1 %i.aj, label %bb.h, label %polyhit.exit.thread153

bb.h:                                             ; preds = %polyhit.exit.thread, %polyhit.exit
  %.095152 = phi i32 [ %i.ai, %polyhit.exit.thread ], [ %1, %polyhit.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = zext nneg i32 %.095152 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  br label %polyhit.exit.thread153

polyhit.exit.thread153:                           ; preds = %bb.f, %polyhit.exit, %bb.h
  %.093 = phi i32 [ %i.ao, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %.0 = phi i32 [ %i.aq, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %i.ar = icmp sgt i32 %.093, 0                   ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader182

.lr.ph:                                           ; preds = %polyhit.exit.thread153
  %wide.trip.count.i = zext nneg i32 %.093 to i64 ; 2 uses
  %i.as = icmp slt i32 %.0, %i.b
  %i.at = sext i32 %.0 to i64
  %i.au = insertelement <2 x double> poison, double %3, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.i

.preheader182:                                    ; preds = %clear.exit.thread165, %polyhit.exit.thread153
  %i.az = icmp slt i32 %.093, %.0
  br i1 %i.az, label %.lr.ph188.preheader, label %.preheader

.lr.ph188.preheader:                              ; preds = %.preheader182
  %i.ba = sext i32 %.093 to i64
  %i.bb = shl nsw i64 %i.ba, 3
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.bb
  %i.bc = xor i32 %.093, -1
  %i.bd = add i32 %.0, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !24
  br label %.preheader

bb.i:                                             ; preds = %.lr.ph, %clear.exit.thread165
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clear.exit.thread165 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !24 ; 7 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 9 uses
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !24 ; 12 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !22
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !22
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load <2 x double>, ptr %i.bn, align 8   ; 3 uses
  %i.bu = load double, ptr %i.bs, align 8
  %i.bv = load <2 x double>, ptr %i.br, align 8   ; 2 uses
  %i.bw = insertelement <2 x double> %i.bt, double %.sroa.10.0.copyload, i64 0 ; 3 uses
  %i.bx = fsub <2 x double> %i.av, %i.bw          ; 4 uses
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x double> %i.bi, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fsub <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cc = fsub <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fsub <2 x double> %i.ax, %i.bz          ; 2 uses
  %i.ce = fneg <2 x double> %i.cd                 ; 5 uses
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ca, <2 x double> %i.cf)
  %i.ch = fcmp uge <2 x double> %i.cg, splat (double -1.000000e-04) ; 2 uses
  %i.ci = fsub double %i.bu, %.sroa.10.0.copyload
  %foldExtExtBinop = fsub <2 x double> %i.bt, %i.bi
  %i.cj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ck = fneg double %i.cj
  %i.cl = extractelement <2 x double> %i.cc, i64 0
  %i.cm = fmul double %i.cl, %i.ck
  %i.cn = extractelement <2 x double> %i.ca, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cn, double %i.cm)
  %i.cp = fcmp ogt double %i.co, 1.000000e-04
  %i.cq = extractelement <2 x i1> %i.ch, i64 0    ; 2 uses
  %i.cr = extractelement <2 x i1> %i.ch, i64 1    ; 2 uses
  %i.cs = select i1 %i.cr, i1 %i.cq, i1 false
  %i.ct = select i1 %i.cr, i1 true, i1 %i.cq
  %.0.i = select i1 %i.cp, i1 %i.cs, i1 %i.ct
  br i1 %.0.i, label %.lr.ph.preheader.i, label %clear.exit.thread165

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.cu = fcmp une double %2, %i.bj               ; 4 uses
  %i.cv = insertelement <2 x double> %i.bi, double %2, i64 1 ; 2 uses
  %i.cw = insertelement <2 x double> %i.ay, double %.sroa.10.0.copyload, i64 0
  %i.cx = extractelement <2 x double> %i.bx, i64 0 ; 4 uses
  %i.cy = insertelement <2 x double> %i.bi, double %.sroa.10.0.copyload, i64 1 ; 4 uses
  br label %.lr.ph.i

bb.j:                                             ; preds = %intersect.exit130
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !0

.preheader.i.loopexit:                            ; preds = %bb.j
  br i1 %i.as, label %.lr.ph27.i.preheader, label %clear.exit.thread163

.lr.ph27.i.preheader:                             ; preds = %.preheader.i.loopexit
  %i.cz = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %3, i64 1
  br label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i100, %bb.j ] ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i99
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i99
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.de
  %i.dg = load <2 x double>, ptr %i.db, align 8   ; 4 uses
  %i.dh = load <2 x double>, ptr %i.df, align 8   ; 6 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1 ; 4 uses
  %i.dj = extractelement <2 x double> %i.dh, i64 0 ; 4 uses
  %i.dk = fsub <2 x double> %i.dg, %i.cy          ; 2 uses
  %shift = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop219 = fmul <2 x double> %shift, %i.ce
  %i.dl = extractelement <2 x double> %foldExtExtBinop219, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dm, double %i.dl) ; 2 uses
  %i.do = fcmp ogt double %i.dn, 1.000000e-04
  %i.dp = fcmp olt double %i.dn, -1.000000e-04
  %i.dq = sext i1 %i.dp to i32
  %i.dr = select i1 %i.do, i32 1, i32 %i.dq       ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.cu, label %.split.i128, label %inBetween.exit.i126

.split.i128:                                      ; preds = %bb.k
  %i.dt = extractelement <2 x double> %i.dg, i64 0 ; 4 uses
  %i.du = fcmp olt double %2, %i.dt
  %i.dv = fcmp olt double %i.dt, %i.bj
  %or.cond.i.i129 = and i1 %i.du, %i.dv
  %i.dw = fcmp olt double %i.bj, %i.dt
  %i.dx = fcmp olt double %i.dt, %2
  %i.dy = and i1 %i.dw, %i.dx
  %i.dz = or i1 %or.cond.i.i129, %i.dy
  br i1 %i.dz, label %clear.exit.thread165, label %bb.l

inBetween.exit.i126:                              ; preds = %bb.k
  %i.ea = extractelement <2 x double> %i.dg, i64 1 ; 4 uses
  %i.eb = fcmp olt double %3, %i.ea
  %i.ec = fcmp olt double %i.ea, %.sroa.10.0.copyload
  %or.cond20.i.i127 = and i1 %i.eb, %i.ec
  %i.ed = fcmp olt double %.sroa.10.0.copyload, %i.ea
  %i.ee = fcmp olt double %i.ea, %3
  %i.ef = and i1 %i.ed, %i.ee
  %i.eg = or i1 %or.cond20.i.i127, %i.ef
  br i1 %i.eg, label %clear.exit.thread165, label %bb.l

bb.l:                                             ; preds = %inBetween.exit.i126, %.split.i128, %.lr.ph.i
  %i.eh = fsub <2 x double> %i.dh, %i.cy          ; 2 uses
  %shift221 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop222 = fmul <2 x double> %shift221, %i.ce
  %i.ei = extractelement <2 x double> %foldExtExtBinop222, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 0
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.ej, double %i.ei) ; 2 uses
  %i.el = fcmp ogt double %i.ek, 1.000000e-04
  %i.em = fcmp olt double %i.ek, -1.000000e-04
  %i.en = sext i1 %i.em to i32
  %i.eo = select i1 %i.el, i32 1, i32 %i.en       ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.m, label %intersect.exit130

bb.m:                                             ; preds = %bb.l
  br i1 %i.cu, label %.split43.i124, label %inBetween.exit42.i122

.split43.i124:                                    ; preds = %bb.m
  %i.eq = fcmp olt double %2, %i.dj
  %i.er = fcmp olt double %i.dj, %i.bj
  %or.cond.i41.i125 = and i1 %i.eq, %i.er
  %i.es = fcmp olt double %i.bj, %i.dj
  %i.et = fcmp olt double %i.dj, %2
  %i.eu = and i1 %i.es, %i.et
  %i.ev = or i1 %or.cond.i41.i125, %i.eu
  br i1 %i.ev, label %clear.exit.thread165, label %intersect.exit130

inBetween.exit42.i122:                            ; preds = %bb.m
  %i.ew = fcmp olt double %3, %i.di
  %i.ex = fcmp olt double %i.di, %.sroa.10.0.copyload
  %or.cond20.i39.i123 = and i1 %i.ew, %i.ex
  %i.ey = fcmp olt double %.sroa.10.0.copyload, %i.di
  %i.ez = fcmp olt double %i.di, %3
  %i.fa = and i1 %i.ey, %i.ez
  %i.fb = or i1 %or.cond20.i39.i123, %i.fa
  br i1 %i.fb, label %clear.exit.thread165, label %intersect.exit130

intersect.exit130:                                ; preds = %bb.l, %.split43.i124, %inBetween.exit42.i122
  %i.fc = fsub <2 x double> %i.dg, %i.dh          ; 2 uses
  %i.fd = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = fsub <2 x double> %i.cv, %i.fd
  %i.ff = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fg = fsub <2 x double> %i.cw, %i.ff
  %i.fh = extractelement <2 x double> %i.fc, i64 0
  %i.fi = fneg double %i.fh
  %i.fj = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %i.fg, %i.fk
  %i.fm = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fe, <2 x double> %i.fl) ; 3 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 1
  %i.fp = fcmp ogt double %i.fo, 1.000000e-04
  %i.fq = fcmp olt <2 x double> %i.fn, splat (double -1.000000e-04) ; 2 uses
  %i.fr = extractelement <2 x i1> %i.fq, i64 1
  %i.fs = sext i1 %i.fr to i32
  %i.ft = select i1 %i.fp, i32 1, i32 %i.fs
  %i.fu = extractelement <2 x double> %i.fn, i64 0
  %i.fv = fcmp ogt double %i.fu, 1.000000e-04
  %i.fw = extractelement <2 x i1> %i.fq, i64 0
  %i.fx = sext i1 %i.fw to i32
  %i.fy = select i1 %i.fv, i32 1, i32 %i.fx
  %i.fz = mul nsw i32 %i.eo, %i.dr
  %i.ga = icmp slt i32 %i.fz, 0
  %i.gb = mul nsw i32 %i.ft, %i.fy
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %i.gd, label %clear.exit.thread165, label %bb.j

.lr.ph27.i:                                       ; preds = %.lr.ph27.i.preheader, %intersect.exit
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %intersect.exit ], [ %i.at, %.lr.ph27.i.preheader ] ; 3 uses
  %i.ge = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !22
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.gh
  %i.gj = load <2 x double>, ptr %i.ge, align 8   ; 4 uses
  %i.gk = load <2 x double>, ptr %i.gi, align 8   ; 6 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 1 ; 4 uses
  %i.gm = extractelement <2 x double> %i.gk, i64 0 ; 4 uses
  %i.gn = fsub <2 x double> %i.gj, %i.cy          ; 2 uses
  %shift224 = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop225 = fmul <2 x double> %shift224, %i.ce
  %i.go = extractelement <2 x double> %foldExtExtBinop225, i64 0
  %i.gp = extractelement <2 x double> %i.gn, i64 0
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.gp, double %i.go) ; 2 uses
  %i.gr = fcmp ogt double %i.gq, 1.000000e-04
  %i.gs = fcmp olt double %i.gq, -1.000000e-04
  %i.gt = sext i1 %i.gs to i32
  %i.gu = select i1 %i.gr, i32 1, i32 %i.gt       ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph27.i
  br i1 %i.cu, label %.split.i, label %inBetween.exit.i

.split.i:                                         ; preds = %bb.n
  %i.gw = extractelement <2 x double> %i.gj, i64 0 ; 4 uses
  %i.gx = fcmp olt double %2, %i.gw
  %i.gy = fcmp olt double %i.gw, %i.bj
  %or.cond.i.i = and i1 %i.gx, %i.gy
  %i.gz = fcmp olt double %i.bj, %i.gw
  %i.ha = fcmp olt double %i.gw, %2
  %i.hb = and i1 %i.gz, %i.ha
  %i.hc = or i1 %or.cond.i.i, %i.hb
  br i1 %i.hc, label %clear.exit.thread165, label %bb.o

inBetween.exit.i:                                 ; preds = %bb.n
  %i.hd = extractelement <2 x double> %i.gj, i64 1 ; 4 uses
  %i.he = fcmp olt double %3, %i.hd
  %i.hf = fcmp olt double %i.hd, %.sroa.10.0.copyload
  %or.cond20.i.i = and i1 %i.he, %i.hf
  %i.hg = fcmp olt double %.sroa.10.0.copyload, %i.hd
  %i.hh = fcmp olt double %i.hd, %3
  %i.hi = and i1 %i.hg, %i.hh
  %i.hj = or i1 %or.cond20.i.i, %i.hi
  br i1 %i.hj, label %clear.exit.thread165, label %bb.o

bb.o:                                             ; preds = %inBetween.exit.i, %.split.i, %.lr.ph27.i
  %i.hk = fsub <2 x double> %i.gk, %i.cy          ; 2 uses
  %shift227 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop228.a = fmul <2 x double> %shift227, %i.ce
  %i.hl = extractelement <2 x double> %foldExtExtBinop228.a, i64 0
  %i.hm = extractelement <2 x double> %i.hk, i64 0
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.hm, double %i.hl) ; 2 uses
  %i.ho = fcmp ogt double %i.hn, 1.000000e-04
  %i.hp = fcmp olt double %i.hn, -1.000000e-04
  %i.hq = sext i1 %i.hp to i32
  %i.hr = select i1 %i.ho, i32 1, i32 %i.hq       ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.p, label %intersect.exit

bb.p:                                             ; preds = %bb.o
  br i1 %i.cu, label %.split43.i, label %inBetween.exit42.i

.split43.i:                                       ; preds = %bb.p
  %i.ht = fcmp olt double %2, %i.gm
  %i.hu = fcmp olt double %i.gm, %i.bj
  %or.cond.i41.i = and i1 %i.ht, %i.hu
  %i.hv = fcmp olt double %i.bj, %i.gm
  %i.hw = fcmp olt double %i.gm, %2
  %i.hx = and i1 %i.hv, %i.hw
  %i.hy = or i1 %or.cond.i41.i, %i.hx
  br i1 %i.hy, label %clear.exit.thread165, label %intersect.exit

inBetween.exit42.i:                               ; preds = %bb.p
  %i.hz = fcmp olt double %3, %i.gl
  %i.ia = fcmp olt double %i.gl, %.sroa.10.0.copyload
  %or.cond20.i39.i = and i1 %i.hz, %i.ia
  %i.ib = fcmp olt double %.sroa.10.0.copyload, %i.gl
  %i.ic = fcmp olt double %i.gl, %3
  %i.id = and i1 %i.ib, %i.ic
  %i.ie = or i1 %or.cond20.i39.i, %i.id
  br i1 %i.ie, label %clear.exit.thread165, label %intersect.exit

intersect.exit:                                   ; preds = %bb.o, %.split43.i, %inBetween.exit42.i
  %i.if = fsub <2 x double> %i.gj, %i.gk          ; 2 uses
  %i.ig = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fsub <2 x double> %i.cv, %i.ig
  %i.ii = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ij = fsub <2 x double> %i.da, %i.ii
  %i.ik = extractelement <2 x double> %i.if, i64 0
  %i.il = fneg double %i.ik
  %i.im = insertelement <2 x double> poison, double %i.il, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %i.ij, %i.in
  %i.ip = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ih, <2 x double> %i.io) ; 3 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 1
  %i.is = fcmp ogt double %i.ir, 1.000000e-04
  %i.it = fcmp olt <2 x double> %i.iq, splat (double -1.000000e-04) ; 2 uses
  %i.iu = extractelement <2 x i1> %i.it, i64 1
  %i.iv = sext i1 %i.iu to i32
  %i.iw = select i1 %i.is, i32 1, i32 %i.iv
  %i.ix = extractelement <2 x double> %i.iq, i64 0
  %i.iy = fcmp ogt double %i.ix, 1.000000e-04
  %i.iz = extractelement <2 x i1> %i.it, i64 0
  %i.ja = sext i1 %i.iz to i32
  %i.jb = select i1 %i.iy, i32 1, i32 %i.ja
  %i.jc = mul nsw i32 %i.hr, %i.gu
  %i.jd = icmp slt i32 %i.jc, 0
  %i.je = mul nsw i32 %i.iw, %i.jb
  %i.jf = icmp slt i32 %i.je, 0
  %i.jg = select i1 %i.jd, i1 %i.jf, i1 false     ; 2 uses
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next33.i to i32
  %exitcond35.not.i = icmp eq i32 %i.b, %lftr.wideiv.i
  %or.cond.i = select i1 %i.jg, i1 true, i1 %exitcond35.not.i
  br i1 %or.cond.i, label %clear.exit, label %.lr.ph27.i, !llvm.loop !35

clear.exit:                                       ; preds = %intersect.exit
  br i1 %i.jg, label %clear.exit.thread165, label %clear.exit.thread163

clear.exit.thread163:                             ; preds = %.preheader.i.loopexit, %clear.exit
  %foldExtExtBinop230.a = fmul <2 x double> %i.bx, %i.bx
  %i.jh = extractelement <2 x double> %foldExtExtBinop230.a, i64 0
  %i.ji = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jh)
  %i.jk = tail call double @llvm.sqrt.f64(double %i.jj)
  br label %clear.exit.thread165

clear.exit.thread165:                             ; preds = %intersect.exit130, %inBetween.exit.i126, %inBetween.exit42.i122, %.split.i128, %.split43.i124, %.split43.i, %.split.i, %inBetween.exit42.i, %inBetween.exit.i, %bb.i, %clear.exit, %clear.exit.thread163
  %.sink = phi double [ %i.jk, %clear.exit.thread163 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split43.i ], [ 0.000000e+00, %clear.exit ], [ 0.000000e+00, %inBetween.exit.i ], [ 0.000000e+00, %inBetween.exit42.i ], [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %.split43.i124 ], [ 0.000000e+00, %.split.i128 ], [ 0.000000e+00, %inBetween.exit42.i122 ], [ 0.000000e+00, %inBetween.exit.i126 ], [ 0.000000e+00, %intersect.exit130 ]
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %.sink, ptr %i.jl, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader182, label %bb.i, !llvm.loop !36

.preheader:                                       ; preds = %.lr.ph188.preheader, %.preheader182
  %i.jm = icmp slt i32 %.0, %i.b
  br i1 %i.jm, label %.lr.ph190, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph190:                                        ; preds = %.preheader
  %wide.trip.count.i114 = zext nneg i32 %.093 to i64
  %i.jn = sext i32 %.0 to i64                     ; 2 uses
  %wide.trip.count202 = sext i32 %i.b to i64      ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %3, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = insertelement <2 x double> poison, double %2, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph190, %clear.exit119.thread178
  %indvars.iv199 = phi i64 [ %i.jn, %.lr.ph190 ], [ %indvars.iv.next200, %clear.exit119.thread178 ] ; 5 uses
  %i.jt = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv199 ; 2 uses
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.ju = load <2 x double>, ptr %i.jt, align 8, !tbaa !24 ; 9 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0 ; 10 uses
  %.sroa.10.0.copyload17 = load double, ptr %.sroa.10.0..sroa_idx16, align 8, !tbaa !24 ; 13 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv199
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !22
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv199
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !22
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kf = load <2 x double>, ptr %i.jz, align 8   ; 3 uses
  %i.kg = load double, ptr %i.ke, align 8
  %i.kh = load <2 x double>, ptr %i.kd, align 8   ; 2 uses
  %i.ki = insertelement <2 x double> %i.kf, double %.sroa.10.0.copyload17, i64 0 ; 3 uses
  %i.kj = fsub <2 x double> %i.jp, %i.ki          ; 5 uses
  %i.kk = shufflevector <2 x double> %i.kh, <2 x double> %i.ju, <2 x i32> <i32 0, i32 2>
  %i.kl = shufflevector <2 x double> %i.ju, <2 x double> %i.kf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.km = fsub <2 x double> %i.kk, %i.kl          ; 2 uses
  %i.kn = shufflevector <2 x double> %i.kh, <2 x double> %i.ki, <2 x i32> <i32 1, i32 2>
  %i.ko = fsub <2 x double> %i.kn, %i.ki          ; 2 uses
  %i.kp = fsub <2 x double> %i.jr, %i.kl          ; 2 uses
  %i.kq = fneg <2 x double> %i.kp                 ; 5 uses
  %i.kr = fmul <2 x double> %i.ko, %i.kq
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.km, <2 x double> %i.kr)
  %i.kt = fcmp uge <2 x double> %i.ks, splat (double -1.000000e-04) ; 2 uses
  %i.ku = fsub double %i.kg, %.sroa.10.0.copyload17
  %foldExtExtBinop232 = fsub <2 x double> %i.kf, %i.ju
  %i.kv = extractelement <2 x double> %foldExtExtBinop232, i64 0
  %i.kw = fneg double %i.kv
  %i.kx = extractelement <2 x double> %i.ko, i64 0
  %i.ky = fmul double %i.kx, %i.kw
  %i.kz = extractelement <2 x double> %i.km, i64 0
  %i.la = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.kz, double %i.ky)
  %i.lb = fcmp ogt double %i.la, 1.000000e-04
  %i.lc = extractelement <2 x i1> %i.kt, i64 0    ; 2 uses
  %i.ld = extractelement <2 x i1> %i.kt, i64 1    ; 2 uses
  %i.le = select i1 %i.ld, i1 %i.lc, i1 false
  %i.lf = select i1 %i.ld, i1 true, i1 %i.lc
  %.0.i101 = select i1 %i.lb, i1 %i.le, i1 %i.lf
  br i1 %.0.i101, label %bb.r, label %clear.exit119.thread178

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %.lr.ph.preheader.i113, label %.preheader.i102

.lr.ph.preheader.i113:                            ; preds = %bb.r
  %i.lg = fcmp une double %2, %i.jv               ; 2 uses
  %i.lh = insertelement <2 x double> %i.ju, double %2, i64 1
  %i.li = insertelement <2 x double> %i.js, double %.sroa.10.0.copyload17, i64 0
  %i.lj = extractelement <2 x double> %i.kj, i64 0 ; 2 uses
  %i.lk = insertelement <2 x double> %i.ju, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph.i115

bb.s:                                             ; preds = %intersect.exit150
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %.preheader.i102, label %.lr.ph.i115, !llvm.loop !0

.preheader.i102:                                  ; preds = %bb.s, %bb.r
  %i.ll = fcmp une double %2, %i.jv               ; 2 uses
  %i.lm = insertelement <2 x double> %i.ju, double %2, i64 1
  %i.ln = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lo = insertelement <2 x double> %i.ln, double %3, i64 1
  %i.lp = extractelement <2 x double> %i.kj, i64 0 ; 2 uses
  %i.lq = insertelement <2 x double> %i.ju, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph27.i105

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.s ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i116
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i116
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !22
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.lu
  %i.lw = load <2 x double>, ptr %i.lr, align 8   ; 4 uses
  %i.lx = load <2 x double>, ptr %i.lv, align 8   ; 6 uses
  %i.ly = extractelement <2 x double> %i.lx, i64 1 ; 4 uses
  %i.lz = extractelement <2 x double> %i.lx, i64 0 ; 4 uses
  %i.ma = fsub <2 x double> %i.lw, %i.lk          ; 2 uses
  %shift234 = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop235 = fmul <2 x double> %shift234, %i.kq
  %i.mb = extractelement <2 x double> %foldExtExtBinop235, i64 0
  %i.mc = extractelement <2 x double> %i.ma, i64 0
  %i.md = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.mc, double %i.mb) ; 2 uses
  %i.me = fcmp ogt double %i.md, 1.000000e-04
  %i.mf = fcmp olt double %i.md, -1.000000e-04
  %i.mg = sext i1 %i.mf to i32
  %i.mh = select i1 %i.me, i32 1, i32 %i.mg       ; 2 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i115
  br i1 %i.lg, label %.split.i148, label %inBetween.exit.i146

.split.i148:                                      ; preds = %bb.t
  %i.mj = extractelement <2 x double> %i.lw, i64 0 ; 4 uses
  %i.mk = fcmp olt double %2, %i.mj
  %i.ml = fcmp olt double %i.mj, %i.jv
  %or.cond.i.i149 = and i1 %i.mk, %i.ml
  %i.mm = fcmp olt double %i.jv, %i.mj
  %i.mn = fcmp olt double %i.mj, %2
  %i.mo = and i1 %i.mm, %i.mn
  %i.mp = or i1 %or.cond.i.i149, %i.mo
  br i1 %i.mp, label %clear.exit119.thread178, label %bb.u

inBetween.exit.i146:                              ; preds = %bb.t
  %i.mq = extractelement <2 x double> %i.lw, i64 1 ; 4 uses
  %i.mr = fcmp olt double %3, %i.mq
  %i.ms = fcmp olt double %i.mq, %.sroa.10.0.copyload17
  %or.cond20.i.i147 = and i1 %i.mr, %i.ms
  %i.mt = fcmp olt double %.sroa.10.0.copyload17, %i.mq
  %i.mu = fcmp olt double %i.mq, %3
  %i.mv = and i1 %i.mt, %i.mu
  %i.mw = or i1 %or.cond20.i.i147, %i.mv
  br i1 %i.mw, label %clear.exit119.thread178, label %bb.u

bb.u:                                             ; preds = %inBetween.exit.i146, %.split.i148, %.lr.ph.i115
  %i.mx = fsub <2 x double> %i.lx, %i.lk          ; 2 uses
  %shift237 = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fmul <2 x double> %shift237, %i.kq
  %i.my = extractelement <2 x double> %foldExtExtBinop238, i64 0
  %i.mz = extractelement <2 x double> %i.mx, i64 0
  %i.na = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.mz, double %i.my) ; 2 uses
  %i.nb = fcmp ogt double %i.na, 1.000000e-04
  %i.nc = fcmp olt double %i.na, -1.000000e-04
  %i.nd = sext i1 %i.nc to i32
  %i.ne = select i1 %i.nb, i32 1, i32 %i.nd       ; 2 uses
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %bb.v, label %intersect.exit150

bb.v:                                             ; preds = %bb.u
  br i1 %i.lg, label %.split43.i144, label %inBetween.exit42.i142

.split43.i144:                                    ; preds = %bb.v
  %i.ng = fcmp olt double %2, %i.lz
  %i.nh = fcmp olt double %i.lz, %i.jv
  %or.cond.i41.i145 = and i1 %i.ng, %i.nh
  %i.ni = fcmp olt double %i.jv, %i.lz
  %i.nj = fcmp olt double %i.lz, %2
  %i.nk = and i1 %i.ni, %i.nj
  %i.nl = or i1 %or.cond.i41.i145, %i.nk
  br i1 %i.nl, label %clear.exit119.thread178, label %intersect.exit150

inBetween.exit42.i142:                            ; preds = %bb.v
  %i.nm = fcmp olt double %3, %i.ly
  %i.nn = fcmp olt double %i.ly, %.sroa.10.0.copyload17
  %or.cond20.i39.i143 = and i1 %i.nm, %i.nn
  %i.no = fcmp olt double %.sroa.10.0.copyload17, %i.ly
  %i.np = fcmp olt double %i.ly, %3
  %i.nq = and i1 %i.no, %i.np
  %i.nr = or i1 %or.cond20.i39.i143, %i.nq
  br i1 %i.nr, label %clear.exit119.thread178, label %intersect.exit150

intersect.exit150:                                ; preds = %bb.u, %.split43.i144, %inBetween.exit42.i142
  %i.ns = fsub <2 x double> %i.lw, %i.lx          ; 2 uses
  %i.nt = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fsub <2 x double> %i.lh, %i.nt
  %i.nv = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nw = fsub <2 x double> %i.li, %i.nv
  %i.nx = extractelement <2 x double> %i.ns, i64 0
  %i.ny = fneg double %i.nx
  %i.nz = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x double> %i.nw, %i.oa
  %i.oc = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> %i.nu, <2 x double> %i.ob) ; 3 uses
  %i.oe = extractelement <2 x double> %i.od, i64 1
  %i.of = fcmp ogt double %i.oe, 1.000000e-04
  %i.og = fcmp olt <2 x double> %i.od, splat (double -1.000000e-04) ; 2 uses
  %i.oh = extractelement <2 x i1> %i.og, i64 1
  %i.oi = sext i1 %i.oh to i32
  %i.oj = select i1 %i.of, i32 1, i32 %i.oi
  %i.ok = extractelement <2 x double> %i.od, i64 0
  %i.ol = fcmp ogt double %i.ok, 1.000000e-04
  %i.om = extractelement <2 x i1> %i.og, i64 0
  %i.on = sext i1 %i.om to i32
  %i.oo = select i1 %i.ol, i32 1, i32 %i.on
  %i.op = mul nsw i32 %i.ne, %i.mh
  %i.oq = icmp slt i32 %i.op, 0
  %i.or = mul nsw i32 %i.oj, %i.oo
  %i.os = icmp slt i32 %i.or, 0
  %i.ot = select i1 %i.oq, i1 %i.os, i1 false
  br i1 %i.ot, label %clear.exit119.thread178, label %bb.s

.lr.ph27.i105:                                    ; preds = %intersect.exit140, %.preheader.i102
  %indvars.iv32.i106 = phi i64 [ %i.jn, %.preheader.i102 ], [ %indvars.iv.next33.i107, %intersect.exit140 ] ; 3 uses
  %i.ou = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i106
  %i.ov = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i106
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !22
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ox
  %i.oz = load <2 x double>, ptr %i.ou, align 8   ; 4 uses
  %i.pa = load <2 x double>, ptr %i.oy, align 8   ; 6 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 1 ; 4 uses
  %i.pc = extractelement <2 x double> %i.pa, i64 0 ; 4 uses
  %i.pd = fsub <2 x double> %i.oz, %i.lq          ; 2 uses
  %shift240 = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fmul <2 x double> %shift240, %i.kq
  %i.pe = extractelement <2 x double> %foldExtExtBinop241, i64 0
  %i.pf = extractelement <2 x double> %i.pd, i64 0
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.pf, double %i.pe) ; 2 uses
  %i.ph = fcmp ogt double %i.pg, 1.000000e-04
  %i.pi = fcmp olt double %i.pg, -1.000000e-04
  %i.pj = sext i1 %i.pi to i32
  %i.pk = select i1 %i.ph, i32 1, i32 %i.pj       ; 2 uses
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph27.i105
  br i1 %i.ll, label %.split.i138, label %inBetween.exit.i136

.split.i138:                                      ; preds = %bb.w
  %i.pm = extractelement <2 x double> %i.oz, i64 0 ; 4 uses
  %i.pn = fcmp olt double %2, %i.pm
  %i.po = fcmp olt double %i.pm, %i.jv
  %or.cond.i.i139 = and i1 %i.pn, %i.po
  %i.pp = fcmp olt double %i.jv, %i.pm
  %i.pq = fcmp olt double %i.pm, %2
  %i.pr = and i1 %i.pp, %i.pq
  %i.ps = or i1 %or.cond.i.i139, %i.pr
  br i1 %i.ps, label %clear.exit119.thread178, label %bb.x

inBetween.exit.i136:                              ; preds = %bb.w
  %i.pt = extractelement <2 x double> %i.oz, i64 1 ; 4 uses
  %i.pu = fcmp olt double %3, %i.pt
  %i.pv = fcmp olt double %i.pt, %.sroa.10.0.copyload17
  %or.cond20.i.i137 = and i1 %i.pu, %i.pv
  %i.pw = fcmp olt double %.sroa.10.0.copyload17, %i.pt
  %i.px = fcmp olt double %i.pt, %3
  %i.py = and i1 %i.pw, %i.px
  %i.pz = or i1 %or.cond20.i.i137, %i.py
  br i1 %i.pz, label %clear.exit119.thread178, label %bb.x

bb.x:                                             ; preds = %inBetween.exit.i136, %.split.i138, %.lr.ph27.i105
  %i.qa = fsub <2 x double> %i.pa, %i.lq          ; 2 uses
  %shift243 = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop244.a = fmul <2 x double> %shift243, %i.kq
  %i.qb = extractelement <2 x double> %foldExtExtBinop244.a, i64 0
  %i.qc = extractelement <2 x double> %i.qa, i64 0
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.qc, double %i.qb) ; 2 uses
  %i.qe = fcmp ogt double %i.qd, 1.000000e-04
  %i.qf = fcmp olt double %i.qd, -1.000000e-04
  %i.qg = sext i1 %i.qf to i32
  %i.qh = select i1 %i.qe, i32 1, i32 %i.qg       ; 2 uses
  %i.qi = icmp eq i32 %i.qh, 0
  br i1 %i.qi, label %bb.y, label %intersect.exit140

bb.y:                                             ; preds = %bb.x
  br i1 %i.ll, label %.split43.i134, label %inBetween.exit42.i132

.split43.i134:                                    ; preds = %bb.y
  %i.qj = fcmp olt double %2, %i.pc
  %i.qk = fcmp olt double %i.pc, %i.jv
  %or.cond.i41.i135 = and i1 %i.qj, %i.qk
  %i.ql = fcmp olt double %i.jv, %i.pc
  %i.qm = fcmp olt double %i.pc, %2
  %i.qn = and i1 %i.ql, %i.qm
  %i.qo = or i1 %or.cond.i41.i135, %i.qn
  br i1 %i.qo, label %clear.exit119.thread178, label %intersect.exit140

inBetween.exit42.i132:                            ; preds = %bb.y
  %i.qp = fcmp olt double %3, %i.pb
  %i.qq = fcmp olt double %i.pb, %.sroa.10.0.copyload17
  %or.cond20.i39.i133 = and i1 %i.qp, %i.qq
  %i.qr = fcmp olt double %.sroa.10.0.copyload17, %i.pb
  %i.qs = fcmp olt double %i.pb, %3
  %i.qt = and i1 %i.qr, %i.qs
  %i.qu = or i1 %or.cond20.i39.i133, %i.qt
  br i1 %i.qu, label %clear.exit119.thread178, label %intersect.exit140

intersect.exit140:                                ; preds = %bb.x, %.split43.i134, %inBetween.exit42.i132
  %i.qv = fsub <2 x double> %i.oz, %i.pa          ; 2 uses
  %i.qw = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qx = fsub <2 x double> %i.lm, %i.qw
  %i.qy = shufflevector <2 x double> %i.pa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qz = fsub <2 x double> %i.lo, %i.qy
  %i.ra = extractelement <2 x double> %i.qv, i64 0
  %i.rb = fneg double %i.ra
  %i.rc = insertelement <2 x double> poison, double %i.rb, i64 0
  %i.rd = shufflevector <2 x double> %i.rc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = fmul <2 x double> %i.qz, %i.rd
  %i.rf = shufflevector <2 x double> %i.qv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.qx, <2 x double> %i.re) ; 3 uses
  %i.rh = extractelement <2 x double> %i.rg, i64 1
  %i.ri = fcmp ogt double %i.rh, 1.000000e-04
  %i.rj = fcmp olt <2 x double> %i.rg, splat (double -1.000000e-04) ; 2 uses
  %i.rk = extractelement <2 x i1> %i.rj, i64 1
  %i.rl = sext i1 %i.rk to i32
  %i.rm = select i1 %i.ri, i32 1, i32 %i.rl
  %i.rn = extractelement <2 x double> %i.rg, i64 0
  %i.ro = fcmp ogt double %i.rn, 1.000000e-04
  %i.rp = extractelement <2 x i1> %i.rj, i64 0
  %i.rq = sext i1 %i.rp to i32
  %i.rr = select i1 %i.ro, i32 1, i32 %i.rq
  %i.rs = mul nsw i32 %i.qh, %i.pk
  %i.rt = icmp slt i32 %i.rs, 0
  %i.ru = mul nsw i32 %i.rm, %i.rr
  %i.rv = icmp slt i32 %i.ru, 0
  %i.rw = select i1 %i.rt, i1 %i.rv, i1 false     ; 2 uses
  %indvars.iv.next33.i107 = add nsw i64 %indvars.iv32.i106, 1 ; 2 uses
  %lftr.wideiv.i108 = trunc i64 %indvars.iv.next33.i107 to i32
  %exitcond35.not.i109 = icmp eq i32 %i.b, %lftr.wideiv.i108
  %or.cond.i110 = select i1 %i.rw, i1 true, i1 %exitcond35.not.i109
  br i1 %or.cond.i110, label %clear.exit119, label %.lr.ph27.i105, !llvm.loop !35

clear.exit119:                                    ; preds = %intersect.exit140
  br i1 %i.rw, label %clear.exit119.thread178, label %clear.exit119.thread176

clear.exit119.thread176:                          ; preds = %clear.exit119
  %foldExtExtBinop246 = fmul <2 x double> %i.kj, %i.kj
  %i.rx = extractelement <2 x double> %foldExtExtBinop246, i64 0
  %i.ry = extractelement <2 x double> %i.kp, i64 0 ; 2 uses
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.ry, double %i.rx)
  %i.sa = tail call double @llvm.sqrt.f64(double %i.rz)
  br label %clear.exit119.thread178

clear.exit119.thread178:                          ; preds = %intersect.exit150, %inBetween.exit.i146, %inBetween.exit42.i142, %.split.i148, %.split43.i144, %.split43.i134, %.split.i138, %inBetween.exit42.i132, %inBetween.exit.i136, %bb.q, %clear.exit119, %clear.exit119.thread176
  %.sink212 = phi double [ %i.sa, %clear.exit119.thread176 ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %.split43.i134 ], [ 0.000000e+00, %clear.exit119 ], [ 0.000000e+00, %inBetween.exit.i136 ], [ 0.000000e+00, %inBetween.exit42.i132 ], [ 0.000000e+00, %.split.i138 ], [ 0.000000e+00, %.split43.i144 ], [ 0.000000e+00, %.split.i148 ], [ 0.000000e+00, %inBetween.exit42.i142 ], [ 0.000000e+00, %inBetween.exit.i146 ], [ 0.000000e+00, %intersect.exit150 ]
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv199
  store double %.sink212, ptr %i.sb, align 8, !tbaa !24
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge, label %bb.q, !llvm.loop !37

._crit_edge:                                      ; preds = %clear.exit119.thread178, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count202, %clear.exit119.thread178 ]
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, i8 0, i64 16, i1 false)
  ret ptr %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @directVis(double %0, double %1, i32 noundef %2, double %3, double %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = icmp slt i32 %2, 0
  %i.h = icmp slt i32 %5, 0                       ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.preheader, label %.preheader76.sink.split

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %.preheader76.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %5)
  %.128 = tail call i32 @llvm.umax.i32(i32 %2, i32 %5)
  %i.k = zext nneg i32 %. to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %i.p = zext nneg i32 %.128 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22   ; 2 uses
  %i.u = icmp sgt i32 %i.m, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader76, label %.lr.ph, !llvm.loop !39

.preheader76.sink.split:                          ; preds = %bb.c, %bb.b
  %.sink126 = phi i32 [ %5, %bb.b ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = zext nneg i32 %.sink126 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  br label %.preheader76

.preheader76:                                     ; preds = %bb.e, %.preheader76.sink.split, %bb.d
  %.0107 = phi i32 [ %i.ab, %.preheader76.sink.split ], [ %i.t, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.068106 = phi i32 [ %i.z, %.preheader76.sink.split ], [ %i.r, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.069105 = phi i32 [ 0, %.preheader76.sink.split ], [ %i.o, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.ac = icmp slt i32 %.069105, %.068106
  br i1 %i.ac, label %.lr.ph81.preheader, label %.preheader

.lr.ph81.preheader:                               ; preds = %.preheader76
  %i.ad = sext i32 %.069105 to i64
  br label %.lr.ph81

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load double, ptr %i.ak, align 8
  %i.am = load double, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = tail call fastcc zeroext i1 @intersect(double %0, double %1, double %3, double %4, double %i.aj, double %i.al, double %i.am, double %i.ao)
  br i1 %i.ap, label %.loopexit, label %bb.e

bb.f:                                             ; preds = %.lr.ph81
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next90 to i32
  %exitcond92.not = icmp eq i32 %.068106, %lftr.wideiv
  br i1 %exitcond92.not, label %.preheader, label %.lr.ph81, !llvm.loop !40

.preheader:                                       ; preds = %bb.f, %bb.b, %.preheader76
  %.0107111 = phi i32 [ %.0107, %.preheader76 ], [ 0, %bb.b ], [ %.0107, %bb.f ] ; 2 uses
  %i.aq = icmp slt i32 %.0107111, %i.b
  br i1 %i.aq, label %.lr.ph83.preheader, label %.loopexit

.lr.ph83.preheader:                               ; preds = %.preheader
  %i.ar = sext i32 %.0107111 to i64
  br label %.lr.ph83

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.f
  %indvars.iv89 = phi i64 [ %i.ad, %.lr.ph81.preheader ], [ %indvars.iv.next90, %bb.f ] ; 3 uses
  %i.as = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv89 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv89
  %i.au = load i32, ptr %i.at, align 4, !tbaa !22
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.as, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = load double, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = tail call fastcc zeroext i1 @intersect(double %0, double %1, double %3, double %4, double %i.ax, double %i.az, double %i.ba, double %i.bc)
  br i1 %i.bd, label %.loopexit, label %bb.f

.lr.ph83:                                         ; preds = %.lr.ph83, %.lr.ph83.preheader
  %indvars.iv93 = phi i64 [ %i.ar, %.lr.ph83.preheader ], [ %indvars.iv.next94, %.lr.ph83 ] ; 3 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv93 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv93
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.be, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = load double, ptr %i.bi, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = tail call fastcc zeroext i1 @intersect(double %0, double %1, double %3, double %4, double %i.bj, double %i.bl, double %i.bm, double %i.bo) ; 2 uses
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %lftr.wideiv96 = trunc i64 %indvars.iv.next94 to i32
  %exitcond97.not = icmp eq i32 %i.b, %lftr.wideiv96
  %or.cond = select i1 %i.bp, i1 true, i1 %exitcond97.not
  br i1 %or.cond, label %.loopexit.loopexit, label %.lr.ph83, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %.lr.ph83
  %.072.ph = xor i1 %i.bp, true
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph81, %.loopexit.loopexit, %.preheader
  %.072 = phi i1 [ %.072.ph, %.loopexit.loopexit ], [ true, %.preheader ], [ false, %.lr.ph81 ], [ false, %.lr.ph ]
  ret i1 %.072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext i1 @intersect(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7) unnamed_addr #0 {
bb.a:
  %i.a = fsub double %1, %3                       ; 2 uses
  %i.b = fsub double %4, %2
  %i.c = fsub double %5, %3
  %i.d = fsub double %0, %2
  %i.e = fneg double %i.d                         ; 2 uses
  %i.f = fmul double %i.c, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.a, double %i.b, double %i.f) ; 2 uses
  %i.h = fcmp ogt double %i.g, 1.000000e-04
  %i.i = fcmp olt double %i.g, -1.000000e-04
  %i.j = sext i1 %i.i to i32
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = fcmp une double %0, %2
  br i1 %i.m, label %.split, label %inBetween.exit

.split:                                           ; preds = %bb.b
  %i.n = fcmp olt double %0, %4
  %i.o = fcmp olt double %4, %2
  %or.cond.i = and i1 %i.n, %i.o
  %i.p = fcmp olt double %2, %4
  %i.q = fcmp olt double %4, %0
  %i.r = and i1 %i.p, %i.q
  %i.s = or i1 %or.cond.i, %i.r
  br i1 %i.s, label %bb.f, label %bb.c

inBetween.exit:                                   ; preds = %bb.b
  %i.t = fcmp olt double %1, %5
  %i.u = fcmp olt double %5, %3
  %or.cond20.i = and i1 %i.t, %i.u
  %i.v = fcmp olt double %3, %5
  %i.w = fcmp olt double %5, %1
  %i.x = and i1 %i.v, %i.w
  %i.y = or i1 %or.cond20.i, %i.x
  br i1 %i.y, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split, %inBetween.exit, %bb.a
  %i.z = fsub double %6, %2
  %i.aa = fsub double %7, %3
  %i.ab = fmul double %i.aa, %i.e
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.a, double %i.z, double %i.ab) ; 2 uses
  %i.ad = fcmp ogt double %i.ac, 1.000000e-04
  %i.ae = fcmp olt double %i.ac, -1.000000e-04
  %i.af = sext i1 %i.ae to i32
  %i.ag = select i1 %i.ad, i32 1, i32 %i.af       ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp une double %0, %2
  br i1 %i.ai, label %.split43, label %inBetween.exit42

.split43:                                         ; preds = %bb.d
  %i.aj = fcmp olt double %0, %6
  %i.ak = fcmp olt double %6, %2
  %or.cond.i41 = and i1 %i.aj, %i.ak
  %i.al = fcmp olt double %2, %6
  %i.am = fcmp olt double %6, %0
  %i.an = and i1 %i.al, %i.am
  %i.ao = or i1 %or.cond.i41, %i.an
  br i1 %i.ao, label %bb.f, label %bb.e

inBetween.exit42:                                 ; preds = %bb.d
  %i.ap = fcmp olt double %1, %7
  %i.aq = fcmp olt double %7, %3
  %or.cond20.i39 = and i1 %i.ap, %i.aq
  %i.ar = fcmp olt double %3, %7
  %i.as = fcmp olt double %7, %1
  %i.at = and i1 %i.ar, %i.as
  %i.au = or i1 %or.cond20.i39, %i.at
  br i1 %i.au, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split43, %inBetween.exit42, %bb.c
  %i.av = fsub double %5, %7
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %0, i64 1
  %i.ay = insertelement <2 x double> poison, double %6, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x double> %i.ax, %i.az
  %i.bb = insertelement <2 x double> poison, double %3, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %1, i64 1
  %i.bd = insertelement <2 x double> poison, double %7, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x double> %i.bc, %i.be
  %i.bg = fsub double %4, %6
  %i.bh = fneg double %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.bf, %i.bj
  %i.bl = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.ba, <2 x double> %i.bk) ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 1
  %i.bp = fcmp ogt double %i.bo, 1.000000e-04
  %i.bq = fcmp olt <2 x double> %i.bn, splat (double -1.000000e-04) ; 2 uses
  %i.br = extractelement <2 x i1> %i.bq, i64 1
  %i.bs = sext i1 %i.br to i32
  %i.bt = select i1 %i.bp, i32 1, i32 %i.bs
  %i.bu = extractelement <2 x double> %i.bn, i64 0
  %i.bv = fcmp ogt double %i.bu, 1.000000e-04
  %i.bw = extractelement <2 x i1> %i.bq, i64 0
  %i.bx = sext i1 %i.bw to i32
  %i.by = select i1 %i.bv, i32 1, i32 %i.bx
  %i.bz = mul nsw i32 %i.ag, %i.k
  %i.ca = icmp slt i32 %i.bz, 0
  %i.cb = mul nsw i32 %i.bt, %i.by
  %i.cc = icmp slt i32 %i.cb, 0
  %i.cd = select i1 %i.ca, i1 %i.cc, i1 false
  br label %bb.f

bb.f:                                             ; preds = %.split43, %.split, %inBetween.exit42, %inBetween.exit, %bb.e
  %.0 = phi i1 [ %i.cd, %bb.e ], [ true, %inBetween.exit ], [ true, %inBetween.exit42 ], [ true, %.split ], [ true, %.split43 ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

declare zeroext i1 @in_poly(ptr, i64, double, double) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS5Pxy_t", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 double", !12, i64 0}
!14 = !{!"vconfig_s", !6, i64 0, !6, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !13, i64 40}
!15 = !{!14, !6, i64 4}
!16 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!14, !10, i64 8}
!20 = !{!14, !11, i64 24}
!21 = !{!14, !11, i64 32}
!22 = !{!6, !6, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!14, !11, i64 16}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !32}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!"p1 double", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!14, !13, i64 40}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = !{!14, !6, i64 0}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
end_hunk_0
