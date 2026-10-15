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
  br i1 %i.t, label %.lr.ph68.i, label %compVis.exit

.lr.ph68.i:                                       ; preds = %allocArray.exit
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph68.i
  %indvars.iv71.i = phi i64 [ 0, %.lr.ph68.i ], [ %indvars.iv.next72.i, %._crit_edge.i ] ; 8 uses
  %indvars73.i = trunc i64 %indvars.iv71.i to i32 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv71.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv71.i ; 3 uses
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
  %sqrt.i.i = tail call double @llvm.sqrt.f64(double %i.bz) ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv71.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bo
  store double %sqrt.i.i, ptr %i.cc, align 8, !tbaa !24
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bo
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv71.i
  store double %sqrt.i.i, ptr %i.cf, align 8, !tbaa !24
  %i.cg = add i32 %indvars73.i, -1                ; 2 uses
  %i.ch = icmp eq i32 %i.bm, %i.cg
  %i.ci = add i32 %indvars73.i, -2
  %.058.i = select i1 %i.ch, i32 %i.ci, i32 %i.cg ; 2 uses
  %i.cj = icmp sgt i32 %.058.i, -1
  br i1 %i.cj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv71.i
  %1 = load i32, ptr %i.ck, align 4, !tbaa !22
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %2
  %i.cl = zext nneg i32 %.058.i to i64
  br label %bb.i

bb.i:                                             ; preds = %clear.exit.i, %.lr.ph.i
  %indvars.iv.i4 = phi i64 [ %i.cl, %.lr.ph.i ], [ %indvars.iv.next.i5, %clear.exit.i ] ; 7 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load <2 x double>, ptr %i.bn, align 8   ; 7 uses
  %i.cp = load double, ptr %i.br, align 8         ; 7 uses
  %i.cq = load <2 x double>, ptr %i.cm, align 8   ; 8 uses
  %i.cr = load double, ptr %i.cn, align 8         ; 8 uses
  %i.cs = extractelement <2 x double> %i.co, i64 0 ; 5 uses
  %i.ct = load <2 x double>, ptr %i.bp, align 8   ; 3 uses
  %i.cu = load double, ptr %i.bu, align 8
  %i.cv = load <2 x double>, ptr %3, align 8      ; 2 uses
  %i.cw = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x double> %i.ct, double %i.cp, i64 0 ; 3 uses
  %i.cz = fsub <2 x double> %i.cx, %i.cy
  %i.da = shufflevector <2 x double> %i.cv, <2 x double> %i.co, <2 x i32> <i32 0, i32 2>
  %i.db = shufflevector <2 x double> %i.co, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dc = fsub <2 x double> %i.da, %i.db          ; 2 uses
  %i.dd = shufflevector <2 x double> %i.cv, <2 x double> %i.cy, <2 x i32> <i32 1, i32 2>
  %i.de = fsub <2 x double> %i.dd, %i.cy          ; 2 uses
  %i.df = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fsub <2 x double> %i.df, %i.db
  %i.dh = fneg <2 x double> %i.dg
  %i.di = fmul <2 x double> %i.de, %i.dh
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.dc, <2 x double> %i.di)
  %i.dk = fcmp uge <2 x double> %i.dj, splat (double -1.000000e-04) ; 2 uses
  %i.dl = fsub double %i.cu, %i.cp
  %foldExtExtBinop = fsub <2 x double> %i.ct, %i.co
  %i.dm = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dn = fneg double %i.dm
  %i.do = extractelement <2 x double> %i.de, i64 0
  %i.dp = fmul double %i.do, %i.dn
  %i.dq = extractelement <2 x double> %i.dc, i64 0
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dq, double %i.dp)
  %i.ds = fcmp ogt double %i.dr, 1.000000e-04
  %i.dt = extractelement <2 x i1> %i.dk, i64 0    ; 2 uses
  %i.du = extractelement <2 x i1> %i.dk, i64 1    ; 2 uses
  %i.dv = select i1 %i.du, i1 %i.dt, i1 false
  %i.dw = select i1 %i.du, i1 true, i1 %i.dt
  %.0.i.i.i = select i1 %i.ds, i1 %i.dv, i1 %i.dw
  br i1 %.0.i.i.i, label %bb.j, label %clear.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dx = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !22
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !22
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = extractelement <2 x double> %i.cq, i64 0 ; 5 uses
  %i.ei = load <2 x double>, ptr %i.eb, align 8   ; 3 uses
  %i.ej = load double, ptr %i.eg, align 8
  %i.ek = load <2 x double>, ptr %i.ef, align 8   ; 2 uses
  %i.el = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = insertelement <2 x double> %i.ei, double %i.cr, i64 0 ; 3 uses
  %i.eo = fsub <2 x double> %i.em, %i.en          ; 4 uses
  %i.ep = shufflevector <2 x double> %i.ek, <2 x double> %i.cq, <2 x i32> <i32 0, i32 2>
  %i.eq = shufflevector <2 x double> %i.cq, <2 x double> %i.ei, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.er = fsub <2 x double> %i.ep, %i.eq          ; 2 uses
  %i.es = shufflevector <2 x double> %i.ek, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.et = fsub <2 x double> %i.es, %i.en          ; 2 uses
  %i.eu = fsub <2 x double> %i.dx, %i.eq          ; 2 uses
  %i.ev = fneg <2 x double> %i.eu                 ; 3 uses
  %i.ew = fmul <2 x double> %i.et, %i.ev
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.er, <2 x double> %i.ew)
  %i.ey = fcmp uge <2 x double> %i.ex, splat (double -1.000000e-04) ; 2 uses
  %i.ez = fsub double %i.ej, %i.cr
  %foldExtExtBinop12 = fsub <2 x double> %i.ei, %i.cq
  %i.fa = extractelement <2 x double> %foldExtExtBinop12, i64 0
  %i.fb = fneg double %i.fa
  %i.fc = extractelement <2 x double> %i.et, i64 0
  %i.fd = fmul double %i.fc, %i.fb
  %i.fe = extractelement <2 x double> %i.er, i64 0
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fe, double %i.fd)
  %i.fg = fcmp ogt double %i.ff, 1.000000e-04
  %i.fh = extractelement <2 x i1> %i.ey, i64 0    ; 2 uses
  %i.fi = extractelement <2 x i1> %i.ey, i64 1    ; 2 uses
  %i.fj = select i1 %i.fi, i1 %i.fh, i1 false
  %i.fk = select i1 %i.fi, i1 true, i1 %i.fh
  %.0.i.i61.i = select i1 %i.fg, i1 %i.fj, i1 %i.fk
  br i1 %.0.i.i61.i, label %.lr.ph.preheader.i.i, label %clear.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.fl = fcmp une double %i.cs, %i.eh            ; 2 uses
  %i.fm = shufflevector <2 x double> %i.cq, <2 x double> %i.co, <2 x i32> <i32 0, i32 2>
  %i.fn = shufflevector <2 x double> %i.cq, <2 x double> %i.co, <2 x i32> <i32 1, i32 3>
  %i.fo = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.fp = insertelement <2 x double> %i.cq, double %i.cr, i64 1 ; 2 uses
  br label %.lr.ph.i.i

bb.k:                                             ; preds = %intersect.exit.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !22
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [16 x i8], ptr %i.bg, i64 %i.ft
  %i.fv = load <2 x double>, ptr %i.fq, align 8   ; 4 uses
  %i.fw = load <2 x double>, ptr %i.fu, align 8   ; 6 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1 ; 4 uses
  %i.fy = extractelement <2 x double> %i.fw, i64 0 ; 4 uses
  %i.fz = fsub <2 x double> %i.fv, %i.fp          ; 2 uses
  %shift = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop14 = fmul <2 x double> %shift, %i.ev
  %i.ga = extractelement <2 x double> %foldExtExtBinop14, i64 0
  %i.gb = extractelement <2 x double> %i.fz, i64 0
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.gb, double %i.ga) ; 2 uses
  %i.gd = fcmp ogt double %i.gc, 1.000000e-04
  %i.ge = fcmp olt double %i.gc, -1.000000e-04
  %i.gf = sext i1 %i.ge to i32
  %i.gg = select i1 %i.gd, i32 1, i32 %i.gf       ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.fl, label %.split.i.i, label %inBetween.exit.i.i

.split.i.i:                                       ; preds = %bb.l
  %i.gi = extractelement <2 x double> %i.fv, i64 0 ; 4 uses
  %i.gj = fcmp olt double %i.cs, %i.gi
  %i.gk = fcmp olt double %i.gi, %i.eh
  %or.cond.i.i.i = and i1 %i.gj, %i.gk
  %i.gl = fcmp olt double %i.eh, %i.gi
  %i.gm = fcmp olt double %i.gi, %i.cs
  %i.gn = and i1 %i.gl, %i.gm
  %i.go = or i1 %or.cond.i.i.i, %i.gn
  br i1 %i.go, label %clear.exit.i, label %bb.m

inBetween.exit.i.i:                               ; preds = %bb.l
  %i.gp = extractelement <2 x double> %i.fv, i64 1 ; 4 uses
  %i.gq = fcmp olt double %i.cp, %i.gp
  %i.gr = fcmp olt double %i.gp, %i.cr
  %or.cond20.i.i.i = and i1 %i.gq, %i.gr
  %i.gs = fcmp olt double %i.cr, %i.gp
  %i.gt = fcmp olt double %i.gp, %i.cp
  %i.gu = and i1 %i.gs, %i.gt
  %i.gv = or i1 %or.cond20.i.i.i, %i.gu
  br i1 %i.gv, label %clear.exit.i, label %bb.m

bb.m:                                             ; preds = %inBetween.exit.i.i, %.split.i.i, %.lr.ph.i.i
  %i.gw = fsub <2 x double> %i.fw, %i.fp          ; 2 uses
  %shift16 = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop17 = fmul <2 x double> %shift16, %i.ev
  %i.gx = extractelement <2 x double> %foldExtExtBinop17, i64 0
  %i.gy = extractelement <2 x double> %i.gw, i64 0
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.gy, double %i.gx) ; 2 uses
  %i.ha = fcmp ogt double %i.gz, 1.000000e-04
  %i.hb = fcmp olt double %i.gz, -1.000000e-04
  %i.hc = sext i1 %i.hb to i32
  %i.hd = select i1 %i.ha, i32 1, i32 %i.hc       ; 2 uses
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.n, label %intersect.exit.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.fl, label %.split43.i.i, label %inBetween.exit42.i.i

.split43.i.i:                                     ; preds = %bb.n
  %i.hf = fcmp olt double %i.cs, %i.fy
  %i.hg = fcmp olt double %i.fy, %i.eh
  %or.cond.i41.i.i = and i1 %i.hf, %i.hg
  %i.hh = fcmp olt double %i.eh, %i.fy
  %i.hi = fcmp olt double %i.fy, %i.cs
  %i.hj = and i1 %i.hh, %i.hi
  %i.hk = or i1 %or.cond.i41.i.i, %i.hj
  br i1 %i.hk, label %clear.exit.i, label %intersect.exit.i

inBetween.exit42.i.i:                             ; preds = %bb.n
  %i.hl = fcmp olt double %i.cp, %i.fx
  %i.hm = fcmp olt double %i.fx, %i.cr
  %or.cond20.i39.i.i = and i1 %i.hl, %i.hm
  %i.hn = fcmp olt double %i.cr, %i.fx
  %i.ho = fcmp olt double %i.fx, %i.cp
  %i.hp = and i1 %i.hn, %i.ho
  %i.hq = or i1 %or.cond20.i39.i.i, %i.hp
  br i1 %i.hq, label %clear.exit.i, label %intersect.exit.i

intersect.exit.i:                                 ; preds = %inBetween.exit42.i.i, %.split43.i.i, %bb.m
  %i.hr = fsub <2 x double> %i.fv, %i.fw          ; 2 uses
  %i.hs = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ht = fsub <2 x double> %i.fm, %i.hs
  %i.hu = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hv = fsub <2 x double> %i.fn, %i.hu
  %i.hw = extractelement <2 x double> %i.hr, i64 0
  %i.hx = fneg double %i.hw
  %i.hy = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x double> %i.hv, %i.hz
  %i.ib = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.ht, <2 x double> %i.ia) ; 3 uses
  %i.id = extractelement <2 x double> %i.ic, i64 1
  %i.ie = fcmp ogt double %i.id, 1.000000e-04
  %i.if = fcmp olt <2 x double> %i.ic, splat (double -1.000000e-04) ; 2 uses
  %i.ig = extractelement <2 x i1> %i.if, i64 1
  %i.ih = sext i1 %i.ig to i32
  %i.ii = select i1 %i.ie, i32 1, i32 %i.ih
  %i.ij = extractelement <2 x double> %i.ic, i64 0
  %i.ik = fcmp ogt double %i.ij, 1.000000e-04
  %i.il = extractelement <2 x i1> %i.if, i64 0
  %i.im = sext i1 %i.il to i32
  %i.in = select i1 %i.ik, i32 1, i32 %i.im
  %i.io = mul nsw i32 %i.hd, %i.gg
  %i.ip = icmp slt i32 %i.io, 0
  %i.iq = mul nsw i32 %i.ii, %i.in
  %i.ir = icmp slt i32 %i.iq, 0
  %i.is = select i1 %i.ip, i1 %i.ir, i1 false
  br i1 %i.is, label %clear.exit.i, label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  %foldExtExtBinop19 = fmul <2 x double> %i.eo, %i.eo
  %i.it = extractelement <2 x double> %foldExtExtBinop19, i64 0
  %i.iu = extractelement <2 x double> %i.eu, i64 0 ; 2 uses
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.iu, double %i.it)
  %sqrt.i62.i = tail call double @llvm.sqrt.f64(double %i.iv) ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i4
  store double %sqrt.i62.i, ptr %i.iw, align 8, !tbaa !24
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i4
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv71.i
  store double %sqrt.i62.i, ptr %i.iz, align 8, !tbaa !24
  br label %clear.exit.i

clear.exit.i:                                     ; preds = %intersect.exit.i, %inBetween.exit42.i.i, %.split43.i.i, %inBetween.exit.i.i, %.split.i.i, %.loopexit.i, %bb.j, %bb.i
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i4, -1
  %i.ja = icmp sgt i64 %indvars.iv.i4, 0
  br i1 %i.ja, label %bb.i, label %._crit_edge.i, !llvm.loop !28

._crit_edge.i:                                    ; preds = %clear.exit.i, %bb.h
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond.not.i3 = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count.i.i
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
  br i1 %i.w, label %bb.g, label %polyhit.exit.thread154

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
  br i1 %i.aj, label %bb.h, label %polyhit.exit.thread154

bb.h:                                             ; preds = %polyhit.exit.thread, %polyhit.exit
  %.095153 = phi i32 [ %i.ai, %polyhit.exit.thread ], [ %1, %polyhit.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.am = zext nneg i32 %.095153 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  br label %polyhit.exit.thread154

polyhit.exit.thread154:                           ; preds = %bb.f, %polyhit.exit, %bb.h
  %.093 = phi i32 [ %i.ao, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %.0 = phi i32 [ %i.aq, %bb.h ], [ %i.b, %polyhit.exit ], [ %i.b, %bb.f ] ; 6 uses
  %i.ar = icmp sgt i32 %.093, 0                   ; 2 uses
  br i1 %i.ar, label %.lr.ph, label %.preheader183

.lr.ph:                                           ; preds = %polyhit.exit.thread154
  %wide.trip.count.i = zext nneg i32 %.093 to i64 ; 2 uses
  %i.as = icmp slt i32 %.0, %i.b
  %i.at = sext i32 %.0 to i64
  %i.au = insertelement <2 x double> poison, double %3, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> poison, double %2, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.i

.preheader183:                                    ; preds = %clear.exit.thread166, %polyhit.exit.thread154
  %i.az = icmp slt i32 %.093, %.0
  br i1 %i.az, label %.lr.ph189.preheader, label %.preheader

.lr.ph189.preheader:                              ; preds = %.preheader183
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

bb.i:                                             ; preds = %.lr.ph, %clear.exit.thread166
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %clear.exit.thread166 ] ; 5 uses
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
  br i1 %.0.i, label %.lr.ph.preheader.i, label %clear.exit.thread166

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.cu = fcmp une double %2, %i.bj               ; 4 uses
  %i.cv = insertelement <2 x double> %i.bi, double %2, i64 1 ; 2 uses
  %i.cw = insertelement <2 x double> %i.ay, double %.sroa.10.0.copyload, i64 0
  %i.cx = extractelement <2 x double> %i.bx, i64 0 ; 4 uses
  %i.cy = insertelement <2 x double> %i.bi, double %.sroa.10.0.copyload, i64 1 ; 4 uses
  br label %.lr.ph.i

bb.j:                                             ; preds = %intersect.exit131
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i.loopexit, label %.lr.ph.i, !llvm.loop !0

.preheader.i.loopexit:                            ; preds = %bb.j
  br i1 %i.as, label %.lr.ph27.i.preheader, label %clear.exit.thread164

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
  %foldExtExtBinop217 = fmul <2 x double> %shift, %i.ce
  %i.dl = extractelement <2 x double> %foldExtExtBinop217, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 0
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dm, double %i.dl) ; 2 uses
  %i.do = fcmp ogt double %i.dn, 1.000000e-04
  %i.dp = fcmp olt double %i.dn, -1.000000e-04
  %i.dq = sext i1 %i.dp to i32
  %i.dr = select i1 %i.do, i32 1, i32 %i.dq       ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %i.cu, label %.split.i129, label %inBetween.exit.i127

.split.i129:                                      ; preds = %bb.k
  %i.dt = extractelement <2 x double> %i.dg, i64 0 ; 4 uses
  %i.du = fcmp olt double %2, %i.dt
  %i.dv = fcmp olt double %i.dt, %i.bj
  %or.cond.i.i130 = and i1 %i.du, %i.dv
  %i.dw = fcmp olt double %i.bj, %i.dt
  %i.dx = fcmp olt double %i.dt, %2
  %i.dy = and i1 %i.dw, %i.dx
  %i.dz = or i1 %or.cond.i.i130, %i.dy
  br i1 %i.dz, label %clear.exit.thread166, label %bb.l

inBetween.exit.i127:                              ; preds = %bb.k
  %i.ea = extractelement <2 x double> %i.dg, i64 1 ; 4 uses
  %i.eb = fcmp olt double %3, %i.ea
  %i.ec = fcmp olt double %i.ea, %.sroa.10.0.copyload
  %or.cond20.i.i128 = and i1 %i.eb, %i.ec
  %i.ed = fcmp olt double %.sroa.10.0.copyload, %i.ea
  %i.ee = fcmp olt double %i.ea, %3
  %i.ef = and i1 %i.ed, %i.ee
  %i.eg = or i1 %or.cond20.i.i128, %i.ef
  br i1 %i.eg, label %clear.exit.thread166, label %bb.l

bb.l:                                             ; preds = %inBetween.exit.i127, %.split.i129, %.lr.ph.i
  %i.eh = fsub <2 x double> %i.dh, %i.cy          ; 2 uses
  %shift219 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop220 = fmul <2 x double> %shift219, %i.ce
  %i.ei = extractelement <2 x double> %foldExtExtBinop220, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 0
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.ej, double %i.ei) ; 2 uses
  %i.el = fcmp ogt double %i.ek, 1.000000e-04
  %i.em = fcmp olt double %i.ek, -1.000000e-04
  %i.en = sext i1 %i.em to i32
  %i.eo = select i1 %i.el, i32 1, i32 %i.en       ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.m, label %intersect.exit131

bb.m:                                             ; preds = %bb.l
  br i1 %i.cu, label %.split43.i125, label %inBetween.exit42.i123

.split43.i125:                                    ; preds = %bb.m
  %i.eq = fcmp olt double %2, %i.dj
  %i.er = fcmp olt double %i.dj, %i.bj
  %or.cond.i41.i126 = and i1 %i.eq, %i.er
  %i.es = fcmp olt double %i.bj, %i.dj
  %i.et = fcmp olt double %i.dj, %2
  %i.eu = and i1 %i.es, %i.et
  %i.ev = or i1 %or.cond.i41.i126, %i.eu
  br i1 %i.ev, label %clear.exit.thread166, label %intersect.exit131

inBetween.exit42.i123:                            ; preds = %bb.m
  %i.ew = fcmp olt double %3, %i.di
  %i.ex = fcmp olt double %i.di, %.sroa.10.0.copyload
  %or.cond20.i39.i124 = and i1 %i.ew, %i.ex
  %i.ey = fcmp olt double %.sroa.10.0.copyload, %i.di
  %i.ez = fcmp olt double %i.di, %3
  %i.fa = and i1 %i.ey, %i.ez
  %i.fb = or i1 %or.cond20.i39.i124, %i.fa
  br i1 %i.fb, label %clear.exit.thread166, label %intersect.exit131

intersect.exit131:                                ; preds = %bb.l, %.split43.i125, %inBetween.exit42.i123
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
  br i1 %i.gd, label %clear.exit.thread166, label %bb.j

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
  %shift222 = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop223 = fmul <2 x double> %shift222, %i.ce
  %i.go = extractelement <2 x double> %foldExtExtBinop223, i64 0
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
  br i1 %i.hc, label %clear.exit.thread166, label %bb.o

inBetween.exit.i:                                 ; preds = %bb.n
  %i.hd = extractelement <2 x double> %i.gj, i64 1 ; 4 uses
  %i.he = fcmp olt double %3, %i.hd
  %i.hf = fcmp olt double %i.hd, %.sroa.10.0.copyload
  %or.cond20.i.i = and i1 %i.he, %i.hf
  %i.hg = fcmp olt double %.sroa.10.0.copyload, %i.hd
  %i.hh = fcmp olt double %i.hd, %3
  %i.hi = and i1 %i.hg, %i.hh
  %i.hj = or i1 %or.cond20.i.i, %i.hi
  br i1 %i.hj, label %clear.exit.thread166, label %bb.o

bb.o:                                             ; preds = %inBetween.exit.i, %.split.i, %.lr.ph27.i
  %i.hk = fsub <2 x double> %i.gk, %i.cy          ; 2 uses
  %shift225 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop226 = fmul <2 x double> %shift225, %i.ce
  %i.hl = extractelement <2 x double> %foldExtExtBinop226, i64 0
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
  br i1 %i.hy, label %clear.exit.thread166, label %intersect.exit

inBetween.exit42.i:                               ; preds = %bb.p
  %i.hz = fcmp olt double %3, %i.gl
  %i.ia = fcmp olt double %i.gl, %.sroa.10.0.copyload
  %or.cond20.i39.i = and i1 %i.hz, %i.ia
  %i.ib = fcmp olt double %.sroa.10.0.copyload, %i.gl
  %i.ic = fcmp olt double %i.gl, %3
  %i.id = and i1 %i.ib, %i.ic
  %i.ie = or i1 %or.cond20.i39.i, %i.id
  br i1 %i.ie, label %clear.exit.thread166, label %intersect.exit

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
  br i1 %i.jg, label %clear.exit.thread166, label %clear.exit.thread164

clear.exit.thread164:                             ; preds = %.preheader.i.loopexit, %clear.exit
  %foldExtExtBinop228 = fmul <2 x double> %i.bx, %i.bx
  %i.jh = extractelement <2 x double> %foldExtExtBinop228, i64 0
  %i.ji = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jh)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.jj)
  br label %clear.exit.thread166

clear.exit.thread166:                             ; preds = %intersect.exit131, %inBetween.exit.i127, %inBetween.exit42.i123, %.split.i129, %.split43.i125, %.split43.i, %.split.i, %inBetween.exit42.i, %inBetween.exit.i, %bb.i, %clear.exit, %clear.exit.thread164
  %sqrt.i.sink = phi double [ %sqrt.i, %clear.exit.thread164 ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.split43.i ], [ 0.000000e+00, %clear.exit ], [ 0.000000e+00, %inBetween.exit.i ], [ 0.000000e+00, %inBetween.exit42.i ], [ 0.000000e+00, %.split.i ], [ 0.000000e+00, %.split43.i125 ], [ 0.000000e+00, %.split.i129 ], [ 0.000000e+00, %inBetween.exit42.i123 ], [ 0.000000e+00, %inBetween.exit.i127 ], [ 0.000000e+00, %intersect.exit131 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double %sqrt.i.sink, ptr %i.jk, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader183, label %bb.i, !llvm.loop !36

.preheader:                                       ; preds = %.lr.ph189.preheader, %.preheader183
  %i.jl = icmp slt i32 %.0, %i.b
  br i1 %i.jl, label %.lr.ph191, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.b to i64
  br label %._crit_edge

.lr.ph191:                                        ; preds = %.preheader
  %wide.trip.count.i114 = zext nneg i32 %.093 to i64
  %i.jm = sext i32 %.0 to i64                     ; 2 uses
  %wide.trip.count203 = sext i32 %i.b to i64      ; 2 uses
  %i.jn = insertelement <2 x double> poison, double %3, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> poison, double %2, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = insertelement <2 x double> poison, double %3, i64 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph191, %clear.exit119.thread179
  %indvars.iv200 = phi i64 [ %i.jm, %.lr.ph191 ], [ %indvars.iv.next201, %clear.exit119.thread179 ] ; 5 uses
  %i.js = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv200 ; 2 uses
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jt = load <2 x double>, ptr %i.js, align 8, !tbaa !24 ; 9 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0 ; 10 uses
  %.sroa.10.0.copyload17 = load double, ptr %.sroa.10.0..sroa_idx16, align 8, !tbaa !24 ; 13 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv200
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !22
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv200
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !22
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ke = load <2 x double>, ptr %i.jy, align 8   ; 3 uses
  %i.kf = load double, ptr %i.kd, align 8
  %i.kg = load <2 x double>, ptr %i.kc, align 8   ; 2 uses
  %i.kh = insertelement <2 x double> %i.ke, double %.sroa.10.0.copyload17, i64 0 ; 3 uses
  %i.ki = fsub <2 x double> %i.jo, %i.kh          ; 5 uses
  %i.kj = shufflevector <2 x double> %i.kg, <2 x double> %i.jt, <2 x i32> <i32 0, i32 2>
  %i.kk = shufflevector <2 x double> %i.jt, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kl = fsub <2 x double> %i.kj, %i.kk          ; 2 uses
  %i.km = shufflevector <2 x double> %i.kg, <2 x double> %i.kh, <2 x i32> <i32 1, i32 2>
  %i.kn = fsub <2 x double> %i.km, %i.kh          ; 2 uses
  %i.ko = fsub <2 x double> %i.jq, %i.kk          ; 2 uses
  %i.kp = fneg <2 x double> %i.ko                 ; 5 uses
  %i.kq = fmul <2 x double> %i.kn, %i.kp
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.kl, <2 x double> %i.kq)
  %i.ks = fcmp uge <2 x double> %i.kr, splat (double -1.000000e-04) ; 2 uses
  %i.kt = fsub double %i.kf, %.sroa.10.0.copyload17
  %foldExtExtBinop230 = fsub <2 x double> %i.ke, %i.jt
  %i.ku = extractelement <2 x double> %foldExtExtBinop230, i64 0
  %i.kv = fneg double %i.ku
  %i.kw = extractelement <2 x double> %i.kn, i64 0
  %i.kx = fmul double %i.kw, %i.kv
  %i.ky = extractelement <2 x double> %i.kl, i64 0
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.kt, double %i.ky, double %i.kx)
  %i.la = fcmp ogt double %i.kz, 1.000000e-04
  %i.lb = extractelement <2 x i1> %i.ks, i64 0    ; 2 uses
  %i.lc = extractelement <2 x i1> %i.ks, i64 1    ; 2 uses
  %i.ld = select i1 %i.lc, i1 %i.lb, i1 false
  %i.le = select i1 %i.lc, i1 true, i1 %i.lb
  %.0.i101 = select i1 %i.la, i1 %i.ld, i1 %i.le
  br i1 %.0.i101, label %bb.r, label %clear.exit119.thread179

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %.lr.ph.preheader.i113, label %.preheader.i102

.lr.ph.preheader.i113:                            ; preds = %bb.r
  %i.lf = fcmp une double %2, %i.ju               ; 2 uses
  %i.lg = insertelement <2 x double> %i.jt, double %2, i64 1
  %i.lh = insertelement <2 x double> %i.jr, double %.sroa.10.0.copyload17, i64 0
  %i.li = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.lj = insertelement <2 x double> %i.jt, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph.i115

bb.s:                                             ; preds = %intersect.exit151
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i116, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i114
  br i1 %exitcond.not.i118, label %.preheader.i102, label %.lr.ph.i115, !llvm.loop !0

.preheader.i102:                                  ; preds = %bb.s, %bb.r
  %i.lk = fcmp une double %2, %i.ju               ; 2 uses
  %i.ll = insertelement <2 x double> %i.jt, double %2, i64 1
  %i.lm = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ln = insertelement <2 x double> %i.lm, double %3, i64 1
  %i.lo = extractelement <2 x double> %i.ki, i64 0 ; 2 uses
  %i.lp = insertelement <2 x double> %i.jt, double %.sroa.10.0.copyload17, i64 1 ; 2 uses
  br label %.lr.ph27.i105

.lr.ph.i115:                                      ; preds = %bb.s, %.lr.ph.preheader.i113
  %indvars.iv.i116 = phi i64 [ 0, %.lr.ph.preheader.i113 ], [ %indvars.iv.next.i117, %bb.s ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i116
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i116
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !22
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.lt
  %i.lv = load <2 x double>, ptr %i.lq, align 8   ; 4 uses
  %i.lw = load <2 x double>, ptr %i.lu, align 8   ; 6 uses
  %i.lx = extractelement <2 x double> %i.lw, i64 1 ; 4 uses
  %i.ly = extractelement <2 x double> %i.lw, i64 0 ; 4 uses
  %i.lz = fsub <2 x double> %i.lv, %i.lj          ; 2 uses
  %shift232 = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop233 = fmul <2 x double> %shift232, %i.kp
  %i.ma = extractelement <2 x double> %foldExtExtBinop233, i64 0
  %i.mb = extractelement <2 x double> %i.lz, i64 0
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.li, double %i.mb, double %i.ma) ; 2 uses
  %i.md = fcmp ogt double %i.mc, 1.000000e-04
  %i.me = fcmp olt double %i.mc, -1.000000e-04
  %i.mf = sext i1 %i.me to i32
  %i.mg = select i1 %i.md, i32 1, i32 %i.mf       ; 2 uses
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i115
  br i1 %i.lf, label %.split.i149, label %inBetween.exit.i147

.split.i149:                                      ; preds = %bb.t
  %i.mi = extractelement <2 x double> %i.lv, i64 0 ; 4 uses
  %i.mj = fcmp olt double %2, %i.mi
  %i.mk = fcmp olt double %i.mi, %i.ju
  %or.cond.i.i150 = and i1 %i.mj, %i.mk
  %i.ml = fcmp olt double %i.ju, %i.mi
  %i.mm = fcmp olt double %i.mi, %2
  %i.mn = and i1 %i.ml, %i.mm
  %i.mo = or i1 %or.cond.i.i150, %i.mn
  br i1 %i.mo, label %clear.exit119.thread179, label %bb.u

inBetween.exit.i147:                              ; preds = %bb.t
  %i.mp = extractelement <2 x double> %i.lv, i64 1 ; 4 uses
  %i.mq = fcmp olt double %3, %i.mp
  %i.mr = fcmp olt double %i.mp, %.sroa.10.0.copyload17
  %or.cond20.i.i148 = and i1 %i.mq, %i.mr
  %i.ms = fcmp olt double %.sroa.10.0.copyload17, %i.mp
  %i.mt = fcmp olt double %i.mp, %3
  %i.mu = and i1 %i.ms, %i.mt
  %i.mv = or i1 %or.cond20.i.i148, %i.mu
  br i1 %i.mv, label %clear.exit119.thread179, label %bb.u

bb.u:                                             ; preds = %inBetween.exit.i147, %.split.i149, %.lr.ph.i115
  %i.mw = fsub <2 x double> %i.lw, %i.lj          ; 2 uses
  %shift235 = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop236 = fmul <2 x double> %shift235, %i.kp
  %i.mx = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.my = extractelement <2 x double> %i.mw, i64 0
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.li, double %i.my, double %i.mx) ; 2 uses
  %i.na = fcmp ogt double %i.mz, 1.000000e-04
  %i.nb = fcmp olt double %i.mz, -1.000000e-04
  %i.nc = sext i1 %i.nb to i32
  %i.nd = select i1 %i.na, i32 1, i32 %i.nc       ; 2 uses
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.v, label %intersect.exit151

bb.v:                                             ; preds = %bb.u
  br i1 %i.lf, label %.split43.i145, label %inBetween.exit42.i143

.split43.i145:                                    ; preds = %bb.v
  %i.nf = fcmp olt double %2, %i.ly
  %i.ng = fcmp olt double %i.ly, %i.ju
  %or.cond.i41.i146 = and i1 %i.nf, %i.ng
  %i.nh = fcmp olt double %i.ju, %i.ly
  %i.ni = fcmp olt double %i.ly, %2
  %i.nj = and i1 %i.nh, %i.ni
  %i.nk = or i1 %or.cond.i41.i146, %i.nj
  br i1 %i.nk, label %clear.exit119.thread179, label %intersect.exit151

inBetween.exit42.i143:                            ; preds = %bb.v
  %i.nl = fcmp olt double %3, %i.lx
  %i.nm = fcmp olt double %i.lx, %.sroa.10.0.copyload17
  %or.cond20.i39.i144 = and i1 %i.nl, %i.nm
  %i.nn = fcmp olt double %.sroa.10.0.copyload17, %i.lx
  %i.no = fcmp olt double %i.lx, %3
  %i.np = and i1 %i.nn, %i.no
  %i.nq = or i1 %or.cond20.i39.i144, %i.np
  br i1 %i.nq, label %clear.exit119.thread179, label %intersect.exit151

intersect.exit151:                                ; preds = %bb.u, %.split43.i145, %inBetween.exit42.i143
  %i.nr = fsub <2 x double> %i.lv, %i.lw          ; 2 uses
  %i.ns = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nt = fsub <2 x double> %i.lg, %i.ns
  %i.nu = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nv = fsub <2 x double> %i.lh, %i.nu
  %i.nw = extractelement <2 x double> %i.nr, i64 0
  %i.nx = fneg double %i.nw
  %i.ny = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.nz = shufflevector <2 x double> %i.ny, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = fmul <2 x double> %i.nv, %i.nz
  %i.ob = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.nt, <2 x double> %i.oa) ; 3 uses
  %i.od = extractelement <2 x double> %i.oc, i64 1
  %i.oe = fcmp ogt double %i.od, 1.000000e-04
  %i.of = fcmp olt <2 x double> %i.oc, splat (double -1.000000e-04) ; 2 uses
  %i.og = extractelement <2 x i1> %i.of, i64 1
  %i.oh = sext i1 %i.og to i32
  %i.oi = select i1 %i.oe, i32 1, i32 %i.oh
  %i.oj = extractelement <2 x double> %i.oc, i64 0
  %i.ok = fcmp ogt double %i.oj, 1.000000e-04
  %i.ol = extractelement <2 x i1> %i.of, i64 0
  %i.om = sext i1 %i.ol to i32
  %i.on = select i1 %i.ok, i32 1, i32 %i.om
  %i.oo = mul nsw i32 %i.nd, %i.mg
  %i.op = icmp slt i32 %i.oo, 0
  %i.oq = mul nsw i32 %i.oi, %i.on
  %i.or = icmp slt i32 %i.oq, 0
  %i.os = select i1 %i.op, i1 %i.or, i1 false
  br i1 %i.os, label %clear.exit119.thread179, label %bb.s

.lr.ph27.i105:                                    ; preds = %intersect.exit141, %.preheader.i102
  %indvars.iv32.i106 = phi i64 [ %i.jm, %.preheader.i102 ], [ %indvars.iv.next33.i107, %intersect.exit141 ] ; 3 uses
  %i.ot = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv32.i106
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv32.i106
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !22
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.ow
  %i.oy = load <2 x double>, ptr %i.ot, align 8   ; 4 uses
  %i.oz = load <2 x double>, ptr %i.ox, align 8   ; 6 uses
  %i.pa = extractelement <2 x double> %i.oz, i64 1 ; 4 uses
  %i.pb = extractelement <2 x double> %i.oz, i64 0 ; 4 uses
  %i.pc = fsub <2 x double> %i.oy, %i.lp          ; 2 uses
  %shift238 = shufflevector <2 x double> %i.pc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fmul <2 x double> %shift238, %i.kp
  %i.pd = extractelement <2 x double> %foldExtExtBinop239, i64 0
  %i.pe = extractelement <2 x double> %i.pc, i64 0
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.pe, double %i.pd) ; 2 uses
  %i.pg = fcmp ogt double %i.pf, 1.000000e-04
  %i.ph = fcmp olt double %i.pf, -1.000000e-04
  %i.pi = sext i1 %i.ph to i32
  %i.pj = select i1 %i.pg, i32 1, i32 %i.pi       ; 2 uses
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph27.i105
  br i1 %i.lk, label %.split.i139, label %inBetween.exit.i137

.split.i139:                                      ; preds = %bb.w
  %i.pl = extractelement <2 x double> %i.oy, i64 0 ; 4 uses
  %i.pm = fcmp olt double %2, %i.pl
  %i.pn = fcmp olt double %i.pl, %i.ju
  %or.cond.i.i140 = and i1 %i.pm, %i.pn
  %i.po = fcmp olt double %i.ju, %i.pl
  %i.pp = fcmp olt double %i.pl, %2
  %i.pq = and i1 %i.po, %i.pp
  %i.pr = or i1 %or.cond.i.i140, %i.pq
  br i1 %i.pr, label %clear.exit119.thread179, label %bb.x

inBetween.exit.i137:                              ; preds = %bb.w
  %i.ps = extractelement <2 x double> %i.oy, i64 1 ; 4 uses
  %i.pt = fcmp olt double %3, %i.ps
  %i.pu = fcmp olt double %i.ps, %.sroa.10.0.copyload17
  %or.cond20.i.i138 = and i1 %i.pt, %i.pu
  %i.pv = fcmp olt double %.sroa.10.0.copyload17, %i.ps
  %i.pw = fcmp olt double %i.ps, %3
  %i.px = and i1 %i.pv, %i.pw
  %i.py = or i1 %or.cond20.i.i138, %i.px
  br i1 %i.py, label %clear.exit119.thread179, label %bb.x

bb.x:                                             ; preds = %inBetween.exit.i137, %.split.i139, %.lr.ph27.i105
  %i.pz = fsub <2 x double> %i.oz, %i.lp          ; 2 uses
  %shift241 = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fmul <2 x double> %shift241, %i.kp
  %i.qa = extractelement <2 x double> %foldExtExtBinop242, i64 0
  %i.qb = extractelement <2 x double> %i.pz, i64 0
  %i.qc = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.qb, double %i.qa) ; 2 uses
  %i.qd = fcmp ogt double %i.qc, 1.000000e-04
  %i.qe = fcmp olt double %i.qc, -1.000000e-04
  %i.qf = sext i1 %i.qe to i32
  %i.qg = select i1 %i.qd, i32 1, i32 %i.qf       ; 2 uses
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.y, label %intersect.exit141

bb.y:                                             ; preds = %bb.x
  br i1 %i.lk, label %.split43.i135, label %inBetween.exit42.i133

.split43.i135:                                    ; preds = %bb.y
  %i.qi = fcmp olt double %2, %i.pb
  %i.qj = fcmp olt double %i.pb, %i.ju
  %or.cond.i41.i136 = and i1 %i.qi, %i.qj
  %i.qk = fcmp olt double %i.ju, %i.pb
  %i.ql = fcmp olt double %i.pb, %2
  %i.qm = and i1 %i.qk, %i.ql
  %i.qn = or i1 %or.cond.i41.i136, %i.qm
  br i1 %i.qn, label %clear.exit119.thread179, label %intersect.exit141

inBetween.exit42.i133:                            ; preds = %bb.y
  %i.qo = fcmp olt double %3, %i.pa
  %i.qp = fcmp olt double %i.pa, %.sroa.10.0.copyload17
  %or.cond20.i39.i134 = and i1 %i.qo, %i.qp
  %i.qq = fcmp olt double %.sroa.10.0.copyload17, %i.pa
  %i.qr = fcmp olt double %i.pa, %3
  %i.qs = and i1 %i.qq, %i.qr
  %i.qt = or i1 %or.cond20.i39.i134, %i.qs
  br i1 %i.qt, label %clear.exit119.thread179, label %intersect.exit141

intersect.exit141:                                ; preds = %bb.x, %.split43.i135, %inBetween.exit42.i133
  %i.qu = fsub <2 x double> %i.oy, %i.oz          ; 2 uses
  %i.qv = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = fsub <2 x double> %i.ll, %i.qv
  %i.qx = shufflevector <2 x double> %i.oz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qy = fsub <2 x double> %i.ln, %i.qx
  %i.qz = extractelement <2 x double> %i.qu, i64 0
  %i.ra = fneg double %i.qz
  %i.rb = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.rc = shufflevector <2 x double> %i.rb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x double> %i.qy, %i.rc
  %i.re = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.re, <2 x double> %i.qw, <2 x double> %i.rd) ; 3 uses
  %i.rg = extractelement <2 x double> %i.rf, i64 1
  %i.rh = fcmp ogt double %i.rg, 1.000000e-04
  %i.ri = fcmp olt <2 x double> %i.rf, splat (double -1.000000e-04) ; 2 uses
  %i.rj = extractelement <2 x i1> %i.ri, i64 1
  %i.rk = sext i1 %i.rj to i32
  %i.rl = select i1 %i.rh, i32 1, i32 %i.rk
  %i.rm = extractelement <2 x double> %i.rf, i64 0
  %i.rn = fcmp ogt double %i.rm, 1.000000e-04
  %i.ro = extractelement <2 x i1> %i.ri, i64 0
  %i.rp = sext i1 %i.ro to i32
  %i.rq = select i1 %i.rn, i32 1, i32 %i.rp
  %i.rr = mul nsw i32 %i.qg, %i.pj
  %i.rs = icmp slt i32 %i.rr, 0
  %i.rt = mul nsw i32 %i.rl, %i.rq
  %i.ru = icmp slt i32 %i.rt, 0
  %i.rv = select i1 %i.rs, i1 %i.ru, i1 false     ; 2 uses
  %indvars.iv.next33.i107 = add nsw i64 %indvars.iv32.i106, 1 ; 2 uses
  %lftr.wideiv.i108 = trunc i64 %indvars.iv.next33.i107 to i32
  %exitcond35.not.i109 = icmp eq i32 %i.b, %lftr.wideiv.i108
  %or.cond.i110 = select i1 %i.rv, i1 true, i1 %exitcond35.not.i109
  br i1 %or.cond.i110, label %clear.exit119, label %.lr.ph27.i105, !llvm.loop !35

clear.exit119:                                    ; preds = %intersect.exit141
  br i1 %i.rv, label %clear.exit119.thread179, label %clear.exit119.thread177

clear.exit119.thread177:                          ; preds = %clear.exit119
  %foldExtExtBinop244 = fmul <2 x double> %i.ki, %i.ki
  %i.rw = extractelement <2 x double> %foldExtExtBinop244, i64 0
  %i.rx = extractelement <2 x double> %i.ko, i64 0 ; 2 uses
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.rx, double %i.rw)
  %sqrt.i120 = tail call double @llvm.sqrt.f64(double %i.ry)
  br label %clear.exit119.thread179

clear.exit119.thread179:                          ; preds = %intersect.exit151, %inBetween.exit.i147, %inBetween.exit42.i143, %.split.i149, %.split43.i145, %.split43.i135, %.split.i139, %inBetween.exit42.i133, %inBetween.exit.i137, %bb.q, %clear.exit119, %clear.exit119.thread177
  %sqrt.i120.sink = phi double [ %sqrt.i120, %clear.exit119.thread177 ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %.split43.i135 ], [ 0.000000e+00, %clear.exit119 ], [ 0.000000e+00, %inBetween.exit.i137 ], [ 0.000000e+00, %inBetween.exit42.i133 ], [ 0.000000e+00, %.split.i139 ], [ 0.000000e+00, %.split43.i145 ], [ 0.000000e+00, %.split.i149 ], [ 0.000000e+00, %inBetween.exit42.i143 ], [ 0.000000e+00, %inBetween.exit.i147 ], [ 0.000000e+00, %intersect.exit151 ]
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv200
  store double %sqrt.i120.sink, ptr %i.rz, align 8, !tbaa !24
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %._crit_edge, label %bb.q, !llvm.loop !37

._crit_edge:                                      ; preds = %clear.exit119.thread179, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %wide.trip.count203, %clear.exit119.thread179 ]
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sa, i8 0, i64 16, i1 false)
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
